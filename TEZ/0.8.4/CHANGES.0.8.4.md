
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

## Release 0.8.4 - Unreleased (as of 2016-05-12)

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
| [TEZ-3077](https://issues.apache.org/jira/browse/TEZ-3077) | TezClient.waitTillReady should support timeout |  Major | . | Sergey Shelukhin | Kuhu Shukla |
| [TEZ-3242](https://issues.apache.org/jira/browse/TEZ-3242) | Reduce bytearray copy with TezEvent Serialization and deserialization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3202](https://issues.apache.org/jira/browse/TEZ-3202) | Reduce the memory need for jobs with high number of segments |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3165](https://issues.apache.org/jira/browse/TEZ-3165) | Allow Inputs/Outputs to be initialized serially, control processor initialization relative to Inputs/Outputs |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3210](https://issues.apache.org/jira/browse/TEZ-3210) | Tez UI 2: license should account for numeral, more-js, loader.js , etc |  Major | . | Hitesh Shah | Sreenath Somarajapuram |
| [TEZ-3224](https://issues.apache.org/jira/browse/TEZ-3224) | User payload is not initialized before creating vertex manager plugin |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3219](https://issues.apache.org/jira/browse/TEZ-3219) | Allow service plugins to define log locations link for remotely run task attempts |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3203](https://issues.apache.org/jira/browse/TEZ-3203) | DAG hangs when one of the upstream vertices has zero tasks |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3193](https://issues.apache.org/jira/browse/TEZ-3193) | Deadlock in AM during task commit request |  Blocker | . | Jason Lowe | Jason Lowe |
| [TEZ-3250](https://issues.apache.org/jira/browse/TEZ-3250) | TezTaskRunner2 should accept ExecutorService |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3251](https://issues.apache.org/jira/browse/TEZ-3251) | Allow ability to add custom counters to TaskRunner2Callable |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3256](https://issues.apache.org/jira/browse/TEZ-3256) | [Backport HADOOP-11032] Remove Guava Stopwatch dependency |  Major | . | Jonathan Eagles | Jonathan Eagles |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3214](https://issues.apache.org/jira/browse/TEZ-3214) | Tez UI 2: Pagination in All DAGs |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3087](https://issues.apache.org/jira/browse/TEZ-3087) | Tez UI 2: Add log links in task & attempt details page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3146](https://issues.apache.org/jira/browse/TEZ-3146) | Tez UI 2: CSS & JS assets in the UI must be minified |  Blocker | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3226](https://issues.apache.org/jira/browse/TEZ-3226) | Tez UI 2: All DAGs UX improvements |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


