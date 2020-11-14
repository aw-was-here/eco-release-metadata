
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

## Release 1.6.1 - 2019-10-26



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-480](https://issues.apache.org/jira/browse/ORC-480) | [C++] Deactivate WARN\_FLAGS in release build |  Major | C++ | Uwe Korn | Uwe Korn |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-551](https://issues.apache.org/jira/browse/ORC-551) | Fix broken javadoc |  Minor | Javadoc | Owen O'Malley | Owen O'Malley |
| [ORC-550](https://issues.apache.org/jira/browse/ORC-550) | Use default system time zone if it is not present in the file footer |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [ORC-555](https://issues.apache.org/jira/browse/ORC-555) | IllegalArgumentException when reading files with compressed footers bigger than 16k |  Major | . | Shardul Mahadik | Owen O'Malley |
| [ORC-504](https://issues.apache.org/jira/browse/ORC-504) | Create a reproducible java build |  Major | . | Owen O'Malley | Yukihiro Okada |
| [ORC-424](https://issues.apache.org/jira/browse/ORC-424) | Add findbugs checks for test classes |  Major | . | Owen O'Malley | Yukihiro Okada |
| [ORC-554](https://issues.apache.org/jira/browse/ORC-554) | Float to timestamp schema evolution handles time/nanoseconds incorrectly |  Major | . | László Bodor | László Bodor |
| [ORC-526](https://issues.apache.org/jira/browse/ORC-526) | orc-tools convert does not respect second fractions |  Trivial | tools | Fabian Groffen | Yukihiro Okada |
| [ORC-361](https://issues.apache.org/jira/browse/ORC-361) |  org.apache.orc.impl.MemoryManagerImpl    : Owner thread expected Thread[main,5,main], got Thread[pool-15-thread-1,5,main] |  Major | Java | wxmimperio | Owen O'Malley |
| [ORC-528](https://issues.apache.org/jira/browse/ORC-528) | orc-tools timestamps off by one? |  Minor | tools | Fabian Groffen | Yukihiro Okada |
| [ORC-414](https://issues.apache.org/jira/browse/ORC-414) | [C++] ORC files with malformed protobuf objects can crash a release build |  Major | C++ | Quanlong Huang | Quanlong Huang |
| [ORC-557](https://issues.apache.org/jira/browse/ORC-557) | Large ORC file parsing failed |  Major | Reader, tools | 周娜 | 周娜 |
| [ORC-552](https://issues.apache.org/jira/browse/ORC-552) | Fix compilation of C++ Reader.cc on centos 6. |  Major | . | Owen O'Malley | Owen O'Malley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-553](https://issues.apache.org/jira/browse/ORC-553) | Add test case to check that SchemaEvolution checkAcidSchema works well |  Minor | . | Aron Hamvas | Aron Hamvas |
| [ORC-560](https://issues.apache.org/jira/browse/ORC-560) | Improve docker tests and include centos 8 and debian 10 |  Major | . | Owen O'Malley | Owen O'Malley |


