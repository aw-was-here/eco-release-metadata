
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

## Release 1.5.2 - Unreleased (as of 2018-07-13)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9659](https://issues.apache.org/jira/browse/FLINK-9659) | Remove hard-coded sleeps in bucketing sink E2E test |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9768](https://issues.apache.org/jira/browse/FLINK-9768) | Only build flink-dist for binary releases |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9706](https://issues.apache.org/jira/browse/FLINK-9706) | DispatcherTest#testSubmittedJobGraphListener fails on Travis |  Critical | Distributed Coordination, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-9785](https://issues.apache.org/jira/browse/FLINK-9785) | Add remote addresses to LocalTransportException instances |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-9804](https://issues.apache.org/jira/browse/FLINK-9804) | KeyedStateBackend.getKeys() does not work on RocksDB MapState |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Sihua Zhou |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9772](https://issues.apache.org/jira/browse/FLINK-9772) | Documentation of Hadoop API outdated |  Minor | Documentation | Lorenz Bühmann | vinoyang |
| [FLINK-8161](https://issues.apache.org/jira/browse/FLINK-8161) | Flakey YARNSessionCapacitySchedulerITCase on Travis |  Critical | Tests, YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-9743](https://issues.apache.org/jira/browse/FLINK-9743) | PackagedProgram.extractContainedLibraries fails on Windows |  Major | Client, Job-Submission | Chesnay Schepler | Sergey Nuyanzin |
| [FLINK-9584](https://issues.apache.org/jira/browse/FLINK-9584) | Unclosed streams in Bucketing-/RollingSink |  Major | filesystem-connector | Chesnay Schepler | Sihua Zhou |
| [FLINK-9754](https://issues.apache.org/jira/browse/FLINK-9754) | Release scripts refers to non-existing profile |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9439](https://issues.apache.org/jira/browse/FLINK-9439) | DispatcherTest#testJobRecovery dead locks |  Critical | Distributed Coordination | Piotr Nowojski | Till Rohrmann |
| [FLINK-9766](https://issues.apache.org/jira/browse/FLINK-9766) | Incomplete/incorrect cleanup in RemoteInputChannelTest |  Major | Network, Tests | Nico Kruber | Nico Kruber |
| [FLINK-9784](https://issues.apache.org/jira/browse/FLINK-9784) | Inconsistent use of 'static' in AsyncIOExample.java |  Minor | Examples | Alexei Nekrassov | Alexei Nekrassov |


