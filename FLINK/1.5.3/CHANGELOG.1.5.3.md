
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

## Release 1.5.3 - 2018-08-21



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9935](https://issues.apache.org/jira/browse/FLINK-9935) | Batch Table API: grouping by window and attribute causes java.lang.ClassCastException: |  Critical | Table API & SQL | Roman Wozniak | Fabian Hueske |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10022](https://issues.apache.org/jira/browse/FLINK-10022) | Add metrics for input/output buffers |  Major | Metrics, Network | Nico Kruber | Nico Kruber |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9765](https://issues.apache.org/jira/browse/FLINK-9765) | Improve CLI responsiveness when cluster is not reachable |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-9806](https://issues.apache.org/jira/browse/FLINK-9806) | Add a canonical link element to documentation HTML |  Major | Documentation | Patrick Lucas | Patrick Lucas |
| [FLINK-9942](https://issues.apache.org/jira/browse/FLINK-9942) | Guard handlers against null fields in requests |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9987](https://issues.apache.org/jira/browse/FLINK-9987) | Rework ClassLoader E2E test to not rely on .version.properties file |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9986](https://issues.apache.org/jira/browse/FLINK-9986) | Remove unnecessary information from .version.properties file |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10016](https://issues.apache.org/jira/browse/FLINK-10016) | Make YARN/Kerberos end-to-end test stricter |  Major | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-10006](https://issues.apache.org/jira/browse/FLINK-10006) | Improve logging in BarrierBuffer |  Major | Logging, Network | Nico Kruber | Nico Kruber |
| [FLINK-9446](https://issues.apache.org/jira/browse/FLINK-9446) | Compatibility table not up-to-date |  Major | Documentation | Razvan | Chesnay Schepler |
| [FLINK-9859](https://issues.apache.org/jira/browse/FLINK-9859) | More Akka config options |  Major | Local Runtime | 陈梓立 | 陈梓立 |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5750](https://issues.apache.org/jira/browse/FLINK-5750) | Incorrect translation of n-ary Union |  Critical | Table API & SQL | Anton Mushin | Alexander Koltsov |
| [FLINK-9985](https://issues.apache.org/jira/browse/FLINK-9985) | Incorrect parameter order in document |  Major | Documentation | zhangminglei | zhangminglei |
| [FLINK-9923](https://issues.apache.org/jira/browse/FLINK-9923) | OneInputStreamTaskTest.testWatermarkMetrics fails on Travis |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-9978](https://issues.apache.org/jira/browse/FLINK-9978) | Source release sha contains absolute file path |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9988](https://issues.apache.org/jira/browse/FLINK-9988) |   job manager does not respect property jobmanager.web.address |  Major | . | Pavlo Petrychenko | Chesnay Schepler |
| [FLINK-9946](https://issues.apache.org/jira/browse/FLINK-9946) | Quickstart E2E test archetype version is hard-coded |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9694](https://issues.apache.org/jira/browse/FLINK-9694) | Potentially NPE in CompositeTypeSerializerConfigSnapshot constructor |  Minor | Table API & SQL | vinoyang | Piotr Nowojski |
| [FLINK-10013](https://issues.apache.org/jira/browse/FLINK-10013) | Fix Kerberos integration for FLIP-6 YarnTaskExecutorRunner |  Blocker | Local Runtime | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-9655](https://issues.apache.org/jira/browse/FLINK-9655) | Externalized checkpoint E2E test fails on travis |  Major | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9936](https://issues.apache.org/jira/browse/FLINK-9936) | Mesos resource manager unable to connect to master after failover |  Blocker | Mesos, Scheduler | Renjie Liu | Gary Yao |
| [FLINK-9969](https://issues.apache.org/jira/browse/FLINK-9969) | Unreasonable memory requirements to complete examples/batch/WordCount |  Blocker | ResourceManager | Piotr Nowojski | Till Rohrmann |
| [FLINK-10033](https://issues.apache.org/jira/browse/FLINK-10033) | Let Task release reference to Invokable on shutdown |  Major | TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-10070](https://issues.apache.org/jira/browse/FLINK-10070) | Flink cannot be compiled with maven 3.0.x |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9972](https://issues.apache.org/jira/browse/FLINK-9972) | Debug memory logging not working |  Critical | TaskManager | Piotr Nowojski | Piotr Nowojski |
| [FLINK-9693](https://issues.apache.org/jira/browse/FLINK-9693) | Possible memory leak in jobmanager retaining archived checkpoints |  Major | JobManager, State Backends, Checkpointing | Steven Zhen Wu | Till Rohrmann |
| [FLINK-9546](https://issues.apache.org/jira/browse/FLINK-9546) | The heartbeatTimeoutIntervalMs of HeartbeatMonitor should be larger than 0 |  Minor | Core | Sihua Zhou | Sihua Zhou |
| [FLINK-9289](https://issues.apache.org/jira/browse/FLINK-9289) | Parallelism of generated operators should have max parallism of input |  Major | DataSet API | Fabian Hueske | Xingcan Cui |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9951](https://issues.apache.org/jira/browse/FLINK-9951) | Update scm developerConnection |  Major | Build System | Chesnay Schepler | Chesnay Schepler |


