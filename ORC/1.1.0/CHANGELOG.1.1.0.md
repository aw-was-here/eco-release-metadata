
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

## Release 1.1.0 - 2016-06-10



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-46](https://issues.apache.org/jira/browse/ORC-46) | Reserve CompressionKind values for LZ4 and ZSTD |  Major | . | David Phillips | David Phillips |
| [ORC-51](https://issues.apache.org/jira/browse/ORC-51) | Rename c++ tools for more clarity |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-55](https://issues.apache.org/jira/browse/ORC-55) | Synchronize the storage-api and orc module |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-59](https://issues.apache.org/jira/browse/ORC-59) | Use storage-api at version 2.1.0-pre-orc instead of 2.0.2-pre-orc |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-52](https://issues.apache.org/jira/browse/ORC-52) | Add support for mapreduce InputFormat and OutputFormat |  Major | Java, MapReduce | Owen O'Malley | Owen O'Malley |
| [ORC-57](https://issues.apache.org/jira/browse/ORC-57) | Remove dependence on guava from orc-core |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-61](https://issues.apache.org/jira/browse/ORC-61) | Update the parent pom to the newest version of the Apache pom |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-62](https://issues.apache.org/jira/browse/ORC-62) | Clean up for ORC 1.1.0 release |  Major | . | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-43](https://issues.apache.org/jira/browse/ORC-43) | FileMemory.cc throws uncaught exception |  Major | tools | Owen O'Malley | Owen O'Malley |
| [ORC-47](https://issues.apache.org/jira/browse/ORC-47) | New version of Xcode complains about float-\>double conversion |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-48](https://issues.apache.org/jira/browse/ORC-48) | Generalize docker files for running against arbitrary repository and branches |  Major | build | Owen O'Malley | Owen O'Malley |
| [ORC-10](https://issues.apache.org/jira/browse/ORC-10) | Fix timestamp moving between timezones (HIVE-8746 in C++) |  Major | C++, encoding | Owen O'Malley | Owen O'Malley |
| [ORC-56](https://issues.apache.org/jira/browse/ORC-56) | Extend cmake to also build, test, and package the java files |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-53](https://issues.apache.org/jira/browse/ORC-53) | OrcMap does not support complex types as keys |  Major | . | Mark Wagner | Owen O'Malley |
| [ORC-60](https://issues.apache.org/jira/browse/ORC-60) | add findbugs to build |  Major | build, Java | Owen O'Malley | Owen O'Malley |
| [ORC-66](https://issues.apache.org/jira/browse/ORC-66) | Remove the extra text from the NOTICE file. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-67](https://issues.apache.org/jira/browse/ORC-67) | Problem with C++ reader with Timestamps in GMT when reading on Mac |  Major | C++ | Owen O'Malley | Owen O'Malley |
| [ORC-68](https://issues.apache.org/jira/browse/ORC-68) | The storage-api pom needs to inherit from apache's master pom |  Major | Java | Owen O'Malley | Owen O'Malley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-1](https://issues.apache.org/jira/browse/ORC-1) | Import code from Hive |  Major | encoding, Java, MapReduce | Owen O'Malley | Owen O'Malley |


