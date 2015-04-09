
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
# Hadoop Changelog

## Release 2.4.1 - 2014-06-30

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
| [MAPREDUCE-5841](https://issues.apache.org/jira/browse/MAPREDUCE-5841) | uber job doesn't terminate on getting mapred job kill |  Major | mrv2 | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-5835](https://issues.apache.org/jira/browse/MAPREDUCE-5835) | Killing Task might cause the job to go to ERROR state |  Critical | . | Ming Ma | Ming Ma |
| [MAPREDUCE-5832](https://issues.apache.org/jira/browse/MAPREDUCE-5832) | Few tests in TestJobClient fail on Windows |  Major | . | Jian He | Vinod Kumar Vavilapalli |
| [MAPREDUCE-5830](https://issues.apache.org/jira/browse/MAPREDUCE-5830) | HostUtil.getTaskLogUrl is not backwards binary compatible with 2.3 |  Blocker | . | Jason Lowe | Akira AJISAKA |
| [MAPREDUCE-5828](https://issues.apache.org/jira/browse/MAPREDUCE-5828) | TestMapReduceJobControl fails on JDK 7 + Windows |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-5827](https://issues.apache.org/jira/browse/MAPREDUCE-5827) | TestSpeculativeExecutionWithMRApp fails |  Major | . | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-5826](https://issues.apache.org/jira/browse/MAPREDUCE-5826) | TestHistoryServerFileSystemStateStoreService.testTokenStore fails in windows |  Major | . | Varun Vasudev | Varun Vasudev |
| [MAPREDUCE-5824](https://issues.apache.org/jira/browse/MAPREDUCE-5824) | TestPipesNonJavaInputFormat.testFormat fails in windows |  Major | . | Xuan Gong | Xuan Gong |
| [MAPREDUCE-5821](https://issues.apache.org/jira/browse/MAPREDUCE-5821) | IFile merge allocates new byte array for every value |  Major | performance, task | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-5818](https://issues.apache.org/jira/browse/MAPREDUCE-5818) | hsadmin cmd is missing in mapred.cmd |  Major | . | Jian He | Jian He |
| [MAPREDUCE-5815](https://issues.apache.org/jira/browse/MAPREDUCE-5815) | Fix NPE in TestMRAppMaster |  Blocker | client, mrv2 | Gera Shegalov | Akira AJISAKA |
| [MAPREDUCE-5714](https://issues.apache.org/jira/browse/MAPREDUCE-5714) | TestMRAppComponentDependencies causes surefire to exit without saying proper goodbye |  Major | test | Jinghui Wang | Jinghui Wang |
| [MAPREDUCE-3191](https://issues.apache.org/jira/browse/MAPREDUCE-3191) | docs for map output compression incorrectly reference SequenceFile |  Trivial | . | Todd Lipcon | Chen He |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5843](https://issues.apache.org/jira/browse/MAPREDUCE-5843) | TestMRKeyValueTextInputFormat failing on Windows |  Major | . | Varun Vasudev | Varun Vasudev |
| [MAPREDUCE-5833](https://issues.apache.org/jira/browse/MAPREDUCE-5833) | TestRMContainerAllocator fails ocassionally |  Major | . | Zhijie Shen | Zhijie Shen |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


