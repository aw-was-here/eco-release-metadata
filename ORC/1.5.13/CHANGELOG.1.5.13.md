
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

## Release 1.5.13 - Unreleased (as of 2020-11-14)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-598](https://issues.apache.org/jira/browse/ORC-598) | Unable to read ORC file with struct and array.length \> 1024 |  Major | Java | Krisztian Kasa | Krisztian Kasa |
| [ORC-677](https://issues.apache.org/jira/browse/ORC-677) | Fix SargApplier compilation error |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-672](https://issues.apache.org/jira/browse/ORC-672) | Fix made in ORC-598 need to be extended to other readers like DecimalFromFloatTreeReader |  Major | Java | Taraka Rama Rao Lethavadla | Panagiotis Garefalakis |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-679](https://issues.apache.org/jira/browse/ORC-679) | Update tzdata to recover Win32 build in AppVeyor |  Major | C++ | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-678](https://issues.apache.org/jira/browse/ORC-678) | Upgrade JUnit to 4.13.1 |  Minor | Java | Dongjoon Hyun | Dongjoon Hyun |


