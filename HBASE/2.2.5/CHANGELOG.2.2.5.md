
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

## Release 2.2.5 - 2020-05-21



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23967](https://issues.apache.org/jira/browse/HBASE-23967) | Improve the accuracy of the method sizeToString |  Minor | . | xuqinya | xuqinya |
| [HBASE-24032](https://issues.apache.org/jira/browse/HBASE-24032) | [RSGroup] Assign created tables to respective rsgroup automatically instead of manual operations |  Major | master, rsgroup | Reid Chan | Reid Chan |
| [HBASE-8868](https://issues.apache.org/jira/browse/HBASE-8868) | add metric to report client shortcircuit reads |  Minor | metrics, regionserver | Viral Bajaria | Wei-Chiu Chuang |
| [HBASE-24021](https://issues.apache.org/jira/browse/HBASE-24021) | Fail fast when bulkLoadHFiles method catch some IOException |  Major | HFile, regionserver | niuyulin | niuyulin |
| [HBASE-24111](https://issues.apache.org/jira/browse/HBASE-24111) | Enable CompactionTool executions on non-HDFS filesystems |  Major | Compaction, mapreduce, tooling | Peter Somogyi | Peter Somogyi |
| [HBASE-24077](https://issues.apache.org/jira/browse/HBASE-24077) | When encounter RowTooBigException, log the row info. |  Minor | . | Lijin Bin | Lijin Bin |
| [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | Use a fair ReentrantReadWriteLock for the region close lock |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24181](https://issues.apache.org/jira/browse/HBASE-24181) | Add region info when log meessages in HRegion. |  Minor | regionserver | Lijin Bin | Lijin Bin |
| [HBASE-24112](https://issues.apache.org/jira/browse/HBASE-24112) | [RSGroup] Support renaming rsgroup |  Major | rsgroup | Reid Chan | Reid Chan |
| [HBASE-24148](https://issues.apache.org/jira/browse/HBASE-24148) | Upgrade Thrift to 0.13.0: 0.12.0 has outstanding CVEs. |  Major | Thrift | Tamas Penzes | Tamas Penzes |
| [HBASE-24166](https://issues.apache.org/jira/browse/HBASE-24166) | Duplicate implementation for acquireLock between CreateTableProcedure and its parent class |  Minor | proc-v2 | Sun Xin | Sun Xin |
| [HBASE-24196](https://issues.apache.org/jira/browse/HBASE-24196) | [Shell] Add rename rsgroup command in hbase shell |  Major | rsgroup, shell | Reid Chan | Reid Chan |
| [HBASE-24222](https://issues.apache.org/jira/browse/HBASE-24222) | remove FSUtils.checkAccess and replace with FileSystem.access in HBCK |  Major | Filesystem Integration | niuyulin | niuyulin |
| [HBASE-23264](https://issues.apache.org/jira/browse/HBASE-23264) | Resolve a TODO of BucketAllocator: "Why we add the extra 1024 bytes? Slop?" |  Minor | BucketCache | Zheng Wang | Zheng Wang |
| [HBASE-24252](https://issues.apache.org/jira/browse/HBASE-24252) | Implement proxyuser/doAs mechanism for hbase-http |  Major | security, UI | Istvan Toth | Istvan Toth |
| [HBASE-24199](https://issues.apache.org/jira/browse/HBASE-24199) | Procedure related metrics is not consumed in the JMX metric |  Minor | metrics | ramkrishna.s.vasudevan | Gaurav Kanade |
| [HBASE-24302](https://issues.apache.org/jira/browse/HBASE-24302) | Add an "ignoreTimestamps" option (defaulted to false) to HashTable/SyncTable tool |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24328](https://issues.apache.org/jira/browse/HBASE-24328) | skip duplicate GCMultipleMergedRegionsProcedure while previous finished |  Major | . | niuyulin | niuyulin |
| [HBASE-24345](https://issues.apache.org/jira/browse/HBASE-24345) | [ACL] renameRSGroup should require Admin level permission |  Major | acl, rsgroup | Reid Chan | Reid Chan |
| [HBASE-24355](https://issues.apache.org/jira/browse/HBASE-24355) | Fix typos in the HStore#compact annotation |  Minor | . | kangkang.guo | kangkang.guo |
| [HBASE-24164](https://issues.apache.org/jira/browse/HBASE-24164) | Retain the ReadRequests and WriteRequests of region on web UI after alter table |  Major | metrics | Zheng Wang | Zheng Wang |
| [HBASE-24386](https://issues.apache.org/jira/browse/HBASE-24386) | TableSnapshotScanner support scan limit |  Major | Scanners, snapshots | niuyulin | niuyulin |
| [HBASE-24221](https://issues.apache.org/jira/browse/HBASE-24221) | Support bulkLoadHFile by family |  Major | HFile | niuyulin | niuyulin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22103](https://issues.apache.org/jira/browse/HBASE-22103) | HDFS-13209 in Hadoop 3.3.0 breaks asyncwal |  Major | hadoop3, wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24016](https://issues.apache.org/jira/browse/HBASE-24016) | Change nightly poll from cron @daily to pollSCM @daily; i.e. run nightly if a change ONLY |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24019](https://issues.apache.org/jira/browse/HBASE-24019) | Correct exception messages for table null and namespace unavailable. |  Minor | . | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24043](https://issues.apache.org/jira/browse/HBASE-24043) | [Flakey Tests] TestAsyncRegionAdminApi, TestRegionMergeTransactionOnCluster fixes and debug |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23949](https://issues.apache.org/jira/browse/HBASE-23949) | refactor  loadBalancer implements for rsgroup balance by table to  achieve overallbalanced |  Major | rsgroup | niuyulin | niuyulin |
| [HBASE-24040](https://issues.apache.org/jira/browse/HBASE-24040) | WALFactory.Providers.multiwal causes StackOverflowError |  Minor | wal | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24057](https://issues.apache.org/jira/browse/HBASE-24057) | Add modules to mapreduce job classpaths |  Major | mapreduce | Peter Somogyi | Peter Somogyi |
| [HBASE-24041](https://issues.apache.org/jira/browse/HBASE-24041) | [regression]  Increase RESTServer buffer size back to 64k |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-24122](https://issues.apache.org/jira/browse/HBASE-24122) | Change machine ulimit-l to ulimit-a so dumps full ulimit rather than just 'max locked memory' |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24121](https://issues.apache.org/jira/browse/HBASE-24121) | [Authorization] ServiceAuthorizationManager isn't dynamically updatable. And it should be. |  Major | rpc, security | Reid Chan | Reid Chan |
| [HBASE-24074](https://issues.apache.org/jira/browse/HBASE-24074) | ConcurrentModificationException occurred in ReplicationSourceManager while refreshing the peer |  Major | Replication | Pankaj Kumar | Pankaj Kumar |
| [HBASE-23998](https://issues.apache.org/jira/browse/HBASE-23998) | Update license for jetty-client |  Major | build, dependencies | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24167](https://issues.apache.org/jira/browse/HBASE-24167) | [Flakey Tests] TestHRegionWithInMemoryFlush#testWritesWhileScanning gets stuck MVCC |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24176](https://issues.apache.org/jira/browse/HBASE-24176) | user\_permission '.\*'  command failed to show all table permissions |  Minor | shell | song XinCun | song XinCun |
| [HBASE-24197](https://issues.apache.org/jira/browse/HBASE-24197) | TestHttpServer.testBindAddress failure with latest jetty |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-24151](https://issues.apache.org/jira/browse/HBASE-24151) | [rsgroup] The master server  aborted for IllegalThreadStateException |  Minor | rsgroup | kangkang.guo | kangkang.guo |
| [HBASE-24186](https://issues.apache.org/jira/browse/HBASE-24186) | RegionMover ignores replicationId |  Minor | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-24158](https://issues.apache.org/jira/browse/HBASE-24158) | [Flakey Tests] TestAsyncTableGetMultiThreaded |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23833](https://issues.apache.org/jira/browse/HBASE-23833) | The relocated hadoop-thirdparty protobuf breaks HBase asyncwal |  Major | wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24177](https://issues.apache.org/jira/browse/HBASE-24177) | MetricsTable#updateFlushTime is wrong |  Minor | metrics | ramkrishna.s.vasudevan | Gaurav Kanade |
| [HBASE-24174](https://issues.apache.org/jira/browse/HBASE-24174) | Fix findbugs warning on ServiceAuthorizationManager |  Major | . | Reid Chan | Reid Chan |
| [HBASE-24213](https://issues.apache.org/jira/browse/HBASE-24213) | Backport the pre commit changes for HBASE-24169 to all branches |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24281](https://issues.apache.org/jira/browse/HBASE-24281) | Remove some stale hadoop.version properties in the pom for sub modules |  Major | hadoop3, pom | Duo Zhang | Duo Zhang |
| [HBASE-24274](https://issues.apache.org/jira/browse/HBASE-24274) | \`RESTApiClusterManager\` attempts to deserialize response using serialization API |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24282](https://issues.apache.org/jira/browse/HBASE-24282) | 'scandetail' log message is missing when responseTooSlow happens on the first scan rpc call |  Major | Operability | song XinCun | song XinCun |
| [HBASE-22710](https://issues.apache.org/jira/browse/HBASE-22710) | Wrong result in one case of scan that use  raw and versions and filter together |  Major | Scanners | Zheng Wang | Zheng Wang |
| [HBASE-24288](https://issues.apache.org/jira/browse/HBASE-24288) | Allow admin user to create table and do bulkLoad |  Major | acl | song XinCun | song XinCun |
| [HBASE-24314](https://issues.apache.org/jira/browse/HBASE-24314) | Some classes still use log4j logger directly |  Blocker | logging | Duo Zhang | Duo Zhang |
| [HBASE-24322](https://issues.apache.org/jira/browse/HBASE-24322) | UnsafeAvailChecker should also check that required methods are available |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24273](https://issues.apache.org/jira/browse/HBASE-24273) | HBCK's "Orphan Regions on FileSystem" reports regions with referenced HFiles |  Critical | hbck2 | Andrey Elenskiy | Huaxiang Sun |
| [HBASE-24349](https://issues.apache.org/jira/browse/HBASE-24349) | Use rubocop 0.81.0 in Dockerfile |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-24363](https://issues.apache.org/jira/browse/HBASE-24363) | Fix failed ut TestAssignmentManagerMetrics for branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24190](https://issues.apache.org/jira/browse/HBASE-24190) | Make kerberos value of hbase.security.authentication property case insensitive |  Major | . | Yuanliang Zhang | Rushabh Shah |
| [HBASE-23832](https://issues.apache.org/jira/browse/HBASE-23832) | Old config hbase.hstore.compactionThreshold is ignored |  Critical | . | Anoop Sam John | Sambit Mohapatra |
| [HBASE-23702](https://issues.apache.org/jira/browse/HBASE-23702) | \`hbase.hstore.flusher.count\` setting to 0 breaks HMaster |  Major | regionserver | Ctest | Ctest |
| [HBASE-24165](https://issues.apache.org/jira/browse/HBASE-24165) | maxPoolSize is logged incorrectly in ByteBufferPool |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-24135](https://issues.apache.org/jira/browse/HBASE-24135) | TableStateNotFoundException happends when table creation if rsgroup is enable |  Minor | . | Ajeet Rai | Sun Xin |
| [HBASE-24381](https://issues.apache.org/jira/browse/HBASE-24381) | The Size metrics in Master Webui is wrong if the size is 0 |  Major | UI | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-24377](https://issues.apache.org/jira/browse/HBASE-24377) | MemStoreFlusher throw NullPointerException |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-24365](https://issues.apache.org/jira/browse/HBASE-24365) | MetricsTableWrapperAggregateImpl runnable fails due to exception and never runs |  Minor | metrics | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-20289](https://issues.apache.org/jira/browse/HBASE-20289) | Comparator for NormalizationPlan breaks comparator's convention |  Minor | master | Yuki Tawara | Yuki Tawara |
| [HBASE-24399](https://issues.apache.org/jira/browse/HBASE-24399) | [Flakey Tests] Some UTs about RSGroup should wait RSGroupInfoManager to be online |  Minor | rsgroup | Sun Xin | Sun Xin |
| [HBASE-24364](https://issues.apache.org/jira/browse/HBASE-24364) | [Chaos Monkey] Invalid data block encoding in ChangeEncodingAction |  Major | . | Yi Mei | Yi Mei |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23999](https://issues.apache.org/jira/browse/HBASE-23999) | [flakey test] TestTableOutputFormatConnectionExhaust |  Major | test | Nick Dimiduk | Huaxiang Sun |
| [HBASE-23943](https://issues.apache.org/jira/browse/HBASE-23943) | Rubocop configuration needs updated |  Minor | build | Nick Dimiduk | Jan Hentschel |
| [HBASE-24080](https://issues.apache.org/jira/browse/HBASE-24080) | [flakey test] TestRegionReplicaFailover.testSecondaryRegionKill fails. |  Major | read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-23957](https://issues.apache.org/jira/browse/HBASE-23957) | [flakey test] client.TestMultiParallel fails to read hbase-site.xml |  Minor | test | Nick Dimiduk | Huaxiang Sun |
| [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | Relocate test-only REST "client" from src/ to test/ and mark Private |  Major | REST, security | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23891](https://issues.apache.org/jira/browse/HBASE-23891) | Add an option to Actions to filter out meta RS |  Minor | integration tests | Tamas Adami | Szabolcs Bukros |
| [HBASE-24009](https://issues.apache.org/jira/browse/HBASE-24009) | Backport the personality changes in HBASE-23989 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-24050](https://issues.apache.org/jira/browse/HBASE-24050) | Deprecated PBType on all 2.x branches |  Major | Protobufs | Duo Zhang | Duo Zhang |
| [HBASE-23992](https://issues.apache.org/jira/browse/HBASE-23992) | Fix TestAdminShell and TestQuotasShell mistakenly broken by parent commit |  Trivial | test | Michael Stack | Michael Stack |
| [HBASE-24175](https://issues.apache.org/jira/browse/HBASE-24175) | [Flakey Tests] TestSecureExportSnapshot FileNotFoundException |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-24218](https://issues.apache.org/jira/browse/HBASE-24218) | Add hadoop 3.2.x in hadoop check |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24411](https://issues.apache.org/jira/browse/HBASE-24411) | Set version to 2.2.5 in branch-2.2 for first RC of 2.2.5 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24410](https://issues.apache.org/jira/browse/HBASE-24410) | Generate CHANGES.md and RELEASENOTES.md for 2.2.5 |  Major | . | Guanghao Zhang | Guanghao Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24344](https://issues.apache.org/jira/browse/HBASE-24344) | Release 2.2.5 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24217](https://issues.apache.org/jira/browse/HBASE-24217) | Add hadoop 3.2.x support |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-23047](https://issues.apache.org/jira/browse/HBASE-23047) | ChecksumUtil.validateChecksum logs an INFO message inside a "if(LOG.isTraceEnabled())" block. |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24138](https://issues.apache.org/jira/browse/HBASE-24138) | Ensure StochasticLoadBalancer can log details of decision to not run balancer |  Major | Balancer, Operability | Sean Busbey | Sean Busbey |
| [HBASE-23896](https://issues.apache.org/jira/browse/HBASE-23896) | Snapshot owner cannot delete snapshot when ACL is enabled and Kerberos is not enabled |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-24301](https://issues.apache.org/jira/browse/HBASE-24301) | Update Apache POM to version 23 |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-24258](https://issues.apache.org/jira/browse/HBASE-24258) | [Hadoop3.3] Update license for org.ow2.asm:\* |  Minor | dependencies | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24271](https://issues.apache.org/jira/browse/HBASE-24271) | Set values in \`conf/hbase-site.xml\` that enable running on \`LocalFileSystem\` out of the box |  Major | . | Nick Dimiduk | Nick Dimiduk |


