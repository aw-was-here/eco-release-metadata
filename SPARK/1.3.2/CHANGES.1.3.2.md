
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

## Release 1.3.2 - Unreleased (as of 2015-12-31)

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
| [SPARK-9633](https://issues.apache.org/jira/browse/SPARK-9633) | SBT download locations outdated; need an update |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-9507](https://issues.apache.org/jira/browse/SPARK-9507) | Remove dependency reduced POM hack now that shade plugin is updated |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-8126](https://issues.apache.org/jira/browse/SPARK-8126) | Use temp directory under build dir for unit tests |  Minor | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-7744](https://issues.apache.org/jira/browse/SPARK-7744) | "Distributed matrix" section in MLlib "Data Types" documentation should be reordered. |  Minor | Documentation, MLlib | Mike Dusenberry | Mike Dusenberry |
| [SPARK-7621](https://issues.apache.org/jira/browse/SPARK-7621) | Report KafkaReceiver MessageHandler errors so StreamingListeners can take action |  Major | Streaming | Jeremy A. Lucas | Jeremy A. Lucas |
| [SPARK-7323](https://issues.apache.org/jira/browse/SPARK-7323) | Use insertAll instead of individual insert while merging combiners |  Minor | Spark Core | Mridul Muralidharan | Mridul Muralidharan |
| [SPARK-7140](https://issues.apache.org/jira/browse/SPARK-7140) | Do not scan all values in Vector.hashCode |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6988](https://issues.apache.org/jira/browse/SPARK-6988) | Fix Spark SQL documentation for 1.3.x |  Minor | SQL | Olivier Girardot | Olivier Girardot |
| [SPARK-6343](https://issues.apache.org/jira/browse/SPARK-6343) | Make doc more explicit regarding network connectivity requirements |  Minor | Documentation | Peter Parente | Peter Parente |
| [SPARK-5783](https://issues.apache.org/jira/browse/SPARK-5783) | Include filename, line number in eventlog-parsing error message |  Minor | Spark Core | Ryan Williams | Ryan Williams |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11812](https://issues.apache.org/jira/browse/SPARK-11812) | pyspark reduceByKeyAndWindow does not handle unspecified invFunc (invFunc=None) |  Major | PySpark | David Tolpin | David Tolpin |
| [SPARK-11424](https://issues.apache.org/jira/browse/SPARK-11424) | Guard against MAPREDUCE-5918 by ensuring RecordReader is only closed once in \*HadoopRDD |  Critical | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11302](https://issues.apache.org/jira/browse/SPARK-11302) |  Multivariate Gaussian Model with Covariance  matrix returns incorrect answer in some cases |  Critical | MLlib | eyal sharon | Sean Owen |
| [SPARK-10980](https://issues.apache.org/jira/browse/SPARK-10980) | Create wrong decimal if unscaled \> 1e18 and scale \> 0 |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10973](https://issues.apache.org/jira/browse/SPARK-10973) | \_\_gettitem\_\_ method throws IndexError exception when we try to access index after the last non-zero entry. |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-10642](https://issues.apache.org/jira/browse/SPARK-10642) | Crash in rdd.lookup() with "java.lang.Long cannot be cast to java.lang.Integer" |  Major | PySpark | Thouis Jones | Liang-Chi Hsieh |
| [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | SBT build explicitly sets Scala version, which can conflict with SBT's own scala version |  Minor | Build | Ahir Reddy | Ahir Reddy |
| [SPARK-10381](https://issues.apache.org/jira/browse/SPARK-10381) | Infinite loop when OutputCommitCoordination is enabled and OutputCommitter.commitTask throws exception |  Critical | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-10353](https://issues.apache.org/jira/browse/SPARK-10353) | MLlib BLAS gemm outputs wrong result when beta = 0.0 for transpose transpose matrix multiplication |  Major | MLlib | Burak Yavuz | Burak Yavuz |
| [SPARK-10169](https://issues.apache.org/jira/browse/SPARK-10169) | Evaluating AggregateFunction1 (old code path) may return wrong answers when grouping expressions are used as arguments of aggregate functions |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-9801](https://issues.apache.org/jira/browse/SPARK-9801) | Spark streaming deletes the temp file and backup files without checking if they exist or not |  Minor | Streaming | Hao Zhu | Hao Zhu |
| [SPARK-9608](https://issues.apache.org/jira/browse/SPARK-9608) | Incorrect zinc -status check in build/mvn |  Minor | Build | Ryan Williams | Ryan Williams |
| [SPARK-9607](https://issues.apache.org/jira/browse/SPARK-9607) | Incorrect zinc check in build/mvn |  Minor | Build | Ryan Williams | Ryan Williams |
| [SPARK-9254](https://issues.apache.org/jira/browse/SPARK-9254) | sbt-launch-lib.bash should use `curl --location` to support HTTP/HTTPS redirection |  Major | Build | Cheng Lian | Cheng Lian |
| [SPARK-9236](https://issues.apache.org/jira/browse/SPARK-9236) | Left Outer Join with empty JavaPairRDD returns empty RDD |  Major | Java API | Vitalii Slobodianyk | François Garillot |
| [SPARK-9175](https://issues.apache.org/jira/browse/SPARK-9175) | BLAS.gemm fails to update matrix C when alpha==0 and beta!=1 |  Critical | MLlib | Meihua Wu | Meihua Wu |
| [SPARK-8865](https://issues.apache.org/jira/browse/SPARK-8865) | Fix bug:  init SimpleConsumerConfig with kafka params |  Minor | Streaming | guowei | guowei |
| [SPARK-8819](https://issues.apache.org/jira/browse/SPARK-8819) | Spark doesn't compile with maven 3.3.x |  Blocker | Build | Andrew Or | Andrew Or |
| [SPARK-8781](https://issues.apache.org/jira/browse/SPARK-8781) | Published POMs are no longer effective POMs |  Blocker | Build | Konstantin Shaposhnikov | Andrew Or |
| [SPARK-8606](https://issues.apache.org/jira/browse/SPARK-8606) | Exceptions in RDD.getPreferredLocations() and getPartitions() should not be able to crash DAGScheduler |  Critical | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-8563](https://issues.apache.org/jira/browse/SPARK-8563) | Bug that IndexedRowMatrix.computeSVD() yields the U with wrong numCols |  Major | MLlib | 19 Lee | 19 Lee |
| [SPARK-8535](https://issues.apache.org/jira/browse/SPARK-8535) | PySpark : Can't create DataFrame from Pandas dataframe with no explicit column name |  Major | PySpark | Christophe Bourguignat | Yuri Saito |
| [SPARK-8525](https://issues.apache.org/jira/browse/SPARK-8525) | Bug in Streaming k-means documentation |  Minor | Documentation, MLlib | Oleksiy Dyagilev | Oleksiy Dyagilev |
| [SPARK-8451](https://issues.apache.org/jira/browse/SPARK-8451) | SparkSubmitSuite never checks for process exit code |  Major | Spark Submit, Tests | Andrew Or | Andrew Or |
| [SPARK-8400](https://issues.apache.org/jira/browse/SPARK-8400) | ml.ALS doesn't handle -1 block size |  Minor | ML | Xiangrui Meng | Bryan Cutler |
| [SPARK-8309](https://issues.apache.org/jira/browse/SPARK-8309) | OpenHashMap doesn't work with more than 12M items |  Critical | Spark Core | Vyacheslav Baranov | Vyacheslav Baranov |
| [SPARK-8098](https://issues.apache.org/jira/browse/SPARK-8098) | Show correct length of bytes on log page |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | Make NumPy version checking in mllib/\_\_init\_\_.py |  Major | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-7946](https://issues.apache.org/jira/browse/SPARK-7946) | DecayFactor wrongly set in StreamingKMeans |  Major | MLlib, Streaming | Manoj Kumar | Manoj Kumar |
| [SPARK-7883](https://issues.apache.org/jira/browse/SPARK-7883) | Fixing broken trainImplicit example in MLlib Collaborative Filtering documentation. |  Trivial | Documentation, MLlib | Mike Dusenberry | Mike Dusenberry |
| [SPARK-7668](https://issues.apache.org/jira/browse/SPARK-7668) | Matrix.map should preserve transpose property |  Major | MLlib | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-7660](https://issues.apache.org/jira/browse/SPARK-7660) | Snappy-java buffer-sharing bug leads to data corruption / test failures |  Blocker | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7651](https://issues.apache.org/jira/browse/SPARK-7651) | PySpark GMM predict, predictSoft should fail on bad input |  Minor | MLlib, PySpark | Joseph K. Bradley | Meethu Mathew |
| [SPARK-7624](https://issues.apache.org/jira/browse/SPARK-7624) | Task scheduler delay is increasing time over time in spark local mode |  Major | Spark Core | Jack Hu | Davies Liu |
| [SPARK-7566](https://issues.apache.org/jira/browse/SPARK-7566) | HiveContext.analyzer cannot be overriden |  Major | SQL | Santiago M. Mola | Santiago M. Mola |
| [SPARK-7563](https://issues.apache.org/jira/browse/SPARK-7563) | OutputCommitCoordinator.stop() should only be executed in driver |  Critical | Spark Core | Hailong Wen | Josh Rosen |
| [SPARK-7552](https://issues.apache.org/jira/browse/SPARK-7552) | Close files correctly when iteration is finished in WAL recovery |  Major | Streaming | Saisai Shao | Saisai Shao |
| [SPARK-7522](https://issues.apache.org/jira/browse/SPARK-7522) | ML Examples option for dataFormat should not be enclosed in angle brackets |  Minor | Examples | Bryan Cutler | Bryan Cutler |
| [SPARK-7436](https://issues.apache.org/jira/browse/SPARK-7436) | Cannot implement nor use custom StandaloneRecoveryModeFactory implementations |  Major | Deploy | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-7418](https://issues.apache.org/jira/browse/SPARK-7418) | Flaky test: o.a.s.deploy.SparkSubmitUtilsSuite search for artifacts |  Critical | Tests | Andrew Or | Burak Yavuz |
| [SPARK-7417](https://issues.apache.org/jira/browse/SPARK-7417) | Flaky test: o.a.s.deploy.SparkSubmitUtilsSuite neglect dependencies |  Critical | Tests | Andrew Or | Burak Yavuz |
| [SPARK-7345](https://issues.apache.org/jira/browse/SPARK-7345) | Spark cannot detect renamed columns using JDBC connector |  Major | SQL | Oleg Sidorkin | Oleg Sidorkin |
| [SPARK-7330](https://issues.apache.org/jira/browse/SPARK-7330) | JDBC RDD could lead to NPE when the date field is null |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-7278](https://issues.apache.org/jira/browse/SPARK-7278) | Inconsistent handling of dates in PySparks Row object |  Major | PySpark | Kalle Jepsen | Kalle Jepsen |
| [SPARK-7234](https://issues.apache.org/jira/browse/SPARK-7234) | When codegen on DateType defaultPrimitive will throw type mismatch exception |  Major | SQL | Chen Song | Chen Song |
| [SPARK-7229](https://issues.apache.org/jira/browse/SPARK-7229) | SpecificMutableRow should take integer type as internal representation for DateType |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-7204](https://issues.apache.org/jira/browse/SPARK-7204) | Call sites in UI are not accurate for DataFrame operations |  Critical | SQL | Patrick Wendell | Patrick Wendell |
| [SPARK-7196](https://issues.apache.org/jira/browse/SPARK-7196) | decimal precision lost when loading DataFrame from JDBC |  Major | SQL | Ken Geis | Liang-Chi Hsieh |
| [SPARK-7187](https://issues.apache.org/jira/browse/SPARK-7187) | Exceptions in SerializationDebugger should not crash user code |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-7181](https://issues.apache.org/jira/browse/SPARK-7181) | External Sorter merge with aggregation go to an infinite loop when we have a total ordering |  Critical | Spark Core | Qiping Li | Qiping Li |
| [SPARK-7155](https://issues.apache.org/jira/browse/SPARK-7155) | SparkContext's newAPIHadoopFile does not support comma-separated list of files, but the other API hadoopFile does. |  Major | Spark Core | Yong Tang | Yong Tang |
| [SPARK-7103](https://issues.apache.org/jira/browse/SPARK-7103) | SparkContext.union crashed when some RDDs have no partitioner |  Critical | Spark Core | Steven She | Steven She |
| [SPARK-7070](https://issues.apache.org/jira/browse/SPARK-7070) | LDA.setBeta calls itself |  Critical | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7039](https://issues.apache.org/jira/browse/SPARK-7039) | JdbcRdd doesn't support java.sql.Types.NVARCHAR |  Minor | SQL | Shuai Zheng | Shuai Zheng |
| [SPARK-7036](https://issues.apache.org/jira/browse/SPARK-7036) | ALS.train should support DataFrames in PySpark |  Minor | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6998](https://issues.apache.org/jira/browse/SPARK-6998) | Make StreamingKMeans `Serializable` |  Major | MLlib | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6992](https://issues.apache.org/jira/browse/SPARK-6992) | Spark SQL documentation for programmatically adding a Schema is broken for Java API |  Minor | Documentation | Olivier Girardot | Olivier Girardot |
| [SPARK-6985](https://issues.apache.org/jira/browse/SPARK-6985) | Receiver maxRate over 1000 causes a StackOverflowError |  Critical | Streaming | David McGuire | David McGuire |
| [SPARK-6975](https://issues.apache.org/jira/browse/SPARK-6975) | Argument checking conflict in Yarn when dynamic allocation is enabled |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-6967](https://issues.apache.org/jira/browse/SPARK-6967) | Internal DateType not handled correctly in caching |  Blocker | SQL | Michael Armbrust | Adrian Wang |
| [SPARK-6954](https://issues.apache.org/jira/browse/SPARK-6954) | ExecutorAllocationManager can end up requesting a negative number of executors |  Major | YARN | Cheolsoo Park | Sandy Ryza |
| [SPARK-6952](https://issues.apache.org/jira/browse/SPARK-6952) | spark-daemon.sh PID reuse check fails on long classpath |  Minor | Deploy | Punya Biswal | Punya Biswal |
| [SPARK-6931](https://issues.apache.org/jira/browse/SPARK-6931) | python: struct.pack('!q', value) in write\_long(value, stream) in serializers.py require int(but doesn't raise exceptions in common cases) |  Critical | PySpark | Chunxi Zhang | Bryan Cutler |
| [SPARK-6905](https://issues.apache.org/jira/browse/SPARK-6905) | Upgrade Snappy Java to 1.1.1.7 to fix bug that resulted in worse compression |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-6886](https://issues.apache.org/jira/browse/SPARK-6886) | Big closure in PySpark will fail during shuffle |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-6878](https://issues.apache.org/jira/browse/SPARK-6878) | Sum on empty RDD fails with exception |  Minor | Spark Core | Erik van Oosten | Erik van Oosten |
| [SPARK-6868](https://issues.apache.org/jira/browse/SPARK-6868) | Container link broken on Spark UI Executors page when YARN is set to HTTPS\_ONLY |  Minor | YARN | Dean Chen | Dean Chen |
| [SPARK-6860](https://issues.apache.org/jira/browse/SPARK-6860) | Fix the possible inconsistency of StreamingPage |  Minor | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6767](https://issues.apache.org/jira/browse/SPARK-6767) | Documentation error in Spark SQL Readme file |  Trivial | Documentation, SQL | Tijo Thomas | Tijo Thomas |
| [SPARK-6766](https://issues.apache.org/jira/browse/SPARK-6766) | StreamingListenerBatchSubmitted isn't sent and StreamingListenerBatchStarted.batchInfo.processingStartTime is a wrong value |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf |  Minor | Tests | Kay Ousterhout | Kay Ousterhout |
| [SPARK-6636](https://issues.apache.org/jira/browse/SPARK-6636) | Use public DNS hostname everywhere in spark\_ec2.py |  Minor | EC2 | Matt Aasted | Matt Aasted |
| [SPARK-6595](https://issues.apache.org/jira/browse/SPARK-6595) | DataFrame self joins with MetastoreRelations fail |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6506](https://issues.apache.org/jira/browse/SPARK-6506) | python support yarn cluster mode requires SPARK\_HOME to be set |  Major | YARN | Thomas Graves | Marcelo Vanzin |
| [SPARK-6205](https://issues.apache.org/jira/browse/SPARK-6205) | UISeleniumSuite fails for Hadoop 2.x test with NoClassDefFoundError |  Minor | Tests | Sean Owen | Sean Owen |
| [SPARK-5969](https://issues.apache.org/jira/browse/SPARK-5969) | The pyspark.rdd.sortByKey always fills only two partitions when ascending=False. |  Major | PySpark | Milan Straka | Milan Straka |
| [SPARK-5634](https://issues.apache.org/jira/browse/SPARK-5634) | History server shows misleading message when there are no incomplete apps |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-5529](https://issues.apache.org/jira/browse/SPARK-5529) | BlockManager heartbeat expiration does not kill executor |  Major | Spark Core, YARN | Hong Shen | Hong Shen |
| [SPARK-5456](https://issues.apache.org/jira/browse/SPARK-5456) | Decimal Type comparison issue |  Blocker | SQL | Kuldeep | Adrian Wang |
| [SPARK-5412](https://issues.apache.org/jira/browse/SPARK-5412) | Cannot bind Master to a specific hostname as per the documentation |  Major | Deploy | Alexis Seigneurin | Sean Owen |
| [SPARK-5220](https://issues.apache.org/jira/browse/SPARK-5220) | keepPushingBlocks in BlockGenerator terminated when an exception occurs, which causes the block pushing thread to terminate and blocks receiver |  Major | Streaming | Max Xu | Hari Shreedharan |
| [SPARK-5074](https://issues.apache.org/jira/browse/SPARK-5074) | Flaky test: o.a.s.scheduler.DAGSchedulerSuite |  Critical | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4315](https://issues.apache.org/jira/browse/SPARK-4315) | PySpark pickling of pyspark.sql.Row objects is extremely inefficient |  Major | PySpark | Adam Davison | Davies Liu |
| [SPARK-3190](https://issues.apache.org/jira/browse/SPARK-3190) | Creation of large graph(\> 2.15 B nodes) seems to be broken:possible overflow somewhere |  Critical | GraphX | npanj | Ankur Dave |
| [SPARK-2018](https://issues.apache.org/jira/browse/SPARK-2018) | Big-Endian (IBM Power7)  Spark Serialization issue |  Major | Deploy | Yanjie Gao | Tim Ellison |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8541](https://issues.apache.org/jira/browse/SPARK-8541) | sumApprox and meanApprox doctests are incorrect |  Minor | PySpark | Scott Taylor | Scott Taylor |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | Log test name when starting and finishing each test |  Major | Tests | Patrick Wendell | Andrew Or |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9198](https://issues.apache.org/jira/browse/SPARK-9198) | Typo in PySpark SparseVector docs (bad index) |  Minor | Documentation, MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-6781](https://issues.apache.org/jira/browse/SPARK-6781) | sqlCtx -\> sqlContext in pyspark shell |  Critical | SQL | Michael Armbrust | Davies Liu |


