
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

## Release 1.1.1 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13420](https://issues.apache.org/jira/browse/HBASE-13420) | RegionEnvironment.offerExecutionLatency Blocks Threads under Heavy Load |  Major | . | John Leach | Andrew Purtell |
| [HBASE-12415](https://issues.apache.org/jira/browse/HBASE-12415) | Add add(byte[][] arrays) to Bytes. |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13608](https://issues.apache.org/jira/browse/HBASE-13608) | 413 Error with Stargate through Knox, using AD, SPNEGO, and Pre-Auth |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13607](https://issues.apache.org/jira/browse/HBASE-13607) | TestSplitLogManager.testGetPreviousRecoveryMode consistently failing |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13604](https://issues.apache.org/jira/browse/HBASE-13604) | bin/hbase mapredcp does not include yammer-metrics jar |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13600](https://issues.apache.org/jira/browse/HBASE-13600) | check\_compatibility.sh should ignore shaded jars |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13564](https://issues.apache.org/jira/browse/HBASE-13564) | Master MBeans are not published |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13377](https://issues.apache.org/jira/browse/HBASE-13377) | Canary may generate false alarm on the first region when there are many delete markers |  Major | monitoring | He Liangliang | He Liangliang |
| [HBASE-13333](https://issues.apache.org/jira/browse/HBASE-13333) | Renew Scanner Lease without advancing the RegionScanner |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13325](https://issues.apache.org/jira/browse/HBASE-13325) | Protocol Buffers 2.5 no longer available for download on code.google.com |  Major | . | Andrew Purtell | Elliott Clark |
| [HBASE-13312](https://issues.apache.org/jira/browse/HBASE-13312) | SmallScannerCallable does not increment scan metrics |  Major | Client, Scanners | Lars George | Andrew Purtell |
| [HBASE-13200](https://issues.apache.org/jira/browse/HBASE-13200) | Improper configuration can leads to endless lease recovery during failover |  Major | MTTR | He Liangliang | He Liangliang |
| [HBASE-12413](https://issues.apache.org/jira/browse/HBASE-12413) | Mismatch in the equals and hashcode methods of KeyValue |  Minor | . | Jingcheng Du | Jingcheng Du |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13497](https://issues.apache.org/jira/browse/HBASE-13497) | Remove MVCC stamps from HFile when that is safe |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


