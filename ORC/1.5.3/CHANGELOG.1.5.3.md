
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

## Release 1.5.3 - 2018-09-25



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-383](https://issues.apache.org/jira/browse/ORC-383) | Parallel builds fails with ConcurrentModificationException |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-397](https://issues.apache.org/jira/browse/ORC-397) | ORC should allow selectively disabling dictionary-encoding on specified columns |  Major | . | Mithun Radhakrishnan | Mithun Radhakrishnan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-389](https://issues.apache.org/jira/browse/ORC-389) | Add ability to not decode Acid metadata columns |  Major | ACID | Eugene Koifman | Eugene Koifman |
| [ORC-405](https://issues.apache.org/jira/browse/ORC-405) | Remove calcite as a dependency in the benchmarks |  Major | build | Owen O'Malley | Owen O'Malley |
| [ORC-385](https://issues.apache.org/jira/browse/ORC-385) | Change RecordReader from AutoCloseable to Closeable |  Major | . | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-382](https://issues.apache.org/jira/browse/ORC-382) | Apache rat exclusions + add rat check to travis |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-384](https://issues.apache.org/jira/browse/ORC-384) | C++ Reader leaks memory when reading a non-ORC file |  Minor | C++ | Martin Rupp | Martin Rupp |
| [ORC-401](https://issues.apache.org/jira/browse/ORC-401) | Typing error found in document and site |  Trivial | documentation, site | Chuanyin Xu | Chuanyin Xu |
| [ORC-375](https://issues.apache.org/jira/browse/ORC-375) | v1.5.1 install from source fails under GCC 7.3.0 |  Major | build, C++ | Serge Fein | James Clampffer |
| [ORC-403](https://issues.apache.org/jira/browse/ORC-403) | Should check offsets got from protobuf Objects |  Major | C++ | Quanlong Huang | Quanlong Huang |
| [ORC-406](https://issues.apache.org/jira/browse/ORC-406) | ORC: Char(n) and Varchar(n) writers truncate to n bytes & corrupts multi-byte data |  Major | . | Gopal Vijayaraghavan | Gopal Vijayaraghavan |
| [ORC-391](https://issues.apache.org/jira/browse/ORC-391) | [C++]  parseType does not accept underscore in the field name |  Minor | . | Zherui Cao | Zherui Cao |


