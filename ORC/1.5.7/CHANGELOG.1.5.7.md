
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

## Release 1.5.7 - 2019-10-26



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-480](https://issues.apache.org/jira/browse/ORC-480) | [C++] Deactivate WARN\_FLAGS in release build |  Major | C++ | Uwe Korn | Uwe Korn |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-536](https://issues.apache.org/jira/browse/ORC-536) | "expectedEntries should be \> 0" error when bloom filters enabled but rowIndexStride set to 0 |  Major | Java | Jason Dere | Jason Dere |
| [ORC-542](https://issues.apache.org/jira/browse/ORC-542) | The pom files are pulling in old versions of Hadoop. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-550](https://issues.apache.org/jira/browse/ORC-550) | Use default system time zone if it is not present in the file footer |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [ORC-526](https://issues.apache.org/jira/browse/ORC-526) | orc-tools convert does not respect second fractions |  Trivial | tools | Fabian Groffen | Yukihiro Okada |
| [ORC-361](https://issues.apache.org/jira/browse/ORC-361) |  org.apache.orc.impl.MemoryManagerImpl    : Owner thread expected Thread[main,5,main], got Thread[pool-15-thread-1,5,main] |  Major | Java | wxmimperio | Owen O'Malley |
| [ORC-528](https://issues.apache.org/jira/browse/ORC-528) | orc-tools timestamps off by one? |  Minor | tools | Fabian Groffen | Yukihiro Okada |
| [ORC-414](https://issues.apache.org/jira/browse/ORC-414) | [C++] ORC files with malformed protobuf objects can crash a release build |  Major | C++ | Quanlong Huang | Quanlong Huang |


