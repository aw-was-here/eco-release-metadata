
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

## Release 1.7.0 - Unreleased (as of 2018-07-29)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9935](https://issues.apache.org/jira/browse/FLINK-9935) | Batch Table API: grouping by window and attribute causes java.lang.ClassCastException: |  Critical | Table API & SQL | Roman Wozniak | Fabian Hueske |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9890](https://issues.apache.org/jira/browse/FLINK-9890) | Remove obsolete Class ResourceManagerConfiguration |  Major | Distributed Coordination | Gary Yao | Gary Yao |
| [FLINK-6222](https://issues.apache.org/jira/browse/FLINK-6222) | YARN: setting environment variables in an easier fashion |  Major | Startup Shell Scripts | Craig Foster | Dawid Wysakowicz |
| [FLINK-9236](https://issues.apache.org/jira/browse/FLINK-9236) | Use Apache Parent POM 20 |  Major | Build System | Ted Yu | jiayichao |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9185](https://issues.apache.org/jira/browse/FLINK-9185) | Potential null dereference in PrioritizedOperatorSubtaskState#resolvePrioritizedAlternatives |  Minor | . | Ted Yu | Stephen Jason |
| [FLINK-5750](https://issues.apache.org/jira/browse/FLINK-5750) | Incorrect translation of n-ary Union |  Critical | Table API & SQL | Anton Mushin | Alexander Koltsov |
| [FLINK-9914](https://issues.apache.org/jira/browse/FLINK-9914) | Flink docker information in official website is out of date and should be update |  Minor | . | vinoyang | vinoyang |
| [FLINK-9927](https://issues.apache.org/jira/browse/FLINK-9927) | Error in Python Stream API example on website |  Minor | Documentation | Joe Malt |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5860](https://issues.apache.org/jira/browse/FLINK-5860) | Replace all the file creating from java.io.tmpdir with TemporaryFolder |  Major | Tests | shijinkui | Mahesh Senniappan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9951](https://issues.apache.org/jira/browse/FLINK-9951) | Update scm developerConnection |  Major | Build System | Chesnay Schepler | Chesnay Schepler |


