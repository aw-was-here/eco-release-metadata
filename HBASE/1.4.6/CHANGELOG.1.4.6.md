
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

## Release 1.4.6 - Unreleased (as of 2018-07-13)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20733](https://issues.apache.org/jira/browse/HBASE-20733) | QABot should run checkstyle tests if the checkstyle configs change |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-20701](https://issues.apache.org/jira/browse/HBASE-20701) | too much logging when balancer runs from BaseLoadBalancer |  Trivial | Balancer | Monani Mihir | Monani Mihir |
| [HBASE-20826](https://issues.apache.org/jira/browse/HBASE-20826) | Truncate responseInfo attributes on RpcServer WARN messages |  Major | rpc | Sergey Soldatov | Josh Elser |
| [HBASE-20806](https://issues.apache.org/jira/browse/HBASE-20806) | Split style journal for flushes and compactions |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-20651](https://issues.apache.org/jira/browse/HBASE-20651) | Master, prevents hbck or shell command to reassign the split parent region |  Minor | master | huaxiang sun | huaxiang sun |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20689](https://issues.apache.org/jira/browse/HBASE-20689) | Docker fails to install rubocop for precommit |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19377](https://issues.apache.org/jira/browse/HBASE-19377) | Compatibility checker complaining about hash collisions |  Major | community | Andrew Purtell | Mike Drob |
| [HBASE-20723](https://issues.apache.org/jira/browse/HBASE-20723) | Custom hbase.wal.dir results in data loss because we write recovered edits into a different place than where the recovering region server looks for them |  Critical | Recovery, wal | Rohan Pednekar | Ted Yu |
| [HBASE-20770](https://issues.apache.org/jira/browse/HBASE-20770) | WAL cleaner logs way too much; gets clogged when lots of work to do |  Critical | logging | stack | stack |
| [HBASE-20785](https://issues.apache.org/jira/browse/HBASE-20785) | NPE getting metrics in PE testing scans |  Major | Performance | stack | stack |
| [HBASE-20732](https://issues.apache.org/jira/browse/HBASE-20732) | Shutdown scan pool when master is stopped. |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-20769](https://issues.apache.org/jira/browse/HBASE-20769) | getSplits() has a out of bounds problem in TableSnapshotInputFormatImpl |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20789](https://issues.apache.org/jira/browse/HBASE-20789) | TestBucketCache#testCacheBlockNextBlockMetadataMissing is flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20840](https://issues.apache.org/jira/browse/HBASE-20840) | Backport HBASE-20791 'RSGroupBasedLoadBalancer#setClusterMetrics should pass ClusterMetrics to its internalBalancer' to branch-1 |  Major | rsgroup | chenxu | chenxu |
| [HBASE-20808](https://issues.apache.org/jira/browse/HBASE-20808) | Wrong shutdown order between Chores and ChoreService |  Minor | . | Reid Chan | Nihal Jain |
| [HBASE-20771](https://issues.apache.org/jira/browse/HBASE-20771) | PUT operation fail with "No server address listed in hbase:meta for region xxxxx" |  Major | Client | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | . | zhaoyuan | zhaoyuan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20556](https://issues.apache.org/jira/browse/HBASE-20556) | Backport HBASE-16490 to branch-1 |  Major | HFile, snapshots | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |
| [HBASE-19722](https://issues.apache.org/jira/browse/HBASE-19722) | Meta query statistics metrics source |  Major | . | Andrew Purtell | Xu Cang |
| [HBASE-20557](https://issues.apache.org/jira/browse/HBASE-20557) | Backport HBASE-17215 to branch-1 |  Major | HFile, master | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |


