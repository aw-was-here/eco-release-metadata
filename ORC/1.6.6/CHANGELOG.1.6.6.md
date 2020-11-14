
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

## Release 1.6.6 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-683](https://issues.apache.org/jira/browse/ORC-683) | PPD: Make Floating point NaN check more strict |  Minor | . | Panagiotis Garefalakis | Panagiotis Garefalakis |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-598](https://issues.apache.org/jira/browse/ORC-598) | Unable to read ORC file with struct and array.length \> 1024 |  Major | Java | Krisztian Kasa | Krisztian Kasa |
| [ORC-669](https://issues.apache.org/jira/browse/ORC-669) | Reduce breaking changes in ReaderImpl.java |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-670](https://issues.apache.org/jira/browse/ORC-670) | RecordReaderImpl.findColumns should respect orc.schema.evolution.case.sensitive |  Critical | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-671](https://issues.apache.org/jira/browse/ORC-671) | Add OrcTail.getStripeStatistics back for backward compatiblility |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-673](https://issues.apache.org/jira/browse/ORC-673) | PPD: LTE Point equality comparison is wrong when RG MIN==MAX |  Major | . | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-676](https://issues.apache.org/jira/browse/ORC-676) | Add getRawDataSizeFromColIndices back |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-680](https://issues.apache.org/jira/browse/ORC-680) | Upgrade Travis CI linux os from Ubuntu 14.04 to Ubuntu 16.04 |  Major | C++, Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-677](https://issues.apache.org/jira/browse/ORC-677) | Fix SargApplier compilation error |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-672](https://issues.apache.org/jira/browse/ORC-672) | Fix made in ORC-598 need to be extended to other readers like DecimalFromFloatTreeReader |  Major | Java | Taraka Rama Rao Lethavadla | Panagiotis Garefalakis |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-679](https://issues.apache.org/jira/browse/ORC-679) | Update tzdata to recover Win32 build in AppVeyor |  Major | C++ | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-678](https://issues.apache.org/jira/browse/ORC-678) | Upgrade JUnit to 4.13.1 |  Minor | Java | Dongjoon Hyun | Dongjoon Hyun |


