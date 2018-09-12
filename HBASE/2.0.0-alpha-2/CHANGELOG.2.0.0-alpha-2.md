
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

## Release 2.0.0-alpha-2 - 2017-08-21

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18241](https://issues.apache.org/jira/browse/HBASE-18241) | Change client.Table, client.Admin, Region, Store, and HBaseTestingUtility to not use HTableDescriptor or HColumnDescriptor |  Critical | Client | Biju Nair | Chia-Ping Tsai |
| [HBASE-18267](https://issues.apache.org/jira/browse/HBASE-18267) | The result from the postAppend is ignored |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18161](https://issues.apache.org/jira/browse/HBASE-18161) | Incremental Load support for Multiple-Table HFileOutputFormat |  Minor | . | Densel Santhmayor | Densel Santhmayor |
| [HBASE-18374](https://issues.apache.org/jira/browse/HBASE-18374) | RegionServer Metrics improvements |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-18502](https://issues.apache.org/jira/browse/HBASE-18502) | Change MasterObserver to use TableDescriptor and ColumnFamilyDescriptor |  Critical | Coprocessors, master | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | limit max log message width in log4j |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13784](https://issues.apache.org/jira/browse/HBASE-13784) | Add Async Client Table API |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-18226](https://issues.apache.org/jira/browse/HBASE-18226) | Disable reverse DNS lookup at HMaster and use the hostname provided by RegionServer |  Major | . | Duo Xu | Duo Xu |
| [HBASE-15968](https://issues.apache.org/jira/browse/HBASE-15968) | New behavior of versions considering mvcc and ts rather than ts only |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15134](https://issues.apache.org/jira/browse/HBASE-15134) | Add visibility into Flush and Compaction queues |  Major | Compaction, metrics, regionserver | Elliott Clark | Abhishek Singh Chouhan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18033](https://issues.apache.org/jira/browse/HBASE-18033) | Update supplemental models for new deps in Hadoop trunk |  Critical | dependencies | Andrew Wang | Mike Drob |
| [HBASE-18252](https://issues.apache.org/jira/browse/HBASE-18252) | Resolve BaseLoadBalancer bad practice warnings |  Minor | . | Qilin Cao | Qilin Cao |
| [HBASE-16351](https://issues.apache.org/jira/browse/HBASE-16351) | do dependency license check via enforcer plugin |  Major | build, dependencies | Sean Busbey | Mike Drob |
| [HBASE-18164](https://issues.apache.org/jira/browse/HBASE-18164) | Much faster locality cost function and candidate generator |  Critical | Balancer | Kahlil Oppenheimer | Kahlil Oppenheimer |
| [HBASE-18041](https://issues.apache.org/jira/browse/HBASE-18041) | Add pylintrc file to HBase |  Major | community | Alex Leblang | Alex Leblang |
| [HBASE-18281](https://issues.apache.org/jira/browse/HBASE-18281) | Performance update in StoreFileWriter.java for string replacement |  Trivial | community | Ben Epstein | Ben Epstein |
| [HBASE-16585](https://issues.apache.org/jira/browse/HBASE-16585) | Rewrite the delegation token tests with Parameterized pattern |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-15391](https://issues.apache.org/jira/browse/HBASE-15391) | Avoid too large "deleted from META" info log |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-17995](https://issues.apache.org/jira/browse/HBASE-17995) | improve log messages during snapshot related tests |  Trivial | integration tests, mapreduce, snapshots, test | Sean Busbey | Sean Busbey |
| [HBASE-18286](https://issues.apache.org/jira/browse/HBASE-18286) | Create static empty byte array to save memory |  Trivial | community | Ben Epstein | Ben Epstein |
| [HBASE-18307](https://issues.apache.org/jira/browse/HBASE-18307) | Share the same EventLoopGroup for NettyRpcServer, NettyRpcClient and AsyncFSWALProvider at RS side |  Major | io, rpc, wal | Duo Zhang | Duo Zhang |
| [HBASE-18339](https://issues.apache.org/jira/browse/HBASE-18339) | Update test-patch to use hadoop 3.0.0-alpha4 |  Major | test | Mike Drob | Mike Drob |
| [HBASE-18332](https://issues.apache.org/jira/browse/HBASE-18332) | Upgrade asciidoctor-maven-plugin |  Minor | website | Peter Somogyi | Peter Somogyi |
| [HBASE-18412](https://issues.apache.org/jira/browse/HBASE-18412) | [Shell] Support unset of list of configuration for a table |  Minor | . | Yun Zhao | Yun Zhao |
| [HBASE-18389](https://issues.apache.org/jira/browse/HBASE-18389) | Remove byte[] from formal parameter of sizeOf() of ClassSize, ClassSize.MemoryLayout and ClassSize.UnsafeLayout |  Minor | util | Xiang Li | Xiang Li |
| [HBASE-18434](https://issues.apache.org/jira/browse/HBASE-18434) | Address some alerts raised by lgtm.com |  Major | . | Malcolm Taylor | Malcolm Taylor |
| [HBASE-18402](https://issues.apache.org/jira/browse/HBASE-18402) | Thrift2 should support  DeleteFamilyVersion type |  Major | Thrift | Zheng Hu | Zheng Hu |
| [HBASE-18261](https://issues.apache.org/jira/browse/HBASE-18261) | [AMv2] Create new RecoverMetaProcedure and use it from ServerCrashProcedure and HMaster.finishActiveMasterInitialization() |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-16116](https://issues.apache.org/jira/browse/HBASE-16116) | Remove redundant pattern \*.iml |  Trivial | . | Konstantin Ryakhovskiy | Konstantin Ryakhovskiy |
| [HBASE-16893](https://issues.apache.org/jira/browse/HBASE-16893) | Use Collection.removeIf instead of Iterator.remove in DependentColumnFilter |  Minor | . | Robert Yokota | Robert Yokota |
| [HBASE-18520](https://issues.apache.org/jira/browse/HBASE-18520) | Add jmx value to determine true Master Start time |  Minor | metrics | Zach York | Zach York |
| [HBASE-14220](https://issues.apache.org/jira/browse/HBASE-14220) | nightly tests should verify src tgz generates and builds correctly |  Minor | build | Nick Dimiduk | Sean Busbey |
| [HBASE-18426](https://issues.apache.org/jira/browse/HBASE-18426) | nightly job should use independent stages to check supported jdks |  Critical | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18485](https://issues.apache.org/jira/browse/HBASE-18485) | Performance issue: ClientAsyncPrefetchScanner is slower than ClientSimpleScanner |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18555](https://issues.apache.org/jira/browse/HBASE-18555) | Remove redundant familyMap.put() from addxxx() of sub-classes of Mutation and Query |  Minor | Client | Xiang Li | Xiang Li |
| [HBASE-18566](https://issues.apache.org/jira/browse/HBASE-18566) | [RSGROUP]Log the client IP/port of the rsgroup admin |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18303](https://issues.apache.org/jira/browse/HBASE-18303) | Clean up some parameterized test declarations |  Minor | test | Mike Drob | Mike Drob |
| [HBASE-18533](https://issues.apache.org/jira/browse/HBASE-18533) | Expose BucketCache values to be configured |  Major | BucketCache | Zach York | Zach York |
| [HBASE-17064](https://issues.apache.org/jira/browse/HBASE-17064) | Add TaskMonitor#getTasks() variant which accepts type selection |  Minor | . | Ted Yu | Reid Chan |
| [HBASE-18251](https://issues.apache.org/jira/browse/HBASE-18251) | Remove unnecessary traversing to the first and last keys in the CellSet |  Major | . | Anastasia Braginsky | Toshihiro Suzuki |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18092](https://issues.apache.org/jira/browse/HBASE-18092) | Removing a peer does not properly clean up the ReplicationSourceManager state and metrics |  Major | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-18192](https://issues.apache.org/jira/browse/HBASE-18192) | Replication drops recovered queues on region server shutdown |  Blocker | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-18199](https://issues.apache.org/jira/browse/HBASE-18199) | Race in NettyRpcConnection may cause call stuck in BufferCallBeforeInitHandler forever |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-18200](https://issues.apache.org/jira/browse/HBASE-18200) | Set hadoop check versions for branch-2 and branch-2.x in pre commit |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-18209](https://issues.apache.org/jira/browse/HBASE-18209) | Include httpclient / httpcore jars in build artifacts |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18180](https://issues.apache.org/jira/browse/HBASE-18180) | Possible connection leak while closing BufferedMutator in TableOutputFormat |  Major | mapreduce | Pankaj Kumar | Pankaj Kumar |
| [HBASE-17988](https://issues.apache.org/jira/browse/HBASE-17988) | get-active-master.rb and draining\_servers.rb no longer work |  Critical | scripts | Mike Drob | Chinmay Kulkarni |
| [HBASE-18212](https://issues.apache.org/jira/browse/HBASE-18212) | In Standalone mode with local filesystem HBase logs Warning message:Failed to invoke 'unbuffer' method in class class org.apache.hadoop.fs.FSDataInputStream |  Minor | Operability | Umesh Agashe | Ashish Singhi |
| [HBASE-18263](https://issues.apache.org/jira/browse/HBASE-18263) | Resolve NPE in backup Master UI when access to procedures.jsp |  Trivial | UI | Shibin Zhang | Shibin Zhang |
| [HBASE-18265](https://issues.apache.org/jira/browse/HBASE-18265) | Correct the link unuseful in regionServer's region state UI |  Trivial | UI | Shibin Zhang | Shibin Zhang |
| [HBASE-18274](https://issues.apache.org/jira/browse/HBASE-18274) | hbase autorestart will overwrite the gc log |  Major | . | Fangyuan Deng | Fangyuan Deng |
| [HBASE-18230](https://issues.apache.org/jira/browse/HBASE-18230) | Generated LICENSE file includes unsubstituted Velocity variables |  Major | build | Mike Drob | Mike Drob |
| [HBASE-18310](https://issues.apache.org/jira/browse/HBASE-18310) | LoadTestTool unable to write data |  Major | util | Samir Ahmic | Samir Ahmic |
| [HBASE-17931](https://issues.apache.org/jira/browse/HBASE-17931) | Assign system tables to servers with highest version |  Blocker | Region Assignment, scan | Phil Yang | Phil Yang |
| [HBASE-18312](https://issues.apache.org/jira/browse/HBASE-18312) | Ineffective handling of FileNotFoundException in FileLink$FileLinkInputStream.tryOpen() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17705](https://issues.apache.org/jira/browse/HBASE-17705) | Procedure execution must fail fast if procedure is not registered |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18292](https://issues.apache.org/jira/browse/HBASE-18292) | Fix flaky test hbase.master.locking.TestLockProcedure#testLocalMasterLockRecovery() |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18348](https://issues.apache.org/jira/browse/HBASE-18348) | The implementation of AsyncTableRegionLocator does not follow the javadoc |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-18358](https://issues.apache.org/jira/browse/HBASE-18358) | Backport HBASE-18099 'FlushSnapshotSubprocedure should wait for concurrent Region#flush() to finish' to branch-1.3 |  Critical | snapshots | Ted Yu | Ted Yu |
| [HBASE-18177](https://issues.apache.org/jira/browse/HBASE-18177) | FanOutOneBlockAsyncDFSOutputHelper fails to compile against Hadoop 3 |  Major | wal | Esteban Gutierrez | Mike Drob |
| [HBASE-18260](https://issues.apache.org/jira/browse/HBASE-18260) | Address new license dependencies from hadoop3-alpha4 |  Major | dependencies | Mike Drob | Mike Drob |
| [HBASE-18377](https://issues.apache.org/jira/browse/HBASE-18377) | Error handling for FileNotFoundException should consider RemoteException in openReader() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18393](https://issues.apache.org/jira/browse/HBASE-18393) | hbase shell non-interactive broken |  Blocker | scripts, shell | Samir Ahmic | Mike Drob |
| [HBASE-18337](https://issues.apache.org/jira/browse/HBASE-18337) | hbase-shaded-server brings in signed jars |  Major | shading | Mike Drob | Mike Drob |
| [HBASE-16993](https://issues.apache.org/jira/browse/HBASE-16993) | BucketCache throw java.io.IOException: Invalid HFile block magic when configuring hbase.bucketcache.bucket.sizes |  Major | BucketCache | liubangchen | Anoop Sam John |
| [HBASE-18430](https://issues.apache.org/jira/browse/HBASE-18430) | Typo in "contributing to documentation" page |  Major | documentation | Coral | Coral |
| [HBASE-18433](https://issues.apache.org/jira/browse/HBASE-18433) | Convenience method for creating simple ColumnFamilyDescriptor |  Major | Client | Mike Drob | Mike Drob |
| [HBASE-18447](https://issues.apache.org/jira/browse/HBASE-18447) | MetricRegistryInfo#hashCode uses hashCode instead of toHashCode |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-18449](https://issues.apache.org/jira/browse/HBASE-18449) | Fix client.locking.TestEntityLocks#testHeartbeatException |  Minor | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18445](https://issues.apache.org/jira/browse/HBASE-18445) | Upgrading Guava broke hadoop-3.0 profile |  Blocker | build, dependencies, hadoop3 | Mike Drob | Mike Drob |
| [HBASE-18473](https://issues.apache.org/jira/browse/HBASE-18473) | VC.listLabels() erroneously closes any connection |  Major | Client | Lars George | Anoop Sam John |
| [HBASE-18481](https://issues.apache.org/jira/browse/HBASE-18481) | The autoFlush flag was not used in PE tool |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18475](https://issues.apache.org/jira/browse/HBASE-18475) | MasterProcedureScheduler incorrectly passes null Procedure to table locking |  Major | proc-v2 | Sean Busbey | Sean Busbey |
| [HBASE-18480](https://issues.apache.org/jira/browse/HBASE-18480) | The cost of BaseLoadBalancer.cluster is changed even if the rollback is done |  Major | Balancer | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18470](https://issues.apache.org/jira/browse/HBASE-18470) | Remove the redundant comma from RetriesExhaustedWithDetailsException#getDesc |  Minor | Client | Benedict Jin | Benedict Jin |
| [HBASE-18525](https://issues.apache.org/jira/browse/HBASE-18525) | TestAssignmentManager#testSocketTimeout fails in master branch |  Major | . | Ted Yu | Umesh Agashe |
| [HBASE-18262](https://issues.apache.org/jira/browse/HBASE-18262) | name of parameter quote need update in hbase-default.xml |  Minor | . | Dongtao Zhang | Dongtao Zhang |
| [HBASE-18390](https://issues.apache.org/jira/browse/HBASE-18390) | Sleep too long when finding region location failed |  Major | Client | Phil Yang | Phil Yang |
| [HBASE-18557](https://issues.apache.org/jira/browse/HBASE-18557) | change splitable to mergeable in MergeTableRegionsProcedure |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18526](https://issues.apache.org/jira/browse/HBASE-18526) | FIFOCompactionPolicy pre-check uses wrong scope |  Major | master | Lars George | Vladimir Rodionov |
| [HBASE-18598](https://issues.apache.org/jira/browse/HBASE-18598) | AsyncNonMetaRegionLocator use FIFO algorithm to get a candidate locate request |  Minor | asyncclient | Guanghao Zhang | Guanghao Zhang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18147](https://issues.apache.org/jira/browse/HBASE-18147) | nightly job to check health of active branches |  Major | community, test | Sean Busbey | Sean Busbey |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17008](https://issues.apache.org/jira/browse/HBASE-17008) | Examples to make AsyncClient go down easy |  Critical | asyncclient, Client | stack | Duo Zhang |
| [HBASE-18220](https://issues.apache.org/jira/browse/HBASE-18220) | Compaction scanners need not reopen storefile scanners while trying to switch over from pread to stream |  Major | Compaction | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16242](https://issues.apache.org/jira/browse/HBASE-16242) | Upgrade Avro to 1.7.7 |  Major | dependencies | Ben McCann | Sean Busbey |
| [HBASE-18221](https://issues.apache.org/jira/browse/HBASE-18221) | Switch from pread to stream should happen under HStore's reentrant lock |  Major | Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18234](https://issues.apache.org/jira/browse/HBASE-18234) | Revisit the async admin api |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18272](https://issues.apache.org/jira/browse/HBASE-18272) | Fix issue about RSGroupBasedLoadBalancer#roundRobinAssignment where BOGUS\_SERVER\_NAME is involved in two groups |  Major | Balancer | chenxu | chenxu |
| [HBASE-18293](https://issues.apache.org/jira/browse/HBASE-18293) | Only add the spotbugs dependency when jdk8 is active |  Major | build | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18283](https://issues.apache.org/jira/browse/HBASE-18283) | Provide a construct method which accept a thread pool for AsyncAdmin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18314](https://issues.apache.org/jira/browse/HBASE-18314) | Eliminate the findbugs warnings for hbase-examples |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18297](https://issues.apache.org/jira/browse/HBASE-18297) | Provide a AsyncAdminBuilder to create new AsyncAdmin instance |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18002](https://issues.apache.org/jira/browse/HBASE-18002) | Investigate why bucket cache filling up in file mode in an exisiting file  is slower |  Major | BucketCache | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18319](https://issues.apache.org/jira/browse/HBASE-18319) | Implement getClusterStatus/getRegionLoad/getCompactionState/getLastMajorCompactionTimestamp methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18317](https://issues.apache.org/jira/browse/HBASE-18317) | Implement async admin operations for Normalizer/CleanerChore/CatalogJanitor |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18316](https://issues.apache.org/jira/browse/HBASE-18316) | Implement async admin operations for draining region servers |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18318](https://issues.apache.org/jira/browse/HBASE-18318) | Implement updateConfiguration/stopMaster/stopRegionServer/shutdown methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18295](https://issues.apache.org/jira/browse/HBASE-18295) |  The result contains the cells across different rows |  Blocker | Scanners | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18268](https://issues.apache.org/jira/browse/HBASE-18268) | Eliminate the findbugs warnings for hbase-client |  Major | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18343](https://issues.apache.org/jira/browse/HBASE-18343) | Track the remaining unimplemented methods for async admin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18365](https://issues.apache.org/jira/browse/HBASE-18365) | Eliminate the findbugs warnings for hbase-common |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17922](https://issues.apache.org/jira/browse/HBASE-17922) | TestRegionServerHostname always fails against hadoop 3.0.0-alpha2 |  Major | hadoop3 | Jonathan Hsieh | Mike Drob |
| [HBASE-18342](https://issues.apache.org/jira/browse/HBASE-18342) | Add coprocessor service support for async admin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18229](https://issues.apache.org/jira/browse/HBASE-18229) | create new Async Split API to embrace AM v2 |  Critical | proc-v2 | Yi Liang | Yi Liang |
| [HBASE-18052](https://issues.apache.org/jira/browse/HBASE-18052) | Add document for async admin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18308](https://issues.apache.org/jira/browse/HBASE-18308) | Eliminate the findbugs warnings for hbase-server |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17738](https://issues.apache.org/jira/browse/HBASE-17738) | BucketCache startup is slow |  Major | BucketCache | stack | ramkrishna.s.vasudevan |
| [HBASE-18420](https://issues.apache.org/jira/browse/HBASE-18420) | Some methods of Admin don't use ColumnFamilyDescriptor |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18419](https://issues.apache.org/jira/browse/HBASE-18419) | Update IntegrationTestIngestWithMOB and Actions to use ColumnFamily builders for modification |  Critical | integration tests | Mike Drob | Mike Drob |
| [HBASE-18315](https://issues.apache.org/jira/browse/HBASE-18315) | Eliminate the findbugs warnings for hbase-rest |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18398](https://issues.apache.org/jira/browse/HBASE-18398) | Snapshot operation fails with FileNotFoundException |  Major | snapshots | Ashu Pachauri | Ashu Pachauri |
| [HBASE-18238](https://issues.apache.org/jira/browse/HBASE-18238) | Address ruby static analysis for bin directory |  Major | . | Mike Drob | Mike Drob |
| [HBASE-18424](https://issues.apache.org/jira/browse/HBASE-18424) | Fix TestAsyncTableGetMultiThreaded |  Major | test | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18553](https://issues.apache.org/jira/browse/HBASE-18553) | Expose scan cursor for asynchronous scanner |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-18595](https://issues.apache.org/jira/browse/HBASE-18595) | Set version in branch-2 from 2.0.0-alpha2-SNAPSHOT to 2.0.0-alpha2 |  Major | . | stack | stack |
| [HBASE-18608](https://issues.apache.org/jira/browse/HBASE-18608) | AsyncConnection should return AsyncAdmin interface instead of the implemenation |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18489](https://issues.apache.org/jira/browse/HBASE-18489) | Expose scan cursor in RawScanResultConsumer |  Major | asyncclient, Client, scan | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16833](https://issues.apache.org/jira/browse/HBASE-16833) | Implement asynchronous hbase client based on HBASE-15921 |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17359](https://issues.apache.org/jira/browse/HBASE-17359) | Implement async admin |  Major | Client | Duo Zhang | Guanghao Zhang |
| [HBASE-18266](https://issues.apache.org/jira/browse/HBASE-18266) | Eliminate the warnings from the spotbugs |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17954](https://issues.apache.org/jira/browse/HBASE-17954) | Switch findbugs implementation to spotbugs |  Major | build, community, test | Sean Busbey | Jan Hentschel |
| [HBASE-18288](https://issues.apache.org/jira/browse/HBASE-18288) | Declared dependency on specific javax.ws.rs |  Major | dependencies, REST | Sean Busbey | Sean Busbey |
| [HBASE-18291](https://issues.apache.org/jira/browse/HBASE-18291) | Regenerate thrift2 python examples |  Minor | . | Ted Yu | Peter Somogyi |
| [HBASE-18344](https://issues.apache.org/jira/browse/HBASE-18344) | Introduce Append.addColumn as a replacement for Append.add |  Trivial | . | Chia-Ping Tsai | Jan Hentschel |
| [HBASE-18515](https://issues.apache.org/jira/browse/HBASE-18515) |  Introduce Delete.add as a replacement for Delete#addDeleteMarker |  Major | Client | Chia-Ping Tsai | Xie YiFan |
| [HBASE-18527](https://issues.apache.org/jira/browse/HBASE-18527) | update nightly builds to compensate for jenkins plugin upgrades |  Blocker | community, test | Sean Busbey | Sean Busbey |


