
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

## Release 1.3.5 - 2019-06-10



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21815](https://issues.apache.org/jira/browse/HBASE-21815) | Make isTrackingMetrics and getMetrics of ScannerContext public |  Minor | . | Chen Feng | Chen Feng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22291](https://issues.apache.org/jira/browse/HBASE-22291) | Fix recovery of recovered.edits files under root dir |  Major | . | Zach York | Zach York |
| [HBASE-22225](https://issues.apache.org/jira/browse/HBASE-22225) | Profiler tab on Master/RS UI not working w/o comprehensive message |  Minor | UI | Yu Li | Andrew Kyle Purtell |
| [HBASE-22341](https://issues.apache.org/jira/browse/HBASE-22341) | Add explicit guidelines for removing deprecations in book |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | Fix Markdown for "Voting on Release Candidates" in book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | Change rubocop configuration for method length |  Minor | community, shell | Jan Hentschel | Murtaza Hassan |
| [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | Remove extra/useless + |  Trivial | . | puleya7 | puleya7 |
| [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | Formatting issues in administration section of book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | Dump replication queue should show list of wal files ordered chronologically |  Major | Replication, tooling | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22474](https://issues.apache.org/jira/browse/HBASE-22474) | Add --mvn-custom-repo parameter to yetus calls |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22496](https://issues.apache.org/jira/browse/HBASE-22496) | UnsafeAccess.unsafeCopy should not copy more than UNSAFE\_COPY\_THRESHOLD on each iteration |  Major | . | Wellington Chevreuil | Wellington Chevreuil |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17170](https://issues.apache.org/jira/browse/HBASE-17170) | HBase is also retrying DoNotRetryIOException because of class loader differences. |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22235](https://issues.apache.org/jira/browse/HBASE-22235) | OperationStatus.{SUCCESS\|FAILURE\|NOT\_RUN} are not visible to 3rd party coprocessors |  Major | Coprocessors | Lars Hofhansl | Andrew Kyle Purtell |
| [HBASE-22270](https://issues.apache.org/jira/browse/HBASE-22270) | master's jmx.clusterRequests could be negative in branch-1 |  Major | master, regionserver | puleya7 | puleya7 |
| [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | Change rubocop config for max line length of 100 |  Minor | community, shell | Umesh Agashe | Murtaza Hassan |
| [HBASE-22378](https://issues.apache.org/jira/browse/HBASE-22378) | HBase Canary fails with TableNotFoundException when table deleted during Canary run |  Minor | canary | Caroline | Caroline |
| [HBASE-22391](https://issues.apache.org/jira/browse/HBASE-22391) | Fix flaky tests from TestFromClientSide |  Minor | test | Xu Cang | Xu Cang |
| [HBASE-22421](https://issues.apache.org/jira/browse/HBASE-22421) | branch-1 docker mode for yetus fails |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-22487](https://issues.apache.org/jira/browse/HBASE-22487) | getMostLoadedRegions is unused |  Trivial | regionserver | Clay B. | Clay B. |
| [HBASE-22451](https://issues.apache.org/jira/browse/HBASE-22451) | TestLoadIncrementalHFiles and TestSecureLoadIncrementalHFiles are flaky |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22508](https://issues.apache.org/jira/browse/HBASE-22508) | Address findbugs/spotbugs complaints (branch-1.3) |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22518](https://issues.apache.org/jira/browse/HBASE-22518) | yetus personality is treating branch-1.4 like earlier branches for hadoopcheck |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-22533](https://issues.apache.org/jira/browse/HBASE-22533) | TestAccessController3 is flaky (branch-1) |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21920](https://issues.apache.org/jira/browse/HBASE-21920) | Ignoring 'empty' end\_key while calculating end\_key for new region in HBCK -fixHdfsOverlaps command can cause data loss |  Major | hbck | Syeda Arshiya Tabreen | Syeda Arshiya Tabreen |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22330](https://issues.apache.org/jira/browse/HBASE-22330) | Backport HBASE-20724 (Sometimes some compacted storefiles are still opened after region failover) to branch-1 |  Major | Compaction, regionserver | Andrew Kyle Purtell | Abhishek Singh Chouhan |
| [HBASE-22429](https://issues.apache.org/jira/browse/HBASE-22429) | hbase-vote download step requires URL to end with '/' |  Trivial | . | Andrew Kyle Purtell | Tak-Lon (Stephen) Wu |
| [HBASE-22430](https://issues.apache.org/jira/browse/HBASE-22430) | hbase-vote should tee build and test output to console |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22419](https://issues.apache.org/jira/browse/HBASE-22419) | Backport hbase-personality changes in HBASE-22399 and HBASE-20970 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22507](https://issues.apache.org/jira/browse/HBASE-22507) | Backport the pre commit changes in HBASE-22500 to all active branches |  Major | build | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22020](https://issues.apache.org/jira/browse/HBASE-22020) | upgrade to yetus 0.9.0 |  Major | build, community | Michael Stack | Sean Busbey |
| [HBASE-22375](https://issues.apache.org/jira/browse/HBASE-22375) | Promote AccessChecker to LimitedPrivate(Coprocessor) |  Minor | Coprocessors, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22374](https://issues.apache.org/jira/browse/HBASE-22374) | Backport AccessChecker refactor to branch-1.3 |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22449](https://issues.apache.org/jira/browse/HBASE-22449) | https everywhere in Maven metadata |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


