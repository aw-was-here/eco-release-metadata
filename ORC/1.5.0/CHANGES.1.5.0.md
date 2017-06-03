
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
# Apache Orc Changelog

## Release 1.5.0 - Unreleased (as of 2017-06-03)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-173](https://issues.apache.org/jira/browse/ORC-173) | [C++] Expose Indexes as API |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-193](https://issues.apache.org/jira/browse/ORC-193) | Refactor WriterImp to clean up TreeWriter API |  Major | . | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-188](https://issues.apache.org/jira/browse/ORC-188) | Fix RAT problems |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-185](https://issues.apache.org/jira/browse/ORC-185) | [C++] Simplify Statististics Implementation |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-198](https://issues.apache.org/jira/browse/ORC-198) | Decimal types created with convert command generates IllegalArgumentException for valid documents |  Major | Java | Shawn Hooton | Shawn Hooton |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-183](https://issues.apache.org/jira/browse/ORC-183) | [C++] Add a method in Type to build type from string |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-176](https://issues.apache.org/jira/browse/ORC-176) | Refactor common classes for writer and reader |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-177](https://issues.apache.org/jira/browse/ORC-177) | OutputStream interface and implementation for C++ writer |  Major | C++ | Gang Wu | Xiening Dai |
| [ORC-184](https://issues.apache.org/jira/browse/ORC-184) | [C++] Refactor ColumnStatistics classes for writer |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-191](https://issues.apache.org/jira/browse/ORC-191) | RLE v1 encoder |  Major | C++ | Xiening Dai | Xiening Dai |
| [ORC-192](https://issues.apache.org/jira/browse/ORC-192) | Zlib compression stream |  Major | C++ | Xiening Dai | Xiening Dai |


