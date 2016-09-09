
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
# Apache HBase Changelog

## Release 0.94.23 - 2014-09-05



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11667](https://issues.apache.org/jira/browse/HBASE-11667) | Comment ClientScanner logic for NSREs. |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11754](https://issues.apache.org/jira/browse/HBASE-11754) | [Shell] Record table property SPLITS\_FILE in descriptor |  Trivial | . | chendihao | chendihao |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11652](https://issues.apache.org/jira/browse/HBASE-11652) | Port HBASE-3270 and HBASE-11650 to 0.94 - create cluster id and version file in a tmp location and move it into place |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11641](https://issues.apache.org/jira/browse/HBASE-11641) | TestDistributedLogSplitting.testMasterStartsUpWithLogSplittingWork fails frequently |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10834](https://issues.apache.org/jira/browse/HBASE-10834) | Better error messaging on issuing grant commands in non-authz mode |  Trivial | shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11767](https://issues.apache.org/jira/browse/HBASE-11767) | [0.94] Unnecessary garbage produced by schema metrics during scanning |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11232](https://issues.apache.org/jira/browse/HBASE-11232) | Add MultiRowMutation tests. |  Major | regionserver | Liu Shaohui | Liu Shaohui |
| [HBASE-11536](https://issues.apache.org/jira/browse/HBASE-11536) | Puts of region location to Meta may be out of order which causes inconsistent of region location |  Critical | Region Assignment | Liu Shaohui | Liu Shaohui |
| [HBASE-9746](https://issues.apache.org/jira/browse/HBASE-9746) | RegionServer can't start when replication tries to replicate to an unknown host |  Major | . | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11690](https://issues.apache.org/jira/browse/HBASE-11690) | Backport HBASE-5934 (Add the ability for Performance Evaluation to set the table compression) to 0.94 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11691](https://issues.apache.org/jira/browse/HBASE-11691) | Backport HBASE-7156 (Add Data Block Encoding and -D opts to Performance Evaluation) to 0.94 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11693](https://issues.apache.org/jira/browse/HBASE-11693) | Backport HBASE-11026 (Provide option to filter out all rows in PerformanceEvaluation tool) to 0.94 |  Minor | . | Andrew Purtell | Andrew Purtell |


