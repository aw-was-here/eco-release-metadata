
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

## Release 2.1.2 - Unreleased (as of 2017-05-12)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20084](https://issues.apache.org/jira/browse/SPARK-20084) | Remove internal.metrics.updatedBlockStatuses accumulator from history files |  Major | Spark Core, Web UI | Ryan Blue | Ryan Blue |
| [SPARK-20218](https://issues.apache.org/jira/browse/SPARK-20218) | '/applications/[app-id]/stages' in REST API,add description. |  Trivial | Documentation | guoxiaolongzte | guoxiaolongzte |
| [SPARK-20304](https://issues.apache.org/jira/browse/SPARK-20304) | AssertNotNull should not include path in string representation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-20409](https://issues.apache.org/jira/browse/SPARK-20409) | fail early if aggregate function in GROUP BY |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20404](https://issues.apache.org/jira/browse/SPARK-20404) | Regression with accumulator names when migrating from 1.6 to 2.x |  Minor | Spark Core | Sergey Zhemzhitsky | Sergey Zhemzhitsky |
| [SPARK-20627](https://issues.apache.org/jira/browse/SPARK-20627) | Remove pip local version string (PEP440) |  Major | PySpark | holdenk | holdenk |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
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
| [SPARK-20688](https://issues.apache.org/jira/browse/SPARK-20688) | correctly check analysis for scalar sub-queries |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-20685](https://issues.apache.org/jira/browse/SPARK-20685) | BatchPythonEvaluation UDF evaluator fails for case of single UDF with repeated argument |  Major | PySpark | Josh Rosen | Josh Rosen |
| [SPARK-20665](https://issues.apache.org/jira/browse/SPARK-20665) | Spark-sql, "Bround" and "Round" function return NULL |  Major | SQL | liuxian | liuxian |
| [SPARK-17424](https://issues.apache.org/jira/browse/SPARK-17424) | Dataset job fails from unsound substitution in ScalaReflect |  Major | Spark Core | Ryan Blue | Ryan Blue |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20603](https://issues.apache.org/jira/browse/SPARK-20603) | Flaky test: o.a.s.sql.kafka010.KafkaSourceSuite deserialization of initial offset with Spark 2.1.0 |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20296](https://issues.apache.org/jira/browse/SPARK-20296) | UnsupportedOperationChecker text on distinct aggregations differs from docs |  Trivial | Structured Streaming | Jason Tokayer | Jason Tokayer |
| [SPARK-20455](https://issues.apache.org/jira/browse/SPARK-20455) | Missing Test Target in Documentation for "Running Docker-based Integration Test Suites" |  Trivial | Documentation | Armin Braun | Armin Braun |


