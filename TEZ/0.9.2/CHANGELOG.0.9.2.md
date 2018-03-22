
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

## Release 0.9.2 - Unreleased (as of 2018-03-22)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3770](https://issues.apache.org/jira/browse/TEZ-3770) | DAG-aware YARN task scheduler |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3892](https://issues.apache.org/jira/browse/TEZ-3892) | getClient API for TezClient |  Major | . | Eric Wohlstadter | Eric Wohlstadter |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3895](https://issues.apache.org/jira/browse/TEZ-3895) | Missing name for local mode task scheduler service async request handler thread |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3888](https://issues.apache.org/jira/browse/TEZ-3888) | Update Jetty to org.eclipse.jetty 9.x |  Major | . | Eric Wohlstadter | Eric Wohlstadter |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3877](https://issues.apache.org/jira/browse/TEZ-3877) | Delete unordered spill files once merge is done |  Major | . | Rohini Palaniswamy | Jason Lowe |
| [TEZ-3894](https://issues.apache.org/jira/browse/TEZ-3894) | Tez intermediate outputs implicitly rely on permissive umask for shuffle |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3893](https://issues.apache.org/jira/browse/TEZ-3893) | Tez Local Mode can hang for cases |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3896](https://issues.apache.org/jira/browse/TEZ-3896) | TestATSV15HistoryLoggingService#testNonSessionDomains is failing |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3898](https://issues.apache.org/jira/browse/TEZ-3898) | TestTezCommonUtils fails when compiled against hadoop version \>= 2.8 |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3897](https://issues.apache.org/jira/browse/TEZ-3897) | Tez Local Mode hang for vertices with broadcast input |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3874](https://issues.apache.org/jira/browse/TEZ-3874) | NPE in TezClientUtils when "yarn.resourcemanager.zk-address" is present in Configuration |  Blocker | . | Eric Wohlstadter | Eric Wohlstadter |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3880](https://issues.apache.org/jira/browse/TEZ-3880) | do not count rejected tasks as killed in vertex progress |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3905](https://issues.apache.org/jira/browse/TEZ-3905) | Change BUILDING.TXT to minimum JDK 1.8 |  Trivial | . | Eric Wohlstadter | Eric Wohlstadter |


