
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

## Release 1.3.0 - Unreleased (as of 2017-01-19)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-97](https://issues.apache.org/jira/browse/ORC-97) | Support column name selection in ReaderOptions |  Major | C++ | Chunyang Wen | Chunyang Wen |
| [ORC-92](https://issues.apache.org/jira/browse/ORC-92) | Support type id (column id) selection in ReaderOptions |  Minor | C++ | Chunyang Wen | Chunyang Wen |
| [ORC-128](https://issues.apache.org/jira/browse/ORC-128) | Add capability to get column statistics during writing |  Major | Java | Owen O'Malley | Owen O'Malley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-101](https://issues.apache.org/jira/browse/ORC-101) | Correct the use of the default charset in the bloomfilter |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-111](https://issues.apache.org/jira/browse/ORC-111) | Make Java tool support DFS |  Major | Java | Junegunn Choi | Junegunn Choi |
| [ORC-114](https://issues.apache.org/jira/browse/ORC-114) | Typo: presesrveData → preserveData |  Trivial | Java | Seth Fitzsimmons | Seth Fitzsimmons |
| [ORC-117](https://issues.apache.org/jira/browse/ORC-117) | ConvertTreeReaderFactory gets a ArrayIndexOutOfBoundsException with added columns |  Major | evolution | Owen O'Malley | Owen O'Malley |
| [ORC-58](https://issues.apache.org/jira/browse/ORC-58) | Move code for reading rows from Reader to RowReader |  Major | C++ | Deepak Majeti | Deepak Majeti |
| [ORC-129](https://issues.apache.org/jira/browse/ORC-129) | Remove duplicate options from RowReaderOptions |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-124](https://issues.apache.org/jira/browse/ORC-124) | Port HIVE-15335 FastDecimal to ORC |  Critical | Java | Matt McCline | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-103](https://issues.apache.org/jira/browse/ORC-103) | Make ORC Reader resilient to 0 length files |  Major | Reader | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-102](https://issues.apache.org/jira/browse/ORC-102) | RLE v1 decoder bug |  Major | RLE | Lei Chang | Owen O'Malley |
| [ORC-105](https://issues.apache.org/jira/browse/ORC-105) | Fix compilation warnings in libs for MacOS 10.12 (Sierra) |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-108](https://issues.apache.org/jira/browse/ORC-108) | Fix linux build issues |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-106](https://issues.apache.org/jira/browse/ORC-106) | Add ORC scanner for benchmarking |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-107](https://issues.apache.org/jira/browse/ORC-107) | Fix JavaDoc for compiling with OpenJdk 8. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-110](https://issues.apache.org/jira/browse/ORC-110) | [C++] getTimezoneByFilename is not thread-safe |  Major | C++ | Deepak Majeti | Deepak Majeti |
| [ORC-104](https://issues.apache.org/jira/browse/ORC-104) | Make TypeDescription toString and fromString handle utf-8 field names. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-115](https://issues.apache.org/jira/browse/ORC-115) | Unable to write string data into ORC file (or at least read it back) |  Major | Java | Scott Wells | Owen O'Malley |
| [ORC-118](https://issues.apache.org/jira/browse/ORC-118) | fix Java findColumn from getting null pointers when columns aren't mapped |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-109](https://issues.apache.org/jira/browse/ORC-109) | fix some minor issues with pom dependencies |  Major | . | Owen O'Malley | Tarun Kumar |
| [ORC-122](https://issues.apache.org/jira/browse/ORC-122) | [CPP] Timezone.cc leaks memory |  Major | C++ | Deepak Majeti | Deepak Majeti |
| [ORC-123](https://issues.apache.org/jira/browse/ORC-123) | ToolTest.cc leaks memory |  Major | C++ | Deepak Majeti | Deepak Majeti |
| [ORC-125](https://issues.apache.org/jira/browse/ORC-125) | Correct OrcFile.WriterVersion to correctly use FUTURE |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-127](https://issues.apache.org/jira/browse/ORC-127) | Fix Coverity bug report |  Major | C++ | Deepak Majeti | Deepak Majeti |
| [ORC-119](https://issues.apache.org/jira/browse/ORC-119) | Create an abstraction named PhysicalWriter that abstracts where the Writer puts the bytes |  Major | Java | Owen O'Malley | Owen O'Malley |
| [ORC-131](https://issues.apache.org/jira/browse/ORC-131) | getRawDataSize always returns 0 |  Major | . | Owen O'Malley | Owen O'Malley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-120](https://issues.apache.org/jira/browse/ORC-120) | Create a backwards compatibility mode of ignoring names for evolution |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-126](https://issues.apache.org/jira/browse/ORC-126) | Remove our fork of storage-api |  Major | Java | Owen O'Malley | Owen O'Malley |


