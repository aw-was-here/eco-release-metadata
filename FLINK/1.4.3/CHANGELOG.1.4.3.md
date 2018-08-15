
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
# Apache Flink Changelog

## Release 1.4.3 - Unreleased (as of 2018-08-15)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9935](https://issues.apache.org/jira/browse/FLINK-9935) | Batch Table API: grouping by window and attribute causes java.lang.ClassCastException: |  Critical | Table API & SQL | Roman Wozniak | Fabian Hueske |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8890](https://issues.apache.org/jira/browse/FLINK-8890) | Compare checkpoints with order in CompletedCheckpoint.checkpointsMatch() |  Major | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-9093](https://issues.apache.org/jira/browse/FLINK-9093) | If Google can't be accessed,the document can't be use |  Major | Documentation | Matrix42 | Matrix42 |
| [FLINK-9107](https://issues.apache.org/jira/browse/FLINK-9107) | Document timer coalescing for ProcessFunctions |  Major | Documentation, Streaming | Nico Kruber | Nico Kruber |
| [FLINK-9210](https://issues.apache.org/jira/browse/FLINK-9210) | Call getValue() only once in gauge serialization |  Minor | Metrics | Jisu You | Chesnay Schepler |
| [FLINK-9206](https://issues.apache.org/jira/browse/FLINK-9206) | CheckpointCoordinator log messages do not contain the job ID |  Major | State Backends, Checkpointing | Nico Kruber | Nico Kruber |
| [FLINK-8202](https://issues.apache.org/jira/browse/FLINK-8202) | Update queryable section on configuration page |  Major | Documentation, Queryable State | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6719](https://issues.apache.org/jira/browse/FLINK-6719) | Add details about fault-tolerance of timers to ProcessFunction docs |  Major | DataStream API, Documentation | Tzu-Li (Gordon) Tai | Bowen Li |
| [FLINK-8284](https://issues.apache.org/jira/browse/FLINK-8284) | Explicitly mention port conflicts in reporter docs |  Major | Documentation, Metrics | Julio Biason | Chesnay Schepler |
| [FLINK-9518](https://issues.apache.org/jira/browse/FLINK-9518) | SSL setup Docs config example has wrong keys password |  Minor | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9517](https://issues.apache.org/jira/browse/FLINK-9517) | Fixing broken links on CLI and Upgrade Docs |  Trivial | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9508](https://issues.apache.org/jira/browse/FLINK-9508) | General Spell Check on Flink Docs |  Trivial | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9595](https://issues.apache.org/jira/browse/FLINK-9595) | Add instructions to docs about ceased support of KPL version used in Kinesis connector |  Critical | Documentation, Kinesis Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8650](https://issues.apache.org/jira/browse/FLINK-8650) | Add tests and documentation for WINDOW clause |  Major | Table API & SQL | Timo Walther | Sergey Nuyanzin |
| [FLINK-8654](https://issues.apache.org/jira/browse/FLINK-8654) | Extend quickstart docs on how to submit jobs |  Major | Documentation, Quickstarts | Chesnay Schepler | Yazdan Shirvany |
| [FLINK-9729](https://issues.apache.org/jira/browse/FLINK-9729) | Duplicate lines for "Weekday name (Sunday .. Saturday)" |  Trivial | Documentation, Table API & SQL | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-9888](https://issues.apache.org/jira/browse/FLINK-9888) | Remove unsafe defaults from release scripts |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9806](https://issues.apache.org/jira/browse/FLINK-9806) | Add a canonical link element to documentation HTML |  Major | Documentation | Patrick Lucas | Patrick Lucas |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8543](https://issues.apache.org/jira/browse/FLINK-8543) | Output Stream closed at org.apache.hadoop.fs.s3a.S3AOutputStream.checkOpen |  Blocker | Streaming Connectors | chris snow |  |
| [FLINK-8857](https://issues.apache.org/jira/browse/FLINK-8857) | HBase connector read example throws exception at the end. |  Trivial | Batch Connectors and Input/Output Formats | Xu Zhang | Xu Zhang |
| [FLINK-8847](https://issues.apache.org/jira/browse/FLINK-8847) | Modules containing package-info.java are always recompiled |  Minor | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8487](https://issues.apache.org/jira/browse/FLINK-8487) | State loss after multiple restart attempts |  Blocker | State Backends, Checkpointing | Fabian Hueske | Aljoscha Krettek |
| [FLINK-8807](https://issues.apache.org/jira/browse/FLINK-8807) | ZookeeperCompleted checkpoint store can get stuck in infinite loop |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8856](https://issues.apache.org/jira/browse/FLINK-8856) | Move all interrupt() calls to TaskCanceler |  Blocker | TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-8896](https://issues.apache.org/jira/browse/FLINK-8896) | Kafka08Fetcher trying to look up topic "n/a" on partiton "-1" |  Critical | Kafka Connector | Nico Kruber | Nico Kruber |
| [FLINK-8801](https://issues.apache.org/jira/browse/FLINK-8801) | S3's eventual consistent read-after-write may fail yarn deployment of resources to S3 |  Blocker | FileSystem, ResourceManager, YARN | Nico Kruber | Nico Kruber |
| [FLINK-9031](https://issues.apache.org/jira/browse/FLINK-9031) | DataSet Job result changes when adding rebalance after union |  Critical | DataSet API, Local Runtime, Optimizer | Fabian Hueske | Fabian Hueske |
| [FLINK-9110](https://issues.apache.org/jira/browse/FLINK-9110) | Building docs with Ruby 2.5 fails if bundler is not globally installed |  Blocker | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-9068](https://issues.apache.org/jira/browse/FLINK-9068) | Website documentation issue - html tag visible on screen |  Minor | Project Website | SHANKAR GANESH | SHANKAR GANESH |
| [FLINK-9103](https://issues.apache.org/jira/browse/FLINK-9103) | SSL verification on TaskManager when parallelism \> 1 |  Major | Docker, Network, Security | Edward Rojas | Edward Rojas |
| [FLINK-9113](https://issues.apache.org/jira/browse/FLINK-9113) | Data loss in BucketingSink when writing to local filesystem |  Blocker | Streaming Connectors | Timo Walther | Timo Walther |
| [FLINK-8600](https://issues.apache.org/jira/browse/FLINK-8600) | BucketingSink errors out when used with Presto filesystem |  Blocker | FileSystem | Narayanan Arunachalam | Aljoscha Krettek |
| [FLINK-9241](https://issues.apache.org/jira/browse/FLINK-9241) | Usage docs for ScalaGauge doesn't work |  Major | Documentation, Metrics | Julio Biason | Chesnay Schepler |
| [FLINK-9229](https://issues.apache.org/jira/browse/FLINK-9229) | Fix literal handling in code generation |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-9216](https://issues.apache.org/jira/browse/FLINK-9216) | Fix comparator violation |  Major | Streaming | Ruidong Li | Ruidong Li |
| [FLINK-9119](https://issues.apache.org/jira/browse/FLINK-9119) | example code error in Concepts & Common API |  Minor | Documentation | chillon.m | vinoyang |
| [FLINK-8237](https://issues.apache.org/jira/browse/FLINK-8237) | BucketingSink throws NPE when Writer.duplicate returns null |  Minor | . | Gábor Hermann | Pavel Shvetsov |
| [FLINK-9317](https://issues.apache.org/jira/browse/FLINK-9317) | Async I/O API Example For Scala has Variable Name error |  Minor | Documentation | Yazdan Shirvany |  |
| [FLINK-9304](https://issues.apache.org/jira/browse/FLINK-9304) | Timer service shutdown should not be interrupted |  Major | Streaming | Stefan Richter | Stefan Richter |
| [FLINK-9359](https://issues.apache.org/jira/browse/FLINK-9359) | Update quickstart docs to only mention Java 8 |  Major | Documentation | David Anderson | David Anderson |
| [FLINK-9397](https://issues.apache.org/jira/browse/FLINK-9397) | Individual Buffer Timeout of 0 incorrectly leads to default timeout |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-9403](https://issues.apache.org/jira/browse/FLINK-9403) | Documentation continues to refer to removed methods |  Minor | Documentation | Elias Levy | Elias Levy |
| [FLINK-9349](https://issues.apache.org/jira/browse/FLINK-9349) | KafkaConnector Exception  while fetching from multiple kafka topics |  Critical | Kafka Connector | Vishal Santoshi | Sergey Nuyanzin |
| [FLINK-9234](https://issues.apache.org/jira/browse/FLINK-9234) | Commons Logging is missing from shaded Flink Table library |  Blocker | Table API & SQL | Eron Wright | Timo Walther |
| [FLINK-8836](https://issues.apache.org/jira/browse/FLINK-8836) | Duplicating a KryoSerializer does not duplicate registered default serializers |  Blocker | Type Serialization System | Tzu-Li (Gordon) Tai | Stefan Richter |
| [FLINK-9258](https://issues.apache.org/jira/browse/FLINK-9258) | ConcurrentModificationException in ComponentMetricGroup.getAllVariables |  Major | Metrics | Narayanan Arunachalam | Chesnay Schepler |
| [FLINK-9398](https://issues.apache.org/jira/browse/FLINK-9398) | Flink CLI list running job returns all jobs except in CREATE state |  Major | Client | Rong Rong | Rong Rong |
| [FLINK-8946](https://issues.apache.org/jira/browse/FLINK-8946) | TaskManager stop sending metrics after JobManager failover |  Critical | Metrics, TaskManager | Truong Duc Kien | vinoyang |
| [FLINK-9524](https://issues.apache.org/jira/browse/FLINK-9524) | NPE from ProcTimeBoundedRangeOver.scala |  Major | Table API & SQL | yan zhou | yan zhou |
| [FLINK-9627](https://issues.apache.org/jira/browse/FLINK-9627) | Extending 'KafkaJsonTableSource' according to comments will result in NPE |  Major | . | Dominik Wosiński | vinoyang |
| [FLINK-9665](https://issues.apache.org/jira/browse/FLINK-9665) | PrometheusReporter does not properly unregister metrics |  Major | Metrics | Chesnay Schepler | Jelmer Kuperus |
| [FLINK-9581](https://issues.apache.org/jira/browse/FLINK-9581) | Redundant spaces for Collect at sql.md |  Trivial | Documentation, Table API & SQL | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-9772](https://issues.apache.org/jira/browse/FLINK-9772) | Documentation of Hadoop API outdated |  Minor | Documentation | Lorenz Bühmann | vinoyang |
| [FLINK-9743](https://issues.apache.org/jira/browse/FLINK-9743) | PackagedProgram.extractContainedLibraries fails on Windows |  Major | Client, Job-Submission | Chesnay Schepler | Sergey Nuyanzin |
| [FLINK-9810](https://issues.apache.org/jira/browse/FLINK-9810) | JarListHandler does not close opened jars |  Major | REST, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9793](https://issues.apache.org/jira/browse/FLINK-9793) | When submitting a flink job with yarn-cluster, flink-dist\*.jar is repeatedly uploaded |  Minor | YARN | linzhongjun | linzhongjun |
| [FLINK-5750](https://issues.apache.org/jira/browse/FLINK-5750) | Incorrect translation of n-ary Union |  Critical | Table API & SQL | Anton Mushin | Alexander Koltsov |
| [FLINK-9446](https://issues.apache.org/jira/browse/FLINK-9446) | Compatibility table not up-to-date |  Major | Documentation | Razvan | Chesnay Schepler |
| [FLINK-9693](https://issues.apache.org/jira/browse/FLINK-9693) | Possible memory leak in jobmanager retaining archived checkpoints |  Major | JobManager, State Backends, Checkpointing | Steven Zhen Wu | Till Rohrmann |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9183](https://issues.apache.org/jira/browse/FLINK-9183) | Kafka consumer docs to warn about idle partitions |  Major | . | Juho Autio | Juho Autio |
| [FLINK-9951](https://issues.apache.org/jira/browse/FLINK-9951) | Update scm developerConnection |  Major | Build System | Chesnay Schepler | Chesnay Schepler |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6909](https://issues.apache.org/jira/browse/FLINK-6909) | Fix error message in CsvReader for wrong type class |  Minor | Type Serialization System | Md Kamaruzzaman | Timo Walther |


