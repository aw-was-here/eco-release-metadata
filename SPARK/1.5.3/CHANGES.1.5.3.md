
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

## Release 1.5.3 - Unreleased (as of 2016-01-08)

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


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12450](https://issues.apache.org/jira/browse/SPARK-12450) | Un-persist broadcasted variables in KMeans |  Minor | MLlib | RJ Nowling | RJ Nowling |
| [SPARK-11786](https://issues.apache.org/jira/browse/SPARK-11786) | Tone down error messages from AkkaRpcEnv |  Trivial | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11328](https://issues.apache.org/jira/browse/SPARK-11328) | Provide more informative error message when direct parquet output committer is used and there is a file already exists error. |  Critical | SQL | Yin Huai | Nong Li |
| [SPARK-11270](https://issues.apache.org/jira/browse/SPARK-11270) | Add improved equality testing for TopicAndPartition from the Kafka Streaming API |  Minor | PySpark, Streaming | Nick Evans | Nick Evans |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12673](https://issues.apache.org/jira/browse/SPARK-12673) | Prepending base URI of job description is missing |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-12617](https://issues.apache.org/jira/browse/SPARK-12617) | socket descriptor leak killing streaming app |  Critical | PySpark, Streaming | Antony Mayi | Shixiong Zhu |
| [SPARK-12520](https://issues.apache.org/jira/browse/SPARK-12520) | Python API dataframe join returns wrong results on outer join |  Major | PySpark, SQL | Aravind  B | Xiao Li |
| [SPARK-12477](https://issues.apache.org/jira/browse/SPARK-12477) | [SQL] Tungsten projection fails for null values in array fields |  Major | SQL | Pierre Borckmans | Pierre Borckmans |
| [SPARK-12453](https://issues.apache.org/jira/browse/SPARK-12453) | Spark Streaming Kinesis Example broken due to wrong AWS Java SDK version |  Critical | Streaming | Martin Schade | Brian London |
| [SPARK-12410](https://issues.apache.org/jira/browse/SPARK-12410) | "." and "\|" used for String.split directly |  Minor | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12275](https://issues.apache.org/jira/browse/SPARK-12275) | No plan for BroadcastHint in some condition |  Major | SQL | yucai | yucai |
| [SPARK-12218](https://issues.apache.org/jira/browse/SPARK-12218) | Invalid splitting of nested AND expressions in Data Source filter API |  Blocker | SQL | Irakli Machabeli | Yin Huai |
| [SPARK-12160](https://issues.apache.org/jira/browse/SPARK-12160) | spark.mllib should use SQLContext.getOrCreate |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-12138](https://issues.apache.org/jira/browse/SPARK-12138) | Escape \u in the generated comments. |  Major | SQL | Yin Huai | Xiao Li |
| [SPARK-12101](https://issues.apache.org/jira/browse/SPARK-12101) | Fix thread pools that cannot cache tasks in Worker and AppClient |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12090](https://issues.apache.org/jira/browse/SPARK-12090) | Coalesce does not consider shuffle in PySpark |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12087](https://issues.apache.org/jira/browse/SPARK-12087) | DStream.saveAsHadoopFiles can throw ConcurrentModificationException |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-12053](https://issues.apache.org/jira/browse/SPARK-12053) | EventLog for completed applications always not found if spark.eventLog.compress is true |  Major | Spark Core, Web UI | Teng Qiu | Teng Qiu |
| [SPARK-12049](https://issues.apache.org/jira/browse/SPARK-12049) | User JVM shutdown hook can cause deadlock at shutdown |  Major | Spark Core | Sean Owen | Sean Owen |
| [SPARK-12048](https://issues.apache.org/jira/browse/SPARK-12048) | JDBCRDD calls close() twice - SQLite then throws an exception |  Minor | SQL | R. H. | R. H. |
| [SPARK-12030](https://issues.apache.org/jira/browse/SPARK-12030) | Incorrect results when aggregate joined data |  Blocker | SQL | Maciej Bryński | Nong Li |
| [SPARK-12006](https://issues.apache.org/jira/browse/SPARK-12006) | GaussianMixture.train crashes if an initial model is not None |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-11999](https://issues.apache.org/jira/browse/SPARK-11999) | ThreadUtils.newDaemonCachedThreadPool(prefix, maxThreadNumber)  has unexpected behavior |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11974](https://issues.apache.org/jira/browse/SPARK-11974) | Not all the  temp dirs had been deleted when the JVM exits |  Major | Spark Core | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-11885](https://issues.apache.org/jira/browse/SPARK-11885) | UDAF may nondeterministically generate wrong results |  Critical | SQL | Yin Huai | Davies Liu |
| [SPARK-11836](https://issues.apache.org/jira/browse/SPARK-11836) | Register a Python function creates a new SQLContext |  Critical | SQL | Yin Huai | Davies Liu |
| [SPARK-11831](https://issues.apache.org/jira/browse/SPARK-11831) | AkkaRpcEnvSuite is prone to port-contention-related flakiness |  Major | Tests | Josh Rosen | Shixiong Zhu |
| [SPARK-11817](https://issues.apache.org/jira/browse/SPARK-11817) | insert of timestamp with factional seconds inserts a NULL |  Major | SQL | Chip Sands | Liang-Chi Hsieh |
| [SPARK-11812](https://issues.apache.org/jira/browse/SPARK-11812) | pyspark reduceByKeyAndWindow does not handle unspecified invFunc (invFunc=None) |  Major | PySpark | David Tolpin | David Tolpin |
| [SPARK-11788](https://issues.apache.org/jira/browse/SPARK-11788) | Using java.sql.Timestamp and java.sql.Date in where clauses on JDBC dataframes causes SQLServerException |  Major | SQL | Martin Tapp | Huaxin Gao |
| [SPARK-11752](https://issues.apache.org/jira/browse/SPARK-11752) | fix timezone problem for DateTimeUtils.getSeconds |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11737](https://issues.apache.org/jira/browse/SPARK-11737) | String may not be serialized correctly with Kyro |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-11657](https://issues.apache.org/jira/browse/SPARK-11657) | Bad Dataframe data read from parquet |  Critical | Spark Core, SQL | Virgil Palanciuc | Davies Liu |
| [SPARK-11652](https://issues.apache.org/jira/browse/SPARK-11652) | Remote code execution with InvokerTransformer |  Minor | Spark Core | Daniel Darabos | Sean Owen |
| [SPARK-11595](https://issues.apache.org/jira/browse/SPARK-11595) | "ADD JAR" doesn't work if the given path contains URL scheme like "file:/" and "hdfs:/" |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11581](https://issues.apache.org/jira/browse/SPARK-11581) | Example mllib code in documentation incorrectly computes MSE |  Trivial | Documentation | Brian Webb | M Bharat lal |
| [SPARK-11577](https://issues.apache.org/jira/browse/SPARK-11577) | Handle code review comments for SPARK-11188 |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-11555](https://issues.apache.org/jira/browse/SPARK-11555) | spark on yarn spark-class --num-workers doesn't work |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-11511](https://issues.apache.org/jira/browse/SPARK-11511) | Creating an InputDStream but not using it throws NPE |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11497](https://issues.apache.org/jira/browse/SPARK-11497) | PySpark RowMatrix Constructor Has Type Erasure Issue |  Minor | MLlib, PySpark | Mike Dusenberry | Mike Dusenberry |
| [SPARK-11474](https://issues.apache.org/jira/browse/SPARK-11474) | Options to jdbc load are lower cased |  Minor | Input/Output | Stephen Samuel | Huaxin Gao |
| [SPARK-11378](https://issues.apache.org/jira/browse/SPARK-11378) | StreamingContext.awaitTerminationOrTimeout does not return |  Minor | PySpark, Streaming | Nick Evans | Nick Evans |
| [SPARK-11352](https://issues.apache.org/jira/browse/SPARK-11352) | codegen.GeneratePredicate fails due to unquoted comment |  Major | SQL | Rares Mirica | Yin Huai |
| [SPARK-11311](https://issues.apache.org/jira/browse/SPARK-11311) | spark cannot describe temporary functions |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11294](https://issues.apache.org/jira/browse/SPARK-11294) | Improve R doc for read.df, write.df, saveAsTable |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11287](https://issues.apache.org/jira/browse/SPARK-11287) | Executing deploy.client TestClient fails with bad class name |  Trivial | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-11265](https://issues.apache.org/jira/browse/SPARK-11265) | YarnClient can't get tokens to talk to Hive 1.2.1 in a secure cluster |  Major | YARN | Steve Loughran | Steve Loughran |
| [SPARK-11195](https://issues.apache.org/jira/browse/SPARK-11195) | Exception thrown on executor throws ClassNotFoundException on driver |  Major | Spark Core | Hurshal Patel | Hurshal Patel |
| [SPARK-11191](https://issues.apache.org/jira/browse/SPARK-11191) | [1.5] Can't create UDF's using hive thrift service |  Blocker | SQL | David Ross | Cheng Lian |
| [SPARK-10971](https://issues.apache.org/jira/browse/SPARK-10971) | sparkR: RRunner should allow setting path to Rscript |  Major | SparkR | Thomas Graves | Sun Rui |
| [SPARK-10666](https://issues.apache.org/jira/browse/SPARK-10666) | Use properties from ActiveJob associated with a Stage |  Major | Scheduler, Spark Core | Mark Hamstra | Mark Hamstra |
| [SPARK-10648](https://issues.apache.org/jira/browse/SPARK-10648) | Spark-SQL JDBC fails to set a default precision and scale when they are not defined in an oracle schema. |  Major | SQL | Travis Hegner | Travis Hegner |
| [SPARK-10181](https://issues.apache.org/jira/browse/SPARK-10181) | HiveContext is not used with keytab principal but with user principal/unix username |  Major | SQL | Bolke de Bruin | Yu Gao |
| [SPARK-10046](https://issues.apache.org/jira/browse/SPARK-10046) | Hive warehouse dir not set in current directory when not providing hive-site.xml |  Major | Spark Core, SQL | Antonio Murgia | Xin Wu |
| [SPARK-8029](https://issues.apache.org/jira/browse/SPARK-8029) | ShuffleMapTasks must be robust to concurrent attempts on the same executor |  Critical | Spark Core | Imran Rashid | Davies Liu |
| [SPARK-7829](https://issues.apache.org/jira/browse/SPARK-7829) | SortShuffleWriter writes inconsistent data & index files on stage retry |  Major | Shuffle, Spark Core | Imran Rashid | Davies Liu |
| [SPARK-7308](https://issues.apache.org/jira/browse/SPARK-7308) | Should there be multiple concurrent attempts for one stage? |  Major | Spark Core | Imran Rashid | Davies Liu |
| [SPARK-5966](https://issues.apache.org/jira/browse/SPARK-5966) | Spark-submit deploy-mode incorrectly affecting submission when master = local[4] |  Critical | Spark Submit | Tathagata Das | kevin yu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11649](https://issues.apache.org/jira/browse/SPARK-11649) | "SparkListenerSuite.onTaskGettingResult() called when result fetched remotely" test is very slow |  Major | Tests | Josh Rosen | Josh Rosen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11476](https://issues.apache.org/jira/browse/SPARK-11476) | Incorrect function referred to in MLib Random data generation documentation |  Minor | Documentation | Jason Blochowiak | Sean Owen |


