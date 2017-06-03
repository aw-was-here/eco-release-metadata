
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

## Release 1.3.1 - Unreleased (as of 2017-06-03)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6492](https://issues.apache.org/jira/browse/FLINK-6492) | Unclosed DataOutputViewStream in GenericArraySerializerConfigSnapshot#write() |  Minor | State Backends, Checkpointing | Ted Yu |  |
| [FLINK-6659](https://issues.apache.org/jira/browse/FLINK-6659) | RocksDBMergeIteratorTest, SavepointITCase leave temporary directories behind |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-6320](https://issues.apache.org/jira/browse/FLINK-6320) | Flakey JobManagerHAJobGraphRecoveryITCase |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-6669](https://issues.apache.org/jira/browse/FLINK-6669) | [Build] Scala style check errror on Windows |  Minor | . | Jinjiang Ling | Jinjiang Ling |
| [FLINK-6775](https://issues.apache.org/jira/browse/FLINK-6775) | StateDescriptor cannot be shared by multiple subtasks |  Blocker | DataStream API | Till Rohrmann | Till Rohrmann |
| [FLINK-6809](https://issues.apache.org/jira/browse/FLINK-6809) | side outputs documentation: wrong variable name in java example code |  Trivial | Documentation | Petr Novotnik | Petr Novotnik |
| [FLINK-6797](https://issues.apache.org/jira/browse/FLINK-6797) | building docs fails with bundler 1.15 |  Major | Documentation | David Anderson | David Anderson |


