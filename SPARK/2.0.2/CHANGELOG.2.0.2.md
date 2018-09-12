
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

## Release 2.0.2 - 2016-11-14



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-17711](https://issues.apache.org/jira/browse/SPARK-17711) | Compress rolled executor logs |  Major | . | Yu Peng | Yu Peng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16343](https://issues.apache.org/jira/browse/SPARK-16343) | Improve the PushDownPredicate rule to pushdown predicates currectly in non-deterministic condition |  Critical | SQL | Xingbo Jiang | Xingbo Jiang |
| [SPARK-17780](https://issues.apache.org/jira/browse/SPARK-17780) | Report NoClassDefFoundError in StreamExecution |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17751](https://issues.apache.org/jira/browse/SPARK-17751) | Remove spark.sql.eagerAnalysis |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17999](https://issues.apache.org/jira/browse/SPARK-17999) | Add getPreferredLocations for KafkaSourceRDD |  Minor | Structured Streaming | Saisai Shao | Saisai Shao |
| [SPARK-18044](https://issues.apache.org/jira/browse/SPARK-18044) | FileStreamSource should not infer partitions in every batch |  Major | SQL | Wenchen Fan | Wenchen Fan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16304](https://issues.apache.org/jira/browse/SPARK-16304) | LinkageError should not crash Spark executor |  Major | Spark Core | Reynold Xin | Peter Lee |
| [SPARK-16804](https://issues.apache.org/jira/browse/SPARK-16804) | Correlated subqueries containing non-deterministic operators return incorrect results |  Major | SQL | Nattavut Sutyanyong | Nattavut Sutyanyong |
| [SPARK-17643](https://issues.apache.org/jira/browse/SPARK-17643) | Remove comparable requirement from Offset |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-17153](https://issues.apache.org/jira/browse/SPARK-17153) | [Structured streams] readStream ignores partition columns |  Major | Structured Streaming | Dmitri Carpov | Liang-Chi Hsieh |
| [SPARK-17712](https://issues.apache.org/jira/browse/SPARK-17712) | Incorrect result due to invalid pushdown of data-independent filter beneath aggregate |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17612](https://issues.apache.org/jira/browse/SPARK-17612) | Support \`DESCRIBE table PARTITION\` SQL syntax |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-17697](https://issues.apache.org/jira/browse/SPARK-17697) | BinaryLogisticRegressionSummary, GLM Summary should handle non-Double numeric types |  Major | ML | Joseph K. Bradley | Bryan Cutler |
| [SPARK-17721](https://issues.apache.org/jira/browse/SPARK-17721) | Erroneous computation in multiplication of transposed SparseMatrix with SparseVector |  Critical | ML, MLlib | Bjarne Fruergaard | Bjarne Fruergaard |
| [SPARK-17587](https://issues.apache.org/jira/browse/SPARK-17587) | SparseVector \_\_getitem\_\_ should follow \_\_getitem\_\_ contract |  Minor | ML, MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-17753](https://issues.apache.org/jira/browse/SPARK-17753) | Simple case in spark sql throws ParseException |  Major | SQL | kanika dhuria | Herman van Hovell |
| [SPARK-17112](https://issues.apache.org/jira/browse/SPARK-17112) | "select if(true, null, null)" via JDBC triggers IllegalArgumentException in Thriftserver |  Minor | SQL | Josh Rosen | Dongjoon Hyun |
| [SPARK-17559](https://issues.apache.org/jira/browse/SPARK-17559) | PeriodicGraphCheckpointer did not persist edges as expected in some cases |  Minor | MLlib | ding | dingding |
| [SPARK-17549](https://issues.apache.org/jira/browse/SPARK-17549) | InMemoryRelation doesn't scale to large tables |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-17758](https://issues.apache.org/jira/browse/SPARK-17758) | Spark Aggregate function  LAST returns null on an empty partition |  Major | Input/Output | Franck Tago | Herman van Hovell |
| [SPARK-17750](https://issues.apache.org/jira/browse/SPARK-17750) | Cannot create view which includes interval arithmetic |  Major | SQL | Andreas Damm | Dongjoon Hyun |
| [SPARK-17798](https://issues.apache.org/jira/browse/SPARK-17798) | Remove redundant Experimental annotations in sql.streaming package |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17792](https://issues.apache.org/jira/browse/SPARK-17792) | L-BFGS solver for linear regression does not accept general numeric label column types |  Minor | ML | Seth Hendrickson | Seth Hendrickson |
| [SPARK-17805](https://issues.apache.org/jira/browse/SPARK-17805) | sqlContext.read.text() does not work with a list of paths |  Minor | PySpark | Laurent Legrand | Bryan Cutler |
| [SPARK-17707](https://issues.apache.org/jira/browse/SPARK-17707) | Web UI prevents spark-submit application to be finished |  Major | . | Nick Orka | Sean Owen |
| [SPARK-17806](https://issues.apache.org/jira/browse/SPARK-17806) | Incorrect result when work with data from parquet |  Blocker | SQL | Vitaly Gerasimov | Davies Liu |
| [SPARK-17832](https://issues.apache.org/jira/browse/SPARK-17832) | TableIdentifier.quotedString creates un-parseable names when name contains a backtick |  Minor | SQL | Herman van Hovell | Xingbo Jiang |
| [SPARK-17417](https://issues.apache.org/jira/browse/SPARK-17417) | Fix sorting of part files while reconstructing RDD/partition from checkpointed files. |  Major | Spark Core | Dhruve Ashar | Dhruve Ashar |
| [SPARK-17816](https://issues.apache.org/jira/browse/SPARK-17816) | Json serialzation of accumulators are failing with ConcurrentModificationException |  Major | Spark Core | Ergin Seyfe | Ergin Seyfe |
| [SPARK-17808](https://issues.apache.org/jira/browse/SPARK-17808) | BinaryType fails in Python 3 due to outdated Pyrolite |  Major | PySpark | Pete Fein | Bryan Cutler |
| [SPARK-17880](https://issues.apache.org/jira/browse/SPARK-17880) | The url linking to \`AccumulatorV2\` in the document is incorrect. |  Trivial | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-17853](https://issues.apache.org/jira/browse/SPARK-17853) | Kafka OffsetOutOfRangeException on DStreams union from separate Kafka clusters with identical topic names. |  Major | DStreams | Marcin Kuthan | Cody Koeninger |
| [SPARK-17884](https://issues.apache.org/jira/browse/SPARK-17884) | In the cast expression, casting from empty string to interval type throws NullPointerException |  Major | SQL | Priyanka Garg | Priyanka Garg |
| [SPARK-17782](https://issues.apache.org/jira/browse/SPARK-17782) | Kafka 010 test is flaky |  Major | DStreams | Herman van Hovell | Cody Koeninger |
| [SPARK-17876](https://issues.apache.org/jira/browse/SPARK-17876) | Write StructuredStreaming WAL to a stream instead of materializing all at once |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-17882](https://issues.apache.org/jira/browse/SPARK-17882) | RBackendHandler swallowing errors |  Minor | SparkR | James Shuster | James Shuster |
| [SPARK-17863](https://issues.apache.org/jira/browse/SPARK-17863) | SELECT distinct does not work if there is a order by clause |  Blocker | SQL | Yin Huai | Davies Liu |
| [SPARK-17819](https://issues.apache.org/jira/browse/SPARK-17819) | Specified database in JDBC URL is ignored when connecting to thriftserver |  Major | SQL | Todd Nemet | Dongjoon Hyun |
| [SPARK-17892](https://issues.apache.org/jira/browse/SPARK-17892) | Query in CTAS is Optimized Twice (branch-2.0) |  Blocker | SQL | Yin Huai | Xiao Li |
| [SPARK-17841](https://issues.apache.org/jira/browse/SPARK-17841) | Kafka 0.10 commitQueue needs to be drained |  Major | . | Cody Koeninger | Cody Koeninger |
| [SPARK-18001](https://issues.apache.org/jira/browse/SPARK-18001) | Broke link to R DataFrame In sql-programming-guide |  Trivial | Documentation | Wenpei Yu | Wenpei Yu |
| [SPARK-17989](https://issues.apache.org/jira/browse/SPARK-17989) | Check ascendingOrder type in sort\_array function ahead |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-18003](https://issues.apache.org/jira/browse/SPARK-18003) | RDD zipWithIndex generate wrong result when one partition contains more than 2147483647 records. |  Major | Spark Core | Weichen Xu | Weichen Xu |
| [SPARK-17698](https://issues.apache.org/jira/browse/SPARK-17698) | Join predicates should not contain filter clauses |  Minor | SQL | Tejas Patil | Tejas Patil |
| [SPARK-18034](https://issues.apache.org/jira/browse/SPARK-18034) | Upgrade to MiMa 0.1.11 |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-17929](https://issues.apache.org/jira/browse/SPARK-17929) | Deadlock when AM restart and send RemoveExecutor on reset |  Minor | Spark Core | Weizhong | Fei Wang |
| [SPARK-17811](https://issues.apache.org/jira/browse/SPARK-17811) | SparkR cannot parallelize data.frame with NA or NULL in Date columns |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-17986](https://issues.apache.org/jira/browse/SPARK-17986) | SQLTransformer leaks temporary tables |  Minor | ML | Drew Robb | Drew Robb |
| [SPARK-17123](https://issues.apache.org/jira/browse/SPARK-17123) | Performing set operations that combine string and date / timestamp columns may result in generated projection code which doesn't compile |  Minor | SQL | Josh Rosen | Hyukjin Kwon |
| [SPARK-18058](https://issues.apache.org/jira/browse/SPARK-18058) | AnalysisException may be thrown when union two DFs whose struct fields have different nullability |  Major | SQL | Cheng Lian | Nan Zhu |
| [SPARK-17810](https://issues.apache.org/jira/browse/SPARK-17810) | Default spark.sql.warehouse.dir is relative to local FS but can resolve as HDFS path |  Major | SQL | Sean Owen | Sean Owen |
| [SPARK-18070](https://issues.apache.org/jira/browse/SPARK-18070) | binary operator should not consider nullability when comparing input types |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16988](https://issues.apache.org/jira/browse/SPARK-16988) | spark history server log needs to be fixed to show https url when ssl is enabled |  Minor | Web UI | Yesha Vora | chie hayashida |
| [SPARK-18022](https://issues.apache.org/jira/browse/SPARK-18022) | java.lang.NullPointerException instead of real exception when saving DF to MySQL |  Minor | SQL | Maciej Bryński | Sean Owen |
| [SPARK-17733](https://issues.apache.org/jira/browse/SPARK-17733) | InferFiltersFromConstraints rule never terminates for query |  Critical | SQL | Josh Rosen | Xingbo Jiang |
| [SPARK-18093](https://issues.apache.org/jira/browse/SPARK-18093) | Fix default value test in SQLConfSuite to work regardless of warehouse dir's existence |  Minor | SQL | Mark Grover | Mark Grover |
| [SPARK-18063](https://issues.apache.org/jira/browse/SPARK-18063) | Failed to infer constraints over multiple aliases |  Minor | SQL | Xingbo Jiang | Xingbo Jiang |
| [SPARK-18009](https://issues.apache.org/jira/browse/SPARK-18009) | Spark 2.0.1 SQL Thrift Error |  Critical | SQL | Jerryjung | Dilip Biswal |
| [SPARK-18132](https://issues.apache.org/jira/browse/SPARK-18132) | spark 2.0 branch's spark-release-publish failed because style check failed. |  Blocker | Build | Yin Huai | Yin Huai |
| [SPARK-18030](https://issues.apache.org/jira/browse/SPARK-18030) | Flaky test: org.apache.spark.sql.streaming.FileStreamSourceSuite |  Major | Structured Streaming | Davies Liu | Shixiong Zhu |
| [SPARK-18114](https://issues.apache.org/jira/browse/SPARK-18114) | MesosClusterScheduler generate bad command options |  Major | Mesos | Leighton Wong | Leighton Wong |
| [SPARK-18189](https://issues.apache.org/jira/browse/SPARK-18189) | task not serializable with groupByKey() + mapGroups() + map |  Major | SQL | Yang Yang | Ergin Seyfe |
| [SPARK-18148](https://issues.apache.org/jira/browse/SPARK-18148) | Misleading Error Message for Aggregation Without Window/GroupBy |  Major | SQL | Pat McDonough | Xingbo Jiang |
| [SPARK-17337](https://issues.apache.org/jira/browse/SPARK-17337) | Incomplete algorithm for name resolution in Catalyst paser may lead to incorrect result |  Major | SQL | Nattavut Sutyanyong | Herman van Hovell |
| [SPARK-18342](https://issues.apache.org/jira/browse/SPARK-18342) | HDFSBackedStateStore can fail to rename files causing snapshotting and recovery to fail |  Critical | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-15685](https://issues.apache.org/jira/browse/SPARK-15685) | StackOverflowError (VirtualMachineError) or NoClassDefFoundError (LinkageError) should not System.exit() in local mode |  Major | Spark Core | Brett Randall |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-17778](https://issues.apache.org/jira/browse/SPARK-17778) | Mock SparkContext to reduce memory usage of BlockManagerSuite |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17738](https://issues.apache.org/jira/browse/SPARK-17738) | Flaky test: org.apache.spark.sql.execution.columnar.ColumnTypeSuite MAP append/extract |  Major | Tests | Davies Liu | Davies Liu |
| [SPARK-17624](https://issues.apache.org/jira/browse/SPARK-17624) | Flaky test? StateStoreSuite maintenance |  Minor | Tests | Adam Roberts | Tathagata Das |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-17346](https://issues.apache.org/jira/browse/SPARK-17346) | Kafka 0.10 support in Structured Streaming |  Major | Structured Streaming | Frederick Reiss | Shixiong Zhu |
| [SPARK-17790](https://issues.apache.org/jira/browse/SPARK-17790) | Support for parallelizing R data.frame larger than 2GB |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-17834](https://issues.apache.org/jira/browse/SPARK-17834) | Fetch the earliest offsets manually in KafkaSource instead of counting on KafkaConsumer |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17731](https://issues.apache.org/jira/browse/SPARK-17731) | Metrics for Structured Streaming |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-17926](https://issues.apache.org/jira/browse/SPARK-17926) | Add methods to convert StreamingQueryStatus to json |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-17812](https://issues.apache.org/jira/browse/SPARK-17812) | More granular control of starting offsets (assign) |  Major | Structured Streaming | Michael Armbrust | Cody Koeninger |
| [SPARK-16963](https://issues.apache.org/jira/browse/SPARK-16963) | Change Source API so that sources do not need to keep unbounded state |  Major | Structured Streaming | Frederick Reiss | Frederick Reiss |
| [SPARK-17813](https://issues.apache.org/jira/browse/SPARK-17813) | Maximum data per trigger |  Major | Structured Streaming | Michael Armbrust | Cody Koeninger |
| [SPARK-18164](https://issues.apache.org/jira/browse/SPARK-18164) | ForeachSink should fail the Spark job if \`process\` throws exception |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-18143](https://issues.apache.org/jira/browse/SPARK-18143) | History Server is broken because of the refactoring work in Structured Streaming |  Blocker | Structured Streaming | Shixiong Zhu | Shixiong Zhu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-17736](https://issues.apache.org/jira/browse/SPARK-17736) | Update R README for rmarkdown, pandoc |  Trivial | Documentation, SparkR | Joseph K. Bradley | Jagadeesan A S |
| [SPARK-17803](https://issues.apache.org/jira/browse/SPARK-17803) | Docker integration tests don't run with "Docker for Mac" |  Minor | Tests | Christian Kadner | Christian Kadner |
| [SPARK-17883](https://issues.apache.org/jira/browse/SPARK-17883) | Possible typo in comments of Row.scala |  Trivial | SQL | Weiluo Ren | Weiluo Ren |
| [SPARK-17953](https://issues.apache.org/jira/browse/SPARK-17953) | Fix typo in SparkSession scaladoc |  Trivial | Documentation | Tae Jun Kim | Tae Jun Kim |
| [SPARK-18104](https://issues.apache.org/jira/browse/SPARK-18104) | Don't build KafkaSource doc |  Major | SQL | Shixiong Zhu | Shixiong Zhu |


