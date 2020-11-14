
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

## Release 1.4.6 - 2018-07-30



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20733](https://issues.apache.org/jira/browse/HBASE-20733) | QABot should run checkstyle tests if the checkstyle configs change |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-20701](https://issues.apache.org/jira/browse/HBASE-20701) | too much logging when balancer runs from BaseLoadBalancer |  Trivial | Balancer | Mihir Monani | Mihir Monani |
| [HBASE-20826](https://issues.apache.org/jira/browse/HBASE-20826) | Truncate responseInfo attributes on RpcServer WARN messages |  Major | rpc | Sergey Soldatov | Josh Elser |
| [HBASE-20806](https://issues.apache.org/jira/browse/HBASE-20806) | Split style journal for flushes and compactions |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-20651](https://issues.apache.org/jira/browse/HBASE-20651) | Master, prevents hbck or shell command to reassign the split parent region |  Minor | master | Hua Xiang | Hua Xiang |
| [HBASE-20401](https://issues.apache.org/jira/browse/HBASE-20401) | Make \`MAX\_WAIT\` and \`waitIfNotFinished\` in CleanerContext configurable |  Minor | master | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20689](https://issues.apache.org/jira/browse/HBASE-20689) | Docker fails to install rubocop for precommit |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19377](https://issues.apache.org/jira/browse/HBASE-19377) | Compatibility checker complaining about hash collisions |  Major | community | Andrew Kyle Purtell | Mike Drob |
| [HBASE-20723](https://issues.apache.org/jira/browse/HBASE-20723) | Custom hbase.wal.dir results in data loss because we write recovered edits into a different place than where the recovering region server looks for them |  Critical | Recovery, wal | Rohan Pednekar | Ted Yu |
| [HBASE-20770](https://issues.apache.org/jira/browse/HBASE-20770) | WAL cleaner logs way too much; gets clogged when lots of work to do |  Critical | logging | Michael Stack | Michael Stack |
| [HBASE-20785](https://issues.apache.org/jira/browse/HBASE-20785) | NPE getting metrics in PE testing scans |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20732](https://issues.apache.org/jira/browse/HBASE-20732) | Shutdown scan pool when master is stopped. |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-20769](https://issues.apache.org/jira/browse/HBASE-20769) | getSplits() has a out of bounds problem in TableSnapshotInputFormatImpl |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20789](https://issues.apache.org/jira/browse/HBASE-20789) | TestBucketCache#testCacheBlockNextBlockMetadataMissing is flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20840](https://issues.apache.org/jira/browse/HBASE-20840) | Backport HBASE-20791 'RSGroupBasedLoadBalancer#setClusterMetrics should pass ClusterMetrics to its internalBalancer' to branch-1 |  Major | rsgroup | chenxu | chenxu |
| [HBASE-20808](https://issues.apache.org/jira/browse/HBASE-20808) | Wrong shutdown order between Chores and ChoreService |  Minor | . | Reid Chan | Nihal Jain |
| [HBASE-20771](https://issues.apache.org/jira/browse/HBASE-20771) | PUT operation fail with "No server address listed in hbase:meta for region xxxxx" |  Major | Client | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-20889](https://issues.apache.org/jira/browse/HBASE-20889) | PE scan is failing with NullPointerException |  Major | . | Vikas Vishwakarma | Ted Yu |
| [HBASE-20855](https://issues.apache.org/jira/browse/HBASE-20855) | PeerConfigTracker only supporting one listener will cause problem when there is a recovered replication queue |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-17885](https://issues.apache.org/jira/browse/HBASE-17885) | Backport HBASE-15871 to branch-1 |  Major | Scanners | ramkrishna.s.vasudevan | Toshihiro Suzuki |
| [HBASE-20908](https://issues.apache.org/jira/browse/HBASE-20908) | Infinite loop on regionserver if region replica are reduced |  Major | read replicas | Ankit Singhal | Ankit Singhal |
| [HBASE-20230](https://issues.apache.org/jira/browse/HBASE-20230) | Incorrrect log message in RSRpcService |  Minor | . | Vishal Khandelwal | Xu Cang |
| [HBASE-20565](https://issues.apache.org/jira/browse/HBASE-20565) | ColumnRangeFilter combined with ColumnPaginationFilter can produce incorrect result since 1.4 |  Major | Filters | Jerry He | Zheng Hu |
| [HBASE-20917](https://issues.apache.org/jira/browse/HBASE-20917) | MetaTableMetrics#stop references uninitialized requestsMap for non-meta region |  Major | meta, metrics | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20556](https://issues.apache.org/jira/browse/HBASE-20556) | Backport HBASE-16490 to branch-1 |  Major | HFile, snapshots | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20557](https://issues.apache.org/jira/browse/HBASE-20557) | Backport HBASE-17215 to branch-1 |  Major | HFile, master | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20558](https://issues.apache.org/jira/browse/HBASE-20558) | Backport HBASE-17854 to branch-1 |  Major | HFile | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20559](https://issues.apache.org/jira/browse/HBASE-20559) | Backport HBASE-18083 to branch-1 |  Major | HFile | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-19722](https://issues.apache.org/jira/browse/HBASE-19722) | Meta query statistics metrics source |  Critical | Coprocessors, meta, metrics, Operability | Andrew Kyle Purtell | Xu Cang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20555](https://issues.apache.org/jira/browse/HBASE-20555) | Backport HBASE-18083 and related changes in branch-1 |  Major | HFile, snapshots | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | Replace usage of our Base64 implementation with java.util.Base64 |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20905](https://issues.apache.org/jira/browse/HBASE-20905) | branch-1 docker build fails |  Major | build | Jingyun Tian | Mike Drob |
| [HBASE-20931](https://issues.apache.org/jira/browse/HBASE-20931) | [branch-1] Add -Dhttps.protocols=TLSv1.2 to Maven command line in make\_rc.sh |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


