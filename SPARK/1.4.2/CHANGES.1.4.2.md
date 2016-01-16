
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

## Release 1.4.2 - Unreleased (as of 2016-01-16)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11813](https://issues.apache.org/jira/browse/SPARK-11813) | Avoid serialization of vocab in Word2Vec |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-10657](https://issues.apache.org/jira/browse/SPARK-10657) | Remove legacy SCP-based Jenkins log archiving code |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-10354](https://issues.apache.org/jira/browse/SPARK-10354) | First cost RDD shouldn't be cached in k-means\|\| and the following cost RDD should use MEMORY\_AND\_DISK |  Minor | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-10071](https://issues.apache.org/jira/browse/SPARK-10071) | QueueInputDStream Should Allow Checkpointing |  Major | Streaming | Asim Jalis | Shixiong Zhu |
| [SPARK-9633](https://issues.apache.org/jira/browse/SPARK-9633) | SBT download locations outdated; need an update |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-9507](https://issues.apache.org/jira/browse/SPARK-9507) | Remove dependency reduced POM hack now that shade plugin is updated |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-9496](https://issues.apache.org/jira/browse/SPARK-9496) | Do not print password in Hive Config |  Minor | SQL | Tao Wang | Tao Wang |
| [SPARK-9352](https://issues.apache.org/jira/browse/SPARK-9352) | Add tests for standalone scheduling code |  Critical | Deploy, Tests | Andrew Or | Andrew Or |
| [SPARK-9094](https://issues.apache.org/jira/browse/SPARK-9094) | Increase io.dropwizard.metrics dependency to 3.1.2 |  Minor | Spark Core | Carl Anders Düvel | Carl Anders Düvel |
| [SPARK-9010](https://issues.apache.org/jira/browse/SPARK-9010) | Improve the Spark Configuration document about `spark.kryoserializer.buffer` |  Trivial | Documentation | StanZhai | StanZhai |
| [SPARK-8390](https://issues.apache.org/jira/browse/SPARK-8390) | Update DirectKafkaWordCount examples to show how offset ranges can be used |  Major | Streaming | Tathagata Das | Cody Koeninger |
| [SPARK-7289](https://issues.apache.org/jira/browse/SPARK-7289) | Combine Limit and Sort to avoid total ordering |  Major | SQL | Fei Wang | Wenchen Fan |
| [SPARK-6591](https://issues.apache.org/jira/browse/SPARK-6591) | Python data source load options should auto convert common types into strings |  Major | PySpark, SQL | Reynold Xin | Yijie Shen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12685](https://issues.apache.org/jira/browse/SPARK-12685) | word2vec trainWordsCount gets overflow |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-12410](https://issues.apache.org/jira/browse/SPARK-12410) | "." and "\|" used for String.split directly |  Minor | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12087](https://issues.apache.org/jira/browse/SPARK-12087) | DStream.saveAsHadoopFiles can throw ConcurrentModificationException |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-12006](https://issues.apache.org/jira/browse/SPARK-12006) | GaussianMixture.train crashes if an initial model is not None |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-11999](https://issues.apache.org/jira/browse/SPARK-11999) | ThreadUtils.newDaemonCachedThreadPool(prefix, maxThreadNumber)  has unexpected behavior |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11974](https://issues.apache.org/jira/browse/SPARK-11974) | Not all the  temp dirs had been deleted when the JVM exits |  Major | Spark Core | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-11870](https://issues.apache.org/jira/browse/SPARK-11870) | Pyspark Streaming will swallow exceptions in TransformFunction and TransformFunctionSerializer |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11812](https://issues.apache.org/jira/browse/SPARK-11812) | pyspark reduceByKeyAndWindow does not handle unspecified invFunc (invFunc=None) |  Major | PySpark | David Tolpin | David Tolpin |
| [SPARK-11652](https://issues.apache.org/jira/browse/SPARK-11652) | Remote code execution with InvokerTransformer |  Minor | Spark Core | Daniel Darabos | Sean Owen |
| [SPARK-11581](https://issues.apache.org/jira/browse/SPARK-11581) | Example mllib code in documentation incorrectly computes MSE |  Trivial | Documentation | Brian Webb | M Bharat lal |
| [SPARK-11424](https://issues.apache.org/jira/browse/SPARK-11424) | Guard against MAPREDUCE-5918 by ensuring RecordReader is only closed once in \*HadoopRDD |  Critical | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11302](https://issues.apache.org/jira/browse/SPARK-11302) |  Multivariate Gaussian Model with Covariance  matrix returns incorrect answer in some cases |  Critical | MLlib | eyal sharon | Sean Owen |
| [SPARK-11188](https://issues.apache.org/jira/browse/SPARK-11188) | Elide stacktraces in bin/spark-sql for AnalysisExceptions |  Major | SQL | Michael Armbrust | Dilip Biswal |
| [SPARK-10980](https://issues.apache.org/jira/browse/SPARK-10980) | Create wrong decimal if unscaled \> 1e18 and scale \> 0 |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10973](https://issues.apache.org/jira/browse/SPARK-10973) | \_\_gettitem\_\_ method throws IndexError exception when we try to access index after the last non-zero entry. |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-10960](https://issues.apache.org/jira/browse/SPARK-10960) | SQL with windowing function cannot reference column in inner select block |  Major | SQL | David Wong | Liang-Chi Hsieh |
| [SPARK-10952](https://issues.apache.org/jira/browse/SPARK-10952) | Don't explode the environment when HIVE\_HOME isn't set. |  Minor | Build | Kevin Cox | Kevin Cox |
| [SPARK-10648](https://issues.apache.org/jira/browse/SPARK-10648) | Spark-SQL JDBC fails to set a default precision and scale when they are not defined in an oracle schema. |  Major | SQL | Travis Hegner | Travis Hegner |
| [SPARK-10642](https://issues.apache.org/jira/browse/SPARK-10642) | Crash in rdd.lookup() with "java.lang.Long cannot be cast to java.lang.Integer" |  Major | PySpark | Thouis Jones | Liang-Chi Hsieh |
| [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | SBT build explicitly sets Scala version, which can conflict with SBT's own scala version |  Minor | Build | Ahir Reddy | Ahir Reddy |
| [SPARK-10381](https://issues.apache.org/jira/browse/SPARK-10381) | Infinite loop when OutputCommitCoordination is enabled and OutputCommitter.commitTask throws exception |  Critical | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-10377](https://issues.apache.org/jira/browse/SPARK-10377) | Cassandra connector affected by backport change |  Major | SQL | Frode Sormo | Yin Huai |
| [SPARK-10353](https://issues.apache.org/jira/browse/SPARK-10353) | MLlib BLAS gemm outputs wrong result when beta = 0.0 for transpose transpose matrix multiplication |  Major | MLlib | Burak Yavuz | Burak Yavuz |
| [SPARK-10321](https://issues.apache.org/jira/browse/SPARK-10321) | OrcRelation doesn't override sizeInBytes |  Critical | SQL | Cheng Lian | Davies Liu |
| [SPARK-10169](https://issues.apache.org/jira/browse/SPARK-10169) | Evaluating AggregateFunction1 (old code path) may return wrong answers when grouping expressions are used as arguments of aggregate functions |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-9978](https://issues.apache.org/jira/browse/SPARK-9978) | Window functions require partitionBy to work as expected |  Major | PySpark | Maciej Szymkiewicz | Davies Liu |
| [SPARK-9828](https://issues.apache.org/jira/browse/SPARK-9828) | Should not share `{}` among instances |  Critical | ML, PySpark | Xiangrui Meng | Manoj Kumar |
| [SPARK-9826](https://issues.apache.org/jira/browse/SPARK-9826) | Cannot use custom classes in log4j.properties |  Minor | Spark Core | Michel Lemay | Michel Lemay |
| [SPARK-9806](https://issues.apache.org/jira/browse/SPARK-9806) | Don't share ReplayListenerBus between multiple applications |  Minor | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-9801](https://issues.apache.org/jira/browse/SPARK-9801) | Spark streaming deletes the temp file and backup files without checking if they exist or not |  Minor | Streaming | Hao Zhu | Hao Zhu |
| [SPARK-9691](https://issues.apache.org/jira/browse/SPARK-9691) | PySpark SQL rand function treats seed 0 as no seed |  Major | PySpark, SQL | Joseph K. Bradley | Yin Huai |
| [SPARK-9608](https://issues.apache.org/jira/browse/SPARK-9608) | Incorrect zinc -status check in build/mvn |  Minor | Build | Ryan Williams | Ryan Williams |
| [SPARK-9607](https://issues.apache.org/jira/browse/SPARK-9607) | Incorrect zinc check in build/mvn |  Minor | Build | Ryan Williams | Ryan Williams |
| [SPARK-9491](https://issues.apache.org/jira/browse/SPARK-9491) | App running on secure YARN with no HBase config will hang |  Blocker | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-9446](https://issues.apache.org/jira/browse/SPARK-9446) | Clear Active SparkContext in stop() method |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-9371](https://issues.apache.org/jira/browse/SPARK-9371) | Special chars in column names is broken in HiveContext |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9353](https://issues.apache.org/jira/browse/SPARK-9353) | Standalone scheduling memory requirement incorrect if cores per executor is not set |  Major | Deploy | Andrew Or | Andrew Or |
| [SPARK-9326](https://issues.apache.org/jira/browse/SPARK-9326) | Spark never closes the lock file used to prevent concurrent downloads |  Minor | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-9260](https://issues.apache.org/jira/browse/SPARK-9260) | Standalone scheduling can overflow a worker with cores |  Major | Deploy | Andrew Or | Nishkam Ravi |
| [SPARK-9254](https://issues.apache.org/jira/browse/SPARK-9254) | sbt-launch-lib.bash should use `curl --location` to support HTTP/HTTPS redirection |  Major | Build | Cheng Lian | Cheng Lian |
| [SPARK-9238](https://issues.apache.org/jira/browse/SPARK-9238) | two extra useless entries for bytesOfCodePointInUTF8 |  Trivial | SQL | zhichao-li | zhichao-li |
| [SPARK-9236](https://issues.apache.org/jira/browse/SPARK-9236) | Left Outer Join with empty JavaPairRDD returns empty RDD |  Major | Java API | Vitalii Slobodianyk | François Garillot |
| [SPARK-9193](https://issues.apache.org/jira/browse/SPARK-9193) | Avoid assigning tasks to executors under killing |  Major | Scheduler | Jie Huang | Jie Huang |
| [SPARK-9175](https://issues.apache.org/jira/browse/SPARK-9175) | BLAS.gemm fails to update matrix C when alpha==0 and beta!=1 |  Critical | MLlib | Meihua Wu | Meihua Wu |
| [SPARK-9109](https://issues.apache.org/jira/browse/SPARK-9109) | Unpersist a graph object does not work properly |  Minor | GraphX | Tien-Dung LE | Tien-Dung LE |
| [SPARK-9101](https://issues.apache.org/jira/browse/SPARK-9101) | Can't use null in selectExpr |  Major | PySpark | Mateusz Buśkiewicz | Mateusz Buśkiewicz |
| [SPARK-9021](https://issues.apache.org/jira/browse/SPARK-9021) |  Change RDD.aggregate() to do reduce(mapPartitions()) instead of mapPartitions.fold() |  Major | PySpark | Nicholas Hwang | Nicholas Hwang |
| [SPARK-9012](https://issues.apache.org/jira/browse/SPARK-9012) | Accumulators in the task table should be escaped |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8990](https://issues.apache.org/jira/browse/SPARK-8990) | DataFrameReader.parquet() ignores user specified data source options |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8976](https://issues.apache.org/jira/browse/SPARK-8976) | Python 3 crash: ValueError: invalid mode 'a+' (only r, w, b allowed) |  Major | PySpark | Olivier Delalleau | Davies Liu |
| [SPARK-8974](https://issues.apache.org/jira/browse/SPARK-8974) | There is a bug in dynamicAllocation. When there is no running tasks, the number of executor a long time without running tasks, the number of executor does not reduce to the value of "spark.dynamicAllocation.minExecutors". |  Minor | Spark Core | KaiXinXIaoLei | KaiXinXIaoLei |
| [SPARK-8937](https://issues.apache.org/jira/browse/SPARK-8937) | A setting `spark.unsafe.exceptionOnMemoryLeak ` is missing in ScalaTest config. |  Minor | Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-8910](https://issues.apache.org/jira/browse/SPARK-8910) | MiMa test is flaky because it starts a SQLContext |  Critical | Tests | Andrew Or | Andrew Or |
| [SPARK-8881](https://issues.apache.org/jira/browse/SPARK-8881) | Standalone mode scheduling fails because cores assignment is not atomic |  Critical | Deploy | Nishkam Ravi | Nishkam Ravi |
| [SPARK-8865](https://issues.apache.org/jira/browse/SPARK-8865) | Fix bug:  init SimpleConsumerConfig with kafka params |  Minor | Streaming | guowei | guowei |
| [SPARK-8593](https://issues.apache.org/jira/browse/SPARK-8593) | History Server doesn't show complete application when one attempt inprogress |  Major | YARN | Thomas Graves | Rekha Joshi |
| [SPARK-8430](https://issues.apache.org/jira/browse/SPARK-8430) | ExternalShuffleBlockResolver should support UnsafeShuffleManager |  Critical | Shuffle | Lianhui Wang | Lianhui Wang |
| [SPARK-8405](https://issues.apache.org/jira/browse/SPARK-8405) | Show executor logs on Web UI when Yarn log aggregation is enabled |  Major | Web UI | Carson Wang | Carson Wang |
| [SPARK-8386](https://issues.apache.org/jira/browse/SPARK-8386) | DataFrame and JDBC regression |  Critical | SQL | Peter Haumer | Huaxin Gao |
| [SPARK-8057](https://issues.apache.org/jira/browse/SPARK-8057) | Call TaskAttemptContext.getTaskAttemptID using Reflection |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8052](https://issues.apache.org/jira/browse/SPARK-8052) | Hive on Spark: CAST string AS BIGINT produces wrong value |  Major | . | Andrey Kurochkin | Liang-Chi Hsieh |
| [SPARK-7527](https://issues.apache.org/jira/browse/SPARK-7527) | Wrong detection of REPL mode in ClosureCleaner |  Minor | Spark Core | Oleksii Kostyliev | Shixiong Zhu |
| [SPARK-7419](https://issues.apache.org/jira/browse/SPARK-7419) | Flaky test: o.a.s.streaming.CheckpointSuite |  Critical | Tests | Andrew Or | Shixiong Zhu |
| [SPARK-4816](https://issues.apache.org/jira/browse/SPARK-4816) | Maven profile netlib-lgpl does not work |  Minor | Build | Guillaume Pitel | Sean Owen |
| [SPARK-3190](https://issues.apache.org/jira/browse/SPARK-3190) | Creation of large graph(\> 2.15 B nodes) seems to be broken:possible overflow somewhere |  Critical | GraphX | npanj | Ankur Dave |
| [SPARK-2168](https://issues.apache.org/jira/browse/SPARK-2168) | History Server renered page not suitable for load balancing |  Minor | Spark Core | Lukasz Jastrzebski | Lukasz Jastrzebski |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9949](https://issues.apache.org/jira/browse/SPARK-9949) | TakeOrderedAndProject returns wrong output attributes when project is pushed in to it |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-8743](https://issues.apache.org/jira/browse/SPARK-8743) | Deregister Codahale metrics for streaming when StreamingContext is closed |  Major | Streaming | Tathagata Das | Neelesh Srinivas Salian |
| [SPARK-7246](https://issues.apache.org/jira/browse/SPARK-7246) | Rank for DataFrames |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-2017](https://issues.apache.org/jira/browse/SPARK-2017) | web ui stage page becomes unresponsive when the number of tasks is large |  Major | Web UI | Reynold Xin | Andrew Or |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10660](https://issues.apache.org/jira/browse/SPARK-10660) | Doc describe error in the "Running Spark on YARN" page |  Trivial | Documentation | yangping wu | yangping wu |
| [SPARK-9198](https://issues.apache.org/jira/browse/SPARK-9198) | Typo in PySpark SparseVector docs (bad index) |  Minor | Documentation, MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8927](https://issues.apache.org/jira/browse/SPARK-8927) | Doc format wrong for some config descriptions |  Trivial | Documentation | Jon Alter | Jon Alter |
| [SPARK-7707](https://issues.apache.org/jira/browse/SPARK-7707) | User guide and example code for KernelDensity |  Major | Documentation, MLlib | Xiangrui Meng | Sandy Ryza |
| [SPARK-7555](https://issues.apache.org/jira/browse/SPARK-7555) | User guide update for ElasticNet |  Major | ML | Joseph K. Bradley | Shuo Xiang |
| [SPARK-7084](https://issues.apache.org/jira/browse/SPARK-7084) | Improve the saveAsTable documentation |  Minor | SQL | madhukara phatak | madhukara phatak |


