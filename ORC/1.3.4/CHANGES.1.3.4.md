
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

## Release 1.3.4 - Unreleased (as of 2017-08-28)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-214](https://issues.apache.org/jira/browse/ORC-214) | Upgrade Aircompressor to 0.8 |  Trivial | compression | Gopal V | Gopal V |
| [ORC-221](https://issues.apache.org/jira/browse/ORC-221) | RecordReaderImpl::evaluatePredicateMinMax should check whether predicate.getLiteralList() is empty |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [ORC-230](https://issues.apache.org/jira/browse/ORC-230) | Add OSX os to travis testing |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-223](https://issues.apache.org/jira/browse/ORC-223) | FileDump utility should print user metadata |  Major | . | Eugene Koifman | Eugene Koifman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-170](https://issues.apache.org/jira/browse/ORC-170) | TypeDescription parent links aren't always initialized in TypeDescription.fromString() |  Major | Java | Owen O'Malley | Owen O'Malley |
| [ORC-172](https://issues.apache.org/jira/browse/ORC-172) | Fix C++ build issue with Centos6 |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-148](https://issues.apache.org/jira/browse/ORC-148) | Move ORC PPD failure messages from WARN to DEBUG level |  Blocker | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-87](https://issues.apache.org/jira/browse/ORC-87) | [C++] Handle missing timezone conversion for timestamp statistics |  Major | C++ | Deepak Majeti | Deepak Majeti |
| [ORC-181](https://issues.apache.org/jira/browse/ORC-181) | ByteRleDecoder doesn't seek correctly |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-188](https://issues.apache.org/jira/browse/ORC-188) | Fix RAT problems |  Major | . | Owen O'Malley | Owen O'Malley |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-157](https://issues.apache.org/jira/browse/ORC-157) | Test failed due to timezone DST |  Trivial | tools | Andrey Morskoy | Owen O'Malley |


