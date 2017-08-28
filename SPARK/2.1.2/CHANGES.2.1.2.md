
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

## Release 2.1.2 - Unreleased (as of 2017-08-28)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20084](https://issues.apache.org/jira/browse/SPARK-20084) | Remove internal.metrics.updatedBlockStatuses accumulator from history files |  Major | Spark Core, Web UI | Ryan Blue | Ryan Blue |
| [SPARK-20218](https://issues.apache.org/jira/browse/SPARK-20218) | '/applications/[app-id]/stages' in REST API,add description. |  Trivial | Documentation | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20304](https://issues.apache.org/jira/browse/SPARK-20304) | AssertNotNull should not include path in string representation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20409](https://issues.apache.org/jira/browse/SPARK-20409) | fail early if aggregate function in GROUP BY |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20404](https://issues.apache.org/jira/browse/SPARK-20404) | Regression with accumulator names when migrating from 1.6 to 2.x |  Minor | Spark Core | Sergey Zhemzhitsky | Sergey Zhemzhitsky |
| [SPARK-20627](https://issues.apache.org/jira/browse/SPARK-20627) | Remove pip local version string (PEP440) |  Major | PySpark | holdenk | holdenk |
| [SPARK-20796](https://issues.apache.org/jira/browse/SPARK-20796) | the location of start-master.sh in spark-standalone.md is wrong |  Trivial | Documentation | liuzhaokun | liuzhaokun |
| [SPARK-20759](https://issues.apache.org/jira/browse/SPARK-20759) | SCALA\_VERSION in \_config.yml,LICENSE and Dockerfile should be consistent with pom.xml |  Trivial | Documentation | liuzhaokun | liuzhaokun |
| [SPARK-20868](https://issues.apache.org/jira/browse/SPARK-20868) | UnsafeShuffleWriter should verify the position after FileChannel.transferTo |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-21072](https://issues.apache.org/jira/browse/SPARK-21072) | \`TreeNode.mapChildren\` should only apply to the children node. |  Major | SQL | Xianyang Liu | Xianyang Liu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18535](https://issues.apache.org/jira/browse/SPARK-18535) | Redact sensitive information from Spark logs and UI |  Major | Web UI, YARN | Mark Grover | Mark Grover |
| [SPARK-20164](https://issues.apache.org/jira/browse/SPARK-20164) | AnalysisException not tolerant of null query plan |  Major | SQL | Kunal Khamar | Kunal Khamar |
| [SPARK-20191](https://issues.apache.org/jira/browse/SPARK-20191) | RackResolver not correctly being overridden in YARN tests |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-20042](https://issues.apache.org/jira/browse/SPARK-20042) | Buttons on executor log page don't work with spark.ui.reverseProxy=true |  Minor | Web UI | Oliver Koeth | Oliver Koeth |
| [SPARK-20223](https://issues.apache.org/jira/browse/SPARK-20223) | Typo in tpcds q77.sql |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-20246](https://issues.apache.org/jira/browse/SPARK-20246) | Should check determinism when pushing predicates down through aggregation |  Major | SQL | Weiluo Ren | Wenchen Fan |
| [SPARK-20262](https://issues.apache.org/jira/browse/SPARK-20262) | AssertNotNull should throw NullPointerException |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20260](https://issues.apache.org/jira/browse/SPARK-20260) | MLUtils parseLibSVMRecord has incorrect string interpolation for error message |  Minor | ML | Vijay Krishna Ramesh | Vijay Krishna Ramesh |
| [SPARK-20264](https://issues.apache.org/jira/browse/SPARK-20264) | asm should be non-test dependency in sql/core |  Major | Build, SQL | Reynold Xin | Reynold Xin |
| [SPARK-20239](https://issues.apache.org/jira/browse/SPARK-20239) | Improve HistoryServer ACL mechanism |  Major | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20496](https://issues.apache.org/jira/browse/SPARK-20496) | KafkaWriter Uses Unanalyzed Logical Plan |  Major | Structured Streaming | Bill Chambers | Bill Chambers |
| [SPARK-20517](https://issues.apache.org/jira/browse/SPARK-20517) | Download link in history server UI is not correct |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20540](https://issues.apache.org/jira/browse/SPARK-20540) | Dynamic allocation constantly requests and kills executors |  Major | Spark Core, YARN | Ryan Blue | Ryan Blue |
| [SPARK-20558](https://issues.apache.org/jira/browse/SPARK-20558) | clear InheritableThreadLocal variables in SparkContext when stopping it |  Major | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-20546](https://issues.apache.org/jira/browse/SPARK-20546) | spark-class gets syntax error in posix mode |  Minor | Deploy | Jessie Yu | Jessie Yu |
| [SPARK-20613](https://issues.apache.org/jira/browse/SPARK-20613) | Double quotes in Windows batch script |  Major | Windows | Jarrett Meyer | Jarrett Meyer |
| [SPARK-20616](https://issues.apache.org/jira/browse/SPARK-20616) | RuleExecutor logDebug of batch results should show diff to start of batch |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-20615](https://issues.apache.org/jira/browse/SPARK-20615) | SparseVector.argmax throws IndexOutOfBoundsException when the sparse vector has a size greater than zero but no elements defined. |  Minor | ML, MLlib | Jon McLean | Jon McLean |
| [SPARK-17685](https://issues.apache.org/jira/browse/SPARK-17685) | WholeStageCodegenExec throws IndexOutOfBoundsException |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-20686](https://issues.apache.org/jira/browse/SPARK-20686) | PropagateEmptyRelation incorrectly handles aggregate without grouping expressions |  Major | Optimizer, SQL | Josh Rosen | Josh Rosen |
| [SPARK-20631](https://issues.apache.org/jira/browse/SPARK-20631) | LogisticRegression.\_checkThresholdConsistency should use values not Params |  Minor | ML, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20393](https://issues.apache.org/jira/browse/SPARK-20393) | Strengthen Spark to prevent XSS vulnerabilities |  Major | Web UI | Nicholas Marion | Nicholas Marion |
| [SPARK-20688](https://issues.apache.org/jira/browse/SPARK-20688) | correctly check analysis for scalar sub-queries |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20685](https://issues.apache.org/jira/browse/SPARK-20685) | BatchPythonEvaluation UDF evaluator fails for case of single UDF with repeated argument |  Major | PySpark | Josh Rosen | Josh Rosen |
| [SPARK-20665](https://issues.apache.org/jira/browse/SPARK-20665) | Spark-sql, "Bround" and "Round" function return NULL |  Major | SQL | liuxian | liuxian |
| [SPARK-17424](https://issues.apache.org/jira/browse/SPARK-17424) | Dataset job fails from unsound substitution in ScalaReflect |  Major | Spark Core | Ryan Blue | Ryan Blue |
| [SPARK-20705](https://issues.apache.org/jira/browse/SPARK-20705) | The sort function can not be used in the master page when you use Firefox or Google Chrome. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20735](https://issues.apache.org/jira/browse/SPARK-20735) | Enable cross join in TPCDSQueryBenchmark |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20769](https://issues.apache.org/jira/browse/SPARK-20769) | Incorrect documentation for using Jupyter notebook |  Minor | Documentation | Andrew Ray | Andrew Ray |
| [SPARK-20798](https://issues.apache.org/jira/browse/SPARK-20798) | GenerateUnsafeProjection should check if value is null before calling the getter |  Major | SQL | Ala Luszczak | Ala Luszczak |
| [SPARK-20773](https://issues.apache.org/jira/browse/SPARK-20773) | ParquetWriteSupport.writeFields is quadratic in number of fields |  Minor | SQL | T Poterba | T Poterba |
| [SPARK-20781](https://issues.apache.org/jira/browse/SPARK-20781) | the location of Dockerfile in docker.properties.template is wrong |  Minor | Mesos | liuzhaokun | liuzhaokun |
| [SPARK-20687](https://issues.apache.org/jira/browse/SPARK-20687) | mllib.Matrices.fromBreeze may crash when converting from Breeze sparse matrix |  Minor | MLlib | Ignacio Bermudez Corrales | Ignacio Bermudez Corrales |
| [SPARK-20756](https://issues.apache.org/jira/browse/SPARK-20756) | yarn-shuffle jar has references to unshaded guava and contains scala classes |  Major | YARN | Mark Grover | Mark Grover |
| [SPARK-18406](https://issues.apache.org/jira/browse/SPARK-18406) | Race between end-of-task and completion iterator read lock release |  Major | Block Manager, Spark Core | Josh Rosen | Jiang Xingbo |
| [SPARK-20862](https://issues.apache.org/jira/browse/SPARK-20862) | LogisticRegressionModel throws TypeError |  Minor | MLlib, PySpark | Bago Amirbekian | Bago Amirbekian |
| [SPARK-20848](https://issues.apache.org/jira/browse/SPARK-20848) | Dangling threads when reading parquet files in local mode |  Major | Input/Output, SQL | Nick Pritchard | Liang-Chi Hsieh |
| [SPARK-20250](https://issues.apache.org/jira/browse/SPARK-20250) | Improper OOM error when a task been killed while spilling data |  Major | Spark Core | Feng Zhu | Xianyang Liu |
| [SPARK-20874](https://issues.apache.org/jira/browse/SPARK-20874) | The "examples" project doesn't depend on Structured Streaming Kafka source |  Minor | Examples | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20843](https://issues.apache.org/jira/browse/SPARK-20843) | Cannot gracefully kill drivers which take longer than 10 seconds to die |  Major | Spark Core | Michael Allman | Shixiong Zhu |
| [SPARK-20275](https://issues.apache.org/jira/browse/SPARK-20275) | HistoryServer page shows incorrect complete date of inprogress apps |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20940](https://issues.apache.org/jira/browse/SPARK-20940) | AccumulatorV2 should not throw IllegalAccessError |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-20922](https://issues.apache.org/jira/browse/SPARK-20922) | Unsafe deserialization in Spark LauncherConnection |  Major | Spark Submit | Aditya Sharad | Marcelo Vanzin |
| [SPARK-20974](https://issues.apache.org/jira/browse/SPARK-20974) | we should run REPL tests if SQL core has code changes |  Major | Build | Wenchen Fan | Wenchen Fan |
| [SPARK-20914](https://issues.apache.org/jira/browse/SPARK-20914) | Javadoc contains code that is invalid |  Trivial | Documentation | Cristian Teodor | Sean Owen |
| [SPARK-20920](https://issues.apache.org/jira/browse/SPARK-20920) | ForkJoinPool pools are leaked when writing hive tables with many partitions |  Major | SQL | Rares Mirica | Sean Owen |
| [SPARK-21064](https://issues.apache.org/jira/browse/SPARK-21064) | Fix the default value bug in NettyBlockTransferServiceSuite |  Trivial | Tests | DjvuLee | DjvuLee |
| [SPARK-20211](https://issues.apache.org/jira/browse/SPARK-20211) | \`1 \> 0.0001\` throws Decimal scale (0) cannot be greater than precision (-2) exception |  Major | SQL | StanZhai | Xiao Li |
| [SPARK-16251](https://issues.apache.org/jira/browse/SPARK-16251) | LocalCheckpointSuite's - missing checkpoint block fails with informative message is flaky. |  Minor | . | Prashant Sharma | Jiang Xingbo |
| [SPARK-20200](https://issues.apache.org/jira/browse/SPARK-20200) | Flaky Test: org.apache.spark.rdd.LocalCheckpointSuite |  Minor | Spark Core | Takuya Ueshin | Jiang Xingbo |
| [SPARK-19688](https://issues.apache.org/jira/browse/SPARK-19688) | Spark on Yarn Credentials File set to different application directory |  Minor | DStreams, YARN | Devaraj Jonnadula | Xing Shi |
| [SPARK-21138](https://issues.apache.org/jira/browse/SPARK-21138) | Cannot delete staging dir when the clusters of "spark.yarn.stagingDir" and "spark.hadoop.fs.defaultFS" are different |  Major | YARN | sharkd tu | sharkd tu |
| [SPARK-21167](https://issues.apache.org/jira/browse/SPARK-21167) | Path is not decoded correctly when reading output of FileSink |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21181](https://issues.apache.org/jira/browse/SPARK-21181) | Suppress memory leak errors reported by netty |  Minor | Input/Output | Dhruve Ashar | Dhruve Ashar |
| [SPARK-20555](https://issues.apache.org/jira/browse/SPARK-20555) | Incorrect handling of Oracle's decimal types via JDBC |  Major | SQL | Gabor Feher | Gabor Feher |
| [SPARK-21159](https://issues.apache.org/jira/browse/SPARK-21159) | Cluster mode, driver throws connection refused exception submitted by SparkLauncher |  Major | Spark Core, Spark Submit | niefei | Marcelo Vanzin |
| [SPARK-21203](https://issues.apache.org/jira/browse/SPARK-21203) | Wrong results of insertion of Array of Struct |  Blocker | SQL | Xiao Li | Xiao Li |
| [SPARK-19104](https://issues.apache.org/jira/browse/SPARK-19104) |  CompileException with Map and Case Class in Spark 2.1.0 |  Major | Optimizer, SQL | Nils Grabbert | Liang-Chi Hsieh |
| [SPARK-21176](https://issues.apache.org/jira/browse/SPARK-21176) | Master UI hangs with spark.ui.reverseProxy=true if the master node has many CPUs |  Major | Web UI | Ingo Schuster | Ingo Schuster |
| [SPARK-20256](https://issues.apache.org/jira/browse/SPARK-20256) | Fail to start SparkContext/SparkSession with Hive support enabled when user does not have read/write privilege to Hive metastore warehouse dir |  Critical | SQL | Xin Wu | Dongjoon Hyun |
| [SPARK-21312](https://issues.apache.org/jira/browse/SPARK-21312) | UnsafeRow writeToStream has incorrect offsetInByteArray calculation for non-zero offset |  Major | SQL | Sumedh Wale | Sumedh Wale |
| [SPARK-21345](https://issues.apache.org/jira/browse/SPARK-21345) | SparkSessionBuilderSuite should clean up stopped sessions |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21344](https://issues.apache.org/jira/browse/SPARK-21344) | BinaryType comparison does signed byte array comparison |  Major | SQL | Shubham Chopra | Kazuaki Ishizaki |
| [SPARK-21332](https://issues.apache.org/jira/browse/SPARK-21332) | Incorrect result type inferred for some decimal expressions |  Major | SQL | Alexander Shkapsky | Anton Okolnychyi |
| [SPARK-21441](https://issues.apache.org/jira/browse/SPARK-21441) | Incorrect Codegen in SortMergeJoinExec results failures in some cases |  Major | SQL | Feng Zhu | Feng Zhu |
| [SPARK-21446](https://issues.apache.org/jira/browse/SPARK-21446) | [SQL] JDBC Postgres fetchsize parameter ignored again |  Major | SQL | Albert Jang | Albert Jang |
| [SPARK-21306](https://issues.apache.org/jira/browse/SPARK-21306) | OneVsRest Conceals Columns That May Be Relevant To Underlying Classifier |  Critical | ML | Cathal Garvey | Yan Facai (颜发才) |
| [SPARK-21555](https://issues.apache.org/jira/browse/SPARK-21555) | GROUP BY don't work with expressions with NVL and nested objects |  Major | SQL | Vitaly Gerasimov | Liang-Chi Hsieh |
| [SPARK-21522](https://issues.apache.org/jira/browse/SPARK-21522) | Flaky test: LauncherServerSuite.testStreamFiltering |  Minor | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-12717](https://issues.apache.org/jira/browse/SPARK-12717) | pyspark broadcast fails when using multiple threads |  Critical | PySpark | Edward Walker | Bryan Cutler |
| [SPARK-21330](https://issues.apache.org/jira/browse/SPARK-21330) | Bad partitioning does not allow to read a JDBC table with extreme values on the partition column |  Major | SQL | Stefano Parmesan | Andrew Ray |
| [SPARK-21588](https://issues.apache.org/jira/browse/SPARK-21588) | SQLContext.getConf(key, null) should return null, but it throws NPE |  Minor | SQL | Burak Yavuz | Vinod KC |
| [SPARK-21721](https://issues.apache.org/jira/browse/SPARK-21721) | Memory leak in org.apache.spark.sql.hive.execution.InsertIntoHiveTable |  Critical | SQL | yzheng616 | Liang-Chi Hsieh |
| [SPARK-21793](https://issues.apache.org/jira/browse/SPARK-21793) | Correct validateAndTransformSchema in GaussianMixture and AFTSurvivalRegression |  Minor | MLlib | Cedric Pelvet | Cedric Pelvet |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20603](https://issues.apache.org/jira/browse/SPARK-20603) | Flaky test: o.a.s.sql.kafka010.KafkaSourceSuite deserialization of initial offset with Spark 2.1.0 |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21114](https://issues.apache.org/jira/browse/SPARK-21114) | Test failure in Spark 2.1 due to name mismatch |  Major | SQL | Xiao Li | Xiao Li |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21083](https://issues.apache.org/jira/browse/SPARK-21083) | Store zero size and row count after analyzing empty table |  Major | SQL | Zhenhua Wang | Zhenhua Wang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20296](https://issues.apache.org/jira/browse/SPARK-20296) | UnsupportedOperationChecker text on distinct aggregations differs from docs |  Trivial | Structured Streaming | Jason Tokayer | Jason Tokayer |
| [SPARK-20455](https://issues.apache.org/jira/browse/SPARK-20455) | Missing Test Target in Documentation for "Running Docker-based Integration Test Suites" |  Trivial | Documentation | Armin Braun | Armin Braun |
| [SPARK-21123](https://issues.apache.org/jira/browse/SPARK-21123) | Options for file stream source are in a wrong table |  Minor | Documentation, Structured Streaming | Shixiong Zhu | Assaf Mendelson |


