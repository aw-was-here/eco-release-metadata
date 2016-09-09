
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

## Release 0.98.5 - 2014-08-11



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11480](https://issues.apache.org/jira/browse/HBASE-11480) | ClientScanner might not close the HConnection created in construction |  Trivial | Client, Scanners | Jianwei Cui | Jianwei Cui |
| [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | VM OPTS for shell only |  Major | . | stack | Andrew Purtell |
| [HBASE-7910](https://issues.apache.org/jira/browse/HBASE-7910) | Dont use reflection for security |  Major | . | Enis Soztutar | Mike Drob |
| [HBASE-11557](https://issues.apache.org/jira/browse/HBASE-11557) | Counter.class should always be added as dependencyJar |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11566](https://issues.apache.org/jira/browse/HBASE-11566) | make ExportSnapshot extendable by removing 'final' |  Minor | snapshots | Demai Ni | Andrew Purtell |
| [HBASE-11623](https://issues.apache.org/jira/browse/HBASE-11623) | mutateRowsWithLocks might require updatesLock.readLock with waitTime=0 |  Minor | regionserver | Jianwei Cui | Jianwei Cui |
| [HBASE-11516](https://issues.apache.org/jira/browse/HBASE-11516) | Track time spent in executing coprocessors in each region. |  Minor | Coprocessors | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11583](https://issues.apache.org/jira/browse/HBASE-11583) | Refactoring out the configuration changes for enabling VisibilityLabels in the unit tests. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-3270](https://issues.apache.org/jira/browse/HBASE-3270) | When we create the .version file, we should create it in a tmp location and then move it into place |  Minor | master | stack | Andrew Purtell |
| [HBASE-11649](https://issues.apache.org/jira/browse/HBASE-11649) | Add shortcut commands to bin/hbase for test tools |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11650](https://issues.apache.org/jira/browse/HBASE-11650) | Write hbase.id to a temporary location and move into place |  Minor | . | Andrew Purtell | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11518](https://issues.apache.org/jira/browse/HBASE-11518) | doc update for how to create non-shared HConnection |  Minor | documentation | Qiang Tian | Qiang Tian |
| [HBASE-11534](https://issues.apache.org/jira/browse/HBASE-11534) | Remove broken JAVA\_HOME autodetection in hbase-config.sh |  Minor | . | Andrew Purtell | Esteban Gutierrez |
| [HBASE-11537](https://issues.apache.org/jira/browse/HBASE-11537) | Avoid synchronization on instances of ConcurrentMap |  Minor | . | Mike Drob | Mike Drob |
| [HBASE-11545](https://issues.apache.org/jira/browse/HBASE-11545) | mapred.TableSnapshotInputFormat is missing InterfaceAudience annotation |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11541](https://issues.apache.org/jira/browse/HBASE-11541) | Wrong result when scaning meta with startRow |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11561](https://issues.apache.org/jira/browse/HBASE-11561) | deprecate ImmutableBytesWritable.getSize and replace with getLength |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11064](https://issues.apache.org/jira/browse/HBASE-11064) | Odd behaviors of TableName for empty namespace |  Trivial | . | Hiroshi Ikeda | Rekha Joshi |
| [HBASE-11555](https://issues.apache.org/jira/browse/HBASE-11555) | TableSnapshotRegionSplit should be public |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11551](https://issues.apache.org/jira/browse/HBASE-11551) | BucketCache$WriterThread.run() doesn't handle exceptions correctly |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11565](https://issues.apache.org/jira/browse/HBASE-11565) | Stale connection could stay for a while |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11579](https://issues.apache.org/jira/browse/HBASE-11579) | CopyTable should check endtime value only if != 0 |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11586](https://issues.apache.org/jira/browse/HBASE-11586) | HFile's HDFS op latency sampling code is not used |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11388](https://issues.apache.org/jira/browse/HBASE-11388) | The order parameter is wrong when invoking the constructor of the ReplicationPeer In the method "getPeer" of the class ReplicationPeersZKImpl |  Minor | Replication | Qianxi Zhang | Qianxi Zhang |
| [HBASE-11588](https://issues.apache.org/jira/browse/HBASE-11588) | RegionServerMetricsWrapperRunnable misused the 'period' parameter |  Minor | metrics | Victor Xu | Victor Xu |
| [HBASE-11360](https://issues.apache.org/jira/browse/HBASE-11360) | SnapshotFileCache causes too many cache refreshes |  Major | . | churro morales | churro morales |
| [HBASE-11609](https://issues.apache.org/jira/browse/HBASE-11609) | LoadIncrementalHFiles fails if the namespace is specified |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+ |  Major | mapreduce, Scanners | Ishan Chhabra | Ishan Chhabra |
| [HBASE-11594](https://issues.apache.org/jira/browse/HBASE-11594) | Unhandled NoNodeException in distributed log replay mode |  Minor | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11620](https://issues.apache.org/jira/browse/HBASE-11620) | Record the class name of Writer in WAL header so that only proper Reader can open the WAL file |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-11632](https://issues.apache.org/jira/browse/HBASE-11632) | Region split needs to clear force split flag at the end of SplitRequest run |  Minor | regionserver | Jerry He | Jerry He |
| [HBASE-11654](https://issues.apache.org/jira/browse/HBASE-11654) | WAL Splitting dirs are not deleted after replay. |  Major | master, wal | Victor Xu | Victor Xu |
| [HBASE-11662](https://issues.apache.org/jira/browse/HBASE-11662) | Launching shell with long-form --debug fails |  Major | shell | Sean Busbey | Sean Busbey |
| [HBASE-11668](https://issues.apache.org/jira/browse/HBASE-11668) | Re-add HBASE\_LIBRARY\_PATH to bin/hbase |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11559](https://issues.apache.org/jira/browse/HBASE-11559) | Add dumping of DATA block usage to the BlockCache JSON report. |  Major | metrics | stack | stack |
| [HBASE-11384](https://issues.apache.org/jira/browse/HBASE-11384) | [Visibility Controller]Check for users covering authorizations for every mutation |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11651](https://issues.apache.org/jira/browse/HBASE-11651) | Add conf which disables MetaMigrationConvertingToPB check (for experts only) |  Major | master | stack | stack |
| [HBASE-11318](https://issues.apache.org/jira/browse/HBASE-11318) | Classes in security subpackages missing @InterfaceAudience annotations. |  Major | security | Jonathan Hsieh | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11621](https://issues.apache.org/jira/browse/HBASE-11621) | Make MiniDFSCluster run faster |  Major | . | Ted Yu | Ted Yu |


