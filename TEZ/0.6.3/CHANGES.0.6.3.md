
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
# Apache Tez Changelog

## Release 0.6.3 - Unreleased (as of 2016-01-18)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2768](https://issues.apache.org/jira/browse/TEZ-2768) | Log a useful error message when the summary stream cannot be closed when shutting down an AM |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2758](https://issues.apache.org/jira/browse/TEZ-2758) | Remove append API in RecoveryService after TEZ-1909 |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2719](https://issues.apache.org/jira/browse/TEZ-2719) | Consider reducing logs in unordered fetcher with shared-fetch option |  Major | . | Rajesh Balamohan | Rajesh Balamohan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2907](https://issues.apache.org/jira/browse/TEZ-2907) | NPE in IFile.Reader.getLength during final merge operation |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2855](https://issues.apache.org/jira/browse/TEZ-2855) | Potential NPE while routing VertexManager events |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2851](https://issues.apache.org/jira/browse/TEZ-2851) | Support a way for upstream applications to pass in a caller context to Tez |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2850](https://issues.apache.org/jira/browse/TEZ-2850) | Tez MergeManager OOM for small Map Outputs |  Major | . | Saikat | Jonathan Eagles |
| [TEZ-2834](https://issues.apache.org/jira/browse/TEZ-2834) | Make Tez preemption resilient to incorrect free resource reported by YARN |  Major | . | Rajesh Balamohan | Bikas Saha |
| [TEZ-2816](https://issues.apache.org/jira/browse/TEZ-2816) | Preemption sometimes does not respect heartbeats between preemptions |  Major | . | Jeff Zhang | Bikas Saha |
| [TEZ-2809](https://issues.apache.org/jira/browse/TEZ-2809) | Minimal distribution compiled on 2.6 fails to run on 2.7 |  Blocker | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2808](https://issues.apache.org/jira/browse/TEZ-2808) | Race condition between preemption and container assignment |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2781](https://issues.apache.org/jira/browse/TEZ-2781) | Fallback to send only TaskAttemptFailedEvent if taskFailed heartbeat fails |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2752](https://issues.apache.org/jira/browse/TEZ-2752) | logUnsuccessful completion in Attempt should write original finish time to ATS |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2745](https://issues.apache.org/jira/browse/TEZ-2745) | ClassNotFoundException of user code should fail dag |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2742](https://issues.apache.org/jira/browse/TEZ-2742) | VertexImpl.finished() terminationCause hides member var of the same name |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2716](https://issues.apache.org/jira/browse/TEZ-2716) | DefaultSorter.isRleNeeded not thread safe |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-2687](https://issues.apache.org/jira/browse/TEZ-2687) | ATS History shutdown happens before the min-held containers are released |  Major | . | Gopal V | Jeff Zhang |
| [TEZ-2630](https://issues.apache.org/jira/browse/TEZ-2630) | TezChild receives IP address instead of FQDN |  Critical | . | Rajat Jain | Hitesh Shah |
| [TEZ-2629](https://issues.apache.org/jira/browse/TEZ-2629) | LimitExceededException in Tez client when DAG has exceeds the default max counters |  Major | . | Jason Dere | Siddharth Seth |
| [TEZ-2398](https://issues.apache.org/jira/browse/TEZ-2398) | Flaky test: TestFaultTolerance |  Major | . | Rajesh Balamohan | Bikas Saha |
| [TEZ-2290](https://issues.apache.org/jira/browse/TEZ-2290) | Scale memory for Default Sorter down to a max of 2047 MB if configured higher |  Blocker | . | Hitesh Shah | Rajesh Balamohan |
| [TEZ-2097](https://issues.apache.org/jira/browse/TEZ-2097) | TEZ-UI Add dag logs backend support |  Critical | UI | Jeff Zhang | Jonathan Eagles |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-814](https://issues.apache.org/jira/browse/TEZ-814) | Improve heuristic for determining a task has failed outputs |  Major | . | Bikas Saha | Bikas Saha |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2734](https://issues.apache.org/jira/browse/TEZ-2734) | Add a test to verify the filename generated by OnDiskMerge |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2203](https://issues.apache.org/jira/browse/TEZ-2203) | Intern strings in tez counters |  Major | . | Bikas Saha | Bikas Saha |


