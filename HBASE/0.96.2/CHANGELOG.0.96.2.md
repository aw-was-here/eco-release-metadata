
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

## Release 0.96.2 - 2014-04-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10422](https://issues.apache.org/jira/browse/HBASE-10422) | ZeroCopyLiteralByteString.zeroCopyGetBytes has an unusable prototype and conflicts with AsyncHBase |  Major | Client, Protobufs | Benoit Sigoure | Benoit Sigoure |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9047](https://issues.apache.org/jira/browse/HBASE-9047) | Tool to handle finishing replication when the cluster is offline |  Major | . | Jean-Daniel Cryans | Demai Ni |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10049](https://issues.apache.org/jira/browse/HBASE-10049) | Small improvments in region\_mover.rb |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10116](https://issues.apache.org/jira/browse/HBASE-10116) | SlabCache metrics improvements |  Minor | metrics, regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10157](https://issues.apache.org/jira/browse/HBASE-10157) | Provide CP hook post log replay |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-9524](https://issues.apache.org/jira/browse/HBASE-9524) | Multi row get does not return any results even if any one of the rows specified in the query is missing and improve exception handling |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-10423](https://issues.apache.org/jira/browse/HBASE-10423) | Report back the message of split or rollback failure to the master |  Trivial | regionserver | Harsh J | Harsh J |
| [HBASE-10457](https://issues.apache.org/jira/browse/HBASE-10457) | Print corrupted file information in SnapshotInfo tool without -file option |  Minor | snapshots | bharath v | bharath v |
| [HBASE-10389](https://issues.apache.org/jira/browse/HBASE-10389) | Add namespace help info in table related shell commands |  Major | shell | Jerry He | Jerry He |
| [HBASE-10511](https://issues.apache.org/jira/browse/HBASE-10511) | Add latency percentiles on PerformanceEvaluation |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10518](https://issues.apache.org/jira/browse/HBASE-10518) | DirectMemoryUtils.getDirectMemoryUsage spams when none is configured |  Major | . | Jean-Daniel Cryans | Nick Dimiduk |
| [HBASE-10419](https://issues.apache.org/jira/browse/HBASE-10419) | Add multiget support to PerformanceEvaluation |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10570](https://issues.apache.org/jira/browse/HBASE-10570) | Allow overrides of Surefire secondPartForkMode and testFailureIgnore |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10589](https://issues.apache.org/jira/browse/HBASE-10589) | Reduce unnecessary TestRowProcessorEndpoint resource usage |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10592](https://issues.apache.org/jira/browse/HBASE-10592) | Refactor PerformanceEvaluation tool |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10678](https://issues.apache.org/jira/browse/HBASE-10678) | Make verifyrep tool implement toolrunner |  Minor | Replication | bharath v | bharath v |
| [HBASE-8604](https://issues.apache.org/jira/browse/HBASE-8604) | improve reporting of incorrect peer address in replication |  Minor | Replication | Roman Shaposhnik | Rekha Joshi |
| [HBASE-8076](https://issues.apache.org/jira/browse/HBASE-8076) | add better doc for HBaseAdmin#offline API. |  Minor | Admin | rajeshbabu | rajeshbabu |
| [HBASE-10744](https://issues.apache.org/jira/browse/HBASE-10744) | AM#CloseRegion no need to retry on FailedServerException |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10769](https://issues.apache.org/jira/browse/HBASE-10769) | hbase/bin/hbase-cleanup.sh has wrong usage string |  Trivial | Usability | Vamsee Yarlagadda | Vamsee Yarlagadda |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10056](https://issues.apache.org/jira/browse/HBASE-10056) | region\_status.rb not adopted to 0.96 api |  Minor | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10057](https://issues.apache.org/jira/browse/HBASE-10057) | TestRestoreFlushSnapshotFromClient and TestRestoreSnapshotFromClient fail to finish occasionally |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8203](https://issues.apache.org/jira/browse/HBASE-8203) | master ui should display region servers with host, port plus startcode |  Minor | UI | rajeshbabu | rajeshbabu |
| [HBASE-9485](https://issues.apache.org/jira/browse/HBASE-9485) | TableOutputCommitter should implement recovery if we don't want jobs to start from 0 on RM restart |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-10117](https://issues.apache.org/jira/browse/HBASE-10117) | Avoid synchronization in HRegionScannerImpl.isFilterDone |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10120](https://issues.apache.org/jira/browse/HBASE-10120) | start-hbase.sh doesn't respect --config in non-distributed mode |  Trivial | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10155](https://issues.apache.org/jira/browse/HBASE-10155) | HRegion isRecovering state is wrongly coming in postOpen hook |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-10146](https://issues.apache.org/jira/browse/HBASE-10146) | Bump HTrace version to 2.04 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-10163](https://issues.apache.org/jira/browse/HBASE-10163) | Example Thrift DemoClient is flaky |  Trivial | Thrift | Enis Soztutar | Enis Soztutar |
| [HBASE-10098](https://issues.apache.org/jira/browse/HBASE-10098) | [WINDOWS] pass in native library directory from hadoop for unit tests |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10084](https://issues.apache.org/jira/browse/HBASE-10084) | [WINDOWS] bin\hbase.cmd should allow whitespaces in java.library.path and classpath |  Major | scripts | Enis Soztutar | Enis Soztutar |
| [HBASE-10186](https://issues.apache.org/jira/browse/HBASE-10186) | region\_mover.rb broken because ServerName constructor is changed to private |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10188](https://issues.apache.org/jira/browse/HBASE-10188) | Deprecate ServerName constructors, but make it public. |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10182](https://issues.apache.org/jira/browse/HBASE-10182) | Potential null object deference in AssignmentManager#handleRegion() |  Trivial | . | Ted Yu | Jimmy Xiang |
| [HBASE-10179](https://issues.apache.org/jira/browse/HBASE-10179) | HRegionServer underreports readRequestCounts by 1 under certain conditions |  Minor | metrics | Perry Trolard | Perry Trolard |
| [HBASE-10137](https://issues.apache.org/jira/browse/HBASE-10137) | GeneralBulkAssigner with retain assignment plan can be used in EnableTableHandler to bulk assign the regions |  Major | Region Assignment | rajeshbabu | rajeshbabu |
| [HBASE-10194](https://issues.apache.org/jira/browse/HBASE-10194) | [Usability]: Instructions in CompactionTool no longer accurate because of namespaces |  Minor | Compaction, util | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10196](https://issues.apache.org/jira/browse/HBASE-10196) | Enhance HBCK to understand the case after online region merge |  Major | . | chunhui shen | chunhui shen |
| [HBASE-10198](https://issues.apache.org/jira/browse/HBASE-10198) | Add a note on how to Import 0.94 exported file to a 0.96 cluster or onwards |  Minor | documentation | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10193](https://issues.apache.org/jira/browse/HBASE-10193) | Cleanup HRegion if one of the store fails to open at region initialization |  Critical | regionserver | Aditya Kishore | Aditya Kishore |
| [HBASE-10195](https://issues.apache.org/jira/browse/HBASE-10195) | "mvn site" build failed with OutOfMemoryError |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10161](https://issues.apache.org/jira/browse/HBASE-10161) | [AccessController] Tolerate regions in recovery |  Blocker | . | Andrew Purtell | Anoop Sam John |
| [HBASE-10219](https://issues.apache.org/jira/browse/HBASE-10219) | HTTPS support for HBase in RegionServerListTmpl.jamon |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10220](https://issues.apache.org/jira/browse/HBASE-10220) | Put all test service principals into the superusers list |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10221](https://issues.apache.org/jira/browse/HBASE-10221) | Region from coprocessor invocations can be null on failure |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-9151](https://issues.apache.org/jira/browse/HBASE-9151) | HBCK cannot fix when meta server znode deleted, this can happen if all region servers stopped and there are no logs to split. |  Major | hbck | rajeshbabu | rajeshbabu |
| [HBASE-10225](https://issues.apache.org/jira/browse/HBASE-10225) | Bug in calls to RegionObsever.postScannerFilterRow |  Major | Coprocessors | Lars Hofhansl | Anoop Sam John |
| [HBASE-10232](https://issues.apache.org/jira/browse/HBASE-10232) | Remove native profile from hbase-shell |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-10215](https://issues.apache.org/jira/browse/HBASE-10215) | TableNotFoundException should be thrown after removing stale znode in ETH |  Minor | master | rajeshbabu | rajeshbabu |
| [HBASE-9346](https://issues.apache.org/jira/browse/HBASE-9346) | HBCK should provide an option to check if regions boundaries are the same in META and in stores. |  Major | hbck, Operability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-10218](https://issues.apache.org/jira/browse/HBASE-10218) | Port HBASE-10142 'TestLogRolling#testLogRollOnDatanodeDeath test failure' to 0.96 branch |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7226](https://issues.apache.org/jira/browse/HBASE-7226) | HRegion.checkAndMutate uses incorrect comparison result for \<, \<=, \> and \>= |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10260](https://issues.apache.org/jira/browse/HBASE-10260) | Canary Doesn't pick up Configuration properly. |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-10264](https://issues.apache.org/jira/browse/HBASE-10264) | [MapReduce]: CompactionTool in mapred mode is missing classes in its classpath |  Major | Compaction, mapreduce | Aleksandr Shulman | Himanshu Vashishtha |
| [HBASE-10284](https://issues.apache.org/jira/browse/HBASE-10284) | Build broken with svn 1.8 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10272](https://issues.apache.org/jira/browse/HBASE-10272) | Cluster becomes nonoperational if the node hosting the active Master AND ROOT/META table goes offline |  Critical | IPC/RPC | Aditya Kishore | Aditya Kishore |
| [HBASE-10268](https://issues.apache.org/jira/browse/HBASE-10268) | TestSplitLogWorker occasionally fails |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10310](https://issues.apache.org/jira/browse/HBASE-10310) | ZNodeCleaner session expired for /hbase/master |  Major | master | Samir Ahmic | Samir Ahmic |
| [HBASE-10315](https://issues.apache.org/jira/browse/HBASE-10315) | Canary shouldn't exit with 3 if there is no master running. |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-10274](https://issues.apache.org/jira/browse/HBASE-10274) | MiniZookeeperCluster should close ZKDatabase when shutdown ZooKeeperServers |  Minor | . | chendihao | chendihao |
| [HBASE-10320](https://issues.apache.org/jira/browse/HBASE-10320) | Avoid ArrayList.iterator() ExplicitColumnTracker |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10332](https://issues.apache.org/jira/browse/HBASE-10332) | Missing .regioninfo file during daughter open processing |  Major | . | Andrew Purtell | Matteo Bertozzi |
| [HBASE-10334](https://issues.apache.org/jira/browse/HBASE-10334) | RegionServer links in table.jsp is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10338](https://issues.apache.org/jira/browse/HBASE-10338) | Region server fails to start with AccessController coprocessor if installed into RegionServerCoprocessorHost |  Minor | Coprocessors, regionserver | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-10335](https://issues.apache.org/jira/browse/HBASE-10335) | AuthFailedException in zookeeper may block replication forever |  Blocker | Replication, security | Liu Shaohui | Liu Shaohui |
| [HBASE-10333](https://issues.apache.org/jira/browse/HBASE-10333) | Assignments are not retained on a cluster start |  Major | . | Devaraj Das | Jimmy Xiang |
| [HBASE-10370](https://issues.apache.org/jira/browse/HBASE-10370) | Compaction in out-of-date Store causes region split failure |  Critical | Compaction | Liu Shaohui | Liu Shaohui |
| [HBASE-10349](https://issues.apache.org/jira/browse/HBASE-10349) | Table became unusable when master balanced its region after table was dropped |  Major | . | Ted Yu | Jimmy Xiang |
| [HBASE-10366](https://issues.apache.org/jira/browse/HBASE-10366) | 0.94 filterRow() may be skipped in 0.96(or onwards) code |  Critical | Filters | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10384](https://issues.apache.org/jira/browse/HBASE-10384) | Failed to increment serveral columns in one Increment |  Blocker | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10249](https://issues.apache.org/jira/browse/HBASE-10249) | TestReplicationSyncUpTool fails because failover takes too long |  Major | . | Lars Hofhansl | Jean-Daniel Cryans |
| [HBASE-10375](https://issues.apache.org/jira/browse/HBASE-10375) | hbase-default.xml hbase.status.multicast.address.port does not match code |  Major | . | Jonathan Hsieh | Nicolas Liochon |
| [HBASE-10400](https://issues.apache.org/jira/browse/HBASE-10400) | [hbck] Continue if region dir missing on region merge attempt |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10401](https://issues.apache.org/jira/browse/HBASE-10401) | [hbck] perform overlap group merges in parallel |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10371](https://issues.apache.org/jira/browse/HBASE-10371) | Compaction creates empty hfile, then selects this file for compaction and creates empty hfile and over again |  Major | . | binlijin | binlijin |
| [HBASE-10435](https://issues.apache.org/jira/browse/HBASE-10435) | Lower the log level of Canary region server match |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10431](https://issues.apache.org/jira/browse/HBASE-10431) | Rename com.google.protobuf.ZeroCopyLiteralByteString |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10448](https://issues.apache.org/jira/browse/HBASE-10448) | ZKUtil create and watch methods don't set watch in some cases |  Major | Zookeeper | Jerry He | Jerry He |
| [HBASE-10449](https://issues.apache.org/jira/browse/HBASE-10449) | Wrong execution pool configuration in HConnectionManager |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10442](https://issues.apache.org/jira/browse/HBASE-10442) | prepareDelete() isn't called before doPreMutationHook for a row deletion case |  Critical | Coprocessors | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-7963](https://issues.apache.org/jira/browse/HBASE-7963) | HBase VerifyReplication not working when security enabled |  Major | Replication, security | Water Chow | Matteo Bertozzi |
| [HBASE-10319](https://issues.apache.org/jira/browse/HBASE-10319) | HLog should roll periodically to allow DN decommission to eventually complete. |  Major | . | Jonathan Hsieh | Matteo Bertozzi |
| [HBASE-10470](https://issues.apache.org/jira/browse/HBASE-10470) | Import generates huge log file while importing large amounts of data |  Critical | . | Vasu Mariyala | Vasu Mariyala |
| [HBASE-10313](https://issues.apache.org/jira/browse/HBASE-10313) | Duplicate servlet-api jars in hbase 0.96.0 |  Critical | . | stack | stack |
| [HBASE-5356](https://issues.apache.org/jira/browse/HBASE-5356) | region\_mover.rb can hang if table region it belongs to is deleted. |  Minor | . | Jonathan Hsieh | Jimmy Xiang |
| [HBASE-10340](https://issues.apache.org/jira/browse/HBASE-10340) | [BACKPORT] HBASE-9892 Add info port to ServerName to support multi instances in a node |  Major | . | stack | stack |
| [HBASE-10486](https://issues.apache.org/jira/browse/HBASE-10486) | ProtobufUtil Append & Increment deserialization lost cell level timestamp |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10493](https://issues.apache.org/jira/browse/HBASE-10493) | InclusiveStopFilter#filterKeyValue() should perform filtering on row key |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10485](https://issues.apache.org/jira/browse/HBASE-10485) | PrefixFilter#filterKeyValue() should perform filtering on row key |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10495](https://issues.apache.org/jira/browse/HBASE-10495) | upgrade script is printing usage two times with help option. |  Minor | Usability | rajeshbabu | rajeshbabu |
| [HBASE-10505](https://issues.apache.org/jira/browse/HBASE-10505) | Import.filterKv does not call Filter.filterRowKey |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10500](https://issues.apache.org/jira/browse/HBASE-10500) | Some tools OOM when BucketCache is enabled |  Major | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10482](https://issues.apache.org/jira/browse/HBASE-10482) | ReplicationSyncUp doesn't clean up its ZK, needed for tests |  Major | Replication | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10508](https://issues.apache.org/jira/browse/HBASE-10508) | Backport HBASE-10365 'HBaseFsck should clean up connection properly when repair is completed' to 0.94 and 0.96 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10506](https://issues.apache.org/jira/browse/HBASE-10506) | Fail-fast if client connection is lost before the real call be executed in RPC layer |  Major | IPC/RPC | Liang Xie | Liang Xie |
| [HBASE-10545](https://issues.apache.org/jira/browse/HBASE-10545) | RS Hangs waiting on region to close on shutdown; has to timeout before can go down |  Major | . | stack | stack |
| [HBASE-10552](https://issues.apache.org/jira/browse/HBASE-10552) | HFilePerformanceEvaluation.GaussianRandomReadBenchmark fails sometimes. |  Minor | . | Lars Hofhansl |  |
| [HBASE-10563](https://issues.apache.org/jira/browse/HBASE-10563) | Set name for FlushHandler thread |  Major | regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-10539](https://issues.apache.org/jira/browse/HBASE-10539) | HRegion.addAndGetGlobalMemstoreSize returns previous size |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10546](https://issues.apache.org/jira/browse/HBASE-10546) | Two scanner objects are open for each hbase map task but only one scanner object is closed |  Major | . | Vasu Mariyala | Vasu Mariyala |
| [HBASE-10501](https://issues.apache.org/jira/browse/HBASE-10501) | Improve IncreasingToUpperBoundRegionSplitPolicy to avoid too many regions |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10548](https://issues.apache.org/jira/browse/HBASE-10548) | Correct commons-math dependency version |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10565](https://issues.apache.org/jira/browse/HBASE-10565) | FavoredNodesPlan accidentally uses an internal Netty type |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10537](https://issues.apache.org/jira/browse/HBASE-10537) | Let the ExportSnapshot mapper fail and retry on error |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10534](https://issues.apache.org/jira/browse/HBASE-10534) | Rowkey in TsvImporterTextMapper initializing with wrong length |  Major | mapreduce | rajeshbabu | rajeshbabu |
| [HBASE-10527](https://issues.apache.org/jira/browse/HBASE-10527) | TestTokenAuthentication fails with the IBM JDK |  Minor | . | Andrew Purtell | Gary Helmling |
| [HBASE-10567](https://issues.apache.org/jira/browse/HBASE-10567) | Add overwrite manifest option to ExportSnapshot |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10586](https://issues.apache.org/jira/browse/HBASE-10586) | hadoop2-compat IPC metric registred twice |  Major | metrics | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10547](https://issues.apache.org/jira/browse/HBASE-10547) | TestFixedLengthWrapper#testReadWrite occasionally fails with the IBM JDK |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10580](https://issues.apache.org/jira/browse/HBASE-10580) | IntegrationTestingUtility#restoreCluster leak resource when running in a mini cluster mode |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10579](https://issues.apache.org/jira/browse/HBASE-10579) | [Documentation]: ExportSnapshot tool package incorrectly documented |  Minor | documentation, snapshots | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10587](https://issues.apache.org/jira/browse/HBASE-10587) | Master metrics clusterRequests is wrong |  Minor | master, metrics | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10556](https://issues.apache.org/jira/browse/HBASE-10556) | Possible data loss due to non-handled DroppedSnapshotException for user-triggered flush from client/shell |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10581](https://issues.apache.org/jira/browse/HBASE-10581) | ACL znode are left without PBed during upgrading hbase0.94\* to hbase0.96+ |  Critical | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10582](https://issues.apache.org/jira/browse/HBASE-10582) | 0.94-\>0.96 Upgrade: ACL can't be repopulated when ACL table contains row for table '-ROOT' or '.META.' |  Critical | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10575](https://issues.apache.org/jira/browse/HBASE-10575) | ReplicationSource thread can't be terminated if it runs into the loop to contact peer's zk ensemble and fails continuously |  Critical | Replication | Honghua Feng | Honghua Feng |
| [HBASE-10604](https://issues.apache.org/jira/browse/HBASE-10604) | Fix parseArgs javadoc |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-10436](https://issues.apache.org/jira/browse/HBASE-10436) | restore regionserver lists removed from hbase 0.96+ jmx |  Critical | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10614](https://issues.apache.org/jira/browse/HBASE-10614) | Master could not be stopped |  Major | master | Jingcheng Du | Jingcheng Du |
| [HBASE-10608](https://issues.apache.org/jira/browse/HBASE-10608) | Acquire the FS Delegation Token for Secure ExportSnapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10598](https://issues.apache.org/jira/browse/HBASE-10598) | Written data can not be read out because MemStore#timeRangeTracker might be updated concurrently |  Critical | regionserver | Jianwei Cui | Jianwei Cui |
| [HBASE-8803](https://issues.apache.org/jira/browse/HBASE-8803) | region\_mover.rb should move multiple regions at a time |  Major | Usability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-10631](https://issues.apache.org/jira/browse/HBASE-10631) | Avoid extra seek on FileLink open |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10627](https://issues.apache.org/jira/browse/HBASE-10627) | A logic mistake in HRegionServer isHealthy |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10644](https://issues.apache.org/jira/browse/HBASE-10644) | TestSecureExportSnapshot#testExportFileSystemState fails on hadoop-1 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10639](https://issues.apache.org/jira/browse/HBASE-10639) | Unload script displays wrong counts (off by one) when unloading regions |  Trivial | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10632](https://issues.apache.org/jira/browse/HBASE-10632) | Region lost in limbo after ArrayIndexOutOfBoundsException during assignment |  Major | Region Assignment | Nick Dimiduk | Enis Soztutar |
| [HBASE-9708](https://issues.apache.org/jira/browse/HBASE-9708) | Improve Snapshot Name Error Message |  Minor | snapshots | Jesse Anderson | Matteo Bertozzi |
| [HBASE-10622](https://issues.apache.org/jira/browse/HBASE-10622) | Improve log and Exceptions in Export Snapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10624](https://issues.apache.org/jira/browse/HBASE-10624) | Fix 2 new findbugs warnings introduced by HBASE-10598 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10677](https://issues.apache.org/jira/browse/HBASE-10677) | boundaries check in hbck throwing IllegalArgumentException |  Major | hbck | rajeshbabu | rajeshbabu |
| [HBASE-10594](https://issues.apache.org/jira/browse/HBASE-10594) | Speed up TestRestoreSnapshotFromClient |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10669](https://issues.apache.org/jira/browse/HBASE-10669) | [hbck tool] Usage is wrong for hbck tool for -sidelineCorruptHfiles option |  Minor | hbck | Deepak Sharma | Deepak Sharma |
| [HBASE-10682](https://issues.apache.org/jira/browse/HBASE-10682) | region\_mover.rb throws "can't convert nil into String" for regions moved |  Major | scripts | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10432](https://issues.apache.org/jira/browse/HBASE-10432) | Rpc retries non-recoverable error |  Minor | IPC/RPC | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10712](https://issues.apache.org/jira/browse/HBASE-10712) | Backport HBASE-8304 to 0.94 and 0.96 |  Major | regionserver | haosdent | haosdent |
| [HBASE-10716](https://issues.apache.org/jira/browse/HBASE-10716) | [Configuration]: hbase.regionserver.region.split.policy should be part of hbase-default.xml |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-9778](https://issues.apache.org/jira/browse/HBASE-9778) | Add hint to ExplicitColumnTracker to avoid seeking |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10718](https://issues.apache.org/jira/browse/HBASE-10718) | TestHLogSplit fails when it sets a KV size to be negative |  Major | wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10726](https://issues.apache.org/jira/browse/HBASE-10726) | Fix java.lang.ArrayIndexOutOfBoundsException in StochasticLoadBalancer$LocalityBasedCandidateGenerator |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10679](https://issues.apache.org/jira/browse/HBASE-10679) | Both clients get wrong scan results if the first scanner expires and the second scanner is created with the same scannerId on the same region |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-9294](https://issues.apache.org/jira/browse/HBASE-9294) | NPE in /rs-status during RS shutdown |  Minor | regionserver | Steve Loughran | Rekha Joshi |
| [HBASE-10731](https://issues.apache.org/jira/browse/HBASE-10731) | Fix environment variables typos in scripts |  Trivial | scripts | Albert Chu | Albert Chu |
| [HBASE-10733](https://issues.apache.org/jira/browse/HBASE-10733) | Shell incr command should allow last parameter (value) to be missing. As documented. |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-10737](https://issues.apache.org/jira/browse/HBASE-10737) | HConnectionImplementation should stop RpcClient on close |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10476](https://issues.apache.org/jira/browse/HBASE-10476) | HBase Master log grows very fast after stopped hadoop (due to connection exception) |  Major | . | Demai Ni | Demai Ni |
| [HBASE-10738](https://issues.apache.org/jira/browse/HBASE-10738) | AssignmentManager should shut down executors on stop |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10739](https://issues.apache.org/jira/browse/HBASE-10739) | RS web UI NPE if master shuts down sooner |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10745](https://issues.apache.org/jira/browse/HBASE-10745) | Access ShutdownHook#fsShutdownHooks should be synchronized |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10751](https://issues.apache.org/jira/browse/HBASE-10751) | TestHRegion testWritesWhileScanning occasional fail since HBASE-10514 went in |  Major | . | stack | stack |
| [HBASE-10514](https://issues.apache.org/jira/browse/HBASE-10514) | Forward port HBASE-10466, possible data loss when failed flushes |  Critical | . | stack | stack |
| [HBASE-10656](https://issues.apache.org/jira/browse/HBASE-10656) |  high-scale-lib's Counter depends on Oracle (Sun) JRE, and also has some bug |  Minor | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-10749](https://issues.apache.org/jira/browse/HBASE-10749) | CellComparator.compareStatic() compares type wrongly |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10549](https://issues.apache.org/jira/browse/HBASE-10549) | When there is a hole, LoadIncrementalHFiles will hang in an infinite loop. |  Major | HFile | yuanxinen | yuanxinen |
| [HBASE-10760](https://issues.apache.org/jira/browse/HBASE-10760) | Wrong methods' names in ClusterLoadState class |  Minor | Balancer | Victor Xu | Victor Xu |
| [HBASE-9721](https://issues.apache.org/jira/browse/HBASE-9721) | RegionServer should not accept regionOpen RPC intended for another(previous) server |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10762](https://issues.apache.org/jira/browse/HBASE-10762) | clone\_snapshot doesn't check for missing namespace |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10766](https://issues.apache.org/jira/browse/HBASE-10766) | SnapshotCleaner allows to delete referenced files |  Major | snapshots | Matteo Bertozzi | bharath v |
| [HBASE-10770](https://issues.apache.org/jira/browse/HBASE-10770) | Don't exit from the Canary daemon mode if no regions are present |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10735](https://issues.apache.org/jira/browse/HBASE-10735) | [WINDOWS] Set -XX:MaxPermSize for unit tests |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10793](https://issues.apache.org/jira/browse/HBASE-10793) | AuthFailed as a valid zookeeper state |  Major | Zookeeper | Demai Ni | Demai Ni |
| [HBASE-10802](https://issues.apache.org/jira/browse/HBASE-10802) | CellComparator.compareStaticIgnoreMvccVersion compares type wrongly |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10804](https://issues.apache.org/jira/browse/HBASE-10804) | Add a validations step to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10825](https://issues.apache.org/jira/browse/HBASE-10825) | Add copy-from option to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10058](https://issues.apache.org/jira/browse/HBASE-10058) | Test for HBASE-9915 (avoid reading index blocks) |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10059](https://issues.apache.org/jira/browse/HBASE-10059) | TestSplitLogWorker#testMultipleTasks fails occasionally |  Major | . | Ted Yu | Jeffrey Zhong |
| [HBASE-10189](https://issues.apache.org/jira/browse/HBASE-10189) | Intermittent TestReplicationSyncUpTool failure |  Major | . | Ted Yu | Demai Ni |
| [HBASE-10480](https://issues.apache.org/jira/browse/HBASE-10480) | TestLogRollPeriod#testWithEdits may fail due to insufficient waiting |  Minor | test | Ted Yu | Matteo Bertozzi |
| [HBASE-10649](https://issues.apache.org/jira/browse/HBASE-10649) | TestMasterMetrics fails occasionally |  Major | . | Ted Yu | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10043](https://issues.apache.org/jira/browse/HBASE-10043) | Fix Potential Resouce Leak in MultiTableInputFormatBase |  Major | mapreduce | Elliott Clark | Elliott Clark |
| [HBASE-10110](https://issues.apache.org/jira/browse/HBASE-10110) | Fix Potential Resource Leak in StoreFlusher |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-10124](https://issues.apache.org/jira/browse/HBASE-10124) | Make Sub Classes Static When Possible |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-10143](https://issues.apache.org/jira/browse/HBASE-10143) | Clean up dead local stores in FSUtils |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-10526](https://issues.apache.org/jira/browse/HBASE-10526) | Using Cell instead of KeyValue in HFileOutputFormat |  Major | mapreduce | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10707](https://issues.apache.org/jira/browse/HBASE-10707) | Backport parent issue to 0.96 |  Major | mapreduce, snapshots | stack | stack |
| [HBASE-10741](https://issues.apache.org/jira/browse/HBASE-10741) | Deprecate HTablePool and HTableFactory |  Major | Client | Nick Dimiduk | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10159](https://issues.apache.org/jira/browse/HBASE-10159) | Replaced deprecated interface Closeable |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10473](https://issues.apache.org/jira/browse/HBASE-10473) | Add utility for adorning http Context |  Major | UI | stack | stack |
| [HBASE-10612](https://issues.apache.org/jira/browse/HBASE-10612) | Remove unnecessary dependency on org.eclipse.jdt:core |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10819](https://issues.apache.org/jira/browse/HBASE-10819) | Backport HBASE-8063 (Filter HFiles based on first/last key) into 0.96 |  Blocker | . | Andrew Purtell | stack |


