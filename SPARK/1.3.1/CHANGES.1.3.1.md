
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
# Changelog

## Release 1.3.1 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6651](https://issues.apache.org/jira/browse/SPARK-6651) | Delegate dense vector arithmetics to the underly numpy array |  Major | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5955](https://issues.apache.org/jira/browse/SPARK-5955) | Add checkpointInterval to ALS |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4985](https://issues.apache.org/jira/browse/SPARK-4985) | Parquet support for date type |  Major | SQL | Adrian Wang | Adrian Wang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6618](https://issues.apache.org/jira/browse/SPARK-6618) | HiveMetastoreCatalog.lookupRelation should use fine-grained lock |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6553](https://issues.apache.org/jira/browse/SPARK-6553) | Support for functools.partial as UserDefinedFunction |  Major | PySpark | Kalle Jepsen | Kalle Jepsen |
| [SPARK-6536](https://issues.apache.org/jira/browse/SPARK-6536) | Add IN to python Column |  Major | SQL | Michael Armbrust | Davies Liu |
| [SPARK-6471](https://issues.apache.org/jira/browse/SPARK-6471) | Metastore schema should only be a subset of parquet schema to support dropping of columns using replace columns |  Blocker | SQL | Yash Datta | Yash Datta |
| [SPARK-6459](https://issues.apache.org/jira/browse/SPARK-6459) | Warn when Column API is constructing trivially true equality |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6397](https://issues.apache.org/jira/browse/SPARK-6397) | Exclude virtual columns from QueryPlan.missingInput |  Minor | SQL | Yadong Qi | Yadong Qi |
| [SPARK-6341](https://issues.apache.org/jira/browse/SPARK-6341) | Upgrade breeze from 0.11.1 to 0.11.2 or later |  Minor | ML, MLlib | Yu Ishikawa | Yu Ishikawa |
| [SPARK-6274](https://issues.apache.org/jira/browse/SPARK-6274) | Add streaming examples showing integration with DataFrames and SQL |  Major | Examples, Streaming | Tathagata Das | Tathagata Das |
| [SPARK-6180](https://issues.apache.org/jira/browse/SPARK-6180) | Error logged into log4j when use the HiveMetastoreCatalog::tableExists |  Minor | SQL | Jack Hu |  |
| [SPARK-6146](https://issues.apache.org/jira/browse/SPARK-6146) | Support more datatype in SqlParser |  Critical | SQL | Yin Huai |  |
| [SPARK-6124](https://issues.apache.org/jira/browse/SPARK-6124) | Support jdbc connection properties in OPTIONS part of the query |  Minor | SQL | Volodymyr Lyubinets | Volodymyr Lyubinets |
| [SPARK-6087](https://issues.apache.org/jira/browse/SPARK-6087) | Provide actionable exception if Kryo buffer is not large enough |  Major | Spark Core | Patrick Wendell | Lev Khomich |
| [SPARK-6079](https://issues.apache.org/jira/browse/SPARK-6079) | Use index to speed up StatusTracker.getJobIdsForGroup() |  Minor | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-5911](https://issues.apache.org/jira/browse/SPARK-5911) | Make Column.cast(to: String) support fixed precision and scale decimal type |  Major | SQL | Yin Huai |  |
| [SPARK-5836](https://issues.apache.org/jira/browse/SPARK-5836) | Highlight in Spark documentation that by default Spark does not delete its temporary files |  Minor | Documentation | Tomasz Dudziak | Ilya Ganelin |
| [SPARK-5750](https://issues.apache.org/jira/browse/SPARK-5750) | Document that ordering of elements in shuffled partitions is not deterministic across runs |  Minor | Documentation | Josh Rosen | Ilya Ganelin |
| [SPARK-5559](https://issues.apache.org/jira/browse/SPARK-5559) | Flaky test: o.a.s.streaming.flume.FlumeStreamSuite |  Major | Streaming, Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3619](https://issues.apache.org/jira/browse/SPARK-3619) | Upgrade to Mesos 0.21 to work around MESOS-1688 |  Major | Mesos | Matei Zaharia | Jongyoul Lee |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6737](https://issues.apache.org/jira/browse/SPARK-6737) | OutputCommitCoordinator.authorizedCommittersByStage map out of memory |  Critical | Scheduler, Spark Core, Streaming | Tao Li | Josh Rosen |
| [SPARK-6688](https://issues.apache.org/jira/browse/SPARK-6688) | EventLoggingListener should always operate on resolved URIs |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6686](https://issues.apache.org/jira/browse/SPARK-6686) | toDF column rename does not work when columns contain '.' |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6670](https://issues.apache.org/jira/browse/SPARK-6670) | HiveContext.analyze should throw UnsupportedOperationException instead of NotImplementedError |  Major | SQL | Yin Huai | Michael Armbrust |
| [SPARK-6669](https://issues.apache.org/jira/browse/SPARK-6669) | Lock metastore client in analyzeTable |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-6667](https://issues.apache.org/jira/browse/SPARK-6667) | hang while collect in PySpark |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-6660](https://issues.apache.org/jira/browse/SPARK-6660) | MLLibPythonAPI.pythonToJava doesn't recognize object arrays |  Critical | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6655](https://issues.apache.org/jira/browse/SPARK-6655) | We need to read the schema of a data source table stored in spark.sql.sources.schema property |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6650](https://issues.apache.org/jira/browse/SPARK-6650) | ExecutorAllocationManager never stops |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6642](https://issues.apache.org/jira/browse/SPARK-6642) | Change the lambda weight to number of explicit ratings in implicit ALS |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6633](https://issues.apache.org/jira/browse/SPARK-6633) | Should be "Contains" instead of "EndsWith" when constructing sources.StringContains |  Critical | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6621](https://issues.apache.org/jira/browse/SPARK-6621) | Calling EventLoop.stop in EventLoop.onReceive and EventLoop.onError should call onStop |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6614](https://issues.apache.org/jira/browse/SPARK-6614) | OutputCommitCoordinator should clear authorized committers only after authorized committer fails, not after any failure |  Major | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-6592](https://issues.apache.org/jira/browse/SPARK-6592) | API of Row trait should be presented in Scala doc |  Critical | Documentation, SQL | Nan Zhu | Nan Zhu |
| [SPARK-6578](https://issues.apache.org/jira/browse/SPARK-6578) | Outbound channel in network library is not thread-safe, can lead to fetch failures |  Blocker | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6575](https://issues.apache.org/jira/browse/SPARK-6575) | Converted Parquet Metastore tables no longer cache metadata |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6574](https://issues.apache.org/jira/browse/SPARK-6574) | Python Example sql.py not working in version 1.3 |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-6571](https://issues.apache.org/jira/browse/SPARK-6571) | MatrixFactorizationModel created by load fails on predictAll |  Major | MLlib, PySpark | Charles Hayden | Xiangrui Meng |
| [SPARK-6558](https://issues.apache.org/jira/browse/SPARK-6558) | Utils.getCurrentUserName returns the full principal name instead of login name |  Critical | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-6555](https://issues.apache.org/jira/browse/SPARK-6555) | Override equals and hashCode in MetastoreRelation |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6550](https://issues.apache.org/jira/browse/SPARK-6550) | Add PreAnalyzer to keep logical plan consistent across DataFrame |  Major | SQL | Liang-Chi Hsieh |  |
| [SPARK-6544](https://issues.apache.org/jira/browse/SPARK-6544) | Problem with Avro and Kryo Serialization |  Major | Spark Core | Dean Chen |  |
| [SPARK-6538](https://issues.apache.org/jira/browse/SPARK-6538) | Add missing nullable Metastore fields when merging a Parquet schema |  Major | SQL | Adam Budde |  |
| [SPARK-6496](https://issues.apache.org/jira/browse/SPARK-6496) | Multinomial Logistic Regression failed when initialWeights is not null |  Major | MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-6491](https://issues.apache.org/jira/browse/SPARK-6491) | Spark will put the current working dir to the CLASSPATH |  Major | Spark Submit | Liangliang Gu | Liangliang Gu |
| [SPARK-6480](https://issues.apache.org/jira/browse/SPARK-6480) | histogram() bucket function is wrong in some simple edge cases |  Major | Spark Core | Sean Owen | Sean Owen |
| [SPARK-6465](https://issues.apache.org/jira/browse/SPARK-6465) | GenericRowWithSchema: KryoException: Class cannot be created (missing no-arg constructor): |  Critical | SQL | Earthson Lu | Michael Armbrust |
| [SPARK-6463](https://issues.apache.org/jira/browse/SPARK-6463) | AttributeSet.equal should compare size |  Critical | SQL | June | June |
| [SPARK-6458](https://issues.apache.org/jira/browse/SPARK-6458) | Bad error message for invalid data sources |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6457](https://issues.apache.org/jira/browse/SPARK-6457) | Error when calling Pyspark RandomForestModel.load |  Minor | MLlib, PySpark | Joseph K. Bradley |  |
| [SPARK-6454](https://issues.apache.org/jira/browse/SPARK-6454) | Fix several broken links in PySpark docs |  Minor | Documentation, PySpark | Sean Owen | Kamil Smuga |
| [SPARK-6452](https://issues.apache.org/jira/browse/SPARK-6452) | CheckAnalysis should throw when the Aggregate node contains missing input attribute(s) |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6450](https://issues.apache.org/jira/browse/SPARK-6450) | Metastore Parquet table conversion fails when a single metastore Parquet table appears multiple times in the query |  Blocker | SQL | Anand Mohan Tumuluri | Cheng Lian |
| [SPARK-6437](https://issues.apache.org/jira/browse/SPARK-6437) | SQL ExternalSort should use CompletionIterator to clean up temp files |  Critical | SQL | Yin Huai | Michael Armbrust |
| [SPARK-6421](https://issues.apache.org/jira/browse/SPARK-6421) | \_regression\_train\_wrapper does not test initialWeights correctly |  Major | MLlib, PySpark | Joseph K. Bradley | Kai Sasaki |
| [SPARK-6414](https://issues.apache.org/jira/browse/SPARK-6414) | Spark driver failed with NPE on job cancelation |  Critical | Scheduler | Yuri Makhno | Hung Lin |
| [SPARK-6409](https://issues.apache.org/jira/browse/SPARK-6409) | It is not necessary that avoid old inteface of hive, because this will make some UDAF can not work. |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-6408](https://issues.apache.org/jira/browse/SPARK-6408) | JDBCRDD fails on where clause with string literal |  Blocker | SQL | Pei-Lun Lee |  |
| [SPARK-6383](https://issues.apache.org/jira/browse/SPARK-6383) | Few examples on Dataframe operation give compiler errors |  Trivial | SQL | Tijo Thomas | Tijo Thomas |
| [SPARK-6376](https://issues.apache.org/jira/browse/SPARK-6376) | Subqueries are thrown away too early in dataframes |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6375](https://issues.apache.org/jira/browse/SPARK-6375) | Bad formatting in analysis errors |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6369](https://issues.apache.org/jira/browse/SPARK-6369) | InsertIntoHiveTable and Parquet Relation should use logic from SparkHadoopWriter |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-6366](https://issues.apache.org/jira/browse/SPARK-6366) | In Python API, the default save mode for save and saveAsTable should be "error" instead of "append". |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6365](https://issues.apache.org/jira/browse/SPARK-6365) | jetty-security needed for SPARK\_PREPEND\_CLASSES to work |  Trivial | Build | Imran Rashid | Imran Rashid |
| [SPARK-6345](https://issues.apache.org/jira/browse/SPARK-6345) | Model update propagation during prediction in Streaming Regression |  Major | MLlib, Streaming | Jeremy Freeman | Jeremy Freeman |
| [SPARK-6337](https://issues.apache.org/jira/browse/SPARK-6337) | Spark 1.3 doc fixes |  Trivial | Documentation, SQL | Joseph K. Bradley | Vinod KC |
| [SPARK-6330](https://issues.apache.org/jira/browse/SPARK-6330) | newParquetRelation gets incorrect FileSystem |  Blocker | SQL | Volodymyr Lyubinets | Volodymyr Lyubinets |
| [SPARK-6325](https://issues.apache.org/jira/browse/SPARK-6325) | YarnAllocator crash with dynamic allocation on |  Critical | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6315](https://issues.apache.org/jira/browse/SPARK-6315) | SparkSQL 1.3.0 (RC3) fails to read parquet file generated by 1.1.1 |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-6313](https://issues.apache.org/jira/browse/SPARK-6313) | Fetch File Lock file creation doesnt work when Spark working dir is on a NFS mount |  Critical | Spark Core | Nathan McCarthy | Nathan McCarthy |
| [SPARK-6300](https://issues.apache.org/jira/browse/SPARK-6300) | sc.addFile(path) does not support the relative path. |  Critical | Spark Core | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-6299](https://issues.apache.org/jira/browse/SPARK-6299) | ClassNotFoundException in standalone mode when running groupByKey with class defined in REPL. |  Major | Spark Shell | Kevin (Sangwoo) Kim | Kevin (Sangwoo) Kim |
| [SPARK-6286](https://issues.apache.org/jira/browse/SPARK-6286) | Handle TASK\_ERROR in TaskState |  Minor | Spark Core | Iulian Dragos | Iulian Dragos |
| [SPARK-6250](https://issues.apache.org/jira/browse/SPARK-6250) | Types are now reserved words in DDL parser. |  Blocker | SQL | Michael Armbrust | Yin Huai |
| [SPARK-6248](https://issues.apache.org/jira/browse/SPARK-6248) | LocalRelation needs to implement statistics |  Major | SQL | Yin Huai | Michael Armbrust |
| [SPARK-6247](https://issues.apache.org/jira/browse/SPARK-6247) | Certain self joins cannot be analyzed |  Blocker | SQL | Yin Huai | Michael Armbrust |
| [SPARK-6245](https://issues.apache.org/jira/browse/SPARK-6245) | jsonRDD() of empty RDD results in exception |  Minor | SQL | Matthew Farrellee | Sean Owen |
| [SPARK-6222](https://issues.apache.org/jira/browse/SPARK-6222) | [STREAMING] All data may not be recovered from WAL when driver is killed |  Blocker | Streaming | Hari Shreedharan |  |
| [SPARK-6210](https://issues.apache.org/jira/browse/SPARK-6210) | Generated column name should not include id of column in it. |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-6194](https://issues.apache.org/jira/browse/SPARK-6194) | collect() in PySpark will cause memory leak in JVM |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-6145](https://issues.apache.org/jira/browse/SPARK-6145) | ORDER BY fails to resolve nested fields |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6133](https://issues.apache.org/jira/browse/SPARK-6133) | SparkContext#stop is not idempotent |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-6132](https://issues.apache.org/jira/browse/SPARK-6132) | Context cleaner race condition across SparkContexts |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-6088](https://issues.apache.org/jira/browse/SPARK-6088) | UI is malformed when tasks fetch remote results |  Major | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-6077](https://issues.apache.org/jira/browse/SPARK-6077) | Multiple spark streaming tabs on UI when reuse the same sparkcontext |  Minor | Streaming, Web UI | zhichao-li |  |
| [SPARK-6063](https://issues.apache.org/jira/browse/SPARK-6063) | MLlib doesn't pass mvn scalastyle check due to UTF chars in LDAModel.scala |  Minor | Build, Windows | Michael Griffiths | Michael Griffiths |
| [SPARK-6054](https://issues.apache.org/jira/browse/SPARK-6054) | SQL UDF returning object of case class; regression from 1.2.0 |  Blocker | SQL | Spiro Michaylov | Michael Armbrust |
| [SPARK-6036](https://issues.apache.org/jira/browse/SPARK-6036) | EventLog process logic has race condition with Akka actor system |  Major | Spark Core, Web UI | Zhang, Liye | Zhang, Liye |
| [SPARK-5821](https://issues.apache.org/jira/browse/SPARK-5821) | JSONRelation and ParquetRelation2 should check if delete is successful for the overwrite operation. |  Major | SQL | Yanbo Liang | Yanbo Liang |
| [SPARK-5680](https://issues.apache.org/jira/browse/SPARK-5680) | Sum function on all null values, should return zero |  Minor | SQL | Venkata Ramana G |  |
| [SPARK-5371](https://issues.apache.org/jira/browse/SPARK-5371) | Failure to analyze query with UNION ALL and double aggregation |  Critical | SQL | David Ross | Michael Armbrust |
| [SPARK-5320](https://issues.apache.org/jira/browse/SPARK-5320) | Joins on simple table created using select gives error |  Major | SQL | Kuldeep | Yuri Saito |
| [SPARK-4704](https://issues.apache.org/jira/browse/SPARK-4704) | SparkSubmitDriverBootstrap doesn't flush output |  Major | Spark Core | Stephen Haberman | Sean Owen |
| [SPARK-4300](https://issues.apache.org/jira/browse/SPARK-4300) | Race condition during SparkWorker shutdown |  Minor | Spark Shell | Alex Liu | Sean Owen |
| [SPARK-4044](https://issues.apache.org/jira/browse/SPARK-4044) | Thriftserver fails to start when JAVA\_HOME points to JRE instead of JDK |  Major | Documentation, SQL | Josh Rosen |  |
| [SPARK-3570](https://issues.apache.org/jira/browse/SPARK-3570) | Shuffle write time does not include time to open shuffle files |  Major | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-3266](https://issues.apache.org/jira/browse/SPARK-3266) | JavaDoubleRDD doesn't contain max() |  Major | Java API | Amey Chaugule | Sean Owen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6625](https://issues.apache.org/jira/browse/SPARK-6625) | Add common string filters to data sources |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6623](https://issues.apache.org/jira/browse/SPARK-6623) | Alias DataFrame.na.fill/drop in Python |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6603](https://issues.apache.org/jira/browse/SPARK-6603) | SQLContext.registerFunction -\> SQLContext.udf.register |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-6564](https://issues.apache.org/jira/browse/SPARK-6564) | SQLContext.emptyDataFrame should contain 0 rows, not 1 row |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6563](https://issues.apache.org/jira/browse/SPARK-6563) | DataFrame.fillna |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6554](https://issues.apache.org/jira/browse/SPARK-6554) | Cannot use partition columns in where clause when Parquet filter push-down is enabled |  Critical | SQL | Jon Chase | Cheng Lian |
| [SPARK-6119](https://issues.apache.org/jira/browse/SPARK-6119) | DataFrame.dropna support |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6117](https://issues.apache.org/jira/browse/SPARK-6117) | describe function for summary statistics |  Major | SQL | Reynold Xin |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6626](https://issues.apache.org/jira/browse/SPARK-6626) | TwitterUtils.createStream documentation error |  Trivial | Documentation | Jayson Sunshine | Jayson Sunshine |
| [SPARK-6469](https://issues.apache.org/jira/browse/SPARK-6469) | Improving documentation on YARN local directories usage |  Minor | Documentation, YARN | Christophe Préaud | Christophe Préaud |
| [SPARK-6336](https://issues.apache.org/jira/browse/SPARK-6336) | LBFGS should document what convergenceTol means |  Trivial | Documentation, MLlib | Joseph K. Bradley | Kai Sasaki |
| [SPARK-6278](https://issues.apache.org/jira/browse/SPARK-6278) | Mention the change of step size in the migration guide |  Major | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6275](https://issues.apache.org/jira/browse/SPARK-6275) | Miss toDF() function in docs/sql-programming-guide.md |  Trivial | Documentation | Zhichao  Zhang | Zhichao  Zhang |


