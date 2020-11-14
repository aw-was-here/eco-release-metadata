
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

## Release 1.5.6 - 2019-06-27



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-334](https://issues.apache.org/jira/browse/ORC-334) | Add AppVeyor support for integration on windows |  Major | . | Deepak Majeti | Renat Valiullin |
| [ORC-366](https://issues.apache.org/jira/browse/ORC-366) | Improve TZDIR setup for WIN32 |  Major | . | Renat Valiullin | Renat Valiullin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-477](https://issues.apache.org/jira/browse/ORC-477) | BloomFilter for ACID table does not get created |  Major | . | Denys Kuzmenko | Denys Kuzmenko |
| [ORC-491](https://issues.apache.org/jira/browse/ORC-491) | PPD: Column name lookups need to look a struct deeper for ACID |  Major | . | Gopal Vijayaraghavan | Vineet Garg |
| [ORC-497](https://issues.apache.org/jira/browse/ORC-497) | Build failure with Maven 3.6.X |  Major | build | Sandeep More | Sandeep More |
| [ORC-498](https://issues.apache.org/jira/browse/ORC-498) | ReaderImpl and RecordReaderImpl open separate file handles |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-511](https://issues.apache.org/jira/browse/ORC-511) | Fix debian 8 docker file |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-518](https://issues.apache.org/jira/browse/ORC-518) | Fix false positives from findbugs with jdk11. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-517](https://issues.apache.org/jira/browse/ORC-517) | Incorrect statistics written for decimal values |  Major | Java | Nándor Kollár | Owen O'Malley |


