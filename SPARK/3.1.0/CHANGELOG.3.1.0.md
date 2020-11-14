
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

## Release 3.1.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-27142](https://issues.apache.org/jira/browse/SPARK-27142) | Provide REST API for SQL level information |  Minor | SQL | Ajith S | Ajith S |
| [SPARK-30613](https://issues.apache.org/jira/browse/SPARK-30613) | support hive style REPLACE COLUMN syntax |  Major | SQL | Wenchen Fan | Terry Kim |
| [SPARK-31020](https://issues.apache.org/jira/browse/SPARK-31020) | Support foldable schemas by \`from\_csv\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31023](https://issues.apache.org/jira/browse/SPARK-31023) | Support foldable schemas by \`from\_json\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31025](https://issues.apache.org/jira/browse/SPARK-31025) | Support foldable input by \`schema\_of\_csv\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31044](https://issues.apache.org/jira/browse/SPARK-31044) | Support foldable input by \`schema\_of\_json\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30335](https://issues.apache.org/jira/browse/SPARK-30335) | Clarify behavior of FIRST and LAST without OVER caluse. |  Major | Documentation, SQL | xqods9o5ekm3 | Hyukjin Kwon |
| [SPARK-31185](https://issues.apache.org/jira/browse/SPARK-31185) | implement VarianceThresholdSelector |  Major | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-31008](https://issues.apache.org/jira/browse/SPARK-31008) | Support json\_array\_length function |  Major | SQL | Rakesh Raushan | Rakesh Raushan |
| [SPARK-31009](https://issues.apache.org/jira/browse/SPARK-31009) | Support json\_object\_keys function |  Major | SQL | Rakesh Raushan | Rakesh Raushan |
| [SPARK-30724](https://issues.apache.org/jira/browse/SPARK-30724) | Support 'like any' and 'like all' operators |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-31609](https://issues.apache.org/jira/browse/SPARK-31609) | Add VarianceThresholdSelector to PySpark |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-31659](https://issues.apache.org/jira/browse/SPARK-31659) | Add VarianceThresholdSelector examples and doc |  Minor | Documentation, ML | Huaxin Gao | Huaxin Gao |
| [SPARK-31667](https://issues.apache.org/jira/browse/SPARK-31667) | Python side flatten the result dataframe of ANOVATest/ChisqTest/FValueTest |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-8981](https://issues.apache.org/jira/browse/SPARK-8981) | Add MDC support in Executor |  Minor | Spark Core | Paweł Kopiczko | Izek Greenfield |
| [SPARK-31797](https://issues.apache.org/jira/browse/SPARK-31797) | Adds TIMESTAMP\_SECONDS, TIMESTAMP\_MILLIS and TIMESTAMP\_MICROS functions |  Major | SQL | JinxinTang | JinxinTang |
| [SPARK-31777](https://issues.apache.org/jira/browse/SPARK-31777) | CrossValidator supports user-supplied folds |  Major | ML | Xiangrui Meng | L. C. Hsieh |
| [SPARK-31350](https://issues.apache.org/jira/browse/SPARK-31350) | Coalesce bucketed tables for join if applicable |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-32338](https://issues.apache.org/jira/browse/SPARK-32338) | Add overload for slice that accepts Columns or Int |  Trivial | SQL | Nikolas Vanderhoof | Nikolas Vanderhoof |
| [SPARK-32885](https://issues.apache.org/jira/browse/SPARK-32885) | Add DataStreamReader.table API |  Major | Structured Streaming | Yuanjian Li | Yuanjian Li |
| [SPARK-32793](https://issues.apache.org/jira/browse/SPARK-32793) | Expose assert\_true in Python/Scala APIs and add error message parameter |  Minor | SQL | Karen Feng | Karen Feng |
| [SPARK-32896](https://issues.apache.org/jira/browse/SPARK-32896) | Add DataStreamWriter.table API |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-33088](https://issues.apache.org/jira/browse/SPARK-33088) | Enhance ExecutorPlugin API to include methods for task start and end events |  Major | Spark Core | Samuel Souza | Samuel Souza |
| [SPARK-33160](https://issues.apache.org/jira/browse/SPARK-33160) | Allow saving/loading INT96 in parquet w/o rebasing |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33299](https://issues.apache.org/jira/browse/SPARK-33299) | Unify schema parsing in from\_json/from\_csv across all APIs |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33369](https://issues.apache.org/jira/browse/SPARK-33369) | Skip schema inference in DataframeWriter.save() if table provider supports external metadata |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-33166](https://issues.apache.org/jira/browse/SPARK-33166) | Provide Search Function in Spark docs site |  Major | Documentation | Xiao Li | jiaan.geng |
| [SPARK-33288](https://issues.apache.org/jira/browse/SPARK-33288) | Support k8s cluster manager with stage level scheduling |  Major | Kubernetes, Spark Core | Thomas Graves | Thomas Graves |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-29959](https://issues.apache.org/jira/browse/SPARK-29959) | Summarizer support more metrics |  Major | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-29914](https://issues.apache.org/jira/browse/SPARK-29914) | ML models append metadata in \`transform\`/\`transformSchema\` |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30525](https://issues.apache.org/jira/browse/SPARK-30525) | HiveTableScanExec do not need to prune partitions again after pushing down to hive metastore |  Major | SQL | Hu Fuwang | Hu Fuwang |
| [SPARK-30744](https://issues.apache.org/jira/browse/SPARK-30744) | Optimize AnalyzePartitionCommand by calculating location sizes in parallel |  Major | SQL | wuyi | wuyi |
| [SPARK-30754](https://issues.apache.org/jira/browse/SPARK-30754) | Reuse results of floorDiv in calculations of floorMod in DateTimeUtils |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29231](https://issues.apache.org/jira/browse/SPARK-29231) | Constraints should be inferred from cast equality constraint |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-30346](https://issues.apache.org/jira/browse/SPARK-30346) | Improve logging when events dropped |  Major | Spark Core | liupengcheng | liupengcheng |
| [SPARK-29089](https://issues.apache.org/jira/browse/SPARK-29089) | DataFrameReader bottleneck in DataSource#checkAndGlobPathIfNecessary when reading large amount of S3 files |  Minor | SQL | Arwin S Tio | Arwin S Tio |
| [SPARK-30736](https://issues.apache.org/jira/browse/SPARK-30736) | One-Pass ChiSquareTest |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-29174](https://issues.apache.org/jira/browse/SPARK-29174) | LOCAL is not supported in INSERT OVERWRITE DIRECTORY to data source |  Major | SQL | ABHISHEK KUMAR GUPTA | Ajith S |
| [SPARK-30802](https://issues.apache.org/jira/browse/SPARK-30802) | Use Summarizer instead of MultivariateOnlineSummarizer in Aggregator test suite |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-30880](https://issues.apache.org/jira/browse/SPARK-30880) | Delete Sphinx Makefile cruft |  Minor | Documentation | Nicholas Chammas |  |
| [SPARK-30869](https://issues.apache.org/jira/browse/SPARK-30869) | Convert dates to/from timestamps in microseconds precision |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30950](https://issues.apache.org/jira/browse/SPARK-30950) | Setting version to 3.1.0-SNAPSHOT |  Major | Build | Xiao Li | Xiao Li |
| [SPARK-30765](https://issues.apache.org/jira/browse/SPARK-30765) | Refine baes class abstraction code style |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-30682](https://issues.apache.org/jira/browse/SPARK-30682) | Add higher order functions API to SparkR |  Major | SparkR, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-30681](https://issues.apache.org/jira/browse/SPARK-30681) | Add higher order functions API to PySpark |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-30938](https://issues.apache.org/jira/browse/SPARK-30938) | BinaryClassificationMetrics optimization |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30842](https://issues.apache.org/jira/browse/SPARK-30842) | Adjust abstraction structure for join operators |  Major | SQL | Xin Wu | Xin Wu |
| [SPARK-30947](https://issues.apache.org/jira/browse/SPARK-30947) | Log better message when accelerate resource is empty |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31013](https://issues.apache.org/jira/browse/SPARK-31013) | InMemoryStore: improve removeAllByIndexValues over natural key index |  Minor | Spark Core, Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-30770](https://issues.apache.org/jira/browse/SPARK-30770) | avoid vector conversion in GMM.transform |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-31073](https://issues.apache.org/jira/browse/SPARK-31073) | Add "shuffle write time" to task metrics summary in StagePage. |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31078](https://issues.apache.org/jira/browse/SPARK-31078) | outputOrdering should handle aliases correctly |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-31071](https://issues.apache.org/jira/browse/SPARK-31071) | Spark Encoders.bean() should allow marking non-null fields in its Spark schema |  Major | SQL | Kyrill Alyoshin | L. C. Hsieh |
| [SPARK-31041](https://issues.apache.org/jira/browse/SPARK-31041) | Show Maven errors from within make-distribution.sh |  Trivial | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-31032](https://issues.apache.org/jira/browse/SPARK-31032) | GMM compute summary and update distributions in one pass |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-30654](https://issues.apache.org/jira/browse/SPARK-30654) | Update Docs Bootstrap to 4.4.1 |  Major | Documentation | Dale Clarke | Dale Clarke |
| [SPARK-31120](https://issues.apache.org/jira/browse/SPARK-31120) | Support enabling maven profiles for importing via sbt on Intellij IDEA. |  Minor | Build | Prashant Sharma | Prashant Sharma |
| [SPARK-30569](https://issues.apache.org/jira/browse/SPARK-30569) | Add DSL functions invoking percentile\_approx |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-31047](https://issues.apache.org/jira/browse/SPARK-31047) | Improve file listing for ViewFileSystem |  Minor | SQL | Manu Zhang | Manu Zhang |
| [SPARK-31175](https://issues.apache.org/jira/browse/SPARK-31175) | Avoid creating reverse comparator for each compare in InterpretedOrdering |  Major | SQL | wuyi | wuyi |
| [SPARK-31161](https://issues.apache.org/jira/browse/SPARK-31161) | Refactor the on-click timeline action in streagming-page.js |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-29721](https://issues.apache.org/jira/browse/SPARK-29721) | Spark SQL reads unnecessary nested fields after using explode |  Major | SQL | Kai Kang | L. C. Hsieh |
| [SPARK-31283](https://issues.apache.org/jira/browse/SPARK-31283) | Simplify ChiSq by adding a common method |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-30775](https://issues.apache.org/jira/browse/SPARK-30775) | Improve DOC for executor metrics |  Minor | Documentation | Luca Canali | Luca Canali |
| [SPARK-31222](https://issues.apache.org/jira/browse/SPARK-31222) | Make ANOVATest Sparsity-Aware |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-31230](https://issues.apache.org/jira/browse/SPARK-31230) | use statement plans in DataFrameWriter(V2) |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31308](https://issues.apache.org/jira/browse/SPARK-31308) | Make Python dependencies available for Non-PySpark applications |  Major | PySpark, Spark Submit | L. C. Hsieh | L. C. Hsieh |
| [SPARK-31285](https://issues.apache.org/jira/browse/SPARK-31285) | Do not upper case schedule mode |  Minor | Spark Core | ulysses you | ulysses you |
| [SPARK-31179](https://issues.apache.org/jira/browse/SPARK-31179) | Fast fail the connection while last shuffle connection failed in the last retry IO wait |  Major | Shuffle, Spark Core | feiwang | feiwang |
| [SPARK-25154](https://issues.apache.org/jira/browse/SPARK-25154) | Support NOT IN sub-queries inside nested OR conditions. |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-31330](https://issues.apache.org/jira/browse/SPARK-31330) | Automatically label PRs based on the paths they touch |  Minor | Project Infra | Nicholas Chammas | Nicholas Chammas |
| [SPARK-31411](https://issues.apache.org/jira/browse/SPARK-31411) | Show submitted time and duration in job details page |  Major | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-31301](https://issues.apache.org/jira/browse/SPARK-31301) | flatten the result dataframe of tests in stat |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-31436](https://issues.apache.org/jira/browse/SPARK-31436) | MinHash keyDistance optimization |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-31477](https://issues.apache.org/jira/browse/SPARK-31477) | Dump codegen and compile time in BenchmarkQueryTest |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-31484](https://issues.apache.org/jira/browse/SPARK-31484) | Avoid file already existing exception when checkpointing |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-31464](https://issues.apache.org/jira/browse/SPARK-31464) | Upgrade Kafka to 2.5.0 |  Major | Build, Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31452](https://issues.apache.org/jira/browse/SPARK-31452) | Do not create partition spec for 0-size partitions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31389](https://issues.apache.org/jira/browse/SPARK-31389) | Add codegen-on test coverage for some tests in SQLMetricsSuite |  Minor | SQL, Tests | Srinivas Rishindra Pothireddi | Srinivas Rishindra Pothireddi |
| [SPARK-31492](https://issues.apache.org/jira/browse/SPARK-31492) | flatten the result dataframe of FValueTest |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-31494](https://issues.apache.org/jira/browse/SPARK-31494) | flatten the result dataframe of ANOVATest |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-31233](https://issues.apache.org/jira/browse/SPARK-31233) | Enhance RpcTimeoutException Log Message |  Minor | Spark Core | Yi Huang | Yi Huang |
| [SPARK-31518](https://issues.apache.org/jira/browse/SPARK-31518) | Expose filterByRange in JavaPairRDD |  Major | Spark Core | Antonin Delpeuch | Antonin Delpeuch |
| [SPARK-31007](https://issues.apache.org/jira/browse/SPARK-31007) | KMeans optimization based on triangle-inequality |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-31400](https://issues.apache.org/jira/browse/SPARK-31400) | The catalogString doesn't distinguish Vectors in ml and mllib |  Minor | ML, MLlib | Junpei Zhou | Junpei Zhou |
| [SPARK-31524](https://issues.apache.org/jira/browse/SPARK-31524) | Add metric to the split  number for skew partition when enable AQE |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-31586](https://issues.apache.org/jira/browse/SPARK-31586) | Replace expression TimeSub(l, r) with TimeAdd(l -r) |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-31567](https://issues.apache.org/jira/browse/SPARK-31567) | Update AppVeyor Rtools to 4.0.0 |  Major | SparkR, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31594](https://issues.apache.org/jira/browse/SPARK-31594) | Do not display rand/randn seed numbers in schema |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31607](https://issues.apache.org/jira/browse/SPARK-31607) | Improve the perf of CTESubstitution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31603](https://issues.apache.org/jira/browse/SPARK-31603) | AFT uses common functions in RDDLossFunction |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-31235](https://issues.apache.org/jira/browse/SPARK-31235) | Separates different categories of applications |  Minor | Spark Core, YARN | wangzhun | wangzhun |
| [SPARK-31615](https://issues.apache.org/jira/browse/SPARK-31615) | Pretty string output for sql method of RuntimeReplaceable expressions |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-31611](https://issues.apache.org/jira/browse/SPARK-31611) | Register NettyMemoryMetrics into Node Manager's metrics system |  Minor | Shuffle, Spark Core, YARN | Manu Zhang | Manu Zhang |
| [SPARK-31440](https://issues.apache.org/jira/browse/SPARK-31440) | Improve SQL Rest API |  Major | SQL | Eren Avsarogullari | Eren Avsarogullari |
| [SPARK-31750](https://issues.apache.org/jira/browse/SPARK-31750) | Eliminate UpCast if child's dataType is DecimalType |  Major | SQL | wuyi | wuyi |
| [SPARK-31688](https://issues.apache.org/jira/browse/SPARK-31688) | Refactor pagination framework for spark web UI pages |  Minor | Web UI | Rakesh Raushan | Rakesh Raushan |
| [SPARK-31756](https://issues.apache.org/jira/browse/SPARK-31756) | Add real headless browser support for UI test |  Minor | Tests, Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-30915](https://issues.apache.org/jira/browse/SPARK-30915) | FileStreamSinkLog: Avoid reading the metadata log file when finding the latest batch ID |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31791](https://issues.apache.org/jira/browse/SPARK-31791) | Improve cache block migration test reliability |  Major | Tests | Holden Karau | Holden Karau |
| [SPARK-31642](https://issues.apache.org/jira/browse/SPARK-31642) | Support pagination for  spark structured streaming tab |  Minor | Web UI | jobit mathew | Rakesh Raushan |
| [SPARK-31793](https://issues.apache.org/jira/browse/SPARK-31793) | Reduce the memory usage in file scan location metadata |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-31768](https://issues.apache.org/jira/browse/SPARK-31768) | add getMetrics in Evaluators |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-31377](https://issues.apache.org/jira/browse/SPARK-31377) | Add unit tests for "number of output rows" metric for joins in SQLMetricsSuite |  Minor | SQL, Tests | Srinivas Rishindra Pothireddi | Srinivas Rishindra Pothireddi |
| [SPARK-31734](https://issues.apache.org/jira/browse/SPARK-31734) | add weight support in ClusteringEvaluator |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-31673](https://issues.apache.org/jira/browse/SPARK-31673) | Enhance QueryExecution.debugFile to take an additional explain mode parameter. |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-31638](https://issues.apache.org/jira/browse/SPARK-31638) | Clean code for pagination for all pages |  Minor | Web UI | Rakesh Raushan | Rakesh Raushan |
| [SPARK-31803](https://issues.apache.org/jira/browse/SPARK-31803) | Make sure instance weight is not negative |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-31719](https://issues.apache.org/jira/browse/SPARK-31719) | Refactor JoinSelection |  Major | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-28481](https://issues.apache.org/jira/browse/SPARK-28481) | More expressions should extend NullIntolerant |  Major | SQL | Josh Rosen | Yuming Wang |
| [SPARK-31858](https://issues.apache.org/jira/browse/SPARK-31858) | Upgrade commons-io to 2.5 in Hadoop 3.2 profile |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31840](https://issues.apache.org/jira/browse/SPARK-31840) | Add instance weight support in LogisticRegressionSummary |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-31837](https://issues.apache.org/jira/browse/SPARK-31837) | Shift to the new highest locality level if there is when recomputeLocality |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31804](https://issues.apache.org/jira/browse/SPARK-31804) | Add real headless browser support for HistoryServer tests |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31889](https://issues.apache.org/jira/browse/SPARK-31889) | Docker release script does not allocate enough memory to reliably publish |  Critical | Build | Holden Karau | Holden Karau |
| [SPARK-31778](https://issues.apache.org/jira/browse/SPARK-31778) | Support cross-building docker images |  Major | Build | Holden Karau | Holden Karau |
| [SPARK-31876](https://issues.apache.org/jira/browse/SPARK-31876) | Upgrade to Zstd 1.4.5 |  Major | Build | William Hyun | William Hyun |
| [SPARK-31910](https://issues.apache.org/jira/browse/SPARK-31910) | Enable Java 8 time API in Thrift server |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31934](https://issues.apache.org/jira/browse/SPARK-31934) | Don't print out extra info from the docker image tool if passed --help |  Trivial | Build | Holden Karau | Holden Karau |
| [SPARK-31906](https://issues.apache.org/jira/browse/SPARK-31906) | Enhance comments in NamedExpression.qualifier |  Major | SQL | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-31486](https://issues.apache.org/jira/browse/SPARK-31486) | spark.submit.waitForCompletion flag to control spark-submit exit in Standalone Cluster Mode |  Minor | Spark Core | Akshat Bordia | Akshat Bordia |
| [SPARK-31945](https://issues.apache.org/jira/browse/SPARK-31945) | Make more cache enable for Python UDFs. |  Major | PySpark | Takuya Ueshin | Takuya Ueshin |
| [SPARK-31890](https://issues.apache.org/jira/browse/SPARK-31890) | Decommissioning Test Does not wait long enough for executors to launch |  Major | Tests | Holden Karau | Holden Karau |
| [SPARK-31964](https://issues.apache.org/jira/browse/SPARK-31964) | Avoid Pandas import for CategoricalDtype with Arrow conversion |  Minor | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-31942](https://issues.apache.org/jira/browse/SPARK-31942) | Revert SPARK-31864 Adjust AQE skew join trigger condition |  Minor | SQL | Manu Zhang | Manu Zhang |
| [SPARK-31705](https://issues.apache.org/jira/browse/SPARK-31705) | Push more possible predicates through Join via CNF |  Major | SQL | Yuming Wang | Gengliang Wang |
| [SPARK-31765](https://issues.apache.org/jira/browse/SPARK-31765) | Upgrade HtmlUnit \>= 2.37.0 |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31912](https://issues.apache.org/jira/browse/SPARK-31912) | Normalize all binary comparison expressions |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-30119](https://issues.apache.org/jira/browse/SPARK-30119) | Support pagination for  spark streaming tab |  Minor | Web UI | jobit mathew | Rakesh Raushan |
| [SPARK-31979](https://issues.apache.org/jira/browse/SPARK-31979) | release script should not fail when remove non-existing files |  Major | Project Infra | Wenchen Fan | Wenchen Fan |
| [SPARK-31977](https://issues.apache.org/jira/browse/SPARK-31977) | Returns the projected plan directly from NestedColumnAliasing |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31944](https://issues.apache.org/jira/browse/SPARK-31944) | Add instance weight support in LinearRegressionSummary |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-24634](https://issues.apache.org/jira/browse/SPARK-24634) | Add a new metric regarding number of rows later than watermark |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31970](https://issues.apache.org/jira/browse/SPARK-31970) | Make MDC configuration step be consistent between setLocalProperty and log4j.properties |  Major | Spark Core | wuyi | wuyi |
| [SPARK-27633](https://issues.apache.org/jira/browse/SPARK-27633) | Remove redundant aliases in NestedColumnAliasing |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-31989](https://issues.apache.org/jira/browse/SPARK-31989) | Generate JSON files with rebasing switch points using smaller steps |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32011](https://issues.apache.org/jira/browse/SPARK-32011) | Remove warnings about pin-thread modes and guide collectWithJobGroups for now |  Major | PySpark, Spark Core | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30865](https://issues.apache.org/jira/browse/SPARK-30865) | Refactor DateTimeUtils |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31826](https://issues.apache.org/jira/browse/SPARK-31826) | Support composed type of case class for typed Scala UDF |  Major | SQL | wuyi | wuyi |
| [SPARK-31957](https://issues.apache.org/jira/browse/SPARK-31957) | cleanup hive scratch dir should work for the developer api startWithContext |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32019](https://issues.apache.org/jira/browse/SPARK-32019) | Add spark.sql.files.minPartitionNum config |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-32031](https://issues.apache.org/jira/browse/SPARK-32031) | Fix the wrong references of PartialMerge/Final AggregateExpression |  Major | SQL | wuyi | wuyi |
| [SPARK-32052](https://issues.apache.org/jira/browse/SPARK-32052) | Extract common code from date-time field expressions |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32045](https://issues.apache.org/jira/browse/SPARK-32045) | Upgrade to Apache Commons Lang 3.10. |  Major | Build | William Hyun | William Hyun |
| [SPARK-32043](https://issues.apache.org/jira/browse/SPARK-32043) | Replace decimal by int op in \`make\_interval\` and \`make\_timestamp\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32073](https://issues.apache.org/jira/browse/SPARK-32073) | Drop R \< 3.5 support |  Major | R | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32075](https://issues.apache.org/jira/browse/SPARK-32075) | Fix a few issues in parameters table |  Trivial | Documentation | Zuo Dao | Zuo Dao |
| [SPARK-32074](https://issues.apache.org/jira/browse/SPARK-32074) | Update AppVeyor R to 4.0.2 |  Major | R | Hyukjin Kwon |  |
| [SPARK-32080](https://issues.apache.org/jira/browse/SPARK-32080) | Simplify ArrowColumnVector ListArray accessor |  Trivial | SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-31998](https://issues.apache.org/jira/browse/SPARK-31998) | Change package references for ArrowBuf |  Major | SQL | Liya Fan | Bryan Cutler |
| [SPARK-32087](https://issues.apache.org/jira/browse/SPARK-32087) | Allow UserDefinedType to use encoder to deserialize rows in ScalaUDF as well |  Major | SQL | wuyi | wuyi |
| [SPARK-32089](https://issues.apache.org/jira/browse/SPARK-32089) | Upgrade R version to 4.0.2 in the release DockerFile |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32100](https://issues.apache.org/jira/browse/SPARK-32100) | Add WorkerDecommissionExtendedSuite |  Major | Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-19939](https://issues.apache.org/jira/browse/SPARK-19939) | Add support for association rules in ML |  Minor | ML | yuhao yang | Huaxin Gao |
| [SPARK-32058](https://issues.apache.org/jira/browse/SPARK-32058) | Use Apache Hadoop 3.2.0 dependency by default |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32090](https://issues.apache.org/jira/browse/SPARK-32090) | UserDefinedType.equal() does not have symmetry |  Major | SQL | wuyi | wuyi |
| [SPARK-32055](https://issues.apache.org/jira/browse/SPARK-32055) | Unify getReader and getReaderForRange in ShuffleManager |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32030](https://issues.apache.org/jira/browse/SPARK-32030) | Support unlimited MATCHED and NOT MATCHED clauses in MERGE INTO |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-32127](https://issues.apache.org/jira/browse/SPARK-32127) | Check rules for MERGE INTO should use MergeAction.condition other than MergeAction.children |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-28169](https://issues.apache.org/jira/browse/SPARK-28169) | Spark can’t push down partition predicate for OR expression |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32026](https://issues.apache.org/jira/browse/SPARK-32026) | Add PrometheusServletSuite |  Minor | Spark Core, Tests | Eren Avsarogullari | Eren Avsarogullari |
| [SPARK-29465](https://issues.apache.org/jira/browse/SPARK-29465) | Unable to configure SPARK UI (spark.ui.port) in spark yarn cluster mode. |  Major | Spark Core, Spark Submit, YARN | Vishwas Nalka |  |
| [SPARK-31100](https://issues.apache.org/jira/browse/SPARK-31100) | Detect namespace existence when setting namespace |  Major | SQL | Jackey Lee | Jackey Lee |
| [SPARK-32177](https://issues.apache.org/jira/browse/SPARK-32177) | Remove the weird line from near the Spark logo on mouseover in the WebUI |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32145](https://issues.apache.org/jira/browse/SPARK-32145) | ThriftCLIService.GetOperationStatus should include exception's stack trace to the error message |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32162](https://issues.apache.org/jira/browse/SPARK-32162) | Improve Pandas Grouped Map with Window test output |  Minor | PySpark, Tests | Bryan Cutler | Bryan Cutler |
| [SPARK-32172](https://issues.apache.org/jira/browse/SPARK-32172) | Use createDirectory instead of mkdir |  Minor | Spark Core | Zuo Dao | Zuo Dao |
| [SPARK-31975](https://issues.apache.org/jira/browse/SPARK-31975) | Throw user facing error when use WindowFunction directly |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-32209](https://issues.apache.org/jira/browse/SPARK-32209) | Re-use GetTimestamp in ParseToDate |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32164](https://issues.apache.org/jira/browse/SPARK-32164) | GeneralizedLinearRegressionSummary optimization |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-32193](https://issues.apache.org/jira/browse/SPARK-32193) | update  docs on regexp function |  Minor | SQL | philipse | philipse |
| [SPARK-32192](https://issues.apache.org/jira/browse/SPARK-32192) | Print column name when throws ClassCastException |  Minor | SQL | xiepengjie | xiepengjie |
| [SPARK-31875](https://issues.apache.org/jira/browse/SPARK-31875) | Provide a option to disable user supplied Hints. |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-32207](https://issues.apache.org/jira/browse/SPARK-32207) | Support 'F'-suffixed Float Literals |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32091](https://issues.apache.org/jira/browse/SPARK-32091) | Ignore timeout error when remove blocks on the lost executor |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32133](https://issues.apache.org/jira/browse/SPARK-32133) | Forbid time field steps for date start/end in Sequence |  Major | SQL | JinxinTang | JinxinTang |
| [SPARK-32149](https://issues.apache.org/jira/browse/SPARK-32149) | Improve file path name normalisation at block resolution within the external shuffle service |  Major | Shuffle | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-32173](https://issues.apache.org/jira/browse/SPARK-32173) | Deduplicate code in FromUTCTimestamp and ToUTCTimestamp |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32150](https://issues.apache.org/jira/browse/SPARK-32150) | Upgrade to Zstd 1.4.5-4 |  Major | Build | William Hyun | William Hyun |
| [SPARK-32200](https://issues.apache.org/jira/browse/SPARK-32200) | Redirect to the history page when accessed to /history without appliation id |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-29358](https://issues.apache.org/jira/browse/SPARK-29358) | Make unionByName optionally fill missing columns with nulls |  Major | SQL | Mukul Murthy | L. C. Hsieh |
| [SPARK-32154](https://issues.apache.org/jira/browse/SPARK-32154) | Use ExpressionEncoder for the return type of ScalaUDF to convert to catalyst type |  Major | SQL | wuyi | wuyi |
| [SPARK-32270](https://issues.apache.org/jira/browse/SPARK-32270) | Use text file sources in CSV's schema inference even in different encoding |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32258](https://issues.apache.org/jira/browse/SPARK-32258) | NormalizeFloatingNumbers directly normalizes IF/CaseWhen/Coalesce child expressions |  Minor | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-32004](https://issues.apache.org/jira/browse/SPARK-32004) | Drop references to slave |  Major | Mesos, Spark Core, SQL, Structured Streaming | Holden Karau | Holden Karau |
| [SPARK-32241](https://issues.apache.org/jira/browse/SPARK-32241) | Remove empty children of union |  Minor | SQL | Peter Toth | Peter Toth |
| [SPARK-32309](https://issues.apache.org/jira/browse/SPARK-32309) | Fix missing import |  Major | PySpark | Fokko Driesprong | Fokko Driesprong |
| [SPARK-32305](https://issues.apache.org/jira/browse/SPARK-32305) | Make \`mvn clean\` remove \`metastore\_db\` and \`spark-warehouse\` |  Minor | Build, Tests | Yang Jie | Yang Jie |
| [SPARK-32311](https://issues.apache.org/jira/browse/SPARK-32311) | Remove duplicate import |  Major | PySpark | Fokko Driesprong | Fokko Driesprong |
| [SPARK-32036](https://issues.apache.org/jira/browse/SPARK-32036) | Remove references to "blacklist"/"whitelist" language (outside of blacklisting feature) |  Minor | Spark Core | Erik Krogen | Erik Krogen |
| [SPARK-32125](https://issues.apache.org/jira/browse/SPARK-32125) | [UI] Support get taskList by status in Web UI and SHS Rest API |  Minor | Web UI | Zhongwei Zhu | Zhongwei Zhu |
| [SPARK-32272](https://issues.apache.org/jira/browse/SPARK-32272) | SET TIME ZONE standard sql command support |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-30648](https://issues.apache.org/jira/browse/SPARK-30648) | Support filters pushdown in JSON datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32315](https://issues.apache.org/jira/browse/SPARK-32315) | Provide an explanation error message when calling require |  Trivial | MLlib | dzlabs | dzlabs |
| [SPARK-32310](https://issues.apache.org/jira/browse/SPARK-32310) | ML params default value parity |  Major | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-30616](https://issues.apache.org/jira/browse/SPARK-30616) | Introduce TTL config option for SQL Metadata Cache |  Major | SQL | Yaroslav Tkachenko | Yaroslav Tkachenko |
| [SPARK-32329](https://issues.apache.org/jira/browse/SPARK-32329) | Rename HADOOP2\_MODULE\_PROFILES to HADOOP\_MODULE\_PROFILES |  Trivial | Tests | William Hyun | William Hyun |
| [SPARK-32298](https://issues.apache.org/jira/browse/SPARK-32298) | tree models prediction optimization |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-32353](https://issues.apache.org/jira/browse/SPARK-32353) | Update docker/spark-test and clean up unused stuff |  Minor | Tests | William Hyun | William Hyun |
| [SPARK-31579](https://issues.apache.org/jira/browse/SPARK-31579) | Replace floorDiv by / in localRebaseGregorianToJulianDays() |  Minor | SQL | Maxim Gekk | Sudharshann D. |
| [SPARK-32276](https://issues.apache.org/jira/browse/SPARK-32276) | Remove redundant sorts before repartition nodes |  Major | SQL | Anton Okolnychyi | Anton Okolnychyi |
| [SPARK-32366](https://issues.apache.org/jira/browse/SPARK-32366) | Fix doc link of datetime pattern in 3.0 migration guide |  Major | Documentation | Gengliang Wang | Gengliang Wang |
| [SPARK-32302](https://issues.apache.org/jira/browse/SPARK-32302) | Partially push down disjunctive predicates through Join/Partitions |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-31869](https://issues.apache.org/jira/browse/SPARK-31869) | BroadcastHashJoinExe's outputPartitioning can utilize the build side |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-32350](https://issues.apache.org/jira/browse/SPARK-32350) | Add batch write support on LevelDB to improve performance of HybridStore |  Major | Web UI | Baohe Zhang | Baohe Zhang |
| [SPARK-31999](https://issues.apache.org/jira/browse/SPARK-31999) | Add refresh function command |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-32392](https://issues.apache.org/jira/browse/SPARK-32392) | Reduce duplicate error log for executing sql statement operation in thrift server |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-32389](https://issues.apache.org/jira/browse/SPARK-32389) | Add all hive.execution suites in the parallel test group |  Major | Tests | Yuanjian Li | Yuanjian Li |
| [SPARK-32374](https://issues.apache.org/jira/browse/SPARK-32374) | Disallow setting properties when creating temporary views |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-31418](https://issues.apache.org/jira/browse/SPARK-31418) | Blacklisting feature aborts Spark job without retrying for max num retries in case of Dynamic allocation |  Major | Spark Core | Venkata krishnan Sowrirajan | Venkata krishnan Sowrirajan |
| [SPARK-32308](https://issues.apache.org/jira/browse/SPARK-32308) | Move by-name resolution logic of unionByName from API code to analysis phase |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-32406](https://issues.apache.org/jira/browse/SPARK-32406) | Support reset one particular configuration |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32426](https://issues.apache.org/jira/browse/SPARK-32426) | ui shows sql after variable substitution |  Trivial | SQL | dzcxzl | dzcxzl |
| [SPARK-32437](https://issues.apache.org/jira/browse/SPARK-32437) | Improve MapStatus deserialization speed with RoaringBitmap 0.9.0 |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32428](https://issues.apache.org/jira/browse/SPARK-32428) | [EXAMPLES] Make BinaryClassificationMetricsExample consistently print the metrics on driver's stdout |  Trivial | Examples | Itsuki Toyota | Itsuki Toyota |
| [SPARK-32447](https://issues.apache.org/jira/browse/SPARK-32447) | Use python3 by default in pyspark and find-spark-home scripts |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32450](https://issues.apache.org/jira/browse/SPARK-32450) | Upgrade pycodestyle to 2.6.0 |  Trivial | PySpark | L. C. Hsieh | Apache Spark |
| [SPARK-32452](https://issues.apache.org/jira/browse/SPARK-32452) | Bump up the minimum Arrow version as 1.0.0 in SparkR |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30794](https://issues.apache.org/jira/browse/SPARK-30794) | Stage Level scheduling: Add ability to set off heap memory |  Major | Spark Core | Thomas Graves | Zhongwei Zhu |
| [SPARK-32457](https://issues.apache.org/jira/browse/SPARK-32457) | logParam thresholds in  DT/GBT/FM/LR/MLP |  Trivial | ML | zhengruifeng | zhengruifeng |
| [SPARK-32290](https://issues.apache.org/jira/browse/SPARK-32290) | NotInSubquery SingleColumn Optimize |  Major | SQL | Leanken.Lin | Leanken.Lin |
| [SPARK-32459](https://issues.apache.org/jira/browse/SPARK-32459) | UDF regression of WrappedArray supporting caused by SPARK-31826 |  Major | SQL | wuyi | wuyi |
| [SPARK-32346](https://issues.apache.org/jira/browse/SPARK-32346) | Support filters pushdown in Avro datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30322](https://issues.apache.org/jira/browse/SPARK-30322) | Add stage level scheduling docs |  Major | Documentation | Thomas Graves | Thomas Graves |
| [SPARK-32397](https://issues.apache.org/jira/browse/SPARK-32397) | Snapshot artifacts can have differing timestamps, making it hard to consume |  Minor | Build | Holden Karau | Holden Karau |
| [SPARK-32455](https://issues.apache.org/jira/browse/SPARK-32455) | LogisticRegressionModel prediction optimization |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-32478](https://issues.apache.org/jira/browse/SPARK-32478) | Error message to show the schema mismatch in gapply with Arrow vectorization |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32488](https://issues.apache.org/jira/browse/SPARK-32488) | Use @parser::members and @lexer::members to avoid generating unused code |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32490](https://issues.apache.org/jira/browse/SPARK-32490) | Upgrade netty-all to 4.1.51.Final |  Minor | Build | Yang Jie | Yang Jie |
| [SPARK-32274](https://issues.apache.org/jira/browse/SPARK-32274) | Add in the ability for a user to replace the serialization format of the cache |  Major | SQL | Robert Joseph Evans | Robert Joseph Evans |
| [SPARK-24884](https://issues.apache.org/jira/browse/SPARK-24884) | Implement regexp\_extract\_all |  Major | SQL | Nick Nicolini | jiaan.geng |
| [SPARK-31709](https://issues.apache.org/jira/browse/SPARK-31709) | Proper base path for location when it is a relative path |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32492](https://issues.apache.org/jira/browse/SPARK-32492) | Fulfill missing column meta information for thrift server client tools |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32083](https://issues.apache.org/jira/browse/SPARK-32083) | Unnecessary tasks are launched when input is empty with AQE |  Minor | SQL | Manu Zhang | Wenchen Fan |
| [SPARK-32257](https://issues.apache.org/jira/browse/SPARK-32257) | [SQL Parser] Report Error for invalid usage of SET command |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-32499](https://issues.apache.org/jira/browse/SPARK-32499) | Use {} for structs and maps in show() |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32501](https://issues.apache.org/jira/browse/SPARK-32501) | Inconsistent NULL conversions to strings |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32543](https://issues.apache.org/jira/browse/SPARK-32543) | Remove arrow::as\_tibble usage in SparkR |  Trivial | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32539](https://issues.apache.org/jira/browse/SPARK-32539) | Disallow FileSystem.get(Configuration conf) by default |  Major | Project Infra | Gengliang Wang | Gengliang Wang |
| [SPARK-32560](https://issues.apache.org/jira/browse/SPARK-32560) | improve exception message |  Minor | SQL | philipse | philipse |
| [SPARK-32564](https://issues.apache.org/jira/browse/SPARK-32564) |  Inject data statistics to simulate plan generation on actual TPCDS data |  Major | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32568](https://issues.apache.org/jira/browse/SPARK-32568) | Upgrade Kafka to 2.6.0 |  Major | Build, Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32319](https://issues.apache.org/jira/browse/SPARK-32319) | Disallow the use of unused imports |  Major | PySpark | Fokko Driesprong | Fokko Driesprong |
| [SPARK-32555](https://issues.apache.org/jira/browse/SPARK-32555) | Add unique ID on QueryExecution to enable listeners to deduplicate |  Minor | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-32462](https://issues.apache.org/jira/browse/SPARK-32462) | Reset previous search text for datatable |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32557](https://issues.apache.org/jira/browse/SPARK-32557) | Logging and Swallowing the Exception Per Entry in History Server |  Major | Spark Core | Yan Xiaole | Yan Xiaole |
| [SPARK-30866](https://issues.apache.org/jira/browse/SPARK-30866) | FileStreamSource: Cache fetched list of files beyond maxFilesPerTrigger as unread files |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-32337](https://issues.apache.org/jira/browse/SPARK-32337) | Show initial plan in AQE plan tree string |  Minor | SQL | Allison Wang | Allison Wang |
| [SPARK-32456](https://issues.apache.org/jira/browse/SPARK-32456) | Check the Distinct by assuming it as Aggregate for Structured Streaming |  Major | Structured Streaming | Yuanjian Li | Yuanjian Li |
| [SPARK-32517](https://issues.apache.org/jira/browse/SPARK-32517) | Add StorageLevel.DISK\_ONLY\_3 |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32469](https://issues.apache.org/jira/browse/SPARK-32469) | ApplyColumnarRulesAndInsertTransitions should be idempotent |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32216](https://issues.apache.org/jira/browse/SPARK-32216) | Remove redundant ProjectExec |  Major | SQL | Allison Wang | Allison Wang |
| [SPARK-32573](https://issues.apache.org/jira/browse/SPARK-32573) | Anti Join Improvement with EmptyHashedRelation and EmptyHashedRelationWithAllNullKeys |  Minor | SQL | Leanken.Lin | Leanken.Lin |
| [SPARK-32586](https://issues.apache.org/jira/browse/SPARK-32586) | Fix NumberFormatException error message when ansi is enabled |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32352](https://issues.apache.org/jira/browse/SPARK-32352) | Partially push down support data filter if it mixed in partition filters |  Major | SQL | Yuming Wang | angerszhu |
| [SPARK-31694](https://issues.apache.org/jira/browse/SPARK-31694) | Add SupportsPartitions Catalog APIs on DataSourceV2 |  Major | SQL | Jackey Lee | Jackey Lee |
| [SPARK-32616](https://issues.apache.org/jira/browse/SPARK-32616) | Window operators should be added determinedly |  Major | SQL | wuyi | wuyi |
| [SPARK-32610](https://issues.apache.org/jira/browse/SPARK-32610) | Fix the link to metrics.dropwizard.io in monitoring.md to refer the proper version |  Minor | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32550](https://issues.apache.org/jira/browse/SPARK-32550) | Make SpecificInternalRow constructors faster by using while loops instead of maps |  Major | SQL | Muhammad Samir Khan | Muhammad Samir Khan |
| [SPARK-32600](https://issues.apache.org/jira/browse/SPARK-32600) | Unify task name in some logs between driver and executor |  Major | Spark Core | wuyi | wuyi |
| [SPARK-28863](https://issues.apache.org/jira/browse/SPARK-28863) | Add an AlreadyPlanned logical node that skips query planning |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-32665](https://issues.apache.org/jira/browse/SPARK-32665) | Deletes orphan directories under a warehouse dir in SQLQueryTestSuite |  Minor | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32662](https://issues.apache.org/jira/browse/SPARK-32662) | CountVectorizerModel: Remove requirement for minimum vocabulary size |  Minor | ML, MLlib | Jatin Puri | Jatin Puri |
| [SPARK-32676](https://issues.apache.org/jira/browse/SPARK-32676) | Fix double caching in KMeans/BiKMeans |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-25872](https://issues.apache.org/jira/browse/SPARK-25872) | Add an optimizer tracker for TPC-DS queries |  Major | Tests | Yuming Wang | Apache Spark |
| [SPARK-32686](https://issues.apache.org/jira/browse/SPARK-32686) | Un-deprecate inferring DataFrame schema from list of dictionaries |  Minor | PySpark, SQL | Nicholas Chammas | Nicholas Chammas |
| [SPARK-31000](https://issues.apache.org/jira/browse/SPARK-31000) | Add ability to set table description in the catalog |  Minor | SQL | Nicholas Chammas |  |
| [SPARK-32204](https://issues.apache.org/jira/browse/SPARK-32204) | Binder Integration |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32696](https://issues.apache.org/jira/browse/SPARK-32696) | Get columns operation should handle interval column properly |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32701](https://issues.apache.org/jira/browse/SPARK-32701) | mapreduce.fileoutputcommitter.algorithm.version default depends on runtime environment |  Minor | docs, Documentation | Waleed Fateem | Waleed Fateem |
| [SPARK-32717](https://issues.apache.org/jira/browse/SPARK-32717) | Add a AQEOptimizer for AdaptiveSparkPlanExec |  Major | SQL | wuyi | wuyi |
| [SPARK-32729](https://issues.apache.org/jira/browse/SPARK-32729) | Fill up missing since version for math expressions |  Minor | Documentation, SQL | Kent Yao | Kent Yao |
| [SPARK-32704](https://issues.apache.org/jira/browse/SPARK-32704) | Logging plan changes for execution |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32718](https://issues.apache.org/jira/browse/SPARK-32718) | remove unnecessary keywords for interval units |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32733](https://issues.apache.org/jira/browse/SPARK-32733) | Add extended information - arguments/examples/since/notes of expressions to the remarks field of GetFunctionsOperation |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32719](https://issues.apache.org/jira/browse/SPARK-32719) | Add Flake8 check for missing imports |  Major | PySpark | Fokko Driesprong | Fokko Driesprong |
| [SPARK-32740](https://issues.apache.org/jira/browse/SPARK-32740) | Refactor common partitioning/distribution logic to BaseAggregateExec |  Trivial | SQL | Cheng Su | Cheng Su |
| [SPARK-32721](https://issues.apache.org/jira/browse/SPARK-32721) | Simplify if clauses with null and boolean |  Major | SQL | Chao Sun | Chao Sun |
| [SPARK-32757](https://issues.apache.org/jira/browse/SPARK-32757) | Physical InSubqueryExec should be consistent with logical InSubquery |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32754](https://issues.apache.org/jira/browse/SPARK-32754) | Unify to \`assertEqualJoinPlans \` for join reorder suites |  Minor | Tests | Zhenhua Wang | Zhenhua Wang |
| [SPARK-32774](https://issues.apache.org/jira/browse/SPARK-32774) | Don't track docs/.jekyll-cache |  Minor | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32739](https://issues.apache.org/jira/browse/SPARK-32739) | support prune right for left semi join in DPP |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-32077](https://issues.apache.org/jira/browse/SPARK-32077) | Support host-local shuffle data reading with external shuffle service disabled |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32772](https://issues.apache.org/jira/browse/SPARK-32772) | Reduce log messages for spark-sql CLI |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32782](https://issues.apache.org/jira/browse/SPARK-32782) | Refactory StreamingRelationV2 and move it to catalyst |  Major | Structured Streaming | Yuanjian Li | Yuanjian Li |
| [SPARK-32755](https://issues.apache.org/jira/browse/SPARK-32755) | Maintain the order of expressions in AttributeSet and ExpressionSet |  Major | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-32730](https://issues.apache.org/jira/browse/SPARK-32730) | Improve LeftSemi SortMergeJoin right side buffering |  Minor | SQL | Peter Toth | Peter Toth |
| [SPARK-32786](https://issues.apache.org/jira/browse/SPARK-32786) | Improve performance for some slow DPP tests |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-32762](https://issues.apache.org/jira/browse/SPARK-32762) | Enhance the verification of sql-expression-schema.md |  Minor | SQL | Yang Jie | Yang Jie |
| [SPARK-32791](https://issues.apache.org/jira/browse/SPARK-32791) | non-partitioned table metric should not have dynamic partition pruning time |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32800](https://issues.apache.org/jira/browse/SPARK-32800) | Remove ExpressionSet from the 2.13 branch |  Major | SQL | Ali Afroozeh | Ali Afroozeh |
| [SPARK-32798](https://issues.apache.org/jira/browse/SPARK-32798) | Make unionByName optionally fill missing columns with nulls in PySpark |  Major | PySpark | Hyukjin Kwon | Haejoon Lee |
| [SPARK-32736](https://issues.apache.org/jira/browse/SPARK-32736) | Avoid caching the removed decommissioned executors in TaskSchedulerImpl |  Major | Spark Core | wuyi | Apache Spark |
| [SPARK-32312](https://issues.apache.org/jira/browse/SPARK-32312) | Upgrade Apache Arrow to 1.0.0 |  Major | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-32841](https://issues.apache.org/jira/browse/SPARK-32841) | Use Apache Hadoop 3.2.0 for PyPI and CRAN |  Major | Build | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-32822](https://issues.apache.org/jira/browse/SPARK-32822) | Change the number of partitions to zero when a range is empty with WholeStageCodegen disabled or falled back |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32851](https://issues.apache.org/jira/browse/SPARK-32851) | Tests should fail if errors happen when generating expr code |  Minor | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-24994](https://issues.apache.org/jira/browse/SPARK-24994) | Add UnwrapCastInBinaryComparison optimizer to simplify literal types |  Major | SQL | liuxian | Chao Sun |
| [SPARK-32802](https://issues.apache.org/jira/browse/SPARK-32802) | Avoid using SpecificInternalRow in RunLengthEncoding#Encoder |  Minor | SQL | Chao Sun | Chao Sun |
| [SPARK-32844](https://issues.apache.org/jira/browse/SPARK-32844) | Make \`DataFrameReader.table\` take the specified options for datasource v1 |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-32868](https://issues.apache.org/jira/browse/SPARK-32868) | Mark more aggregate functions as order irrelevant |  Major | SQL | Tanel Kiis | Tanel Kiis |
| [SPARK-32878](https://issues.apache.org/jira/browse/SPARK-32878) | Avoid scheduling TaskSetManager which has no pending tasks |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32879](https://issues.apache.org/jira/browse/SPARK-32879) | SessionStateBuilder should apply options set when creating the session state |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-32874](https://issues.apache.org/jira/browse/SPARK-32874) | Enhance result set meta data check for execute statement operation for thrift server |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32827](https://issues.apache.org/jira/browse/SPARK-32827) | Add spark.sql.maxMetadataStringLength config |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-32835](https://issues.apache.org/jira/browse/SPARK-32835) | Add withField to PySpark Column class |  Major | PySpark | Adam Binford | Adam Binford |
| [SPARK-32706](https://issues.apache.org/jira/browse/SPARK-32706) | Poor performance when casting invalid decimal string to decimal type |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-26425](https://issues.apache.org/jira/browse/SPARK-26425) | Add more constraint checks in file streaming source to avoid checkpoint corruption |  Major | Structured Streaming | Tathagata Das | Jungtaek Lim |
| [SPARK-32903](https://issues.apache.org/jira/browse/SPARK-32903) | GeneratePredicate should be able to eliminate common sub-expressions |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-32508](https://issues.apache.org/jira/browse/SPARK-32508) | Disallow empty part col values in partition spec before static partition writing |  Trivial | SQL | dzcxzl | dzcxzl |
| [SPARK-32889](https://issues.apache.org/jira/browse/SPARK-32889) | orc table column name doesn't support special characters. |  Major | SQL | jason jin | jason jin |
| [SPARK-32902](https://issues.apache.org/jira/browse/SPARK-32902) | Logging plan changes for AQE |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32799](https://issues.apache.org/jira/browse/SPARK-32799) | Make unionByName optionally fill missing columns with nulls in SparkR |  Major | SparkR | Hyukjin Kwon | Maciej Szymkiewicz |
| [SPARK-32946](https://issues.apache.org/jira/browse/SPARK-32946) | Add withField function to SparkR |  Major | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-32867](https://issues.apache.org/jira/browse/SPARK-32867) | HiveTablerelation show too much message of Catalogpartitions |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32951](https://issues.apache.org/jira/browse/SPARK-32951) | Foldable propagation from Aggregate |  Major | SQL | Peter Toth | Peter Toth |
| [SPARK-32949](https://issues.apache.org/jira/browse/SPARK-32949) | Add timestamp\_seconds to SparkR |  Major | SparkR, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-32933](https://issues.apache.org/jira/browse/SPARK-32933) | Use keyword-only syntax for keyword\_only methods |  Minor | PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-32017](https://issues.apache.org/jira/browse/SPARK-32017) | Make Pyspark Hadoop 3.2+ Variant available in PyPI |  Major | PySpark | George Pongracz | Hyukjin Kwon |
| [SPARK-32870](https://issues.apache.org/jira/browse/SPARK-32870) | Make sure that all expressions have their ExpressionDescription properly filled |  Major | Documentation, SQL | Tanel Kiis | Tanel Kiis |
| [SPARK-32950](https://issues.apache.org/jira/browse/SPARK-32950) | No need for some big-endian specific code paths in {On,Off}HeapColumnVector |  Trivial | SQL | Michael Munday | Michael Munday |
| [SPARK-32982](https://issues.apache.org/jira/browse/SPARK-32982) | Remove hive-1.2 profiles in PIP installation option |  Major | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32954](https://issues.apache.org/jira/browse/SPARK-32954) | Add jakarta.servlet-api test dependency to yarn module to avoid classpath badcase of UTs |  Minor | YARN | Yang Jie | Yang Jie |
| [SPARK-32381](https://issues.apache.org/jira/browse/SPARK-32381) | Expose the ability for users to use parallel file & avoid location information discovery in RDDs |  Major | Spark Core | Holden Karau | Chao Sun |
| [SPARK-32931](https://issues.apache.org/jira/browse/SPARK-32931) | Unevaluable Expressions are not foldable |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-32974](https://issues.apache.org/jira/browse/SPARK-32974) | FeatureHasher transform optimization |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-32973](https://issues.apache.org/jira/browse/SPARK-32973) | FeatureHasher does not check categoricalCols in inputCols |  Trivial | Documentation, ML | zhengruifeng | zhengruifeng |
| [SPARK-32927](https://issues.apache.org/jira/browse/SPARK-32927) | Bitwise OR, AND and XOR should have similar canonicalization rules to boolean OR and AND |  Minor | SQL | Tanel Kiis | Tanel Kiis |
| [SPARK-33020](https://issues.apache.org/jira/browse/SPARK-33020) | Add nth\_value in PySpark API |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32970](https://issues.apache.org/jira/browse/SPARK-32970) | Reduce the runtime of unit test for SPARK-32019 |  Major | SQL, Tests | Tanel Kiis | Tanel Kiis |
| [SPARK-32741](https://issues.apache.org/jira/browse/SPARK-32741) | Check if the same ExprId refers to the unique attribute in logical plans |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33023](https://issues.apache.org/jira/browse/SPARK-33023) | addJar use \`Utils.isWindow\` to judge windows system |  Major | SQL | angerszhu | angerszhu |
| [SPARK-33047](https://issues.apache.org/jira/browse/SPARK-33047) | Upgrade hive-storage-api to 2.7.2 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32859](https://issues.apache.org/jira/browse/SPARK-32859) | Introduce SQL physical plan rule to decide enable/disable bucketing |  Minor | SQL | Cheng Su | Cheng Su |
| [SPARK-33026](https://issues.apache.org/jira/browse/SPARK-33026) | Add numRows to metric of BroadcastExchangeExec |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33030](https://issues.apache.org/jira/browse/SPARK-33030) | Add nth\_value in SparkR API |  Major | SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-33037](https://issues.apache.org/jira/browse/SPARK-33037) | Remove knownManagers hardcoded list |  Major | Shuffle | BoYang | BoYang |
| [SPARK-33017](https://issues.apache.org/jira/browse/SPARK-33017) | PySpark Context should have getCheckpointDir() method |  Minor | PySpark | Nicholas Chammas | Paul Reidy |
| [SPARK-33040](https://issues.apache.org/jira/browse/SPARK-33040) | Add SparkR API for invoking vector\_to\_array |  Major | ML, SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-32914](https://issues.apache.org/jira/browse/SPARK-32914) | Avoid calling dataType multiple times for each expression |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33038](https://issues.apache.org/jira/browse/SPARK-33038) | AQE plan string should only display one plan when the initial and the current plan are the same |  Minor | SQL | Allison Wang | Allison Wang |
| [SPARK-33073](https://issues.apache.org/jira/browse/SPARK-33073) | Improve error handling on Pandas to Arrow conversion failures |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-33036](https://issues.apache.org/jira/browse/SPARK-33036) | Refactor RewriteCorrelatedScalarSubquery code to replace exprIds in a bottom-up manner |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33082](https://issues.apache.org/jira/browse/SPARK-33082) | Remove hive-1.2 workaround code |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21708](https://issues.apache.org/jira/browse/SPARK-21708) |  Migrate build to sbt 1.3.13 |  Major | Build | PJ Fanning | Denis Pyshev |
| [SPARK-32282](https://issues.apache.org/jira/browse/SPARK-32282) | Improve EnsureRquirement.reorderJoinKeys to handle more scenarios such as PartitioningCollection |  Major | SQL | Terry Kim | Apache Spark |
| [SPARK-33091](https://issues.apache.org/jira/browse/SPARK-33091) | Avoid using map instead of foreach to avoid potential side effect at callers of OrcUtils.readCatalystSchema |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32743](https://issues.apache.org/jira/browse/SPARK-32743) | Add distinct info at UnresolvedFunction toString |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-33107](https://issues.apache.org/jira/browse/SPARK-33107) | Remove hive-2.3 workaround code |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33106](https://issues.apache.org/jira/browse/SPARK-33106) | Fix sbt resolvers clash |  Minor | Build | Denis Pyshev | Denis Pyshev |
| [SPARK-33117](https://issues.apache.org/jira/browse/SPARK-33117) | Update zstd-jni to 1.4.5-6 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33092](https://issues.apache.org/jira/browse/SPARK-33092) | Support subexpression elimination in ProjectExec |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33111](https://issues.apache.org/jira/browse/SPARK-33111) | aft transform optimization |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-33119](https://issues.apache.org/jira/browse/SPARK-33119) | ScalarSubquery should returns the first two rows to avoid Driver OOM |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32295](https://issues.apache.org/jira/browse/SPARK-32295) | Add not null and size \> 0 filters before inner explode to benefit from predicate pushdown |  Major | Optimizer, SQL | Tanel Kiis | Tanel Kiis |
| [SPARK-32858](https://issues.apache.org/jira/browse/SPARK-32858) | UnwrapCastInBinaryComparison: support other numeric types |  Major | SQL | Chao Sun | Chao Sun |
| [SPARK-33132](https://issues.apache.org/jira/browse/SPARK-33132) | The 'Shuffle Read Size / Records' field in Stage Summary metrics was shown as 'NaN Undefined' |  Minor | Spark Core | akiyamaneko | akiyamaneko |
| [SPARK-33061](https://issues.apache.org/jira/browse/SPARK-33061) | Expose inverse hyperbolic functions through sql.functions API |  Trivial | SQL | Richard Penney | Richard Penney |
| [SPARK-32932](https://issues.apache.org/jira/browse/SPARK-32932) | AQE local shuffle reader breaks repartitioning for dynamic partition overwrite |  Major | SQL | Manu Zhang | Manu Zhang |
| [SPARK-33156](https://issues.apache.org/jira/browse/SPARK-33156) | Upgrade GithubAction image from 18.04 to 20.04 |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33080](https://issues.apache.org/jira/browse/SPARK-33080) | Replace compiler reporter with more robust and maintainable solution |  Minor | Build | Denis Pyshev | Denis Pyshev |
| [SPARK-33162](https://issues.apache.org/jira/browse/SPARK-33162) | Use pre-built image at GitHub Action PySpark jobs |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33159](https://issues.apache.org/jira/browse/SPARK-33159) | Use hive-service-rpc dep instead of inline the generated code |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-33171](https://issues.apache.org/jira/browse/SPARK-33171) | Mark Parquet\*FilterSuite as ExtendedSQLTest |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32376](https://issues.apache.org/jira/browse/SPARK-32376) | Make unionByName null-filling behavior work with struct columns |  Major | SQL | Mukul Murthy | L. C. Hsieh |
| [SPARK-33170](https://issues.apache.org/jira/browse/SPARK-33170) | Add SQL config to control fast-fail behavior in FileFormatWriter |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33177](https://issues.apache.org/jira/browse/SPARK-33177) | CollectList and CollectSet should not be nullable |  Minor | SQL | Tanel Kiis | Tanel Kiis |
| [SPARK-32069](https://issues.apache.org/jira/browse/SPARK-32069) | Improve error message on reading unexpected directory which is not a table partition |  Minor | SQL | Gengliang Wang | angerszhu |
| [SPARK-33123](https://issues.apache.org/jira/browse/SPARK-33123) | Ignore \`GitHub Action file\` change in Amplab Jenkins |  Major | Tests | William Hyun | William Hyun |
| [SPARK-33179](https://issues.apache.org/jira/browse/SPARK-33179) | Switch default Hadoop profile in run-tests.py |  Major | Tests | William Hyun | William Hyun |
| [SPARK-32351](https://issues.apache.org/jira/browse/SPARK-32351) | Partially pushed partition filters are not explained |  Major | SQL | Yuming Wang | Nan Zhu |
| [SPARK-33189](https://issues.apache.org/jira/browse/SPARK-33189) | Support PyArrow 2.0.0+ |  Major | PySpark | Hyukjin Kwon | Bryan Cutler |
| [SPARK-33205](https://issues.apache.org/jira/browse/SPARK-33205) | Bump snappy-java version to 1.1.8 |  Major | Build | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33210](https://issues.apache.org/jira/browse/SPARK-33210) | Set the rebasing mode for parquet INT96 type to \`EXCEPTION\` by default |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33212](https://issues.apache.org/jira/browse/SPARK-33212) | Move to shaded clients for Hadoop 3.x profile |  Major | Spark Core, Spark Submit, SQL, YARN | Chao Sun | Chao Sun |
| [SPARK-26533](https://issues.apache.org/jira/browse/SPARK-26533) | Support query auto cancel on thriftserver |  Major | SQL | zhoukang | Xuedong Luan |
| [SPARK-32852](https://issues.apache.org/jira/browse/SPARK-32852) | spark.sql.hive.metastore.jars support HDFS location |  Major | SQL | Yuming Wang | angerszhu |
| [SPARK-32998](https://issues.apache.org/jira/browse/SPARK-32998) | Add ability to override default remote repos with internal repos only |  Minor | Build | Ankit Srivastava | Ankit Srivastava |
| [SPARK-32991](https://issues.apache.org/jira/browse/SPARK-32991) | RESET can clear StaticSQLConfs |  Major | SQL | Herman van Hövell | Kent Yao |
| [SPARK-33226](https://issues.apache.org/jira/browse/SPARK-33226) | Upgrade to SBT 1.4.1 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33145](https://issues.apache.org/jira/browse/SPARK-33145) | In Execution web page, when \`Succeeded Job\` has many child url elements,they will extend over the edge of the page. |  Minor | Web UI | akiyamaneko | akiyamaneko |
| [SPARK-33193](https://issues.apache.org/jira/browse/SPARK-33193) | Hive ThriftServer JDBC Database MetaData API  Behavior Auditing |  Major | SQL, Tests | Kent Yao | Kent Yao |
| [SPARK-30821](https://issues.apache.org/jira/browse/SPARK-30821) | Executor pods with multiple containers will not be rescheduled unless all containers fail |  Major | Kubernetes, Spark Core | Kevin Hogeland | Apache Spark |
| [SPARK-33228](https://issues.apache.org/jira/browse/SPARK-33228) | Don't uncache data when replacing an existing view having the same plan |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33234](https://issues.apache.org/jira/browse/SPARK-33234) | Generates SHA-512 using shasum |  Major | Project Infra | Dongjoon Hyun | Emilian Bold |
| [SPARK-33239](https://issues.apache.org/jira/browse/SPARK-33239) | Use pre-built image at GitHub Action SparkR job |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33075](https://issues.apache.org/jira/browse/SPARK-33075) | Only disable auto bucketed scan for cached query |  Trivial | SQL | Cheng Su | Cheng Su |
| [SPARK-32084](https://issues.apache.org/jira/browse/SPARK-32084) | Replace dictionary-based function definitions to proper functions in functions.py |  Major | PySpark | Hyukjin Kwon | Maciej Szymkiewicz |
| [SPARK-33215](https://issues.apache.org/jira/browse/SPARK-33215) | Speed up event log download by skipping UI rebuild |  Major | Web UI | Baohe Zhang | Baohe Zhang |
| [SPARK-33225](https://issues.apache.org/jira/browse/SPARK-33225) | Extract AliasHelper trait |  Major | SQL | Tanel Kiis | Tanel Kiis |
| [SPARK-33231](https://issues.apache.org/jira/browse/SPARK-33231) | Make podCreationTimeout configurable |  Major | Kubernetes | Holden Karau | Holden Karau |
| [SPARK-33262](https://issues.apache.org/jira/browse/SPARK-33262) | Keep pending pods in account while scheduling new pods |  Major | Kubernetes | Holden Karau | Holden Karau |
| [SPARK-33264](https://issues.apache.org/jira/browse/SPARK-33264) | Add a dedicated page for SQL-on-file in SQL documents |  Major | Documentation, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33269](https://issues.apache.org/jira/browse/SPARK-33269) | Ignore ".bsp/" directory in Git |  Minor | Project Infra | Gengliang Wang | Gengliang Wang |
| [SPARK-33272](https://issues.apache.org/jira/browse/SPARK-33272) | prune the attributes mapping in QueryPlan.transformUpWithNewOutput |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-33281](https://issues.apache.org/jira/browse/SPARK-33281) | Return SQL schema instead of Catalog string from the \`SchemaOfCsv\` expression |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33263](https://issues.apache.org/jira/browse/SPARK-33263) | Configurable StateStore compression codec |  Major | SQL, Structured Streaming | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33283](https://issues.apache.org/jira/browse/SPARK-33283) | Remove useless externalBlockStoreSize from RDDInfo |  Minor | Spark Core | Yang Jie | Yang Jie |
| [SPARK-33286](https://issues.apache.org/jira/browse/SPARK-33286) | Misleading error messages of \`from\_json\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33294](https://issues.apache.org/jira/browse/SPARK-33294) | Add query resolved check before analyze InsertIntoDir |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-32037](https://issues.apache.org/jira/browse/SPARK-32037) | Rename blacklisting feature to avoid language with racist connotation |  Minor | Spark Core | Erik Krogen | Thomas Graves |
| [SPARK-33293](https://issues.apache.org/jira/browse/SPARK-33293) | Refactor WriteToDataSourceV2Exec and reduce code duplication |  Minor | SQL | Chao Sun | Chao Sun |
| [SPARK-20044](https://issues.apache.org/jira/browse/SPARK-20044) | Support Spark UI behind front-end reverse proxy using a path prefix |  Minor | Web UI | Oliver Koeth | Gengliang Wang |
| [SPARK-33027](https://issues.apache.org/jira/browse/SPARK-33027) | Add DisableUnnecessaryBucketedScan rule to AQE queryStagePreparationRules |  Trivial | SQL | Cheng Su | Cheng Su |
| [SPARK-33319](https://issues.apache.org/jira/browse/SPARK-33319) | Add all built-in SerDes to HiveSerDeReadWriteSuite |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33323](https://issues.apache.org/jira/browse/SPARK-33323) | Add query resolved check before convert hive relation |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-31711](https://issues.apache.org/jira/browse/SPARK-31711) | Register the executor source with the metrics system when running in local mode. |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-33316](https://issues.apache.org/jira/browse/SPARK-33316) | Support nullable Avro schemas for non-nullable data in Avro writing |  Major | SQL | Bo Zhang | Bo Zhang |
| [SPARK-30294](https://issues.apache.org/jira/browse/SPARK-30294) | Read-only state store unnecessarily creates and deletes the temp file for delta file every batch |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-33185](https://issues.apache.org/jira/browse/SPARK-33185) | YARN: Print direct links to driver logs alongside application report in cluster mode |  Major | YARN | Erik Krogen | Erik Krogen |
| [SPARK-33360](https://issues.apache.org/jira/browse/SPARK-33360) | simplify DS v2 write resolution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-33365](https://issues.apache.org/jira/browse/SPARK-33365) | Update SBT to 1.4.2 |  Major | Build | William Hyun | William Hyun |
| [SPARK-33291](https://issues.apache.org/jira/browse/SPARK-33291) | Inconsistent NULL conversions to strings redux |  Minor | SQL | Stuart White | Stuart White |
| [SPARK-33347](https://issues.apache.org/jira/browse/SPARK-33347) | Clean up useless variables in MutableApplicationInfo |  Major | Spark Core | Yang Jie | Yang Jie |
| [SPARK-33371](https://issues.apache.org/jira/browse/SPARK-33371) | Support Python 3.9+ in PySpark |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33384](https://issues.apache.org/jira/browse/SPARK-33384) | Delete temporary file when cancelling writing to final path even underlying stream throwing error |  Minor | Structured Streaming | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33387](https://issues.apache.org/jira/browse/SPARK-33387) | Support ordered shuffle block migration |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33087](https://issues.apache.org/jira/browse/SPARK-33087) | DataFrameWriterV2 should delegate table resolution to the analyzer |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-33385](https://issues.apache.org/jira/browse/SPARK-33385) | Bucket pruning support IsNaN |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33303](https://issues.apache.org/jira/browse/SPARK-33303) | Deduplicate deterministic PythonUDF calls |  Major | SQL | Peter Toth | Apache Spark |
| [SPARK-33363](https://issues.apache.org/jira/browse/SPARK-33363) | Add prompt information related to the current task when pyspark starts |  Minor | PySpark, SparkR | akiyamaneko | akiyamaneko |
| [SPARK-33244](https://issues.apache.org/jira/browse/SPARK-33244) | Unify the code paths for spark.table and spark.read.table |  Major | SQL, Structured Streaming | Yuanjian Li | Yuanjian Li |
| [SPARK-33302](https://issues.apache.org/jira/browse/SPARK-33302) | Failed to push down filters through Expand |  Major | SQL | Yuming Wang | angerszhu |
| [SPARK-33376](https://issues.apache.org/jira/browse/SPARK-33376) | Remove the option of "sharesHadoopClasses" in Hive IsolatedClientLoader |  Major | SQL | Chao Sun | Apache Spark |
| [SPARK-33337](https://issues.apache.org/jira/browse/SPARK-33337) | Support subexpression elimination in branches of conditional expressions |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33390](https://issues.apache.org/jira/browse/SPARK-33390) | Make Literal support char array |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-32512](https://issues.apache.org/jira/browse/SPARK-32512) | Add basic partition command for datasourcev2 |  Major | SQL | Jackey Lee | Jackey Lee |
| [SPARK-33421](https://issues.apache.org/jira/browse/SPARK-33421) | Support Greatest and Least in Expression Canonicalize |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-33433](https://issues.apache.org/jira/browse/SPARK-33433) | Change Aggregate max rows to 1 if grouping is empty |  Minor | SQL | ulysses you | ulysses you |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24666](https://issues.apache.org/jira/browse/SPARK-24666) | Word2Vec generate infinity vectors when numIterations are large |  Critical | ML, MLlib | Yu Zhong | L. C. Hsieh |
| [SPARK-30795](https://issues.apache.org/jira/browse/SPARK-30795) | Spark SQL codegen's code() interpolator should treat escapes like Scala's StringContext.s() |  Major | SQL | Kris Mok |  |
| [SPARK-30772](https://issues.apache.org/jira/browse/SPARK-30772) | avoid tuple assignment because it will circumvent the transient tag |  Minor | ML, SQL | zhengruifeng | zhengruifeng |
| [SPARK-30786](https://issues.apache.org/jira/browse/SPARK-30786) | Block replication is not retried on other BlockManagers when it fails on 1 of the peers |  Major | Block Manager, Spark Core | Prakhar Jain | Prakhar Jain |
| [SPARK-30856](https://issues.apache.org/jira/browse/SPARK-30856) | SQLContext retains reference to unusable instance after SparkContext restarted |  Major | PySpark, SQL | Alex Favaro |  |
| [SPARK-30942](https://issues.apache.org/jira/browse/SPARK-30942) | Fix the warning for requiring cores to be limiting resource |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-30388](https://issues.apache.org/jira/browse/SPARK-30388) | mark all running map stages of finished job as finished |  Major | Spark Core, Web UI | Xuesen Liang | Xuesen Liang |
| [SPARK-30049](https://issues.apache.org/jira/browse/SPARK-30049) | SQL fails to parse when comment contains an unmatched quote character |  Major | SQL | Jason Darrell Lowe | Javier Fuentes |
| [SPARK-30279](https://issues.apache.org/jira/browse/SPARK-30279) | Support 32 or more grouping attributes for GROUPING\_ID |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31011](https://issues.apache.org/jira/browse/SPARK-31011) | Failed to register signal handler for PWR |  Minor | Spark Core | Gabor Somogyi | Jungtaek Lim |
| [SPARK-31068](https://issues.apache.org/jira/browse/SPARK-31068) | IllegalArgumentException in BroadcastExchangeExec |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-31219](https://issues.apache.org/jira/browse/SPARK-31219) | YarnShuffleService doesn't close idle netty channel |  Major | Shuffle, Spark Core | Manu Zhang | Manu Zhang |
| [SPARK-31231](https://issues.apache.org/jira/browse/SPARK-31231) | Support setuptools 46.1.0+ in PySpark packaging |  Blocker | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31360](https://issues.apache.org/jira/browse/SPARK-31360) | Fix hung-up issue in StagePage |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31378](https://issues.apache.org/jira/browse/SPARK-31378) | stage level scheduling dynamic allocation bug with initial num executors |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-18886](https://issues.apache.org/jira/browse/SPARK-18886) | Delay scheduling should not delay some executors indefinitely if one task is scheduled before delay timeout |  Major | Scheduler, Spark Core | Imran Rashid | Nicholas Brett Marcott |
| [SPARK-31511](https://issues.apache.org/jira/browse/SPARK-31511) | Make BytesToBytesMap iterator() thread-safe |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-31534](https://issues.apache.org/jira/browse/SPARK-31534) | Text for tooltip should be escaped |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31584](https://issues.apache.org/jira/browse/SPARK-31584) | NullPointerException when parsing event log with InMemoryStore |  Minor | Web UI | Baohe Zhang | Baohe Zhang |
| [SPARK-31598](https://issues.apache.org/jira/browse/SPARK-31598) | LegacySimpleTimestampFormatter incorrectly interprets pre-Gregorian timestamps |  Major | SQL | Bruce Robbins |  |
| [SPARK-31621](https://issues.apache.org/jira/browse/SPARK-31621) | Spark Master UI Fails to load if application is waiting for workers to launch driver |  Major | Spark Core, Web UI | Akshat Bordia | Akshat Bordia |
| [SPARK-30385](https://issues.apache.org/jira/browse/SPARK-30385) | WebUI occasionally throw IOException on stop() |  Major | Web UI | wuyi | Kousuke Saruta |
| [SPARK-27497](https://issues.apache.org/jira/browse/SPARK-27497) | Spark wipes out bucket spec in metastore when updating table stats |  Major | SQL | Bruce Robbins |  |
| [SPARK-31687](https://issues.apache.org/jira/browse/SPARK-31687) | Use GitHub instead of GitBox in release script |  Blocker | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31739](https://issues.apache.org/jira/browse/SPARK-31739) | Docstring syntax issues prevent proper compilation of documentation |  Trivial | Documentation | David Toneian | David Toneian |
| [SPARK-31684](https://issues.apache.org/jira/browse/SPARK-31684) | Overwrite partition failed with 'WRONG FS' when the target partition is not belong to the filesystem as same as the table |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31759](https://issues.apache.org/jira/browse/SPARK-31759) | Support configurable max number of rotate logs for spark daemons |  Minor | Deploy, Spark Core, Spark Submit | Kent Yao | Kent Yao |
| [SPARK-31387](https://issues.apache.org/jira/browse/SPARK-31387) | HiveThriftServer2Listener update methods fail with unknown operation/session id |  Major | SQL | Ali Smesseim | Ali Smesseim |
| [SPARK-31763](https://issues.apache.org/jira/browse/SPARK-31763) | DataFrame.inputFiles() not Available |  Major | PySpark | Felix Kizhakkel Jose | Rakesh Raushan |
| [SPARK-31865](https://issues.apache.org/jira/browse/SPARK-31865) | Fix complex AQE query stage not reused |  Minor | SQL | Wei Xue | Wei Xue |
| [SPARK-28067](https://issues.apache.org/jira/browse/SPARK-28067) | Incorrect results in decimal aggregation with whole-stage code gen enabled |  Critical | SQL | Mark Sirek | Sunitha Kambhampati |
| [SPARK-31882](https://issues.apache.org/jira/browse/SPARK-31882) | DAG-viz is not rendered correctly with pagination. |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-30845](https://issues.apache.org/jira/browse/SPARK-30845) | spark-submit pyspark app on yarn uploads local pyspark archives |  Major | Spark Submit | shanyu zhao | shanyu zhao |
| [SPARK-31923](https://issues.apache.org/jira/browse/SPARK-31923) | Event log cannot be generated when some internal accumulators use unexpected types |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-31220](https://issues.apache.org/jira/browse/SPARK-31220) | repartition obeys spark.sql.adaptive.coalescePartitions.initialPartitionNum when spark.sql.adaptive.enabled |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-31921](https://issues.apache.org/jira/browse/SPARK-31921) | Wrong warning of "WARN Master: App app-xxx requires more resource than any of Workers could have." |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31941](https://issues.apache.org/jira/browse/SPARK-31941) | Handling the exception in SparkUI for getSparkUser method |  Minor | Spark Core | Saurabh Chawla | Saurabh Chawla |
| [SPARK-31956](https://issues.apache.org/jira/browse/SPARK-31956) | Do not fail if there is no ambiguous self join |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31963](https://issues.apache.org/jira/browse/SPARK-31963) | Support both pandas 0.23 and 1.0 |  Major | PySpark, SQL | William Hyun | William Hyun |
| [SPARK-31915](https://issues.apache.org/jira/browse/SPARK-31915) | Resolve the grouping column properly per the case sensitivity in grouped and cogrouped pandas UDFs |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31958](https://issues.apache.org/jira/browse/SPARK-31958) | normalize special floating numbers in subquery |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31935](https://issues.apache.org/jira/browse/SPARK-31935) | Hadoop file system config should be effective in data source options |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-31916](https://issues.apache.org/jira/browse/SPARK-31916) | StringConcat can overflow \`length\`, leads to StringIndexOutOfBoundsException |  Major | SQL | Jeffrey Stokes | Dilip Biswal |
| [SPARK-31967](https://issues.apache.org/jira/browse/SPARK-31967) | Loading jobs UI page takes 40 seconds |  Blocker | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-31968](https://issues.apache.org/jira/browse/SPARK-31968) | write.partitionBy() creates duplicate subdirectories when user provides duplicate columns |  Major | SQL | Xuzhou Qin | JinxinTang |
| [SPARK-31983](https://issues.apache.org/jira/browse/SPARK-31983) | Tables of structured streaming tab show wrong result for duration column |  Major | SQL, Web UI | Rakesh Raushan | Rakesh Raushan |
| [SPARK-31925](https://issues.apache.org/jira/browse/SPARK-31925) | Summary.totalIterations greater than maxIters |  Minor | ML, PySpark | zhengruifeng | Huaxin Gao |
| [SPARK-31990](https://issues.apache.org/jira/browse/SPARK-31990) | Streaming's state store compatibility is broken |  Blocker | Structured Streaming | Xiao Li | Takeshi Yamamuro |
| [SPARK-31959](https://issues.apache.org/jira/browse/SPARK-31959) | Test failure "RebaseDateTimeSuite.optimization of micros rebasing - Gregorian to Julian" |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31994](https://issues.apache.org/jira/browse/SPARK-31994) | Docker image should use \`https\` urls for only mirrors that support it(SSL) |  Minor | Kubernetes | Prashant Sharma | Prashant Sharma |
| [SPARK-31986](https://issues.apache.org/jira/browse/SPARK-31986) | Test failure RebaseDateTimeSuite."optimization of micros rebasing - Julian to Gregorian" |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31710](https://issues.apache.org/jira/browse/SPARK-31710) | Fail casting numeric to timestamp by default |  Major | SQL | philipse | philipse |
| [SPARK-31997](https://issues.apache.org/jira/browse/SPARK-31997) | Should drop test\_udtf table when SingleSessionSuite completed |  Minor | Tests | Yang Jie | Yang Jie |
| [SPARK-31984](https://issues.apache.org/jira/browse/SPARK-31984) | Make micros rebasing functions via local timestamps pure |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31929](https://issues.apache.org/jira/browse/SPARK-31929) | local cache size exceeding "spark.history.store.maxDiskUsage" triggered "java.io.IOException" in history server on Windows |  Minor | Web UI | zhli | zhli |
| [SPARK-32006](https://issues.apache.org/jira/browse/SPARK-32006) | Create date/timestamp formatters once before collect in \`hiveResultString()\` |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32000](https://issues.apache.org/jira/browse/SPARK-32000) | Fix the flaky testcase for partially launched task in barrier-mode. |  Minor | Spark Core, Tests | Kousuke Saruta | wuyi |
| [SPARK-31894](https://issues.apache.org/jira/browse/SPARK-31894) | Introduce UnsafeRow format validation for streaming state store |  Major | Structured Streaming | Yuanjian Li | Yuanjian Li |
| [SPARK-31993](https://issues.apache.org/jira/browse/SPARK-31993) | Generated code in 'concat\_ws' fails to compile when splitting method is in effect |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31029](https://issues.apache.org/jira/browse/SPARK-31029) | Occasional class not found error in user's Future code using global ExecutionContext |  Major | Spark Core, YARN | shanyu zhao | shanyu zhao |
| [SPARK-31980](https://issues.apache.org/jira/browse/SPARK-31980) | Spark sequence() fails if start and end of range are identical dates |  Minor | SQL | Dave DeCaprio | JinxinTang |
| [SPARK-32021](https://issues.apache.org/jira/browse/SPARK-32021) | make\_interval does not accept seconds \>100 |  Major | SQL | Juliusz Sompolski | Maxim Gekk |
| [SPARK-32034](https://issues.apache.org/jira/browse/SPARK-32034) | Port HIVE-14817: Shutdown the SessionManager timeoutChecker thread properly upon shutdown |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31905](https://issues.apache.org/jira/browse/SPARK-31905) | Add compatibility tests for streaming state store format |  Major | Structured Streaming | Yuanjian Li | Yuanjian Li |
| [SPARK-32038](https://issues.apache.org/jira/browse/SPARK-32038) | Regression in handling NaN values in COUNT(DISTINCT) |  Blocker | SQL | Mithun Radhakrishnan | L. C. Hsieh |
| [SPARK-31918](https://issues.apache.org/jira/browse/SPARK-31918) | SparkR CRAN check gives a warning with R 4.0.0 on OSX |  Blocker | SparkR | Shivaram Venkataraman | Hyukjin Kwon |
| [SPARK-32028](https://issues.apache.org/jira/browse/SPARK-32028) | App id link in history summary page point to wrong application attempt |  Minor | Web UI | Zhen Li | Zhen Li |
| [SPARK-32062](https://issues.apache.org/jira/browse/SPARK-32062) | Reset listenerRegistered in SparkSession |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-32098](https://issues.apache.org/jira/browse/SPARK-32098) | Use iloc for positional slicing instead of direct slicing in createDataFrame with Arrow |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32025](https://issues.apache.org/jira/browse/SPARK-32025) | CSV schema inference with boolean & integer |  Major | SQL | Brian Wallace | Pablo Langa Blanco |
| [SPARK-32088](https://issues.apache.org/jira/browse/SPARK-32088) | test of pyspark.sql.functions.timestamp\_seconds failed if non-american timezone setting |  Major | PySpark | huangtianhua | philipse |
| [SPARK-32115](https://issues.apache.org/jira/browse/SPARK-32115) | Incorrect results for SUBSTRING when overflow |  Blocker | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-32124](https://issues.apache.org/jira/browse/SPARK-32124) | [SHS] Failed to parse FetchFailed TaskEndReason from event log produce by Spark 2.4 |  Minor | Spark Core | Zhongwei Zhu | Zhongwei Zhu |
| [SPARK-32126](https://issues.apache.org/jira/browse/SPARK-32126) | Scope Session.active in IncrementalExecution |  Major | Structured Streaming | Dongjoon Hyun | Yuanjian Li |
| [SPARK-32056](https://issues.apache.org/jira/browse/SPARK-32056) | Repartition by key should support partition coalesce for AQE |  Minor | SQL | koert kuipers | L. C. Hsieh |
| [SPARK-32068](https://issues.apache.org/jira/browse/SPARK-32068) | Spark 3 UI task launch time show in error time zone |  Major | Web UI | Smith Cruise | JinxinTang |
| [SPARK-32131](https://issues.apache.org/jira/browse/SPARK-32131) | Fix AnalysisException messages at UNION/INTERSECT/EXCEPT/MINUS operations |  Minor | SQL | philipse | philipse |
| [SPARK-32095](https://issues.apache.org/jira/browse/SPARK-32095) | [DataSource V2] Documentation on SupportsReportStatistics Outdated? |  Minor | SQL | Micah Kornfield | Micah Kornfield |
| [SPARK-32130](https://issues.apache.org/jira/browse/SPARK-32130) | Spark 3.0 json load performance is unacceptable in comparison of Spark 2.4 |  Critical | Input/Output | Sanjeev Mishra | Maxim Gekk |
| [SPARK-32136](https://issues.apache.org/jira/browse/SPARK-32136) | Spark producing incorrect groupBy results when key is a struct with nullable properties |  Blocker | SQL | Jason Moore | L. C. Hsieh |
| [SPARK-32121](https://issues.apache.org/jira/browse/SPARK-32121) | ExternalShuffleBlockResolverSuite failed on Windows |  Minor | Tests | Cheng Pan | Cheng Pan |
| [SPARK-32167](https://issues.apache.org/jira/browse/SPARK-32167) | nullability of GetArrayStructFields is incorrect |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32163](https://issues.apache.org/jira/browse/SPARK-32163) | Nested pruning should still work for nested column extractors of attributes with cosmetic variations |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-32057](https://issues.apache.org/jira/browse/SPARK-32057) | SparkExecuteStatementOperation does not set CANCELED state correctly |  Major | SQL | Ali Smesseim | Ali Smesseim |
| [SPARK-20680](https://issues.apache.org/jira/browse/SPARK-20680) | Spark-sql do not support for void column datatype of view |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-32214](https://issues.apache.org/jira/browse/SPARK-32214) | The type conversion function generated in makeFromJava for "other"  type uses a wrong variable. |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32024](https://issues.apache.org/jira/browse/SPARK-32024) | Disk usage tracker went negative in HistoryServerDiskManager |  Minor | Web UI | Zhen Li | Zhen Li |
| [SPARK-32168](https://issues.apache.org/jira/browse/SPARK-32168) | DSv2 SQL overwrite incorrectly uses static plan with hidden partitions |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-32160](https://issues.apache.org/jira/browse/SPARK-32160) | Executors should not be able to create SparkContext. |  Major | Spark Core | Takuya Ueshin | Takuya Ueshin |
| [SPARK-32148](https://issues.apache.org/jira/browse/SPARK-32148) | LEFT JOIN generating non-deterministic and unexpected result (regression in Spark 3.0) |  Blocker | SQL, Structured Streaming | Michael | Jungtaek Lim |
| [SPARK-32159](https://issues.apache.org/jira/browse/SPARK-32159) | New udaf(Aggregator) has an integration bug with UnresolvedMapObjects serialization |  Major | SQL | Erik Erlandson | Erik Erlandson |
| [SPARK-32035](https://issues.apache.org/jira/browse/SPARK-32035) | Inconsistent AWS environment variables in documentation |  Minor | Documentation | Ondrej Kokes | Richard Joerger |
| [SPARK-31831](https://issues.apache.org/jira/browse/SPARK-31831) | Flaky test: org.apache.spark.sql.hive.thriftserver.HiveSessionImplSuite.(It is not a test it is a sbt.testing.SuiteSelector) |  Major | SQL, Tests | Jungtaek Lim | Frank Yin |
| [SPARK-32242](https://issues.apache.org/jira/browse/SPARK-32242) | Fix flakiness of CliSuite |  Major | SQL, Tests | Jungtaek Lim | Jungtaek Lim |
| [SPARK-32256](https://issues.apache.org/jira/browse/SPARK-32256) | Hive may fail to detect Hadoop version when using isolated classloader |  Blocker | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-32220](https://issues.apache.org/jira/browse/SPARK-32220) | Cartesian Product Hint cause data error |  Blocker | SQL | angerszhu | angerszhu |
| [SPARK-32103](https://issues.apache.org/jira/browse/SPARK-32103) | Spark support IPV6 in yarn mode |  Minor | YARN | jobit mathew | pavithra ramachandran |
| [SPARK-32251](https://issues.apache.org/jira/browse/SPARK-32251) | fix SQL keyword document |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32238](https://issues.apache.org/jira/browse/SPARK-32238) | Use Utils.getSimpleName to avoid hitting Malformed class name in ScalaUDF |  Minor | SQL | wuyi | wuyi |
| [SPARK-32232](https://issues.apache.org/jira/browse/SPARK-32232) | IllegalArgumentException: MultilayerPerceptronClassifier\_... parameter solver given invalid value auto |  Major | ML | steven taylor | Huaxin Gao |
| [SPARK-31226](https://issues.apache.org/jira/browse/SPARK-31226) | Fix SizeBasedCoalesce in tests |  Minor | SQL, Tests | angerszhu | angerszhu |
| [SPARK-32307](https://issues.apache.org/jira/browse/SPARK-32307) | Aggression that use map type input UDF as group expression can fail |  Major | SQL | wuyi | wuyi |
| [SPARK-32234](https://issues.apache.org/jira/browse/SPARK-32234) | Spark sql commands are failing on select Queries for the  orc tables |  Blocker | SQL | Saurabh Chawla | Saurabh Chawla |
| [SPARK-32018](https://issues.apache.org/jira/browse/SPARK-32018) | Fix UnsafeRow set overflowed decimal |  Major | SQL | Allison Wang | Wenchen Fan |
| [SPARK-32094](https://issues.apache.org/jira/browse/SPARK-32094) | Patch cloudpickle.py with typing module side-effect fix |  Major | PySpark | Suzen Fylke | Hyukjin Kwon |
| [SPARK-32344](https://issues.apache.org/jira/browse/SPARK-32344) | Unevaluable expr is set to FIRST/LAST ignoreNullsExpr in distinct aggregates |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-29157](https://issues.apache.org/jira/browse/SPARK-29157) | DataSourceV2: Add DataFrameWriterV2 to Python API |  Major | PySpark, SQL | Ryan Blue | Maciej Szymkiewicz |
| [SPARK-32368](https://issues.apache.org/jira/browse/SPARK-32368) | Options in PartitioningAwareFileIndex should respect case insensitivity |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32365](https://issues.apache.org/jira/browse/SPARK-32365) | Fix java.lang.IndexOutOfBoundsException: No group -1 |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-32362](https://issues.apache.org/jira/browse/SPARK-32362) | AdaptiveQueryExecSuite misses verifying AE results |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-32377](https://issues.apache.org/jira/browse/SPARK-32377) | CaseInsensitiveMap should be deterministic for addition |  Major | SQL | Girish A Pandit | Dongjoon Hyun |
| [SPARK-31922](https://issues.apache.org/jira/browse/SPARK-31922) | "RpcEnv already stopped" error when exit spark-shell with local-cluster mode |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32003](https://issues.apache.org/jira/browse/SPARK-32003) | Shuffle files for lost executor are not unregistered if fetch failure occurs after executor is lost |  Major | Scheduler | Wing Yew Poon | Wing Yew Poon |
| [SPARK-32364](https://issues.apache.org/jira/browse/SPARK-32364) | Use CaseInsensitiveMap for DataFrameReader/Writer options |  Major | SQL | Girish A Pandit | Dongjoon Hyun |
| [SPARK-32280](https://issues.apache.org/jira/browse/SPARK-32280) | AnalysisException thrown when query contains several JOINs |  Major | PySpark | David Lindelöf | wuyi |
| [SPARK-32372](https://issues.apache.org/jira/browse/SPARK-32372) | "Resolved attribute(s) XXX missing" after dudup conflict references |  Major | SQL | wuyi | wuyi |
| [SPARK-32237](https://issues.apache.org/jira/browse/SPARK-32237) | Cannot resolve column when put hint in the views of common table expression |  Major | SQL | Kernel Force | Lantao Jin |
| [SPARK-32430](https://issues.apache.org/jira/browse/SPARK-32430) | Allow plugins to inject rules into AQE query stage preparation |  Major | SQL | Thomas Graves | Andy Grove |
| [SPARK-32451](https://issues.apache.org/jira/browse/SPARK-32451) | Support Apache Arrow 1.0.0 in SparkR |  Major | R, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32458](https://issues.apache.org/jira/browse/SPARK-32458) | Mismatched row access sizes in tests |  Minor | SQL | Michael Munday | Michael Munday |
| [SPARK-32283](https://issues.apache.org/jira/browse/SPARK-32283) | Multiple Kryo registrators can't be used anymore |  Minor | Spark Core | Lorenz Bühmann | Lantao Jin |
| [SPARK-32175](https://issues.apache.org/jira/browse/SPARK-32175) | Fix the order between initialization for ExecutorPlugin and starting heartbeat thread |  Major | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32332](https://issues.apache.org/jira/browse/SPARK-32332) | AQE doesn't adequately allow for Columnar Processing extension |  Major | SQL | Thomas Graves | Wenchen Fan |
| [SPARK-32010](https://issues.apache.org/jira/browse/SPARK-32010) | Thread leaks in pinned thread mode |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32431](https://issues.apache.org/jira/browse/SPARK-32431) | The .schema() API behaves incorrectly for nested schemas that have column duplicates in case-insensitive mode |  Major | SQL | Michał Świtakowski | Maxim Gekk |
| [SPARK-32227](https://issues.apache.org/jira/browse/SPARK-32227) | Bug in load-spark-env.cmd  with Spark 3.0.0 |  Major | Spark Shell | Ihor Bobak | Ihor Bobak |
| [SPARK-32417](https://issues.apache.org/jira/browse/SPARK-32417) | Flaky test: BlockManagerDecommissionIntegrationSuite.verify that an already running task which is going to cache data succeeds on a decommissioned executor |  Major | Spark Core, Tests | Gabor Somogyi | Devesh Agrawal |
| [SPARK-32468](https://issues.apache.org/jira/browse/SPARK-32468) | Fix timeout config issue in Kafka connector tests |  Minor | Structured Streaming, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-32510](https://issues.apache.org/jira/browse/SPARK-32510) | JDBC doesn't check duplicate column names in nested structures |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32509](https://issues.apache.org/jira/browse/SPARK-32509) | Unused DPP Filter causes issue in canonicalization and prevents reuse exchange |  Major | SQL | Prakhar Jain | Prakhar Jain |
| [SPARK-32524](https://issues.apache.org/jira/browse/SPARK-32524) | SharedSparkSession should clean up InMemoryRelation.ser |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32525](https://issues.apache.org/jira/browse/SPARK-32525) | The layout of monitoring.html is broken |  Major | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32485](https://issues.apache.org/jira/browse/SPARK-32485) | RecordBinaryComparatorSuite test failures on big-endian systems |  Minor | Tests | Michael Munday | Michael Munday |
| [SPARK-32529](https://issues.apache.org/jira/browse/SPARK-32529) | Spark 3.0 History Server May Never Finish One Round Log Dir Scan |  Major | Spark Core | Yan Xiaole | Yan Xiaole |
| [SPARK-32518](https://issues.apache.org/jira/browse/SPARK-32518) | CoarseGrainedSchedulerBackend.maxNumConcurrentTasks should consider all kinds of resources |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32546](https://issues.apache.org/jira/browse/SPARK-32546) | SHOW VIEWS fails with MetaException ... ClassNotFoundException |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32556](https://issues.apache.org/jira/browse/SPARK-32556) | Fix release script to uri encode the user provided passwords. |  Major | Build, Project Infra | Prashant Sharma | Prashant Sharma |
| [SPARK-32576](https://issues.apache.org/jira/browse/SPARK-32576) | Support PostgreSQL \`bpchar\` type and array of char type |  Minor | SQL | Jakub Korzeniowski | Jakub Korzeniowski |
| [SPARK-32575](https://issues.apache.org/jira/browse/SPARK-32575) | BlockManagerDecommissionIntegrationSuite is still flaky |  Major | Spark Core | Devesh Agrawal | Devesh Agrawal |
| [SPARK-32470](https://issues.apache.org/jira/browse/SPARK-32470) | Remove task result size check for shuffle map stage |  Minor | Spark Core | Wei Xue | Wei Xue |
| [SPARK-32594](https://issues.apache.org/jira/browse/SPARK-32594) | Insert wrong dates to Hive tables |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32596](https://issues.apache.org/jira/browse/SPARK-32596) | Clear Ivy resolution files as part of the finally block |  Major | Spark Core | Venkata krishnan Sowrirajan | Venkata krishnan Sowrirajan |
| [SPARK-31703](https://issues.apache.org/jira/browse/SPARK-31703) | Changes made by SPARK-26985 break reading parquet files correctly in BigEndian architectures (AIX + LinuxPPC64) |  Blocker | Spark Core | Michail Giannakopoulos | Tin Hang To |
| [SPARK-32625](https://issues.apache.org/jira/browse/SPARK-32625) | Log error message when falling back to interpreter mode |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32521](https://issues.apache.org/jira/browse/SPARK-32521) | WithFields Expression should not be foldable |  Major | SQL | fqaiser94 | fqaiser94 |
| [SPARK-32615](https://issues.apache.org/jira/browse/SPARK-32615) | Fix AQE aggregateMetrics java.util.NoSuchElementException |  Minor | SQL | Leanken.Lin | Leanken.Lin |
| [SPARK-32652](https://issues.apache.org/jira/browse/SPARK-32652) | ObjectSerializerPruning fails for RowEncoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32624](https://issues.apache.org/jira/browse/SPARK-32624) | Replace getClass.getName with getClass.getCanonicalName in CodegenContext.addReferenceObj |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32621](https://issues.apache.org/jira/browse/SPARK-32621) | "path" option is added again to input paths during infer() |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-32658](https://issues.apache.org/jira/browse/SPARK-32658) | Partition length number overflow in \`PartitionWriterStream\` |  Blocker | Spark Core | Xingbo Jiang | Xingbo Jiang |
| [SPARK-30462](https://issues.apache.org/jira/browse/SPARK-30462) | Structured Streaming \_spark\_metadata fills up Spark Driver memory when having lots of objects |  Major | Structured Streaming | Vladimir Yankov | Jungtaek Lim |
| [SPARK-32640](https://issues.apache.org/jira/browse/SPARK-32640) | Spark 3.1 log(NaN) returns null instead of NaN |  Major | SQL | Thomas Graves | Wenchen Fan |
| [SPARK-32663](https://issues.apache.org/jira/browse/SPARK-32663) | TransportClient getting closed when there are outstanding requests to the server |  Major | Shuffle | Chandni Singh | Attila Zsolt Piros |
| [SPARK-32672](https://issues.apache.org/jira/browse/SPARK-32672) | Data corruption in some cached compressed boolean columns |  Blocker | SQL | Robert Joseph Evans | Robert Joseph Evans |
| [SPARK-32092](https://issues.apache.org/jira/browse/SPARK-32092) | CrossvalidatorModel does not save all submodels (it saves only 3) |  Major | ML, PySpark | An De Rijdt | Zirui Xu |
| [SPARK-32675](https://issues.apache.org/jira/browse/SPARK-32675) | --py-files option is appended without passing value for it |  Major | Mesos | Farhan Khan | Farhan Khan |
| [SPARK-32588](https://issues.apache.org/jira/browse/SPARK-32588) | SizeEstimator class not always properly initialized in tests. |  Minor | Tests | Michael Munday | Michael Munday |
| [SPARK-32516](https://issues.apache.org/jira/browse/SPARK-32516) | path option is treated differently for 'format("parquet").load(path)' vs. 'parquet(path)' |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-32646](https://issues.apache.org/jira/browse/SPARK-32646) | ORC predicate pushdown should work with case-insensitive analysis |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-32641](https://issues.apache.org/jira/browse/SPARK-32641) | withField + getField on null structs returns incorrect results |  Major | SQL | fqaiser94 | fqaiser94 |
| [SPARK-32683](https://issues.apache.org/jira/browse/SPARK-32683) | Datetime Pattern F not working as expected |  Major | SQL | Daeho Ro | Kent Yao |
| [SPARK-32664](https://issues.apache.org/jira/browse/SPARK-32664) | Getting local shuffle block clutters the executor logs |  Trivial | Shuffle | Chandni Singh | Daniel Moore |
| [SPARK-32614](https://issues.apache.org/jira/browse/SPARK-32614) | Support for treating the line as valid record if it starts with \\u0000 or null character, or starts with any character mentioned as comment |  Minor | Spark Core, SQL | Chandan Ray | Sean R. Owen |
| [SPARK-32620](https://issues.apache.org/jira/browse/SPARK-32620) | Reset the numPartitions metric when DPP is enabled |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32659](https://issues.apache.org/jira/browse/SPARK-32659) | Fix the data issue of inserted DPP on non-atomic type |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32705](https://issues.apache.org/jira/browse/SPARK-32705) | EmptyHashedRelation$; no valid constructor |  Major | SQL | Leanken.Lin | Leanken.Lin |
| [SPARK-32693](https://issues.apache.org/jira/browse/SPARK-32693) | Compare two dataframes with same schema except nullable property |  Minor | SQL | david bernuau | L. C. Hsieh |
| [SPARK-32722](https://issues.apache.org/jira/browse/SPARK-32722) | Update document type conversion for Pandas UDFs (pyarrow 1.0.1, pandas 1.1.1, Python 3.7) |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32639](https://issues.apache.org/jira/browse/SPARK-32639) | Support GroupType parquet mapkey field |  Major | SQL | Chen Zhang | Chen Zhang |
| [SPARK-32761](https://issues.apache.org/jira/browse/SPARK-32761) | Planner error when aggregating multiple distinct Constant columns |  Major | SQL | Linhong Liu | Liu, Linhong |
| [SPARK-32771](https://issues.apache.org/jira/browse/SPARK-32771) | The example of expressions.Aggregator in Javadoc / Scaladoc is wrong |  Minor | docs | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32776](https://issues.apache.org/jira/browse/SPARK-32776) | Limit in streaming should not be optimized away by PropagateEmptyRelation |  Major | Structured Streaming | Liwen Sun | Liwen Sun |
| [SPARK-31670](https://issues.apache.org/jira/browse/SPARK-31670) | Using complex type in Aggregation with cube failed Analysis error |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32638](https://issues.apache.org/jira/browse/SPARK-32638) | WidenSetOperationTypes in subquery  attribute  missing |  Major | SQL | Guojian Li | Takeshi Yamamuro |
| [SPARK-32788](https://issues.apache.org/jira/browse/SPARK-32788) | non-partitioned table scan should not have partition filter |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32767](https://issues.apache.org/jira/browse/SPARK-32767) | Bucket join should work if spark.sql.shuffle.partitions larger than bucket number |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32785](https://issues.apache.org/jira/browse/SPARK-32785) | interval with dangling part should not results null |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32779](https://issues.apache.org/jira/browse/SPARK-32779) | Spark/Hive3 interaction potentially causes deadlock |  Major | SQL | Bruce Robbins | Sandeep Katta |
| [SPARK-32753](https://issues.apache.org/jira/browse/SPARK-32753) | Deduplicating and repartitioning the same column create duplicate rows with AQE |  Major | SQL | Manu Zhang | Manu Zhang |
| [SPARK-32810](https://issues.apache.org/jira/browse/SPARK-32810) | CSV/JSON data sources should avoid globbing paths when inferring schema |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32812](https://issues.apache.org/jira/browse/SPARK-32812) | Run tests script for Python fails in certain environments |  Major | PySpark, Tests | Haejoon Lee | Haejoon Lee |
| [SPARK-32764](https://issues.apache.org/jira/browse/SPARK-32764) | compare of -0.0 \< 0.0 return true |  Major | SQL | Izek Greenfield | Wenchen Fan |
| [SPARK-32817](https://issues.apache.org/jira/browse/SPARK-32817) | DPP throws error when broadcast side is empty |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-32815](https://issues.apache.org/jira/browse/SPARK-32815) | Fix LibSVM data source loading error on file paths with glob metacharacters |  Major | MLlib | Maxim Gekk | Maxim Gekk |
| [SPARK-32824](https://issues.apache.org/jira/browse/SPARK-32824) | The error is confusing when resource .amount not provided |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-32823](https://issues.apache.org/jira/browse/SPARK-32823) | Standalone Master UI resources in use wrong |  Major | Web UI | Thomas Graves | Thomas Graves |
| [SPARK-32813](https://issues.apache.org/jira/browse/SPARK-32813) | Reading parquet rdd in non columnar mode fails in multithreaded environment |  Major | SQL | Vladimir Klyushnikov | L. C. Hsieh |
| [SPARK-32836](https://issues.apache.org/jira/browse/SPARK-32836) | Fix DataStreamReaderWriterSuite to check writer options correctly |  Major | Structured Streaming, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32819](https://issues.apache.org/jira/browse/SPARK-32819) | Spark SQL aggregate() fails on nested string arrays |  Major | SQL | Lauri Koobas | L. C. Hsieh |
| [SPARK-32832](https://issues.apache.org/jira/browse/SPARK-32832) | Use CaseInsensitiveMap for DataStreamReader/Writer options |  Major | Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32828](https://issues.apache.org/jira/browse/SPARK-32828) | Cast from a derived user-defined type to a base type |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32840](https://issues.apache.org/jira/browse/SPARK-32840) | Invalid interval value can happen to be just adhesive with the unit |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32794](https://issues.apache.org/jira/browse/SPARK-32794) | Rare corner case error in micro-batch engine with some stateful queries + no-data-batches + V1 streaming sources |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-32853](https://issues.apache.org/jira/browse/SPARK-32853) | consecutive load/save calls should be allowed |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32845](https://issues.apache.org/jira/browse/SPARK-32845) | Add sinkParameter to check sink options robustly in DataStreamReaderWriterSuite |  Minor | SQL | Wenchen Fan | Dongjoon Hyun |
| [SPARK-32804](https://issues.apache.org/jira/browse/SPARK-32804) | run-example failed in standalone cluster mode |  Minor | Deploy, Examples | Kevin Wang | Kevin Wang |
| [SPARK-32865](https://issues.apache.org/jira/browse/SPARK-32865) | python section in quickstart page doesn't display SPARK\_VERSION correctly |  Minor | docs, Documentation | Bowen Li | Bowen Li |
| [SPARK-32839](https://issues.apache.org/jira/browse/SPARK-32839) | Make Spark scripts working with the spaces in paths on Windows |  Major | Windows | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32872](https://issues.apache.org/jira/browse/SPARK-32872) | BytesToBytesMap at MAX\_CAPACITY exceeds growth threshold |  Major | Spark Core | Ankur Dave | Ankur Dave |
| [SPARK-32715](https://issues.apache.org/jira/browse/SPARK-32715) | Broadcast block pieces may memory leak |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-32738](https://issues.apache.org/jira/browse/SPARK-32738) | thread safe endpoints may hang due to fatal error |  Major | Spark Core | Zhenhua Wang | Zhenhua Wang |
| [SPARK-31448](https://issues.apache.org/jira/browse/SPARK-31448) | Difference in Storage Levels used in cache() and persist() for pyspark dataframes |  Major | PySpark | Abhishek Dixit | Abhishek Dixit |
| [SPARK-32814](https://issues.apache.org/jira/browse/SPARK-32814) | Metaclasses are broken for a few classes in Python 3 |  Major | ML, PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-32816](https://issues.apache.org/jira/browse/SPARK-32816) | Planner error when aggregating multiple distinct DECIMAL columns |  Major | SQL | Linhong Liu | Linhong Liu |
| [SPARK-32897](https://issues.apache.org/jira/browse/SPARK-32897) | SparkSession.builder.getOrCreate should not show deprecation warning of SQLContext |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32900](https://issues.apache.org/jira/browse/SPARK-32900) | UnsafeExternalSorter.SpillableIterator cannot spill when there are NULLs in the input and radix sorting is used. |  Major | Spark Core | Tom van Bussel | Tom van Bussel |
| [SPARK-32887](https://issues.apache.org/jira/browse/SPARK-32887) | Example command in https://spark.apache.org/docs/latest/sql-ref-syntax-aux-show-table.html to be changed |  Minor | docs | Chetan Bhat | Udbhav Agrawal |
| [SPARK-32635](https://issues.apache.org/jira/browse/SPARK-32635) | When pyspark.sql.functions.lit() function is used with dataframe cache, it returns wrong result |  Blocker | SQL | Vinod KC | Peter Toth |
| [SPARK-32908](https://issues.apache.org/jira/browse/SPARK-32908) | percentile\_approx() returns incorrect results |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32906](https://issues.apache.org/jira/browse/SPARK-32906) | Struct field names should not change after normalizing floats |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32905](https://issues.apache.org/jira/browse/SPARK-32905) | ApplicationMaster fails to receive UpdateDelegationTokens message |  Major | Spark Core, YARN | Kent Yao | Kent Yao |
| [SPARK-32911](https://issues.apache.org/jira/browse/SPARK-32911) | UnsafeExternalSorter.SpillableIterator cannot spill after reading all records |  Major | Spark Core | Tom van Bussel | Tom van Bussel |
| [SPARK-32898](https://issues.apache.org/jira/browse/SPARK-32898) | totalExecutorRunTimeMs is too big |  Major | Spark Core | Linhong Liu | wuyi |
| [SPARK-32886](https://issues.apache.org/jira/browse/SPARK-32886) | '.../jobs/undefined' link from "Event Timeline" in jobs page |  Minor | Web UI | Zhen Li | Zhen Li |
| [SPARK-32955](https://issues.apache.org/jira/browse/SPARK-32955) | An item in the navigation bar in the WebUI has a wrong link. |  Minor | docs | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32959](https://issues.apache.org/jira/browse/SPARK-32959) | Fix the "Relation: view text" test in DataSourceV2SQLSuite |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-32892](https://issues.apache.org/jira/browse/SPARK-32892) | Murmur3 and xxHash64 implementations do not produce the correct results on big-endian platforms |  Minor | Spark Core, SQL | Michael Munday | Michael Munday |
| [SPARK-32937](https://issues.apache.org/jira/browse/SPARK-32937) | DecomissionSuite in k8s integration tests is failing. |  Major | Kubernetes | Prashant Sharma | Holden Karau |
| [SPARK-32980](https://issues.apache.org/jira/browse/SPARK-32980) | Launcher Client tests flake with minikube |  Major | Kubernetes, Tests | Holden Karau | Holden Karau |
| [SPARK-32977](https://issues.apache.org/jira/browse/SPARK-32977) | [SQL] JavaDoc on Default Save mode Incorrect |  Major | SQL | Russell Spitzer | Russell Spitzer |
| [SPARK-32877](https://issues.apache.org/jira/browse/SPARK-32877) | Fix Hive UDF not support decimal type in complex type |  Minor | SQL | ulysses you | ulysses you |
| [SPARK-32999](https://issues.apache.org/jira/browse/SPARK-32999) | TreeNode.nodeName should not throw malformed class name error |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-32996](https://issues.apache.org/jira/browse/SPARK-32996) | Handle Option.empty v1.ExecutorSummary#peakMemoryMetrics |  Major | Web UI | Shruti Gumma | Shruti Gumma |
| [SPARK-33015](https://issues.apache.org/jira/browse/SPARK-33015) | Compute the current date only once |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32901](https://issues.apache.org/jira/browse/SPARK-32901) | UnsafeExternalSorter may cause a SparkOutOfMemoryError to be thrown while spilling |  Major | Spark Core | Tom van Bussel | Tom van Bussel |
| [SPARK-33018](https://issues.apache.org/jira/browse/SPARK-33018) | Fix compute statistics issue |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33019](https://issues.apache.org/jira/browse/SPARK-33019) | Use spark.hadoop.mapreduce.fileoutputcommitter.algorithm.version=1 by default |  Blocker | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32723](https://issues.apache.org/jira/browse/SPARK-32723) | Upgrade to jQuery 3.5.1 |  Major | Spark Core | Ashish Kumar Singh | Peter Toth |
| [SPARK-32992](https://issues.apache.org/jira/browse/SPARK-32992) | In OracleDialect, "RowID" SQL type should be converted into "String" Catalyst type |  Minor | SQL | Peng Cheng | Maxim Gekk |
| [SPARK-33024](https://issues.apache.org/jira/browse/SPARK-33024) | Fix CodeGen fallback issue of UDFSuite in Scala 2.13 |  Major | SQL | Yang Jie | Yang Jie |
| [SPARK-33050](https://issues.apache.org/jira/browse/SPARK-33050) | Upgrade Apache ORC to 1.5.12 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33043](https://issues.apache.org/jira/browse/SPARK-33043) | RowMatrix is incompatible with spark.driver.maxResultSize=0 |  Minor | MLlib | Karen Feng | Sean R. Owen |
| [SPARK-33049](https://issues.apache.org/jira/browse/SPARK-33049) | Decommission Core Integration Test is flaky. |  Trivial | Spark Core, Tests | Holden Karau | Holden Karau |
| [SPARK-33065](https://issues.apache.org/jira/browse/SPARK-33065) | Expand the stack size of a thread in a test in LocalityPlacementStrategySuite for Java 11 |  Minor | Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-20202](https://issues.apache.org/jira/browse/SPARK-20202) | Remove references to org.spark-project.hive |  Major | Build, SQL | Owen O'Malley | Dongjoon Hyun |
| [SPARK-33035](https://issues.apache.org/jira/browse/SPARK-33035) | Updates the obsoleted entries of attribute mapping in QueryPlan#transformUpWithNewOutput |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32243](https://issues.apache.org/jira/browse/SPARK-32243) | HiveSessionCatalog call super.makeFunctionExpression should show error message |  Major | SQL | angerszhu | angerszhu |
| [SPARK-27428](https://issues.apache.org/jira/browse/SPARK-27428) | Test "metrics StatsD sink with Timer " fails on BigEndian |  Major | Spark Core | Anuja Jakhade | Michael Munday |
| [SPARK-32963](https://issues.apache.org/jira/browse/SPARK-32963) | empty string should be consistent for schema name in SparkGetSchemasOperation |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32857](https://issues.apache.org/jira/browse/SPARK-32857) | Flaky o.a.s.scheduler.BarrierTaskContextSuite.throw exception if the number of barrier() calls are not the same on every task |  Major | Spark Core | wuyi | wuyi |
| [SPARK-33089](https://issues.apache.org/jira/browse/SPARK-33089) | avro format does not propagate Hadoop config from DS options to underlying HDFS file system |  Major | SQL | Yuning Zhang | Yuning Zhang |
| [SPARK-33094](https://issues.apache.org/jira/browse/SPARK-33094) | ORC format does not propagate Hadoop config from DS options to underlying HDFS file system |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33101](https://issues.apache.org/jira/browse/SPARK-33101) | LibSVM format does not propagate Hadoop config from DS options to underlying HDFS file system |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33105](https://issues.apache.org/jira/browse/SPARK-33105) | Broken installation of source packages on AppVeyor |  Major | Project Infra, R | Maciej Szymkiewicz |  |
| [SPARK-33102](https://issues.apache.org/jira/browse/SPARK-33102) | Use stringToSeq on SQL list typed parameters |  Minor | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-33108](https://issues.apache.org/jira/browse/SPARK-33108) | Remove sbt-dependency-graph SBT plugin |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32989](https://issues.apache.org/jira/browse/SPARK-32989) | Performance regression when selecting from str\_to\_map |  Minor | SQL | Ondrej Kokes | L. C. Hsieh |
| [SPARK-33016](https://issues.apache.org/jira/browse/SPARK-33016) | Potential SQLMetrics missed which might cause WEB UI display issue while AQE is on. |  Minor | SQL | Leanken.Lin | Leanken.Lin |
| [SPARK-33118](https://issues.apache.org/jira/browse/SPARK-33118) | CREATE TEMPORARY TABLE fails with location |  Major | SQL | Pablo Langa Blanco | Pablo Langa Blanco |
| [SPARK-33115](https://issues.apache.org/jira/browse/SPARK-33115) | \`kvstore\` and \`unsafe\` doc tasks fail |  Minor | Build, Documentation | Denis Pyshev | Denis Pyshev |
| [SPARK-13860](https://issues.apache.org/jira/browse/SPARK-13860) | TPCDS query 39 returns wrong results compared to TPC official result set |  Major | SQL | JESSE CHEN | Leanken.Lin |
| [SPARK-33129](https://issues.apache.org/jira/browse/SPARK-33129) | Since the sbt version is now upgraded, old \`test-only\` needs to be replaced with \`testOnly\` |  Major | Build, docs | Prashant Sharma | Prashant Sharma |
| [SPARK-33134](https://issues.apache.org/jira/browse/SPARK-33134) | Incorrect nested complex JSON fields raise an exception |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33136](https://issues.apache.org/jira/browse/SPARK-33136) | Handling nullability for complex types is broken during resolution of V2 write command |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-33146](https://issues.apache.org/jira/browse/SPARK-33146) | Encountering an invalid rolling event log folder prevents loading other applications in SHS |  Major | Spark Core | Adam Binford | Adam Binford |
| [SPARK-33131](https://issues.apache.org/jira/browse/SPARK-33131) | Fix grouping sets with having clause can not resolve qualified col name |  Major | SQL | ulysses you | ulysses you |
| [SPARK-33173](https://issues.apache.org/jira/browse/SPARK-33173) | Fix Flaky Test "SPARK-33088: executor failed tasks trigger plugin calls" |  Major | Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33198](https://issues.apache.org/jira/browse/SPARK-33198) | getMigrationBlocks should not fail at missing files |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32881](https://issues.apache.org/jira/browse/SPARK-32881) | NoSuchElementException occurs during decommissioning |  Major | Spark Core | Dongjoon Hyun | Holden Karau |
| [SPARK-33202](https://issues.apache.org/jira/browse/SPARK-33202) | Fix BlockManagerDecommissioner to return the correct migration status |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33218](https://issues.apache.org/jira/browse/SPARK-33218) | Update misleading log messages for removed shuffle blocks |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32978](https://issues.apache.org/jira/browse/SPARK-32978) | Incorrect number of dynamic part metric |  Major | SQL | Yuming Wang | Yang Jie |
| [SPARK-33104](https://issues.apache.org/jira/browse/SPARK-33104) | Fix \`YarnClusterSuite.yarn-cluster should respect conf overrides in SparkHadoopUtil\` |  Blocker | Tests | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-33197](https://issues.apache.org/jira/browse/SPARK-33197) | Changes to spark.sql.analyzer.maxIterations do not take effect at runtime |  Major | SQL | Yuning Zhang | Yuning Zhang |
| [SPARK-33204](https://issues.apache.org/jira/browse/SPARK-33204) | \`Event Timeline\`  in Spark Job UI sometimes cannot be opened |  Minor | Web UI | akiyamaneko | akiyamaneko |
| [SPARK-33230](https://issues.apache.org/jira/browse/SPARK-33230) | FileOutputWriter jobs have duplicate JobIDs if launched in same second |  Major | SQL | Steve Loughran | Steve Loughran |
| [SPARK-33260](https://issues.apache.org/jira/browse/SPARK-33260) | SortExec produces incorrect results if sortOrder is a Stream |  Major | SQL | Ankur Dave | Ankur Dave |
| [SPARK-33258](https://issues.apache.org/jira/browse/SPARK-33258) | Add asc\_nulls\_\* and desc\_nulls\_\* methods to SparkR |  Major | R, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-33240](https://issues.apache.org/jira/browse/SPARK-33240) | Fail fast when fails to instantiate configured v2 session catalog |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-33183](https://issues.apache.org/jira/browse/SPARK-33183) | Bug in optimizer rule EliminateSorts |  Major | SQL | Allison Wang | Allison Wang |
| [SPARK-33268](https://issues.apache.org/jira/browse/SPARK-33268) | Fix bugs for casting data from/to PythonUserDefinedType |  Major | PySpark, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33267](https://issues.apache.org/jira/browse/SPARK-33267) | Query with having null in "in" condition against data source V2 source table supporting push down filter fails with NPE |  Critical | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-33270](https://issues.apache.org/jira/browse/SPARK-33270) | from\_json() cannot parse schema from schema\_of\_json() |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33292](https://issues.apache.org/jira/browse/SPARK-33292) | Make Literal ArrayBasedMapData string representation disambiguous |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33297](https://issues.apache.org/jira/browse/SPARK-33297) | Intermittent Compilation failure In GitHub Actions after SBT upgrade |  Major | Build | Hyukjin Kwon | Apache Spark |
| [SPARK-33290](https://issues.apache.org/jira/browse/SPARK-33290) | REFRESH TABLE should invalidate cache even though the table itself may not be cached |  Major | SQL | Chao Sun | Chao Sun |
| [SPARK-33306](https://issues.apache.org/jira/browse/SPARK-33306) | TimezoneID is needed when there cast from Date to String |  Major | SQL | EdisonWang | EdisonWang |
| [SPARK-33313](https://issues.apache.org/jira/browse/SPARK-33313) | R/run-tests.sh is not compatible with testthat \>= 3.0 |  Major | R, Tests | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-33257](https://issues.apache.org/jira/browse/SPARK-33257) | Support Column inputs in PySpark ordering functions (asc\*, desc\*) |  Major | PySpark, SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-33284](https://issues.apache.org/jira/browse/SPARK-33284) | In the Storage UI page, clicking any field to sort the table will cause the header content to be lost |  Major | Web UI | akiyamaneko | akiyamaneko |
| [SPARK-33214](https://issues.apache.org/jira/browse/SPARK-33214) | HiveExternalCatalogVersionsSuite shouldn't use or delete hard-coded /tmp directory |  Major | SQL, Tests | Erik Krogen | Erik Krogen |
| [SPARK-33338](https://issues.apache.org/jira/browse/SPARK-33338) | GROUP BY using literal map should not fail |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33343](https://issues.apache.org/jira/browse/SPARK-33343) | Fix the build with sbt to copy hadoop-client-runtime.jar |  Major | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-33314](https://issues.apache.org/jira/browse/SPARK-33314) | Avro reader drops rows |  Blocker | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-33362](https://issues.apache.org/jira/browse/SPARK-33362) | skipSchemaResolution should still require query to be resolved |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-33353](https://issues.apache.org/jira/browse/SPARK-33353) | Cache dependencies for Coursier with new sbt in GitHub Actions |  Minor | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-33342](https://issues.apache.org/jira/browse/SPARK-33342) | In the threadDump page, when a thread is blocked by anther thread, the blocking thread name and url were both displayed incorrect, causing the url to fail to jump. |  Minor | Web UI | akiyamaneko | akiyamaneko |
| [SPARK-33372](https://issues.apache.org/jira/browse/SPARK-33372) | Fix InSet bucket pruning |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32691](https://issues.apache.org/jira/browse/SPARK-32691) | Update commons-crypto to v1.1.0 |  Major | Spark Core, Tests | huangtianhua | huangtianhua |
| [SPARK-33397](https://issues.apache.org/jira/browse/SPARK-33397) | mistakenly generate markdown to html for available-patterns-for-shs-custom-executor-log-ur |  Major | Documentation | Kent Yao | Kent Yao |
| [SPARK-33405](https://issues.apache.org/jira/browse/SPARK-33405) | Upgrade commons-compress to 1.20 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33391](https://issues.apache.org/jira/browse/SPARK-33391) | element\_at with CreateArray not respect one based index |  Major | SQL | Leanken.Lin | Leanken.Lin |
| [SPARK-33339](https://issues.apache.org/jira/browse/SPARK-33339) | Pyspark application will hang due to non Exception |  Major | PySpark | lrz | lrz |
| [SPARK-33404](https://issues.apache.org/jira/browse/SPARK-33404) | "date\_trunc" expression returns incorrect results |  Major | SQL | Utkarsh Agarwal | Utkarsh Agarwal |
| [SPARK-33417](https://issues.apache.org/jira/browse/SPARK-33417) | Correct the behaviour of query filters in TPCDSQueryBenchmark |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33412](https://issues.apache.org/jira/browse/SPARK-33412) | OverwriteByExpression should resolve its delete condition based on the table relation not the input query |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-33402](https://issues.apache.org/jira/browse/SPARK-33402) | Jobs launched in same second have duplicate MapReduce JobIDs |  Major | Spark Core | Steve Loughran | Steve Loughran |
| [SPARK-33435](https://issues.apache.org/jira/browse/SPARK-33435) | DSv2: REFRESH TABLE should invalidate caches |  Major | SQL | Chao Sun | Chao Sun |
| [SPARK-33259](https://issues.apache.org/jira/browse/SPARK-33259) | Joining 3 streams results in incorrect output |  Critical | Structured Streaming | Michael | L. C. Hsieh |
| [SPARK-33439](https://issues.apache.org/jira/browse/SPARK-33439) | Use SERIAL\_SBT\_TESTS=1 for SQL module like Hive module |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33419](https://issues.apache.org/jira/browse/SPARK-33419) | Unexpected behavior when using SET commands before a query in SparkSession.sql |  Major | SQL | Kent Yao | Kent Yao |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-30733](https://issues.apache.org/jira/browse/SPARK-30733) | Fix SparkR tests per testthat and R version upgrade |  Critical | SparkR, SQL | Hyukjin Kwon |  |
| [SPARK-30988](https://issues.apache.org/jira/browse/SPARK-30988) | Add more edge-case exercising values to stats tests |  Major | SQL | Maxim Gekk |  |
| [SPARK-31248](https://issues.apache.org/jira/browse/SPARK-31248) | Flaky Test: ExecutorAllocationManagerSuite.interleaving add and remove |  Major | Tests | Hyukjin Kwon | wuyi |
| [SPARK-31932](https://issues.apache.org/jira/browse/SPARK-31932) | Add date/timestamp benchmarks for toHiveString |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31950](https://issues.apache.org/jira/browse/SPARK-31950) | Extract SQL keywords from the generated parser class in TableIdentifierParserSuite |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31926](https://issues.apache.org/jira/browse/SPARK-31926) | Fix concurrency issue for ThriftCLIService to getPortNumber |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31992](https://issues.apache.org/jira/browse/SPARK-31992) | Benchmark the EXCEPTION rebase mode |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32020](https://issues.apache.org/jira/browse/SPARK-32020) | Refactor the logic to compute SPARK\_HOME into a common place. |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-32072](https://issues.apache.org/jira/browse/SPARK-32072) | Unaligned benchmark results |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32071](https://issues.apache.org/jira/browse/SPARK-32071) | Benchmark make\_interval |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32142](https://issues.apache.org/jira/browse/SPARK-32142) | Keep the original tests and codes to avoid potential conflicts in dev in ParquetFilterSuite and ParquetIOSuite |  Major | SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32156](https://issues.apache.org/jira/browse/SPARK-32156) | Refactor two similar test cases from SPARK-31061 in HiveExternalCatalogSuite |  Major | Tests | JinxinTang | JinxinTang |
| [SPARK-32178](https://issues.apache.org/jira/browse/SPARK-32178) | Disable test-dependencies.sh from Jenkins jobs |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32233](https://issues.apache.org/jira/browse/SPARK-32233) | Disable SBT unidoc generation testing in Jenkins |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31723](https://issues.apache.org/jira/browse/SPARK-31723) | Flaky test: org.apache.spark.deploy.history.HistoryServerSuite |  Major | Spark Core | Wenchen Fan | Zhongwei Zhu |
| [SPARK-32231](https://issues.apache.org/jira/browse/SPARK-32231) | Use Hadoop 3 profile in AppVeyor SparkR build |  Major | Project Infra, R | Hyukjin Kwon | Dongjoon Hyun |
| [SPARK-32303](https://issues.apache.org/jira/browse/SPARK-32303) | Remove leftover from editable mode installation in PIP test |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32301](https://issues.apache.org/jira/browse/SPARK-32301) | Add a test case for toPandas to work with empty partitioned Spark DataFrame |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32318](https://issues.apache.org/jira/browse/SPARK-32318) | Add a test case to EliminateSortsSuite for protecting ORDER BY in DISTRIBUTE BY |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32363](https://issues.apache.org/jira/browse/SPARK-32363) | Flaky pip installation test in Jenkins |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32415](https://issues.apache.org/jira/browse/SPARK-32415) | Enable JSON tests for the allowNonNumericNumbers option |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32506](https://issues.apache.org/jira/browse/SPARK-32506) | flaky test: pyspark.mllib.tests.test\_streaming\_algorithms.StreamingLinearRegressionWithTests |  Major | MLlib | Wenchen Fan | Huaxin Gao |
| [SPARK-32528](https://issues.apache.org/jira/browse/SPARK-32528) | The analyze method should make sure the plan is analyzed |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32393](https://issues.apache.org/jira/browse/SPARK-32393) | Add tests for all the character types in PostgresIntegrationSuite |  Minor | SQL | Jakub Korzeniowski | Takeshi Yamamuro |
| [SPARK-32599](https://issues.apache.org/jira/browse/SPARK-32599) | Check the TEXTFILE file format in HiveSerDeReadWriteSuite |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32466](https://issues.apache.org/jira/browse/SPARK-32466) | Add support to catch SparkPlan regression base on TPC-DS queries |  Major | SQL | wuyi | wuyi |
| [SPARK-32622](https://issues.apache.org/jira/browse/SPARK-32622) | Add case-sensitivity test for ORC predicate pushdown |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-32647](https://issues.apache.org/jira/browse/SPARK-32647) | Report SparkR test results with JUnit reporter |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32669](https://issues.apache.org/jira/browse/SPARK-32669) | expression unit tests should explore all cases that can lead to null result |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32747](https://issues.apache.org/jira/browse/SPARK-32747) | Deduplicate configuration set/unset in test\_sparkSQL\_arrow.R |  Major | R, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32826](https://issues.apache.org/jira/browse/SPARK-32826) | Add test case for get null columns using SparkGetColumnsOperation |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-32876](https://issues.apache.org/jira/browse/SPARK-32876) | Change default fallback versions in HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32884](https://issues.apache.org/jira/browse/SPARK-32884) | Mark TPCDSQuery\*Suite as ExtendedSQLTest |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32688](https://issues.apache.org/jira/browse/SPARK-32688) | LiteralGenerator for float and double does not generate special values |  Minor | SQL | Tanel Kiis | Tanel Kiis |
| [SPARK-33021](https://issues.apache.org/jira/browse/SPARK-33021) | Move functions related test cases into test\_functions.py |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33051](https://issues.apache.org/jira/browse/SPARK-33051) | Uses setup-r to install R in GitHub Actions build |  Major | Project Infra, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33042](https://issues.apache.org/jira/browse/SPARK-33042) | Add a test case to ensure changes to spark.sql.optimizer.maxIterations take effect at runtime |  Major | SQL | Yuning Zhang | Yuning Zhang |
| [SPARK-33153](https://issues.apache.org/jira/browse/SPARK-33153) | HiveExternalCatalogVersionsSuite fails on Ubuntu 20.04 |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33165](https://issues.apache.org/jira/browse/SPARK-33165) | Remove dependencies(scalatest,scalactic) from Benchmark |  Major | SQL, Tests | Takeshi Yamamuro |  |
| [SPARK-33169](https://issues.apache.org/jira/browse/SPARK-33169) | Check propagation of datasource options to underlying file system for built-in file-based datasources |  Major | SQL | Maxim Gekk |  |
| [SPARK-33190](https://issues.apache.org/jira/browse/SPARK-33190) | Set upperbound of PyArrow version in GitHub Actions |  Major | PySpark, Tests | Hyukjin Kwon | Apache Spark |
| [SPARK-33191](https://issues.apache.org/jira/browse/SPARK-33191) | Fix PySpark test cases in YarnClusterSuite |  Major | PySpark, Tests, YARN | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33203](https://issues.apache.org/jira/browse/SPARK-33203) | Pyspark ml tests failing with rounding errors |  Minor | ML, PySpark | Alessandro Patti | Alessandro Patti |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-30122](https://issues.apache.org/jira/browse/SPARK-30122) | Allow setting serviceAccountName for executor pods |  Major | Kubernetes, Spark Core | Juho Mäkinen | Artsiom Yudovin |
| [SPARK-20628](https://issues.apache.org/jira/browse/SPARK-20628) | Keep track of nodes which are going to be shut down & avoid scheduling new tasks |  Major | Spark Core | Holden Karau | Holden Karau |
| [SPARK-30840](https://issues.apache.org/jira/browse/SPARK-30840) | Add version property for ConfigEntry and ConfigBuilder |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-30867](https://issues.apache.org/jira/browse/SPARK-30867) | add FValueRegressionTest |  Major | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-30887](https://issues.apache.org/jira/browse/SPARK-30887) | Add version information to the configuration of Deploy |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30910](https://issues.apache.org/jira/browse/SPARK-30910) | Add version information to the configuration of R |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30909](https://issues.apache.org/jira/browse/SPARK-30909) | Add version information to the configuration of Python |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30841](https://issues.apache.org/jira/browse/SPARK-30841) | Add version information to the configuration of SQL |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-30888](https://issues.apache.org/jira/browse/SPARK-30888) | Add version information to the configuration of Network |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30908](https://issues.apache.org/jira/browse/SPARK-30908) | Add version information to the configuration of Kryo |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30891](https://issues.apache.org/jira/browse/SPARK-30891) | Add version information to the configuration of History |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30912](https://issues.apache.org/jira/browse/SPARK-30912) | Add version information to the configuration of Streaming.scala |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-29212](https://issues.apache.org/jira/browse/SPARK-29212) | Add common classes without using JVM backend |  Major | ML, PySpark | zhengruifeng | Maciej Szymkiewicz |
| [SPARK-30889](https://issues.apache.org/jira/browse/SPARK-30889) | Add version information to the configuration of Worker |  Major | Spark Core | jiaan.geng |  |
| [SPARK-30913](https://issues.apache.org/jira/browse/SPARK-30913) | Add version information to the configuration of Tests.scala |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30914](https://issues.apache.org/jira/browse/SPARK-30914) | Add version information to the configuration of UI |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30776](https://issues.apache.org/jira/browse/SPARK-30776) | Support FValueRegressionSelector for continuous features and continuous labels |  Major | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-31002](https://issues.apache.org/jira/browse/SPARK-31002) | Add version information to the configuration of Core |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-31077](https://issues.apache.org/jira/browse/SPARK-31077) | Remove ChiSqSelector dependency on mllib.ChiSqSelectorModel |  Major | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-31062](https://issues.apache.org/jira/browse/SPARK-31062) | Improve Spark Decommissioning K8s test relability |  Minor | Kubernetes, Spark Core, Tests | Holden Karau | Holden Karau |
| [SPARK-31092](https://issues.apache.org/jira/browse/SPARK-31092) | Add version information to the configuration of Yarn |  Major | Spark Core, YARN | jiaan.geng | jiaan.geng |
| [SPARK-31118](https://issues.apache.org/jira/browse/SPARK-31118) | Add version information to the configuration of K8S |  Major | Kubernetes, Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-31109](https://issues.apache.org/jira/browse/SPARK-31109) | Add version information to the configuration of Mesos |  Major | Mesos | jiaan.geng | jiaan.geng |
| [SPARK-30911](https://issues.apache.org/jira/browse/SPARK-30911) | Add version information to the configuration of Status |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-30874](https://issues.apache.org/jira/browse/SPARK-30874) | Support Postgres Kerberos login in JDBC connector |  Major | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-25355](https://issues.apache.org/jira/browse/SPARK-25355) | Support --proxy-user for Spark on K8s |  Major | Kubernetes, Spark Core | Stavros Kontopoulos | Pedro Rossi |
| [SPARK-31125](https://issues.apache.org/jira/browse/SPARK-31125) | When processing new K8s state snapshots Spark treats Terminating nodes as terminated. |  Minor | Kubernetes, Spark Core | Holden Karau | Holden Karau |
| [SPARK-30981](https://issues.apache.org/jira/browse/SPARK-30981) | Fix flaky "Test basic decommissioning" test |  Major | Kubernetes, Spark Core, Tests | Dongjoon Hyun | Holden Karau |
| [SPARK-30836](https://issues.apache.org/jira/browse/SPARK-30836) | Improve the decommissioning K8s integration tests |  Minor | Kubernetes, Spark Core | Holden Karau | Holden Karau |
| [SPARK-31138](https://issues.apache.org/jira/browse/SPARK-31138) | Add ANOVASelector |  Major | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-31141](https://issues.apache.org/jira/browse/SPARK-31141) | Add version information to the configuration of Dstreams |  Major | DStreams | jiaan.geng | jiaan.geng |
| [SPARK-31228](https://issues.apache.org/jira/browse/SPARK-31228) | Add version information to the configuration of Kafka |  Major | DStreams | jiaan.geng | jiaan.geng |
| [SPARK-31243](https://issues.apache.org/jira/browse/SPARK-31243) | add ANOVATest and FValueTest to PySpark |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-31215](https://issues.apache.org/jira/browse/SPARK-31215) | Add version information to the static configuration of SQL |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-31269](https://issues.apache.org/jira/browse/SPARK-31269) | Supplement version for configuration only appear in configuration doc |  Major | Documentation | jiaan.geng | jiaan.geng |
| [SPARK-31282](https://issues.apache.org/jira/browse/SPARK-31282) | Supplement version for configuration appear in security doc |  Major | Documentation | jiaan.geng | jiaan.geng |
| [SPARK-31295](https://issues.apache.org/jira/browse/SPARK-31295) | Supplement version for configuration appear in doc |  Major | Documentation | jiaan.geng | jiaan.geng |
| [SPARK-31279](https://issues.apache.org/jira/browse/SPARK-31279) | Add version information to the configuration of Hive |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-31253](https://issues.apache.org/jira/browse/SPARK-31253) | add metrics to AQE shuffle reader |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31304](https://issues.apache.org/jira/browse/SPARK-31304) | Add ANOVATest example |  Minor | Documentation, ML | Huaxin Gao | kevin yu |
| [SPARK-31315](https://issues.apache.org/jira/browse/SPARK-31315) | SQLQueryTestSuite: Display the total compile time for generated java code. |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-31316](https://issues.apache.org/jira/browse/SPARK-31316) | SQLQueryTestSuite: Display the total generate time for generated java code. |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-30820](https://issues.apache.org/jira/browse/SPARK-30820) | Add FMClassifier to SparkR |  Major | ML, SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-31208](https://issues.apache.org/jira/browse/SPARK-31208) | Expose the ability for user to cleanup shuffle files |  Major | Kubernetes, Spark Core | Holden Karau | Holden Karau |
| [SPARK-30818](https://issues.apache.org/jira/browse/SPARK-30818) | Add LinearRegression wrapper to SparkR |  Major | ML, SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-31021](https://issues.apache.org/jira/browse/SPARK-31021) | Support MariaDB Kerberos login in JDBC connector |  Major | Spark Core | Gabor Somogyi | Gabor Somogyi |
| [SPARK-30819](https://issues.apache.org/jira/browse/SPARK-30819) | Add FMRegressor wrapper to SparkR |  Major | ML, SparkR | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-31394](https://issues.apache.org/jira/browse/SPARK-31394) | Support for Kubernetes NFS volume mounts |  Major | Kubernetes, Spark Core | Seongjin Cho | Seongjin Cho |
| [SPARK-29905](https://issues.apache.org/jira/browse/SPARK-29905) | ExecutorPodsLifecycleManager has sub-optimal behavior with dynamic allocation |  Minor | Kubernetes, Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-30949](https://issues.apache.org/jira/browse/SPARK-30949) | Driver cores in kubernetes are coupled with container resources, not spark.driver.cores |  Major | Kubernetes, Spark Core | Onur Satici | Onur Satici |
| [SPARK-31272](https://issues.apache.org/jira/browse/SPARK-31272) | Support DB2 Kerberos login in JDBC connector |  Major | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-31547](https://issues.apache.org/jira/browse/SPARK-31547) | Upgrade Genjavadoc to 0.16 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31533](https://issues.apache.org/jira/browse/SPARK-31533) | Enable DB2IntegrationSuite test and upgrade the DB2 docker inside |  Major | SQL, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-31307](https://issues.apache.org/jira/browse/SPARK-31307) | Add FValueTest Examples |  Minor | Documentation, ML | Huaxin Gao | kevin yu |
| [SPARK-30642](https://issues.apache.org/jira/browse/SPARK-30642) | LinearSVC blockify input vectors |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-31127](https://issues.apache.org/jira/browse/SPARK-31127) | Add abstract Selector |  Major | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-30659](https://issues.apache.org/jira/browse/SPARK-30659) | LogisticRegression blockify input vectors |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-30660](https://issues.apache.org/jira/browse/SPARK-30660) | LinearRegression blockify input vectors |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-31652](https://issues.apache.org/jira/browse/SPARK-31652) | Add ANOVASelector and FValueSelector to PySpark |  Major | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-31656](https://issues.apache.org/jira/browse/SPARK-31656) | AFT blockify input vectors |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-31575](https://issues.apache.org/jira/browse/SPARK-31575) | Synchronise global JVM security configuration modification |  Minor | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-30699](https://issues.apache.org/jira/browse/SPARK-30699) | GMM blockify input vectors |  Minor | ML, PySpark | zhengruifeng | zhengruifeng |
| [SPARK-31708](https://issues.apache.org/jira/browse/SPARK-31708) | Add docs and examples for ANOVASelector and FValueSelector |  Major | Documentation, ML | Huaxin Gao | Huaxin Gao |
| [SPARK-20732](https://issues.apache.org/jira/browse/SPARK-20732) | Copy cache data when node is being shut down |  Major | Spark Core | Holden Karau | Prakhar Jain |
| [SPARK-30352](https://issues.apache.org/jira/browse/SPARK-30352) | DataSourceV2: Add CURRENT\_CATALOG function |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-25351](https://issues.apache.org/jira/browse/SPARK-25351) | Handle Pandas category type when converting from Python with Arrow |  Major | PySpark | Bryan Cutler | Jalpan Randeri |
| [SPARK-31830](https://issues.apache.org/jira/browse/SPARK-31830) | Consistent error handling for datetime formatting functions |  Major | SQL | Kent Yao | Apache Spark |
| [SPARK-27217](https://issues.apache.org/jira/browse/SPARK-27217) | Nested schema pruning doesn't work for aggregation e.g. \`sum\`. |  Major | SQL | colin fang | L. C. Hsieh |
| [SPARK-31939](https://issues.apache.org/jira/browse/SPARK-31939) | Fix Parsing day of year when year field pattern is missing |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-21117](https://issues.apache.org/jira/browse/SPARK-21117) | Built-in SQL Function Support - WIDTH\_BUCKET |  Major | SQL | Yuming Wang | Takeshi Yamamuro |
| [SPARK-31736](https://issues.apache.org/jira/browse/SPARK-31736) | Nested column pruning for other operators |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26905](https://issues.apache.org/jira/browse/SPARK-26905) | Revisit reserved/non-reserved keywords based on the ANSI SQL standard |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-31824](https://issues.apache.org/jira/browse/SPARK-31824) | DAGSchedulerSuite: Improve and reuse completeShuffleMapStageSuccessfully |  Major | Spark Core | jiaan.geng | jiaan.geng |
| [SPARK-31337](https://issues.apache.org/jira/browse/SPARK-31337) | Support MS Sql Kerberos login in JDBC connector |  Major | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-31960](https://issues.apache.org/jira/browse/SPARK-31960) | Only populate Hadoop classpath for no-hadoop build |  Major | YARN | DB Tsai | DB Tsai |
| [SPARK-32033](https://issues.apache.org/jira/browse/SPARK-32033) | Use new poll API in Kafka connector executor side to avoid infinite wait |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-31893](https://issues.apache.org/jira/browse/SPARK-31893) | Add a generic ClassificationSummary trait |  Minor | ML | Huaxin Gao | Huaxin Gao |
| [SPARK-27702](https://issues.apache.org/jira/browse/SPARK-27702) | Allow using some alternatives for service accounts |  Minor | Kubernetes, Spark Core | Udbhav Agrawal | Udbhav Agrawal |
| [SPARK-31798](https://issues.apache.org/jira/browse/SPARK-31798) | Return map output metadata from shuffle writers |  Major | Shuffle | Matt Cheah | Matt Cheah |
| [SPARK-32049](https://issues.apache.org/jira/browse/SPARK-32049) | Upgrade to Oracle JDBC Driver 8 |  Major | SQL, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-20249](https://issues.apache.org/jira/browse/SPARK-20249) | Add summary for LinearSVCModel |  Minor | ML, PySpark | Jeff Zhang | Huaxin Gao |
| [SPARK-31845](https://issues.apache.org/jira/browse/SPARK-31845) | DAGSchedulerSuite: Reuse completeNextStageWithFetchFailure and support checkAnswer |  Major | Spark Core, Tests | jiaan.geng | jiaan.geng |
| [SPARK-31336](https://issues.apache.org/jira/browse/SPARK-31336) | Support Oracle Kerberos login in JDBC connector |  Major | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23631](https://issues.apache.org/jira/browse/SPARK-23631) | Add summary to RandomForestClassificationModel |  Minor | ML | Evan Zamir | Huaxin Gao |
| [SPARK-32171](https://issues.apache.org/jira/browse/SPARK-32171) | change file locations for use db and refresh table |  Trivial | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-31317](https://issues.apache.org/jira/browse/SPARK-31317) | Add withField method to Column class |  Major | SQL | DB Tsai | fqaiser94 |
| [SPARK-32211](https://issues.apache.org/jira/browse/SPARK-32211) | Pin mariadb-plugin-gssapi-server version to fix MariaDBKrbIntegrationSuite |  Major | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-32245](https://issues.apache.org/jira/browse/SPARK-32245) | Implement the base to run Spark tests in GitHun Actions |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30010](https://issues.apache.org/jira/browse/SPARK-30010) | Remove deprecated SparkConf.setAll(Traversable) |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-32105](https://issues.apache.org/jira/browse/SPARK-32105) | Refactor current script transform code |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32292](https://issues.apache.org/jira/browse/SPARK-32292) | Run only relevant builds in parallel at Github Actions |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32252](https://issues.apache.org/jira/browse/SPARK-32252) | Enable doctests in run-tests.py back |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32138](https://issues.apache.org/jira/browse/SPARK-32138) | Drop Python 2, 3.4 and 3.5 in codes and documentation |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32266](https://issues.apache.org/jira/browse/SPARK-32266) | Run smoke tests after a commit is pushed |  Major | Project Infra | Gengliang Wang | Dongjoon Hyun |
| [SPARK-32316](https://issues.apache.org/jira/browse/SPARK-32316) | Test PySpark with Python 3.8 in Github Actions as well |  Major | Project Infra, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32140](https://issues.apache.org/jira/browse/SPARK-32140) | Add summary to FMClassificationModel |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-32335](https://issues.apache.org/jira/browse/SPARK-32335) | Remove Python2 test from K8s IT |  Major | Kubernetes, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32215](https://issues.apache.org/jira/browse/SPARK-32215) | Expose end point on Master so that it can be informed about decommissioned workers out of band |  Major | Spark Core | Devesh Agrawal |  |
| [SPARK-21040](https://issues.apache.org/jira/browse/SPARK-21040) | On executor/worker decommission consider speculatively re-launching current tasks |  Major | Spark Core | Holden Karau | Prakhar Jain |
| [SPARK-29802](https://issues.apache.org/jira/browse/SPARK-29802) | Update remaining python scripts in repo to python3 shebang |  Major | PySpark | Shane Knapp | Sean R. Owen |
| [SPARK-20629](https://issues.apache.org/jira/browse/SPARK-20629) | Copy shuffle data when nodes are being shut down |  Major | Kubernetes, Spark Core | Holden Karau | Holden Karau |
| [SPARK-32330](https://issues.apache.org/jira/browse/SPARK-32330) | Preserve shuffled hash join build side partitioning |  Major | SQL | Cheng Su | Cheng Su |
| [SPARK-32367](https://issues.apache.org/jira/browse/SPARK-32367) | Fix typo of parameter in KubernetesTestComponents |  Trivial | Kubernetes | merrily01 | merrily01 |
| [SPARK-24266](https://issues.apache.org/jira/browse/SPARK-24266) | Spark client terminates while driver is still running |  Critical | Kubernetes, Spark Core | Chun Chen | Stijn De Haes |
| [SPARK-32286](https://issues.apache.org/jira/browse/SPARK-32286) | Coalesce bucketed tables for shuffled hash join if applicable |  Trivial | SQL | Cheng Su | Cheng Su |
| [SPARK-29292](https://issues.apache.org/jira/browse/SPARK-29292) | Fix internal usages of mutable collection for Seq in 2.13 |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-32217](https://issues.apache.org/jira/browse/SPARK-32217) | Track whether the worker is also being decommissioned along with an executor |  Major | Spark Core | Devesh Agrawal | Devesh Agrawal |
| [SPARK-32398](https://issues.apache.org/jira/browse/SPARK-32398) | Upgrade to scalatest 3.2.0 for Scala 2.13.3 compatibility |  Major | ML, Spark Core, SQL, Structured Streaming, Tests | Sean R. Owen | Sean R. Owen |
| [SPARK-32375](https://issues.apache.org/jira/browse/SPARK-32375) | Implement TableCatalog for JDBC |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32408](https://issues.apache.org/jira/browse/SPARK-32408) | Enable crossPaths back to prevent side effects |  Major | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32287](https://issues.apache.org/jira/browse/SPARK-32287) | Flaky Test: ExecutorAllocationManagerSuite.add executors default profile |  Major | Spark Core, Tests | wuyi | Thomas Graves |
| [SPARK-32419](https://issues.apache.org/jira/browse/SPARK-32419) | Leverage Conda environment at pip packaging test in GitHub Actions |  Major | Build, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32422](https://issues.apache.org/jira/browse/SPARK-32422) | Don't skip pandas UDF tests in IntegratedUDFTestUtils |  Major | Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32434](https://issues.apache.org/jira/browse/SPARK-32434) | Support Scala 2.13 in AbstractCommandBuilder and load-spark-env scripts |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32436](https://issues.apache.org/jira/browse/SPARK-32436) | Initialize numNonEmptyBlocks in HighlyCompressedMapStatus.readExternal |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32438](https://issues.apache.org/jira/browse/SPARK-32438) | Use HashMap.withDefaultValue in RDDSuite |  Major | Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32440](https://issues.apache.org/jira/browse/SPARK-32440) | Make BlockManagerSuite robust from Scala object size difference |  Major | Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32441](https://issues.apache.org/jira/browse/SPARK-32441) | Update json4s for Scala 2.13 |  Major | Build, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32442](https://issues.apache.org/jira/browse/SPARK-32442) | Fix TaskSetManagerSuite by hiding \`org.apache.spark.FakeSchedulerBackend\` |  Major | Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32448](https://issues.apache.org/jira/browse/SPARK-32448) | Fix mismatched versions in test artifacts |  Minor | Kubernetes, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32383](https://issues.apache.org/jira/browse/SPARK-32383) | Preserve hash join (BHJ and SHJ) stream side ordering |  Trivial | SQL | Cheng Su | Cheng Su |
| [SPARK-32179](https://issues.apache.org/jira/browse/SPARK-32179) | Replace and redesign the documentation base |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32188](https://issues.apache.org/jira/browse/SPARK-32188) | API Reference |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32435](https://issues.apache.org/jira/browse/SPARK-32435) | Remove heapq3 port from Python 3 |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32420](https://issues.apache.org/jira/browse/SPARK-32420) | Add handling for unique key in non-codegen hash join |  Trivial | SQL | Cheng Su | Cheng Su |
| [SPARK-32424](https://issues.apache.org/jira/browse/SPARK-32424) | Fix silent data change for timestamp parsing if overflow happens |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32443](https://issues.apache.org/jira/browse/SPARK-32443) | Fix testCommandAvailable to use POSIX compatible \`command -v\` |  Major | Spark Core | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-32382](https://issues.apache.org/jira/browse/SPARK-32382) | Override table renaming in JDBC dialects |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32401](https://issues.apache.org/jira/browse/SPARK-32401) | Migrate function related commands to new framework |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-32473](https://issues.apache.org/jira/browse/SPARK-32473) | Use === instead IndexSeqView |  Major | Spark Core, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32477](https://issues.apache.org/jira/browse/SPARK-32477) | JsonProtocol.accumulablesToJson should be deterministic |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32449](https://issues.apache.org/jira/browse/SPARK-32449) | Add summary to MultilayerPerceptronClassificationModel |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-32476](https://issues.apache.org/jira/browse/SPARK-32476) | ResourceAllocator.availableAddrs should be deterministic |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32487](https://issues.apache.org/jira/browse/SPARK-32487) | Remove javax.ws.rs.NotFoundException from \`import\` in StagesResource/OneApplicationResource |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32248](https://issues.apache.org/jira/browse/SPARK-32248) | Recover JDK 11 builds in Github Actions |  Major | Project Infra | Hyukjin Kwon | Dongjoon Hyun |
| [SPARK-32491](https://issues.apache.org/jira/browse/SPARK-32491) | Do not install SparkR in test-only mode in testing script |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32493](https://issues.apache.org/jira/browse/SPARK-32493) | Manually install R instead of using setup-r in GitHub Actions |  Major | Project Infra, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32496](https://issues.apache.org/jira/browse/SPARK-32496) | Include GitHub Action file as the changes in testing |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32497](https://issues.apache.org/jira/browse/SPARK-32497) | Installs qpdf package for CRAN check in GitHub Actions |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32489](https://issues.apache.org/jira/browse/SPARK-32489) | Pass all \`core\` module UTs in Scala 2.13 |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32198](https://issues.apache.org/jira/browse/SPARK-32198) | Don't fail running jobs when decommissioned executors finally go away |  Major | Spark Core | Devesh Agrawal | Devesh Agrawal |
| [SPARK-32199](https://issues.apache.org/jira/browse/SPARK-32199) | Clear shuffle state when decommissioned nodes/executors are finally lost |  Major | Spark Core | Devesh Agrawal | Devesh Agrawal |
| [SPARK-32482](https://issues.apache.org/jira/browse/SPARK-32482) | Eliminate deprecated poll(long) API calls to avoid infinite wait in tests |  Major | Structured Streaming, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-32421](https://issues.apache.org/jira/browse/SPARK-32421) | Add code-gen for shuffled hash join |  Trivial | SQL | Cheng Su | Cheng Su |
| [SPARK-30276](https://issues.apache.org/jira/browse/SPARK-30276) | Support Filter expression allows simultaneous use of DISTINCT |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-32520](https://issues.apache.org/jira/browse/SPARK-32520) | Flaky Test: KafkaSourceStressSuite.stress test with multiple topics and partitions |  Major | Structured Streaming, Tests | Hyukjin Kwon | Jungtaek Lim |
| [SPARK-32507](https://issues.apache.org/jira/browse/SPARK-32507) | Main Page |  Major | Documentation | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32402](https://issues.apache.org/jira/browse/SPARK-32402) | Implement ALTER TABLE in JDBC Table Catalog |  Major | SQL | Maxim Gekk | Huaxin Gao |
| [SPARK-31197](https://issues.apache.org/jira/browse/SPARK-31197) | Exit the executor once all tasks & migrations are finished |  Minor | Kubernetes, Spark Core | Holden Karau | Holden Karau |
| [SPARK-25557](https://issues.apache.org/jira/browse/SPARK-25557) | ORC predicate pushdown for nested fields |  Major | SQL | DB Tsai | L. C. Hsieh |
| [SPARK-32191](https://issues.apache.org/jira/browse/SPARK-32191) | Migration Guide |  Major | Documentation, PySpark | Hyukjin Kwon | L. C. Hsieh |
| [SPARK-32554](https://issues.apache.org/jira/browse/SPARK-32554) | Remove the words "experimental" in the k8s document |  Minor | Documentation, Kubernetes | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32403](https://issues.apache.org/jira/browse/SPARK-32403) | SCRIP TRANSFORM Extract common method from process row to avoid repeated judgement |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32540](https://issues.apache.org/jira/browse/SPARK-32540) | Eliminate filter clause in aggregate |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-32400](https://issues.apache.org/jira/browse/SPARK-32400) | Test coverage of HiveScripTransformationExec |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32250](https://issues.apache.org/jira/browse/SPARK-32250) | Reenable MasterSuite's "Master should avoid dead loop while launching executor failed in Worker" |  Major | Spark Core, Tests | Hyukjin Kwon | wuyi |
| [SPARK-31198](https://issues.apache.org/jira/browse/SPARK-31198) | Use graceful decommissioning as part of dynamic scaling |  Major | Kubernetes, Spark Core | Holden Karau | Holden Karau |
| [SPARK-32357](https://issues.apache.org/jira/browse/SPARK-32357) | Publish failed and succeeded test reports in GitHub Actions |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32590](https://issues.apache.org/jira/browse/SPARK-32590) | Remove fullOutput from RowDataSourceScanExec |  Minor | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-32119](https://issues.apache.org/jira/browse/SPARK-32119) | ExecutorPlugin doesn't work with Standalone Cluster and Kubernetes with --jars |  Major | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32399](https://issues.apache.org/jira/browse/SPARK-32399) | Support full outer join in shuffled hash join |  Minor | SQL | Cheng Su | Cheng Su |
| [SPARK-32606](https://issues.apache.org/jira/browse/SPARK-32606) | Remove the fork of action-download-artifact in test\_report.yml |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32605](https://issues.apache.org/jira/browse/SPARK-32605) | Remove the fork of action-surefire-report in test\_report.yml |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32613](https://issues.apache.org/jira/browse/SPARK-32613) | DecommissionWorkerSuite has started failing sporadically again |  Major | Spark Core | Devesh Agrawal |  |
| [SPARK-32645](https://issues.apache.org/jira/browse/SPARK-32645) | Upload unit-tests.log as an artifact |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32651](https://issues.apache.org/jira/browse/SPARK-32651) | decommission switch configuration should have the highest hierarchy |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32608](https://issues.apache.org/jira/browse/SPARK-32608) | Script Transform DELIMIT  value should be formatted |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32655](https://issues.apache.org/jira/browse/SPARK-32655) | Support appId/execId placeholder in K8s SPARK\_EXECUTOR\_DIRS |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32657](https://issues.apache.org/jira/browse/SPARK-32657) | Decommissioning Integration Test checks for old string |  Major | Kubernetes | Holden Karau | Holden Karau |
| [SPARK-32653](https://issues.apache.org/jira/browse/SPARK-32653) | Decommissioned host/executor should be considered as inactive in TaskSchedulerImpl |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32607](https://issues.apache.org/jira/browse/SPARK-32607) | Script Transformation no-serde \`TOK\_TABLEROWFORMATLINES\` only support \`\\n\` |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32667](https://issues.apache.org/jira/browse/SPARK-32667) | Scrip transformation no-serde mode when column less then output length ,  Use null fill |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32682](https://issues.apache.org/jira/browse/SPARK-32682) | Use workflow\_dispatch to enable manual test triggers |  Major | Project Infra | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32526](https://issues.apache.org/jira/browse/SPARK-32526) | Let sql/catalyst module tests pass for Scala 2.13 |  Minor | SQL | Yang Jie | Yang Jie |
| [SPARK-32649](https://issues.apache.org/jira/browse/SPARK-32649) | Optimize BHJ/SHJ inner and semi join with empty hashed relation |  Trivial | SQL | Cheng Su | Cheng Su |
| [SPARK-32182](https://issues.apache.org/jira/browse/SPARK-32182) | Getting Started - Quickstart |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32695](https://issues.apache.org/jira/browse/SPARK-32695) | Add 'build' and 'project/build.properties' into cache key of SBT and Zinc |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32643](https://issues.apache.org/jira/browse/SPARK-32643) | [Cleanup] Consolidate state kept in ExecutorDecommissionInfo with TaskSetManager.tidToExecutorKillTimeMapping |  Minor | Spark Core | Devesh Agrawal | Devesh Agrawal |
| [SPARK-32713](https://issues.apache.org/jira/browse/SPARK-32713) | Support execId placeholder in executor PVC conf |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32183](https://issues.apache.org/jira/browse/SPARK-32183) | User Guide - PySpark Usage Guide for Pandas with Apache Arrow |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32629](https://issues.apache.org/jira/browse/SPARK-32629) | Record metrics of extra BitSet/HashSet in full outer shuffled hash join |  Trivial | SQL | Cheng Su | Cheng Su |
| [SPARK-32481](https://issues.apache.org/jira/browse/SPARK-32481) | Support truncate table to move the data to trash |  Minor | Spark Core, SQL | jobit mathew | Udbhav Agrawal |
| [SPARK-32592](https://issues.apache.org/jira/browse/SPARK-32592) | Make \`DataFrameReader.table\` take the specified options |  Minor | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-32190](https://issues.apache.org/jira/browse/SPARK-32190) | Development - Contribution Guide |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32579](https://issues.apache.org/jira/browse/SPARK-32579) | Implement JDBCScan/ScanBuilder/WriteBuilder |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-32756](https://issues.apache.org/jira/browse/SPARK-32756) | Fix CaseInsensitiveMap in Scala 2.13 |  Minor | SQL | Karol Chmist | Karol Chmist |
| [SPARK-32783](https://issues.apache.org/jira/browse/SPARK-32783) | Development - Testing PySpark |  Major | docs, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32186](https://issues.apache.org/jira/browse/SPARK-32186) | Development - Debugging |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32777](https://issues.apache.org/jira/browse/SPARK-32777) | Aggregation support aggregate function with multiple foldable expressions. |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-32180](https://issues.apache.org/jira/browse/SPARK-32180) | Getting Started - Installation |  Minor | Documentation, PySpark | Hyukjin Kwon | Rohit Mishra |
| [SPARK-30090](https://issues.apache.org/jira/browse/SPARK-30090) | Update REPL for 2.13 |  Major | Spark Shell | Sean R. Owen | Karol Chmist |
| [SPARK-32869](https://issues.apache.org/jira/browse/SPARK-32869) | Ignore deprecation warnings for build with Scala-2.13 and sbt |  Minor | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-31847](https://issues.apache.org/jira/browse/SPARK-31847) | DAGSchedulerSuite: Rewrite the test framework to cover most of the existing major features of the Spark Scheduler, mock the necessary part wisely, and make the test framework better extendable. |  Major | Spark Core, Tests | jiaan.geng | jiaan.geng |
| [SPARK-32873](https://issues.apache.org/jira/browse/SPARK-32873) | Fix code which causes error when build with sbt and Scala 2.13 |  Minor | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32854](https://issues.apache.org/jira/browse/SPARK-32854) | Avoid per-row join type check in stream-stream join |  Trivial | Structured Streaming | Cheng Su | Cheng Su |
| [SPARK-32882](https://issues.apache.org/jira/browse/SPARK-32882) | Remove python2 installation in K8s python image |  Major | Kubernetes | William Hyun | William Hyun |
| [SPARK-32871](https://issues.apache.org/jira/browse/SPARK-32871) | Append toMap to Map#filterKeys if the result of filter is concatenated with another Map for Scala 2.13 |  Minor | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32850](https://issues.apache.org/jira/browse/SPARK-32850) | Simply the RPC message flow of decommission |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32890](https://issues.apache.org/jira/browse/SPARK-32890) | Pass all \`sql/hive\` module UTs in Scala 2.13 |  Major | SQL | Yang Jie | Yang Jie |
| [SPARK-32926](https://issues.apache.org/jira/browse/SPARK-32926) | Add Scala 2.13 build test in GitHub Action |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32909](https://issues.apache.org/jira/browse/SPARK-32909) | Pass all \`sql/hive-thriftserver\` module UTs in Scala 2.13 |  Major | SQL | Yang Jie | Yang Jie |
| [SPARK-27951](https://issues.apache.org/jira/browse/SPARK-27951) | ANSI SQL: NTH\_VALUE function |  Major | SQL | Zhu, Lipeng | jiaan.geng |
| [SPARK-32936](https://issues.apache.org/jira/browse/SPARK-32936) | Pass all \`external/avro\` module UTs in Scala 2.13 |  Major | SQL | Yang Jie | Yang Jie |
| [SPARK-32808](https://issues.apache.org/jira/browse/SPARK-32808) | Pass all \`sql/core\` module UTs in Scala 2.13 |  Major | SQL | Yang Jie | Yang Jie |
| [SPARK-32189](https://issues.apache.org/jira/browse/SPARK-32189) | Development - Setting up PyCharm |  Major | Documentation, PySpark | Hyukjin Kwon | Haejoon Lee |
| [SPARK-32964](https://issues.apache.org/jira/browse/SPARK-32964) | Pass all \`streaming\` module UTs in Scala 2.13 |  Minor | DStreams, Spark Core | Yang Jie | Yang Jie |
| [SPARK-32971](https://issues.apache.org/jira/browse/SPARK-32971) | Support dynamic PVC creation/deletion for K8s executors |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32714](https://issues.apache.org/jira/browse/SPARK-32714) | Port pyspark-stubs |  Major | PySpark | Hyukjin Kwon | Maciej Szymkiewicz |
| [SPARK-32987](https://issues.apache.org/jira/browse/SPARK-32987) | Pass all \`mesos\` module UTs in Scala 2.13 |  Major | Mesos | Yang Jie | Yang Jie |
| [SPARK-32990](https://issues.apache.org/jira/browse/SPARK-32990) | Migrate REFRESH TABLE to new resolution framework |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-32997](https://issues.apache.org/jira/browse/SPARK-32997) | Support dynamic PVC creation/deletion for K8s driver |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32972](https://issues.apache.org/jira/browse/SPARK-32972) | Pass all \`mllib\` module UTs in Scala 2.13 |  Major | ML, MLlib | Yang Jie | Yang Jie |
| [SPARK-32187](https://issues.apache.org/jira/browse/SPARK-32187) | User Guide - Shipping Python Package |  Major | Documentation, PySpark | Hyukjin Kwon | Fabian Höring |
| [SPARK-32948](https://issues.apache.org/jira/browse/SPARK-32948) | Optimize Json expression chain |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33006](https://issues.apache.org/jira/browse/SPARK-33006) | Add dynamic PVC usage example into K8s doc |  Minor | Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33012](https://issues.apache.org/jira/browse/SPARK-33012) | Upgrade fabric8 to 4.10.3 |  Minor | Build, Kubernetes | Jonathan Lafleche | Jonathan Lafleche |
| [SPARK-33046](https://issues.apache.org/jira/browse/SPARK-33046) | Update how to build doc for Scala 2.13 with sbt |  Minor | docs | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32001](https://issues.apache.org/jira/browse/SPARK-32001) | Create Kerberos authentication provider API in JDBC connector |  Major | Spark Core | Gabor Somogyi | Gabor Somogyi |
| [SPARK-33048](https://issues.apache.org/jira/browse/SPARK-33048) | Fix SparkBuild.scala to recognize build settings for Scala 2.13 |  Minor | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32958](https://issues.apache.org/jira/browse/SPARK-32958) | Column pruning for JsonToStructs |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33063](https://issues.apache.org/jira/browse/SPARK-33063) | Improve error message for insufficient K8s volume confs |  Minor | Kubernetes | German Schiavon Matteo | German Schiavon Matteo |
| [SPARK-33067](https://issues.apache.org/jira/browse/SPARK-33067) | Add negative checks to JDBC v2 Table Catalog tests |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32511](https://issues.apache.org/jira/browse/SPARK-32511) | Add dropFields method to Column class |  Major | SQL | fqaiser94 | fqaiser94 |
| [SPARK-33007](https://issues.apache.org/jira/browse/SPARK-33007) | Optimize to\_json + named\_struct + from\_json expression chain |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33034](https://issues.apache.org/jira/browse/SPARK-33034) | Support ALTER TABLE in JDBC v2 Table Catalog: add, update type and nullability of columns (Oracle dialect) |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33004](https://issues.apache.org/jira/browse/SPARK-33004) | Migrate DESCRIBE COLUMN to new resolution framework |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-33002](https://issues.apache.org/jira/browse/SPARK-33002) | Post-port removal of non-API stubs |  Major | PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-32067](https://issues.apache.org/jira/browse/SPARK-32067) | Use unique ConfigMap name for executor pod template |  Major | Kubernetes | James Yu | Stijn De Haes |
| [SPARK-33086](https://issues.apache.org/jira/browse/SPARK-33086) | Provide static annotatiions for pyspark.resource.\* modules |  Minor | PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-33074](https://issues.apache.org/jira/browse/SPARK-33074) | Classify dialect exceptions in JDBC v2 Table Catalog |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33096](https://issues.apache.org/jira/browse/SPARK-33096) | Use LinkedHashMap instead of Map for newlyCreatedExecutors |  Minor | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33099](https://issues.apache.org/jira/browse/SPARK-33099) | Respect executor idle timeout conf in ExecutorPodsAllocator |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32047](https://issues.apache.org/jira/browse/SPARK-32047) | Add provider disable possibility just like in delegation token provider |  Major | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-33081](https://issues.apache.org/jira/browse/SPARK-33081) | Support ALTER TABLE in JDBC v2 Table Catalog: update type and nullability of columns (DB2 dialect) |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-33125](https://issues.apache.org/jira/browse/SPARK-33125) | Improve the error when Lead and Lag are not allowed to specify window frame |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-33155](https://issues.apache.org/jira/browse/SPARK-33155) | Make spark.kubernetes.pyspark.pythonVersion allow \`Python 3\` only |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33079](https://issues.apache.org/jira/browse/SPARK-33079) | Replace the existing Maven job for Scala 2.13 in Github Actions with SBT job |  Major | Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32247](https://issues.apache.org/jira/browse/SPARK-32247) | scipy installation fails with PyPy |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32915](https://issues.apache.org/jira/browse/SPARK-32915) | RPC implementation to support pushing and merging shuffle blocks |  Major | Shuffle, Spark Core | Min Shen | Min Shen |
| [SPARK-33078](https://issues.apache.org/jira/browse/SPARK-33078) | Add SQL config to control Json expression optimization |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-33163](https://issues.apache.org/jira/browse/SPARK-33163) | Check the metadata key 'org.apache.spark.legacyDateTime' in Avro/Parquet files |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33126](https://issues.apache.org/jira/browse/SPARK-33126) | Simplify offset window function(Remove direction field) |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-33154](https://issues.apache.org/jira/browse/SPARK-33154) | Handle shuffle blocks being removed during decommissioning |  Major | Kubernetes, Spark Core | Holden Karau | Holden Karau |
| [SPARK-33176](https://issues.apache.org/jira/browse/SPARK-33176) | Use 11-jre-slim as default in K8s Dockerfile |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33175](https://issues.apache.org/jira/browse/SPARK-33175) | Detect duplicated mountPath and fail at Spark side |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32941](https://issues.apache.org/jira/browse/SPARK-32941) | Optimize WithFields expression chain |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-17333](https://issues.apache.org/jira/browse/SPARK-17333) | Make pyspark interface friendly with mypy static analysis |  Major | PySpark | Assaf Mendelson | Fokko Driesprong |
| [SPARK-32229](https://issues.apache.org/jira/browse/SPARK-32229) | Application entry parsing fails because DriverWrapper registered instead of the normal driver |  Major | SQL | Gabor Somogyi | Gabor Somogyi |
| [SPARK-30796](https://issues.apache.org/jira/browse/SPARK-30796) | Add parameter position for REGEXP\_REPLACE |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-33095](https://issues.apache.org/jira/browse/SPARK-33095) | Support ALTER TABLE in JDBC v2 Table Catalog: add, update type and nullability of columns (MySQL dialect) |  Major | SQL | Prashant Sharma | Prashant Sharma |
| [SPARK-33003](https://issues.apache.org/jira/browse/SPARK-33003) | Add type hints guideliness to the documentation |  Major | Documentation, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-32862](https://issues.apache.org/jira/browse/SPARK-32862) | Left semi stream-stream join |  Major | Structured Streaming | Cheng Su | Cheng Su |
| [SPARK-33237](https://issues.apache.org/jira/browse/SPARK-33237) | Use default Hadoop profile by removing explicit \`-Phadoop-2.7\` from K8s IT Jenkins job |  Major | Kubernetes, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32388](https://issues.apache.org/jira/browse/SPARK-32388) | TRANSFORM when schema less should keep same with hive |  Major | SQL | angerszhu | angerszhu |
| [SPARK-33243](https://issues.apache.org/jira/browse/SPARK-33243) | Add numpydoc into documentation dependency |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33140](https://issues.apache.org/jira/browse/SPARK-33140) | make all sub-class of Rule[QueryPlan] using SQLConf.get |  Major | SQL | Leanken.Lin | Leanken.Lin |
| [SPARK-33137](https://issues.apache.org/jira/browse/SPARK-33137) | Support ALTER TABLE in JDBC v2 Table Catalog: update type and nullability of columns (PostgreSQL dialect) |  Major | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-33174](https://issues.apache.org/jira/browse/SPARK-33174) | Migrate DROP TABLE to new resolution framework |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-32934](https://issues.apache.org/jira/browse/SPARK-32934) | Improve the performance for NTH\_VALUE and Reactor the OffsetWindowFunction |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-33008](https://issues.apache.org/jira/browse/SPARK-33008) | Division by zero on divide-like operations returns incorrect result |  Major | SQL | Lu Lu | Lu Lu |
| [SPARK-33248](https://issues.apache.org/jira/browse/SPARK-33248) | Add a configuration to control the legacy behavior of whether need to pad null value when value size less then schema size |  Major | SQL | angerszhu | angerszhu |
| [SPARK-33250](https://issues.apache.org/jira/browse/SPARK-33250) | Migration to NumPy documentation style in SQL (pyspark.sql.\*) |  Major | Documentation, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33324](https://issues.apache.org/jira/browse/SPARK-33324) | Upgrade kubernetes-client to 4.11.1 |  Major | Build, Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33321](https://issues.apache.org/jira/browse/SPARK-33321) | Migrate ANALYZE TABLE to new resolution framework |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-33265](https://issues.apache.org/jira/browse/SPARK-33265) | Rename classOf[Seq] to classOf[scala.collection.Seq] in PostgresIntegrationSuite for Scala 2.13 |  Minor | Tests | Kousuke Saruta | Apache Spark |
| [SPARK-33130](https://issues.apache.org/jira/browse/SPARK-33130) | Support ALTER TABLE in JDBC v2 Table Catalog: add, update type and nullability of columns (MsSqlServer dialect) |  Major | SQL | Prashant Sharma | Prashant Sharma |
| [SPARK-33364](https://issues.apache.org/jira/browse/SPARK-33364) | Expose purge option in TableCatalog.dropTable |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-23432](https://issues.apache.org/jira/browse/SPARK-23432) | Expose executor memory metrics in the web UI for executors |  Major | Spark Core | Edward Lu | Zhongwei Zhu |
| [SPARK-33352](https://issues.apache.org/jira/browse/SPARK-33352) | Fix procedure-like declaration compilation warning in Scala 2.13 |  Minor | Build | Yang Jie | Yang Jie |
| [SPARK-32405](https://issues.apache.org/jira/browse/SPARK-32405) | Apply table options while creating tables in JDBC Table Catalog |  Major | SQL | Maxim Gekk | Huaxin Gao |
| [SPARK-32916](https://issues.apache.org/jira/browse/SPARK-32916) | Add support for external shuffle service in YARN deployment mode to leverage push-based shuffle |  Major | Shuffle, Spark Core, YARN | Min Shen | Chandni Singh |
| [SPARK-33251](https://issues.apache.org/jira/browse/SPARK-33251) | Migration to NumPy documentation style in ML (pyspark.ml.\*) |  Major | Documentation, PySpark | Hyukjin Kwon | Maciej Szymkiewicz |
| [SPARK-33223](https://issues.apache.org/jira/browse/SPARK-33223) | Expose state information on SS UI |  Major | Structured Streaming, Web UI | Gabor Somogyi | Gabor Somogyi |
| [SPARK-33366](https://issues.apache.org/jira/browse/SPARK-33366) | Migrate LOAD DATA to new resolution framework |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-33305](https://issues.apache.org/jira/browse/SPARK-33305) | DSv2: DROP TABLE command should also invalidate cache |  Major | SQL | Chao Sun | Chao Sun |
| [SPARK-33382](https://issues.apache.org/jira/browse/SPARK-33382) | Unify v1 and v2 SHOW TABLES tests |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33414](https://issues.apache.org/jira/browse/SPARK-33414) | Migrate SHOW CREATE TABLE to new resolution framework |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-33408](https://issues.apache.org/jira/browse/SPARK-33408) | Use R 3.6.3 in K8s R image |  Major | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33386](https://issues.apache.org/jira/browse/SPARK-33386) | Accessing array elements should failed if index is out of bound. |  Major | SQL | Leanken.Lin | Leanken.Lin |
| [SPARK-32907](https://issues.apache.org/jira/browse/SPARK-32907) | adaptively blockify instances |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-33278](https://issues.apache.org/jira/browse/SPARK-33278) | Improve the performance for FIRST\_VALUE |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-33426](https://issues.apache.org/jira/browse/SPARK-33426) | Unify Hive SHOW TABLES tests |  Major | SQL | Maxim Gekk | Maxim Gekk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-29148](https://issues.apache.org/jira/browse/SPARK-29148) | Modify dynamic allocation manager for stage level scheduling |  Major | Scheduler, Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-29149](https://issues.apache.org/jira/browse/SPARK-29149) | Update YARN cluster manager For Stage Level Scheduling |  Major | Spark Core, YARN | Thomas Graves | Thomas Graves |
| [SPARK-29154](https://issues.apache.org/jira/browse/SPARK-29154) | Update Spark scheduler for stage level scheduling |  Major | Scheduler, Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-29153](https://issues.apache.org/jira/browse/SPARK-29153) | ResourceProfile conflict resolution stage level scheduling |  Major | Scheduler, Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-31351](https://issues.apache.org/jira/browse/SPARK-31351) | Migration Guide Auditing for Spark 3.0 Release |  Major | Documentation | Xiao Li | Xiao Li |
| [SPARK-29641](https://issues.apache.org/jira/browse/SPARK-29641) | Stage Level Sched: Add python api's and test |  Major | PySpark | Thomas Graves | Thomas Graves |
| [SPARK-29303](https://issues.apache.org/jira/browse/SPARK-29303) | UI updates for stage level scheduling |  Major | Web UI | Thomas Graves | Thomas Graves |
| [SPARK-29150](https://issues.apache.org/jira/browse/SPARK-29150) | Update RDD API for Stage level scheduling |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-31940](https://issues.apache.org/jira/browse/SPARK-31940) | Document the default JVM time zone in to/fromJavaDate and legacy date formatters |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32078](https://issues.apache.org/jira/browse/SPARK-32078) | Add a redirect to sql-ref from sql-reference |  Major | Documentation | Xiao Li | Xiao Li |
| [SPARK-32099](https://issues.apache.org/jira/browse/SPARK-32099) | Remove broken link in cloud integration documentation |  Minor | Documentation | Guy Khazma | Guy Khazma |
| [SPARK-31608](https://issues.apache.org/jira/browse/SPARK-31608) | Add a hybrid KVStore to make UI loading faster |  Major | Web UI | Baohe Zhang | Baohe Zhang |
| [SPARK-32339](https://issues.apache.org/jira/browse/SPARK-32339) | Improve MLlib BLAS native acceleration docs |  Major | ML | Xiaochang Wu | Xiaochang Wu |
| [SPARK-32471](https://issues.apache.org/jira/browse/SPARK-32471) | Describe JSON option \`allowNonNumericNumbers\` |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32549](https://issues.apache.org/jira/browse/SPARK-32549) | Add column name in \_infer\_schema error message |  Major | PySpark | Liang Zhang | Liang Zhang |
| [SPARK-32409](https://issues.apache.org/jira/browse/SPARK-32409) | Document the dependency between spark.metrics.staticSources.enabled and JVMSource registration |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-32584](https://issues.apache.org/jira/browse/SPARK-32584) | Exclude \_images and \_sources that are generated by Sphinx in Jekyll build |  Major | docs | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32674](https://issues.apache.org/jira/browse/SPARK-32674) | Add suggestion for parallel directory listing in tuning doc |  Minor | Documentation | Chao Sun | Chao Sun |
| [SPARK-32888](https://issues.apache.org/jira/browse/SPARK-32888) | reading a parallized rdd with two identical records results in a zero count df when read via spark.read.csv |  Minor | Spark Core | Punit Shah | L. C. Hsieh |
| [SPARK-32306](https://issues.apache.org/jira/browse/SPARK-32306) | \`approx\_percentile\` in Spark SQL gives incorrect results |  Major | PySpark, SQL | Sean Malory | Maxim Gekk |
| [SPARK-33181](https://issues.apache.org/jira/browse/SPARK-33181) | SQL Reference: Run SQL on files directly |  Major | SQL | Xiao Li | Aoyuan Liao |
| [SPARK-33246](https://issues.apache.org/jira/browse/SPARK-33246) | Spark SQL null semantics documentation is incorrect |  Trivial | Documentation, SQL | Stuart White | Stuart White |
| [SPARK-33208](https://issues.apache.org/jira/browse/SPARK-33208) | Update the document of SparkSession#sql |  Major | SQL | Wenchen Fan | zhoukeyong |
| [SPARK-33310](https://issues.apache.org/jira/browse/SPARK-33310) | Relax pyspark typing for sql str functions |  Minor | PySpark | Daniel Himmelstein | Daniel Himmelstein |
| [SPARK-30663](https://issues.apache.org/jira/browse/SPARK-30663) | Remove 1.x testthat switch once Jenkins version is updated to 2.x |  Minor | SparkR, Tests | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-32860](https://issues.apache.org/jira/browse/SPARK-32860) | Encoders::bean doc incorrectly states maps are not supported |  Trivial | SQL | Dan Ziemba | Dan Ziemba |
| [SPARK-33213](https://issues.apache.org/jira/browse/SPARK-33213) | Upgrade Apache Arrow to 2.0.0 |  Minor | SQL | Chao Sun | Chao Sun |
| [SPARK-31352](https://issues.apache.org/jira/browse/SPARK-31352) | Add .asf.yaml to control Github settings |  Trivial | Documentation | Kaxil Naik | Kaxil Naik |
| [SPARK-31985](https://issues.apache.org/jira/browse/SPARK-31985) | Remove the incomplete code path on aggregation for continuous mode |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-32387](https://issues.apache.org/jira/browse/SPARK-32387) | Extract UninterruptibleThread runner logic from KafkaOffsetReader |  Major | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-32648](https://issues.apache.org/jira/browse/SPARK-32648) | Remove unused DELETE\_ACTION in FileStreamSinkLog |  Major | Structured Streaming | Jungtaek Lim | Michał Wieleba |
| [SPARK-32831](https://issues.apache.org/jira/browse/SPARK-32831) | Refactor SupportsStreamingUpdate to represent actual meaning of the behavior |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-32981](https://issues.apache.org/jira/browse/SPARK-32981) | Remove hive-1.2/hadoop-2.7 from Apache Spark 3.1 distribution |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33011](https://issues.apache.org/jira/browse/SPARK-33011) | Promote the stability annotation to Evolving for MLEvent traits/classes |  Minor | ML | Jungtaek Lim | Jungtaek Lim |
| [SPARK-33109](https://issues.apache.org/jira/browse/SPARK-33109) | Upgrade to SBT 1.4 and support \`dependencyTree\` back |  Major | Build | Dongjoon Hyun | Denis Pyshev |
| [SPARK-33282](https://issues.apache.org/jira/browse/SPARK-33282) | Replace Probot Autolabeler with Github Action |  Major | Project Infra | Kyle Bendickson | Kyle Bendickson |


