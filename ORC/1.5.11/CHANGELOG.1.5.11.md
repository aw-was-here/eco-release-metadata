
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

## Release 1.5.11 - 2020-09-14



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-638](https://issues.apache.org/jira/browse/ORC-638) | ORCMapredRecordWriter enlarge columnVector with factors when child array size is not large enough |  Major | . | Lei Sun | Lei Sun |
| [ORC-656](https://issues.apache.org/jira/browse/ORC-656) | Use gharchive.org instead of githubarchive.org |  Major | tools | William Hyun | William Hyun |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-643](https://issues.apache.org/jira/browse/ORC-643) | Change logging of codec creation to debug |  Major | . | Owen O'Malley |  |
| [ORC-659](https://issues.apache.org/jira/browse/ORC-659) | Initialize "next\_in" before calling DeflateInit2 |  Major | C++ | Dongjoon Hyun | Ion Gaztañaga |
| [ORC-626](https://issues.apache.org/jira/browse/ORC-626) | Reading Struct Column Having Multiple Fields With Same Name Causes java.io.EOFException |  Major | . | Syed Shameerur Rahman | Syed Shameerur Rahman |
| [ORC-644](https://issues.apache.org/jira/browse/ORC-644) | nested struct evolution does not respect to orc.force.positional.evolution |  Major | Java | Arvin Zheng | Arvin Zheng |
| [ORC-623](https://issues.apache.org/jira/browse/ORC-623) | Potentially incorrect Sarg evaluation for not(in) and not(isNull) |  Major | . | Shardul Mahadik | Owen O'Malley |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-647](https://issues.apache.org/jira/browse/ORC-647) | Add macOS 10.15 test to Travis CI |  Major | build | Dongjoon Hyun | Dongjoon Hyun |


