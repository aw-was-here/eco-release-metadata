
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

## Release 1.5.0 - Unreleased (as of 2017-08-28)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-199](https://issues.apache.org/jira/browse/ORC-199) | Include a CSV to ORC converter |  Major | . | Carter Shanklin | Owen O'Malley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-173](https://issues.apache.org/jira/browse/ORC-173) | [C++] Expose Indexes as API |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-193](https://issues.apache.org/jira/browse/ORC-193) | Refactor WriterImp to clean up TreeWriter API |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-194](https://issues.apache.org/jira/browse/ORC-194) | Split TreeWriters out of WriterImpl |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-211](https://issues.apache.org/jira/browse/ORC-211) | Remove some unused imports. |  Major | . | Guodong Jin | Guodong Jin |
| [ORC-214](https://issues.apache.org/jira/browse/ORC-214) | Upgrade Aircompressor to 0.8 |  Trivial | compression | Gopal V | Gopal V |
| [ORC-212](https://issues.apache.org/jira/browse/ORC-212) | JSON convert should properly convert Timestamp string to java.sql.Timestamp |  Major | . | Seshu Pasam | Seshu Pasam |
| [ORC-221](https://issues.apache.org/jira/browse/ORC-221) | RecordReaderImpl::evaluatePredicateMinMax should check whether predicate.getLiteralList() is empty |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [ORC-215](https://issues.apache.org/jira/browse/ORC-215) | [C++] Remove gmock and protobuf libraries from source and use ExternalProject instead |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-219](https://issues.apache.org/jira/browse/ORC-219) | Boolean and timestamp converter for CSV |  Major | Java, tools | Seshu Pasam | Seshu Pasam |
| [ORC-230](https://issues.apache.org/jira/browse/ORC-230) | Add OSX os to travis testing |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-223](https://issues.apache.org/jira/browse/ORC-223) | FileDump utility should print user metadata |  Major | . | Eugene Koifman | Eugene Koifman |
| [ORC-228](https://issues.apache.org/jira/browse/ORC-228) | Make MemoryManagerImpl.ROWS\_BETWEEN\_CHECKS configurable |  Major | . | Eugene Koifman | Eugene Koifman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-188](https://issues.apache.org/jira/browse/ORC-188) | Fix RAT problems |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-185](https://issues.apache.org/jira/browse/ORC-185) | [C++] Simplify Statististics Implementation |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-198](https://issues.apache.org/jira/browse/ORC-198) | Decimal types created with convert command generates IllegalArgumentException for valid documents |  Major | Java | Shawn Hooton | Shawn Hooton |
| [ORC-202](https://issues.apache.org/jira/browse/ORC-202) | Add enum that encodes which writer wrote a file |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-204](https://issues.apache.org/jira/browse/ORC-204) | Upgrade c++ libraries for compression |  Major | . | Owen O'Malley | Deepak Majeti |
| [ORC-160](https://issues.apache.org/jira/browse/ORC-160) | expose index read planning in RecordReaderUtils |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [ORC-217](https://issues.apache.org/jira/browse/ORC-217) | Duplicate rat plugins in pom.xml |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-225](https://issues.apache.org/jira/browse/ORC-225) | CsvReader.java fails if long value exceeds 32 bits |  Trivial | tools | Pawel Dabrowski | Pawel Dabrowski |
| [ORC-227](https://issues.apache.org/jira/browse/ORC-227) | [C++] Fix docker failure due to ExternalProject\_Add |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-229](https://issues.apache.org/jira/browse/ORC-229) | Add a new OrcFile.Version for marking the development pre-2.0 format. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-195](https://issues.apache.org/jira/browse/ORC-195) | FileFormatException should include file name in the message |  Major | . | Eugene Koifman | Eugene Koifman |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-183](https://issues.apache.org/jira/browse/ORC-183) | [C++] Add a method in Type to build type from string |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-176](https://issues.apache.org/jira/browse/ORC-176) | Refactor common classes for writer and reader |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-177](https://issues.apache.org/jira/browse/ORC-177) | OutputStream interface and implementation for C++ writer |  Major | C++ | Gang Wu | Xiening Dai |
| [ORC-184](https://issues.apache.org/jira/browse/ORC-184) | [C++] Refactor ColumnStatistics classes for writer |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-191](https://issues.apache.org/jira/browse/ORC-191) | RLE v1 encoder |  Major | C++ | Xiening Dai | Xiening Dai |
| [ORC-192](https://issues.apache.org/jira/browse/ORC-192) | Zlib compression stream |  Major | C++ | Xiening Dai | Xiening Dai |


