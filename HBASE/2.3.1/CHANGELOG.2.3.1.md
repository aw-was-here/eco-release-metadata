
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

## Release 2.3.1 - 2020-08-19



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24578](https://issues.apache.org/jira/browse/HBASE-24578) | [WAL] Add a parameter to config RingBufferEventHandler's SyncFuture count |  Major | wal | Reid Chan | wenfeiyi666 |
| [HBASE-24747](https://issues.apache.org/jira/browse/HBASE-24747) | Log an ERROR if HBaseSaslRpcServer initialisation fails with an uncaught exception |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24740](https://issues.apache.org/jira/browse/HBASE-24740) | Enable journal logging for HBase snapshot operation |  Minor | master | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24696](https://issues.apache.org/jira/browse/HBASE-24696) | Include JVM information on Web UI under "Software Attributes" |  Minor | UI | Nick Dimiduk | Mingliang Liu |
| [HBASE-24758](https://issues.apache.org/jira/browse/HBASE-24758) | Avoid flooding replication source RSes logs when no sinks are available |  Major | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24777](https://issues.apache.org/jira/browse/HBASE-24777) | InfoServer support ipv6 host and port |  Minor | UI | Yechao Chen | Yechao Chen |
| [HBASE-24757](https://issues.apache.org/jira/browse/HBASE-24757) | ReplicationSink should limit the batch rowcount for batch mutations based on hbase.rpc.rows.warning.threshold |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24669](https://issues.apache.org/jira/browse/HBASE-24669) | Logging of ppid should be consistent across all occurrences |  Minor | Operability, proc-v2 | Nick Dimiduk | niuyulin |
| [HBASE-24722](https://issues.apache.org/jira/browse/HBASE-24722) | Address hbase-shell commands with unintentional return values |  Minor | shell | Elliot Miller | Elliot Miller |
| [HBASE-20226](https://issues.apache.org/jira/browse/HBASE-20226) | Performance Improvement Taking Large Snapshots In Remote Filesystems |  Minor | snapshots | Saad Mufti | Bharath Vissapragada |
| [HBASE-24704](https://issues.apache.org/jira/browse/HBASE-24704) | Make the Table Schema easier to view even there are multiple families |  Major | UI | Zheng Wang | Zheng Wang |
| [HBASE-24821](https://issues.apache.org/jira/browse/HBASE-24821) | Simplify the logic of getRegionInfo in TestFlushFromClient to reduce redundancy code |  Minor | test | Zheng Wang | Zheng Wang |
| [HBASE-24795](https://issues.apache.org/jira/browse/HBASE-24795) | RegionMover should deal with unknown (split/merged) regions |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24823](https://issues.apache.org/jira/browse/HBASE-24823) | Port HBASE-22762 Print the delta between phases in the split/merge/compact/flush transaction journals to master branch |  Minor | . | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-21721](https://issues.apache.org/jira/browse/HBASE-21721) | FSHLog : reduce write#syncs() times |  Major | . | Bo Cui | Bo Cui |
| [HBASE-24824](https://issues.apache.org/jira/browse/HBASE-24824) | Add more stats in PE for read replica |  Minor | PE, read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24709](https://issues.apache.org/jira/browse/HBASE-24709) | Support MoveCostFunction use a lower multiplier in offpeak hours |  Major | Balancer | Zheng Wang | Zheng Wang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24693](https://issues.apache.org/jira/browse/HBASE-24693) | regioninfo#isLast() has a logic error |  Minor | . | Bo Cui | Bo Cui |
| [HBASE-24720](https://issues.apache.org/jira/browse/HBASE-24720) | Meta replicas not cleaned when disabled |  Minor | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-24705](https://issues.apache.org/jira/browse/HBASE-24705) | MetaFixer#fixHoles() does not include the case for read replicas (i.e, replica regions are not created) |  Major | read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24615](https://issues.apache.org/jira/browse/HBASE-24615) | MutableRangeHistogram#updateSnapshotRangeMetrics doesn't calculate the distribution for last bucket. |  Major | metrics | Rushabh Shah | wenfeiyi666 |
| [HBASE-24721](https://issues.apache.org/jira/browse/HBASE-24721) | rename\_rsgroup overwriting the existing rsgroup. |  Major | . | chiranjeevi | Mohammad Arshad |
| [HBASE-24746](https://issues.apache.org/jira/browse/HBASE-24746) | The sort icons overlap the col name in master UI |  Major | UI | Zheng Wang | Zheng Wang |
| [HBASE-24748](https://issues.apache.org/jira/browse/HBASE-24748) | Add hbase.master.balancer.stochastic.moveCost.offpeak to doc as support dynamically change |  Minor | documentation | Zheng Wang | Zheng Wang |
| [HBASE-24714](https://issues.apache.org/jira/browse/HBASE-24714) | Error message is displayed in the UI of table's compaction state if any region of that table is not open. |  Major | Compaction, UI | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-24710](https://issues.apache.org/jira/browse/HBASE-24710) | Incorrect checksum calculation in saveVersion.sh |  Major | scripts | Peter Somogyi | Peter Somogyi |
| [HBASE-24742](https://issues.apache.org/jira/browse/HBASE-24742) | Improve performance of SKIP vs SEEK logic |  Major | Performance, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-22146](https://issues.apache.org/jira/browse/HBASE-22146) | SpaceQuotaViolationPolicy Disable is not working in Namespace level |  Major | . | Uma Maheswari | Surbhi Kochhar |
| [HBASE-24675](https://issues.apache.org/jira/browse/HBASE-24675) | On Master restart all servers are assigned to default rsgroup. |  Major | rsgroup | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24775](https://issues.apache.org/jira/browse/HBASE-24775) | [hbtop] StoreFile size should be rounded off |  Minor | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24752](https://issues.apache.org/jira/browse/HBASE-24752) | NPE/500 accessing webui on master startup |  Minor | master | Nick Dimiduk | wenfeiyi666 |
| [HBASE-24797](https://issues.apache.org/jira/browse/HBASE-24797) | Move log code out of loop |  Minor | Normalizer | Sun Xin | Sun Xin |
| [HBASE-24794](https://issues.apache.org/jira/browse/HBASE-24794) | hbase.rowlock.wait.duration should not be \<= 0 |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-24713](https://issues.apache.org/jira/browse/HBASE-24713) | RS startup with FSHLog throws NPE after HBASE-21751 |  Minor | wal | ramkrishna.s.vasudevan | Gaurav Kanade |
| [HBASE-24767](https://issues.apache.org/jira/browse/HBASE-24767) | Change default to false for HBASE-15519 per-user metrics |  Major | metrics | Michael Stack | Michael Stack |
| [HBASE-24808](https://issues.apache.org/jira/browse/HBASE-24808) | skip empty log cleaner delegate class names (WAS =\> cleaner.CleanerChore: Can NOT create CleanerDelegate= ClassNotFoundException) |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-24788](https://issues.apache.org/jira/browse/HBASE-24788) | Fix the connection leaks on getting hbase admin from unclosed connection |  Major | mapreduce | Sandeep Pal | Sandeep Pal |
| [HBASE-24625](https://issues.apache.org/jira/browse/HBASE-24625) | AsyncFSWAL.getLogFileSizeIfBeingWritten does not return the expected synced file length. |  Critical | Replication, wal | chenglei | chenglei |
| [HBASE-23157](https://issues.apache.org/jira/browse/HBASE-23157) | WAL unflushed seqId tracking may wrong when Durability.ASYNC\_WAL is used |  Major | regionserver, wal | Lijin Bin | Duo Zhang |
| [HBASE-24838](https://issues.apache.org/jira/browse/HBASE-24838) | The pre commit job fails to archive surefire reports |  Critical | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-24844](https://issues.apache.org/jira/browse/HBASE-24844) | Exception on standalone (master) shutdown |  Minor | Zookeeper | Nick Dimiduk | wenfeiyi666 |
| [HBASE-24583](https://issues.apache.org/jira/browse/HBASE-24583) | Normalizer can't actually merge empty regions when neighbor is larger than average size |  Major | master, Normalizer | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24665](https://issues.apache.org/jira/browse/HBASE-24665) | MultiWAL :  Avoid rolling of ALL WALs when one of the WAL needs a roll |  Major | wal | wenfeiyi666 | wenfeiyi666 |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24698](https://issues.apache.org/jira/browse/HBASE-24698) | Turn OFF Canary WebUI as default |  Major | canary | Michael Stack | Michael Stack |
| [HBASE-24846](https://issues.apache.org/jira/browse/HBASE-24846) | Address compaction races in TestFIFOCompactionPolicy |  Major | Compaction, master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24841](https://issues.apache.org/jira/browse/HBASE-24841) | Change the jenkins job urls in our jenkinsfile |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-24715](https://issues.apache.org/jira/browse/HBASE-24715) | Cleanup RELEASENOTES.md in the wake of HBASE-24711 |  Major | community | Nick Dimiduk | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24658](https://issues.apache.org/jira/browse/HBASE-24658) | Update PolicyBasedChaosMonkey to handle uncaught exceptions |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24662](https://issues.apache.org/jira/browse/HBASE-24662) | Update DumpClusterStatusAction to notice changes in region server count |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24835](https://issues.apache.org/jira/browse/HBASE-24835) | Normalizer should log a successful run at INFO level |  Minor | Normalizer | Nick Dimiduk | Nick Dimiduk |


