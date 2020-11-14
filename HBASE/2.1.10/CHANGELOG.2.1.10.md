
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

## Release 2.1.10 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23802](https://issues.apache.org/jira/browse/HBASE-23802) | Remove unnecessary Configuration instantiation in LossyAccounting |  Minor | metrics | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23859](https://issues.apache.org/jira/browse/HBASE-23859) | Modify "Block locality" of RegionServer Web UI to human readable percentage |  Trivial | . | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-23864](https://issues.apache.org/jira/browse/HBASE-23864) | No need to submit SplitTableRegionProcedure/MergeTableRegionsProcedure when split/merge is disabled |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22827](https://issues.apache.org/jira/browse/HBASE-22827) | Expose multi-region merge in shell and Admin API |  Major | Admin, shell | Michael Stack | Sakthi |
| [HBASE-23967](https://issues.apache.org/jira/browse/HBASE-23967) | Improve the accuracy of the method sizeToString |  Minor | . | xuqinya | xuqinya |
| [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | Use a fair ReentrantReadWriteLock for the region close lock |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24355](https://issues.apache.org/jira/browse/HBASE-24355) | Fix typos in the HStore#compact annotation |  Minor | . | kangkang.guo | kangkang.guo |
| [HBASE-24427](https://issues.apache.org/jira/browse/HBASE-24427) | HStore.add log format error |  Minor | . | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24102](https://issues.apache.org/jira/browse/HBASE-24102) | RegionMover should exclude draining/decommissioning nodes from target RSs |  Major | . | Anoop Sam John | Viraj Jasani |
| [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | Zookeeper sync() call is async |  Critical | master, regionserver | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24696](https://issues.apache.org/jira/browse/HBASE-24696) | Include JVM information on Web UI under "Software Attributes" |  Minor | UI | Nick Dimiduk | Mingliang Liu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23915](https://issues.apache.org/jira/browse/HBASE-23915) | Backport HBASE-23553 to branch-2.1 |  Major | snapshots | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23909](https://issues.apache.org/jira/browse/HBASE-23909) | list\_regions fails if table is under split |  Minor | shell | Peter Somogyi | Viraj Jasani |
| [HBASE-23944](https://issues.apache.org/jira/browse/HBASE-23944) | The method setClusterLoad of SimpleLoadBalancer is incorrect when balance by table |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-24016](https://issues.apache.org/jira/browse/HBASE-24016) | Change nightly poll from cron @daily to pollSCM @daily; i.e. run nightly if a change ONLY |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24017](https://issues.apache.org/jira/browse/HBASE-24017) | Turn down flakey rerun rate on all but hot branches |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24019](https://issues.apache.org/jira/browse/HBASE-24019) | Correct exception messages for table null and namespace unavailable. |  Minor | . | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24040](https://issues.apache.org/jira/browse/HBASE-24040) | WALFactory.Providers.multiwal causes StackOverflowError |  Minor | wal | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24057](https://issues.apache.org/jira/browse/HBASE-24057) | Add modules to mapreduce job classpaths |  Major | mapreduce | Peter Somogyi | Peter Somogyi |
| [HBASE-24076](https://issues.apache.org/jira/browse/HBASE-24076) | TestQuotasShell is broken |  Blocker | shell | Duo Zhang | Duo Zhang |
| [HBASE-24151](https://issues.apache.org/jira/browse/HBASE-24151) | [rsgroup] The master server  aborted for IllegalThreadStateException |  Minor | rsgroup | kangkang.guo | kangkang.guo |
| [HBASE-24322](https://issues.apache.org/jira/browse/HBASE-24322) | UnsafeAvailChecker should also check that required methods are available |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24190](https://issues.apache.org/jira/browse/HBASE-24190) | Make kerberos value of hbase.security.authentication property case insensitive |  Major | . | Yuanliang Zhang | Rushabh Shah |
| [HBASE-23832](https://issues.apache.org/jira/browse/HBASE-23832) | Old config hbase.hstore.compactionThreshold is ignored |  Critical | . | Anoop Sam John | Sambit Mohapatra |
| [HBASE-24499](https://issues.apache.org/jira/browse/HBASE-24499) | Use a client property for SaslConnection MAX\_ATTEMPTS (currently hardcoded to 5) |  Minor | Client, security | Ravi Kishore Valeti | Ravi Kishore Valeti |
| [HBASE-24515](https://issues.apache.org/jira/browse/HBASE-24515) | batch Increment/Append fails when retrying the RPC |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24312](https://issues.apache.org/jira/browse/HBASE-24312) | Backport HBase-24199 to 2.1.x branches |  Minor | metrics | Gaurav Kanade | Gaurav Kanade |
| [HBASE-24529](https://issues.apache.org/jira/browse/HBASE-24529) | hbase.rs.evictblocksonclose is not honored when removing compacted files and closing the storefiles |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24550](https://issues.apache.org/jira/browse/HBASE-24550) | Passing '-h' or '--help' to bin/hbase doesn't do as expected |  Trivial | Operability, shell | Michael Stack | wenfeiyi666 |
| [HBASE-24600](https://issues.apache.org/jira/browse/HBASE-24600) | Empty RegionAction added to MultiRequest in case of RowMutations/CheckAndMutate batch |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24693](https://issues.apache.org/jira/browse/HBASE-24693) | regioninfo#isLast() has a logic error |  Minor | . | Bo Cui | Bo Cui |
| [HBASE-24742](https://issues.apache.org/jira/browse/HBASE-24742) | Improve performance of SKIP vs SEEK logic |  Major | Performance, regionserver | Lars Hofhansl | Lars Hofhansl |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | Relocate test-only REST "client" from src/ to test/ and mark Private |  Major | REST, security | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23858](https://issues.apache.org/jira/browse/HBASE-23858) | Set version as 2.1.10-SNAPSHOT in branch-2.1 |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-23755](https://issues.apache.org/jira/browse/HBASE-23755) | [OpenTracing] Declare HTrace is unusable in the user doc |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24009](https://issues.apache.org/jira/browse/HBASE-24009) | Backport the personality changes in HBASE-23989 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-24050](https://issues.apache.org/jira/browse/HBASE-24050) | Deprecated PBType on all 2.x branches |  Major | Protobufs | Duo Zhang | Duo Zhang |
| [HBASE-24059](https://issues.apache.org/jira/browse/HBASE-24059) | Set version as 2.1.10 in branch-2.1 in prep for first RC of 2.1.10 |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-24060](https://issues.apache.org/jira/browse/HBASE-24060) | Generate CHANGES.md and RELEASENOTES.md for 2.1.10 |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-24630](https://issues.apache.org/jira/browse/HBASE-24630) | Purge dev javadoc from client bin tarball |  Major | build | Nick Dimiduk | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23854](https://issues.apache.org/jira/browse/HBASE-23854) | Documentation update of external\_apis.adoc#example-scala-code |  Trivial | documentation | Michael Heil | Michael Heil |
| [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | Move Jira-attached file precommit definition from script in Jenkins config to dev-support |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23878](https://issues.apache.org/jira/browse/HBASE-23878) | Backport HBASE-22040 to branch-2.1 |  Major | . | Sakthi | Sakthi |


