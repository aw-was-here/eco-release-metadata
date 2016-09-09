
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

## Release 0.94.6 - 2013-03-22

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8085](https://issues.apache.org/jira/browse/HBASE-8085) | Backport the fix for Bytes.toStringBinary() into 94 (HBASE-6991) |  Major | util | Tianying Chang | Tianying Chang |
| [HBASE-7876](https://issues.apache.org/jira/browse/HBASE-7876) | Got exception when manually triggers a split on an empty region |  Minor | regionserver | Maryann Xue | Maryann Xue |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4210](https://issues.apache.org/jira/browse/HBASE-4210) | Allow coprocessor to interact with batches per region sent from a client |  Major | . | Lars Hofhansl | Anoop Sam John |
| [HBASE-7360](https://issues.apache.org/jira/browse/HBASE-7360) | Snapshot 0.94 Backport |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7818](https://issues.apache.org/jira/browse/HBASE-7818) | add region level metrics readReqeustCount and writeRequestCount |  Minor | metrics | Tianying Chang | Tianying Chang |
| [HBASE-7827](https://issues.apache.org/jira/browse/HBASE-7827) | Improve the speed of Hbase Thirft Batch mutation for deletes |  Minor | Thrift | Shivendra Pratap Singh | Shivendra Pratap Singh |
| [HBASE-8031](https://issues.apache.org/jira/browse/HBASE-8031) | Adopt goraci as an Integration test |  Major | test | Enis Soztutar | Enis Soztutar |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5672](https://issues.apache.org/jira/browse/HBASE-5672) | TestLruBlockCache#testBackgroundEvictionThread fails occasionally |  Major | . | chunhui shen | chunhui shen |
| [HBASE-7768](https://issues.apache.org/jira/browse/HBASE-7768) | zkcluster in local mode not seeing configurations in hbase-{site\|default}.xml |  Minor | . | rajeshbabu | rajeshbabu |
| [HBASE-7777](https://issues.apache.org/jira/browse/HBASE-7777) | HBCK check for lingering split parents should check for child regions |  Major | hbck, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-7763](https://issues.apache.org/jira/browse/HBASE-7763) | Compactions not sorting based on size anymore. |  Critical | Compaction | Elliott Clark | Elliott Clark |
| [HBASE-6132](https://issues.apache.org/jira/browse/HBASE-6132) | ColumnCountGetFilter & PageFilter not working with FilterList |  Major | Filters | Benjamin Kim | Anoop Sam John |
| [HBASE-7761](https://issues.apache.org/jira/browse/HBASE-7761) | MemStore.USEMSLAB\_DEFAULT is false, hbase-default.xml says it's true |  Minor | . | Jean-Daniel Cryans | Anoop Sam John |
| [HBASE-7829](https://issues.apache.org/jira/browse/HBASE-7829) | zookeeper kerberos conf keytab and principal parameters interchanged |  Minor | . | Francis Liu | Francis Liu |
| [HBASE-7521](https://issues.apache.org/jira/browse/HBASE-7521) | fix HBASE-6060 (regions stuck in opening state) in 0.94 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7814](https://issues.apache.org/jira/browse/HBASE-7814) | Port HBASE-6963 'unable to run hbck on a secure cluster' to 0.94 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7832](https://issues.apache.org/jira/browse/HBASE-7832) | Use User.getShortName() in FSUtils |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7851](https://issues.apache.org/jira/browse/HBASE-7851) | Include the guava classes as a dependency for jobs using mapreduce.TableMapReduceUtil |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-7867](https://issues.apache.org/jira/browse/HBASE-7867) | setPreallocSize is different with COMMENT in setupTestEnv in MiniZooKeeperCluster.java |  Trivial | . | DaeMyung Kang | DaeMyung Kang |
| [HBASE-7866](https://issues.apache.org/jira/browse/HBASE-7866) | TestSplitTransactionOnCluster.testSplitBeforeSettingSplittingInZK failed 3 times in a row |  Major | . | Lars Hofhansl | ramkrishna.s.vasudevan |
| [HBASE-6748](https://issues.apache.org/jira/browse/HBASE-6748) | Endless recursive of deleteNode happened in SplitLogManager#DeleteAsyncCallback |  Major | master | Jieshan Bean | Jeffrey Zhong |
| [HBASE-7919](https://issues.apache.org/jira/browse/HBASE-7919) | Wrong key is used in ServerManager#getServerConnection() to retrieve from Map serverConnections |  Major | master | Anoop Sam John | Anoop Sam John |
| [HBASE-7916](https://issues.apache.org/jira/browse/HBASE-7916) | HMaster uses wrong InetSocketAddress parameter to throw exception |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7507](https://issues.apache.org/jira/browse/HBASE-7507) | Make memstore flush be able to retry after exception |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-7915](https://issues.apache.org/jira/browse/HBASE-7915) | Secure ThriftServer needs to login before calling HBaseHandler |  Major | security, Thrift | Arpit Gupta | Arpit Gupta |
| [HBASE-7884](https://issues.apache.org/jira/browse/HBASE-7884) | ByteBloomFilter's performance can be improved by avoiding multiplication when generating hash |  Minor | Performance | Sean Zhong | Sean Zhong |
| [HBASE-7914](https://issues.apache.org/jira/browse/HBASE-7914) | Port the fix of HBASE-6748 into 0.94 branch |  Major | master | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-7671](https://issues.apache.org/jira/browse/HBASE-7671) | Flushing memstore again after last failure could cause data loss |  Major | . | chunhui shen | chunhui shen |
| [HBASE-7913](https://issues.apache.org/jira/browse/HBASE-7913) | Secure Rest server should login before getting an instance of Rest servlet |  Major | REST, security | Arpit Gupta | Arpit Gupta |
| [HBASE-7883](https://issues.apache.org/jira/browse/HBASE-7883) | Update memstore size when removing the entries in append operation |  Major | regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7833](https://issues.apache.org/jira/browse/HBASE-7833) | 0.94 does not compile with Hadoop-0.20.205 and 0.22.0 |  Major | documentation | Enis Soztutar | stack |
| [HBASE-7945](https://issues.apache.org/jira/browse/HBASE-7945) | Remove flaky TestCatalogTrackerOnCluster |  Major | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7725](https://issues.apache.org/jira/browse/HBASE-7725) | Add ability to create custom compaction request |  Major | Compaction, Coprocessors, regionserver | Jesse Yates | Jesse Yates |
| [HBASE-7920](https://issues.apache.org/jira/browse/HBASE-7920) | Move isFamilyEssential(byte[] name) out of Filter interface in 0.94 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7700](https://issues.apache.org/jira/browse/HBASE-7700) | TestColumnSeeking is mathematically bound to fail |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7869](https://issues.apache.org/jira/browse/HBASE-7869) | Provide way to not start LogSyncer thread |  Major | regionserver, wal | Anoop Sam John | Anoop Sam John |
| [HBASE-7991](https://issues.apache.org/jira/browse/HBASE-7991) | Backport HBASE-6479 'HFileReaderV1 caching the same parent META block could cause server abort when splitting' to 0.94 |  Major | . | Ted Yu |  |
| [HBASE-7723](https://issues.apache.org/jira/browse/HBASE-7723) | Remove NameNode URI from ZK splitlogs |  Major | hadoop2, master | Kevin Odell | Himanshu Vashishtha |
| [HBASE-6347](https://issues.apache.org/jira/browse/HBASE-6347) | -ROOT- and .META. are stale in table.jsp if they moved |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-7111](https://issues.apache.org/jira/browse/HBASE-7111) | hbase zkcli will not start if the zookeeper server chosen to connect to is unavailable |  Major | Zookeeper | Zhou wenjian | Zhou wenjian |
| [HBASE-7986](https://issues.apache.org/jira/browse/HBASE-7986) | [REST] Make HTablePool size configurable |  Major | REST | binlijin | binlijin |
| [HBASE-8007](https://issues.apache.org/jira/browse/HBASE-8007) | Adopt TestLoadAndVerify from BigTop |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-7153](https://issues.apache.org/jira/browse/HBASE-7153) | print gc option in hbase-env.sh affects hbase zkcli |  Major | scripts | wonderyl | Dave Latham |
| [HBASE-8019](https://issues.apache.org/jira/browse/HBASE-8019) | Port HBASE-7779 '[snapshot 130201 merge] Fix TestMultiParallel' to 0.94 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8061](https://issues.apache.org/jira/browse/HBASE-8061) | Missing test from TestFlushSnapshotFromClient in 0.94 |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8069](https://issues.apache.org/jira/browse/HBASE-8069) | TestHLog is dependent on the execution order |  Major | test, wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8055](https://issues.apache.org/jira/browse/HBASE-8055) | Null check missing in StoreFile.Reader.getMaxTimestamp() |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8040](https://issues.apache.org/jira/browse/HBASE-8040) | Race condition in AM after HBASE-7521 (only 0.94) |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8103](https://issues.apache.org/jira/browse/HBASE-8103) | Fix pom so 0.94 can generate site reports |  Major | . | stack | stack |
| [HBASE-7624](https://issues.apache.org/jira/browse/HBASE-7624) | Backport HBASE-5359 and HBASE-7596 to 0.94 |  Major | . | Lars Hofhansl | Jeffrey Zhong |
| [HBASE-8099](https://issues.apache.org/jira/browse/HBASE-8099) | ReplicationZookeeper.copyQueuesFromRSUsingMulti should not return any queues if it failed to execute. |  Blocker | . | Lars Hofhansl | Himanshu Vashishtha |
| [HBASE-8025](https://issues.apache.org/jira/browse/HBASE-8025) | zkcli fails when SERVER\_GC\_OPTS is enabled |  Major | . | Dave Latham | Dave Latham |
| [HBASE-8141](https://issues.apache.org/jira/browse/HBASE-8141) | Remove accidental uses of org.mortbay.log.Log |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-7870](https://issues.apache.org/jira/browse/HBASE-7870) | Delete(byte [] row, long timestamp) constructor is deprecate and should not. |  Critical | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7944](https://issues.apache.org/jira/browse/HBASE-7944) | Replication leaks file reader resource & not reset currentNbOperations |  Major | . | Jeffrey Zhong | Jeffrey Zhong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8088](https://issues.apache.org/jira/browse/HBASE-8088) | Versioning site: part one, put stake in the ground for 0.94 by copying current versions of book and site |  Major | . | stack | stack |
| [HBASE-8090](https://issues.apache.org/jira/browse/HBASE-8090) | Versioning site; part two, publish 0.94 site and add link from main site |  Blocker | . | stack | stack |


