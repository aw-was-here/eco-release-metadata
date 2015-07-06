
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

## Release 1.2.2 - 2015-04-17

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-5628](https://issues.apache.org/jira/browse/SPARK-5628) | Add option to return spark-ec2 version |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-5559](https://issues.apache.org/jira/browse/SPARK-5559) | Flaky test: o.a.s.streaming.flume.FlumeStreamSuite |  Major | Streaming, Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5417](https://issues.apache.org/jira/browse/SPARK-5417) | Remove redundant executor-ID set() call |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-677](https://issues.apache.org/jira/browse/SPARK-677) | PySpark should not collect results through local filesystem |  Major | PySpark | Josh Rosen | Davies Liu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6878](https://issues.apache.org/jira/browse/SPARK-6878) | Sum on empty RDD fails with exception |  Minor | Spark Core | Erik van Oosten | Erik van Oosten |
| [SPARK-6667](https://issues.apache.org/jira/browse/SPARK-6667) | hang while collect in PySpark |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-6578](https://issues.apache.org/jira/browse/SPARK-6578) | Outbound channel in network library is not thread-safe, can lead to fetch failures |  Blocker | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6480](https://issues.apache.org/jira/browse/SPARK-6480) | histogram() bucket function is wrong in some simple edge cases |  Major | Spark Core | Sean Owen | Sean Owen |
| [SPARK-6414](https://issues.apache.org/jira/browse/SPARK-6414) | Spark driver failed with NPE on job cancelation |  Critical | Scheduler | Yuri Makhno | Hung Lin |
| [SPARK-6313](https://issues.apache.org/jira/browse/SPARK-6313) | Fetch File Lock file creation doesnt work when Spark working dir is on a NFS mount |  Critical | Spark Core | Nathan McCarthy | Nathan McCarthy |
| [SPARK-6294](https://issues.apache.org/jira/browse/SPARK-6294) | PySpark task may hang while call take() on in Java/Scala |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-6194](https://issues.apache.org/jira/browse/SPARK-6194) | collect() in PySpark will cause memory leak in JVM |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-6167](https://issues.apache.org/jira/browse/SPARK-6167) | Previous Commit Broke BroadcastTest |  Minor | Examples | RJ Nowling | Sean Owen |
| [SPARK-6133](https://issues.apache.org/jira/browse/SPARK-6133) | SparkContext#stop is not idempotent |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-6132](https://issues.apache.org/jira/browse/SPARK-6132) | Context cleaner race condition across SparkContexts |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-6055](https://issues.apache.org/jira/browse/SPARK-6055) | Memory leak in pyspark sql due to incorrect equality check |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-6018](https://issues.apache.org/jira/browse/SPARK-6018) | NoSuchMethodError in Spark app is swallowed by YARN AM |  Minor | YARN | Cheolsoo Park | Cheolsoo Park |
| [SPARK-5973](https://issues.apache.org/jira/browse/SPARK-5973) | zip two rdd with AutoBatchedSerializer will fail |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-5967](https://issues.apache.org/jira/browse/SPARK-5967) | JobProgressListener.stageIdToActiveJobIds never cleared |  Blocker | Streaming, Web UI | Tathagata Das | Tathagata Das |
| [SPARK-5889](https://issues.apache.org/jira/browse/SPARK-5889) | remove pid file in spark-daemon.sh after killing the process. |  Minor | Deploy | Zhan Zhang | Zhan Zhang |
| [SPARK-5846](https://issues.apache.org/jira/browse/SPARK-5846) | Spark SQL does not correctly set job description and scheduler pool |  Critical | SQL | Kay Ousterhout | Kay Ousterhout |
| [SPARK-5825](https://issues.apache.org/jira/browse/SPARK-5825) | Failure stopping Services while command line argument is too long |  Critical | Deploy | Cheng Hao | Cheng Hao |
| [SPARK-5788](https://issues.apache.org/jira/browse/SPARK-5788) | Capture exceptions in Python write thread |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-5749](https://issues.apache.org/jira/browse/SPARK-5749) | Fix Bash word splitting bugs in compute-classpath.sh |  Major | Build | Nicholas Chammas | Venkata Ramana G |
| [SPARK-5728](https://issues.apache.org/jira/browse/SPARK-5728) | MQTTStreamSuite leaves behind ActiveMQ database files |  Trivial | Streaming, Tests | Sean Owen | Sean Owen |
| [SPARK-5722](https://issues.apache.org/jira/browse/SPARK-5722) | Infer\_schema\_type incorrect for Integers in pyspark |  Major | PySpark | Don Drake | Don Drake |
| [SPARK-5703](https://issues.apache.org/jira/browse/SPARK-5703) | AllJobsPage throws empty.max error |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-5698](https://issues.apache.org/jira/browse/SPARK-5698) | Dynamic allocation: do not allow user to request a negative delta |  Critical | Spark Core, YARN | Andrew Or | Andrew Or |
| [SPARK-5691](https://issues.apache.org/jira/browse/SPARK-5691) | Preventing duplicate registering of an application has incorrect logic |  Major | Deploy | Matt Cheah | Matthew Cheah |
| [SPARK-5679](https://issues.apache.org/jira/browse/SPARK-5679) | Flaky tests in o.a.s.metrics.InputOutputMetricsSuite: input metrics with interleaved reads and input metrics with mixed read method |  Critical | Spark Core, Tests | Patrick Wendell | Josh Rosen |
| [SPARK-5655](https://issues.apache.org/jira/browse/SPARK-5655) | YARN Auxiliary Shuffle service can't access shuffle files on Hadoop cluster configured in secure mode |  Critical | YARN | Andrew Rowson | Andrew Rowson |
| [SPARK-5613](https://issues.apache.org/jira/browse/SPARK-5613) | YarnClientSchedulerBackend fails to get application report when yarn restarts |  Minor | YARN | Kashish Jain | Kashish Jain |
| [SPARK-5441](https://issues.apache.org/jira/browse/SPARK-5441) | SerDeUtil Pair RDD to python conversion doesn't accept empty RDDs |  Major | PySpark | Michael Nazario | Michael Nazario |
| [SPARK-5434](https://issues.apache.org/jira/browse/SPARK-5434) | Preserve spaces in path to spark-ec2 |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-5425](https://issues.apache.org/jira/browse/SPARK-5425) | ConcurrentModificationException during SparkConf creation |  Major | Spark Core | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-5395](https://issues.apache.org/jira/browse/SPARK-5395) | Large number of Python workers causing resource depletion |  Major | PySpark | Sven Krasser | Davies Liu |
| [SPARK-5363](https://issues.apache.org/jira/browse/SPARK-5363) | Spark 1.2 freeze without error notification |  Blocker | PySpark | Tassilo Klein | Davies Liu |
| [SPARK-5361](https://issues.apache.org/jira/browse/SPARK-5361) | Multiple Java RDD \<-\> Python RDD conversions not working correctly |  Major | PySpark | Winston Chen | Winston Chen |
| [SPARK-5335](https://issues.apache.org/jira/browse/SPARK-5335) | Destroying cluster in VPC with "--delete-groups" fails to remove security groups |  Major | EC2 | Vladimir Grigor | Vladimir Grigor |
| [SPARK-5227](https://issues.apache.org/jira/browse/SPARK-5227) | InputOutputMetricsSuite "input metrics when reading text file with multiple splits" test fails in branch-1.2 SBT Jenkins build w/hadoop1.0 and hadoop2.0 profiles |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-5186](https://issues.apache.org/jira/browse/SPARK-5186) | Vector.equals  and Vector.hashCode are very inefficient and fail on SparseVectors with large size |  Major | MLlib | Derrick Burns | yuhao yang |
| [SPARK-5153](https://issues.apache.org/jira/browse/SPARK-5153) | Flaky test: o.a.s.streaming.kafka.ReliableKafkaStreamSuite |  Critical | Streaming | Nan Zhu | Tathagata Das |
| [SPARK-4986](https://issues.apache.org/jira/browse/SPARK-4986) | Graceful shutdown for Spark Streaming does not work in Standalone cluster mode |  Blocker | Streaming | Jesper Lundgren | Jesper Lundgren |
| [SPARK-4983](https://issues.apache.org/jira/browse/SPARK-4983) | Add sleep() before tagging EC2 instances to allow instance metadata to propagate |  Minor | EC2 | Nicholas Chammas | Gen TANG |
| [SPARK-4939](https://issues.apache.org/jira/browse/SPARK-4939) | Python updateStateByKey example hang in local mode |  Blocker | PySpark, Spark Core, Streaming | Davies Liu | Davies Liu |
| [SPARK-4905](https://issues.apache.org/jira/browse/SPARK-4905) | Flaky test: o.a.s.streaming.flume.FlumeStreamSuite.flume input stream |  Critical | Streaming | Josh Rosen | Hari Shreedharan |
| [SPARK-4832](https://issues.apache.org/jira/browse/SPARK-4832) | some other processes might take the daemon pid |  Minor | Deploy | Tao Wang | Tao Wang |
| [SPARK-4814](https://issues.apache.org/jira/browse/SPARK-4814) | Enable assertions in SBT, Maven tests / AssertionError from Hive's LazyBinaryInteger |  Major | Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-4704](https://issues.apache.org/jira/browse/SPARK-4704) | SparkSubmitDriverBootstrap doesn't flush output |  Major | Spark Core | Stephen Haberman | Sean Owen |
| [SPARK-4579](https://issues.apache.org/jira/browse/SPARK-4579) | Scheduling Delay appears negative |  Major | Web UI | Arun Ahuja | Sean Owen |
| [SPARK-4300](https://issues.apache.org/jira/browse/SPARK-4300) | Race condition during SparkWorker shutdown |  Minor | Spark Shell | Alex Liu | Sean Owen |
| [SPARK-4267](https://issues.apache.org/jira/browse/SPARK-4267) | Failing to launch jobs on Spark on YARN with Hadoop 2.5.0 or later |  Blocker | YARN | Tsuyoshi Ozawa | Sean Owen |
| [SPARK-3266](https://issues.apache.org/jira/browse/SPARK-3266) | JavaDoubleRDD doesn't contain max() |  Major | Java API | Amey Chaugule | Sean Owen |
| [SPARK-2472](https://issues.apache.org/jira/browse/SPARK-2472) | Spark SQL Thrift server sometimes assigns wrong job group name |  Minor | SQL | Cheng Lian | Kay Ousterhout |
| [SPARK-1955](https://issues.apache.org/jira/browse/SPARK-1955) | VertexRDD can incorrectly assume index sharing |  Minor | GraphX | Ankur Dave | Brennon York |
| [SPARK-1911](https://issues.apache.org/jira/browse/SPARK-1911) | Warn users if their assembly jars are not built with Java 6 |  Major | Documentation | Andrew Or | Sean Owen |
| [SPARK-1600](https://issues.apache.org/jira/browse/SPARK-1600) | flaky "recovery with file input stream" test in streaming.CheckpointSuite |  Major | Streaming | Nan Zhu | Josh Rosen |
| [SPARK-794](https://issues.apache.org/jira/browse/SPARK-794) | Remove sleep() in ClusterScheduler.stop |  Major | Scheduler | Matei Zaharia | Brennon York |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-4631](https://issues.apache.org/jira/browse/SPARK-4631) | Add real unit test for MQTT |  Critical | Streaming | Tathagata Das | Iulian Dragos |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-5765](https://issues.apache.org/jira/browse/SPARK-5765) | word split problem in run-example and compute-classpath |  Major | Examples | Venkata Ramana G | Venkata Ramana G |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6033](https://issues.apache.org/jira/browse/SPARK-6033) | the description abou the "spark.worker.cleanup.enabled" is not matched with the code |  Minor | Documentation | pengxu | pengxu |
| [SPARK-6015](https://issues.apache.org/jira/browse/SPARK-6015) | Backport Python doc source code link fix to 1.2 |  Minor | Documentation, PySpark | Joseph K. Bradley | Davies Liu |
| [SPARK-5805](https://issues.apache.org/jira/browse/SPARK-5805) | Fix the type error in the final example given in MLlib - Clustering documentation |  Minor | Documentation, MLlib | Emre Sevinç | Emre Sevinç |


