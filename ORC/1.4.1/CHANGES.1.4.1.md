
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

## Release 1.4.1 - Unreleased (as of 2017-08-26)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-214](https://issues.apache.org/jira/browse/ORC-214) | Upgrade Aircompressor to 0.8 |  Trivial | compression | Gopal V | Gopal V |
| [ORC-212](https://issues.apache.org/jira/browse/ORC-212) | JSON convert should properly convert Timestamp string to java.sql.Timestamp |  Major | . | Seshu Pasam | Seshu Pasam |
| [ORC-221](https://issues.apache.org/jira/browse/ORC-221) | RecordReaderImpl::evaluatePredicateMinMax should check whether predicate.getLiteralList() is empty |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [ORC-230](https://issues.apache.org/jira/browse/ORC-230) | Add OSX os to travis testing |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-223](https://issues.apache.org/jira/browse/ORC-223) | FileDump utility should print user metadata |  Major | . | Eugene Koifman | Eugene Koifman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-188](https://issues.apache.org/jira/browse/ORC-188) | Fix RAT problems |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-198](https://issues.apache.org/jira/browse/ORC-198) | Decimal types created with convert command generates IllegalArgumentException for valid documents |  Major | Java | Shawn Hooton | Shawn Hooton |


