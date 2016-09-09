
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

## Release 0.94.18 - 2014-03-24



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8604](https://issues.apache.org/jira/browse/HBASE-8604) | improve reporting of incorrect peer address in replication |  Minor | Replication | Roman Shaposhnik | Rekha Joshi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10583](https://issues.apache.org/jira/browse/HBASE-10583) | backport HBASE-8402 to 0.94 - ScanMetrics depends on number of rpc calls to the server. |  Major | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10575](https://issues.apache.org/jira/browse/HBASE-10575) | ReplicationSource thread can't be terminated if it runs into the loop to contact peer's zk ensemble and fails continuously |  Critical | Replication | Honghua Feng | Honghua Feng |
| [HBASE-10614](https://issues.apache.org/jira/browse/HBASE-10614) | Master could not be stopped |  Major | master | Jingcheng Du | Jingcheng Du |
| [HBASE-10598](https://issues.apache.org/jira/browse/HBASE-10598) | Written data can not be read out because MemStore#timeRangeTracker might be updated concurrently |  Critical | regionserver | Jianwei Cui | Jianwei Cui |
| [HBASE-10631](https://issues.apache.org/jira/browse/HBASE-10631) | Avoid extra seek on FileLink open |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10627](https://issues.apache.org/jira/browse/HBASE-10627) | A logic mistake in HRegionServer isHealthy |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-9708](https://issues.apache.org/jira/browse/HBASE-9708) | Improve Snapshot Name Error Message |  Minor | snapshots | Jesse Anderson | Matteo Bertozzi |
| [HBASE-10622](https://issues.apache.org/jira/browse/HBASE-10622) | Improve log and Exceptions in Export Snapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10624](https://issues.apache.org/jira/browse/HBASE-10624) | Fix 2 new findbugs warnings introduced by HBASE-10598 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10594](https://issues.apache.org/jira/browse/HBASE-10594) | Speed up TestRestoreSnapshotFromClient |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10669](https://issues.apache.org/jira/browse/HBASE-10669) | [hbck tool] Usage is wrong for hbck tool for -sidelineCorruptHfiles option |  Minor | hbck | Deepak Sharma | Deepak Sharma |
| [HBASE-10682](https://issues.apache.org/jira/browse/HBASE-10682) | region\_mover.rb throws "can't convert nil into String" for regions moved |  Major | scripts | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10712](https://issues.apache.org/jira/browse/HBASE-10712) | Backport HBASE-8304 to 0.94 and 0.96 |  Major | regionserver | haosdent | haosdent |
| [HBASE-10716](https://issues.apache.org/jira/browse/HBASE-10716) | [Configuration]: hbase.regionserver.region.split.policy should be part of hbase-default.xml |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-9778](https://issues.apache.org/jira/browse/HBASE-9778) | Add hint to ExplicitColumnTracker to avoid seeking |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10718](https://issues.apache.org/jira/browse/HBASE-10718) | TestHLogSplit fails when it sets a KV size to be negative |  Major | wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10731](https://issues.apache.org/jira/browse/HBASE-10731) | Fix environment variables typos in scripts |  Trivial | scripts | Albert Chu | Albert Chu |
| [HBASE-10738](https://issues.apache.org/jira/browse/HBASE-10738) | AssignmentManager should shut down executors on stop |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10722](https://issues.apache.org/jira/browse/HBASE-10722) | [0.94] HRegion.computeHDFSBlocksDistribution does not account for links and reference files. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10642](https://issues.apache.org/jira/browse/HBASE-10642) | Add M/R over snapshots to 0.94 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10745](https://issues.apache.org/jira/browse/HBASE-10745) | Access ShutdownHook#fsShutdownHooks should be synchronized |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10751](https://issues.apache.org/jira/browse/HBASE-10751) | TestHRegion testWritesWhileScanning occasional fail since HBASE-10514 went in |  Major | . | stack | stack |
| [HBASE-10514](https://issues.apache.org/jira/browse/HBASE-10514) | Forward port HBASE-10466, possible data loss when failed flushes |  Critical | . | stack | stack |
| [HBASE-10549](https://issues.apache.org/jira/browse/HBASE-10549) | When there is a hole, LoadIncrementalHFiles will hang in an infinite loop. |  Major | HFile | yuanxinen | yuanxinen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9914](https://issues.apache.org/jira/browse/HBASE-9914) | Port fix for HBASE-9836 'Intermittent TestRegionObserverScannerOpenHook#testRegionObserverCompactionTimeStacking failure' to 0.94 |  Major | . | Ted Yu | takeshi.miao |


