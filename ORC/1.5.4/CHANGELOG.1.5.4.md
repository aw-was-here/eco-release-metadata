
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

## Release 1.5.4 - 2018-12-21



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-418](https://issues.apache.org/jira/browse/ORC-418) | Fix broken docker build script |  Major | C++ | Owen O'Malley | Owen O'Malley |
| [ORC-411](https://issues.apache.org/jira/browse/ORC-411) | Update build to work with Java 10. |  Major | . | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-410](https://issues.apache.org/jira/browse/ORC-410) | Fix a locale-dependent test in TestCsvReader |  Major | . | Kotaro Terada | Kotaro Terada |
| [ORC-409](https://issues.apache.org/jira/browse/ORC-409) | Changes for extending MemoryManagerImpl |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-237](https://issues.apache.org/jira/browse/ORC-237) | OrcFile.mergeFiles Specified block size is less than configured minimum value |  Major | . | eBerh |  |
| [ORC-416](https://issues.apache.org/jira/browse/ORC-416) | Avoid opening data reader when there is no stripe |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-419](https://issues.apache.org/jira/browse/ORC-419) | Ensure to call \`close\` at RecordReaderImpl constructor exception |  Critical | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-417](https://issues.apache.org/jira/browse/ORC-417) | Use dynamic Apache Maven mirror link |  Minor | build | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-432](https://issues.apache.org/jira/browse/ORC-432) | openjdk 8 has a bug that prevents surefire from working |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-437](https://issues.apache.org/jira/browse/ORC-437) | Make acid schema checks case insensitive |  Major | Java | Vaibhav Gumashta | Vaibhav Gumashta |
| [ORC-435](https://issues.apache.org/jira/browse/ORC-435) | Ability to read stripes that are greater than 2GB |  Major | Reader | Prasanth Jayachandran | Prasanth Jayachandran |


