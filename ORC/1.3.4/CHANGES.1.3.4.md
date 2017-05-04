
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

## Release 1.3.4 - Unreleased (as of 2017-05-04)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-170](https://issues.apache.org/jira/browse/ORC-170) | TypeDescription parent links aren\'t always initialized in TypeDescription.fromString() |  Major | Java | Owen O\'Malley | Owen O\'Malley |
| [ORC-172](https://issues.apache.org/jira/browse/ORC-172) | Fix C++ build issue with Centos6 |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-148](https://issues.apache.org/jira/browse/ORC-148) | Move ORC PPD failure messages from WARN to DEBUG level |  Blocker | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-87](https://issues.apache.org/jira/browse/ORC-87) | [C++] Handle missing timezone conversion for timestamp statistics |  Major | C++ | Deepak Majeti | Deepak Majeti |
| [ORC-181](https://issues.apache.org/jira/browse/ORC-181) | ByteRleDecoder doesn\'t seek correctly |  Major | C++ | Gang Wu | Gang Wu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-157](https://issues.apache.org/jira/browse/ORC-157) | Test failed due to timezone DST |  Trivial | tools | Andrey Morskoy | Owen O\'Malley |


