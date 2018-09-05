
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

## Release 1.2.3 - 2016-12-12



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-111](https://issues.apache.org/jira/browse/ORC-111) | Make Java tool support DFS |  Major | Java | Junegunn Choi | Junegunn Choi |
| [ORC-114](https://issues.apache.org/jira/browse/ORC-114) | Typo: presesrveData → preserveData |  Trivial | Java | Seth Fitzsimmons | Seth Fitzsimmons |
| [ORC-117](https://issues.apache.org/jira/browse/ORC-117) | ConvertTreeReaderFactory gets a ArrayIndexOutOfBoundsException with added columns |  Major | evolution | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-115](https://issues.apache.org/jira/browse/ORC-115) | Unable to write string data into ORC file (or at least read it back) |  Major | Java | Scott Wells | Owen O'Malley |
| [ORC-118](https://issues.apache.org/jira/browse/ORC-118) | fix Java findColumn from getting null pointers when columns aren't mapped |  Major | . | Owen O'Malley | Owen O'Malley |


