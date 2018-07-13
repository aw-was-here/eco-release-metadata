
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

## Release 1.4.4 - 2018-05-14



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-332](https://issues.apache.org/jira/browse/ORC-332) | Add syntax version to orc\_proto.proto |  Trivial | . | rip.nsk | rip.nsk |
| [ORC-360](https://issues.apache.org/jira/browse/ORC-360) | Implement error checking on subtype fields in Java |  Major | . | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-281](https://issues.apache.org/jira/browse/ORC-281) | Fix compiler warnings from clang 5.0 |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-301](https://issues.apache.org/jira/browse/ORC-301) | \`extractFileTail\` should open a file in \`try\` statement |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-324](https://issues.apache.org/jira/browse/ORC-324) | Add support for ARM and PPC arch |  Major | build | Vi On | Vi On |
| [ORC-336](https://issues.apache.org/jira/browse/ORC-336) | Remove avro and parquet dependency management entries |  Major | . | Owen O'Malley | Owen O'Malley |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-304](https://issues.apache.org/jira/browse/ORC-304) | Fix TestRecordReaderImpl to not fail with new storage-api |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-306](https://issues.apache.org/jira/browse/ORC-306) | Fix incorrect workaround for bug in java.sql.Timestamp |  Major | . | Owen O'Malley | Owen O'Malley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-330](https://issues.apache.org/jira/browse/ORC-330) | Remove unnecessary Hive artifacts from root pom |  Minor | Java | Daniel Voros | Daniel Voros |


