
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

## Release 2.3.0 - Unreleased (as of 2017-05-08)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-14471](https://issues.apache.org/jira/browse/SPARK-14471) | The alias created in SELECT could be used in GROUP BY and followed expressions |  Major | SQL | Davies Liu | Takeshi Yamamuro |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20350](https://issues.apache.org/jira/browse/SPARK-20350) | Apply Complementation Laws during boolean expression simplification |  Major | Optimizer | Michael Styles | Michael Styles |
| [SPARK-20375](https://issues.apache.org/jira/browse/SPARK-20375) | R wrappers for array and map |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20371](https://issues.apache.org/jira/browse/SPARK-20371) | R wrappers for collect\_list and collect\_set |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20438](https://issues.apache.org/jira/browse/SPARK-20438) | R wrappers for split and repeat |  Major | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20437](https://issues.apache.org/jira/browse/SPARK-20437) | R wrappers for rollup and cube |  Minor | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20425](https://issues.apache.org/jira/browse/SPARK-20425) | Support an extended display mode to print a column data per line |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-20426](https://issues.apache.org/jira/browse/SPARK-20426) | OneForOneStreamManager occupies too much memory. |  Major | Shuffle | jin xing | jin xing |
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
| [SPARK-20621](https://issues.apache.org/jira/browse/SPARK-20621) | Delete deprecated config parameter in 'spark-env.sh' |  Minor | Deploy | coneyliu | coneyliu |


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
| [SPARK-20476](https://issues.apache.org/jira/browse/SPARK-20476) | Exception between "create table as" and "get\_json\_object" |  Major | SQL | cen yuhai | Xiao Li |
| [SPARK-20471](https://issues.apache.org/jira/browse/SPARK-20471) | Remove AggregateBenchmark testsuite warning: Two level hashmap is disabled but vectorized hashmap is enabled. |  Major | Tests | caoxuewen | caoxuewen |
| [SPARK-20541](https://issues.apache.org/jira/browse/SPARK-20541) | SparkR SS should support awaitTermination without timeout |  Major | SparkR, Structured Streaming | Felix Cheung | Felix Cheung |
| [SPARK-20534](https://issues.apache.org/jira/browse/SPARK-20534) | Outer generators skip missing records if used alone |  Major | SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20459](https://issues.apache.org/jira/browse/SPARK-20459) | JdbcUtils throws IllegalStateException: Cause already initialized after getting SQLException |  Minor | SQL | Jessie Yu | Sean Owen |
| [SPARK-20537](https://issues.apache.org/jira/browse/SPARK-20537) | OffHeapColumnVector reallocation may not copy existing data |  Major | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20549](https://issues.apache.org/jira/browse/SPARK-20549) | java.io.CharConversionException: Invalid UTF-32 in JsonToStructs |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-20558](https://issues.apache.org/jira/browse/SPARK-20558) | clear InheritableThreadLocal variables in SparkContext when stopping it |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-20543](https://issues.apache.org/jira/browse/SPARK-20543) | R should skip long running or non-essential tests when running on CRAN |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20566](https://issues.apache.org/jira/browse/SPARK-20566) | ColumnVector should support \`appendFloats\` for array |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20613](https://issues.apache.org/jira/browse/SPARK-20613) | Double quotes in Windows batch script |  Major | Windows | Jarrett Meyer | Jarrett Meyer |
| [SPARK-20626](https://issues.apache.org/jira/browse/SPARK-20626) | Fix SparkR test warning on Windows with timestamp time zone |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20380](https://issues.apache.org/jira/browse/SPARK-20380) | describe table not showing updated table comment after alter operation |  Major | SQL | Sujith | Sujith |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20571](https://issues.apache.org/jira/browse/SPARK-20571) | Flaky SparkR StructuredStreaming tests |  Major | SparkR, Structured Streaming | Burak Yavuz | Felix Cheung |
| [SPARK-20518](https://issues.apache.org/jira/browse/SPARK-20518) | Supplement the new blockidsuite unit tests |  Minor | Tests | caoxuewen | caoxuewen |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-19791](https://issues.apache.org/jira/browse/SPARK-19791) | Add doc and example for fpgrowth |  Major | ML | yuhao yang | yuhao yang |
| [SPARK-20585](https://issues.apache.org/jira/browse/SPARK-20585) | R generic hint support |  Major | SQL | Reynold Xin | Maciej Szymkiewicz |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20132](https://issues.apache.org/jira/browse/SPARK-20132) | Add documentation for column string functions |  Minor | PySpark, SQL | Michael Patterson | Michael Patterson |
| [SPARK-12837](https://issues.apache.org/jira/browse/SPARK-12837) | Spark driver requires large memory space for serialized results even there are no data collected to the driver |  Critical | SQL | Tien-Dung LE | Wenchen Fan |
| [SPARK-20478](https://issues.apache.org/jira/browse/SPARK-20478) | Document LinearSVC in R programming guide |  Major | SparkR | Felix Cheung | Miao Wang |
| [SPARK-20477](https://issues.apache.org/jira/browse/SPARK-20477) | Document R bisecting k-means in R programming guide |  Major | SparkR | Felix Cheung | Miao Wang |
| [SPARK-20442](https://issues.apache.org/jira/browse/SPARK-20442) | Fill up documentations for functions in Column API in PySpark |  Minor | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20192](https://issues.apache.org/jira/browse/SPARK-20192) | SparkR 2.2.0 migration guide, release note |  Major | Documentation, SparkR | Felix Cheung | Felix Cheung |
| [SPARK-20015](https://issues.apache.org/jira/browse/SPARK-20015) | Document R Structured Streaming (experimental) in R vignettes and R & SS programming guide, R example |  Major | Documentation, SparkR, Structured Streaming | Felix Cheung | Felix Cheung |
| [SPARK-12297](https://issues.apache.org/jira/browse/SPARK-12297) | Add work-around for Parquet/Hive int96 timestamp bug. |  Major | Spark Core | Ryan Blue | Imran Rashid |


