
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

## Release 1.6.0 - Unreleased (as of 2018-08-19)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-383](https://issues.apache.org/jira/browse/ORC-383) | Parallel builds fails with ConcurrentModificationException |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-364](https://issues.apache.org/jira/browse/ORC-364) | Minor fixups on javadoc. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-116](https://issues.apache.org/jira/browse/ORC-116) | Create submodule with example java code from documentation |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-334](https://issues.apache.org/jira/browse/ORC-334) | Add AppVeyor support for integration on windows |  Major | . | Deepak Majeti | rip.nsk |
| [ORC-366](https://issues.apache.org/jira/browse/ORC-366) | Improve TZDIR setup for WIN32 |  Major | . | rip.nsk | rip.nsk |
| [ORC-372](https://issues.apache.org/jira/browse/ORC-372) | Enable valgrind for C++ travis-ci tests |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-376](https://issues.apache.org/jira/browse/ORC-376) | Add Ubuntu18 docker file |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-386](https://issues.apache.org/jira/browse/ORC-386) | Add new spark file format benchmark |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-393](https://issues.apache.org/jira/browse/ORC-393) | Add ORC snapcraft definition |  Major | . | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-367](https://issues.apache.org/jira/browse/ORC-367) | Boolean columns are read incorrectly when using seek. |  Major | . | Jesus Camacho Rodriguez | Owen O'Malley |
| [ORC-373](https://issues.apache.org/jira/browse/ORC-373) | If "orc.dictionary.key.threshold" is set to 0, don't try dictionary encoding. |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-379](https://issues.apache.org/jira/browse/ORC-379) | ConversionTreeReaders should handle Decimal64 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-380](https://issues.apache.org/jira/browse/ORC-380) | Add isOnlyImplicitConversion boolean function to SchemaEvolution |  Critical | ORCv2 | Matt McCline | Matt McCline |
| [ORC-365](https://issues.apache.org/jira/browse/ORC-365) | Only print min and max for timestamp stats once |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [ORC-382](https://issues.apache.org/jira/browse/ORC-382) | Apache rat exclusions + add rat check to travis |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-371](https://issues.apache.org/jira/browse/ORC-371) | [C++] Disable Libhdfspp build when Cyrus SASL is not found |  Major | . | Deepak Majeti | Anatoli Shein |
| [ORC-384](https://issues.apache.org/jira/browse/ORC-384) | C++ Reader leaks memory when reading a non-ORC file |  Minor | C++ | Martin Rupp | Martin Rupp |
| [ORC-391](https://issues.apache.org/jira/browse/ORC-391) | [C++]  parseType does not accept underscore in the field name |  Minor | . | Zherui Cao |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-251](https://issues.apache.org/jira/browse/ORC-251) | Modify InStream and OutStream to optionally encrypt data |  Major | . | Owen O'Malley | Owen O'Malley |


