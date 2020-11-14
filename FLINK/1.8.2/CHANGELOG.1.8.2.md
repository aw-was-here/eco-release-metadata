
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

## Release 1.8.2 - 2019-09-12



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12578](https://issues.apache.org/jira/browse/FLINK-12578) | Use secure URLs for Maven repositories |  Blocker | Build System | Jungtaek Lim | Jungtaek Lim |
| [FLINK-12741](https://issues.apache.org/jira/browse/FLINK-12741) | Update docs about Kafka producer fault tolerance guarantees |  Trivial | Documentation | Paul Lin | Paul Lin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12889](https://issues.apache.org/jira/browse/FLINK-12889) | Job keeps in FAILING state |  Critical | Runtime / Task | Fan Xinpu | Till Rohrmann |
| [FLINK-12319](https://issues.apache.org/jira/browse/FLINK-12319) | StackOverFlowError in cep.nfa.sharedbuffer.SharedBuffer |  Major | Library / CEP | Marco Pfatschbacher | Liya Fan |
| [FLINK-12736](https://issues.apache.org/jira/browse/FLINK-12736) | ResourceManager may release TM with allocated slots |  Critical | Runtime / Coordination | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-13369](https://issues.apache.org/jira/browse/FLINK-13369) | Recursive closure cleaner ends up with stackOverflow in case of circular dependency |  Major | . | David Morávek | David Morávek |
| [FLINK-13394](https://issues.apache.org/jira/browse/FLINK-13394) | Use fallback unsafe secure MapR in nightly.sh |  Major | Tests, Travis | Zhenghua Gao | Chesnay Schepler |
| [FLINK-13367](https://issues.apache.org/jira/browse/FLINK-13367) | Make ClosureCleaner detect writeReplace serialization override |  Major | . | David Morávek | David Morávek |
| [FLINK-9526](https://issues.apache.org/jira/browse/FLINK-9526) | BucketingSink end-to-end test failed on Travis |  Critical | Connectors / Common, Tests | Chesnay Schepler | Biao Liu |
| [FLINK-13499](https://issues.apache.org/jira/browse/FLINK-13499) | Remove dependency on MapR artifact repository |  Blocker | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-13508](https://issues.apache.org/jira/browse/FLINK-13508) | CommonTestUtils#waitUntilCondition() may attempt to sleep with negative time |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-10368](https://issues.apache.org/jira/browse/FLINK-10368) | 'Kerberized YARN on Docker test' unstable |  Blocker | Deployment / YARN, Tests | Till Rohrmann | Aljoscha Krettek |
| [FLINK-13159](https://issues.apache.org/jira/browse/FLINK-13159) | java.lang.ClassNotFoundException when restore job |  Blocker | API / Type Serialization System | kring | Yun Tang |
| [FLINK-13484](https://issues.apache.org/jira/browse/FLINK-13484) | ConnectedComponents end-to-end test instable with NoResourceAvailableException |  Critical | Test Infrastructure | Tzu-Li (Gordon) Tai | Gary Yao |
| [FLINK-13806](https://issues.apache.org/jira/browse/FLINK-13806) | Metric Fetcher floods the JM log with errors when TM is lost |  Critical | Runtime / Metrics | Stephan Ewen | Chesnay Schepler |
| [FLINK-13761](https://issues.apache.org/jira/browse/FLINK-13761) | \`SplitStream\` should be deprecated because \`SplitJavaStream\` is deprecated |  Major | API / Scala | zhihao zhang | zhihao zhang |
| [FLINK-13807](https://issues.apache.org/jira/browse/FLINK-13807) | Flink-avro unit tests fails if the character encoding in the environment is not default to UTF-8 |  Minor | . | Ethan Li | Zili Chen |
| [FLINK-13789](https://issues.apache.org/jira/browse/FLINK-13789) | Transactional Id Generation fails due to user code impacting formatting string |  Major | . | Hao Dang | Hao Dang |
| [FLINK-13897](https://issues.apache.org/jira/browse/FLINK-13897) | OSS FS NOTICE file is placed in wrong directory |  Blocker | Build System, FileSystems | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13059](https://issues.apache.org/jira/browse/FLINK-13059) | Cassandra Connector leaks Semaphore on Exception; hangs on close |  Major | Connectors / Cassandra | Mads Chr. Olesen | Mads Chr. Olesen |
| [FLINK-13586](https://issues.apache.org/jira/browse/FLINK-13586) | Method ClosureCleaner.clean broke backward compatibility between 1.8.0 and 1.8.1 |  Major | API / DataStream | Gaël Renoux | Aljoscha Krettek |
| [FLINK-13940](https://issues.apache.org/jira/browse/FLINK-13940) | S3RecoverableWriter causes job to get stuck in recovery |  Major | Connectors / FileSystem | Jimmy Weibel Rasmussen | Kostas Kloudas |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12749](https://issues.apache.org/jira/browse/FLINK-12749) | Getting Started - Docker Playgrounds - Flink Cluster Playground |  Major | Documentation | Konstantin Knauf | Konstantin Knauf |
| [FLINK-13941](https://issues.apache.org/jira/browse/FLINK-13941) | Prevent data-loss by not cleaning up small part files from S3. |  Blocker | Connectors / FileSystem | Kostas Kloudas | Kostas Kloudas |


