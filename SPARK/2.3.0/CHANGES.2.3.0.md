
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

## Release 2.3.0 - Unreleased (as of 2017-06-30)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20945](https://issues.apache.org/jira/browse/SPARK-20945) | NoSuchElementException key not found in TaskSchedulerImpl |  Minor | Scheduler | liupengcheng | liupengcheng |


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
| [SPARK-20566](https://issues.apache.org/jira/browse/SPARK-20566) | ColumnVector should support \`appendFloats\` for array |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
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
| [SPARK-20991](https://issues.apache.org/jira/browse/SPARK-20991) | BROADCAST\_TIMEOUT conf should be a timeoutConf |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-20914](https://issues.apache.org/jira/browse/SPARK-20914) | Javadoc contains code that is invalid |  Trivial | Documentation | Cristian Teodor | Sean Owen |
| [SPARK-20976](https://issues.apache.org/jira/browse/SPARK-20976) | Unify Error Messages for FAILFAST mode. |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-14408](https://issues.apache.org/jira/browse/SPARK-14408) | Update RDD.treeAggregate not to use reduce |  Minor | ML, MLlib, Spark Core | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-20997](https://issues.apache.org/jira/browse/SPARK-20997) | spark-submit's --driver-cores marked as "YARN-only" but listed under "Spark standalone with cluster deploy mode only" |  Trivial | Documentation, Spark Submit | Jacek Laskowski | guoxiaolongzte |
| [SPARK-20935](https://issues.apache.org/jira/browse/SPARK-20935) | A daemon thread, "BatchedWriteAheadLog Writer", left behind after terminating StreamingContext. |  Major | DStreams | Terence Yim | Hyukjin Kwon |
| [SPARK-13933](https://issues.apache.org/jira/browse/SPARK-13933) | hadoop-2.7 profile's curator version should be 2.7.1 |  Minor | Build | Steve Loughran | Yuming Wang |
| [SPARK-21041](https://issues.apache.org/jira/browse/SPARK-21041) | With whole-stage codegen, SparkSession.range()'s behavior is inconsistent with SparkContext.range() |  Major | SQL | Kris Mok | Dongjoon Hyun |
| [SPARK-17914](https://issues.apache.org/jira/browse/SPARK-17914) | Spark SQL casting to TimestampType with nanosecond results in incorrect timestamp |  Major | SQL | Oksana Romankova | Anton Okolnychyi |
| [SPARK-20345](https://issues.apache.org/jira/browse/SPARK-20345) | Fix STS error handling logic on HiveSQLException |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21059](https://issues.apache.org/jira/browse/SPARK-21059) | LikeSimplification can NPE on null pattern |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21050](https://issues.apache.org/jira/browse/SPARK-21050) | ml word2vec write has overflow issue in calculating numPartitions |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-19910](https://issues.apache.org/jira/browse/SPARK-19910) | \`stack\` should not reject NULL values due to type mismatch |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20920](https://issues.apache.org/jira/browse/SPARK-20920) | ForkJoinPool pools are leaked when writing hive tables with many partitions |  Major | SQL | Rares Mirica | Sean Owen |
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
| [SPARK-20929](https://issues.apache.org/jira/browse/SPARK-20929) | LinearSVC should not use shared Param HasThresholds |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
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
| [SPARK-13669](https://issues.apache.org/jira/browse/SPARK-13669) | Job will always fail in the external shuffle service unavailable situation |  Major | Spark Core, YARN | Saisai Shao | Saisai Shao |
| [SPARK-20898](https://issues.apache.org/jira/browse/SPARK-20898) | spark.blacklist.killBlacklistedExecutors doesn't work in YARN |  Major | Spark Core | Thomas Graves | Saisai Shao |
| [SPARK-21216](https://issues.apache.org/jira/browse/SPARK-21216) | Streaming DataFrames fail to join with Hive tables |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-14657](https://issues.apache.org/jira/browse/SPARK-14657) | RFormula output wrong features when formula w/o intercept |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-3577](https://issues.apache.org/jira/browse/SPARK-3577) | Add task metric to report spill time |  Minor | Shuffle, Spark Core | Kay Ousterhout | Sital Kedia |
| [SPARK-21225](https://issues.apache.org/jira/browse/SPARK-21225) | decrease the Mem using for variable 'tasks' in function resourceOffers |  Minor | Spark Core | yangZhiguo | yangZhiguo |
| [SPARK-21188](https://issues.apache.org/jira/browse/SPARK-21188) | releaseAllLocksForTask should synchronize the whole method |  Major | Block Manager, Spark Core | Feng Liu | Feng Liu |
| [SPARK-21223](https://issues.apache.org/jira/browse/SPARK-21223) | Thread-safety issue in FsHistoryProvider |  Minor | Spark Core | zenglinxi | zenglinxi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20571](https://issues.apache.org/jira/browse/SPARK-20571) | Flaky SparkR StructuredStreaming tests |  Major | SparkR, Structured Streaming | Burak Yavuz | Felix Cheung |
| [SPARK-20518](https://issues.apache.org/jira/browse/SPARK-20518) | Supplement the new blockidsuite unit tests |  Minor | Tests | caoxuewen | caoxuewen |
| [SPARK-20607](https://issues.apache.org/jira/browse/SPARK-20607) | Add new unit tests to ShuffleSuite |  Trivial | Shuffle, Tests | caoxuewen | caoxuewen |
| [SPARK-20957](https://issues.apache.org/jira/browse/SPARK-20957) | Flaky Test: o.a.s.sql.streaming.StreamingQueryManagerSuite listing |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21006](https://issues.apache.org/jira/browse/SPARK-21006) | Create rpcEnv and run later needs shutdown and awaitTermination |  Minor | Tests | wangjiaochun | wangjiaochun |
| [SPARK-21128](https://issues.apache.org/jira/browse/SPARK-21128) | Running R tests multiple times failed due to pre-exiting "spark-warehouse" / "metastore\_db" |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |


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
| [SPARK-20434](https://issues.apache.org/jira/browse/SPARK-20434) | Move Hadoop delegation token code from yarn to core |  Major | Mesos, Spark Core, YARN | Michael Gummelt | Michael Gummelt |


