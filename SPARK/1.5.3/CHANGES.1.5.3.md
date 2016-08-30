
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

## Release 1.5.3 - Unreleased (as of 2016-08-30)



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
| [SPARK-11270](https://issues.apache.org/jira/browse/SPARK-11270) | Add improved equality testing for TopicAndPartition from the Kafka Streaming API |  Minor | PySpark, Streaming | Nick Evans | Nick Evans |
| [SPARK-11786](https://issues.apache.org/jira/browse/SPARK-11786) | Tone down error messages from AkkaRpcEnv |  Trivial | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11328](https://issues.apache.org/jira/browse/SPARK-11328) | Provide more informative error message when direct parquet output committer is used and there is a file already exists error. |  Critical | SQL | Yin Huai | Nong Li |
| [SPARK-12450](https://issues.apache.org/jira/browse/SPARK-12450) | Un-persist broadcasted variables in KMeans |  Minor | MLlib | RJ Nowling | RJ Nowling |
| [SPARK-14149](https://issues.apache.org/jira/browse/SPARK-14149) | Log exceptions in tryOrIOException |  Major | Spark Core | Reynold Xin | Reynold Xin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10971](https://issues.apache.org/jira/browse/SPARK-10971) | sparkR: RRunner should allow setting path to Rscript |  Major | SparkR | Thomas Graves | Sun Rui |
| [SPARK-11294](https://issues.apache.org/jira/browse/SPARK-11294) | Improve R doc for read.df, write.df, saveAsTable |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11287](https://issues.apache.org/jira/browse/SPARK-11287) | Executing deploy.client TestClient fails with bad class name |  Trivial | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-5966](https://issues.apache.org/jira/browse/SPARK-5966) | Spark-submit deploy-mode incorrectly affecting submission when master = local[4] |  Critical | Spark Submit | Tathagata Das | kevin yu |
| [SPARK-11311](https://issues.apache.org/jira/browse/SPARK-11311) | spark cannot describe temporary functions |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11432](https://issues.apache.org/jira/browse/SPARK-11432) | Personalized PageRank shouldn't use uniform initialization |  Minor | GraphX | Yves Raimond | Yves Raimond |
| [SPARK-11265](https://issues.apache.org/jira/browse/SPARK-11265) | YarnClient can't get tokens to talk to Hive 1.2.1 in a secure cluster |  Major | YARN | Steve Loughran | Steve Loughran |
| [SPARK-11378](https://issues.apache.org/jira/browse/SPARK-11378) | StreamingContext.awaitTerminationOrTimeout does not return |  Minor | PySpark, Streaming | Nick Evans | Nick Evans |
| [SPARK-11474](https://issues.apache.org/jira/browse/SPARK-11474) | Options to jdbc load are lower cased |  Minor | SQL | Stephen Samuel | Huaxin Gao |
| [SPARK-10648](https://issues.apache.org/jira/browse/SPARK-10648) | Spark-SQL JDBC fails to set a default precision and scale when they are not defined in an oracle schema. |  Major | SQL | Travis Hegner | Travis Hegner |
| [SPARK-11511](https://issues.apache.org/jira/browse/SPARK-11511) | Creating an InputDStream but not using it throws NPE |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11555](https://issues.apache.org/jira/browse/SPARK-11555) | spark on yarn spark-class --num-workers doesn't work |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-10046](https://issues.apache.org/jira/browse/SPARK-10046) | Hive warehouse dir not set in current directory when not providing hive-site.xml |  Major | Spark Core, SQL | Antonio Murgia | Xin Wu |
| [SPARK-11581](https://issues.apache.org/jira/browse/SPARK-11581) | Example mllib code in documentation incorrectly computes MSE |  Trivial | Documentation | Brian Webb | M Bharat lal |
| [SPARK-11577](https://issues.apache.org/jira/browse/SPARK-11577) | Handle code review comments for SPARK-11188 |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-11595](https://issues.apache.org/jira/browse/SPARK-11595) | "ADD JAR" doesn't work if the given path contains URL scheme like "file:/" and "hdfs:/" |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11191](https://issues.apache.org/jira/browse/SPARK-11191) | [1.5] Can't create UDF's using hive thrift service |  Blocker | SQL | David Ross | Cheng Lian |
| [SPARK-8029](https://issues.apache.org/jira/browse/SPARK-8029) | ShuffleMapTasks must be robust to concurrent attempts on the same executor |  Critical | Spark Core | Imran Rashid | Davies Liu |
| [SPARK-7829](https://issues.apache.org/jira/browse/SPARK-7829) | SortShuffleWriter writes inconsistent data & index files on stage retry |  Major | Shuffle, Spark Core | Imran Rashid | Davies Liu |
| [SPARK-7308](https://issues.apache.org/jira/browse/SPARK-7308) | Should there be multiple concurrent attempts for one stage? |  Major | Spark Core | Imran Rashid | Davies Liu |
| [SPARK-10181](https://issues.apache.org/jira/browse/SPARK-10181) | HiveContext is not used with keytab principal but with user principal/unix username |  Major | SQL | Bolke de Bruin | Yu Gao |
| [SPARK-11752](https://issues.apache.org/jira/browse/SPARK-11752) | fix timezone problem for DateTimeUtils.getSeconds |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11737](https://issues.apache.org/jira/browse/SPARK-11737) | String may not be serialized correctly with Kyro |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-11652](https://issues.apache.org/jira/browse/SPARK-11652) | Remote code execution with InvokerTransformer |  Minor | Spark Core | Daniel Darabos | Sean Owen |
| [SPARK-11195](https://issues.apache.org/jira/browse/SPARK-11195) | Exception thrown on executor throws ClassNotFoundException on driver |  Major | Spark Core | Hurshal Patel | Hurshal Patel |
| [SPARK-11657](https://issues.apache.org/jira/browse/SPARK-11657) | Bad Dataframe data read from parquet |  Critical | Spark Core, SQL | Virgil Palanciuc | Davies Liu |
| [SPARK-11812](https://issues.apache.org/jira/browse/SPARK-11812) | pyspark reduceByKeyAndWindow does not handle unspecified invFunc (invFunc=None) |  Major | PySpark | David Tolpin | David Tolpin |
| [SPARK-11831](https://issues.apache.org/jira/browse/SPARK-11831) | AkkaRpcEnvSuite is prone to port-contention-related flakiness |  Major | Tests | Josh Rosen | Shixiong Zhu |
| [SPARK-11817](https://issues.apache.org/jira/browse/SPARK-11817) | insert of timestamp with factional seconds inserts a NULL |  Major | SQL | Chip Sands | Liang-Chi Hsieh |
| [SPARK-11836](https://issues.apache.org/jira/browse/SPARK-11836) | Register a Python function creates a new SQLContext |  Critical | SQL | Yin Huai | Davies Liu |
| [SPARK-10666](https://issues.apache.org/jira/browse/SPARK-10666) | Use properties from ActiveJob associated with a Stage |  Major | Scheduler, Spark Core | Mark Hamstra | Mark Hamstra |
| [SPARK-11974](https://issues.apache.org/jira/browse/SPARK-11974) | Not all the  temp dirs had been deleted when the JVM exits |  Major | Spark Core | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-11999](https://issues.apache.org/jira/browse/SPARK-11999) | ThreadUtils.newDaemonCachedThreadPool(prefix, maxThreadNumber)  has unexpected behavior |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12053](https://issues.apache.org/jira/browse/SPARK-12053) | EventLog for completed applications always not found if spark.eventLog.compress is true |  Major | Spark Core, Web UI | Teng Qiu | Teng Qiu |
| [SPARK-12049](https://issues.apache.org/jira/browse/SPARK-12049) | User JVM shutdown hook can cause deadlock at shutdown |  Major | Spark Core | Sean Owen | Sean Owen |
| [SPARK-12030](https://issues.apache.org/jira/browse/SPARK-12030) | Incorrect results when aggregate joined data |  Blocker | SQL | Maciej Bryński | Nong Li |
| [SPARK-11788](https://issues.apache.org/jira/browse/SPARK-11788) | Using java.sql.Timestamp and java.sql.Date in where clauses on JDBC dataframes causes SQLServerException |  Major | SQL | Martin Tapp | Huaxin Gao |
| [SPARK-11352](https://issues.apache.org/jira/browse/SPARK-11352) | codegen.GeneratePredicate fails due to unquoted comment |  Major | SQL | Rares Mirica | Yin Huai |
| [SPARK-12087](https://issues.apache.org/jira/browse/SPARK-12087) | DStream.saveAsHadoopFiles can throw ConcurrentModificationException |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-12090](https://issues.apache.org/jira/browse/SPARK-12090) | Coalesce does not consider shuffle in PySpark |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12048](https://issues.apache.org/jira/browse/SPARK-12048) | JDBCRDD calls close() twice - SQLite then throws an exception |  Minor | SQL | R. H. | R. H. |
| [SPARK-12138](https://issues.apache.org/jira/browse/SPARK-12138) | Escape \u in the generated comments. |  Major | SQL | Yin Huai | Xiao Li |
| [SPARK-12101](https://issues.apache.org/jira/browse/SPARK-12101) | Fix thread pools that cannot cache tasks in Worker and AppClient |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12160](https://issues.apache.org/jira/browse/SPARK-12160) | spark.mllib should use SQLContext.getOrCreate |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11885](https://issues.apache.org/jira/browse/SPARK-11885) | UDAF may nondeterministically generate wrong results |  Critical | SQL | Yin Huai | Davies Liu |
| [SPARK-11497](https://issues.apache.org/jira/browse/SPARK-11497) | PySpark RowMatrix Constructor Has Type Erasure Issue |  Minor | MLlib, PySpark | Mike Dusenberry | Mike Dusenberry |
| [SPARK-12275](https://issues.apache.org/jira/browse/SPARK-12275) | No plan for BroadcastHint in some condition |  Major | SQL | yucai | yucai |
| [SPARK-12410](https://issues.apache.org/jira/browse/SPARK-12410) | "." and "\|" used for String.split directly |  Minor | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12218](https://issues.apache.org/jira/browse/SPARK-12218) | Invalid splitting of nested AND expressions in Data Source filter API |  Blocker | SQL | Irakli Machabeli | Yin Huai |
| [SPARK-12477](https://issues.apache.org/jira/browse/SPARK-12477) | [SQL] Tungsten projection fails for null values in array fields |  Major | SQL | Pierre Borckmans | Pierre Borckmans |
| [SPARK-12520](https://issues.apache.org/jira/browse/SPARK-12520) | Python API dataframe join returns wrong results on outer join |  Major | PySpark, SQL | Aravind  B | Xiao Li |
| [SPARK-12617](https://issues.apache.org/jira/browse/SPARK-12617) | socket descriptor leak killing streaming app |  Critical | PySpark, Streaming | Antony Mayi | Shixiong Zhu |
| [SPARK-12453](https://issues.apache.org/jira/browse/SPARK-12453) | Spark Streaming Kinesis Example broken due to wrong AWS Java SDK version |  Critical | Streaming | Martin Schade | Brian London |
| [SPARK-12673](https://issues.apache.org/jira/browse/SPARK-12673) | Prepending base URI of job description is missing |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-12006](https://issues.apache.org/jira/browse/SPARK-12006) | GaussianMixture.train crashes if an initial model is not None |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-12734](https://issues.apache.org/jira/browse/SPARK-12734) | Fix Netty exclusions and use Maven Enforcer to prevent bug from being reintroduced |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-11870](https://issues.apache.org/jira/browse/SPARK-11870) | Pyspark Streaming will swallow exceptions in TransformFunction and TransformFunctionSerializer |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12685](https://issues.apache.org/jira/browse/SPARK-12685) | word2vec trainWordsCount gets overflow |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-12784](https://issues.apache.org/jira/browse/SPARK-12784) | Spark UI IndexOutOfBoundsException with dynamic allocation |  Major | Web UI, YARN | Thomas Graves | Shixiong Zhu |
| [SPARK-12755](https://issues.apache.org/jira/browse/SPARK-12755) | Spark may attempt to rebuild application UI before finishing writing the event logs in possible race condition |  Minor | Spark Core | Michael Allman | Michael Allman |
| [SPARK-10847](https://issues.apache.org/jira/browse/SPARK-10847) | Pyspark - DataFrame - Optional Metadata with `None` triggers cryptic failure |  Minor | PySpark, SQL | Shea Parkes | Jason C Lee |
| [SPARK-13088](https://issues.apache.org/jira/browse/SPARK-13088) | DAG viz does not work with latest version of chrome |  Blocker | Web UI | Andrew Or | Andrew Or |
| [SPARK-12363](https://issues.apache.org/jira/browse/SPARK-12363) | PowerIterationClustering test case failed if we deprecated KMeans.setRuns |  Minor | MLlib | Yanbo Liang | Liang-Chi Hsieh |
| [SPARK-13355](https://issues.apache.org/jira/browse/SPARK-13355) | Replace GraphImpl.fromExistingRDDs by Graph |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-13473](https://issues.apache.org/jira/browse/SPARK-13473) | Predicate can't be pushed through project with nondeterministic field |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12941](https://issues.apache.org/jira/browse/SPARK-12941) | Spark-SQL JDBC Oracle dialect fails to map string datatypes to Oracle VARCHAR datatype |  Major | Spark Core | Jose Martinez Poblete | Thomas Sebastian |
| [SPARK-13697](https://issues.apache.org/jira/browse/SPARK-13697) | TransformFunctionSerializer.loads doesn't restore the function's module name if it's '\_\_main\_\_' |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13803](https://issues.apache.org/jira/browse/SPARK-13803) | Standalone master does not balance cluster-mode drivers across workers |  Major | Deploy, Spark Core | Brian Wongchaowart | Nan Zhu |
| [SPARK-13806](https://issues.apache.org/jira/browse/SPARK-13806) | SQL round() produces incorrect results for negative values |  Major | SQL | Mark Hamstra | Davies Liu |
| [SPARK-14187](https://issues.apache.org/jira/browse/SPARK-14187) | Incorrect use of binarysearch in SparseMatrix |  Minor | MLlib | Chenliang Xu | Chenliang Xu |
| [SPARK-11507](https://issues.apache.org/jira/browse/SPARK-11507) | Error thrown when using BlockMatrix.add |  Minor | MLlib | Kareem Alhazred | yuhao yang |
| [SPARK-14322](https://issues.apache.org/jira/browse/SPARK-14322) | Use treeAggregate instead of reduce in OnlineLDAOptimizer |  Major | ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-14298](https://issues.apache.org/jira/browse/SPARK-14298) | LDA should support disable checkpoint |  Minor | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-15975](https://issues.apache.org/jira/browse/SPARK-15975) | Improper Popen.wait() return code handling in dev/run-tests |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-16086](https://issues.apache.org/jira/browse/SPARK-16086) | Python UDF failed when there is no arguments |  Major | PySpark, SQL | Davies Liu | Davies Liu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11649](https://issues.apache.org/jira/browse/SPARK-11649) | "SparkListenerSuite.onTaskGettingResult() called when result fetched remotely" test is very slow |  Major | Tests | Josh Rosen | Josh Rosen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11476](https://issues.apache.org/jira/browse/SPARK-11476) | Incorrect function referred to in MLib Random data generation documentation |  Minor | Documentation | Jason Blochowiak | Sean Owen |
| [SPARK-14618](https://issues.apache.org/jira/browse/SPARK-14618) | RegressionEvaluator doc out of date |  Minor | Documentation, ML | Joseph K. Bradley | Joseph K. Bradley |


