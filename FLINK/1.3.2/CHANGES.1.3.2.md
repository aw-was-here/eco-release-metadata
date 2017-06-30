
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

## Release 1.3.2 - Unreleased (as of 2017-06-30)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6874](https://issues.apache.org/jira/browse/FLINK-6874) | Static and transient fields ignored for POJOs |  Trivial | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-6937](https://issues.apache.org/jira/browse/FLINK-6937) | Fix link markdown in Production Readiness Checklist doc |  Minor | Documentation | Juan Paulo Gutierrez |  |
| [FLINK-6682](https://issues.apache.org/jira/browse/FLINK-6682) | Improve error message in case parallelism exceeds maxParallelism |  Major | State Backends, Checkpointing | Chesnay Schepler | mingleizhang |
| [FLINK-7004](https://issues.apache.org/jira/browse/FLINK-7004) | Switch to Travis Trusty image |  Critical | Tests | Chesnay Schepler | Chesnay Schepler |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6945](https://issues.apache.org/jira/browse/FLINK-6945) | TaskCancelAsyncProducerConsumerITCase.testCancelAsyncProducerAndConsumer instable test case |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6918](https://issues.apache.org/jira/browse/FLINK-6918) | Failing tests: ChainLengthDecreaseTest and ChainLengthIncreaseTest |  Critical | Tests | Greg Hogan | Till Rohrmann |
| [FLINK-6806](https://issues.apache.org/jira/browse/FLINK-6806) | rocksdb is not listed as state backend in doc |  Minor | Documentation | Bowen Li | Bowen Li |
| [FLINK-6541](https://issues.apache.org/jira/browse/FLINK-6541) | Jar upload directory not created |  Minor | Webfrontend | Andrey | Chesnay Schepler |
| [FLINK-6774](https://issues.apache.org/jira/browse/FLINK-6774) | build-helper-maven-plugin version not set |  Minor | Build System | Nico Kruber | Nico Kruber |
| [FLINK-7005](https://issues.apache.org/jira/browse/FLINK-7005) | Optimization steps are missing for nested registered tables |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-7025](https://issues.apache.org/jira/browse/FLINK-7025) | Using NullByteKeySelector for Unbounded ProcTime NonPartitioned Over |  Major | Table API & SQL | sunjincheng | sunjincheng |


