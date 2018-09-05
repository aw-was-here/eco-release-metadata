
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

## Release 0.96.0 - 2013-10-19

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9549](https://issues.apache.org/jira/browse/HBASE-9549) | KeyValue#parseColumn(byte[]) does not handle empty qualifier |  Major | mapreduce, REST, Thrift, util | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9369](https://issues.apache.org/jira/browse/HBASE-9369) | Add support for 1- and 2-byte integers in OrderedBytes and provide types |  Major | . | Nick Dimiduk | He Liangliang |
| [HBASE-9684](https://issues.apache.org/jira/browse/HBASE-9684) | Remove MultiRowMutationProcessorMessages.proto |  Major | Protobufs | stack | Dan Burkert |
| [HBASE-9677](https://issues.apache.org/jira/browse/HBASE-9677) | Remove MasterAdmin and MasterMonitor protos; have MasterService provide these functions |  Major | Protobufs | stack | stack |
| [HBASE-9612](https://issues.apache.org/jira/browse/HBASE-9612) | Ability to batch edits destined to different regions |  Blocker | . | Benoit Sigoure | stack |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9299](https://issues.apache.org/jira/browse/HBASE-9299) | Generate the protobuf classes with hadoop-maven-plugin |  Major | . | Eric Charles | Eric Charles |
| [HBASE-9630](https://issues.apache.org/jira/browse/HBASE-9630) | Add thread which detects JVM pauses like HADOOP's |  Major | regionserver | Liang Xie | Liang Xie |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9139](https://issues.apache.org/jira/browse/HBASE-9139) | Independent timeout configuration for rpc channel between cluster nodes |  Minor | IPC/RPC, regionserver | Julian Zhou | Julian Zhou |
| [HBASE-9243](https://issues.apache.org/jira/browse/HBASE-9243) | Add more useful statistics in the HFile tool |  Minor | HFile | Alexandre Normand | Alexandre Normand |
| [HBASE-9273](https://issues.apache.org/jira/browse/HBASE-9273) | Consolidate isSystemTable checking |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8441](https://issues.apache.org/jira/browse/HBASE-8441) | [replication] Refactor KeeperExceptions thrown from replication state interfaces into replication specific exceptions |  Minor | . | Chris Trezzo | Chris Trezzo |
| [HBASE-8754](https://issues.apache.org/jira/browse/HBASE-8754) | Log the client IP/port of the balancer invoker |  Major | master, Usability | Harsh J | stack |
| [HBASE-7564](https://issues.apache.org/jira/browse/HBASE-7564) | [replication] Create interfaces for manipulation of replication state |  Major | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-9248](https://issues.apache.org/jira/browse/HBASE-9248) | Place holders for tags in 0.96 to accommodate tags in 0.98 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-9116](https://issues.apache.org/jira/browse/HBASE-9116) | Add a view/edit tool for favored node mappings for regions |  Major | Region Assignment | Devaraj Das | Devaraj Das |
| [HBASE-9313](https://issues.apache.org/jira/browse/HBASE-9313) | NamespaceJanitor is spammy when the namespace table moves |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9330](https://issues.apache.org/jira/browse/HBASE-9330) | Refactor PE to create HTable the correct way |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9371](https://issues.apache.org/jira/browse/HBASE-9371) | Eliminate log spam when tailing files |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9208](https://issues.apache.org/jira/browse/HBASE-9208) | ReplicationLogCleaner slow at large scale |  Major | Replication | Dave Latham | Dave Latham |
| [HBASE-9385](https://issues.apache.org/jira/browse/HBASE-9385) | Log HBase Master command line arguments on startup |  Minor | master | Aditya Kishore | Aditya Kishore |
| [HBASE-9373](https://issues.apache.org/jira/browse/HBASE-9373) | [replication] data loss because replication doesn't expect partial reads |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9443](https://issues.apache.org/jira/browse/HBASE-9443) | ReplicationProtbufUtil.toHLogEntries needs to be either removed or deprecated |  Major | Replication | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-9314](https://issues.apache.org/jira/browse/HBASE-9314) | Dropping a table always prints a TableInfoMissingException in the master log |  Minor | . | Jean-Daniel Cryans | Andrew Purtell |
| [HBASE-9438](https://issues.apache.org/jira/browse/HBASE-9438) | Enhance hbase shell un/assign to take encoded region name |  Minor | shell | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9483](https://issues.apache.org/jira/browse/HBASE-9483) | [WINDOWS] Allow running upgrade tool from hbase.cmd |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9494](https://issues.apache.org/jira/browse/HBASE-9494) | Cleanup inconsistencies in protobuf message and rpc names |  Minor | IPC/RPC, Protobufs | Dan Burkert |  |
| [HBASE-9347](https://issues.apache.org/jira/browse/HBASE-9347) | Support for enabling servlet filters for REST service |  Major | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9520](https://issues.apache.org/jira/browse/HBASE-9520) | shortcut split asap while requested splitPoint equals with region's startKey |  Minor | Client | Liang Xie | Liang Xie |
| [HBASE-9467](https://issues.apache.org/jira/browse/HBASE-9467) | write can be totally blocked temporarily by a write-heavy region |  Major | . | Honghua Feng | Honghua Feng |
| [HBASE-9560](https://issues.apache.org/jira/browse/HBASE-9560) | bin/hbase clean --cleanAll should not skip data cleaning if in local mode |  Major | scripts | Enis Soztutar | Enis Soztutar |
| [HBASE-9488](https://issues.apache.org/jira/browse/HBASE-9488) | Improve performance for small scan |  Major | Client, Performance, Scanners | chunhui shen | chunhui shen |
| [HBASE-9577](https://issues.apache.org/jira/browse/HBASE-9577) | Log process environment variable on HBase service startup |  Minor | . | Aditya Kishore | Aditya Kishore |
| [HBASE-9661](https://issues.apache.org/jira/browse/HBASE-9661) | Consistent log severity level guards and statements |  Minor | . | Jackie Chang | Jackie Chang |
| [HBASE-9656](https://issues.apache.org/jira/browse/HBASE-9656) | Remove decimal places from Requests Per Second stats |  Trivial | UI | James Kinley | James Kinley |
| [HBASE-9667](https://issues.apache.org/jira/browse/HBASE-9667) | NullOutputStream removed from Guava 15 |  Critical | . | Matt Greenfield | Nicolas Liochon |
| [HBASE-9333](https://issues.apache.org/jira/browse/HBASE-9333) | hbase.hconnection.threads.max should not be configurable else you get RejectedExecutionException |  Critical | . | Jean-Daniel Cryans | Elliott Clark |
| [HBASE-9701](https://issues.apache.org/jira/browse/HBASE-9701) | Make SLEEP\_TIME in IntegrationTestMTTR configurable |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9686](https://issues.apache.org/jira/browse/HBASE-9686) | More temporary test files are being left in /tmp/hbase-\<user\> |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9703](https://issues.apache.org/jira/browse/HBASE-9703) | DistributedHBaseCluster should not throw exceptions, but do a best effort restore |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9714](https://issues.apache.org/jira/browse/HBASE-9714) | add scan logging to IntegrationTestLoadAndVerify |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9744](https://issues.apache.org/jira/browse/HBASE-9744) | Set io.serializations correctly in HFileOutputFormat.configureIncrementalLoad |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9742](https://issues.apache.org/jira/browse/HBASE-9742) | Add Documentation For Simple User Access |  Major | documentation | Jesse Anderson | Jesse Anderson |
| [HBASE-9749](https://issues.apache.org/jira/browse/HBASE-9749) | Custom threadpool for Coprocessor obtained HTables |  Major | Coprocessors | Jesse Yates | Jesse Yates |
| [HBASE-8625](https://issues.apache.org/jira/browse/HBASE-8625) | Dependency version upgrade |  Minor | . | Nicolas Liochon | Nicolas Liochon |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9205](https://issues.apache.org/jira/browse/HBASE-9205) | fix javadoc warning violation introduced by HBASE-9142 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9196](https://issues.apache.org/jira/browse/HBASE-9196) | Remove dead code related to KeyValue |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9164](https://issues.apache.org/jira/browse/HBASE-9164) | Convert List\<? extends Cell\> anti pattern to List\<Cell\> pattern. |  Blocker | Client | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9204](https://issues.apache.org/jira/browse/HBASE-9204) | An Offline SplitParent Region can be assigned breaking split references |  Major | Region Assignment | Matteo Bertozzi | Jimmy Xiang |
| [HBASE-9237](https://issues.apache.org/jira/browse/HBASE-9237) | Integration test cleanup after ChaosMonkey refactor |  Critical | test | Elliott Clark | Elliott Clark |
| [HBASE-9250](https://issues.apache.org/jira/browse/HBASE-9250) | Lease sleep time can throw an exception |  Critical | . | Elliott Clark | Elliott Clark |
| [HBASE-9233](https://issues.apache.org/jira/browse/HBASE-9233) | isTableAvailable() may be stuck if an offline parent was never assigned |  Critical | Client, Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9236](https://issues.apache.org/jira/browse/HBASE-9236) | region\_mover#getTable() should use TableName.toString() instead of Bytes.toString() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9255](https://issues.apache.org/jira/browse/HBASE-9255) | TestAsyncProcess#testErrorsServers is flaky on suse linux |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9257](https://issues.apache.org/jira/browse/HBASE-9257) | TestAsyncProcess#testFailAndSuccess fails sometime due to a race condition |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9234](https://issues.apache.org/jira/browse/HBASE-9234) | Rebuilding user regions should ignore system tables |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9002](https://issues.apache.org/jira/browse/HBASE-9002) | TestDistributedLogSplitting.testRecoveredEdits fails |  Major | test | stack | Jeffrey Zhong |
| [HBASE-9251](https://issues.apache.org/jira/browse/HBASE-9251) | list\_namespace\_tables seems to fail |  Major | . | Devaraj Das | Andrew Purtell |
| [HBASE-9253](https://issues.apache.org/jira/browse/HBASE-9253) | Clean up IT test code |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-9195](https://issues.apache.org/jira/browse/HBASE-9195) | Fix TestFSHDFSUtils against java7 test re-ordering |  Minor | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9269](https://issues.apache.org/jira/browse/HBASE-9269) | IntegrationTestBulkLoad fails because a public constructor is needed. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-8760](https://issues.apache.org/jira/browse/HBASE-8760) | possible loss of data in snapshot taken after region split |  Major | snapshots | Jerry He | Matteo Bertozzi |
| [HBASE-8165](https://issues.apache.org/jira/browse/HBASE-8165) | Move to Hadoop 2.1.0-beta from 2.0.x-alpha (WAS: Update our protobuf to 2.5 from 2.4.1) |  Major | . | stack | stack |
| [HBASE-9289](https://issues.apache.org/jira/browse/HBASE-9289) | hbase-assembly pom should use project.parent.basedir |  Minor | build | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9267](https://issues.apache.org/jira/browse/HBASE-9267) | StochasticLoadBalancer goes over its processing time limit |  Major | . | Jean-Daniel Cryans | Elliott Clark |
| [HBASE-9285](https://issues.apache.org/jira/browse/HBASE-9285) | User who created table cannot scan the same table due to Insufficient permissions |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9298](https://issues.apache.org/jira/browse/HBASE-9298) | ns checker runs too frequently; too much mention in master logs |  Major | . | stack | stack |
| [HBASE-9290](https://issues.apache.org/jira/browse/HBASE-9290) | Add logging in IntegrationTestBigLinkedList Verify reduce phase |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-9274](https://issues.apache.org/jira/browse/HBASE-9274) | After HBASE-8408 applied, temporary test files are being left in /tmp/hbase-\<user\> |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9308](https://issues.apache.org/jira/browse/HBASE-9308) | Fix precommit javadoc warnings |  Major | . | Jonathan Hsieh | stack |
| [HBASE-8565](https://issues.apache.org/jira/browse/HBASE-8565) | stop-hbase.sh clean up: backup master |  Minor | master, scripts | Jerry He | Jerry He |
| [HBASE-9319](https://issues.apache.org/jira/browse/HBASE-9319) | Apply 'HBASE-7685 Closing socket connection can't be removed from SecureClient' to trunk |  Major | . | stack | stack |
| [HBASE-9320](https://issues.apache.org/jira/browse/HBASE-9320) | Up timeouts on NamespaceUpgrades timeouts |  Major | test | stack | stack |
| [HBASE-9323](https://issues.apache.org/jira/browse/HBASE-9323) | TestHRegionOnCluster fails |  Major | test | stack | stack |
| [HBASE-9309](https://issues.apache.org/jira/browse/HBASE-9309) | The links in the backup masters template are bad |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9310](https://issues.apache.org/jira/browse/HBASE-9310) | Remove slop for Stochastic load balancer |  Major | Balancer | Elliott Clark | Elliott Clark |
| [HBASE-9296](https://issues.apache.org/jira/browse/HBASE-9296) | Update to bootstrap 3.0 |  Minor | UI | Elliott Clark | Elliott Clark |
| [HBASE-9303](https://issues.apache.org/jira/browse/HBASE-9303) | Snapshot restore of table which splits after snapshot was taken encounters 'Region is not online' |  Major | . | Ted Yu | Matteo Bertozzi |
| [HBASE-9324](https://issues.apache.org/jira/browse/HBASE-9324) | TestProcedureMember#testMemberCommitException, testSimpleRun & testMemberCommitCommsFailure are flaky on Suse OS |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9327](https://issues.apache.org/jira/browse/HBASE-9327) | retryTime log is confusing |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9318](https://issues.apache.org/jira/browse/HBASE-9318) | Procedure#waitForLatch may not throw error even there is one |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9268](https://issues.apache.org/jira/browse/HBASE-9268) | Client doesn't recover from a stalled region server |  Major | . | Jean-Daniel Cryans | Nicolas Liochon |
| [HBASE-9023](https://issues.apache.org/jira/browse/HBASE-9023) | TestIOFencing.testFencingAroundCompactionAfterWALSync occasionally fails |  Major | . | stack | Ted Yu |
| [HBASE-9312](https://issues.apache.org/jira/browse/HBASE-9312) | Lower StochasticLoadBalancer's default max run time |  Major | . | Jean-Daniel Cryans | Elliott Clark |
| [HBASE-9332](https://issues.apache.org/jira/browse/HBASE-9332) | OrderedBytes does not decode Strings correctly |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9337](https://issues.apache.org/jira/browse/HBASE-9337) | shell 'user\_permission' throws no method 'toStringBinary' for (o.a.h.h.TableName) |  Major | security, shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9340](https://issues.apache.org/jira/browse/HBASE-9340) | revoke 'user' throws ArrayIndexOutOfBoundsException |  Major | security, shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9307](https://issues.apache.org/jira/browse/HBASE-9307) | HalfStoreFileReader needs to handle the faked key else compactions go into infinite loops |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9348](https://issues.apache.org/jira/browse/HBASE-9348) | TerminatedWrapper error decoding, skipping skippable types |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9302](https://issues.apache.org/jira/browse/HBASE-9302) | Column family and qualifier should be allowed to be set as null in grant shell command |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9283](https://issues.apache.org/jira/browse/HBASE-9283) | Struct and StructIterator should properly handle trailing nulls |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8462](https://issues.apache.org/jira/browse/HBASE-8462) | Custom timestamps should not be allowed to be negative |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-9230](https://issues.apache.org/jira/browse/HBASE-9230) | Fix the server so it can take a pure pb request param and return a pure pb result |  Critical | . | stack | stack |
| [HBASE-9278](https://issues.apache.org/jira/browse/HBASE-9278) | Reading Pre-namespace meta table edits kills the reader |  Critical | migration, wal | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7709](https://issues.apache.org/jira/browse/HBASE-7709) | Infinite loop possible in Master/Master replication |  Major | Replication | Lars Hofhansl | Vasu Mariyala |
| [HBASE-9372](https://issues.apache.org/jira/browse/HBASE-9372) | Restore HConstants.META\_TABLE\_NAME as deprecated |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9326](https://issues.apache.org/jira/browse/HBASE-9326) | ServerName is created using getLocalSocketAddress, breaks binding to the wildcard address. Revert HBASE-8640 |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9321](https://issues.apache.org/jira/browse/HBASE-9321) | Contention getting the current user in RpcClient$Connection.writeRequest |  Critical | . | Jean-Daniel Cryans | Jimmy Xiang |
| [HBASE-9353](https://issues.apache.org/jira/browse/HBASE-9353) | HTable returned by MetaReader#getMetaHTable() is not closed in MetaEditor#addRegionToMeta() |  Major | . | Ted Yu | Matteo Bertozzi |
| [HBASE-9380](https://issues.apache.org/jira/browse/HBASE-9380) | StoreFile.Reader is not being closed on memstore flush |  Major | regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-9382](https://issues.apache.org/jira/browse/HBASE-9382) | replicateWALEntry doesn't use the replication handlers |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-9384](https://issues.apache.org/jira/browse/HBASE-9384) | [WINDOWS] Using file://{hbase.tmp.dir}/hbase for hbase.rootdir causes illegal argument exception on windows |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9386](https://issues.apache.org/jira/browse/HBASE-9386) | [WINDOWS] Small improvements to .cmd scripts |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9389](https://issues.apache.org/jira/browse/HBASE-9389) | Favorednodes command line not verifying assignments correctly |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-9394](https://issues.apache.org/jira/browse/HBASE-9394) | [replication] size accounting is completely off in the source |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9395](https://issues.apache.org/jira/browse/HBASE-9395) | Disable Schema Change on 0.96 |  Blocker | master | Elliott Clark | Elliott Clark |
| [HBASE-9398](https://issues.apache.org/jira/browse/HBASE-9398) | Get HBASE-9190 to branck 0.95 |  Minor | . | Jimmy Xiang |  |
| [HBASE-9397](https://issues.apache.org/jira/browse/HBASE-9397) | Snapshots with the same name are allowed to proceed concurrently |  Major | snapshots | Jerry He | Jerry He |
| [HBASE-9418](https://issues.apache.org/jira/browse/HBASE-9418) | REST server web UI has some dead links |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9415](https://issues.apache.org/jira/browse/HBASE-9415) | In rpcServer, replicationQueue is initialized with the max queue size instead of the max queue lenght |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9423](https://issues.apache.org/jira/browse/HBASE-9423) | Log splitting should not start till HDFS out of safe mode |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9281](https://issues.apache.org/jira/browse/HBASE-9281) | user\_permission command encounters NullPointerException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9428](https://issues.apache.org/jira/browse/HBASE-9428) | Regex filters are at least an order of magnitude slower since 0.94.3 |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-9414](https://issues.apache.org/jira/browse/HBASE-9414) | start-hbase.cmd doesn't need the execute flag. |  Trivial | . | Jean-Marc Spaggiari | stack |
| [HBASE-9412](https://issues.apache.org/jira/browse/HBASE-9412) | Startup scripts create 2 .out files. |  Minor | scripts | Jean-Marc Spaggiari | stack |
| [HBASE-9433](https://issues.apache.org/jira/browse/HBASE-9433) | OpenRegionHandler uses different assignment timeout |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9388](https://issues.apache.org/jira/browse/HBASE-9388) | [replication] ZK Dump prints the raw PBUF for the HLog positions |  Major | . | Jean-Daniel Cryans | Himanshu Vashishtha |
| [HBASE-9387](https://issues.apache.org/jira/browse/HBASE-9387) | Region could get lost during assignment |  Critical | Region Assignment | Ted Yu | Ted Yu |
| [HBASE-9434](https://issues.apache.org/jira/browse/HBASE-9434) | hbck tries to sideline file to root dir |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9446](https://issues.apache.org/jira/browse/HBASE-9446) | saveVersion.sh spit pushd: not found popd: not found |  Minor | build | Jimmy Xiang | Elliott Clark |
| [HBASE-9442](https://issues.apache.org/jira/browse/HBASE-9442) | HLogKey(walKey) constructor needs to be either removed, deprecated or fixed |  Major | . | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-9413](https://issues.apache.org/jira/browse/HBASE-9413) | WebUI says ".META." table but table got renames to "hbase:meta". Meed to update the UI. |  Critical | UI | Jean-Marc Spaggiari | stack |
| [HBASE-9437](https://issues.apache.org/jira/browse/HBASE-9437) | hbase.regionserver.checksum.verify default: true or false |  Minor | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9453](https://issues.apache.org/jira/browse/HBASE-9453) | make dev-support/generate-hadoopX-poms.sh have exec perms. |  Minor | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9450](https://issues.apache.org/jira/browse/HBASE-9450) | TestDistributedLogSplitting fails |  Major | . | stack | Jimmy Xiang |
| [HBASE-9452](https://issues.apache.org/jira/browse/HBASE-9452) | Simplify the configuration of the multicast notifier |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9436](https://issues.apache.org/jira/browse/HBASE-9436) | hbase.regionserver.handler.count default: 5, 10, 25, 30? pick one |  Minor | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9301](https://issues.apache.org/jira/browse/HBASE-9301) | Default hbase.dynamic.jars.dir to hbase.rootdir/jars |  Major | . | James Taylor | Vasu Mariyala |
| [HBASE-9475](https://issues.apache.org/jira/browse/HBASE-9475) | Fix pom warnings found by new m2eclipse |  Major | build | stack | stack |
| [HBASE-9449](https://issues.apache.org/jira/browse/HBASE-9449) | document how to use shell enhancements from HBASE-5548 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9476](https://issues.apache.org/jira/browse/HBASE-9476) | Yet more master log cleanup |  Major | Usability | stack | stack |
| [HBASE-8930](https://issues.apache.org/jira/browse/HBASE-8930) | Filter evaluates KVs outside requested columns |  Critical | Filters | Federico Gaule | Vasu Mariyala |
| [HBASE-9463](https://issues.apache.org/jira/browse/HBASE-9463) | Fix comments around alter tables |  Minor | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9451](https://issues.apache.org/jira/browse/HBASE-9451) | Meta remains unassigned when the meta server crashes with the ClusterStatusListener set |  Major | . | Devaraj Das | Nicolas Liochon |
| [HBASE-9456](https://issues.apache.org/jira/browse/HBASE-9456) | Meta doesn't get assigned in a master failure scenario |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-9481](https://issues.apache.org/jira/browse/HBASE-9481) | Servershutdown handler get aborted with ConcurrentModificationException |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9497](https://issues.apache.org/jira/browse/HBASE-9497) | Old .META. .tableinfo file kills HMaster |  Major | master, migration | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9498](https://issues.apache.org/jira/browse/HBASE-9498) | NPE in HBaseAdmin if master not running |  Major | Admin | stack | stack |
| [HBASE-9468](https://issues.apache.org/jira/browse/HBASE-9468) | Previous active master can still serves RPC request when it is trying recovering expired zk session |  Major | . | Honghua Feng | Honghua Feng |
| [HBASE-9482](https://issues.apache.org/jira/browse/HBASE-9482) | Do not enforce secure Hadoop for secure HBase |  Major | security | Aditya Kishore | Aditya Kishore |
| [HBASE-9509](https://issues.apache.org/jira/browse/HBASE-9509) | Fix HFile V1 Detector to handle AccessControlException for non-existant files |  Major | . | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9474](https://issues.apache.org/jira/browse/HBASE-9474) | Cleanup of hbase script usage |  Major | scripts | stack | stack |
| [HBASE-9460](https://issues.apache.org/jira/browse/HBASE-9460) | Fix HLogPerformanceEvaluation so runs against localfs |  Major | . | stack | stack |
| [HBASE-9375](https://issues.apache.org/jira/browse/HBASE-9375) | [REST] Querying row data gives all the available versions of a column |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9492](https://issues.apache.org/jira/browse/HBASE-9492) | hdfs-site.xml is not excluded from the it-test jar |  Major | build | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9421](https://issues.apache.org/jira/browse/HBASE-9421) | Provide better error message when dropping non-existent namespace |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-9486](https://issues.apache.org/jira/browse/HBASE-9486) | NPE in HTable.close() with AsyncProcess |  Critical | Client | Enis Soztutar | Nicolas Liochon |
| [HBASE-9454](https://issues.apache.org/jira/browse/HBASE-9454) | HBaseAdmin#unassign() has incorrect @param argument |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-9471](https://issues.apache.org/jira/browse/HBASE-9471) | htrace synchronized on getInstance |  Minor | regionserver | Nicolas Liochon | Elliott Clark |
| [HBASE-7296](https://issues.apache.org/jira/browse/HBASE-7296) | Add hbase.master.loadbalancer.class in the documentation |  Minor | documentation | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9508](https://issues.apache.org/jira/browse/HBASE-9508) | Restore some API mistakenly removed in client, mapred\*, and common |  Critical | Usability | stack | stack |
| [HBASE-9480](https://issues.apache.org/jira/browse/HBASE-9480) | Regions are unexpectedly made offline in certain failure conditions |  Major | . | Devaraj Das | Jimmy Xiang |
| [HBASE-9512](https://issues.apache.org/jira/browse/HBASE-9512) | Regions can't get out InRecovery state sometimes when turn off distributeLogReplay and restart a cluster |  Minor | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9457](https://issues.apache.org/jira/browse/HBASE-9457) | Master could fail start if region server with system table is down |  Critical | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9547](https://issues.apache.org/jira/browse/HBASE-9547) | Surefire steals focus on mac osx |  Major | . | stack | stack |
| [HBASE-9521](https://issues.apache.org/jira/browse/HBASE-9521) | clean clearBufferOnFail behavior and deprecate it |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9425](https://issues.apache.org/jira/browse/HBASE-9425) | Starting a LocalHBaseCluster when 2181 is occupied results in "Too many open files" |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9541](https://issues.apache.org/jira/browse/HBASE-9541) | icv fails w/ npe if client does not support cellblocks |  Major | IPC/RPC | stack | stack |
| [HBASE-9366](https://issues.apache.org/jira/browse/HBASE-9366) | TestHTraceHooks.testTraceCreateTable ConcurrentModificationException up in htrace lib |  Major | . | stack | Elliott Clark |
| [HBASE-9525](https://issues.apache.org/jira/browse/HBASE-9525) | "Move" region right after a region split is dangerous |  Major | . | Devaraj Das | Jimmy Xiang |
| [HBASE-9552](https://issues.apache.org/jira/browse/HBASE-9552) | NPE while updating RegionServers with the favored nodes assignments from the client tool |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-9539](https://issues.apache.org/jira/browse/HBASE-9539) | Handle post namespace snapshot files  when checking for HFile V1 |  Major | migration | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9554](https://issues.apache.org/jira/browse/HBASE-9554) | TestOfflineMetaRebuildOverlap#testMetaRebuildOverlapFail fails due to NPE |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9338](https://issues.apache.org/jira/browse/HBASE-9338) | Test Big Linked List fails on Hadoop 2.1.0 |  Blocker | test | Elliott Clark | Elliott Clark |
| [HBASE-7953](https://issues.apache.org/jira/browse/HBASE-7953) | Some HFilePerformanceEvaluation tests might fail because of scanner.getValue when there is no more row |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9510](https://issues.apache.org/jira/browse/HBASE-9510) | Namespace operations should throw clean exceptions |  Major | master | Enis Soztutar | Enis Soztutar |
| [HBASE-9555](https://issues.apache.org/jira/browse/HBASE-9555) | Reset loadbalancer back to StochasticLoadBalancer |  Critical | Balancer | Elliott Clark | stack |
| [HBASE-9557](https://issues.apache.org/jira/browse/HBASE-9557) | strange dependencies for hbase-client |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9550](https://issues.apache.org/jira/browse/HBASE-9550) | IntegrationTestBigLinkedList used to be able to run on pseudo-distributed clusters |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-9561](https://issues.apache.org/jira/browse/HBASE-9561) | hbase-server-tests.jar contains a test mapred-site.xml |  Blocker | build, mapreduce | Elliott Clark | Elliott Clark |
| [HBASE-9419](https://issues.apache.org/jira/browse/HBASE-9419) | Add more informative client column to Integration Test Linked List |  Minor | test | Elliott Clark | Elliott Clark |
| [HBASE-9565](https://issues.apache.org/jira/browse/HBASE-9565) | LocalityRegionPicker was mistakenly commented out |  Major | Balancer | Elliott Clark | Elliott Clark |
| [HBASE-9400](https://issues.apache.org/jira/browse/HBASE-9400) | [UI] Catalog tables section isn't aligned |  Minor | UI | Jimmy Xiang | Elliott Clark |
| [HBASE-9569](https://issues.apache.org/jira/browse/HBASE-9569) | TestHLog is broken |  Major | test | stack | stack |
| [HBASE-9534](https://issues.apache.org/jira/browse/HBASE-9534) | Short-Circuit Coprocessor HTable access when on the same server |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-9364](https://issues.apache.org/jira/browse/HBASE-9364) | Get request with multiple columns returns partial results |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9551](https://issues.apache.org/jira/browse/HBASE-9551) | HBaseTestingUtility#createPreSplitLoadTestTable double close HBaseAdmin |  Minor | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9581](https://issues.apache.org/jira/browse/HBASE-9581) | Few tests broken since HBASE-9551 |  Major | . | Aditya Kishore | Aditya Kishore |
| [HBASE-9533](https://issues.apache.org/jira/browse/HBASE-9533) | List of dependency jars for MR jobs is hard-coded and does not include netty, breaking MRv1 jobs |  Blocker | mapreduce | Aleksandr Shulman | Matteo Bertozzi |
| [HBASE-9558](https://issues.apache.org/jira/browse/HBASE-9558) | PerformanceEvaluation is in hbase-server, and create a dependency to MiniDFSCluster |  Minor | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9579](https://issues.apache.org/jira/browse/HBASE-9579) | Sanity check visiblity and audience for server-side modules. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9462](https://issues.apache.org/jira/browse/HBASE-9462) | HBaseAdmin#isTableEnabled() should throw exception for non-existent table |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8348](https://issues.apache.org/jira/browse/HBASE-8348) | Polish the migration to 0.96 |  Critical | . | Jean-Daniel Cryans | rajeshbabu |
| [HBASE-9597](https://issues.apache.org/jira/browse/HBASE-9597) | Create hbase-thrift module |  Major | build, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-9603](https://issues.apache.org/jira/browse/HBASE-9603) | IsRestoreSnapshotDoneResponse has wrong default causing restoreSnapshot() to be async |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9600](https://issues.apache.org/jira/browse/HBASE-9600) | TestColumnSchemaModel and TestTableSchemaModel test cases are failing with IBM IBM Java 6 |  Major | . | Paulo Ricardo Paz Vital |  |
| [HBASE-9607](https://issues.apache.org/jira/browse/HBASE-9607) | Data loss after snapshot restore into cloned table |  Major | snapshots | Ted Yu | Matteo Bertozzi |
| [HBASE-9430](https://issues.apache.org/jira/browse/HBASE-9430) | Memstore heapSize calculation - DEEP\_OVERHEAD is incorrect |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-9632](https://issues.apache.org/jira/browse/HBASE-9632) | Put the shell in a maven sub module (hbase-shell) instead of hbase-server |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9633](https://issues.apache.org/jira/browse/HBASE-9633) | Partial reverse of HBASE-9533 |  Major | build, Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9609](https://issues.apache.org/jira/browse/HBASE-9609) | AsyncProcess doesn't increase all the counters when trying to limit the per region flow. |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9511](https://issues.apache.org/jira/browse/HBASE-9511) | LZ4 codec retrieval executes redundant code |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9642](https://issues.apache.org/jira/browse/HBASE-9642) | AM ZK Workers stuck doing 100% CPU on HashMap.put |  Blocker | . | Jean-Daniel Cryans | Devaraj Das |
| [HBASE-9639](https://issues.apache.org/jira/browse/HBASE-9639) | SecureBulkLoad dispatches file load requests to all Regions |  Major | Client, Coprocessors | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9649](https://issues.apache.org/jira/browse/HBASE-9649) | HFilePrettyPrinter should not throw a NPE if FirstKey or LastKey is null. |  Major | util | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9650](https://issues.apache.org/jira/browse/HBASE-9650) | Per region metrics are not showing up for system tables. |  Critical | metrics | Elliott Clark | Elliott Clark |
| [HBASE-9653](https://issues.apache.org/jira/browse/HBASE-9653) | Add compaction metrics to trunk |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-8870](https://issues.apache.org/jira/browse/HBASE-8870) | Store.needsCompaction() should include minFilesToCompact |  Minor | Compaction | Liang Xie | Liang Xie |
| [HBASE-9660](https://issues.apache.org/jira/browse/HBASE-9660) | Release source tarball should contain ./dev-support contents. |  Critical | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9439](https://issues.apache.org/jira/browse/HBASE-9439) | shell command list shows something not meaningful |  Minor | shell | Jimmy Xiang | Jonathan Hsieh |
| [HBASE-8711](https://issues.apache.org/jira/browse/HBASE-8711) | Requests count is completely off |  Major | UI | Jean-Daniel Cryans | James Kinley |
| [HBASE-9647](https://issues.apache.org/jira/browse/HBASE-9647) | Add a test in TestAsyncProcess to check the number of threads created |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9548](https://issues.apache.org/jira/browse/HBASE-9548) | Cleanup SnapshotTestingUtils |  Trivial | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9672](https://issues.apache.org/jira/browse/HBASE-9672) | LoadTestTool NPE's when -num\_tables is given, but -tn is not |  Minor | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9685](https://issues.apache.org/jira/browse/HBASE-9685) | IntegrationTestMTTR should stop on RetriesExhaustedException |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9610](https://issues.apache.org/jira/browse/HBASE-9610) | TestThriftServer.testAll failing |  Major | . | stack | stack |
| [HBASE-9663](https://issues.apache.org/jira/browse/HBASE-9663) | PerformanceEvaluation does not properly honor specified table name parameter |  Major | Client, test | Aleksandr Shulman | Matteo Bertozzi |
| [HBASE-9514](https://issues.apache.org/jira/browse/HBASE-9514) | Prevent region from assigning before log splitting is done |  Blocker | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9697](https://issues.apache.org/jira/browse/HBASE-9697) | ZKDataMigrator should exit on table(s) null check. |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9676](https://issues.apache.org/jira/browse/HBASE-9676) | AsyncProcess can create more tasks than hbase.client.max.total.tasks |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8710](https://issues.apache.org/jira/browse/HBASE-8710) | The balancer shouldn't try balancing one node |  Minor | . | Jean-Daniel Cryans | James Kinley |
| [HBASE-9602](https://issues.apache.org/jira/browse/HBASE-9602) | Cluster can't start when log splitting at startup time and the master's web UI is refreshed a few times |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9700](https://issues.apache.org/jira/browse/HBASE-9700) | remove htrace-zipkin from the runtime dependencies |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-9699](https://issues.apache.org/jira/browse/HBASE-9699) | For Downstreamers using HBaseTestingUtility is hard. |  Major | build, test | Elliott Clark | Elliott Clark |
| [HBASE-9698](https://issues.apache.org/jira/browse/HBASE-9698) | HBCK does not handle tables with no regions left |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9390](https://issues.apache.org/jira/browse/HBASE-9390) | coprocessors observers are not called during a recovery with the new log replay algorithm |  Major | Coprocessors, MTTR | Nicolas Liochon | Jeffrey Zhong |
| [HBASE-9709](https://issues.apache.org/jira/browse/HBASE-9709) | LogReplay throws NPE when no KVs to be replayed in a WALEdit |  Minor | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9670](https://issues.apache.org/jira/browse/HBASE-9670) | Client pause should be 100ms everywhere |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9728](https://issues.apache.org/jira/browse/HBASE-9728) | generate-hadoopX-poms.sh examples is wrong. |  Trivial | build | Elliott Clark | Elliott Clark |
| [HBASE-9435](https://issues.apache.org/jira/browse/HBASE-9435) | Fix jersey serialization/deserialization of json objects |  Blocker | REST | Francis Liu |  |
| [HBASE-9687](https://issues.apache.org/jira/browse/HBASE-9687) | ClassNotFoundException is thrown when ExportSnapshot runs against hadoop cluster where HBase is not installed on the same node as resourcemanager |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9730](https://issues.apache.org/jira/browse/HBASE-9730) | Exceptions in multi operations are not handled correctly |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9723](https://issues.apache.org/jira/browse/HBASE-9723) | TestAsyncProcess#testFailAndSuccess & testThreadCreation are flaky on SUSE |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9732](https://issues.apache.org/jira/browse/HBASE-9732) | Static AtomicLong updated in StoreFileScanner every (re)seek |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9735](https://issues.apache.org/jira/browse/HBASE-9735) | region\_mover.rb uses the removed HConnection.getZooKeeperWatcher() method |  Major | scripts | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9724](https://issues.apache.org/jira/browse/HBASE-9724) | Failed region split is not handled correctly by AM |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9688](https://issues.apache.org/jira/browse/HBASE-9688) | Fix javadoc warning in HConnectionManager class javadoc |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-9743](https://issues.apache.org/jira/browse/HBASE-9743) | RollingBatchRestartRsAction aborts if timeout |  Major | test | stack | stack |
| [HBASE-9696](https://issues.apache.org/jira/browse/HBASE-9696) | Master recovery ignores online merge znode |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9770](https://issues.apache.org/jira/browse/HBASE-9770) | HFilePerformanceEvaluation is using the wrong Comparator |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9328](https://issues.apache.org/jira/browse/HBASE-9328) | Table web UI is corrupted sometime |  Major | . | Jimmy Xiang | Jean-Marc Spaggiari |
| [HBASE-8280](https://issues.apache.org/jira/browse/HBASE-8280) | Add a dummy test to check build env |  Minor | build | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9367](https://issues.apache.org/jira/browse/HBASE-9367) | TestRegionServerCoprocessorExceptionWithAbort.testExceptionFromCoprocessorDuringPut fails |  Major | test | stack | stack |
| [HBASE-8953](https://issues.apache.org/jira/browse/HBASE-8953) | TestFromClientSide.testClientPoolThreadLocal fails |  Major | . | stack |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9287](https://issues.apache.org/jira/browse/HBASE-9287) | TestCatalogTracker depends on the execution order |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9239](https://issues.apache.org/jira/browse/HBASE-9239) | TestStoreFileBlockCacheSummary#testBlockCacheSummary occasionally fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9315](https://issues.apache.org/jira/browse/HBASE-9315) | TestLruBlockCache.testBackgroundEvictionThread fails on suse |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9447](https://issues.apache.org/jira/browse/HBASE-9447) | TestHBaseFsck could hang sometime |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9376](https://issues.apache.org/jira/browse/HBASE-9376) | TestDistributedLogSplitting creates a MiniCluster rooted at ~/hbase |  Minor | test | Nick Dimiduk | Jeffrey Zhong |
| [HBASE-9441](https://issues.apache.org/jira/browse/HBASE-9441) | Intermittent TestRegionPlacement#testRegionPlacement failure |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-9655](https://issues.apache.org/jira/browse/HBASE-9655) | IntegrationTestMTTR can loop forever on improperly configured clusters |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9664](https://issues.apache.org/jira/browse/HBASE-9664) | ArrayIndexOutOfBoundsException may be thrown in TestZKSecretWatcher |  Major | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9246](https://issues.apache.org/jira/browse/HBASE-9246) | Remove ROOT\_TABLEDESC, ROOT\_REGIONINFO, and ROOT\_TABLE\_NAME |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9262](https://issues.apache.org/jira/browse/HBASE-9262) | Make KeyValue.KEY\_COMPARATOR default for HFile WriterFactory |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9276](https://issues.apache.org/jira/browse/HBASE-9276) | List tables API should filter with isSystemTable |  Major | shell | Andrew Purtell | Nick Dimiduk |
| [HBASE-9277](https://issues.apache.org/jira/browse/HBASE-9277) | REST should use listTableNames to list tables |  Major | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-9279](https://issues.apache.org/jira/browse/HBASE-9279) | Thrift should use listTableNames to list tables |  Major | Thrift | Andrew Purtell | Andrew Purtell |
| [HBASE-9263](https://issues.apache.org/jira/browse/HBASE-9263) | Add initialize method to load balancer interface |  Major | . | Francis Liu | Francis Liu |
| [HBASE-9311](https://issues.apache.org/jira/browse/HBASE-9311) | Create a migration script that will move data from 0.94.x to 0.96 |  Major | migration | stack | Himanshu Vashishtha |
| [HBASE-9110](https://issues.apache.org/jira/browse/HBASE-9110) | Meta region edits not recovered while migrating to 0.96.0 |  Critical | migration | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9247](https://issues.apache.org/jira/browse/HBASE-9247) | Cleanup Key/KV/Meta/MetaKey Comparators |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9359](https://issues.apache.org/jira/browse/HBASE-9359) | Convert KeyValue to Cell in hbase-client module - Result/Put/Delete, ColumnInterpreter |  Major | Client | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9406](https://issues.apache.org/jira/browse/HBASE-9406) | Document 0.96 migration |  Major | documentation | stack | Himanshu Vashishtha |
| [HBASE-9259](https://issues.apache.org/jira/browse/HBASE-9259) | Update hadoop versions grid in refguide adding hadoop-2.1.x and a note on hadoop-2.0.x versions |  Major | documentation | stack | stack |
| [HBASE-9478](https://issues.apache.org/jira/browse/HBASE-9478) | Make Cell @interfaceAudience.public and evolving. |  Blocker | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9487](https://issues.apache.org/jira/browse/HBASE-9487) | create\_namespace with property value throws error |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9477](https://issues.apache.org/jira/browse/HBASE-9477) | Add deprecation compat shim for Result#raw and Result#list for 0.96 |  Blocker | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9493](https://issues.apache.org/jira/browse/HBASE-9493) | Rename CellUtil#get\*Array to CellUtil#clone\* |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9516](https://issues.apache.org/jira/browse/HBASE-9516) | Mark hbase-common classes missing @InterfaceAudience annotation as Private |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9517](https://issues.apache.org/jira/browse/HBASE-9517) | Include only InterfaceAudiencePublic elements in generated Javadoc |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9241](https://issues.apache.org/jira/browse/HBASE-9241) | Add cp hook before initialize variable set to true in master intialization |  Major | master | rajeshbabu | rajeshbabu |
| [HBASE-9523](https://issues.apache.org/jira/browse/HBASE-9523) | Audit of hbase-common @InterfaceAudience.Public apis. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9529](https://issues.apache.org/jira/browse/HBASE-9529) | Audit of hbase-client @InterfaceAudience.Public apis |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9496](https://issues.apache.org/jira/browse/HBASE-9496) | make sure HBase APIs are compatible between 0.94 and 0.96 |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8633](https://issues.apache.org/jira/browse/HBASE-8633) | Document namespaces in HBase book |  Major | . | Enis Soztutar | Francis Liu |
| [HBASE-9562](https://issues.apache.org/jira/browse/HBASE-9562) | Make HLogPE run against configured FS |  Major | Performance, wal | stack | stack |
| [HBASE-9586](https://issues.apache.org/jira/browse/HBASE-9586) | Deprecate remove o.a.h.h.util.Keying class. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9585](https://issues.apache.org/jira/browse/HBASE-9585) | Update javadoc builder in pom to exclude empty packages in user api javadoc |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9652](https://issues.apache.org/jira/browse/HBASE-9652) | Remove HServerLoad092 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9658](https://issues.apache.org/jira/browse/HBASE-9658) | Addendum to HBASE-9534 to fix 0.96 |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-9711](https://issues.apache.org/jira/browse/HBASE-9711) | Improve HBASE-9428 - avoid copying bytes for RegexFilter unless necessary |  Trivial | . | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7462](https://issues.apache.org/jira/browse/HBASE-7462) | TestDrainingServer is an integration test. It should be a unit test instead |  Trivial | test | Nicolas Liochon | Gustavo Anatoly |
| [HBASE-5843](https://issues.apache.org/jira/browse/HBASE-5843) | Improve HBase MTTR - Mean Time To Recover |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9061](https://issues.apache.org/jira/browse/HBASE-9061) | Put back TestReplicationKillMasterRSCompressed when fixed over in HBASE-8615 |  Critical | test | stack | Ted Yu |
| [HBASE-9194](https://issues.apache.org/jira/browse/HBASE-9194) | Break HMaster metrics into multiple contexts |  Major | metrics, Usability | Ted Yu | Elliott Clark |
| [HBASE-9282](https://issues.apache.org/jira/browse/HBASE-9282) | Minor logging cleanup; shorten logs, remove redundant info |  Major | Usability | stack | stack |
| [HBASE-9342](https://issues.apache.org/jira/browse/HBASE-9342) | WebUI fixes after bootstrap 3.0 update |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-9336](https://issues.apache.org/jira/browse/HBASE-9336) | Two css files raise release audit warning |  Major | . | Ted Yu | Nick Dimiduk |
| [HBASE-9341](https://issues.apache.org/jira/browse/HBASE-9341) | Document hbase.hstore.compaction.kv.max |  Critical | documentation | Adrien Mogenet | stack |
| [HBASE-8960](https://issues.apache.org/jira/browse/HBASE-8960) | TestDistributedLogSplitting.testLogReplayForDisablingTable fails sometimes |  Minor | test | Jimmy Xiang | Jeffrey Zhong |
| [HBASE-9370](https://issues.apache.org/jira/browse/HBASE-9370) | Add logging to Schema change Chaos actions. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-9401](https://issues.apache.org/jira/browse/HBASE-9401) | Add getQualifierBufferShallowCopy to Cell Utility. |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-9505](https://issues.apache.org/jira/browse/HBASE-9505) | Enable replication by default |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9495](https://issues.apache.org/jira/browse/HBASE-9495) | Sanity check visiblity and audience for hbase-client and hbase-common apis. |  Critical | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9575](https://issues.apache.org/jira/browse/HBASE-9575) | Add script to automate much of the rc-making process |  Major | build | stack | stack |
| [HBASE-9153](https://issues.apache.org/jira/browse/HBASE-9153) | Introduce/update a script to generate jdiff reports |  Major | . | Jonathan Hsieh | Aleksandr Shulman |
| [HBASE-9583](https://issues.apache.org/jira/browse/HBASE-9583) | add document for getShortMidpointKey |  Major | HFile | Liang Xie | Liang Xie |
| [HBASE-9693](https://issues.apache.org/jira/browse/HBASE-9693) | Fix javadoc warnings |  Trivial | . | Jimmy Xiang | Jimmy Xiang |


