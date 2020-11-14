
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

## Release 1.6.4 - 2020-09-14



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-609](https://issues.apache.org/jira/browse/ORC-609) | Upgrade aircompressor to 0.16 |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-607](https://issues.apache.org/jira/browse/ORC-607) | Sync orc-benchmarks module to the others |  Major | Java | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-638](https://issues.apache.org/jira/browse/ORC-638) | ORCMapredRecordWriter enlarge columnVector with factors when child array size is not large enough |  Major | . | Lei Sun | Lei Sun |
| [ORC-652](https://issues.apache.org/jira/browse/ORC-652) | Upgrade ZSTD to 1.4.5 |  Major | C++ | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-655](https://issues.apache.org/jira/browse/ORC-655) | Update bench to use Spark 2.4.6 |  Major | tools | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-656](https://issues.apache.org/jira/browse/ORC-656) | Use gharchive.org instead of githubarchive.org |  Major | tools | William Hyun | William Hyun |
| [ORC-657](https://issues.apache.org/jira/browse/ORC-657) | Remove com.netflix.iceberg dependency in java/bench module |  Major | build | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-639](https://issues.apache.org/jira/browse/ORC-639) | Improve zstd compression performance |  Minor | C++, compression | Ion Gaztañaga | Ion Gaztañaga |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-629](https://issues.apache.org/jira/browse/ORC-629) | PPD: Floating point NaN is not transitive across comparisons |  Major | Java, Reader | Gopal Vijayaraghavan | Panagiotis Garefalakis |
| [ORC-641](https://issues.apache.org/jira/browse/ORC-641) | orc-core includes packages from io.airlift.slice |  Major | . | David Phillips | David Phillips |
| [ORC-643](https://issues.apache.org/jira/browse/ORC-643) | Change logging of codec creation to debug |  Major | . | Owen O'Malley |  |
| [ORC-650](https://issues.apache.org/jira/browse/ORC-650) | Fix argument to find\_package() for ZSTD |  Major | C++ | Dongjoon Hyun | Nehal Jagdish Wani |
| [ORC-654](https://issues.apache.org/jira/browse/ORC-654) | Fix build with clang-10 and ubuntu-20 |  Major | C++ | Dongjoon Hyun | Nikita Mikhaylov |
| [ORC-659](https://issues.apache.org/jira/browse/ORC-659) | Initialize "next\_in" before calling DeflateInit2 |  Major | C++ | Dongjoon Hyun | Ion Gaztañaga |
| [ORC-626](https://issues.apache.org/jira/browse/ORC-626) | Reading Struct Column Having Multiple Fields With Same Name Causes java.io.EOFException |  Major | . | Syed Shameerur Rahman | Syed Shameerur Rahman |
| [ORC-644](https://issues.apache.org/jira/browse/ORC-644) | nested struct evolution does not respect to orc.force.positional.evolution |  Major | Java | Arvin Zheng | Arvin Zheng |
| [ORC-661](https://issues.apache.org/jira/browse/ORC-661) | DateColumnStatistics uses Date, which is not timezone agnostic. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-611](https://issues.apache.org/jira/browse/ORC-611) | Incorrect min-max stats for sub-millisecond timestamps |  Major | C++, Java | Csaba Ringhofer | Panagiotis Garefalakis |
| [ORC-623](https://issues.apache.org/jira/browse/ORC-623) | Potentially incorrect Sarg evaluation for not(in) and not(isNull) |  Major | . | Shardul Mahadik | Owen O'Malley |
| [ORC-658](https://issues.apache.org/jira/browse/ORC-658) | Fix NoClassDefFoundError during benchmark data generation |  Major | tools | Dongjoon Hyun | Dongjoon Hyun |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-647](https://issues.apache.org/jira/browse/ORC-647) | Add macOS 10.15 test to Travis CI |  Major | build | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-648](https://issues.apache.org/jira/browse/ORC-648) | Add GitHub Action for Java8/Java11 test coverage |  Major | build | Dongjoon Hyun | Dongjoon Hyun |


