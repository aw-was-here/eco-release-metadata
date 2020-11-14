
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

## Release 2.3.3 - 2020-11-02



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24976](https://issues.apache.org/jira/browse/HBASE-24976) | REST Server failes to start without any error message |  Major | REST | lujie | lujie |
| [HBASE-25079](https://issues.apache.org/jira/browse/HBASE-25079) | Upgrade Bootstrap to 3.3.7 |  Major | security, UI | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-25082](https://issues.apache.org/jira/browse/HBASE-25082) | Per table WAL metrics: appendCount and appendSize |  Major | metrics | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-25109](https://issues.apache.org/jira/browse/HBASE-25109) | Add MR Counters to WALPlayer; currently hard to tell if it is doing anything |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24981](https://issues.apache.org/jira/browse/HBASE-24981) | Enable table replication fails from 1.x to 2.x if table already exist at peer. |  Major | Replication | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-25146](https://issues.apache.org/jira/browse/HBASE-25146) | Add extra logging at info level to HFileCorruptionChecker in order to report progress |  Major | hbck, hbck2 | Andor Molnar | Andor Molnar |
| [HBASE-25179](https://issues.apache.org/jira/browse/HBASE-25179) | Assert format is incorrect in HFilePerformanceEvaluation class. |  Minor | Performance, test | Rushabh Shah | Rushabh Shah |
| [HBASE-25193](https://issues.apache.org/jira/browse/HBASE-25193) | Add support for row prefix and type in the WAL Pretty Printer and some minor fixes |  Minor | wal | Sandeep Pal | Sandeep Pal |
| [HBASE-25189](https://issues.apache.org/jira/browse/HBASE-25189) | [Metrics] Add checkAndPut and checkAndDelete latency metrics at table level |  Minor | metrics | Reid Chan | Reid Chan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-25097](https://issues.apache.org/jira/browse/HBASE-25097) | Wrong RIT page number in Master UI |  Minor | UI | Yi Mei | Yi Mei |
| [HBASE-25088](https://issues.apache.org/jira/browse/HBASE-25088) | CatalogFamilyFormat/MetaTableAccessor.parseRegionInfoFromRegionName incorrectly setEndKey to regionId |  Critical | meta | Duo Zhang | Junhong Xu |
| [HBASE-25077](https://issues.apache.org/jira/browse/HBASE-25077) | hbck.jsp page loading fails, logs NPE in master log. |  Major | hbck | Ajeet Rai | Mohammad Arshad |
| [HBASE-25096](https://issues.apache.org/jira/browse/HBASE-25096) | WAL size in RegionServer UI is wrong |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-25135](https://issues.apache.org/jira/browse/HBASE-25135) | Convert the internal seperator while emitting the memstore read metrics to # |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-25115](https://issues.apache.org/jira/browse/HBASE-25115) | HFilePrettyPrinter can't seek to the row which is the first row of a hfile |  Major | HFile, tooling | Chaoqiang Zhong | niuyulin |
| [HBASE-25147](https://issues.apache.org/jira/browse/HBASE-25147) | Should store the regionNames field in state data for ReopenTableRegionsProcedure |  Major | proc-v2 | Duo Zhang | Viraj Jasani |
| [HBASE-25048](https://issues.apache.org/jira/browse/HBASE-25048) | [HBCK2] Bypassed parent procedures are not updated in store |  Major | hbck2, proc-v2 | Yi Mei | Junhong Xu |
| [HBASE-25168](https://issues.apache.org/jira/browse/HBASE-25168) | Unify WAL name timestamp parsers |  Major | . | Michael Stack | Michael Stack |
| [HBASE-25117](https://issues.apache.org/jira/browse/HBASE-25117) | ReplicationSourceShipper thread can not be finished |  Major | . | Sun Xin | Sun Xin |
| [HBASE-25093](https://issues.apache.org/jira/browse/HBASE-25093) | the RSGroupBasedLoadBalancer#retainAssignment throws NPE |  Major | rsgroup | Bo Cui | niuyulin |
| [HBASE-25204](https://issues.apache.org/jira/browse/HBASE-25204) | Nightly job failed as  the name of jdk and maven changed |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-25207](https://issues.apache.org/jira/browse/HBASE-25207) | Revisit the implementation and usage of RegionStates.include |  Major | Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-25206](https://issues.apache.org/jira/browse/HBASE-25206) | Data loss can happen if a cloned table loses original split region(delete table) |  Major | proc-v2, Region Assignment, snapshots | Toshihiro Suzuki | Toshihiro Suzuki |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-25156](https://issues.apache.org/jira/browse/HBASE-25156) | TestMasterFailover.testSimpleMasterFailover is flaky |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24015](https://issues.apache.org/jira/browse/HBASE-24015) | Coverage for Assign and Unassign of Regions on RegionServer on failure |  Major | amv2 | Michael Stack | Sandeep Pal |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-25107](https://issues.apache.org/jira/browse/HBASE-25107) | Migrate flaky reporting jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25132](https://issues.apache.org/jira/browse/HBASE-25132) | Migrate flaky test jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25133](https://issues.apache.org/jira/browse/HBASE-25133) | Migrate HBase Nightly jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-24503](https://issues.apache.org/jira/browse/HBASE-24503) | Backport HBASE-24492 to all 2.x branch |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-25154](https://issues.apache.org/jira/browse/HBASE-25154) | Set java.io.tmpdir to project build directory to avoid writing std\*deferred files to /tmp |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-22976](https://issues.apache.org/jira/browse/HBASE-22976) | [HBCK2] Add RecoveredEditsPlayer |  Major | hbck2, walplayer | Michael Stack | Michael Stack |
| [HBASE-25163](https://issues.apache.org/jira/browse/HBASE-25163) | Increase the timeout value for nightly jobs |  Major | jenkins, scripts, test | Duo Zhang | Duo Zhang |
| [HBASE-25162](https://issues.apache.org/jira/browse/HBASE-25162) | Make flaky tests run more aggressively |  Major | jenkins, scripts, test | Duo Zhang | yuqi |
| [HBASE-25194](https://issues.apache.org/jira/browse/HBASE-25194) | Do not publish workspace in flaky find job |  Major | jenkins | Duo Zhang | Duo Zhang |
| [HBASE-25203](https://issues.apache.org/jira/browse/HBASE-25203) | Change the reference url to flaky list in our jenkins jobs |  Major | flakies, jenkins | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-25073](https://issues.apache.org/jira/browse/HBASE-25073) | Should not use XXXService.Interface.class.getSimpleName as stub key prefix in AsyncConnectionImpl |  Major | Client | Duo Zhang | wangwei |
| [HBASE-25120](https://issues.apache.org/jira/browse/HBASE-25120) | Remove the deprecated annotation for MetaTableAccessor.getScanForTableName |  Major | meta | Duo Zhang | Nicholas Jiang |


