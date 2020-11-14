
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

## Release 2.3.4 - 2019-08-29



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-26604](https://issues.apache.org/jira/browse/SPARK-26604) | Register channel for stream request |  Minor | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27358](https://issues.apache.org/jira/browse/SPARK-27358) | Update jquery to 1.12.x to pick up security fixes |  Major | Web UI | Sean R. Owen | Sean R. Owen |
| [SPARK-27563](https://issues.apache.org/jira/browse/SPARK-27563) | automatically get the latest Spark versions in HiveExternalCatalogVersionsSuite |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-27673](https://issues.apache.org/jira/browse/SPARK-27673) | Add since info to random. regex, null expressions |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27672](https://issues.apache.org/jira/browse/SPARK-27672) | Add since info to string expressions |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27771](https://issues.apache.org/jira/browse/SPARK-27771) | Add SQL description for grouping functions (cube, rollup, grouping and grouping\_id) |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24898](https://issues.apache.org/jira/browse/SPARK-24898) | Adding spark.checkpoint.compress to the docs |  Trivial | Documentation | Riccardo Corbella | Sandeep |
| [SPARK-28545](https://issues.apache.org/jira/browse/SPARK-28545) | Add the hash map size to the directional log of ObjectAggregationIterator |  Trivial | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28891](https://issues.apache.org/jira/browse/SPARK-28891) | do-release-docker.sh in master does not work for branch-2.3 |  Major | Build | Kazuaki Ishizaki | Kazuaki Ishizaki |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23408](https://issues.apache.org/jira/browse/SPARK-23408) | Flaky test: StreamingOuterJoinSuite.left outer early state exclusion on right |  Minor | SQL, Tests | Marcelo Masiero Vanzin | Tathagata Das |
| [SPARK-23416](https://issues.apache.org/jira/browse/SPARK-23416) | Flaky test: KafkaSourceStressForDontFailOnDataLossSuite.stress test for failOnDataLoss=false |  Minor | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-26758](https://issues.apache.org/jira/browse/SPARK-26758) | Idle Executors are not getting killed after spark.dynamicAllocation.executorIdleTimeout value |  Major | Spark Core, YARN | ABHISHEK KUMAR GUPTA | Sandeep Katta |
| [SPARK-26734](https://issues.apache.org/jira/browse/SPARK-26734) | StackOverflowError on WAL serialization caused by large receivedBlockQueue |  Major | Block Manager, DStreams, Spark Core | Ross M. Lodge | Ross M. Lodge |
| [SPARK-26082](https://issues.apache.org/jira/browse/SPARK-26082) | Misnaming of spark.mesos.fetch(er)Cache.enable in MesosClusterScheduler |  Major | Mesos | Martin Loncaric | Martin Loncaric |
| [SPARK-26873](https://issues.apache.org/jira/browse/SPARK-26873) | FileFormatWriter creates inconsistent MR job IDs |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-26572](https://issues.apache.org/jira/browse/SPARK-26572) | Join on distinct column with monotonically\_increasing\_id produces wrong output |  Major | SQL | Sören Reichardt | Peter Toth |
| [SPARK-24211](https://issues.apache.org/jira/browse/SPARK-24211) | Flaky test: StreamingOuterJoinSuite |  Major | Structured Streaming, Tests | Dongjoon Hyun | Jungtaek Lim |
| [SPARK-24239](https://issues.apache.org/jira/browse/SPARK-24239) | Flaky test: KafkaContinuousSourceSuite.subscribing topic by name from earliest offsets |  Major | Structured Streaming, Tests | Dongjoon Hyun | Jungtaek Lim |
| [SPARK-26859](https://issues.apache.org/jira/browse/SPARK-26859) | Fix field writer index bug in non-vectorized ORC deserializer |  Major | SQL | Ivan Vergiliev | Ivan Vergiliev |
| [SPARK-26950](https://issues.apache.org/jira/browse/SPARK-26950) | Make RandomDataGenerator use Float.NaN or Double.NaN for all NaN values |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26895](https://issues.apache.org/jira/browse/SPARK-26895) | When running spark 2.3 as a proxy user (--proxy-user), SparkSubmit fails to resolve globs owned by target user |  Critical | Spark Core | Alessandro Bellina | Alessandro Bellina |
| [SPARK-24669](https://issues.apache.org/jira/browse/SPARK-24669) | Managed table was not cleared of path after drop database cascade |  Major | SQL | Dong Jiang | Udbhav Agrawal |
| [SPARK-27065](https://issues.apache.org/jira/browse/SPARK-27065) | avoid more than one active task set managers for a stage |  Major | Scheduler, Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-25863](https://issues.apache.org/jira/browse/SPARK-25863) | java.lang.UnsupportedOperationException: empty.max at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator$.updateAndGetCompilationStats(CodeGenerator.scala:1475) |  Major | Optimizer, Spark Core | Ruslan Dautkhanov | Takeshi Yamamuro |
| [SPARK-27080](https://issues.apache.org/jira/browse/SPARK-27080) | Read parquet file with merging metastore schema should compare schema field in uniform case. |  Major | SQL | BoMeng |  |
| [SPARK-27111](https://issues.apache.org/jira/browse/SPARK-27111) | A continuous query may fail with InterruptedException when kafka consumer temporally 0 partitions temporally |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26927](https://issues.apache.org/jira/browse/SPARK-26927) | Race condition may cause dynamic allocation not working |  Major | Spark Core | liupengcheng | liupengcheng |
| [SPARK-27112](https://issues.apache.org/jira/browse/SPARK-27112) | Spark Scheduler encounters two independent Deadlocks when trying to kill executors either due to dynamic allocation or blacklisting |  Major | Scheduler, Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-27160](https://issues.apache.org/jira/browse/SPARK-27160) | Incorrect Literal Casting of DecimalType in OrcFilters |  Major | SQL | Darcy Shen | Darcy Shen |
| [SPARK-26606](https://issues.apache.org/jira/browse/SPARK-26606) | parameters passed in extraJavaOptions are not being picked up |  Major | Spark Submit | Ravindra | Jungtaek Lim |
| [SPARK-24935](https://issues.apache.org/jira/browse/SPARK-24935) | Problem with Executing Hive UDF's from Spark 2.2 Onwards |  Major | SQL | Parth Gandhi | Parth Gandhi |
| [SPARK-26961](https://issues.apache.org/jira/browse/SPARK-26961) | Found Java-level deadlock in Spark Driver |  Major | Spark Submit | Rong Jialei | Ajith S |
| [SPARK-27275](https://issues.apache.org/jira/browse/SPARK-27275) | Potential corruption in EncryptedMessage.transferTo |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27244](https://issues.apache.org/jira/browse/SPARK-27244) | Redact Passwords While Using Option logConf=true |  Minor | Spark Core | Ninad | Ninad |
| [SPARK-27301](https://issues.apache.org/jira/browse/SPARK-27301) | DStreamCheckpointData failed to clean up because it's fileSystem cached |  Major | DStreams, Spark Core | Kent Yao | Kent Yao |
| [SPARK-26998](https://issues.apache.org/jira/browse/SPARK-26998) | spark.ssl.keyStorePassword in plaintext on 'ps -ef' output of executor processes in Standalone mode |  Major | Scheduler, Security, Spark Core | t oo | Gabor Somogyi |
| [SPARK-27216](https://issues.apache.org/jira/browse/SPARK-27216) | Upgrade RoaringBitmap to 0.7.45 to fix Kryo unsafe ser/dser issue |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-27338](https://issues.apache.org/jira/browse/SPARK-27338) | Deadlock between TaskMemoryManager and UnsafeExternalSorter$SpillableIterator |  Major | Spark Core | Venkata krishnan Sowrirajan | Venkata krishnan Sowrirajan |
| [SPARK-25250](https://issues.apache.org/jira/browse/SPARK-25250) | Race condition with tasks running when new attempt for same stage is created leads to other task in the next attempt running on the same partition id retry multiple times |  Major | Scheduler, Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-27496](https://issues.apache.org/jira/browse/SPARK-27496) | RPC should send back the fatal errors |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27626](https://issues.apache.org/jira/browse/SPARK-27626) | Fix \`docker-image-tool.sh\` to be robust in non-bash shell env |  Major | Kubernetes, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27621](https://issues.apache.org/jira/browse/SPARK-27621) | Calling transform() method on a LinearRegressionModel throws NoSuchElementException |  Minor | ML | Anca Sarb | Anca Sarb |
| [SPARK-27577](https://issues.apache.org/jira/browse/SPARK-27577) | Wrong thresholds selected by BinaryClassificationMetrics when downsampling |  Minor | MLlib | Shaochen Shi | Shaochen Shi |
| [SPARK-25139](https://issues.apache.org/jira/browse/SPARK-25139) | PythonRunner#WriterThread released block after TaskRunner finally block which  invoke BlockManager#releaseAllLocksForTask |  Major | Block Manager, Spark Core | DENG FEI | Xingbo Jiang |
| [SPARK-27624](https://issues.apache.org/jira/browse/SPARK-27624) | Fix CalenderInterval to show an empty interval correctly |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27347](https://issues.apache.org/jira/browse/SPARK-27347) | Fix supervised driver retry logic when agent crashes/restarts |  Major | Mesos | Sam Tran | Sam Tran |
| [SPARK-27735](https://issues.apache.org/jira/browse/SPARK-27735) | Interval string in upper case is not supported in Trigger |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27869](https://issues.apache.org/jira/browse/SPARK-27869) | Redact sensitive information in System Properties from UI |  Major | Web UI | Aaruna Godthi | Aaruna Godthi |
| [SPARK-27907](https://issues.apache.org/jira/browse/SPARK-27907) | HiveUDAF should return NULL in case of 0 rows |  Blocker | SQL | Ajith S | Ajith S |
| [SPARK-27798](https://issues.apache.org/jira/browse/SPARK-27798) | ConvertToLocalRelation should tolerate expression reusing output object |  Blocker | SQL | Yosuke Mori | L. C. Hsieh |
| [SPARK-21882](https://issues.apache.org/jira/browse/SPARK-21882) | OutputMetrics doesn't count written bytes correctly in the saveAsHadoopDataset function |  Minor | Spark Core | linxiaojun | linxiaojun |
| [SPARK-28081](https://issues.apache.org/jira/browse/SPARK-28081) | word2vec 'large' count value too low for very large corpora |  Minor | ML | Sean R. Owen | Sean R. Owen |
| [SPARK-27018](https://issues.apache.org/jira/browse/SPARK-27018) | Checkpointed RDD deleted prematurely when using GBTClassifier |  Major | ML, Spark Core | Piotr Kolaczkowski | zhengruifeng |
| [SPARK-28164](https://issues.apache.org/jira/browse/SPARK-28164) | usage description does not match with shell scripts |  Minor | Project Infra | Hanna Kan | Shivu Sondur |
| [SPARK-28160](https://issues.apache.org/jira/browse/SPARK-28160) | TransportClient.sendRpcSync may hang forever |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-28156](https://issues.apache.org/jira/browse/SPARK-28156) | Join plan sometimes does not use cached query |  Major | SQL | Bruce Robbins | L. C. Hsieh |
| [SPARK-28308](https://issues.apache.org/jira/browse/SPARK-28308) | CalendarInterval sub-second part should be padded before parsing |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28302](https://issues.apache.org/jira/browse/SPARK-28302) | SparkLauncher: The process cannot access the file because it is being used by another process |  Major | Spark Core | wuyi | wuyi |
| [SPARK-28404](https://issues.apache.org/jira/browse/SPARK-28404) | Fix negative timeout value in RateStreamContinuousPartitionReader |  Minor | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28430](https://issues.apache.org/jira/browse/SPARK-28430) | Some stage table rows render wrong number of columns if tasks are missing metrics |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-28582](https://issues.apache.org/jira/browse/SPARK-28582) | Pyspark daemon exit failed when receive SIGTERM on py3.7 |  Major | PySpark | Weichen Xu | Weichen Xu |
| [SPARK-28766](https://issues.apache.org/jira/browse/SPARK-28766) | Fix CRAN incoming feasibility warning on invalid URL |  Major | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28775](https://issues.apache.org/jira/browse/SPARK-28775) | DateTimeUtilsSuite fails for JDKs using the tzdata2018i or newer timezone database |  Major | SQL, Tests | Herman van Hövell | Sean R. Owen |
| [SPARK-28780](https://issues.apache.org/jira/browse/SPARK-28780) | Delete the incorrect setWeightCol method in LinearSVCModel |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28699](https://issues.apache.org/jira/browse/SPARK-28699) | Cache an indeterminate RDD could lead to incorrect result while stage rerun |  Blocker | Spark Core | Yuanjian Li | Yuanjian Li |
| [SPARK-28844](https://issues.apache.org/jira/browse/SPARK-28844) | Fix typo in SQLConf FILE\_COMRESSION\_FACTOR |  Major | SQL | ZhangYao |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-28261](https://issues.apache.org/jira/browse/SPARK-28261) | Flaky test: org.apache.spark.network.TransportClientFactorySuite.reuseClientsUpToConfigVariable |  Minor | Spark Core, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28335](https://issues.apache.org/jira/browse/SPARK-28335) | Flaky test: org.apache.spark.streaming.kafka010.DirectKafkaStreamSuite.offset recovery from kafka |  Minor | DStreams, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28357](https://issues.apache.org/jira/browse/SPARK-28357) | Fix Flaky Test - FileAppenderSuite.rolling file appender - size-based rolling compressed |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28361](https://issues.apache.org/jira/browse/SPARK-28361) | Test equality of generated code with id in class name |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-28535](https://issues.apache.org/jira/browse/SPARK-28535) | Flaky test: JobCancellationSuite."interruptible iterator of shuffle reader" |  Minor | Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-24352](https://issues.apache.org/jira/browse/SPARK-24352) | Flaky test: StandaloneDynamicAllocationSuite |  Major | Spark Core, Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28418](https://issues.apache.org/jira/browse/SPARK-28418) | Flaky Test: pyspark.sql.tests.test\_dataframe: test\_query\_execution\_listener\_on\_collect |  Minor | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23491](https://issues.apache.org/jira/browse/SPARK-23491) | continuous symptom |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-27441](https://issues.apache.org/jira/browse/SPARK-27441) | Add read/write tests to Hive serde tables |  Major | Tests | Yuming Wang | Yuming Wang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-27800](https://issues.apache.org/jira/browse/SPARK-27800) | Example for xor function has a wrong answer |  Major | Documentation, SQL | Alex Liu | Alex Liu |
| [SPARK-28777](https://issues.apache.org/jira/browse/SPARK-28777) | Pyspark sql function "format\_string" has the wrong parameters in doc string |  Minor | PySpark | Darren Tirto | Darren Tirto |
| [SPARK-26897](https://issues.apache.org/jira/browse/SPARK-26897) | Update Spark 2.3.x testing from HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |


