
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
# Apache Tez Changelog

## Release 0.9.1 - Unreleased (as of 2017-08-26)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3816](https://issues.apache.org/jira/browse/TEZ-3816) | Ability to automatically speculate single-task vertices |  Major | . | Muhammad Samir Khan | Muhammad Samir Khan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3801](https://issues.apache.org/jira/browse/TEZ-3801) | Update version in master to 0.9.1 |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3797](https://issues.apache.org/jira/browse/TEZ-3797) | Add tez debug tool for comparing counters of 2 DAGs |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3752](https://issues.apache.org/jira/browse/TEZ-3752) | Reduce Object size of InMemoryMapOutput for large jobs |  Major | . | Jonathan Eagles | Muhammad Samir Khan |
| [TEZ-3212](https://issues.apache.org/jira/browse/TEZ-3212) | IFile throws NegativeArraySizeException for value sizes between 1GB and 2GB |  Major | . | Jonathan Eagles | Muhammad Samir Khan |
| [TEZ-3804](https://issues.apache.org/jira/browse/TEZ-3804) | FetcherOrderedGrouped#setupLocalDiskFetch should ignore empty partition records |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3803](https://issues.apache.org/jira/browse/TEZ-3803) | Tasks can get killed due to insufficient progress while waiting for shuffle inputs to complete |  Critical | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3813](https://issues.apache.org/jira/browse/TEZ-3813) | Reduce Object size of MemoryFetchedInput for large jobs |  Major | . | Muhammad Samir Khan | Muhammad Samir Khan |
| [TEZ-3431](https://issues.apache.org/jira/browse/TEZ-3431) | Add unit tests for container release |  Major | . | Sushmitha Sreenivasan | Taklon Stephen Wu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3807](https://issues.apache.org/jira/browse/TEZ-3807) | InMemoryWriter is not tested with RLE enabled |  Major | . | Muhammad Samir Khan | Muhammad Samir Khan |


