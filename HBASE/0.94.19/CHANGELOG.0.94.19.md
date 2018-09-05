
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

## Release 0.94.19 - 2014-04-28



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10766](https://issues.apache.org/jira/browse/HBASE-10766) | SnapshotCleaner allows to delete referenced files |  Major | snapshots | Matteo Bertozzi | bharath v |
| [HBASE-10805](https://issues.apache.org/jira/browse/HBASE-10805) | Speed up KeyValueHeap.next() a bit |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10847](https://issues.apache.org/jira/browse/HBASE-10847) | 0.94: drop non-secure builds, make security the default |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10848](https://issues.apache.org/jira/browse/HBASE-10848) | Filter SingleColumnValueFilter combined with NullComparator does not work |  Major | Filters | Fabien Le Gallo | Fabien Le Gallo |
| [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | Major compact keeps deletes with future timestamps |  Minor | Compaction, Deletes, regionserver | Max Lapan | Liu Shaohui |
| [HBASE-10807](https://issues.apache.org/jira/browse/HBASE-10807) | -ROOT- still stale in table.jsp if it moved |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10533](https://issues.apache.org/jira/browse/HBASE-10533) | commands.rb is giving wrong error messages on exceptions |  Major | shell | rajeshbabu | rajeshbabu |
| [HBASE-10966](https://issues.apache.org/jira/browse/HBASE-10966) | RowCounter misinterprets column names that have colons in their qualifier |  Trivial | . | Alexandre Normand | Alexandre Normand |
| [HBASE-10845](https://issues.apache.org/jira/browse/HBASE-10845) | Memstore snapshot size isn't updated in DefaultMemStore#rollback() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10312](https://issues.apache.org/jira/browse/HBASE-10312) | Flooding the cluster with administrative actions leads to collapse |  Critical | . | Andrew Purtell | Jean-Daniel Cryans |
| [HBASE-10991](https://issues.apache.org/jira/browse/HBASE-10991) | Port HBASE-10639 'Unload script displays wrong counts (off by one) when unloading regions' to 0.94 |  Trivial | . | Ted Yu | Srikanth Srungarapu |
| [HBASE-11003](https://issues.apache.org/jira/browse/HBASE-11003) | ExportSnapshot is using the wrong fs when staging dir is not in fs.defaultFS |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11030](https://issues.apache.org/jira/browse/HBASE-11030) | HBaseTestingUtility.getMiniHBaseCluster should be able to return null |  Major | . | Lars Hofhansl | Lars Hofhansl |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10782](https://issues.apache.org/jira/browse/HBASE-10782) | Hadoop2 MR tests fail occasionally because of mapreduce.jobhistory.address is no set in job conf |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10969](https://issues.apache.org/jira/browse/HBASE-10969) | TestDistributedLogSplitting fails frequently in 0.94. |  Major | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10982](https://issues.apache.org/jira/browse/HBASE-10982) | TestZKProcedure.testMultiCohortWithMemberTimeoutDuringPrepare fails frequently in 0.94 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10987](https://issues.apache.org/jira/browse/HBASE-10987) | Increase timeout in TestZKLeaderManager.testLeaderSelection |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10989](https://issues.apache.org/jira/browse/HBASE-10989) | TestAccessController needs better timeout |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10996](https://issues.apache.org/jira/browse/HBASE-10996) | TestTableSnapshotInputFormatScan fails frequently on 0.94 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10988](https://issues.apache.org/jira/browse/HBASE-10988) | Properly wait for server in TestThriftServerCmdLine |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11010](https://issues.apache.org/jira/browse/HBASE-11010) | TestChangingEncoding is unnecessarily slow |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11017](https://issues.apache.org/jira/browse/HBASE-11017) | TestHRegionBusyWait.testWritesWhileScanning fails frequently in 0.94 |  Major | . | Lars Hofhansl | stack |
| [HBASE-11022](https://issues.apache.org/jira/browse/HBASE-11022) | Increase timeout for TestHBaseFsck.testSplitDaughtersNotInMeta |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11024](https://issues.apache.org/jira/browse/HBASE-11024) | TestSecureLoadIncrementalHFilesSplitRecovery should wait longer for ACL table |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11029](https://issues.apache.org/jira/browse/HBASE-11029) | Increase wait in TestSplitTransactionOnCluster.split |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11037](https://issues.apache.org/jira/browse/HBASE-11037) | Race condition in TestZKBasedOpenCloseRegion |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11040](https://issues.apache.org/jira/browse/HBASE-11040) | TestAccessController, TestAccessControllerFilter, and TestTablePermissions need to wait longer to ACL table |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11042](https://issues.apache.org/jira/browse/HBASE-11042) | TestForceCacheImportantBlocks OOMs occasionally in 0.94 |  Major | . | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10921](https://issues.apache.org/jira/browse/HBASE-10921) | Port HBASE-10323 'Auto detect data block encoding in HFileOutputFormat' to 0.94 / 0.96 |  Major | . | Ted Yu | Kashif |


