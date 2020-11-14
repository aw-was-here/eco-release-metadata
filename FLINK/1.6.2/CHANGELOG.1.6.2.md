
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

## Release 1.6.2 - 2018-10-29



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10371](https://issues.apache.org/jira/browse/FLINK-10371) | Allow to enable SSL mutual authentication on REST endpoints by configuration |  Major | Command Line Client, Runtime / REST | Johannes Dillmann | Johannes Dillmann |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10260](https://issues.apache.org/jira/browse/FLINK-10260) | Confusing log messages during TaskManager registration |  Major | Runtime / Coordination | Stephan Ewen | Andrey Zagrebin |
| [FLINK-10375](https://issues.apache.org/jira/browse/FLINK-10375) | ExceptionInChainedStubException hides wrapped exception in cause |  Minor | . | Mike Pedersen | Mike Pedersen |
| [FLINK-10311](https://issues.apache.org/jira/browse/FLINK-10311) | HA end-to-end/Jepsen tests for standby Dispatchers |  Critical | Tests | Till Rohrmann | Gary Yao |
| [FLINK-10291](https://issues.apache.org/jira/browse/FLINK-10291) | Generate JobGraph with fixed/configurable JobID in StandaloneJobClusterEntrypoint |  Critical | Runtime / Coordination | Till Rohrmann | vinoyang |
| [FLINK-10282](https://issues.apache.org/jira/browse/FLINK-10282) | Provide separate thread-pool for REST endpoint |  Major | Runtime / REST, Runtime / Task | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10075](https://issues.apache.org/jira/browse/FLINK-10075) | HTTP connections to a secured REST endpoint flood the log |  Critical | Runtime / REST | Stephan Ewen | Andrey Zagrebin |
| [FLINK-10312](https://issues.apache.org/jira/browse/FLINK-10312) | Wrong / missing exception when submitting job |  Critical | Runtime / Coordination | Stephan Ewen | Andrey Zagrebin |
| [FLINK-9061](https://issues.apache.org/jira/browse/FLINK-9061) | Add entropy to s3 path for better scalability |  Critical | FileSystems, Runtime / State Backends | Jamie Grier | Indrajit Roychoudhury |
| [FLINK-10582](https://issues.apache.org/jira/browse/FLINK-10582) | Make REST executor thread priority configurable |  Major | Runtime / REST, Runtime / Task | Till Rohrmann | Till Rohrmann |
| [FLINK-10079](https://issues.apache.org/jira/browse/FLINK-10079) | Support external sink table in INSERT INTO statement |  Major | Table SQL / API | Jun Zhang | Jun Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9884](https://issues.apache.org/jira/browse/FLINK-9884) | Slot request may not be removed when it has already be assigned in slot manager |  Major | Runtime / Coordination | shuai.xu | shuai.xu |
| [FLINK-10363](https://issues.apache.org/jira/browse/FLINK-10363) | S3 FileSystem factory prints secrets into logs |  Critical | FileSystems | Stephan Ewen | Stephan Ewen |
| [FLINK-9567](https://issues.apache.org/jira/browse/FLINK-9567) | Flink does not release resource in Yarn Cluster mode |  Critical | Deployment / YARN, Runtime / Coordination | Shimin Yang | Shimin Yang |
| [FLINK-10157](https://issues.apache.org/jira/browse/FLINK-10157) | Allow \`null\` user values in map state with TTL |  Minor | Runtime / State Backends | chengjie.wu | Andrey Zagrebin |
| [FLINK-10383](https://issues.apache.org/jira/browse/FLINK-10383) | Hadoop configurations on the classpath seep into the S3 file system configs |  Major | FileSystems | Stephan Ewen | Stephan Ewen |
| [FLINK-10263](https://issues.apache.org/jira/browse/FLINK-10263) | User-defined function with LITERAL paramters yields CompileException |  Major | Table SQL / API | Fabian Hueske | Timo Walther |
| [FLINK-10444](https://issues.apache.org/jira/browse/FLINK-10444) | Make S3 entropy injection work with FileSystem safety net |  Major | FileSystems | Stephan Ewen | Stephan Ewen |
| [FLINK-10400](https://issues.apache.org/jira/browse/FLINK-10400) | Return failed JobResult if job terminates in state FAILED or CANCELED |  Major | Command Line Client | Till Rohrmann | Till Rohrmann |
| [FLINK-10415](https://issues.apache.org/jira/browse/FLINK-10415) | RestClient does not react to lost connection |  Blocker | Runtime / REST | Till Rohrmann | Till Rohrmann |
| [FLINK-10451](https://issues.apache.org/jira/browse/FLINK-10451) | TableFunctionCollector should handle the life cycle of ScalarFunction |  Major | Table SQL / API | Ruidong Li | Ruidong Li |
| [FLINK-10487](https://issues.apache.org/jira/browse/FLINK-10487) | fix invalid Flink SQL example |  Major | Documentation, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-10469](https://issues.apache.org/jira/browse/FLINK-10469) | FileChannel may not write the whole buffer in a single call to FileChannel.write(Buffer buffer) |  Blocker | Runtime / Network | Yun Gao | Nico Kruber |
| [FLINK-5542](https://issues.apache.org/jira/browse/FLINK-5542) | YARN client incorrectly uses local YARN config to check vcore capacity |  Major | Deployment / YARN | Shannon Carey |  |
| [FLINK-10465](https://issues.apache.org/jira/browse/FLINK-10465) | Jepsen: runit supervised sshd is stopped on tear down |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-10316](https://issues.apache.org/jira/browse/FLINK-10316) | Add check to KinesisProducer that aws.region is set |  Minor | Connectors / Kinesis | Joseph Sims |  |
| [FLINK-10379](https://issues.apache.org/jira/browse/FLINK-10379) | Can not use Table Functions in Java Table API |  Critical | Table SQL / API | Piotr Nowojski | Hequn Cheng |
| [FLINK-9788](https://issues.apache.org/jira/browse/FLINK-9788) | ExecutionGraph Inconsistency prevents Job from recovering |  Blocker | . | Gary Yao | Till Rohrmann |
| [FLINK-10524](https://issues.apache.org/jira/browse/FLINK-10524) | MemoryManagerConcurrentModReleaseTest.testConcurrentModificationWhileReleasing failed on travis |  Critical | Runtime / Coordination, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-10532](https://issues.apache.org/jira/browse/FLINK-10532) | Broken links in documentation |  Major | Documentation | Chesnay Schepler | Timo Walther |
| [FLINK-10544](https://issues.apache.org/jira/browse/FLINK-10544) | Remove custom settings.xml for snapshot deployments |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10516](https://issues.apache.org/jira/browse/FLINK-10516) | YarnApplicationMasterRunner does not initialize FileSystem with correct Flink Configuration during setup |  Major | Deployment / YARN | Shuyi Chen | Shuyi Chen |
| [FLINK-10135](https://issues.apache.org/jira/browse/FLINK-10135) | Certain cluster-level metrics are no longer exposed |  Critical | Runtime / Coordination, Runtime / Metrics | Joey Echeverria | vinoyang |
| [FLINK-9932](https://issues.apache.org/jira/browse/FLINK-9932) | Timed-out TaskExecutor slot-offers to JobMaster leak the slot |  Blocker | Runtime / Coordination | shuai.xu | shuai.xu |
| [FLINK-9891](https://issues.apache.org/jira/browse/FLINK-9891) | Flink cluster is not shutdown in YARN mode when Flink client is stopped |  Major | Command Line Client, Deployment / YARN | Sergey Krasovskiy | Andrey Zagrebin |
| [FLINK-10390](https://issues.apache.org/jira/browse/FLINK-10390) | DataDog MetricReporter leaks connections |  Minor | Runtime / Metrics | Elias Levy | Chesnay Schepler |
| [FLINK-10259](https://issues.apache.org/jira/browse/FLINK-10259) | Key validation for GroupWindowAggregate is broken |  Major | Table SQL / API | Fabian Hueske | Fabian Hueske |
| [FLINK-10222](https://issues.apache.org/jira/browse/FLINK-10222) | Table scalar function expression parses error when function name equals the exists keyword suffix |  Major | Table SQL / API | vinoyang | vinoyang |
| [FLINK-10354](https://issues.apache.org/jira/browse/FLINK-10354) | Savepoints should be counted as retained checkpoints |  Major | Runtime / State Backends | Dawid Wysakowicz | Dawid Wysakowicz |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10982](https://issues.apache.org/jira/browse/FLINK-10982) | Test DataStream to Table for Flink 1.6.2 |  Major | Table SQL / API | YUZHOU HONG |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10331](https://issues.apache.org/jira/browse/FLINK-10331) | Reduce number of flush requests to the network stack |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10332](https://issues.apache.org/jira/browse/FLINK-10332) | Move data available notification in PipelinedSubpartition out of the synchronized block |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10243](https://issues.apache.org/jira/browse/FLINK-10243) | Add option to reduce latency metrics granularity |  Major | Runtime / Configuration, Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10242](https://issues.apache.org/jira/browse/FLINK-10242) | Latency marker interval should be configurable |  Major | Runtime / Configuration, Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |


