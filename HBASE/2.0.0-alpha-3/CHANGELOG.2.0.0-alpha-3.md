
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

## Release 2.0.0-alpha-3 - 2017-09-18



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18131](https://issues.apache.org/jira/browse/HBASE-18131) | Add an hbase shell command to clear deadserver list in ServerManager |  Major | Operability | Yu Li | Guangxu Cheng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18573](https://issues.apache.org/jira/browse/HBASE-18573) | Update Append and Delete to use Mutation#getCellList(family) |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-18629](https://issues.apache.org/jira/browse/HBASE-18629) | Enhance ChaosMonkeyRunner with interruptibility |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18532](https://issues.apache.org/jira/browse/HBASE-18532) | Improve cache related stats rendered on RS UI |  Major | regionserver, UI | Biju Nair | Biju Nair |
| [HBASE-18224](https://issues.apache.org/jira/browse/HBASE-18224) | Upgrade jetty |  Critical | dependencies | Balazs Meszaros | Michael Stack |
| [HBASE-18673](https://issues.apache.org/jira/browse/HBASE-18673) | Some more unwanted reference to unshaded PB classes |  Minor | . | Anoop Sam John | Michael Stack |
| [HBASE-3935](https://issues.apache.org/jira/browse/HBASE-3935) | HServerLoad.storefileIndexSizeMB should be changed to storefileIndexSizeKB |  Major | . | Ted Yu | Andy Yang |
| [HBASE-17826](https://issues.apache.org/jira/browse/HBASE-17826) | Backup: submit M/R job to a particular Yarn queue |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18675](https://issues.apache.org/jira/browse/HBASE-18675) | Making {max,min}SessionTimeout configurable for MiniZooKeeperCluster |  Minor | test, Zookeeper | Cesar Delgado | Cesar Delgado |
| [HBASE-18699](https://issues.apache.org/jira/browse/HBASE-18699) | Copy LoadIncrementalHFiles to another package and mark the old one as deprecated |  Major | mapreduce | Duo Zhang | Duo Zhang |
| [HBASE-18740](https://issues.apache.org/jira/browse/HBASE-18740) | Upgrade Zookeeper version to 3.4.10 |  Major | . | Jerry He | Jerry He |
| [HBASE-18746](https://issues.apache.org/jira/browse/HBASE-18746) | Throw exception with job.getStatus().getFailureInfo() when ExportSnapshot fails |  Minor | mapreduce, snapshots | Chia-Ping Tsai | ChunHao |
| [HBASE-15607](https://issues.apache.org/jira/browse/HBASE-15607) | Remove PB references from Admin for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18737](https://issues.apache.org/jira/browse/HBASE-18737) | Display configured max size of memstore and cache on RS UI |  Minor | . | Biju Nair | Biju Nair |
| [HBASE-18704](https://issues.apache.org/jira/browse/HBASE-18704) | Upgrade hbase to commons-collections 4 |  Major | dependencies | Peter Somogyi | Peter Somogyi |
| [HBASE-18778](https://issues.apache.org/jira/browse/HBASE-18778) | Use Comparator for StealJobQueue |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-18662](https://issues.apache.org/jira/browse/HBASE-18662) | The default values for many configuration items in the code are not consistent with hbase-default.xml |  Minor | . | Yun Zhao | Yun Zhao |
| [HBASE-10240](https://issues.apache.org/jira/browse/HBASE-10240) | Remove 0.94-\>0.96 migration code |  Critical | . | Andrew Kyle Purtell | Peter Somogyi |
| [HBASE-13271](https://issues.apache.org/jira/browse/HBASE-13271) | Table#puts(List\<Put\>) operation is indeterminate; needs fixing |  Critical | API | Michael Stack | Umesh Agashe |
| [HBASE-17823](https://issues.apache.org/jira/browse/HBASE-17823) | Migrate to Apache Yetus Audience Annotations |  Major | API | Sean Busbey | Sean Busbey |
| [HBASE-18683](https://issues.apache.org/jira/browse/HBASE-18683) | Upgrade hbase to commons-math 3 |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-14996](https://issues.apache.org/jira/browse/HBASE-14996) | Some more API cleanup for 2.0 |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-18772](https://issues.apache.org/jira/browse/HBASE-18772) | [JDK8]  Replace AtomicLong with LongAdder |  Trivial | . | Yechao Chen | Yechao Chen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18617](https://issues.apache.org/jira/browse/HBASE-18617) | FuzzyRowKeyFilter should not modify the filter pairs |  Minor | . | vinisha | vinisha |
| [HBASE-18627](https://issues.apache.org/jira/browse/HBASE-18627) | Fix TestRegionServerReadRequestMetrics |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18615](https://issues.apache.org/jira/browse/HBASE-18615) | hbase-rest tests fail in hbase-2.0.0-alpha2 |  Blocker | test | Michael Stack | Michael Stack |
| [HBASE-18655](https://issues.apache.org/jira/browse/HBASE-18655) | TestAsyncClusterAdminApi2 failing sometimes |  Major | . | Mike Drob | Michael Stack |
| [HBASE-18614](https://issues.apache.org/jira/browse/HBASE-18614) | Setting BUCKET\_CACHE\_COMBINED\_KEY to false disables stats on RS UI |  Major | regionserver | Biju Nair | Biju Nair |
| [HBASE-18628](https://issues.apache.org/jira/browse/HBASE-18628) | ZKPermissionWatcher blocks all ZK notifications |  Critical | regionserver | Mike Drob | Mike Drob |
| [HBASE-15982](https://issues.apache.org/jira/browse/HBASE-15982) | Interface ReplicationEndpoint extends Guava's Service |  Blocker | . | Andrew Kyle Purtell | Michael Stack |
| [HBASE-18647](https://issues.apache.org/jira/browse/HBASE-18647) | Parameter cacheBlocks does not take effect in REST API for scan |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18287](https://issues.apache.org/jira/browse/HBASE-18287) | Remove log warning in  PartitionedMobCompactor.java#getFileStatus |  Minor | mob | Hua Xiang | Hua Xiang |
| [HBASE-16722](https://issues.apache.org/jira/browse/HBASE-16722) | Document: Broken link in CatalogJanitor |  Trivial | documentation | Aki Ariga | Jan Hentschel |
| [HBASE-18671](https://issues.apache.org/jira/browse/HBASE-18671) | Support Append/Increment in rest api |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18633](https://issues.apache.org/jira/browse/HBASE-18633) | Add more info to understand the source/scenario of large batch requests exceeding threshold |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-18640](https://issues.apache.org/jira/browse/HBASE-18640) | Move mapreduce out of hbase-server into separate hbase-mapreduce module |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-18369](https://issues.apache.org/jira/browse/HBASE-18369) | hbase thrift web-ui not available |  Major | Thrift | Peter Somogyi | Tamas Penzes |
| [HBASE-18568](https://issues.apache.org/jira/browse/HBASE-18568) | Correct  metric of  numRegions |  Critical | metrics | Shibin Zhang | Shibin Zhang |
| [HBASE-18665](https://issues.apache.org/jira/browse/HBASE-18665) | ReversedScannerCallable invokes getRegionLocations incorrectly |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-18577](https://issues.apache.org/jira/browse/HBASE-18577) | shaded client includes several non-relocated third party dependencies |  Critical | Client | Sean Busbey | Sean Busbey |
| [HBASE-18714](https://issues.apache.org/jira/browse/HBASE-18714) | The dropBehind and readahead don't be applied when useHBaseChecksum is enabled |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-15947](https://issues.apache.org/jira/browse/HBASE-15947) | Classes used only for tests included in main code base |  Trivial | build, test | Sean Mackrory | Sean Mackrory |
| [HBASE-18461](https://issues.apache.org/jira/browse/HBASE-18461) | Build broken If the username contains a backslash |  Minor | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18741](https://issues.apache.org/jira/browse/HBASE-18741) | Remove cancel command from backup code |  Major | . | Ted Yu | Peter Somogyi |
| [HBASE-16390](https://issues.apache.org/jira/browse/HBASE-16390) | Fix documentation around setAutoFlush |  Minor | documentation | Michael Stack | Sahil Aggarwal |
| [HBASE-15497](https://issues.apache.org/jira/browse/HBASE-15497) | Incorrect javadoc for atomicity guarantee of Increment and Append |  Minor | documentation | Jianwei Cui | Jianwei Cui |
| [HBASE-18743](https://issues.apache.org/jira/browse/HBASE-18743) | HFiles in use by a table which has the same name and namespace with a default table cloned from snapshot may be deleted when that snapshot and default table are deleted |  Critical | . | wenbang | wenbang |
| [HBASE-18757](https://issues.apache.org/jira/browse/HBASE-18757) | Fix Improper bitwise & in BucketCache offset calculation |  Major | BucketCache | Zach York | Zach York |
| [HBASE-17713](https://issues.apache.org/jira/browse/HBASE-17713) | the interface '/version/cluster' with header 'Accept: application/json' return is not JSON but plain text |  Minor | REST | Feng Ce | Guangxu Cheng |
| [HBASE-18765](https://issues.apache.org/jira/browse/HBASE-18765) | The value of balancerRan is true even though no plans are executed |  Minor | Balancer, rsgroup | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18759](https://issues.apache.org/jira/browse/HBASE-18759) | Fix hbase-shaded-check-invariants failure |  Blocker | Client, mapreduce | Apekshit Sharma | Sean Busbey |
| [HBASE-17853](https://issues.apache.org/jira/browse/HBASE-17853) | Link to "Why does HBase care about /etc/hosts?" does not work |  Trivial | documentation | manojkumargandikota | Chia-Ping Tsai |
| [HBASE-18791](https://issues.apache.org/jira/browse/HBASE-18791) | HBASE\_HOME/lib does not contain hbase-mapreduce-${project.version}-tests.jar |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18789](https://issues.apache.org/jira/browse/HBASE-18789) | Displays the reporting interval of each RS on the Master page |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18723](https://issues.apache.org/jira/browse/HBASE-18723) | [pom cleanup] Do a pass with dependency:analyze; remove unused and explicity list the dependencies we exploit |  Major | pom | Michael Stack | Michael Stack |
| [HBASE-18818](https://issues.apache.org/jira/browse/HBASE-18818) | TestConnectionImplemenation fails |  Major | test | Michael Stack | Michael Stack |
| [HBASE-18801](https://issues.apache.org/jira/browse/HBASE-18801) | Bulk load cleanup may falsely deem file deletion successful |  Major | . | Ted Yu | Reid Chan |
| [HBASE-18641](https://issues.apache.org/jira/browse/HBASE-18641) | Include block content verification logic used in lruCache in bucketCache |  Minor | regionserver | Biju Nair | Biju Nair |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18632](https://issues.apache.org/jira/browse/HBASE-18632) | TestMultiParallel#testFlushCommitsWithAbort fails in master branch |  Major | test | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17442](https://issues.apache.org/jira/browse/HBASE-17442) | Move most of the replication related classes from hbase-client to hbase-replication package |  Critical | build, Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18347](https://issues.apache.org/jira/browse/HBASE-18347) | Implement a BufferedMutator for async client |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-18658](https://issues.apache.org/jira/browse/HBASE-18658) | Purge hokey hbase Service implementation; use (internal) Guava Service instead |  Major | . | Michael Stack | Michael Stack |
| [HBASE-18656](https://issues.apache.org/jira/browse/HBASE-18656) | Address issues found by error-prone in hbase-common |  Major | build | Mike Drob | Mike Drob |
| [HBASE-18448](https://issues.apache.org/jira/browse/HBASE-18448) | EndPoint example  for refreshing HFiles for stores |  Minor | Coprocessors | Ajay Jadhav | Ajay Jadhav |
| [HBASE-16324](https://issues.apache.org/jira/browse/HBASE-16324) | Remove LegacyScanQueryMatcher |  Critical | Compaction, regionserver | Duo Zhang | Duo Zhang |
| [HBASE-18688](https://issues.apache.org/jira/browse/HBASE-18688) | Upgrade commons-codec to 1.10 |  Major | dependencies | Apekshit Sharma | Apekshit Sharma |
| [HBASE-18691](https://issues.apache.org/jira/browse/HBASE-18691) | [compat 1-2] HCD remove and removeConfiguration change return type |  Major | API | Michael Stack | Chia-Ping Tsai |
| [HBASE-18692](https://issues.apache.org/jira/browse/HBASE-18692) | [compat 1-2] ByteBufferUtils.copyFromBufferToBuffer goes from void to int |  Major | API | Michael Stack | Michael Stack |
| [HBASE-18698](https://issues.apache.org/jira/browse/HBASE-18698) | MapreduceDependencyClasspathTool does not include hbase-server as a dependency |  Major | mapreduce | Duo Zhang | Michael Stack |
| [HBASE-18700](https://issues.apache.org/jira/browse/HBASE-18700) | Document the new changes on mapreduce stuffs |  Major | mapreduce | Duo Zhang | Michael Stack |
| [HBASE-18721](https://issues.apache.org/jira/browse/HBASE-18721) | Cleanup unused configs and private declaration |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18739](https://issues.apache.org/jira/browse/HBASE-18739) | Make all TimeRange Constructors InterfaceAudience Private. |  Major | API | Michael Stack | Michael Stack |
| [HBASE-18736](https://issues.apache.org/jira/browse/HBASE-18736) | Cleanup the HTD/HCD for Admin |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18749](https://issues.apache.org/jira/browse/HBASE-18749) | Apply the CF specific TimeRange from Scan to filter the segment scanner |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18697](https://issues.apache.org/jira/browse/HBASE-18697) | Need a shaded hbase-mapreduce module |  Major | mapreduce | Duo Zhang | Apekshit Sharma |
| [HBASE-14997](https://issues.apache.org/jira/browse/HBASE-14997) | Move compareOp and Comparators out of filter to client package |  Critical | . | Enis Soztutar | Michael Stack |
| [HBASE-18769](https://issues.apache.org/jira/browse/HBASE-18769) | Make CompareFilter use generic CompareOperator instead of internal enum |  Major | . | Michael Stack | Michael Stack |
| [HBASE-18779](https://issues.apache.org/jira/browse/HBASE-18779) | Move CompareOperator to hbase-client module |  Critical | . | Michael Stack | Michael Stack |
| [HBASE-18780](https://issues.apache.org/jira/browse/HBASE-18780) | Remove HLogPrettyPrinter and hlog command |  Minor | documentation, wal | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18106](https://issues.apache.org/jira/browse/HBASE-18106) | Redo ProcedureInfo and LockInfo |  Critical | proc-v2 | Michael Stack | Balazs Meszaros |
| [HBASE-18750](https://issues.apache.org/jira/browse/HBASE-18750) | Cleanup the docs saying "HTable use write buffer" |  Minor | documentation | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16479](https://issues.apache.org/jira/browse/HBASE-16479) | Move WALEdit from hbase.regionserver.wal package to hbase.wal package |  Major | wal | Enis Soztutar | Enis Soztutar |
| [HBASE-18733](https://issues.apache.org/jira/browse/HBASE-18733) | [compat 1-2] Hide WALKey |  Major | API | Michael Stack | Sean Busbey |
| [HBASE-18793](https://issues.apache.org/jira/browse/HBASE-18793) | Remove deprecated methods in RegionObserver |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-14998](https://issues.apache.org/jira/browse/HBASE-14998) | Unify synchronous and asynchronous methods in Admin and cleanup |  Blocker | . | Enis Soztutar | Balazs Meszaros |
| [HBASE-18453](https://issues.apache.org/jira/browse/HBASE-18453) | CompactionRequest should not be exposed to user directly |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18819](https://issues.apache.org/jira/browse/HBASE-18819) | Set version number to 2.0.0-alpha3 from 2.0.0-alpha3-SNAPSHOT |  Major | . | Michael Stack | Michael Stack |
| [HBASE-18820](https://issues.apache.org/jira/browse/HBASE-18820) | assembly is missing hbase-replication |  Major | build | Michael Stack | Michael Stack |
| [HBASE-18821](https://issues.apache.org/jira/browse/HBASE-18821) | Enforcer plugin NPEs again when generating site |  Major | website | Michael Stack | Michael Stack |
| [HBASE-17980](https://issues.apache.org/jira/browse/HBASE-17980) | Any HRegionInfo we give out should be immutable |  Major | . | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-18375](https://issues.apache.org/jira/browse/HBASE-18375) | The pool chunks from ChunkCreator are deallocated while in pool because there is no reference to them |  Critical | . | Anastasia Braginsky | Anastasia Braginsky |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18501](https://issues.apache.org/jira/browse/HBASE-18501) | Use TableDescriptor and ColumnFamilyDescriptor as far as possible |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18696](https://issues.apache.org/jira/browse/HBASE-18696) | Fix the problems when introducing the new hbase-mapreduce module |  Blocker | mapreduce | Duo Zhang |  |
| [HBASE-10462](https://issues.apache.org/jira/browse/HBASE-10462) | Recategorize some of the client facing Public / Private interfaces |  Blocker | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-7320](https://issues.apache.org/jira/browse/HBASE-7320) | Remove KeyValue.getBuffer() |  Blocker | . | Lars Hofhansl | Michael Stack |
| [HBASE-18594](https://issues.apache.org/jira/browse/HBASE-18594) | Release hbase-2.0.0-alpha2 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-18630](https://issues.apache.org/jira/browse/HBASE-18630) | Prune dependencies; as is branch-2 has duplicates |  Major | dependencies | Michael Stack | Michael Stack |
| [HBASE-18653](https://issues.apache.org/jira/browse/HBASE-18653) | Undo hbase2 check against \< hadoop2.6.x; i.e. implement agreed drop of hadoop 2.4 and 2.5 support in hbase2 |  Major | build | Michael Stack | Michael Stack |
| [HBASE-18710](https://issues.apache.org/jira/browse/HBASE-18710) | Move on to hbase-thirdparty 1.0.1 (it was just released). |  Major | hbase-thirdparty | Michael Stack | Michael Stack |
| [HBASE-18768](https://issues.apache.org/jira/browse/HBASE-18768) | Move TestTableName to hbase-common from hbase-server |  Major | . | Michael Stack | Michael Stack |
| [HBASE-17972](https://issues.apache.org/jira/browse/HBASE-17972) | Remove mergePool from CompactSplitThread |  Minor | regionserver | Guangxu Cheng | Guangxu Cheng |
| [HBASE-13868](https://issues.apache.org/jira/browse/HBASE-13868) | Correct "Disable automatic splitting" section in HBase book |  Trivial | documentation | Vladimir Rodionov | Chia-Ping Tsai |
| [HBASE-18783](https://issues.apache.org/jira/browse/HBASE-18783) | Declare the builder of ClusterStatus as IA.Private, and remove the Writables from ClusterStatus |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18421](https://issues.apache.org/jira/browse/HBASE-18421) | update hadoop prerequisites docs to call out 2.8.1 |  Major | community, dependencies, documentation | Sean Busbey | Chia-Ping Tsai |
| [HBASE-18782](https://issues.apache.org/jira/browse/HBASE-18782) | Module untangling work |  Major | . | Michael Stack | Michael Stack |
| [HBASE-18766](https://issues.apache.org/jira/browse/HBASE-18766) | Make TableSnapshotScanner Audience Private |  Major | . | Michael Stack | Chia-Ping Tsai |
| [HBASE-18767](https://issues.apache.org/jira/browse/HBASE-18767) | Release hbase-2.0.0-alpha-3; Theme "Scrubbed API" |  Major | . | Michael Stack | Michael Stack |


