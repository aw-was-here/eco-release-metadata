
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
# Changelog

## Release 0.4.1 - 2014-07-14

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1162](https://issues.apache.org/jira/browse/TEZ-1162) | Tez leaks CodecPool buffers |  Major | . | Gopal V | Gopal V |
| [TEZ-1135](https://issues.apache.org/jira/browse/TEZ-1135) | ShuffledUnorderedKVInput handles empty partitions incorrectly |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1125](https://issues.apache.org/jira/browse/TEZ-1125) | Pre-warm broken |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1097](https://issues.apache.org/jira/browse/TEZ-1097) | Tez assumes that the scratch directory has to be same as the default filesystem |  Major | . | Chuan Liu | Hitesh Shah |
| [TEZ-1048](https://issues.apache.org/jira/browse/TEZ-1048) | NPE when previous task attempts fail without generating any data |  Major | . | Arpit Gupta | Siddharth Seth |
| [TEZ-1045](https://issues.apache.org/jira/browse/TEZ-1045) | TezMiniCluster tests can fail intermittently |  Critical | . | Bikas Saha | Bikas Saha |
| [TEZ-1040](https://issues.apache.org/jira/browse/TEZ-1040) | TezMerger hangs when io.sort.mb value is 1 |  Blocker | . | Rohini Palaniswamy | Siddharth Seth |
| [TEZ-1034](https://issues.apache.org/jira/browse/TEZ-1034) | Shuffling can sometimes hang with duplicate inputs for the same index |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1033](https://issues.apache.org/jira/browse/TEZ-1033) | AM hangs during recovery with Tasks awaiting init event |  Major | . | Arpit Gupta | Hitesh Shah |
| [TEZ-1029](https://issues.apache.org/jira/browse/TEZ-1029) | Fetcher can fail to report input failed event upon connection error |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1028](https://issues.apache.org/jira/browse/TEZ-1028) | Handle killed tasks and attempts when handling recovery data |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1021](https://issues.apache.org/jira/browse/TEZ-1021) | TezClient cannot connect to AM in a secure cluster when launched via Oozie |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1020](https://issues.apache.org/jira/browse/TEZ-1020) | VertexImpl handling of task failed in SUCCEEDED state is incorrect. |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1015](https://issues.apache.org/jira/browse/TEZ-1015) | Dag failed with Invalid event: V\_ROUTE\_EVENT at RECOVERING |  Major | . | Arpit Gupta |  |
| [TEZ-1014](https://issues.apache.org/jira/browse/TEZ-1014) | Add a log message to indicate last AM attempt |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1011](https://issues.apache.org/jira/browse/TEZ-1011) | TestDAGRecovery timing out on jenkins builds. |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1010](https://issues.apache.org/jira/browse/TEZ-1010) | TestAMNodeMap.testSelfBlacklist fails intermittently |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1009](https://issues.apache.org/jira/browse/TEZ-1009) | Fixes in log file roll-over |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1005](https://issues.apache.org/jira/browse/TEZ-1005) | AM relocalization adds resources to the wrong classloader |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-1004](https://issues.apache.org/jira/browse/TEZ-1004) | AM relocalization doesn't handle conflicting resources correctly |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-998](https://issues.apache.org/jira/browse/TEZ-998) | InvalidStateTransitonException: Invalid event: V\_INIT at INITED |  Major | . | Arpit Gupta | Hitesh Shah |
| [TEZ-997](https://issues.apache.org/jira/browse/TEZ-997) | Internal Errror in am logs during dag shutdown |  Major | . | Arpit Gupta |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1159](https://issues.apache.org/jira/browse/TEZ-1159) | Fix handling of corrupt or empty files in recovery data |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1158](https://issues.apache.org/jira/browse/TEZ-1158) | Disable multiple AM attempts if recovery is disabled. |  Major | . | Hitesh Shah | Hitesh Shah |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


