
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

## Release 1.0.3 - 2016-05-11



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3678](https://issues.apache.org/jira/browse/FLINK-3678) | Make Flink logs directory configurable |  Minor | Startup Shell Scripts | Stefano Baghino | Stefano Baghino |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3790](https://issues.apache.org/jira/browse/FLINK-3790) | Rolling File sink does not pick up hadoop configuration |  Critical | Streaming Connectors | Gyula Fora | Gyula Fora |
| [FLINK-3803](https://issues.apache.org/jira/browse/FLINK-3803) | Checkpoint Stats Tracker Reads from Wrong Configuration |  Major | Streaming | Aljoscha Krettek | Ufuk Celebi |
| [FLINK-3835](https://issues.apache.org/jira/browse/FLINK-3835) | JSON execution plan not helpful to debug plans with KeySelectors |  Major | Optimizer | Fabian Hueske | Fabian Hueske |
| [FLINK-3840](https://issues.apache.org/jira/browse/FLINK-3840) | RocksDB local parent dir is polluted with empty folders with random names |  Major | State Backends, Checkpointing | Gyula Fora | Aljoscha Krettek |
| [FLINK-3860](https://issues.apache.org/jira/browse/FLINK-3860) | WikipediaEditsSourceTest.testWikipediaEditsSource times out |  Major | Tests | Vasia Kalavri | Aljoscha Krettek |


