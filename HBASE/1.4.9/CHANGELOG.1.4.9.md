
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

## Release 1.4.9 - 2018-12-14



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21103](https://issues.apache.org/jira/browse/HBASE-21103) | nightly test cache of yetus install needs to be more thorough in verification |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes |  Minor | Operability | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21098](https://issues.apache.org/jira/browse/HBASE-21098) | Improve Snapshot Performance with Temporary Snapshot Directory when rootDir on S3 |  Major | . | Tyler Mi | Tyler Mi |
| [HBASE-21263](https://issues.apache.org/jira/browse/HBASE-21263) | Mention compression algorithm along with other storefile details |  Minor | . | Andrew Kyle Purtell | Subrat Mishra |
| [HBASE-21373](https://issues.apache.org/jira/browse/HBASE-21373) | Backport to branch-1, "HBASE-21338 [balancer] If balancer is an ill-fit for cluster size, it gives little indication" |  Major | Operability | Michael Stack | Xu Cang |
| [HBASE-21511](https://issues.apache.org/jira/browse/HBASE-21511) | Remove in progress snapshot check in SnapshotFileCache#getUnreferencedFiles |  Minor | snapshots | Ted Yu | Ted Yu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21266](https://issues.apache.org/jira/browse/HBASE-21266) | Not running balancer because processing dead regionservers, but empty dead rs list |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21275](https://issues.apache.org/jira/browse/HBASE-21275) | Thrift Server (branch 1 fix) -\> Disable TRACE HTTP method for thrift http server (branch 1 only) |  Minor | Thrift | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21355](https://issues.apache.org/jira/browse/HBASE-21355) | HStore's storeSize is calculated repeatedly which causing the confusing region split |  Blocker | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21357](https://issues.apache.org/jira/browse/HBASE-21357) | RS should abort if OOM in Reader thread |  Critical | regionserver | Allan Yang | Allan Yang |
| [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | Pre commit build is broken due to surefire plugin crashes |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-21424](https://issues.apache.org/jira/browse/HBASE-21424) | Change flakies and nightlies so scheduled less often |  Major | build | Michael Stack | Michael Stack |
| [HBASE-20604](https://issues.apache.org/jira/browse/HBASE-20604) | ProtobufLogReader#readNext can incorrectly loop to the same position in the stream until the the WAL is rolled |  Critical | Replication, wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-21439](https://issues.apache.org/jira/browse/HBASE-21439) | StochasticLoadBalancer RegionLoads aren’t being used in RegionLoad cost functions |  Major | Balancer | Ben Lau | Ben Lau |
| [HBASE-21445](https://issues.apache.org/jira/browse/HBASE-21445) | CopyTable by bulkload will write hfile into yarn's HDFS |  Major | mapreduce | Zheng Hu | Zheng Hu |
| [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-21504](https://issues.apache.org/jira/browse/HBASE-21504) | If enable FIFOCompactionPolicy, a compaction may write a "empty" hfile whose maxTimeStamp is long max. This kind of hfile will never be archived. |  Critical | Compaction | xuming | Zheng Hu |
| [HBASE-21359](https://issues.apache.org/jira/browse/HBASE-21359) | Fix build problem against Hadoop 2.8.5 |  Trivial | build | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21546](https://issues.apache.org/jira/browse/HBASE-21546) | ConnectException in TestThriftHttpServer |  Major | test, Thrift | Peter Somogyi | Peter Somogyi |
| [HBASE-21464](https://issues.apache.org/jira/browse/HBASE-21464) | Splitting blocked with meta NSRE during split transaction |  Blocker | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21347](https://issues.apache.org/jira/browse/HBASE-21347) | Backport HBASE-21200 "Memstore flush doesn't finish because of seekToPreviousRow() in memstore scanner." to branch-1 |  Critical | backport, Scanners | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21473](https://issues.apache.org/jira/browse/HBASE-21473) | RowIndexSeekerV1 may return cell with extra two \\x00\\x00 bytes which has no tags |  Major | . | Zheng Hu | Zheng Hu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21265](https://issues.apache.org/jira/browse/HBASE-21265) | Split up TestRSGroups |  Minor | rsgroup, test | Andrew Kyle Purtell | Andrew Kyle Purtell |


