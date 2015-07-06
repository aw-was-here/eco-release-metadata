
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

## Release 1.2.1 - 2015-02-09

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-5402](https://issues.apache.org/jira/browse/SPARK-5402) | Log executor ID at executor-construction time |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5289](https://issues.apache.org/jira/browse/SPARK-5289) | Backport publishing of repl, yarn into branch-1.2 |  Blocker | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-5234](https://issues.apache.org/jira/browse/SPARK-5234) | examples for ml don't have sparkContext.stop |  Trivial | ML | yuhao yang | yuhao yang |
| [SPARK-5200](https://issues.apache.org/jira/browse/SPARK-5200) | Disable web UI in Hive Thriftserver tests |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-5136](https://issues.apache.org/jira/browse/SPARK-5136) | Improve documentation around setting up Spark IntelliJ project |  Minor | Documentation | Ryan Williams | Sean Owen |
| [SPARK-5078](https://issues.apache.org/jira/browse/SPARK-5078) | Allow setting Akka host name from env vars |  Critical | Spark Core | Michael Armbrust | Michael Armbrust |
| [SPARK-5063](https://issues.apache.org/jira/browse/SPARK-5063) | Display more helpful error messages for several invalid operations |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-4932](https://issues.apache.org/jira/browse/SPARK-4932) | Add help comments in Analytics |  Trivial | GraphX | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-4920](https://issues.apache.org/jira/browse/SPARK-4920) | current spark version in UI is not striking |  Minor | Web UI | uncleGen | uncleGen |
| [SPARK-4896](https://issues.apache.org/jira/browse/SPARK-4896) | Don't redundantly copy executor dependencies in Utils.fetchFile |  Major | Spark Core | Josh Rosen | Ryan Williams |
| [SPARK-4883](https://issues.apache.org/jira/browse/SPARK-4883) | Add a name to the directoryCleaner thread |  Minor | Shuffle | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4880](https://issues.apache.org/jira/browse/SPARK-4880) | remove spark.locality.wait setting in examples/graphx/Analytics.scala |  Minor | Examples, GraphX | Ernest | Ernest |
| [SPARK-4764](https://issues.apache.org/jira/browse/SPARK-4764) | Ensure that files are fetched atomically |  Minor | Spark Core | Christophe Préaud | Christophe Préaud |
| [SPARK-4754](https://issues.apache.org/jira/browse/SPARK-4754) | ExecutorAllocationManager should not take in SparkContext |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4714](https://issues.apache.org/jira/browse/SPARK-4714) | BlockManager should check whether blocks have already been removed Checking block is null or not after having gotten info.lock in remove block method |  Minor | Block Manager | SuYan | SuYan |
| [SPARK-4642](https://issues.apache.org/jira/browse/SPARK-4642) | Documents about running-on-YARN needs update |  Minor | Documentation | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-4140](https://issues.apache.org/jira/browse/SPARK-4140) | Document the dynamic allocation feature |  Major | Spark Core, YARN | Andrew Or | Andrew Or |
| [SPARK-3428](https://issues.apache.org/jira/browse/SPARK-3428) | TaskMetrics for running tasks is missing GC time metrics |  Major | Spark Core | Andrew Ash | Sandy Ryza |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-5401](https://issues.apache.org/jira/browse/SPARK-5401) | Executor ID should be set before MetricsSystem is created |  Major | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5355](https://issues.apache.org/jira/browse/SPARK-5355) | SparkConf is not thread-safe |  Blocker | Spark Core | Davies Liu | Davies Liu |
| [SPARK-5308](https://issues.apache.org/jira/browse/SPARK-5308) | MD5 / SHA1 hash format doesn't match standard Maven output |  Minor | Build | Kuldeep | Sean Owen |
| [SPARK-5282](https://issues.apache.org/jira/browse/SPARK-5282) | RowMatrix easily gets int overflow in the memory size warning |  Trivial | MLlib | yuhao yang | yuhao yang |
| [SPARK-5275](https://issues.apache.org/jira/browse/SPARK-5275) | pyspark.streaming is not included in assembly jar |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-5224](https://issues.apache.org/jira/browse/SPARK-5224) | parallelize list/ndarray is really slow |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-5223](https://issues.apache.org/jira/browse/SPARK-5223) | Use pickle instead of MapConvert and ListConvert in MLlib Python API |  Critical | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-5201](https://issues.apache.org/jira/browse/SPARK-5201) | ParallelCollectionRDD.slice(seq, numSlices) has int overflow when dealing with inclusive range |  Major | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-5187](https://issues.apache.org/jira/browse/SPARK-5187) | CACHE TABLE AS SELECT fails with Hive UDFs |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-5132](https://issues.apache.org/jira/browse/SPARK-5132) | The name for get stage info atempt ID from Json was wrong |  Minor | Spark Core, Web UI | SuYan | SuYan |
| [SPARK-5130](https://issues.apache.org/jira/browse/SPARK-5130) | yarn-cluster mode should not be considered as client mode in spark-submit |  Major | Deploy | Tao Wang | Tao Wang |
| [SPARK-5089](https://issues.apache.org/jira/browse/SPARK-5089) | Vector conversion broken for non-float64 arrays |  Major | MLlib, PySpark | Jeremy Freeman | Jeremy Freeman |
| [SPARK-5035](https://issues.apache.org/jira/browse/SPARK-5035) | Streaming ReceiverMessage trait should extend Serializable |  Critical | Streaming | Josh Rosen | Josh Rosen |
| [SPARK-5006](https://issues.apache.org/jira/browse/SPARK-5006) | spark.port.maxRetries doesn't work |  Major | Deploy | Tao Wang | Tao Wang |
| [SPARK-4989](https://issues.apache.org/jira/browse/SPARK-4989) | wrong application configuration cause cluster down in standalone mode |  Critical | Deploy, Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-4973](https://issues.apache.org/jira/browse/SPARK-4973) | Local directory in the driver of client-mode continues remaining even if application finished when external shuffle is enabled |  Major | Block Manager, Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4966](https://issues.apache.org/jira/browse/SPARK-4966) | The MemoryOverhead value is not correct |  Major | YARN | meiyoula | meiyoula |
| [SPARK-4959](https://issues.apache.org/jira/browse/SPARK-4959) | Attributes are case sensitive when using a select query from a projection |  Blocker | SQL | Andy Konwinski | Cheng Hao |
| [SPARK-4952](https://issues.apache.org/jira/browse/SPARK-4952) | Handle ConcurrentModificationExceptions in SparkEnv.environmentDetails |  Major | Spark Core, YARN | Guoqiang Li | Guoqiang Li |
| [SPARK-4951](https://issues.apache.org/jira/browse/SPARK-4951) | A busy executor may be killed when dynamicAllocation is enabled |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4914](https://issues.apache.org/jira/browse/SPARK-4914) | Two sets of datanucleus versions left in lib\_managed after running dev/run-tests |  Minor | Build | Cheng Lian | Cheng Lian |
| [SPARK-4908](https://issues.apache.org/jira/browse/SPARK-4908) | Spark SQL built for Hive 13 fails under concurrent metadata queries |  Blocker | SQL | David Ross | Cheng Lian |
| [SPARK-4882](https://issues.apache.org/jira/browse/SPARK-4882) | PySpark broadcast breaks when using KryoSerializer |  Major | PySpark | Fi | Josh Rosen |
| [SPARK-4864](https://issues.apache.org/jira/browse/SPARK-4864) | Add documentation to Netty-based configs |  Major | Documentation | Aaron Davidson | Aaron Davidson |
| [SPARK-4841](https://issues.apache.org/jira/browse/SPARK-4841) | Batch serializer bug in PySpark's RDD.zip |  Blocker | PySpark | Xiangrui Meng | Davies Liu |
| [SPARK-4837](https://issues.apache.org/jira/browse/SPARK-4837) | NettyBlockTransferService does not abide by spark.blockManager.port config option |  Blocker | Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-4835](https://issues.apache.org/jira/browse/SPARK-4835) | Streaming saveAs\*HadoopFiles() methods may throw FileAlreadyExistsException during checkpoint recovery |  Critical | Streaming | Josh Rosen | Tathagata Das |
| [SPARK-4834](https://issues.apache.org/jira/browse/SPARK-4834) | Spark fails to clean up cache / lock files in local dirs |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-4826](https://issues.apache.org/jira/browse/SPARK-4826) | Possible flaky tests in WriteAheadLogBackedBlockRDDSuite: "java.lang.IllegalStateException: File exists and there is no append support!" |  Major | Streaming | Josh Rosen | Josh Rosen |
| [SPARK-4825](https://issues.apache.org/jira/browse/SPARK-4825) | CTAS fails to resolve when created using saveAsTable |  Critical | SQL | Michael Armbrust | Cheng Hao |
| [SPARK-4821](https://issues.apache.org/jira/browse/SPARK-4821) | pyspark.mllib.rand docs not generated correctly |  Major | Documentation, MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4818](https://issues.apache.org/jira/browse/SPARK-4818) | Join operation should use iterator/lazy evaluation |  Major | Spark Core | Johannes Simon | Shixiong Zhu |
| [SPARK-4790](https://issues.apache.org/jira/browse/SPARK-4790) | Flaky test in ReceivedBlockTrackerSuite: "block addition, block to batch allocation, and cleanup with write ahead log" |  Major | Streaming | Josh Rosen | Tathagata Das |
| [SPARK-4772](https://issues.apache.org/jira/browse/SPARK-4772) | Accumulators leak memory, both temporarily and permanently |  Major | Spark Core | Nathan Kronenfeld | Nathan Kronenfeld |
| [SPARK-4771](https://issues.apache.org/jira/browse/SPARK-4771) | Document standalone --supervise feature |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4770](https://issues.apache.org/jira/browse/SPARK-4770) | spark.scheduler.minRegisteredResourcesRatio documented default is incorrect for YARN |  Major | Documentation, YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-4759](https://issues.apache.org/jira/browse/SPARK-4759) | Deadlock in complex spark job in local mode |  Critical | Spark Core | Davis Shepherd | Andrew Or |
| [SPARK-4750](https://issues.apache.org/jira/browse/SPARK-4750) | Dynamic allocation - we need to synchronize kills |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4745](https://issues.apache.org/jira/browse/SPARK-4745) | get\_existing\_cluster() doesn't work with additional security groups |  Major | EC2 | Alex DeBrie | Alex DeBrie |
| [SPARK-4730](https://issues.apache.org/jira/browse/SPARK-4730) | Warn against deprecated YARN settings |  Major | YARN | Andrew Or | Andrew Or |
| [SPARK-4691](https://issues.apache.org/jira/browse/SPARK-4691) | Restructure a few lines in shuffle code |  Minor | Shuffle | maji2014 | maji2014 |
| [SPARK-4660](https://issues.apache.org/jira/browse/SPARK-4660) | JavaSerializer uses wrong classloader |  Critical | Spark Core | Piotr Kołaczkowski | Piotr Kołaczkowski |
| [SPARK-4606](https://issues.apache.org/jira/browse/SPARK-4606) | SparkSubmitDriverBootstrapper does not propagate EOF to child JVM |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-4597](https://issues.apache.org/jira/browse/SPARK-4597) | Use proper exception and reset variable in Utils.createTempDir() method |  Minor | Spark Core | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-4595](https://issues.apache.org/jira/browse/SPARK-4595) | Spark MetricsServlet is not worked because of initialization ordering |  Blocker | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-4569](https://issues.apache.org/jira/browse/SPARK-4569) | Rename "externalSorting" in Aggregator |  Trivial | Shuffle | Sandy Ryza | Ilya Ganelin |
| [SPARK-4504](https://issues.apache.org/jira/browse/SPARK-4504) | run-example fails if multiple example jars present in target folder |  Minor | Examples | Venkata Ramana G | Venkata Ramana G |
| [SPARK-4465](https://issues.apache.org/jira/browse/SPARK-4465) | runAsSparkUser doesn't affect TaskRunner in Mesos environment at all. |  Critical | Deploy, Input/Output, Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-4464](https://issues.apache.org/jira/browse/SPARK-4464) | Description about configuration options need to be modified in docs. |  Minor | Documentation | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-4459](https://issues.apache.org/jira/browse/SPARK-4459) | JavaRDDLike.groupBy[K](f: JFunction[T, K]) may fail with typechecking errors |  Major | Java API | Alok Saldanha | Alok Saldanha |
| [SPARK-4421](https://issues.apache.org/jira/browse/SPARK-4421) | Wrong link in spark-standalone.html |  Trivial | Documentation | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-4298](https://issues.apache.org/jira/browse/SPARK-4298) | The spark-submit cannot read Main-Class from Manifest. |  Major | Spark Core | Milan Straka | Brennon York |
| [SPARK-4296](https://issues.apache.org/jira/browse/SPARK-4296) | Throw "Expression not in GROUP BY" when using same expression in group by clause and  select clause |  Blocker | SQL | Shixiong Zhu | Cheng Lian |
| [SPARK-4161](https://issues.apache.org/jira/browse/SPARK-4161) | Spark shell class path is not correctly set if "spark.driver.extraClassPath" is set in defaults.conf |  Major | Spark Shell | Shay Seng | Guoqiang Li |
| [SPARK-3926](https://issues.apache.org/jira/browse/SPARK-3926) | result of JavaRDD collectAsMap() is not serializable |  Major | Java API | Antoine Amend | Sean Owen |
| [SPARK-3787](https://issues.apache.org/jira/browse/SPARK-3787) | Assembly jar name is wrong when we build with sbt omitting -Dhadoop.version |  Major | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-2892](https://issues.apache.org/jira/browse/SPARK-2892) | Socket Receiver does not stop when streaming context is stopped |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-2075](https://issues.apache.org/jira/browse/SPARK-2075) | Anonymous classes are missing from Spark distribution |  Critical | Build, Spark Core | Paul R. Brown | Shixiong Zhu |
| [SPARK-785](https://issues.apache.org/jira/browse/SPARK-785) | ClosureCleaner not invoked on most PairRDDFunctions |  Major | Spark Core | Matei Zaharia | Sean Owen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-4787](https://issues.apache.org/jira/browse/SPARK-4787) | Clean up SparkContext after DAGScheduler initialization errors |  Major | Spark Core | Jacky Li | Dale Richardson |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-5254](https://issues.apache.org/jira/browse/SPARK-5254) | Update the user guide to make clear that spark.mllib is not being deprecated |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4931](https://issues.apache.org/jira/browse/SPARK-4931) | Fix the messy format about log4j in running-on-yarn.md |  Trivial | Documentation, YARN | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4915](https://issues.apache.org/jira/browse/SPARK-4915) | Wrong classname of external shuffle service in the doc for dynamic allocation |  Major | Documentation, YARN | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [SPARK-4889](https://issues.apache.org/jira/browse/SPARK-4889) | HistoryServer documentation refers to non-existent spark-history-server.sh script |  Minor | Documentation | Ryan Williams | Ryan Williams |
| [SPARK-4884](https://issues.apache.org/jira/browse/SPARK-4884) | Improve documentation for Partition.scala |  Trivial | Spark Core | Madhu Siddalingaiah | Madhu Siddalingaiah |
| [SPARK-4652](https://issues.apache.org/jira/browse/SPARK-4652) | Add docs about spark-git-repo option |  Minor | Documentation | Kai Sasaki | Kai Sasaki |
| [SPARK-4147](https://issues.apache.org/jira/browse/SPARK-4147) | Reduce log4j dependency |  Major | Spark Core | Tobias Pfeiffer | Sean Owen |


