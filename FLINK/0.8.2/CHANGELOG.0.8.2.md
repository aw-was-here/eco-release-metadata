
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

## Release 0.8.2 - Unreleased (as of 2015-11-08)

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
| [FLINK-1567](https://issues.apache.org/jira/browse/FLINK-1567) | Add option to switch between Avro and Kryo serialization for GenericTypes |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1422](https://issues.apache.org/jira/browse/FLINK-1422) | Missing usage example for "withParameters" |  Trivial | Documentation | Alexander Alexandrov | Chesnay Schepler |
| [FLINK-841](https://issues.apache.org/jira/browse/FLINK-841) | Updating a non-existing key in solution set yields a NPE |  Major | . | GitHub Import | Stephan Ewen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1978](https://issues.apache.org/jira/browse/FLINK-1978) | POJO serialization NPE |  Major | Core | Flavio Pompermaier | Fabian Hueske |
| [FLINK-1832](https://issues.apache.org/jira/browse/FLINK-1832) | start-local.bat/start-local.sh does not work if there is a white space in the file path (windows) |  Minor | Local Runtime | Nikolaas Steenbergen | Fabian Hueske |
| [FLINK-1828](https://issues.apache.org/jira/browse/FLINK-1828) | Impossible to output data to an HBase table |  Major | Hadoop Compatibility | Flavio Pompermaier |  |
| [FLINK-1817](https://issues.apache.org/jira/browse/FLINK-1817) | ClassLoaderObjectInputStream fails with ClassNotFoundException for primitive classes |  Major | Core | Fabian Hueske | Fabian Hueske |
| [FLINK-1683](https://issues.apache.org/jira/browse/FLINK-1683) | Scheduling preferences for non-unary tasks are not correctly computed |  Major | JobManager | Fabian Hueske | Fabian Hueske |
| [FLINK-1640](https://issues.apache.org/jira/browse/FLINK-1640) | FileOutputFormat writes to wrong path if path ends with '/' |  Major | Java API, Scala API | Fabian Hueske | Fabian Hueske |
| [FLINK-1628](https://issues.apache.org/jira/browse/FLINK-1628) | Strange behavior of "where" function during a join |  Critical | Optimizer | Daniel Bali | Fabian Hueske |
| [FLINK-1596](https://issues.apache.org/jira/browse/FLINK-1596) | FileIOChannel introduces space in temp file name |  Minor | Local Runtime | Johannes | Johannes |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


