
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

## Release 0.98.1 - 2014-04-06

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8751](https://issues.apache.org/jira/browse/HBASE-8751) | Enable peer cluster to choose/change the ColumnFamilies/Tables it really want to replicate from a source cluster |  Major | Replication | Honghua Feng | Honghua Feng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10887](https://issues.apache.org/jira/browse/HBASE-10887) | tidy ThriftUtilities format |  Trivial | Thrift | Liang Xie | Liang Xie |
| [HBASE-10812](https://issues.apache.org/jira/browse/HBASE-10812) | Backport HBASE-9426(Make custom distributed barrier procedure pluggable)  to 0.98.x |  Major | . | Demai Ni | Demai Ni |
| [HBASE-10797](https://issues.apache.org/jira/browse/HBASE-10797) | Add support for -h and --help to rolling\_restart.sh and fix the usage string output |  Trivial | Operability | stack | stack |
| [HBASE-10769](https://issues.apache.org/jira/browse/HBASE-10769) | hbase/bin/hbase-cleanup.sh has wrong usage string |  Trivial | Usability | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [HBASE-10744](https://issues.apache.org/jira/browse/HBASE-10744) | AM#CloseRegion no need to retry on FailedServerException |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10693](https://issues.apache.org/jira/browse/HBASE-10693) | Correct declarations of Atomic\* fields from 'volatile' to 'final' |  Minor | io, master | Honghua Feng | Honghua Feng |
| [HBASE-10678](https://issues.apache.org/jira/browse/HBASE-10678) | Make verifyrep tool implement toolrunner |  Minor | Replication | bharath v | bharath v |
| [HBASE-10638](https://issues.apache.org/jira/browse/HBASE-10638) | Improve error message when there is no region server available for move |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10597](https://issues.apache.org/jira/browse/HBASE-10597) | IOEngine#read() should return the number of bytes transferred |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10592](https://issues.apache.org/jira/browse/HBASE-10592) | Refactor PerformanceEvaluation tool |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10589](https://issues.apache.org/jira/browse/HBASE-10589) | Reduce unnecessary TestRowProcessorEndpoint resource usage |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10570](https://issues.apache.org/jira/browse/HBASE-10570) | Allow overrides of Surefire secondPartForkMode and testFailureIgnore |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10518](https://issues.apache.org/jira/browse/HBASE-10518) | DirectMemoryUtils.getDirectMemoryUsage spams when none is configured |  Major | . | Jean-Daniel Cryans | Nick Dimiduk |
| [HBASE-10511](https://issues.apache.org/jira/browse/HBASE-10511) | Add latency percentiles on PerformanceEvaluation |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10498](https://issues.apache.org/jira/browse/HBASE-10498) | Add new APIs to load balancer interface |  Major | Balancer | rajeshbabu | rajeshbabu |
| [HBASE-10487](https://issues.apache.org/jira/browse/HBASE-10487) | Avoid allocating new KeyValue and according bytes-copying for appended kvs which don't have existing values |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10419](https://issues.apache.org/jira/browse/HBASE-10419) | Add multiget support to PerformanceEvaluation |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10389](https://issues.apache.org/jira/browse/HBASE-10389) | Add namespace help info in table related shell commands |  Major | shell | Jerry He | Jerry He |
| [HBASE-9999](https://issues.apache.org/jira/browse/HBASE-9999) | Add support for small reverse scan |  Major | . | Ted Yu | Nicolas Liochon |
| [HBASE-9501](https://issues.apache.org/jira/browse/HBASE-9501) | Provide throttling for replication |  Major | Replication | Honghua Feng | Honghua Feng |
| [HBASE-8604](https://issues.apache.org/jira/browse/HBASE-8604) | improve reporting of incorrect peer address in replication |  Minor | Replication | Roman Shaposhnik | Rekha Joshi |
| [HBASE-8076](https://issues.apache.org/jira/browse/HBASE-8076) | add better doc for HBaseAdmin#offline API. |  Minor | Admin | rajeshbabu | rajeshbabu |
| [HBASE-7849](https://issues.apache.org/jira/browse/HBASE-7849) | Provide administrative limits around bulkloads of files into a single region |  Major | regionserver | Harsh J | Jimmy Xiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10863](https://issues.apache.org/jira/browse/HBASE-10863) | Scan doesn't return rows for user who has authorization by visibility label in secure deployment |  Major | security | Ted Yu | Ted Yu |
| [HBASE-10862](https://issues.apache.org/jira/browse/HBASE-10862) | Update config field names in hbase-default.xml description for hbase.hregion.memstore.block.multiplier |  Trivial | documentation | Albert Chu | Albert Chu |
| [HBASE-10838](https://issues.apache.org/jira/browse/HBASE-10838) | Insufficient AccessController covering permission check |  Critical | security | Anoop Sam John | Anoop Sam John |
| [HBASE-10833](https://issues.apache.org/jira/browse/HBASE-10833) | Region assignment may fail during cluster start up |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10829](https://issues.apache.org/jira/browse/HBASE-10829) | Flush is skipped after log replay if the last recovered edits file is skipped |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10825](https://issues.apache.org/jira/browse/HBASE-10825) | Add copy-from option to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10809](https://issues.apache.org/jira/browse/HBASE-10809) | HBaseAdmin#deleteTable fails when META region happen to move around same time |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10806](https://issues.apache.org/jira/browse/HBASE-10806) | Two protos missing in hbase-protocol/pom.xml |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10805](https://issues.apache.org/jira/browse/HBASE-10805) | Speed up KeyValueHeap.next() a bit |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10804](https://issues.apache.org/jira/browse/HBASE-10804) | Add a validations step to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10802](https://issues.apache.org/jira/browse/HBASE-10802) | CellComparator.compareStaticIgnoreMvccVersion compares type wrongly |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10799](https://issues.apache.org/jira/browse/HBASE-10799) | [WINDOWS] TestImportTSVWithVisibilityLabels.testBulkOutputWithTsvImporterTextMapper  fails on windows |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10793](https://issues.apache.org/jira/browse/HBASE-10793) | AuthFailed as a valid zookeeper state |  Major | Zookeeper | Demai Ni | Demai Ni |
| [HBASE-10770](https://issues.apache.org/jira/browse/HBASE-10770) | Don't exit from the Canary daemon mode if no regions are present |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10766](https://issues.apache.org/jira/browse/HBASE-10766) | SnapshotCleaner allows to delete referenced files |  Major | snapshots | Matteo Bertozzi | bharath v |
| [HBASE-10763](https://issues.apache.org/jira/browse/HBASE-10763) | Backport HBASE-10549(When there is a hole, LoadIncrementalHFiles will hang in an infinite loop.) to 0.98 |  Major | HFile | rajeshbabu | rajeshbabu |
| [HBASE-10762](https://issues.apache.org/jira/browse/HBASE-10762) | clone\_snapshot doesn't check for missing namespace |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10760](https://issues.apache.org/jira/browse/HBASE-10760) | Wrong methods' names in ClusterLoadState class |  Minor | Balancer | Victor Xu | Victor Xu |
| [HBASE-10751](https://issues.apache.org/jira/browse/HBASE-10751) | TestHRegion testWritesWhileScanning occasional fail since HBASE-10514 went in |  Major | . | stack | stack |
| [HBASE-10749](https://issues.apache.org/jira/browse/HBASE-10749) | CellComparator.compareStatic() compares type wrongly |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10745](https://issues.apache.org/jira/browse/HBASE-10745) | Access ShutdownHook#fsShutdownHooks should be synchronized |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10739](https://issues.apache.org/jira/browse/HBASE-10739) | RS web UI NPE if master shuts down sooner |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10738](https://issues.apache.org/jira/browse/HBASE-10738) | AssignmentManager should shut down executors on stop |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10737](https://issues.apache.org/jira/browse/HBASE-10737) | HConnectionImplementation should stop RpcClient on close |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10736](https://issues.apache.org/jira/browse/HBASE-10736) | Fix Javadoc warnings introduced in HBASE-10169 |  Trivial | . | rajeshbabu | Andrew Purtell |
| [HBASE-10735](https://issues.apache.org/jira/browse/HBASE-10735) | [WINDOWS] Set -XX:MaxPermSize for unit tests |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10731](https://issues.apache.org/jira/browse/HBASE-10731) | Fix environment variables typos in scripts |  Trivial | scripts | Albert Chu | Albert Chu |
| [HBASE-10726](https://issues.apache.org/jira/browse/HBASE-10726) | Fix java.lang.ArrayIndexOutOfBoundsException in StochasticLoadBalancer$LocalityBasedCandidateGenerator |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10718](https://issues.apache.org/jira/browse/HBASE-10718) | TestHLogSplit fails when it sets a KV size to be negative |  Major | wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10716](https://issues.apache.org/jira/browse/HBASE-10716) | [Configuration]: hbase.regionserver.region.split.policy should be part of hbase-default.xml |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10706](https://issues.apache.org/jira/browse/HBASE-10706) | Disable writeToWal in tests where possible |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10694](https://issues.apache.org/jira/browse/HBASE-10694) | TableSkewCostFunction#cost() casts integral division result to double |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10686](https://issues.apache.org/jira/browse/HBASE-10686) | [WINDOWS] TestStripeStoreFileManager fails on windows |  Minor | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10685](https://issues.apache.org/jira/browse/HBASE-10685) | [WINDOWS] TestKeyStoreKeyProvider fails on windows |  Minor | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10682](https://issues.apache.org/jira/browse/HBASE-10682) | region\_mover.rb throws "can't convert nil into String" for regions moved |  Major | scripts | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10679](https://issues.apache.org/jira/browse/HBASE-10679) | Both clients get wrong scan results if the first scanner expires and the second scanner is created with the same scannerId on the same region |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10677](https://issues.apache.org/jira/browse/HBASE-10677) | boundaries check in hbck throwing IllegalArgumentException |  Major | hbck | rajeshbabu | rajeshbabu |
| [HBASE-10675](https://issues.apache.org/jira/browse/HBASE-10675) | IntegrationTestIngestWithACL should allow User to be passed as Parameter |  Major | . | Ted Yu | ramkrishna.s.vasudevan |
| [HBASE-10669](https://issues.apache.org/jira/browse/HBASE-10669) | [hbck tool] Usage is wrong for hbck tool for -sidelineCorruptHfiles option |  Minor | hbck | Deepak Sharma | Deepak Sharma |
| [HBASE-10666](https://issues.apache.org/jira/browse/HBASE-10666) | TestMasterCoprocessorExceptionWithAbort hangs at shutdown |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10665](https://issues.apache.org/jira/browse/HBASE-10665) | TestCompaction and TestCompactionWithCoprocessor run too long |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10662](https://issues.apache.org/jira/browse/HBASE-10662) | RegionScanner is never closed if the region has been moved-out or re-opened when performing scan request |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10660](https://issues.apache.org/jira/browse/HBASE-10660) | MR over snapshots can OOM when alternative blockcache is enabled |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10656](https://issues.apache.org/jira/browse/HBASE-10656) |  high-scale-lib's Counter depends on Oracle (Sun) JRE, and also has some bug |  Minor | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-10644](https://issues.apache.org/jira/browse/HBASE-10644) | TestSecureExportSnapshot#testExportFileSystemState fails on hadoop-1 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10639](https://issues.apache.org/jira/browse/HBASE-10639) | Unload script displays wrong counts (off by one) when unloading regions |  Trivial | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10632](https://issues.apache.org/jira/browse/HBASE-10632) | Region lost in limbo after ArrayIndexOutOfBoundsException during assignment |  Major | Region Assignment | Nick Dimiduk | Enis Soztutar |
| [HBASE-10631](https://issues.apache.org/jira/browse/HBASE-10631) | Avoid extra seek on FileLink open |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10627](https://issues.apache.org/jira/browse/HBASE-10627) | A logic mistake in HRegionServer isHealthy |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10624](https://issues.apache.org/jira/browse/HBASE-10624) | Fix 2 new findbugs warnings introduced by HBASE-10598 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10622](https://issues.apache.org/jira/browse/HBASE-10622) | Improve log and Exceptions in Export Snapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10621](https://issues.apache.org/jira/browse/HBASE-10621) | Unable to grant user permission to namespace |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10618](https://issues.apache.org/jira/browse/HBASE-10618) | User should not be allowed to disable/drop visibility labels table |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10614](https://issues.apache.org/jira/browse/HBASE-10614) | Master could not be stopped |  Major | master | Jingcheng Du | Jingcheng Du |
| [HBASE-10608](https://issues.apache.org/jira/browse/HBASE-10608) | Acquire the FS Delegation Token for Secure ExportSnapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10604](https://issues.apache.org/jira/browse/HBASE-10604) | Fix parseArgs javadoc |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-10600](https://issues.apache.org/jira/browse/HBASE-10600) | HTable#batch() should perform validation on empty Put |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10598](https://issues.apache.org/jira/browse/HBASE-10598) | Written data can not be read out because MemStore#timeRangeTracker might be updated concurrently |  Critical | regionserver | cuijianwei | cuijianwei |
| [HBASE-10594](https://issues.apache.org/jira/browse/HBASE-10594) | Speed up TestRestoreSnapshotFromClient |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10587](https://issues.apache.org/jira/browse/HBASE-10587) | Master metrics clusterRequests is wrong |  Minor | master, metrics | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10586](https://issues.apache.org/jira/browse/HBASE-10586) | hadoop2-compat IPC metric registred twice |  Major | metrics | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10585](https://issues.apache.org/jira/browse/HBASE-10585) | Avoid early creation of Node objects in LRUDictionary.BidirectionalLRUMap |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10582](https://issues.apache.org/jira/browse/HBASE-10582) | 0.94-\>0.96 Upgrade: ACL can't be repopulated when ACL table contains row for table '-ROOT' or '.META.' |  Critical | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10581](https://issues.apache.org/jira/browse/HBASE-10581) | ACL znode are left without PBed during upgrading hbase0.94\* to hbase0.96+ |  Critical | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10580](https://issues.apache.org/jira/browse/HBASE-10580) | IntegrationTestingUtility#restoreCluster leak resource when running in a mini cluster mode |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10579](https://issues.apache.org/jira/browse/HBASE-10579) | [Documentation]: ExportSnapshot tool package incorrectly documented |  Minor | documentation, snapshots | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10575](https://issues.apache.org/jira/browse/HBASE-10575) | ReplicationSource thread can't be terminated if it runs into the loop to contact peer's zk ensemble and fails continuously |  Critical | Replication | Honghua Feng | Honghua Feng |
| [HBASE-10567](https://issues.apache.org/jira/browse/HBASE-10567) | Add overwrite manifest option to ExportSnapshot |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10565](https://issues.apache.org/jira/browse/HBASE-10565) | FavoredNodesPlan accidentally uses an internal Netty type |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10564](https://issues.apache.org/jira/browse/HBASE-10564) | HRegionServer.nextLong should be removed since it's not used anywhere, or should be used somewhere it meant to |  Minor | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10563](https://issues.apache.org/jira/browse/HBASE-10563) | Set name for FlushHandler thread |  Major | regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-10556](https://issues.apache.org/jira/browse/HBASE-10556) | Possible data loss due to non-handled DroppedSnapshotException for user-triggered flush from client/shell |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10552](https://issues.apache.org/jira/browse/HBASE-10552) | HFilePerformanceEvaluation.GaussianRandomReadBenchmark fails sometimes. |  Minor | . | Lars Hofhansl |  |
| [HBASE-10548](https://issues.apache.org/jira/browse/HBASE-10548) | Correct commons-math dependency version |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10547](https://issues.apache.org/jira/browse/HBASE-10547) | TestFixedLengthWrapper#testReadWrite occasionally fails with the IBM JDK |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10546](https://issues.apache.org/jira/browse/HBASE-10546) | Two scanner objects are open for each hbase map task but only one scanner object is closed |  Major | . | Vasu Mariyala | Vasu Mariyala |
| [HBASE-10545](https://issues.apache.org/jira/browse/HBASE-10545) | RS Hangs waiting on region to close on shutdown; has to timeout before can go down |  Major | . | stack | stack |
| [HBASE-10539](https://issues.apache.org/jira/browse/HBASE-10539) | HRegion.addAndGetGlobalMemstoreSize returns previous size |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10537](https://issues.apache.org/jira/browse/HBASE-10537) | Let the ExportSnapshot mapper fail and retry on error |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10534](https://issues.apache.org/jira/browse/HBASE-10534) | Rowkey in TsvImporterTextMapper initializing with wrong length |  Major | mapreduce | rajeshbabu | rajeshbabu |
| [HBASE-10527](https://issues.apache.org/jira/browse/HBASE-10527) | TestTokenAuthentication fails with the IBM JDK |  Minor | . | Andrew Purtell | Gary Helmling |
| [HBASE-10514](https://issues.apache.org/jira/browse/HBASE-10514) | Forward port HBASE-10466, possible data loss when failed flushes |  Critical | . | stack | stack |
| [HBASE-10501](https://issues.apache.org/jira/browse/HBASE-10501) | Improve IncreasingToUpperBoundRegionSplitPolicy to avoid too many regions |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10500](https://issues.apache.org/jira/browse/HBASE-10500) | Some tools OOM when BucketCache is enabled |  Major | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10495](https://issues.apache.org/jira/browse/HBASE-10495) | upgrade script is printing usage two times with help option. |  Minor | Usability | rajeshbabu | rajeshbabu |
| [HBASE-10493](https://issues.apache.org/jira/browse/HBASE-10493) | InclusiveStopFilter#filterKeyValue() should perform filtering on row key |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10486](https://issues.apache.org/jira/browse/HBASE-10486) | ProtobufUtil Append & Increment deserialization lost cell level timestamp |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10485](https://issues.apache.org/jira/browse/HBASE-10485) | PrefixFilter#filterKeyValue() should perform filtering on row key |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10482](https://issues.apache.org/jira/browse/HBASE-10482) | ReplicationSyncUp doesn't clean up its ZK, needed for tests |  Major | Replication | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10481](https://issues.apache.org/jira/browse/HBASE-10481) | API Compatibility JDiff script does not properly handle arguments in reverse order |  Minor | test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10476](https://issues.apache.org/jira/browse/HBASE-10476) | HBase Master log grows very fast after stopped hadoop (due to connection exception) |  Major | . | Demai Ni | Demai Ni |
| [HBASE-10452](https://issues.apache.org/jira/browse/HBASE-10452) | Fix potential bugs in exception handlers |  Major | Client, master, regionserver, util | Ding Yuan | Ding Yuan |
| [HBASE-10451](https://issues.apache.org/jira/browse/HBASE-10451) | Enable back Tag compression on HFiles |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10436](https://issues.apache.org/jira/browse/HBASE-10436) | restore regionserver lists removed from hbase 0.96+ jmx |  Critical | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10432](https://issues.apache.org/jira/browse/HBASE-10432) | Rpc retries non-recoverable error |  Minor | IPC/RPC | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10413](https://issues.apache.org/jira/browse/HBASE-10413) | Tablesplit.getLength returns 0 |  Major | Client, mapreduce | Lukas Nalezenec | Lukas Nalezenec |
| [HBASE-10313](https://issues.apache.org/jira/browse/HBASE-10313) | Duplicate servlet-api jars in hbase 0.96.0 |  Critical | . | stack | stack |
| [HBASE-10117](https://issues.apache.org/jira/browse/HBASE-10117) | Avoid synchronization in HRegionScannerImpl.isFilterDone |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10097](https://issues.apache.org/jira/browse/HBASE-10097) | Remove a region name string creation in HRegion#nextInternal |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10080](https://issues.apache.org/jira/browse/HBASE-10080) | Unnecessary call to locateRegion when creating an HTable instance |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9990](https://issues.apache.org/jira/browse/HBASE-9990) | HTable uses the conf for each "newCaller" |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9778](https://issues.apache.org/jira/browse/HBASE-9778) | Add hint to ExplicitColumnTracker to avoid seeking |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9721](https://issues.apache.org/jira/browse/HBASE-9721) | RegionServer should not accept regionOpen RPC intended for another(previous) server |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9719](https://issues.apache.org/jira/browse/HBASE-9719) | Premptive Call Me Maybe HBase |  Major | . | stack | Robert Yokota |
| [HBASE-9708](https://issues.apache.org/jira/browse/HBASE-9708) | Improve Snapshot Name Error Message |  Minor | snapshots | Jesse Anderson | Matteo Bertozzi |
| [HBASE-9294](https://issues.apache.org/jira/browse/HBASE-9294) | NPE in /rs-status during RS shutdown |  Minor | regionserver | Steve Loughran | Rekha Joshi |
| [HBASE-8803](https://issues.apache.org/jira/browse/HBASE-8803) | region\_mover.rb should move multiple regions at a time |  Major | Usability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8304](https://issues.apache.org/jira/browse/HBASE-8304) | Bulkload fails to remove files if fs.default.name / fs.defaultFS is configured without default port |  Major | HFile, regionserver | Raymond Liu | haosdent |
| [HBASE-6642](https://issues.apache.org/jira/browse/HBASE-6642) | enable\_all,disable\_all,drop\_all can call "list" command with regex directly. |  Major | shell | Y. SREENIVASULU REDDY | Matteo Bertozzi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10868](https://issues.apache.org/jira/browse/HBASE-10868) | TestAtomicOperation should close HRegion instance after each subtest |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10852](https://issues.apache.org/jira/browse/HBASE-10852) | TestDistributedLogSplitting#testDisallowWritesInRecovering occasionally fails |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10828](https://issues.apache.org/jira/browse/HBASE-10828) | TestRegionObserverInterface#testHBase3583 should wait for all regions to be assigned |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10782](https://issues.apache.org/jira/browse/HBASE-10782) | Hadoop2 MR tests fail occasionally because of mapreduce.jobhistory.address is no set in job conf |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10767](https://issues.apache.org/jira/browse/HBASE-10767) | Load balancer may interfere with tests in TestHBaseFsck |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10764](https://issues.apache.org/jira/browse/HBASE-10764) | TestLoadIncrementalHFilesSplitRecovery#testBulkLoadPhaseFailure takes too long |  Minor | test | rajeshbabu | rajeshbabu |
| [HBASE-10649](https://issues.apache.org/jira/browse/HBASE-10649) | TestMasterMetrics fails occasionally |  Major | . | Ted Yu | Jimmy Xiang |
| [HBASE-10543](https://issues.apache.org/jira/browse/HBASE-10543) | Two rare test failures with TestLogsCleaner and TestSplitLogWorker |  Minor | . | Jimmy Xiang | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10741](https://issues.apache.org/jira/browse/HBASE-10741) | Deprecate HTablePool and HTableFactory |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10723](https://issues.apache.org/jira/browse/HBASE-10723) | Convert TestExplicitColumnTracker to junit4 test |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10717](https://issues.apache.org/jira/browse/HBASE-10717) | TestFSHDFSUtils#testIsSameHdfs fails with IllegalArgumentException running against hadoop 2.3 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10697](https://issues.apache.org/jira/browse/HBASE-10697) | Convert TestSimpleTotalOrderPartitioner to junit4 test |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10651](https://issues.apache.org/jira/browse/HBASE-10651) | Fix incorrect handling of IE that restores current thread's interrupt status within while/for loops in Replication |  Major | regionserver, Replication | Honghua Feng | Honghua Feng |
| [HBASE-10526](https://issues.apache.org/jira/browse/HBASE-10526) | Using Cell instead of KeyValue in HFileOutputFormat |  Major | mapreduce | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10169](https://issues.apache.org/jira/browse/HBASE-10169) | Batch coprocessor |  Major | Coprocessors | Jingcheng Du | Jingcheng Du |
| [HBASE-9966](https://issues.apache.org/jira/browse/HBASE-9966) | Create IntegrationTest for Online Bloom Filter Change |  Major | HFile, test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-5175](https://issues.apache.org/jira/browse/HBASE-5175) | Add DoubleColumnInterpreter |  Major | . | Ted Yu | Julian Wissmann |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10786](https://issues.apache.org/jira/browse/HBASE-10786) | If snapshot verification fails with 'Regions moved', the message should contain the name of region causing the failure |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10740](https://issues.apache.org/jira/browse/HBASE-10740) | Upgrade zookeeper to 3.4.6 release |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10700](https://issues.apache.org/jira/browse/HBASE-10700) | IntegrationTestWithCellVisibilityLoadAndVerify should allow current user to be the admin |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10670](https://issues.apache.org/jira/browse/HBASE-10670) | HBaseFsck#connect() should use new connection |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10612](https://issues.apache.org/jira/browse/HBASE-10612) | Remove unnecessary dependency on org.eclipse.jdt:core |  Major | . | Ted Yu | Ted Yu |


