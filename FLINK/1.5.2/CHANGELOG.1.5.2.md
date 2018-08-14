
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

## Release 1.5.2 - 2018-07-31



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9499](https://issues.apache.org/jira/browse/FLINK-9499) | Allow REST API for running a job to provide job configuration as body of POST request |  Minor | REST | Esteban Serrano | Esteban Serrano |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9659](https://issues.apache.org/jira/browse/FLINK-9659) | Remove hard-coded sleeps in bucketing sink E2E test |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9768](https://issues.apache.org/jira/browse/FLINK-9768) | Only build flink-dist for binary releases |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9785](https://issues.apache.org/jira/browse/FLINK-9785) | Add remote addresses to LocalTransportException instances |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-9804](https://issues.apache.org/jira/browse/FLINK-9804) | KeyedStateBackend.getKeys() does not work on RocksDB MapState |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Sihua Zhou |
| [FLINK-9801](https://issues.apache.org/jira/browse/FLINK-9801) | flink-dist is missing dependency on flink-examples |  Major | Build System, Examples | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9881](https://issues.apache.org/jira/browse/FLINK-9881) | Typo in a function name in table.scala |  Major | Table API & SQL | Ashwin Sinha | Ashwin Sinha |
| [FLINK-9811](https://issues.apache.org/jira/browse/FLINK-9811) | Add ITCase for interactions of Jar handlers |  Major | Job-Submission, REST, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9873](https://issues.apache.org/jira/browse/FLINK-9873) | Log actual state when aborting checkpoint due to task not running |  Major | State Backends, Checkpointing | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9748](https://issues.apache.org/jira/browse/FLINK-9748) | create\_source\_release pollutes flink root directory |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9888](https://issues.apache.org/jira/browse/FLINK-9888) | Remove unsafe defaults from release scripts |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9909](https://issues.apache.org/jira/browse/FLINK-9909) | Remove cancellation of input futures from ConjunctFutures |  Major | Core | Till Rohrmann | Till Rohrmann |
| [FLINK-9691](https://issues.apache.org/jira/browse/FLINK-9691) | Modify run loop in Kinesis ShardConsumer to not sleep for a fixed fetchIntervalMillis |  Major | Kinesis Connector | Lakshmi Rao | Jamie Grier |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9772](https://issues.apache.org/jira/browse/FLINK-9772) | Documentation of Hadoop API outdated |  Minor | Documentation | Lorenz Bühmann | vinoyang |
| [FLINK-8161](https://issues.apache.org/jira/browse/FLINK-8161) | Flakey YARNSessionCapacitySchedulerITCase on Travis |  Critical | Tests, YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-9743](https://issues.apache.org/jira/browse/FLINK-9743) | PackagedProgram.extractContainedLibraries fails on Windows |  Major | Client, Job-Submission | Chesnay Schepler | Sergey Nuyanzin |
| [FLINK-9584](https://issues.apache.org/jira/browse/FLINK-9584) | Unclosed streams in Bucketing-/RollingSink |  Major | filesystem-connector | Chesnay Schepler | Sihua Zhou |
| [FLINK-9754](https://issues.apache.org/jira/browse/FLINK-9754) | Release scripts refers to non-existing profile |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9706](https://issues.apache.org/jira/browse/FLINK-9706) | DispatcherTest#testSubmittedJobGraphListener fails on Travis |  Critical | Distributed Coordination, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-9439](https://issues.apache.org/jira/browse/FLINK-9439) | DispatcherTest#testJobRecovery dead locks |  Critical | Distributed Coordination | Piotr Nowojski | Till Rohrmann |
| [FLINK-9766](https://issues.apache.org/jira/browse/FLINK-9766) | Incomplete/incorrect cleanup in RemoteInputChannelTest |  Major | Network, Tests | Nico Kruber | Nico Kruber |
| [FLINK-9784](https://issues.apache.org/jira/browse/FLINK-9784) | Inconsistent use of 'static' in AsyncIOExample.java |  Minor | Examples | Alexei Nekrassov | Alexei Nekrassov |
| [FLINK-9810](https://issues.apache.org/jira/browse/FLINK-9810) | JarListHandler does not close opened jars |  Major | REST, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9771](https://issues.apache.org/jira/browse/FLINK-9771) |  "Show Plan" option under Submit New Job in WebUI not working |  Major | Job-Submission, Webfrontend | Yazdan Shirvany | Chesnay Schepler |
| [FLINK-9091](https://issues.apache.org/jira/browse/FLINK-9091) | Failure while enforcing releasability in building flink-json module |  Major | Build System | Ted Yu | Hai Zhou |
| [FLINK-8731](https://issues.apache.org/jira/browse/FLINK-8731) | TwoInputStreamTaskTest flaky on travis |  Critical | Streaming, Tests | Chesnay Schepler | Dawid Wysakowicz |
| [FLINK-9847](https://issues.apache.org/jira/browse/FLINK-9847) | OneInputStreamTaskTest.testWatermarksNotForwardedWithinChainWhenIdle unstable |  Critical | Tests | Till Rohrmann |  |
| [FLINK-9380](https://issues.apache.org/jira/browse/FLINK-9380) | Failing end-to-end tests should not clean up logs |  Critical | Tests | Till Rohrmann | Deepak Sharma |
| [FLINK-9842](https://issues.apache.org/jira/browse/FLINK-9842) | Job submission fails via CLI with SSL enabled |  Blocker | Client, Job-Submission | Nico Kruber | Chesnay Schepler |
| [FLINK-9857](https://issues.apache.org/jira/browse/FLINK-9857) | Processing-time timers fire too early |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-9658](https://issues.apache.org/jira/browse/FLINK-9658) | Test data output directories are no longer cleaned up |  Major | Tests | Chesnay Schepler | zhangminglei |
| [FLINK-9575](https://issues.apache.org/jira/browse/FLINK-9575) | Potential race condition when removing JobGraph in HA |  Critical | . | Dominik Wosiński | Dominik Wosiński |
| [FLINK-9872](https://issues.apache.org/jira/browse/FLINK-9872) | SavepointITCase#testSavepointForJobWithIteration does not properly cancel jobs |  Minor | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9762](https://issues.apache.org/jira/browse/FLINK-9762) | CoreOptions.TMP\_DIRS wrongly managed on Yarn |  Major | YARN | Oleksandr Nitavskyi | Oleksandr Nitavskyi |
| [FLINK-9860](https://issues.apache.org/jira/browse/FLINK-9860) | Netty resource leak on receiver side |  Blocker | Network | Till Rohrmann | Nico Kruber |
| [FLINK-9755](https://issues.apache.org/jira/browse/FLINK-9755) | Exceptions in RemoteInputChannel#notifyBufferAvailable() are not propagated to the responsible thread |  Critical | Network | Nico Kruber | Nico Kruber |
| [FLINK-9841](https://issues.apache.org/jira/browse/FLINK-9841) | Web UI only show partial taskmanager log |  Major | REST, Webfrontend | vinoyang | vinoyang |
| [FLINK-9793](https://issues.apache.org/jira/browse/FLINK-9793) | When submitting a flink job with yarn-cluster, flink-dist\*.jar is repeatedly uploaded |  Minor | YARN | linzhongjun | linzhongjun |
| [FLINK-9911](https://issues.apache.org/jira/browse/FLINK-9911) | SlotPool#failAllocation is called outside of main thread |  Blocker | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-9910](https://issues.apache.org/jira/browse/FLINK-9910) | Non-queued scheduling failure sometimes does not return the slot |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9908](https://issues.apache.org/jira/browse/FLINK-9908) | Inconsistent state of SlotPool after ExecutionGraph cancellation |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9838](https://issues.apache.org/jira/browse/FLINK-9838) | Slot request failed Exceptions after completing a job |  Major | Distributed Coordination | Nico Kruber | Till Rohrmann |
| [FLINK-9939](https://issues.apache.org/jira/browse/FLINK-9939) | Mesos: Not setting TMP dirs causes NPE |  Blocker | Mesos | Gary Yao | Gary Yao |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9839](https://issues.apache.org/jira/browse/FLINK-9839) | End-to-end test: Streaming job with SSL |  Blocker | Tests | Nico Kruber | Nico Kruber |


