
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

## Release 0.9.0 - Unreleased (as of 2016-05-12)

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
| [TEZ-3242](https://issues.apache.org/jira/browse/TEZ-3242) | Reduce bytearray copy with TezEvent Serialization and deserialization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3219](https://issues.apache.org/jira/browse/TEZ-3219) | Allow service plugins to define log locations link for remotely run task attempts |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3227](https://issues.apache.org/jira/browse/TEZ-3227) | Tez UI: Replace UI1 with UI2 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3232](https://issues.apache.org/jira/browse/TEZ-3232) | Disable randomFailingInputs in testFaulttolerance to unblock other tests |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3207](https://issues.apache.org/jira/browse/TEZ-3207) | Add support for fetching multiple partitions from the same source task to UnorderedKVInput |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3203](https://issues.apache.org/jira/browse/TEZ-3203) | DAG hangs when one of the upstream vertices has zero tasks |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3233](https://issues.apache.org/jira/browse/TEZ-3233) | Tez UI: Have LLAP information reflect in Tez UI |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3193](https://issues.apache.org/jira/browse/TEZ-3193) | Deadlock in AM during task commit request |  Blocker | . | Jason Lowe | Jason Lowe |
| [TEZ-3245](https://issues.apache.org/jira/browse/TEZ-3245) | Data race between addKnowInput and clearAndGetOnepartition of InputHost |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3250](https://issues.apache.org/jira/browse/TEZ-3250) | TezTaskRunner2 should accept ExecutorService |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3251](https://issues.apache.org/jira/browse/TEZ-3251) | Allow ability to add custom counters to TaskRunner2Callable |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3256](https://issues.apache.org/jira/browse/TEZ-3256) | [Backport HADOOP-11032] Remove Guava Stopwatch dependency |  Major | . | Jonathan Eagles | Jonathan Eagles |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3086](https://issues.apache.org/jira/browse/TEZ-3086) | Tez UI: Backward compatibility changes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3228](https://issues.apache.org/jira/browse/TEZ-3228) | Update version in master to 0.9.0 |  Major | . | Siddharth Seth | Siddharth Seth |


