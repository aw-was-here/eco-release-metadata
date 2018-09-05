
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
# Apache Spark Changelog

## Release 3.0.0 - Unreleased (as of 2018-09-05)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24441](https://issues.apache.org/jira/browse/SPARK-24441) | Expose total estimated size of states in HDFSBackedStateStoreProvider |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24717](https://issues.apache.org/jira/browse/SPARK-24717) | Split out min retain version of state for memory in HDFSBackedStateStoreProvider |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-24699](https://issues.apache.org/jira/browse/SPARK-24699) | Watermark / Append mode should work with Trigger.Once |  Major | Structured Streaming | Chris Horn | Tathagata Das |
| [SPARK-25204](https://issues.apache.org/jira/browse/SPARK-25204) | rate source test is flaky |  Minor | Structured Streaming | Jose Torres | Jose Torres |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25184](https://issues.apache.org/jira/browse/SPARK-25184) | Flaky test: FlatMapGroupsWithState "streaming with processing time timeout" |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22187](https://issues.apache.org/jira/browse/SPARK-22187) | Update unsaferow format for saved state such that we can set timeouts when state is null |  Major | Structured Streaming | Tathagata Das | Tathagata Das |


