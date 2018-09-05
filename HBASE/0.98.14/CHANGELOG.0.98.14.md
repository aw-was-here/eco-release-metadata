
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

## Release 0.98.14 - 2015-08-29

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13646](https://issues.apache.org/jira/browse/HBASE-13646) | HRegion#execService should not try to build incomplete messages |  Major | Coprocessors, regionserver | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13849](https://issues.apache.org/jira/browse/HBASE-13849) | Remove restore and clone snapshot from the WebUI |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13706](https://issues.apache.org/jira/browse/HBASE-13706) | CoprocessorClassLoader should not exempt Hive classes |  Minor | Coprocessors | Jerry He | Jerry He |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13356](https://issues.apache.org/jira/browse/HBASE-13356) | HBase should provide an InputFormat supporting multiple scans in mapreduce jobs over snapshots |  Minor | mapreduce | Andrew Mains | Andrew Mains |
| [HBASE-13639](https://issues.apache.org/jira/browse/HBASE-13639) | SyncTable - rsync for HBase tables |  Major | mapreduce, Operability, tooling | Dave Latham | Dave Latham |
| [HBASE-14154](https://issues.apache.org/jira/browse/HBASE-14154) | DFS Replication should be configurable at column family level |  Minor | . | Ashish Singhi | Ashish Singhi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13755](https://issues.apache.org/jira/browse/HBASE-13755) | Provide single super user check implementation |  Major | security | Anoop Sam John | Mikhail Antonov |
| [HBASE-13961](https://issues.apache.org/jira/browse/HBASE-13961) | SnapshotManager#initialize should set snapshotLayoutVersion if it allows to create snapshot with old layout format |  Minor | snapshots | Jianwei Cui | Jianwei Cui |
| [HBASE-13925](https://issues.apache.org/jira/browse/HBASE-13925) | Use zookeeper multi to clear znodes in ZKProcedureUtil |  Major | Zookeeper | Ashish Singhi | Ashish Singhi |
| [HBASE-14002](https://issues.apache.org/jira/browse/HBASE-14002) | Add --noReplicationSetup option to IntegrationTestReplication |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-12596](https://issues.apache.org/jira/browse/HBASE-12596) | bulkload needs to follow locality |  Major | HFile, regionserver | Victor Xu | Victor Xu |
| [HBASE-8642](https://issues.apache.org/jira/browse/HBASE-8642) | [Snapshot] List and delete snapshot by table |  Major | snapshots | Julian Zhou | Ashish Singhi |
| [HBASE-14097](https://issues.apache.org/jira/browse/HBASE-14097) | Log link to client scan troubleshooting section when scanner exceptions happen. |  Trivial | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14122](https://issues.apache.org/jira/browse/HBASE-14122) | Client API for determining if server side supports cell level security |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | Add configuration to skip validating HFile format when bulk loading |  Minor | . | Victor Xu | Victor Xu |
| [HBASE-14260](https://issues.apache.org/jira/browse/HBASE-14260) | don't build javadocs for hbase-protocol module |  Major | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-13996](https://issues.apache.org/jira/browse/HBASE-13996) | Add write sniffing in canary |  Major | canary | Liu Shaohui | Liu Shaohui |
| [HBASE-14275](https://issues.apache.org/jira/browse/HBASE-14275) | Backport to 0.98 HBASE-10785 Metas own location should be cached |  Major | . | Jerry He | Jerry He |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13878](https://issues.apache.org/jira/browse/HBASE-13878) | Set hbase.fs.tmp.dir config in HBaseTestingUtility.java for Phoenix UT to use |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13892](https://issues.apache.org/jira/browse/HBASE-13892) | Scanner with all results filtered out results in NPE |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-13901](https://issues.apache.org/jira/browse/HBASE-13901) | Error while calling watcher on creating and deleting an HBase table |  Minor | . | neha | Ashish Singhi |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13918](https://issues.apache.org/jira/browse/HBASE-13918) | Fix hbase:namespace description in webUI |  Trivial | hbase | Patrick White | Patrick White |
| [HBASE-13877](https://issues.apache.org/jira/browse/HBASE-13877) | Interrupt to flush from TableFlushProcedure causes dataloss in ITBLL |  Blocker | integration tests, proc-v2 | Enis Soztutar | Enis Soztutar |
| [HBASE-13935](https://issues.apache.org/jira/browse/HBASE-13935) | Orphaned namespace table ZK node should not prevent master to start |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13933](https://issues.apache.org/jira/browse/HBASE-13933) | DBE's seekBefore with tags corrupts the tag's offset information thus leading to incorrect results |  Critical | io | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | Deletes done during the region merge transaction may get eclipsed |  Major | master, regionserver | Devaraj Das | Enis Soztutar |
| [HBASE-13958](https://issues.apache.org/jira/browse/HBASE-13958) | RESTApiClusterManager calls kill() instead of suspend() and resume() |  Minor | integration tests | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13945](https://issues.apache.org/jira/browse/HBASE-13945) | Prefix\_Tree seekBefore() does not work correctly |  Major | io | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13835](https://issues.apache.org/jira/browse/HBASE-13835) | KeyValueHeap.current might be in heap when exception happens in pollRealKV |  Major | Scanners | zhouyingchao | zhouyingchao |
| [HBASE-13923](https://issues.apache.org/jira/browse/HBASE-13923) | Loaded region coprocessors are not reported in shell status command |  Major | regionserver, shell | Lars George | Ashish Singhi |
| [HBASE-13969](https://issues.apache.org/jira/browse/HBASE-13969) | AuthenticationTokenSecretManager is never stopped in RPCServer |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | Region splitting uses a single thread in most common cases |  Critical | regionserver | Hari Krishna Dara | Hari Krishna Dara |
| [HBASE-13995](https://issues.apache.org/jira/browse/HBASE-13995) | ServerName is not fully case insensitive |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13978](https://issues.apache.org/jira/browse/HBASE-13978) | Variable never assigned in SimpleTotalOrderPartitioner.getPartition() |  Major | mapreduce | Lars George | Bhupendra Kumar Jain |
| [HBASE-13970](https://issues.apache.org/jira/browse/HBASE-13970) | NPE during compaction in trunk |  Major | regionserver | ramkrishna.s.vasudevan | Duo Zhang |
| [HBASE-14005](https://issues.apache.org/jira/browse/HBASE-14005) | Set permission to .top hfile in LoadIncrementalHFiles |  Trivial | . | Francesco MDE | Francesco MDE |
| [HBASE-13861](https://issues.apache.org/jira/browse/HBASE-13861) | BucketCacheTmpl.jamon has wrong bucket free and used labels |  Major | regionserver, UI | Lars George | Matt Warhaftig |
| [HBASE-13988](https://issues.apache.org/jira/browse/HBASE-13988) | Add exception handler for lease thread |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13561](https://issues.apache.org/jira/browse/HBASE-13561) | ITBLL.Verify doesn't actually evaluate counters after job completes |  Major | integration tests | Josh Elser | Josh Elser |
| [HBASE-14022](https://issues.apache.org/jira/browse/HBASE-14022) | TestMultiTableSnapshotInputFormatImpl uses a class only available in JRE 1.7+ |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14042](https://issues.apache.org/jira/browse/HBASE-14042) | Fix FATAL level logging in FSHLog where logged for non fatal exceptions |  Major | Operability, wal | Andrew Purtell | Andrew Purtell |
| [HBASE-13897](https://issues.apache.org/jira/browse/HBASE-13897) | OOM may occur when Import imports a row with too many KeyValues |  Major | . | Liu Junhong | Liu Junhong |
| [HBASE-14089](https://issues.apache.org/jira/browse/HBASE-14089) | Remove unnecessary draw of system entropy from RecoverableZooKeeper |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14048](https://issues.apache.org/jira/browse/HBASE-14048) | isPBMagicPrefix should always check for null data |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14050](https://issues.apache.org/jira/browse/HBASE-14050) | NPE in org.apache.hadoop.hbase.ipc.RpcServer$Connection.readAndProcess |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13881](https://issues.apache.org/jira/browse/HBASE-13881) | Bug in HTable#incrementColumnValue implementation |  Major | Client | Jerry Lam | Gabor Liptak |
| [HBASE-14146](https://issues.apache.org/jira/browse/HBASE-14146) | Once replication sees an error it slows down forever |  Major | Replication | Elliott Clark | Elliott Clark |
| [HBASE-14157](https://issues.apache.org/jira/browse/HBASE-14157) | Interfaces implemented by subclasses should be checked when registering CoprocessorService |  Major | Coprocessors | Alok Lal | Ted Yu |
| [HBASE-14168](https://issues.apache.org/jira/browse/HBASE-14168) | Avoid useless retry for DoNotRetryIOException in TableRecordReaderImpl |  Minor | mapreduce | zhouyingchao | zhouyingchao |
| [HBASE-14178](https://issues.apache.org/jira/browse/HBASE-14178) | regionserver blocks because of waiting for offsetLock |  Major | regionserver | Heng Chen | Heng Chen |
| [HBASE-13865](https://issues.apache.org/jira/browse/HBASE-13865) | Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 (part 2) |  Trivial | regionserver | Vladimir Rodionov | Gabor Liptak |
| [HBASE-13825](https://issues.apache.org/jira/browse/HBASE-13825) | Use ProtobufUtil#mergeFrom and ProtobufUtil#mergeDelimitedFrom in place of builder methods of same name |  Major | util | Dev Lakhani | Andrew Purtell |
| [HBASE-12865](https://issues.apache.org/jira/browse/HBASE-12865) | WALs may be deleted before they are replicated to peers |  Critical | Replication | Liu Shaohui | He Liangliang |
| [HBASE-5878](https://issues.apache.org/jira/browse/HBASE-5878) | Use getVisibleLength public api from HdfsDataInputStream from Hadoop-2. |  Major | wal | Uma Maheswara Rao G | Ashish Singhi |
| [HBASE-14199](https://issues.apache.org/jira/browse/HBASE-14199) | maven-remote-resources-plugin failure processing NOTICE.vm in hbase-assembly |  Blocker | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14209](https://issues.apache.org/jira/browse/HBASE-14209) | TestShell visibility tests failing |  Major | security, shell | Andrew Purtell | Andrew Purtell |
| [HBASE-14196](https://issues.apache.org/jira/browse/HBASE-14196) | Thrift server idle connection timeout issue |  Major | Thrift | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14054](https://issues.apache.org/jira/browse/HBASE-14054) | Acknowledged writes may get lost if regionserver clock is set backwards |  Major | regionserver | Tobi Vollebregt | Enis Soztutar |
| [HBASE-14214](https://issues.apache.org/jira/browse/HBASE-14214) | list\_labels shouldn't raise ArgumentError if no labels are defined |  Minor | . | Andrew Purtell | Anoop Sam John |
| [HBASE-10844](https://issues.apache.org/jira/browse/HBASE-10844) | Coprocessor failure during batchmutation leaves the memstore datastructs in an inconsistent state |  Major | regionserver | Devaraj Das | Nick Dimiduk |
| [HBASE-14243](https://issues.apache.org/jira/browse/HBASE-14243) | Incorrect NOTICE file in hbase-it test-jar |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14246](https://issues.apache.org/jira/browse/HBASE-14246) | branch 0.98 and earlier has incorrect LICENSE/NOTICE for several dependencies |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14251](https://issues.apache.org/jira/browse/HBASE-14251) | javadoc jars use LICENSE/NOTICE from primary artifact |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14225](https://issues.apache.org/jira/browse/HBASE-14225) | Exclude \*\*/target/\*\* from RAT checks |  Major | build | Andrew Purtell | Andrew Purtell |
| [HBASE-14250](https://issues.apache.org/jira/browse/HBASE-14250) | branch-1.1 hbase-server test-jar has incorrect LICENSE |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14297](https://issues.apache.org/jira/browse/HBASE-14297) | Fix a long standing nit with 0.98 source assemblies |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14303](https://issues.apache.org/jira/browse/HBASE-14303) | LICENSE and NOTICE files missing in root dir of Hadoop 1 binary convenience artifact |  Blocker | . | Andrew Purtell | Andrew Purtell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13940](https://issues.apache.org/jira/browse/HBASE-13940) | IntegrationTestBulkLoad needs option to specify output folders used by test |  Major | integration tests | Enis Soztutar | Rajeshbabu Chintaguntla |
| [HBASE-14210](https://issues.apache.org/jira/browse/HBASE-14210) | Create test for cell level ACLs involving user group |  Major | test | Ted Yu | Ashish Singhi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7847](https://issues.apache.org/jira/browse/HBASE-7847) | Use zookeeper multi to clear znodes |  Major | . | Ted Yu | Rakesh R |
| [HBASE-13899](https://issues.apache.org/jira/browse/HBASE-13899) | Jacoco instrumentation fails under jdk8 |  Major | build, test | Sean Busbey | Duo Zhang |
| [HBASE-13937](https://issues.apache.org/jira/browse/HBASE-13937) | Partially revert HBASE-13172 |  Major | Region Assignment | Enis Soztutar | Enis Soztutar |
| [HBASE-13743](https://issues.apache.org/jira/browse/HBASE-13743) | Backport HBASE-13709 (Updates to meta table server columns may be eclipsed) to 0.98 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14086](https://issues.apache.org/jira/browse/HBASE-14086) | remove unused bundled dependencies |  Blocker | documentation | Sean Busbey | Sean Busbey |
| [HBASE-14176](https://issues.apache.org/jira/browse/HBASE-14176) | Add missing headers to META-INF files |  Trivial | build | Andrew Purtell | Andrew Purtell |
| [HBASE-14105](https://issues.apache.org/jira/browse/HBASE-14105) | Add shell tests for Snapshot |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-13730](https://issues.apache.org/jira/browse/HBASE-13730) | Backport HBASE-13576 (Failure in checking one region should not fail the entire HBCK operation) to 0.98 |  Minor | hbck | Andrew Purtell | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | site | Nick Dimiduk | Gabor Liptak |
| [HBASE-13994](https://issues.apache.org/jira/browse/HBASE-13994) | Backport HBASE-13917 (Remove string comparison to identify request priority) to 0.98 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11276](https://issues.apache.org/jira/browse/HBASE-11276) | Add back support for running ChaosMonkey as standalone tool |  Minor | . | Dima Spivak | Yu Li |
| [HBASE-14057](https://issues.apache.org/jira/browse/HBASE-14057) | HBase shell user\_permission should list super users defined on hbase-site.xml |  Minor | shell | Wellington Chevreuil | Srikanth Srungarapu |
| [HBASE-14085](https://issues.apache.org/jira/browse/HBASE-14085) | Correct LICENSE and NOTICE files in artifacts |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14264](https://issues.apache.org/jira/browse/HBASE-14264) | Update RAT plugin version in 0.98 branch |  Minor | build | Andrew Purtell | Andrew Purtell |
| [HBASE-14288](https://issues.apache.org/jira/browse/HBASE-14288) | Upgrade asciidoctor plugin to v1.5.2.1 |  Minor | build | Nick Dimiduk | Nick Dimiduk |


