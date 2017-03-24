
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

## Release 1.4.0 - Unreleased (as of 2017-03-24)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-150](https://issues.apache.org/jira/browse/ORC-150) | Add tool to convert from JSON to ORC |  Major | . | Owen O'Malley | Owen O'Malley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-100](https://issues.apache.org/jira/browse/ORC-100) | Add findbugs as part of the build |  Major | build, Java | Owen O'Malley | Tarun Kumar |
| [ORC-154](https://issues.apache.org/jira/browse/ORC-154) | add OrcFile.WriterOptions.clone() |  Major | . | Eugene Koifman | Eugene Koifman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-134](https://issues.apache.org/jira/browse/ORC-134) | DecimalColumnStatistics methods throws NPE when all column values are null |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-141](https://issues.apache.org/jira/browse/ORC-141) | inconsistent memorymanager usage after PhysicalWriter patch |  Major | . | Sergey Shelukhin | Owen O'Malley |
| [ORC-135](https://issues.apache.org/jira/browse/ORC-135) | PPD for timestamp is wrong when reader and writer timezones are different |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-142](https://issues.apache.org/jira/browse/ORC-142) | When reading pre-ORC-135 files, the timestamp statistics are wrong. |  Major | Java | Owen O'Malley | Owen O'Malley |
| [ORC-147](https://issues.apache.org/jira/browse/ORC-147) | Make some minor fixes to make ORC compatible with Hive 2.1 |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-151](https://issues.apache.org/jira/browse/ORC-151) | Cut down on the size of the tools jar by excluding more |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-153](https://issues.apache.org/jira/browse/ORC-153) | Treat no arguments in tools jar convert and json-schema as help request |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-143](https://issues.apache.org/jira/browse/ORC-143) | DELTA encoding may exaggerate number of bits required |  Minor | Java | Douglas Drinka | Douglas Drinka |
| [ORC-165](https://issues.apache.org/jira/browse/ORC-165) | add eclipse files to gitignore |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [ORC-166](https://issues.apache.org/jira/browse/ORC-166) | add codec pool to ORC; make sure end is called on underlying codecs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-157](https://issues.apache.org/jira/browse/ORC-157) | Test failed due to timezone DST |  Trivial | tools | Andrey Morskoy | Owen O'Malley |


