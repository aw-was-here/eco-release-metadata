
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

## Release 1.6.1 - Unreleased (as of 2016-01-18)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12016](https://issues.apache.org/jira/browse/SPARK-12016) | word2vec load model can't use findSynonyms to get words |  Major | PySpark | yuangang.liu | Liang-Chi Hsieh |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10359](https://issues.apache.org/jira/browse/SPARK-10359) | Enumerate Spark's dependencies in a file and diff against it for new pull requests |  Major | Build, Project Infra | Patrick Wendell | Josh Rosen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12701](https://issues.apache.org/jira/browse/SPARK-12701) | Logging FileAppender should use join to ensure thread is finished |  Minor | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-12450](https://issues.apache.org/jira/browse/SPARK-12450) | Un-persist broadcasted variables in KMeans |  Minor | MLlib | RJ Nowling | RJ Nowling |
| [SPARK-12411](https://issues.apache.org/jira/browse/SPARK-12411) | Reconsider executor heartbeats rpc timeout |  Major | Spark Core | Nong Li | Nong Li |
| [SPARK-5273](https://issues.apache.org/jira/browse/SPARK-5273) | Improve documentation examples for LinearRegression |  Minor | Documentation | Dev Lakhani | Sean Owen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12805](https://issues.apache.org/jira/browse/SPARK-12805) | Outdated details in doc related to Mesos run modes |  Minor | Documentation | Luc Bourlier | Luc Bourlier |
| [SPARK-12784](https://issues.apache.org/jira/browse/SPARK-12784) | Spark UI IndexOutOfBoundsException with dynamic allocation |  Major | Web UI, YARN | Thomas Graves | Shixiong Zhu |
| [SPARK-12734](https://issues.apache.org/jira/browse/SPARK-12734) | Fix Netty exclusions and use Maven Enforcer to prevent bug from being reintroduced |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12708](https://issues.apache.org/jira/browse/SPARK-12708) | Sorting task error in Stages Page when yarn mode |  Minor | Web UI | Koyo Yoshida | Koyo Yoshida |
| [SPARK-12696](https://issues.apache.org/jira/browse/SPARK-12696) | Dataset serialization error |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-12690](https://issues.apache.org/jira/browse/SPARK-12690) | NullPointerException in UnsafeInMemorySorter.free() |  Minor | Spark Core | Carson Wang | Carson Wang |
| [SPARK-12685](https://issues.apache.org/jira/browse/SPARK-12685) | word2vec trainWordsCount gets overflow |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-12678](https://issues.apache.org/jira/browse/SPARK-12678) | MapPartitionsRDD should clear reference to prev RDD |  Minor | Spark Core | Guillaume Poulin | Guillaume Poulin |
| [SPARK-12673](https://issues.apache.org/jira/browse/SPARK-12673) | Prepending base URI of job description is missing |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-12662](https://issues.apache.org/jira/browse/SPARK-12662) | Add a local sort operator to DataFrame used by randomSplit |  Major | Documentation, SQL | Yin Huai | Sameer Agarwal |
| [SPARK-12654](https://issues.apache.org/jira/browse/SPARK-12654) | sc.wholeTextFiles with spark.hadoop.cloneConf=true fails on secure Hadoop |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-12647](https://issues.apache.org/jira/browse/SPARK-12647) | 1.6 branch test failure o.a.s.sql.execution.ExchangeCoordinatorSuite.determining the number of reducers: aggregate operator |  Minor | SQL | Pete Robbins | Pete Robbins |
| [SPARK-12638](https://issues.apache.org/jira/browse/SPARK-12638) | Parameter explaination not very accurate for rdd function "aggregate" |  Trivial | Documentation, Spark Core | Tommy Yu | Tommy Yu |
| [SPARK-12617](https://issues.apache.org/jira/browse/SPARK-12617) | socket descriptor leak killing streaming app |  Critical | PySpark, Streaming | Antony Mayi | Shixiong Zhu |
| [SPARK-12598](https://issues.apache.org/jira/browse/SPARK-12598) | Bug in setMinPartitions function of StreamFileInputFormat |  Minor | Spark Core | Darek Blasiak | Darek Blasiak |
| [SPARK-12591](https://issues.apache.org/jira/browse/SPARK-12591) | NullPointerException using checkpointed mapWithState with KryoSerializer |  Major | Streaming | Jan Uyttenhove | Shixiong Zhu |
| [SPARK-12589](https://issues.apache.org/jira/browse/SPARK-12589) | result row size is wrong in UnsafeRowParquetRecordReader |  Major | SQL | Wenchen Fan | Nong Li |
| [SPARK-12582](https://issues.apache.org/jira/browse/SPARK-12582) | IndexShuffleBlockResolverSuite fails in windows |  Major | Tests, Windows | yucai | yucai |
| [SPARK-12579](https://issues.apache.org/jira/browse/SPARK-12579) | User-specified JDBC driver should always take precedence |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-12562](https://issues.apache.org/jira/browse/SPARK-12562) | DataFrame.write.format("text") requires the column name to be called value |  Major | SQL | Michael Armbrust | Xiu (Joe) Guo |
| [SPARK-12558](https://issues.apache.org/jira/browse/SPARK-12558) | AnalysisException when multiple functions applied in GROUP BY clause |  Major | SQL | Maciej Bryński | Dilip Biswal |
| [SPARK-12526](https://issues.apache.org/jira/browse/SPARK-12526) | `ifelse`, `when`, `otherwise` unable to take Column as value |  Major | SparkR | Sen Fang | Sen Fang |
| [SPARK-12517](https://issues.apache.org/jira/browse/SPARK-12517) | No default RDD name for ones created by sc.textFile |  Minor | Spark Core | yaron weinsberg | yaron weinsberg |
| [SPARK-12511](https://issues.apache.org/jira/browse/SPARK-12511) | streaming driver with checkpointing unable to finalize leading to OOM |  Critical | PySpark, Streaming | Antony Mayi | Shixiong Zhu |
| [SPARK-12502](https://issues.apache.org/jira/browse/SPARK-12502) | Script /dev/run-tests fails when IBM Java is used |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12499](https://issues.apache.org/jira/browse/SPARK-12499) | make\_distribution should not override MAVEN\_OPTS |  Minor | Build | Adrian Bridgett | Adrian Bridgett |
| [SPARK-12489](https://issues.apache.org/jira/browse/SPARK-12489) | Fix minor issues found by Findbugs |  Minor | MLlib, Spark Core, SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12478](https://issues.apache.org/jira/browse/SPARK-12478) | Dataset fields of product types can't be null |  Major | SQL | Cheng Lian | Apache Spark |
| [SPARK-12477](https://issues.apache.org/jira/browse/SPARK-12477) | [SQL] Tungsten projection fails for null values in array fields |  Major | SQL | Pierre Borckmans | Pierre Borckmans |
| [SPARK-12470](https://issues.apache.org/jira/browse/SPARK-12470) | Incorrect calculation of row size in o.a.s.sql.catalyst.expressions.codegen.GenerateUnsafeRowJoiner |  Minor | SQL | Pete Robbins | Pete Robbins |
| [SPARK-12453](https://issues.apache.org/jira/browse/SPARK-12453) | Spark Streaming Kinesis Example broken due to wrong AWS Java SDK version |  Critical | Streaming | Martin Schade | Brian London |
| [SPARK-12424](https://issues.apache.org/jira/browse/SPARK-12424) | The implementation of ParamMap#filter is wrong. |  Major | ML | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12399](https://issues.apache.org/jira/browse/SPARK-12399) | Display correct error message when accessing REST API with an unknown app Id |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-12327](https://issues.apache.org/jira/browse/SPARK-12327) | lint-r checks fail with commented code |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-12300](https://issues.apache.org/jira/browse/SPARK-12300) | Fix schema inferance on local collections |  Minor | PySpark, SQL | holdenk | holdenk |
| [SPARK-12268](https://issues.apache.org/jira/browse/SPARK-12268) | pyspark shell uses execfile which breaks python3 compatibility |  Major | PySpark | Erik Selin | Erik Selin |
| [SPARK-12026](https://issues.apache.org/jira/browse/SPARK-12026) | ChiSqTest gets slower and slower over time when number of features is large |  Major | MLlib | Hunter Kelly | yuhao yang |
| [SPARK-12010](https://issues.apache.org/jira/browse/SPARK-12010) | Spark JDBC requires support for column-name-free INSERT syntax |  Major | SQL | Christian Kurz | Christian Kurz |
| [SPARK-12006](https://issues.apache.org/jira/browse/SPARK-12006) | GaussianMixture.train crashes if an initial model is not None |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-11394](https://issues.apache.org/jira/browse/SPARK-11394) | PostgreDialect cannot handle BYTE types |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-9844](https://issues.apache.org/jira/browse/SPARK-9844) | File appender race condition during SparkWorker shutdown |  Major | Spark Core | Alex Liu | Bryan Cutler |
| [SPARK-7615](https://issues.apache.org/jira/browse/SPARK-7615) | MLLIB Word2Vec wordVectors divided by Euclidean Norm equals to zero |  Minor | MLlib | Eric Li | Sean Owen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12393](https://issues.apache.org/jira/browse/SPARK-12393) | Add read.text and write.text for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-11031](https://issues.apache.org/jira/browse/SPARK-11031) | SparkR str() method on DataFrame objects |  Major | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12758](https://issues.apache.org/jira/browse/SPARK-12758) | Add note to Spark SQL Migration section about SPARK-11724 |  Minor | SQL | Brandon Bradley | Brandon Bradley |
| [SPARK-12722](https://issues.apache.org/jira/browse/SPARK-12722) | Typo in Spark Pipeline example |  Trivial | Documentation | Tom Chan | Jeff Lam |
| [SPARK-12507](https://issues.apache.org/jira/browse/SPARK-12507) | Expose closeFileAfterWrite and allowBatching configurations for Streaming |  Minor | Documentation, Streaming | Shixiong Zhu | Apache Spark |
| [SPARK-12351](https://issues.apache.org/jira/browse/SPARK-12351) | Add documentation of submitting Mesos jobs with cluster mode |  Major | . | Timothy Chen | Timothy Chen |


