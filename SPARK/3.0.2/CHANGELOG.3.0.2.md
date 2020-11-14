
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

## Release 3.0.2 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-32090](https://issues.apache.org/jira/browse/SPARK-32090) | UserDefinedType.equal() does not have symmetry |  Major | SQL | wuyi | wuyi |
| [SPARK-32557](https://issues.apache.org/jira/browse/SPARK-32557) | Logging and Swallowing the Exception Per Entry in History Server |  Major | Spark Core | Yan Xiaole | Yan Xiaole |
| [SPARK-32718](https://issues.apache.org/jira/browse/SPARK-32718) | remove unnecessary keywords for interval units |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32774](https://issues.apache.org/jira/browse/SPARK-32774) | Don't track docs/.jekyll-cache |  Minor | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32786](https://issues.apache.org/jira/browse/SPARK-32786) | Improve performance for some slow DPP tests |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-32791](https://issues.apache.org/jira/browse/SPARK-32791) | non-partitioned table metric should not have dynamic partition pruning time |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33073](https://issues.apache.org/jira/browse/SPARK-33073) | Improve error handling on Pandas to Arrow conversion failures |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-33156](https://issues.apache.org/jira/browse/SPARK-33156) | Upgrade GithubAction image from 18.04 to 20.04 |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33162](https://issues.apache.org/jira/browse/SPARK-33162) | Use pre-built image at GitHub Action PySpark jobs |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33171](https://issues.apache.org/jira/browse/SPARK-33171) | Mark Parquet\*FilterSuite as ExtendedSQLTest |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33170](https://issues.apache.org/jira/browse/SPARK-33170) | Add SQL config to control fast-fail behavior in FileFormatWriter |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33123](https://issues.apache.org/jira/browse/SPARK-33123) | Ignore \`GitHub Action file\` change in Amplab Jenkins |  Major | Tests | William Hyun | William Hyun |
| [SPARK-33189](https://issues.apache.org/jira/browse/SPARK-33189) | Support PyArrow 2.0.0+ |  Major | PySpark | Hyukjin Kwon | Bryan Cutler |
| [SPARK-30821](https://issues.apache.org/jira/browse/SPARK-30821) | Executor pods with multiple containers will not be rescheduled unless all containers fail |  Major | Kubernetes, Spark Core | Kevin Hogeland | Apache Spark |
| [SPARK-33228](https://issues.apache.org/jira/browse/SPARK-33228) | Don't uncache data when replacing an existing view having the same plan |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33239](https://issues.apache.org/jira/browse/SPARK-33239) | Use pre-built image at GitHub Action SparkR job |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33264](https://issues.apache.org/jira/browse/SPARK-33264) | Add a dedicated page for SQL-on-file in SQL documents |  Major | Documentation, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33371](https://issues.apache.org/jira/browse/SPARK-33371) | Support Python 3.9+ in PySpark |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-31511](https://issues.apache.org/jira/browse/SPARK-31511) | Make BytesToBytesMap iterator() thread-safe |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-32693](https://issues.apache.org/jira/browse/SPARK-32693) | Compare two dataframes with same schema except nullable property |  Minor | SQL | david bernuau | L. C. Hsieh |
| [SPARK-32761](https://issues.apache.org/jira/browse/SPARK-32761) | Planner error when aggregating multiple distinct Constant columns |  Major | SQL | Linhong Liu | Liu, Linhong |
| [SPARK-32771](https://issues.apache.org/jira/browse/SPARK-32771) | The example of expressions.Aggregator in Javadoc / Scaladoc is wrong |  Minor | docs | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32776](https://issues.apache.org/jira/browse/SPARK-32776) | Limit in streaming should not be optimized away by PropagateEmptyRelation |  Major | Structured Streaming | Liwen Sun | Liwen Sun |
| [SPARK-32638](https://issues.apache.org/jira/browse/SPARK-32638) | WidenSetOperationTypes in subquery  attribute  missing |  Major | SQL | Guojian Li | Takeshi Yamamuro |
| [SPARK-32788](https://issues.apache.org/jira/browse/SPARK-32788) | non-partitioned table scan should not have partition filter |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32767](https://issues.apache.org/jira/browse/SPARK-32767) | Bucket join should work if spark.sql.shuffle.partitions larger than bucket number |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32785](https://issues.apache.org/jira/browse/SPARK-32785) | interval with dangling part should not results null |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32779](https://issues.apache.org/jira/browse/SPARK-32779) | Spark/Hive3 interaction potentially causes deadlock |  Major | SQL | Bruce Robbins | Sandeep Katta |
| [SPARK-32753](https://issues.apache.org/jira/browse/SPARK-32753) | Deduplicating and repartitioning the same column create duplicate rows with AQE |  Major | SQL | Manu Zhang | Manu Zhang |
| [SPARK-32810](https://issues.apache.org/jira/browse/SPARK-32810) | CSV/JSON data sources should avoid globbing paths when inferring schema |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32812](https://issues.apache.org/jira/browse/SPARK-32812) | Run tests script for Python fails in certain environments |  Major | PySpark, Tests | Haejoon Lee | Haejoon Lee |
| [SPARK-32764](https://issues.apache.org/jira/browse/SPARK-32764) | compare of -0.0 \< 0.0 return true |  Major | SQL | Izek Greenfield | Wenchen Fan |
| [SPARK-32815](https://issues.apache.org/jira/browse/SPARK-32815) | Fix LibSVM data source loading error on file paths with glob metacharacters |  Major | MLlib | Maxim Gekk | Maxim Gekk |
| [SPARK-32824](https://issues.apache.org/jira/browse/SPARK-32824) | The error is confusing when resource .amount not provided |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-32823](https://issues.apache.org/jira/browse/SPARK-32823) | Standalone Master UI resources in use wrong |  Major | Web UI | Thomas Graves | Thomas Graves |
| [SPARK-32813](https://issues.apache.org/jira/browse/SPARK-32813) | Reading parquet rdd in non columnar mode fails in multithreaded environment |  Major | SQL | Vladimir Klyushnikov | L. C. Hsieh |
| [SPARK-32836](https://issues.apache.org/jira/browse/SPARK-32836) | Fix DataStreamReaderWriterSuite to check writer options correctly |  Major | Structured Streaming, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32819](https://issues.apache.org/jira/browse/SPARK-32819) | Spark SQL aggregate() fails on nested string arrays |  Major | SQL | Lauri Koobas | L. C. Hsieh |
| [SPARK-32832](https://issues.apache.org/jira/browse/SPARK-32832) | Use CaseInsensitiveMap for DataStreamReader/Writer options |  Major | Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32840](https://issues.apache.org/jira/browse/SPARK-32840) | Invalid interval value can happen to be just adhesive with the unit |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32794](https://issues.apache.org/jira/browse/SPARK-32794) | Rare corner case error in micro-batch engine with some stateful queries + no-data-batches + V1 streaming sources |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-32845](https://issues.apache.org/jira/browse/SPARK-32845) | Add sinkParameter to check sink options robustly in DataStreamReaderWriterSuite |  Minor | SQL | Wenchen Fan | Dongjoon Hyun |
| [SPARK-32865](https://issues.apache.org/jira/browse/SPARK-32865) | python section in quickstart page doesn't display SPARK\_VERSION correctly |  Minor | docs, Documentation | Bowen Li | Bowen Li |
| [SPARK-32872](https://issues.apache.org/jira/browse/SPARK-32872) | BytesToBytesMap at MAX\_CAPACITY exceeds growth threshold |  Major | Spark Core | Ankur Dave | Ankur Dave |
| [SPARK-32715](https://issues.apache.org/jira/browse/SPARK-32715) | Broadcast block pieces may memory leak |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-32738](https://issues.apache.org/jira/browse/SPARK-32738) | thread safe endpoints may hang due to fatal error |  Major | Spark Core | Zhenhua Wang | Zhenhua Wang |
| [SPARK-32897](https://issues.apache.org/jira/browse/SPARK-32897) | SparkSession.builder.getOrCreate should not show deprecation warning of SQLContext |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32900](https://issues.apache.org/jira/browse/SPARK-32900) | UnsafeExternalSorter.SpillableIterator cannot spill when there are NULLs in the input and radix sorting is used. |  Major | Spark Core | Tom van Bussel | Tom van Bussel |
| [SPARK-32887](https://issues.apache.org/jira/browse/SPARK-32887) | Example command in https://spark.apache.org/docs/latest/sql-ref-syntax-aux-show-table.html to be changed |  Minor | docs | Chetan Bhat | Udbhav Agrawal |
| [SPARK-32635](https://issues.apache.org/jira/browse/SPARK-32635) | When pyspark.sql.functions.lit() function is used with dataframe cache, it returns wrong result |  Blocker | SQL | Vinod KC | Peter Toth |
| [SPARK-32908](https://issues.apache.org/jira/browse/SPARK-32908) | percentile\_approx() returns incorrect results |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32906](https://issues.apache.org/jira/browse/SPARK-32906) | Struct field names should not change after normalizing floats |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32905](https://issues.apache.org/jira/browse/SPARK-32905) | ApplicationMaster fails to receive UpdateDelegationTokens message |  Major | Spark Core, YARN | Kent Yao | Kent Yao |
| [SPARK-32898](https://issues.apache.org/jira/browse/SPARK-32898) | totalExecutorRunTimeMs is too big |  Major | Spark Core | Linhong Liu | wuyi |
| [SPARK-32886](https://issues.apache.org/jira/browse/SPARK-32886) | '.../jobs/undefined' link from "Event Timeline" in jobs page |  Minor | Web UI | Zhen Li | Zhen Li |
| [SPARK-32977](https://issues.apache.org/jira/browse/SPARK-32977) | [SQL] JavaDoc on Default Save mode Incorrect |  Major | SQL | Russell Spitzer | Russell Spitzer |
| [SPARK-32877](https://issues.apache.org/jira/browse/SPARK-32877) | Fix Hive UDF not support decimal type in complex type |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-32999](https://issues.apache.org/jira/browse/SPARK-32999) | TreeNode.nodeName should not throw malformed class name error |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-32996](https://issues.apache.org/jira/browse/SPARK-32996) | Handle Option.empty v1.ExecutorSummary#peakMemoryMetrics |  Major | Web UI | Shruti Gumma | Shruti Gumma |
| [SPARK-33015](https://issues.apache.org/jira/browse/SPARK-33015) | Compute the current date only once |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32901](https://issues.apache.org/jira/browse/SPARK-32901) | UnsafeExternalSorter may cause a SparkOutOfMemoryError to be thrown while spilling |  Major | Spark Core | Tom van Bussel | Tom van Bussel |
| [SPARK-33018](https://issues.apache.org/jira/browse/SPARK-33018) | Fix compute statistics issue |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33019](https://issues.apache.org/jira/browse/SPARK-33019) | Use spark.hadoop.mapreduce.fileoutputcommitter.algorithm.version=1 by default |  Blocker | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33043](https://issues.apache.org/jira/browse/SPARK-33043) | RowMatrix is incompatible with spark.driver.maxResultSize=0 |  Minor | MLlib | Karen Feng | Sean R. Owen |
| [SPARK-33065](https://issues.apache.org/jira/browse/SPARK-33065) | Expand the stack size of a thread in a test in LocalityPlacementStrategySuite for Java 11 |  Minor | Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-33035](https://issues.apache.org/jira/browse/SPARK-33035) | Updates the obsoleted entries of attribute mapping in QueryPlan#transformUpWithNewOutput |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-27428](https://issues.apache.org/jira/browse/SPARK-27428) | Test "metrics StatsD sink with Timer " fails on BigEndian |  Major | Spark Core | Anuja Jakhade | Michael Munday |
| [SPARK-33089](https://issues.apache.org/jira/browse/SPARK-33089) | avro format does not propagate Hadoop config from DS options to underlying HDFS file system |  Major | SQL | Yuning Zhang | Yuning Zhang |
| [SPARK-33094](https://issues.apache.org/jira/browse/SPARK-33094) | ORC format does not propagate Hadoop config from DS options to underlying HDFS file system |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33101](https://issues.apache.org/jira/browse/SPARK-33101) | LibSVM format does not propagate Hadoop config from DS options to underlying HDFS file system |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33118](https://issues.apache.org/jira/browse/SPARK-33118) | CREATE TEMPORARY TABLE fails with location |  Major | SQL | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-33115](https://issues.apache.org/jira/browse/SPARK-33115) | \`kvstore\` and \`unsafe\` doc tasks fail |  Minor | Build, Documentation | Denis Pyshev | Denis Pyshev |
| [SPARK-33134](https://issues.apache.org/jira/browse/SPARK-33134) | Incorrect nested complex JSON fields raise an exception |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33136](https://issues.apache.org/jira/browse/SPARK-33136) | Handling nullability for complex types is broken during resolution of V2 write command |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-33146](https://issues.apache.org/jira/browse/SPARK-33146) | Encountering an invalid rolling event log folder prevents loading other applications in SHS |  Major | Spark Core | Adam Binford | Adam Binford |
| [SPARK-33131](https://issues.apache.org/jira/browse/SPARK-33131) | Fix grouping sets with having clause can not resolve qualified col name |  Major | SQL | ulysses you | ulysses you |
| [SPARK-33197](https://issues.apache.org/jira/browse/SPARK-33197) | Changes to spark.sql.analyzer.maxIterations do not take effect at runtime |  Major | SQL | Yuning Zhang | Yuning Zhang |
| [SPARK-33230](https://issues.apache.org/jira/browse/SPARK-33230) | FileOutputWriter jobs have duplicate JobIDs if launched in same second |  Major | SQL | Steve Loughran | Steve Loughran |
| [SPARK-33260](https://issues.apache.org/jira/browse/SPARK-33260) | SortExec produces incorrect results if sortOrder is a Stream |  Major | SQL | Ankur Dave | Ankur Dave |
| [SPARK-33183](https://issues.apache.org/jira/browse/SPARK-33183) | Bug in optimizer rule EliminateSorts |  Major | SQL | Allison Wang | Allison Wang |
| [SPARK-33268](https://issues.apache.org/jira/browse/SPARK-33268) | Fix bugs for casting data from/to PythonUserDefinedType |  Major | PySpark, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33267](https://issues.apache.org/jira/browse/SPARK-33267) | Query with having null in "in" condition against data source V2 source table supporting push down filter fails with NPE |  Critical | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-33292](https://issues.apache.org/jira/browse/SPARK-33292) | Make Literal ArrayBasedMapData string representation disambiguous |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33290](https://issues.apache.org/jira/browse/SPARK-33290) | REFRESH TABLE should invalidate cache even though the table itself may not be cached |  Major | SQL | Chao Sun | Chao Sun |
| [SPARK-33306](https://issues.apache.org/jira/browse/SPARK-33306) | TimezoneID is needed when there cast from Date to String |  Major | SQL | EdisonWang | EdisonWang |
| [SPARK-33313](https://issues.apache.org/jira/browse/SPARK-33313) | R/run-tests.sh is not compatible with testthat \>= 3.0 |  Major | R, Tests | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-33284](https://issues.apache.org/jira/browse/SPARK-33284) | In the Storage UI page, clicking any field to sort the table will cause the header content to be lost |  Major | Web UI | akiyamaneko | akiyamaneko |
| [SPARK-33333](https://issues.apache.org/jira/browse/SPARK-33333) | Upgrade Jetty to 9.4.28.v20200408 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33338](https://issues.apache.org/jira/browse/SPARK-33338) | GROUP BY using literal map should not fail |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33362](https://issues.apache.org/jira/browse/SPARK-33362) | skipSchemaResolution should still require query to be resolved |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-33372](https://issues.apache.org/jira/browse/SPARK-33372) | Fix InSet bucket pruning |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33397](https://issues.apache.org/jira/browse/SPARK-33397) | mistakenly generate markdown to html for available-patterns-for-shs-custom-executor-log-ur |  Major | Documentation | Kent Yao | Kent Yao |
| [SPARK-33405](https://issues.apache.org/jira/browse/SPARK-33405) | Upgrade commons-compress to 1.20 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33391](https://issues.apache.org/jira/browse/SPARK-33391) | element\_at with CreateArray not respect one based index |  Major | SQL | Leanken.Lin | Leanken.Lin |
| [SPARK-33339](https://issues.apache.org/jira/browse/SPARK-33339) | Pyspark application will hang due to non Exception |  Major | PySpark | lrz | lrz |
| [SPARK-33404](https://issues.apache.org/jira/browse/SPARK-33404) | "date\_trunc" expression returns incorrect results |  Major | SQL | Utkarsh Agarwal | Utkarsh Agarwal |
| [SPARK-33417](https://issues.apache.org/jira/browse/SPARK-33417) | Correct the behaviour of query filters in TPCDSQueryBenchmark |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33412](https://issues.apache.org/jira/browse/SPARK-33412) | OverwriteByExpression should resolve its delete condition based on the table relation not the input query |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-33402](https://issues.apache.org/jira/browse/SPARK-33402) | Jobs launched in same second have duplicate MapReduce JobIDs |  Major | Spark Core | Steve Loughran | Steve Loughran |
| [SPARK-33435](https://issues.apache.org/jira/browse/SPARK-33435) | DSv2: REFRESH TABLE should invalidate caches |  Major | SQL | Chao Sun | Chao Sun |
| [SPARK-33439](https://issues.apache.org/jira/browse/SPARK-33439) | Use SERIAL\_SBT\_TESTS=1 for SQL module like Hive module |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-32747](https://issues.apache.org/jira/browse/SPARK-32747) | Deduplicate configuration set/unset in test\_sparkSQL\_arrow.R |  Major | R, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32876](https://issues.apache.org/jira/browse/SPARK-32876) | Change default fallback versions in HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32688](https://issues.apache.org/jira/browse/SPARK-32688) | LiteralGenerator for float and double does not generate special values |  Minor | SQL | Tanel Kiis | Tanel Kiis |
| [SPARK-33021](https://issues.apache.org/jira/browse/SPARK-33021) | Move functions related test cases into test\_functions.py |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33051](https://issues.apache.org/jira/browse/SPARK-33051) | Uses setup-r to install R in GitHub Actions build |  Major | Project Infra, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33153](https://issues.apache.org/jira/browse/SPARK-33153) | HiveExternalCatalogVersionsSuite fails on Ubuntu 20.04 |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33165](https://issues.apache.org/jira/browse/SPARK-33165) | Remove dependencies(scalatest,scalactic) from Benchmark |  Major | SQL, Tests | Takeshi Yamamuro |  |
| [SPARK-33190](https://issues.apache.org/jira/browse/SPARK-33190) | Set upperbound of PyArrow version in GitHub Actions |  Major | PySpark, Tests | Hyukjin Kwon | Apache Spark |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24266](https://issues.apache.org/jira/browse/SPARK-24266) | Spark client terminates while driver is still running |  Critical | Kubernetes, Spark Core | Chun Chen | Stijn De Haes |
| [SPARK-32436](https://issues.apache.org/jira/browse/SPARK-32436) | Initialize numNonEmptyBlocks in HighlyCompressedMapStatus.readExternal |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32119](https://issues.apache.org/jira/browse/SPARK-32119) | ExecutorPlugin doesn't work with Standalone Cluster and Kubernetes with --jars |  Major | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32067](https://issues.apache.org/jira/browse/SPARK-32067) | Use unique ConfigMap name for executor pod template |  Major | Kubernetes | James Yu | Stijn De Haes |
| [SPARK-33096](https://issues.apache.org/jira/browse/SPARK-33096) | Use LinkedHashMap instead of Map for newlyCreatedExecutors |  Minor | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32247](https://issues.apache.org/jira/browse/SPARK-32247) | scipy installation fails with PyPy |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33163](https://issues.apache.org/jira/browse/SPARK-33163) | Check the metadata key 'org.apache.spark.legacyDateTime' in Avro/Parquet files |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33176](https://issues.apache.org/jira/browse/SPARK-33176) | Use 11-jre-slim as default in K8s Dockerfile |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33408](https://issues.apache.org/jira/browse/SPARK-33408) | Use R 3.6.3 in K8s R image |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-32888](https://issues.apache.org/jira/browse/SPARK-32888) | reading a parallized rdd with two identical records results in a zero count df when read via spark.read.csv |  Minor | Spark Core | Punit Shah | L. C. Hsieh |
| [SPARK-32306](https://issues.apache.org/jira/browse/SPARK-32306) | \`approx\_percentile\` in Spark SQL gives incorrect results |  Major | PySpark, SQL | Sean Malory | Maxim Gekk |
| [SPARK-33181](https://issues.apache.org/jira/browse/SPARK-33181) | SQL Reference: Run SQL on files directly |  Major | SQL | Xiao Li | Aoyuan Liao |
| [SPARK-33246](https://issues.apache.org/jira/browse/SPARK-33246) | Spark SQL null semantics documentation is incorrect |  Trivial | Documentation, SQL | Stuart White | Stuart White |
| [SPARK-33208](https://issues.apache.org/jira/browse/SPARK-33208) | Update the document of SparkSession#sql |  Major | SQL | Wenchen Fan | zhoukeyong |
| [SPARK-32860](https://issues.apache.org/jira/browse/SPARK-32860) | Encoders::bean doc incorrectly states maps are not supported |  Trivial | SQL | Dan Ziemba | Dan Ziemba |


