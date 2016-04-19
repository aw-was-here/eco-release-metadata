
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

## Release 0.10.2 - Unreleased (as of 2016-04-19)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2962](https://issues.apache.org/jira/browse/FLINK-2962) | Cluster startup script refers to unused variable |  Major | Start-Stop Scripts | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3147](https://issues.apache.org/jira/browse/FLINK-3147) | HadoopOutputFormatBase should expose fields as protected |  Minor | . | Nick Dimiduk | Nick Dimiduk |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3082](https://issues.apache.org/jira/browse/FLINK-3082) | Confusing error about ManualTimestampSourceFunction |  Major | . | Niels Basjes | Niels Basjes |
| [FLINK-3081](https://issues.apache.org/jira/browse/FLINK-3081) | Kafka Periodic Offset Committer does not properly terminate on canceling |  Blocker | Kafka Connector | Stephan Ewen | Robert Metzger |
| [FLINK-3080](https://issues.apache.org/jira/browse/FLINK-3080) | Cannot union a data stream with a product of itself |  Major | Streaming | Vasia Kalavri | Aljoscha Krettek |
| [FLINK-3125](https://issues.apache.org/jira/browse/FLINK-3125) | Web dashboard does not start when log files are not found |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-3108](https://issues.apache.org/jira/browse/FLINK-3108) | JoinOperator's with() calls the wrong TypeExtractor method |  Major | . | Vasia Kalavri | Timo Walther |
| [FLINK-3136](https://issues.apache.org/jira/browse/FLINK-3136) | Scala Closure Cleaner uses wrong ASM import |  Critical | Scala API | Stephan Ewen | Aljoscha Krettek |
| [FLINK-3143](https://issues.apache.org/jira/browse/FLINK-3143) | Update Clojure Cleaner's ASM references to ASM5 |  Major | Local Runtime | Maximilian Michels | Maximilian Michels |
| [FLINK-3145](https://issues.apache.org/jira/browse/FLINK-3145) | Storm examples can't be run without flink-java as dependency |  Major | Build System, Java API, Storm Compatibility | Maximilian Michels | Maximilian Michels |
| [FLINK-3180](https://issues.apache.org/jira/browse/FLINK-3180) | MemoryLogger does not log direct memory |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3185](https://issues.apache.org/jira/browse/FLINK-3185) | Silent failure during job graph recovery |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3218](https://issues.apache.org/jira/browse/FLINK-3218) | Merging Hadoop configurations overrides user parameters |  Major | Java API | Greg Hogan | Greg Hogan |
| [FLINK-3189](https://issues.apache.org/jira/browse/FLINK-3189) | Error while parsing job arguments passed by CLI |  Minor | Command-line client | Filip Leczycki | Matthias J. Sax |
| [FLINK-3151](https://issues.apache.org/jira/browse/FLINK-3151) | YARN kills Flink TM containers due to memory overuse (outside heap/offheap) |  Blocker | TaskManager | Robert Metzger | Ufuk Celebi |
| [FLINK-3236](https://issues.apache.org/jira/browse/FLINK-3236) | Flink user code classloader should have Flink classloader as parent classloader |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-3067](https://issues.apache.org/jira/browse/FLINK-3067) | Kafka source fails during checkpoint notifications with NPE |  Major | Kafka Connector | Gyula Fora | Robert Metzger |
| [FLINK-3242](https://issues.apache.org/jira/browse/FLINK-3242) | User-specified StateBackend is not Respected if Checkpointing is Disabled |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3224](https://issues.apache.org/jira/browse/FLINK-3224) | The Streaming API does not call setInputType if a format implements InputTypeConfigurable |  Major | DataStream API | Nick Dimiduk | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


