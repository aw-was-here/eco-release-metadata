
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

## Release 2.4.4 - 2019-08-30



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-26192](https://issues.apache.org/jira/browse/SPARK-26192) | MesosClusterScheduler reads options from dispatcher conf instead of submission conf |  Minor | Mesos | Martin Loncaric | Martin Loncaric |
| [SPARK-27673](https://issues.apache.org/jira/browse/SPARK-27673) | Add since info to random. regex, null expressions |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27672](https://issues.apache.org/jira/browse/SPARK-27672) | Add since info to string expressions |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27771](https://issues.apache.org/jira/browse/SPARK-27771) | Add SQL description for grouping functions (cube, rollup, grouping and grouping\_id) |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27794](https://issues.apache.org/jira/browse/SPARK-27794) | Use secure URLs for downloading CRAN artifacts |  Minor | Documentation, R | Sean R. Owen | Sean R. Owen |
| [SPARK-27973](https://issues.apache.org/jira/browse/SPARK-27973) | Streaming sample DirectKafkaWordCount should mention GroupId in usage |  Trivial | Examples | Yuexin Zhang | Yuexin Zhang |
| [SPARK-24898](https://issues.apache.org/jira/browse/SPARK-24898) | Adding spark.checkpoint.compress to the docs |  Trivial | Documentation | Riccardo Corbella | Sandeep |
| [SPARK-28154](https://issues.apache.org/jira/browse/SPARK-28154) | GMM fix double caching |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28170](https://issues.apache.org/jira/browse/SPARK-28170) | DenseVector .toArray() and .values documentation do not specify they are aliases |  Trivial | ML, MLlib, PySpark | Sivam Pasupathipillai | Marco Gaido |
| [SPARK-28378](https://issues.apache.org/jira/browse/SPARK-28378) | Remove usage of cgi.escape |  Minor | PySpark | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28421](https://issues.apache.org/jira/browse/SPARK-28421) | SparseVector.apply performance optimization |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28496](https://issues.apache.org/jira/browse/SPARK-28496) | Use branch name instead of tag during dry-run |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28545](https://issues.apache.org/jira/browse/SPARK-28545) | Add the hash map size to the directional log of ObjectAggregationIterator |  Trivial | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28564](https://issues.apache.org/jira/browse/SPARK-28564) | Access history application defaults to the last attempt id |  Trivial | Spark Core | dzcxzl | dzcxzl |
| [SPARK-28649](https://issues.apache.org/jira/browse/SPARK-28649) | Git Ignore does not ignore python/.eggs |  Major | Build | Rob Vesse | Rob Vesse |
| [SPARK-28713](https://issues.apache.org/jira/browse/SPARK-28713) | Bump checkstyle from 8.14 to 8.23 |  Major | Spark Core | Fokko Driesprong | Fokko Driesprong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-26038](https://issues.apache.org/jira/browse/SPARK-26038) | Decimal toScalaBigInt/toJavaBigInteger not work for decimals not fitting in long |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-26895](https://issues.apache.org/jira/browse/SPARK-26895) | When running spark 2.3 as a proxy user (--proxy-user), SparkSubmit fails to resolve globs owned by target user |  Critical | Spark Core | Alessandro Bellina | Alessandro Bellina |
| [SPARK-26995](https://issues.apache.org/jira/browse/SPARK-26995) | Running Spark in Docker image with Alpine Linux 3.9.0 throws errors when using snappy |  Minor | Kubernetes, Spark Core | Luca Canali | Luca Canali |
| [SPARK-26152](https://issues.apache.org/jira/browse/SPARK-26152) | Synchronize Worker Cleanup with Worker Shutdown |  Critical | Spark Core | Dongjoon Hyun | Ajith S |
| [SPARK-27159](https://issues.apache.org/jira/browse/SPARK-27159) | Update MsSqlServer dialect handling of BLOB type |  Minor | SQL | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-26555](https://issues.apache.org/jira/browse/SPARK-26555) | Thread safety issue causes createDataset to fail with misleading errors |  Major | SQL | Martin Loncaric | Martin Loncaric |
| [SPARK-26812](https://issues.apache.org/jira/browse/SPARK-26812) | PushProjectionThroughUnion nullability issue |  Major | SQL | Bogdan Raducanu | Marco Gaido |
| [SPARK-27416](https://issues.apache.org/jira/browse/SPARK-27416) | UnsafeMapData & UnsafeArrayData Kryo serialization breaks when two machines have different Oops size |  Major | SQL | peng bo | peng bo |
| [SPARK-27626](https://issues.apache.org/jira/browse/SPARK-27626) | Fix \`docker-image-tool.sh\` to be robust in non-bash shell env |  Major | Kubernetes, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27621](https://issues.apache.org/jira/browse/SPARK-27621) | Calling transform() method on a LinearRegressionModel throws NoSuchElementException |  Minor | ML | Anca Sarb | Anca Sarb |
| [SPARK-27596](https://issues.apache.org/jira/browse/SPARK-27596) | The JDBC 'query' option doesn't work for Oracle database |  Major | SQL | Xiao Li | Dilip Biswal |
| [SPARK-27577](https://issues.apache.org/jira/browse/SPARK-27577) | Wrong thresholds selected by BinaryClassificationMetrics when downsampling |  Minor | MLlib | Shaochen Shi | Shaochen Shi |
| [SPARK-25139](https://issues.apache.org/jira/browse/SPARK-25139) | PythonRunner#WriterThread released block after TaskRunner finally block which  invoke BlockManager#releaseAllLocksForTask |  Major | Block Manager, Spark Core | DENG FEI | Xingbo Jiang |
| [SPARK-27624](https://issues.apache.org/jira/browse/SPARK-27624) | Fix CalenderInterval to show an empty interval correctly |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27347](https://issues.apache.org/jira/browse/SPARK-27347) | Fix supervised driver retry logic when agent crashes/restarts |  Major | Mesos | Sam Tran | Sam Tran |
| [SPARK-27671](https://issues.apache.org/jira/browse/SPARK-27671) | Fix error when casting from a nested null in a struct |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-27735](https://issues.apache.org/jira/browse/SPARK-27735) | Interval string in upper case is not supported in Trigger |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26045](https://issues.apache.org/jira/browse/SPARK-26045) | Error in the spark 2.4 release package with the spark-avro\_2.11 depdency |  Blocker | Build | Oscar garcía | Sean R. Owen |
| [SPARK-27711](https://issues.apache.org/jira/browse/SPARK-27711) | InputFileBlockHolder should be unset at the end of tasks |  Major | PySpark, Spark Core | Jose Torres | Jose Torres |
| [SPARK-27858](https://issues.apache.org/jira/browse/SPARK-27858) | Fix for avro deserialization on union types with multiple non-null types |  Major | SQL | Dongjoon Hyun | Gabbi Merz |
| [SPARK-27657](https://issues.apache.org/jira/browse/SPARK-27657) | ml.util.Instrumentation.logFailure doesn't log error message |  Minor | ML | Xiangrui Meng | Wesley Tang |
| [SPARK-27869](https://issues.apache.org/jira/browse/SPARK-27869) | Redact sensitive information in System Properties from UI |  Major | Web UI | Aaruna Godthi | Aaruna Godthi |
| [SPARK-27863](https://issues.apache.org/jira/browse/SPARK-27863) | Metadata files and temporary files should not be counted as data files |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-27907](https://issues.apache.org/jira/browse/SPARK-27907) | HiveUDAF should return NULL in case of 0 rows |  Blocker | SQL | Ajith S | Ajith S |
| [SPARK-27873](https://issues.apache.org/jira/browse/SPARK-27873) | Csv reader, adding a corrupt record column causes error if enforceSchema=false |  Major | SQL | Marcin Mejran | L. C. Hsieh |
| [SPARK-27798](https://issues.apache.org/jira/browse/SPARK-27798) | ConvertToLocalRelation should tolerate expression reusing output object |  Blocker | SQL | Yosuke Mori | L. C. Hsieh |
| [SPARK-27917](https://issues.apache.org/jira/browse/SPARK-27917) | Semantic equals of CaseWhen is failing with case sensitivity of column Names |  Major | SQL | Akash R Nilugal | Sandeep Katta |
| [SPARK-21882](https://issues.apache.org/jira/browse/SPARK-21882) | OutputMetrics doesn't count written bytes correctly in the saveAsHadoopDataset function |  Minor | Spark Core | linxiaojun | linxiaojun |
| [SPARK-28058](https://issues.apache.org/jira/browse/SPARK-28058) | Reading csv with DROPMALFORMED sometimes doesn't drop malformed records |  Minor | SQL | Stuart White | L. C. Hsieh |
| [SPARK-28081](https://issues.apache.org/jira/browse/SPARK-28081) | word2vec 'large' count value too low for very large corpora |  Minor | ML | Sean R. Owen | Sean R. Owen |
| [SPARK-27018](https://issues.apache.org/jira/browse/SPARK-27018) | Checkpointed RDD deleted prematurely when using GBTClassifier |  Major | ML, Spark Core | Piotr Kolaczkowski | zhengruifeng |
| [SPARK-27100](https://issues.apache.org/jira/browse/SPARK-27100) | Use \`Array\` instead of \`Seq\` in \`FilePartition\` to prevent StackOverflowError |  Critical | SQL | KaiXu | Parth Chandra |
| [SPARK-28164](https://issues.apache.org/jira/browse/SPARK-28164) | usage description does not match with shell scripts |  Minor | Project Infra | Hanna Kan | Shivu Sondur |
| [SPARK-27992](https://issues.apache.org/jira/browse/SPARK-27992) | PySpark socket server should sync with JVM connection thread future |  Blocker | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-28160](https://issues.apache.org/jira/browse/SPARK-28160) | TransportClient.sendRpcSync may hang forever |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-28156](https://issues.apache.org/jira/browse/SPARK-28156) | Join plan sometimes does not use cached query |  Major | SQL | Bruce Robbins | L. C. Hsieh |
| [SPARK-28308](https://issues.apache.org/jira/browse/SPARK-28308) | CalendarInterval sub-second part should be padded before parsing |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28302](https://issues.apache.org/jira/browse/SPARK-28302) | SparkLauncher: The process cannot access the file because it is being used by another process |  Major | Spark Core | wuyi | wuyi |
| [SPARK-28015](https://issues.apache.org/jira/browse/SPARK-28015) | Check stringToDate() consumes entire input for the yyyy and yyyy-[m]m formats |  Major | SQL | Yuming Wang | Maxim Gekk |
| [SPARK-28371](https://issues.apache.org/jira/browse/SPARK-28371) | Parquet "starts with" filter is not null-safe |  Major | SQL | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28404](https://issues.apache.org/jira/browse/SPARK-28404) | Fix negative timeout value in RateStreamContinuousPartitionReader |  Minor | Structured Streaming | Gabor Somogyi | Gabor Somogyi |
| [SPARK-27485](https://issues.apache.org/jira/browse/SPARK-27485) | EnsureRequirements.reorder should handle duplicate expressions gracefully |  Minor | Optimizer, SQL | Muthu Jayakumar | Herman van Hövell |
| [SPARK-28430](https://issues.apache.org/jira/browse/SPARK-28430) | Some stage table rows render wrong number of columns if tasks are missing metrics |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-28468](https://issues.apache.org/jira/browse/SPARK-28468) | Upgrade pip to fix \`sphinx\` install error |  Blocker | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27234](https://issues.apache.org/jira/browse/SPARK-27234) | Continuous Streaming does not support python UDFs |  Major | Structured Streaming | Mark Hamilton | Hyukjin Kwon |
| [SPARK-28489](https://issues.apache.org/jira/browse/SPARK-28489) | KafkaOffsetRangeCalculator.getRanges may drop offsets |  Blocker | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-28153](https://issues.apache.org/jira/browse/SPARK-28153) | Use AtomicReference at InputFileBlockHolder (to support input\_file\_name with Python UDF) |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28606](https://issues.apache.org/jira/browse/SPARK-28606) | Update CRAN key to recover docker image generation |  Blocker | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28582](https://issues.apache.org/jira/browse/SPARK-28582) | Pyspark daemon exit failed when receive SIGTERM on py3.7 |  Major | PySpark | Weichen Xu | Weichen Xu |
| [SPARK-28642](https://issues.apache.org/jira/browse/SPARK-28642) | Hide credentials in show create table |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-28638](https://issues.apache.org/jira/browse/SPARK-28638) | Task summary metrics are wrong when there are running tasks |  Major | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-28647](https://issues.apache.org/jira/browse/SPARK-28647) | Recover additional metric feature and remove additional-metrics.js |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28766](https://issues.apache.org/jira/browse/SPARK-28766) | Fix CRAN incoming feasibility warning on invalid URL |  Major | SparkR | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28775](https://issues.apache.org/jira/browse/SPARK-28775) | DateTimeUtilsSuite fails for JDKs using the tzdata2018i or newer timezone database |  Major | SQL, Tests | Herman van Hövell | Sean R. Owen |
| [SPARK-28780](https://issues.apache.org/jira/browse/SPARK-28780) | Delete the incorrect setWeightCol method in LinearSVCModel |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-28699](https://issues.apache.org/jira/browse/SPARK-28699) | Cache an indeterminate RDD could lead to incorrect result while stage rerun |  Blocker | Spark Core | Yuanjian Li | Yuanjian Li |
| [SPARK-28844](https://issues.apache.org/jira/browse/SPARK-28844) | Fix typo in SQLConf FILE\_COMRESSION\_FACTOR |  Major | SQL | ZhangYao |  |
| [SPARK-28025](https://issues.apache.org/jira/browse/SPARK-28025) | HDFSBackedStateStoreProvider should not leak .crc files |  Major | Structured Streaming | Gerard Maas | Jungtaek Lim |
| [SPARK-27330](https://issues.apache.org/jira/browse/SPARK-27330) | ForeachWriter is not being closed once a batch is aborted |  Major | Structured Streaming | Eyal Zituny | Eyal Zituny |
| [SPARK-28868](https://issues.apache.org/jira/browse/SPARK-28868) | Specify Jekyll version to 3.8.6 in release docker image |  Blocker | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27781](https://issues.apache.org/jira/browse/SPARK-27781) | Tried to access method org.apache.avro.specific.SpecificData.\<init\>()V |  Major | Spark Core | Michael Heuer |  |
| [SPARK-29414](https://issues.apache.org/jira/browse/SPARK-29414) | HasOutputCol param isSet() property is not preserved after persistence |  Major | ML, PySpark | Borys Biletskyy |  |
| [SPARK-27298](https://issues.apache.org/jira/browse/SPARK-27298) | Dataset except operation gives different results(dataset count) on Spark 2.3.0 Windows and Spark 2.3.0 Linux environment |  Blocker | SQL | Mahima Khatri |  |
| [SPARK-29773](https://issues.apache.org/jira/browse/SPARK-29773) | Unable to process empty ORC files in Hive Table using Spark SQL |  Major | SQL | Alexander Ermakov |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-28031](https://issues.apache.org/jira/browse/SPARK-28031) | Improve or remove doctest on over function of Column |  Trivial | PySpark, SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-28261](https://issues.apache.org/jira/browse/SPARK-28261) | Flaky test: org.apache.spark.network.TransportClientFactorySuite.reuseClientsUpToConfigVariable |  Minor | Spark Core, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28335](https://issues.apache.org/jira/browse/SPARK-28335) | Flaky test: org.apache.spark.streaming.kafka010.DirectKafkaStreamSuite.offset recovery from kafka |  Minor | DStreams, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-28357](https://issues.apache.org/jira/browse/SPARK-28357) | Fix Flaky Test - FileAppenderSuite.rolling file appender - size-based rolling compressed |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28361](https://issues.apache.org/jira/browse/SPARK-28361) | Test equality of generated code with id in class name |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-28247](https://issues.apache.org/jira/browse/SPARK-28247) | Flaky test: "query without test harness" in ContinuousSuite |  Major | Structured Streaming, Tests | Jungtaek Lim | Jungtaek Lim |
| [SPARK-27168](https://issues.apache.org/jira/browse/SPARK-27168) | Add docker integration test for MsSql Server |  Major | SQL | Zhu, Lipeng | Zhu, Lipeng |
| [SPARK-28535](https://issues.apache.org/jira/browse/SPARK-28535) | Flaky test: JobCancellationSuite."interruptible iterator of shuffle reader" |  Minor | Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-24352](https://issues.apache.org/jira/browse/SPARK-24352) | Flaky test: StandaloneDynamicAllocationSuite |  Major | Spark Core, Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-28418](https://issues.apache.org/jira/browse/SPARK-28418) | Flaky Test: pyspark.sql.tests.test\_dataframe: test\_query\_execution\_listener\_on\_collect |  Minor | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-28881](https://issues.apache.org/jira/browse/SPARK-28881) | toPandas with Arrow should not return a DataFrame when the result size exceeds \`spark.driver.maxResultSize\` |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-27441](https://issues.apache.org/jira/browse/SPARK-27441) | Add read/write tests to Hive serde tables |  Major | Tests | Yuming Wang | Yuming Wang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-27726](https://issues.apache.org/jira/browse/SPARK-27726) | Performance of InMemoryStore suffers under load |  Major | Spark Core | David C Navas | David C Navas |
| [SPARK-27800](https://issues.apache.org/jira/browse/SPARK-27800) | Example for xor function has a wrong answer |  Major | Documentation, SQL | Alex Liu | Alex Liu |
| [SPARK-28464](https://issues.apache.org/jira/browse/SPARK-28464) | Document kafka minPartitions option in "Structured Streaming + Kafka Integration Guide" |  Minor | Documentation | Arun Pandian | Arun Pandian |
| [SPARK-28609](https://issues.apache.org/jira/browse/SPARK-28609) | Fix broken styles/links and make up-to-date |  Minor | Documentation | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-28777](https://issues.apache.org/jira/browse/SPARK-28777) | Pyspark sql function "format\_string" has the wrong parameters in doc string |  Minor | PySpark | Darren Tirto | Darren Tirto |
| [SPARK-28871](https://issues.apache.org/jira/browse/SPARK-28871) | Some codes in 'Policy for handling multiple watermarks' does not show friendly |  Minor | Documentation | chaiyongqiang | chaiyongqiang |


