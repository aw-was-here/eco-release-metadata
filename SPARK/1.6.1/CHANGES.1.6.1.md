
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

## Release 1.6.1 - 2016-03-09



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12016](https://issues.apache.org/jira/browse/SPARK-12016) | word2vec load model can\'t use findSynonyms to get words |  Major | PySpark | yuangang.liu | Liang-Chi Hsieh |
| [SPARK-13195](https://issues.apache.org/jira/browse/SPARK-13195) | PairDStreamFunctions.mapWithState fails in case timeout is set without updating State[S] |  Major | Streaming | Yuval Itzchakov | Shixiong Zhu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10359](https://issues.apache.org/jira/browse/SPARK-10359) | Enumerate Spark\'s dependencies in a file and diff against it for new pull requests |  Major | Build, Project Infra | Patrick Wendell | Josh Rosen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12411](https://issues.apache.org/jira/browse/SPARK-12411) | Reconsider executor heartbeats rpc timeout |  Major | Spark Core | Nong Li | Nong Li |
| [SPARK-12450](https://issues.apache.org/jira/browse/SPARK-12450) | Un-persist broadcasted variables in KMeans |  Minor | MLlib | RJ Nowling | RJ Nowling |
| [SPARK-12701](https://issues.apache.org/jira/browse/SPARK-12701) | Logging FileAppender should use join to ensure thread is finished |  Minor | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-5273](https://issues.apache.org/jira/browse/SPARK-5273) | Improve documentation examples for LinearRegression |  Minor | Documentation | Dev Lakhani | Sean Owen |
| [SPARK-12120](https://issues.apache.org/jira/browse/SPARK-12120) | Improve exception message when failing to initialize HiveContext in PySpark |  Minor | PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-12932](https://issues.apache.org/jira/browse/SPARK-12932) | Bad error message with trying to create Dataset from RDD of Java objects that are not bean-compliant |  Trivial | Java API | Andy Grove | Andy Grove |
| [SPARK-12834](https://issues.apache.org/jira/browse/SPARK-12834) | Use type conversion instead of Ser/De of Pickle to transform JavaArray and JavaList |  Major | PySpark | Xusen Yin | Xusen Yin |
| [SPARK-11780](https://issues.apache.org/jira/browse/SPARK-11780) | Provide type aliases in org.apache.spark.sql.types for backwards compatibility |  Major | SQL | Santiago M. Mola | Santiago M. Mola |
| [SPARK-13094](https://issues.apache.org/jira/browse/SPARK-13094) | No encoder implicits for Seq[Primitive] |  Major | SQL | Deenar Toraskar | Michael Armbrust |
| [SPARK-13279](https://issues.apache.org/jira/browse/SPARK-13279) | Scheduler does O(N^2) operation when adding a new task set (making it prohibitively slow for scheduling 200K tasks) |  Major | Scheduler, Spark Core | Sital Kedia | Sital Kedia |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12477](https://issues.apache.org/jira/browse/SPARK-12477) | [SQL] Tungsten projection fails for null values in array fields |  Major | SQL | Pierre Borckmans | Pierre Borckmans |
| [SPARK-12499](https://issues.apache.org/jira/browse/SPARK-12499) | make\_distribution should not override MAVEN\_OPTS |  Minor | Build | Adrian Bridgett | Adrian Bridgett |
| [SPARK-12502](https://issues.apache.org/jira/browse/SPARK-12502) | Script /dev/run-tests fails when IBM Java is used |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12010](https://issues.apache.org/jira/browse/SPARK-12010) | Spark JDBC requires support for column-name-free INSERT syntax |  Major | SQL | Christian Kurz | Christian Kurz |
| [SPARK-12517](https://issues.apache.org/jira/browse/SPARK-12517) | No default RDD name for ones created by sc.textFile |  Minor | Spark Core | yaron weinsberg | yaron weinsberg |
| [SPARK-12424](https://issues.apache.org/jira/browse/SPARK-12424) | The implementation of ParamMap#filter is wrong. |  Major | ML | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12489](https://issues.apache.org/jira/browse/SPARK-12489) | Fix minor issues found by Findbugs |  Minor | MLlib, Spark Core, SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11394](https://issues.apache.org/jira/browse/SPARK-11394) | PostgreDialect cannot handle BYTE types |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-12526](https://issues.apache.org/jira/browse/SPARK-12526) | `ifelse`, `when`, `otherwise` unable to take Column as value |  Major | SparkR | Sen Fang | Sen Fang |
| [SPARK-12300](https://issues.apache.org/jira/browse/SPARK-12300) | Fix schema inferance on local collections |  Minor | PySpark, SQL | holdenk | holdenk |
| [SPARK-12399](https://issues.apache.org/jira/browse/SPARK-12399) | Display correct error message when accessing REST API with an unknown app Id |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-12327](https://issues.apache.org/jira/browse/SPARK-12327) | lint-r checks fail with commented code |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-12611](https://issues.apache.org/jira/browse/SPARK-12611) | test\_infer\_schema\_to\_local depended on old handling of missing value in row |  Trivial | SQL, Tests | holdenk | holdenk |
| [SPARK-12562](https://issues.apache.org/jira/browse/SPARK-12562) | DataFrame.write.format("text") requires the column name to be called value |  Major | SQL | Michael Armbrust | Xiu (Joe) Guo |
| [SPARK-12579](https://issues.apache.org/jira/browse/SPARK-12579) | User-specified JDBC driver should always take precedence |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-12470](https://issues.apache.org/jira/browse/SPARK-12470) | Incorrect calculation of row size in o.a.s.sql.catalyst.expressions.codegen.GenerateUnsafeRowJoiner |  Minor | SQL | Pete Robbins | Pete Robbins |
| [SPARK-12589](https://issues.apache.org/jira/browse/SPARK-12589) | result row size is wrong in UnsafeRowParquetRecordReader |  Major | SQL | Wenchen Fan | Nong Li |
| [SPARK-12647](https://issues.apache.org/jira/browse/SPARK-12647) | 1.6 branch test failure o.a.s.sql.execution.ExchangeCoordinatorSuite.determining the number of reducers: aggregate operator |  Minor | SQL | Pete Robbins | Pete Robbins |
| [SPARK-12617](https://issues.apache.org/jira/browse/SPARK-12617) | socket descriptor leak killing streaming app |  Critical | PySpark, Streaming | Antony Mayi | Shixiong Zhu |
| [SPARK-12511](https://issues.apache.org/jira/browse/SPARK-12511) | streaming driver with checkpointing unable to finalize leading to OOM |  Critical | PySpark, Streaming | Antony Mayi | Shixiong Zhu |
| [SPARK-12453](https://issues.apache.org/jira/browse/SPARK-12453) | Spark Streaming Kinesis Example broken due to wrong AWS Java SDK version |  Critical | Streaming | Martin Schade | Brian London |
| [SPARK-12673](https://issues.apache.org/jira/browse/SPARK-12673) | Prepending base URI of job description is missing |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-12678](https://issues.apache.org/jira/browse/SPARK-12678) | MapPartitionsRDD should clear reference to prev RDD |  Minor | Spark Core | Guillaume Poulin | Guillaume Poulin |
| [SPARK-12006](https://issues.apache.org/jira/browse/SPARK-12006) | GaussianMixture.train crashes if an initial model is not None |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-12662](https://issues.apache.org/jira/browse/SPARK-12662) | Add a local sort operator to DataFrame used by randomSplit |  Major | Documentation, SQL | Yin Huai | Sameer Agarwal |
| [SPARK-12598](https://issues.apache.org/jira/browse/SPARK-12598) | Bug in setMinPartitions function of StreamFileInputFormat |  Minor | Spark Core | Darek Blasiak | Darek Blasiak |
| [SPARK-12591](https://issues.apache.org/jira/browse/SPARK-12591) | NullPointerException using checkpointed mapWithState with KryoSerializer |  Major | Streaming | Jan Uyttenhove | Shixiong Zhu |
| [SPARK-12654](https://issues.apache.org/jira/browse/SPARK-12654) | sc.wholeTextFiles with spark.hadoop.cloneConf=true fails on secure Hadoop |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-12696](https://issues.apache.org/jira/browse/SPARK-12696) | Dataset serialization error |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-12734](https://issues.apache.org/jira/browse/SPARK-12734) | Fix Netty exclusions and use Maven Enforcer to prevent bug from being reintroduced |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12638](https://issues.apache.org/jira/browse/SPARK-12638) | Parameter explaination not very accurate for rdd function "aggregate" |  Trivial | Documentation, Spark Core | Tommy Yu | Tommy Yu |
| [SPARK-12582](https://issues.apache.org/jira/browse/SPARK-12582) | IndexShuffleBlockResolverSuite fails in windows |  Major | Tests, Windows | yucai | yucai |
| [SPARK-7615](https://issues.apache.org/jira/browse/SPARK-7615) | MLLIB Word2Vec wordVectors divided by Euclidean Norm equals to zero |  Minor | MLlib | Eric Li | Sean Owen |
| [SPARK-12558](https://issues.apache.org/jira/browse/SPARK-12558) | AnalysisException when multiple functions applied in GROUP BY clause |  Major | SQL | Maciej Bryński | Dilip Biswal |
| [SPARK-12805](https://issues.apache.org/jira/browse/SPARK-12805) | Outdated details in doc related to Mesos run modes |  Minor | Documentation | Luc Bourlier | Luc Bourlier |
| [SPARK-12685](https://issues.apache.org/jira/browse/SPARK-12685) | word2vec trainWordsCount gets overflow |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-12268](https://issues.apache.org/jira/browse/SPARK-12268) | pyspark shell uses execfile which breaks python3 compatibility |  Major | PySpark | Erik Selin | Erik Selin |
| [SPARK-12690](https://issues.apache.org/jira/browse/SPARK-12690) | NullPointerException in UnsafeInMemorySorter.free() |  Minor | Spark Core | Carson Wang | Carson Wang |
| [SPARK-12478](https://issues.apache.org/jira/browse/SPARK-12478) | Dataset fields of product types can\'t be null |  Major | SQL | Cheng Lian | Apache Spark |
| [SPARK-12026](https://issues.apache.org/jira/browse/SPARK-12026) | ChiSqTest gets slower and slower over time when number of features is large |  Major | MLlib | Hunter Kelly | yuhao yang |
| [SPARK-9844](https://issues.apache.org/jira/browse/SPARK-9844) | File appender race condition during SparkWorker shutdown |  Major | Spark Core | Alex Liu | Bryan Cutler |
| [SPARK-12784](https://issues.apache.org/jira/browse/SPARK-12784) | Spark UI IndexOutOfBoundsException with dynamic allocation |  Major | Web UI, YARN | Thomas Graves | Shixiong Zhu |
| [SPARK-12708](https://issues.apache.org/jira/browse/SPARK-12708) | Sorting task error in Stages Page when yarn mode |  Minor | Web UI | Koyo Yoshida | Koyo Yoshida |
| [SPARK-12346](https://issues.apache.org/jira/browse/SPARK-12346) | GLM summary crashes with NoSuchElementException if attributes are missing names |  Major | SparkR | Eric Liang | Eric Liang |
| [SPARK-12841](https://issues.apache.org/jira/browse/SPARK-12841) | UnresolvedException with cast |  Blocker | SQL | Michael Armbrust | Wenchen Fan |
| [SPARK-12747](https://issues.apache.org/jira/browse/SPARK-12747) | Postgres JDBC ArrayType(DoubleType) \'Unable to find server array type\' |  Major | SQL | Brandon Bradley | Liang-Chi Hsieh |
| [SPARK-12629](https://issues.apache.org/jira/browse/SPARK-12629) | SparkR: DataFrame\'s saveAsTable method has issues with the signature and HiveContext |  Major | SparkR | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-12859](https://issues.apache.org/jira/browse/SPARK-12859) | Names of input streams with receivers don\'t fit in Streaming page |  Trivial | Streaming, Web UI | Jacek Laskowski | Alex Bozarth |
| [SPARK-12760](https://issues.apache.org/jira/browse/SPARK-12760) | inaccurate description for difference between local vs cluster mode in closure handling |  Minor | Documentation | Mortada Mehyar | Mortada Mehyar |
| [SPARK-12624](https://issues.apache.org/jira/browse/SPARK-12624) | When schema is specified, we should give better error message if actual row length doesn\'t match |  Blocker | PySpark, SQL | Reynold Xin | Cheng Lian |
| [SPARK-12755](https://issues.apache.org/jira/browse/SPARK-12755) | Spark may attempt to rebuild application UI before finishing writing the event logs in possible race condition |  Minor | Spark Core | Michael Allman | Michael Allman |
| [SPARK-12961](https://issues.apache.org/jira/browse/SPARK-12961) | Work around memory leak in Snappy library |  Major | Spark Core | Josh Rosen | Liang-Chi Hsieh |
| [SPARK-12682](https://issues.apache.org/jira/browse/SPARK-12682) | Hive will fail if the schema of a parquet table has a very wide schema |  Major | SQL | Yin Huai | Sameer Agarwal |
| [SPARK-12780](https://issues.apache.org/jira/browse/SPARK-12780) | Inconsistency returning value of ML python models\' properties |  Minor | ML, PySpark | Xusen Yin | Xusen Yin |
| [SPARK-10847](https://issues.apache.org/jira/browse/SPARK-10847) | Pyspark - DataFrame - Optional Metadata with `None` triggers cryptic failure |  Minor | PySpark, SQL | Shea Parkes | Jason C Lee |
| [SPARK-13082](https://issues.apache.org/jira/browse/SPARK-13082) | sqlCtx.real.json() doesn\'t work with PythonRDD |  Major | PySpark | Gaëtan Lehmann | Shixiong Zhu |
| [SPARK-13088](https://issues.apache.org/jira/browse/SPARK-13088) | DAG viz does not work with latest version of chrome |  Blocker | Web UI | Andrew Or | Andrew Or |
| [SPARK-12989](https://issues.apache.org/jira/browse/SPARK-12989) | Bad interaction between StarExpansion and ExtractWindowExpressions |  Major | SQL | Michael Armbrust | Xiao Li |
| [SPARK-13087](https://issues.apache.org/jira/browse/SPARK-13087) | Grouping by a complex expression may lead to incorrect AttributeReferences in aggregations |  Critical | SQL | Mark Hamstra | Michael Armbrust |
| [SPARK-12783](https://issues.apache.org/jira/browse/SPARK-12783) | Dataset map serialization error |  Critical | SQL | Muthu Jayakumar | Wenchen Fan |
| [SPARK-12711](https://issues.apache.org/jira/browse/SPARK-12711) | ML StopWordsRemover does not protect itself from column name duplication |  Trivial | ML, MLlib | Grzegorz Chilkiewicz | Grzegorz Chilkiewicz |
| [SPARK-13121](https://issues.apache.org/jira/browse/SPARK-13121) | java mapWithState mishandles scala Option |  Critical | Java API, Streaming | Gabriele Nizzoli | Gabriele Nizzoli |
| [SPARK-13122](https://issues.apache.org/jira/browse/SPARK-13122) | Race condition in MemoryStore.unrollSafely() causes memory leak |  Major | Spark Core, Streaming | Adam Budde | Adam Budde |
| [SPARK-12739](https://issues.apache.org/jira/browse/SPARK-12739) | Details of batch in Streaming tab uses two Duration columns |  Minor | Streaming, Web UI | Jacek Laskowski | Mario Briggs |
| [SPARK-13101](https://issues.apache.org/jira/browse/SPARK-13101) | Dataset complex types mapping to DataFrame  (element nullability) mismatch |  Blocker | SQL | Deenar Toraskar | Wenchen Fan |
| [SPARK-12807](https://issues.apache.org/jira/browse/SPARK-12807) | Spark External Shuffle not working in Hadoop clusters with Jackson 2.2.3 |  Critical | Shuffle, YARN | Steve Loughran | Steve Loughran |
| [SPARK-10524](https://issues.apache.org/jira/browse/SPARK-10524) | Decision tree binary classification with ordered categorical features: incorrect centroid |  Major | ML, MLlib | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-13056](https://issues.apache.org/jira/browse/SPARK-13056) | Map column would throw NPE if value is null |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-13265](https://issues.apache.org/jira/browse/SPARK-13265) | Refactoring of basic ML import/export for other file system besides HDFS |  Major | ML | Yu Ishikawa | Yu Ishikawa |
| [SPARK-13047](https://issues.apache.org/jira/browse/SPARK-13047) | Pyspark Params.hasParam should not throw an error |  Minor | ML, PySpark | Seth Hendrickson | Seth Hendrickson |
| [SPARK-12746](https://issues.apache.org/jira/browse/SPARK-12746) | ArrayType(\_, true) should also accept ArrayType(\_, false) |  Major | ML, SQL | Earthson Lu | Earthson Lu |
| [SPARK-13153](https://issues.apache.org/jira/browse/SPARK-13153) | PySpark ML persistence failed when handle no default value parameter |  Minor | ML, PySpark | Tommy Yu | Tommy Yu |
| [SPARK-13142](https://issues.apache.org/jira/browse/SPARK-13142) | Problem accessing Web UI /logPage/ on Microsoft Windows |  Minor | Web UI | Neil Andrassy | Mark Pavey |
| [SPARK-13300](https://issues.apache.org/jira/browse/SPARK-13300) | Spark examples page gives errors : Liquid error: pygments |  Minor | Documentation | stefan | Amit Ranjit |
| [SPARK-13312](https://issues.apache.org/jira/browse/SPARK-13312) | ML Model Selection via Train Validation Split example uses incorrect data |  Minor | Documentation | Jeremy | Jeremy |
| [SPARK-12921](https://issues.apache.org/jira/browse/SPARK-12921) | Use SparkHadoopUtil reflection to access TaskAttemptContext in SpecificParquetRecordReaderBase |  Major | Spark Core, SQL | Josh Rosen | Josh Rosen |
| [SPARK-13371](https://issues.apache.org/jira/browse/SPARK-13371) | TaskSetManager.dequeueSpeculativeTask compares Option[String] and String directly. |  Major | Scheduler | Guoqiang Li | Sean Owen |
| [SPARK-13410](https://issues.apache.org/jira/browse/SPARK-13410) | unionAll AnalysisException with DataFrames containing UDT columns. |  Major | SQL | Franklyn Dsouza | Franklyn Dsouza |
| [SPARK-12546](https://issues.apache.org/jira/browse/SPARK-12546) | Writing to partitioned parquet table can fail with OOM |  Blocker | SQL | Nong Li | Michael Armbrust |
| [SPARK-13298](https://issues.apache.org/jira/browse/SPARK-13298) | DAG visualization does not render correctly for jobs |  Major | Web UI | Lucas Woltmann | Shixiong Zhu |
| [SPARK-11624](https://issues.apache.org/jira/browse/SPARK-11624) | Spark SQL CLI will set sessionstate twice |  Critical | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11972](https://issues.apache.org/jira/browse/SPARK-11972) | [Spark SQL] the value of \'hiveconf\' parameter in CLI can\'t be got after enter spark-sql session |  Critical | SQL | Yi Zhou | Adrian Wang |
| [SPARK-12363](https://issues.apache.org/jira/browse/SPARK-12363) | PowerIterationClustering test case failed if we deprecated KMeans.setRuns |  Minor | MLlib | Yanbo Liang | Liang-Chi Hsieh |
| [SPARK-13355](https://issues.apache.org/jira/browse/SPARK-13355) | Replace GraphImpl.fromExistingRDDs by Graph |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-13390](https://issues.apache.org/jira/browse/SPARK-13390) | Java Spark createDataFrame with List parameter bug |  Minor | Spark Core | mike niemaz | Shixiong Zhu |
| [SPARK-13475](https://issues.apache.org/jira/browse/SPARK-13475) | HiveCompatibilitySuite should still run in PR builder even if a PR only changes sql/core |  Major | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-13482](https://issues.apache.org/jira/browse/SPARK-13482) | `spark.storage.memoryMapThreshold` has two kind of the value. |  Major | Block Manager | carlmartin | carlmartin |
| [SPARK-13473](https://issues.apache.org/jira/browse/SPARK-13473) | Predicate can\'t be pushed through project with nondeterministic field |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-13441](https://issues.apache.org/jira/browse/SPARK-13441) | NullPointerException when either HADOOP\_CONF\_DIR or YARN\_CONF\_DIR is not readable |  Minor | YARN | Terence Yim | Terence Yim |
| [SPARK-12316](https://issues.apache.org/jira/browse/SPARK-12316) | Stack overflow with endless call of `Delegation token thread` when application end. |  Major | YARN | carlmartin | carlmartin |
| [SPARK-12486](https://issues.apache.org/jira/browse/SPARK-12486) | Executors are not always terminated successfully by the worker. |  Major | Spark Core | Nong Li | Nong Li |
| [SPARK-12874](https://issues.apache.org/jira/browse/SPARK-12874) | ML StringIndexer does not protect itself from column name duplication |  Major | ML | Wojciech Jurczyk | Yu Ishikawa |
| [SPARK-13454](https://issues.apache.org/jira/browse/SPARK-13454) | Cannot drop table whose name starts with underscore |  Major | SQL | Cheng Lian | Yin Huai |
| [SPARK-13855](https://issues.apache.org/jira/browse/SPARK-13855) | Spark 1.6.1 artifacts not found in S3 bucket / direct download |  Major | EC2 | Sandesh Deshmane | Patrick Wendell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12393](https://issues.apache.org/jira/browse/SPARK-12393) | Add read.text and write.text for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-11031](https://issues.apache.org/jira/browse/SPARK-11031) | SparkR str() method on DataFrame objects |  Major | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12351](https://issues.apache.org/jira/browse/SPARK-12351) | Add documentation of submitting Mesos jobs with cluster mode |  Major | . | Timothy Chen | Timothy Chen |
| [SPARK-12507](https://issues.apache.org/jira/browse/SPARK-12507) | Expose closeFileAfterWrite and allowBatching configurations for Streaming |  Minor | Documentation, Streaming | Shixiong Zhu | Apache Spark |
| [SPARK-12758](https://issues.apache.org/jira/browse/SPARK-12758) | Add note to Spark SQL Migration section about SPARK-11724 |  Minor | SQL | Brandon Bradley | Brandon Bradley |
| [SPARK-12722](https://issues.apache.org/jira/browse/SPARK-12722) | Typo in Spark Pipeline example |  Trivial | Documentation | Tom Chan | Jeff Lam |
| [SPARK-12814](https://issues.apache.org/jira/browse/SPARK-12814) | Add deploy instructions for Python in flume integration doc |  Major | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12894](https://issues.apache.org/jira/browse/SPARK-12894) | Add deploy instructions for Python in Kinesis integration doc |  Major | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13214](https://issues.apache.org/jira/browse/SPARK-13214) | Fix dynamic allocation docs |  Trivial | Documentation | Bill Chambers | Bill Chambers |
| [SPARK-13274](https://issues.apache.org/jira/browse/SPARK-13274) | Fix Aggregator Links on GroupedDataset Scala API |  Trivial | Documentation | Raela Wang | Raela Wang |
| [SPARK-13350](https://issues.apache.org/jira/browse/SPARK-13350) | Configuration documentation incorrectly states that PYSPARK\_PYTHON\'s default is "python" |  Trivial | Documentation | Christopher Aycock | Christopher Aycock |
| [SPARK-13439](https://issues.apache.org/jira/browse/SPARK-13439) | Document that spark.mesos.uris is comma-separated |  Trivial | Mesos | Michael Gummelt | Michael Gummelt |
| [SPARK-13474](https://issues.apache.org/jira/browse/SPARK-13474) | Update packaging scripts to stage artifacts to home.apache.org |  Major | Project Infra | Josh Rosen | Josh Rosen |


