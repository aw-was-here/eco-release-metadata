
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

## Release 2.0.0-alpha-4 - 2017-11-07



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18875](https://issues.apache.org/jira/browse/HBASE-18875) | Thrift server supports read-only mode |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18795](https://issues.apache.org/jira/browse/HBASE-18795) | Expose KeyValue.getBuffer() for tests alone |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18849](https://issues.apache.org/jira/browse/HBASE-18849) | expand "thirdparty" reference to give examples of setting netty location in common testing modules |  Critical | documentation, thirdparty | Sean Busbey | Michael Stack |
| [HBASE-18651](https://issues.apache.org/jira/browse/HBASE-18651) | Let ChaosMonkeyRunner expose the chaos monkey runner it creates |  Major | . | Ted Yu | Reid Chan |
| [HBASE-18652](https://issues.apache.org/jira/browse/HBASE-18652) | Expose individual cache stats in a CombinedCache through JMX |  Major | regionserver | Biju Nair | Biju Nair |
| [HBASE-17732](https://issues.apache.org/jira/browse/HBASE-17732) | Coprocessor Design Improvements |  Critical | Coprocessors | Apekshit Sharma | Apekshit Sharma |
| [HBASE-18884](https://issues.apache.org/jira/browse/HBASE-18884) | Coprocessor Design Improvements follow up of HBASE-17732 |  Major | Coprocessors | Apekshit Sharma | Apekshit Sharma |
| [HBASE-18883](https://issues.apache.org/jira/browse/HBASE-18883) | Upgrade to Curator 4.0 |  Major | Client, dependencies | Mike Drob | Mike Drob |
| [HBASE-18929](https://issues.apache.org/jira/browse/HBASE-18929) | Hbase backup command doesn’t show debug option to enable backup in debug mode |  Minor | . | Amit Kabra | Amit Kabra |
| [HBASE-15410](https://issues.apache.org/jira/browse/HBASE-15410) | Utilize the max seek value when all Filters in MUST\_PASS\_ALL FilterList return SEEK\_NEXT\_USING\_HINT |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18986](https://issues.apache.org/jira/browse/HBASE-18986) | Remove unnecessary null check after CellUtil.cloneQualifier() |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-14247](https://issues.apache.org/jira/browse/HBASE-14247) | Separate the old WALs into different regionserver directories |  Critical | wal | Shaohui Liu | Guanghao Zhang |
| [HBASE-10367](https://issues.apache.org/jira/browse/HBASE-10367) | RegionServer graceful stop / decommissioning |  Major | . | Enis Soztutar | Jerry He |
| [HBASE-19051](https://issues.apache.org/jira/browse/HBASE-19051) | Add new split algorithm for num string |  Minor | . | Yun Zhao | Yun Zhao |
| [HBASE-18994](https://issues.apache.org/jira/browse/HBASE-18994) | Decide if META/System tables should use Compacting Memstore or Default Memstore |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19110](https://issues.apache.org/jira/browse/HBASE-19110) | Add default for Server#isStopping & #getFileSystem |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-18870](https://issues.apache.org/jira/browse/HBASE-18870) | Hbase Backup should set the details to MR job name |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14004](https://issues.apache.org/jira/browse/HBASE-14004) | [Replication] Inconsistency between Memstore and WAL may result in data in remote cluster that is not in the origin |  Critical | regionserver, Replication | He Liangliang | Duo Zhang |
| [HBASE-18831](https://issues.apache.org/jira/browse/HBASE-18831) | Add explicit dependency on javax.el |  Major | dependencies | Michael Stack | Michael Stack |
| [HBASE-18834](https://issues.apache.org/jira/browse/HBASE-18834) | fix shellcheck warning on hbase personality |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-18836](https://issues.apache.org/jira/browse/HBASE-18836) | Note need for explicit javax.el and exclude from shaded artifacts |  Blocker | Client | Sean Busbey | Sean Busbey |
| [HBASE-18808](https://issues.apache.org/jira/browse/HBASE-18808) | Ineffective config check in BackupLogCleaner#getDeletableFiles() |  Major | . | Ted Yu | Reid Chan |
| [HBASE-18803](https://issues.apache.org/jira/browse/HBASE-18803) | Mapreduce job get failed caused by NoClassDefFoundError: org/apache/commons/lang3/ArrayUtils |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18832](https://issues.apache.org/jira/browse/HBASE-18832) | LTT fails with casting exception for HColumnDescriptor |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18851](https://issues.apache.org/jira/browse/HBASE-18851) | LICENSE failure after HADOOP-14799 with Hadoop 3 |  Critical | build | Josh Elser | Josh Elser |
| [HBASE-18852](https://issues.apache.org/jira/browse/HBASE-18852) | Take down the hbasecon asia banner on home page |  Major | website | Michael Stack | Michael Stack |
| [HBASE-18853](https://issues.apache.org/jira/browse/HBASE-18853) | hbase-protocol-shaded includes protobuf (since we moved to hbase-thirdparty) |  Major | thirdparty | Michael Stack | Michael Stack |
| [HBASE-18787](https://issues.apache.org/jira/browse/HBASE-18787) | Fix the "dependencies connecting to an HBase cluster" |  Minor | documentation | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18866](https://issues.apache.org/jira/browse/HBASE-18866) | clean up warnings about proto syntax |  Minor | Protobufs | Sean Busbey | Sean Busbey |
| [HBASE-18876](https://issues.apache.org/jira/browse/HBASE-18876) | Backup create command fails to take queue parameter as option |  Major | . | Amit Kabra | Amit Kabra |
| [HBASE-16769](https://issues.apache.org/jira/browse/HBASE-16769) | Deprecate/remove PB references from MasterObserver and RegionServerObserver |  Blocker | . | Anoop Sam John | Anoop Sam John |
| [HBASE-18880](https://issues.apache.org/jira/browse/HBASE-18880) | Failed to start rest server if the value of hbase.rest.threads.max is too small. |  Critical | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18885](https://issues.apache.org/jira/browse/HBASE-18885) | HFileOutputFormat2 hardcodes default FileOutputCommitter |  Major | mapreduce | Shao Feng Shi | Shao Feng Shi |
| [HBASE-18888](https://issues.apache.org/jira/browse/HBASE-18888) | StealJobQueue should call super() to init the PriorityBlockingQueue |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18887](https://issues.apache.org/jira/browse/HBASE-18887) | After full backup passed on hdfs root and incremental failed, full backup cannot be cleaned |  Major | . | Vishal Khandelwal | Vladimir Rodionov |
| [HBASE-18845](https://issues.apache.org/jira/browse/HBASE-18845) | TestReplicationSmallTests fails after HBASE-14004 |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-17441](https://issues.apache.org/jira/browse/HBASE-17441) | precommit test "hadoopcheck" not properly testing Hadoop 3 profile |  Blocker | build | Sean Busbey | Josh Elser |
| [HBASE-18894](https://issues.apache.org/jira/browse/HBASE-18894) | null pointer exception in list\_regions in shell command |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18928](https://issues.apache.org/jira/browse/HBASE-18928) | Backup delete command shows wrong number of deletes requested |  Minor | . | Amit Kabra | Amit Kabra |
| [HBASE-18932](https://issues.apache.org/jira/browse/HBASE-18932) | Backups masking exception in a scenario and though it fails , it shows success message. |  Major | . | Amit Kabra | Amit Kabra |
| [HBASE-18941](https://issues.apache.org/jira/browse/HBASE-18941) | Confusing logging error around rerun of restore on an existing table. |  Minor | . | Amit Kabra | Amit Kabra |
| [HBASE-18874](https://issues.apache.org/jira/browse/HBASE-18874) | HMaster abort message will be skipped if Throwable is passed null |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18940](https://issues.apache.org/jira/browse/HBASE-18940) | branch-2 (and probably others) fail check of generated source artifact |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-18973](https://issues.apache.org/jira/browse/HBASE-18973) | clean up maven warnings about pom well-formedness for master/branch-2 |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-18934](https://issues.apache.org/jira/browse/HBASE-18934) | precommit on branch-1 isn't supposed to run against hadoop 3 |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-18975](https://issues.apache.org/jira/browse/HBASE-18975) | Fix backup / restore hadoop3 incompatibility |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18992](https://issues.apache.org/jira/browse/HBASE-18992) | Comparators passed to the Memstore's flattened segments seems to be wrong |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18998](https://issues.apache.org/jira/browse/HBASE-18998) | processor.getRowsToLock() always assumes there is some row being locked |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18505](https://issues.apache.org/jira/browse/HBASE-18505) | Our build/yetus personality will run tests on individual modules and then on all (i.e. 'root'). Should do one or other |  Critical | build | Michael Stack | Mike Drob |
| [HBASE-18355](https://issues.apache.org/jira/browse/HBASE-18355) | Enable export snapshot tests that were disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | Hua Xiang |
| [HBASE-18997](https://issues.apache.org/jira/browse/HBASE-18997) | Remove the redundant methods in RegionInfo |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19016](https://issues.apache.org/jira/browse/HBASE-19016) | Coordinate storage policy property name for table schema and bulkload |  Minor | . | Yu Li | Yu Li |
| [HBASE-18350](https://issues.apache.org/jira/browse/HBASE-18350) | RSGroups are broken under AMv2 |  Blocker | rsgroup | Stephen Yuan Jiang | Balazs Meszaros |
| [HBASE-19032](https://issues.apache.org/jira/browse/HBASE-19032) | Set Content-Type header for patches uploaded by submit-patch.py |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19038](https://issues.apache.org/jira/browse/HBASE-19038) | precommit mvn install should run from root on patch |  Major | build | Mike Drob | Mike Drob |
| [HBASE-19020](https://issues.apache.org/jira/browse/HBASE-19020) | TestXmlParsing exception checking relies on a particular xml implementation without declaring it. |  Major | dependencies, REST | Sean Busbey | Sean Busbey |
| [HBASE-19042](https://issues.apache.org/jira/browse/HBASE-19042) | Oracle Java 8u144 downloader broken in precommit check |  Blocker | build | Peter Somogyi | Duo Zhang |
| [HBASE-19061](https://issues.apache.org/jira/browse/HBASE-19061) | enforcer NPE on hbase-shaded-invariants |  Blocker | build | Mike Drob | Mike Drob |
| [HBASE-19060](https://issues.apache.org/jira/browse/HBASE-19060) | "Hadoop check" test is running all the time instead of just when changes to java |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19039](https://issues.apache.org/jira/browse/HBASE-19039) | refactor shadedjars test to only run on java changes. |  Major | build | Mike Drob | Sean Busbey |
| [HBASE-19058](https://issues.apache.org/jira/browse/HBASE-19058) | The wget isn't installed in building docker image |  Major | build | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18893](https://issues.apache.org/jira/browse/HBASE-18893) | Remove Add/Modify/DeleteColumnFamilyProcedure in favor of using ModifyTableProcedure |  Major | Coprocessors, master | Mike Drob | Mike Drob |
| [HBASE-19072](https://issues.apache.org/jira/browse/HBASE-19072) | Missing break in catch block of InterruptedException in HRegion#waitForFlushes() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18846](https://issues.apache.org/jira/browse/HBASE-18846) | Accommodate the hbase-indexer/lily/SEP consumer deploy-type |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19021](https://issues.apache.org/jira/browse/HBASE-19021) | Restore a few important missing logics for balancer in 2.0 |  Critical | Balancer | Jerry He | Jerry He |
| [HBASE-19018](https://issues.apache.org/jira/browse/HBASE-19018) | Use of hadoop internals that require bouncycastle should declare bouncycastle dependency |  Critical | dependencies, test | Sean Busbey | Sean Busbey |
| [HBASE-19054](https://issues.apache.org/jira/browse/HBASE-19054) | Switch precommit docker image to one based on maven images |  Major | build, community | Mike Drob | Mike Drob |
| [HBASE-19073](https://issues.apache.org/jira/browse/HBASE-19073) | Cleanup CoordinatedStateManager |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19077](https://issues.apache.org/jira/browse/HBASE-19077) | Have Region\*CoprocessorEnvironment provide an ImmutableOnlineRegions |  Critical | Coprocessors | Michael Stack | Michael Stack |
| [HBASE-19098](https://issues.apache.org/jira/browse/HBASE-19098) | Python based compatiblity checker fails if git repo does not have a remote named 'origin' |  Critical | tooling | Andrew Kyle Purtell | Sean Busbey |
| [HBASE-13346](https://issues.apache.org/jira/browse/HBASE-13346) | Clean up Filter package for post 1.0 s/KeyValue/Cell/g |  Critical | API, Filters | Lars George | Tamas Penzes |
| [HBASE-19094](https://issues.apache.org/jira/browse/HBASE-19094) | NPE in RSGroupStartupWorker.waitForGroupTableOnline during master startup |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-19119](https://issues.apache.org/jira/browse/HBASE-19119) | hbase-http shouldn't have a native profile |  Blocker | build | Mike Drob | Mike Drob |
| [HBASE-19087](https://issues.apache.org/jira/browse/HBASE-19087) | Log an Optional's value/null instead of Optional[value]/Optional.empty. |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19130](https://issues.apache.org/jira/browse/HBASE-19130) | Typo in HStore.initializeRegionInternals for replaying wal |  Critical | Recovery | Duo Zhang | Duo Zhang |
| [HBASE-19030](https://issues.apache.org/jira/browse/HBASE-19030) | nightly runs should attempt to log test results after archiving |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-18844](https://issues.apache.org/jira/browse/HBASE-18844) | Release hbase-2.0.0-alpha-4; Theme "Coprocessor API Cleanup" |  Major | . | Michael Stack | Michael Stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18902](https://issues.apache.org/jira/browse/HBASE-18902) | TestCoprocessorServiceBackwardCompatibility fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19026](https://issues.apache.org/jira/browse/HBASE-19026) | TestLockProcedure#testRemoteNamespaceLockRecovery fails in master |  Major | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18794](https://issues.apache.org/jira/browse/HBASE-18794) | Remove deprecated methods in MasterObserver |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18798](https://issues.apache.org/jira/browse/HBASE-18798) | Remove the unused methods in RegionServerObserver |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18446](https://issues.apache.org/jira/browse/HBASE-18446) | Mark StoreFileScanner/StoreFileReader as IA.LimitedPrivate(Phoenix) |  Critical | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18823](https://issues.apache.org/jira/browse/HBASE-18823) | Apply RegionInfo to MasterObserver/RegionObserver/WALObserver |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18807](https://issues.apache.org/jira/browse/HBASE-18807) | Remove PB references from Observers for Quotas |  Major | . | Josh Elser | Josh Elser |
| [HBASE-18825](https://issues.apache.org/jira/browse/HBASE-18825) | Use HStoreFile instead of StoreFile in our own code base and remove unnecessary methods in StoreFile interface |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18731](https://issues.apache.org/jira/browse/HBASE-18731) | [compat 1-2] Mark protected methods of QuotaSettings that touch Protobuf internals as IA.Private |  Major | API | Michael Stack | Sean Busbey |
| [HBASE-18859](https://issues.apache.org/jira/browse/HBASE-18859) | Purge PB from BulkLoadObserver |  Major | Coprocessors | Michael Stack | Michael Stack |
| [HBASE-18298](https://issues.apache.org/jira/browse/HBASE-18298) | RegionServerServices Interface cleanup for CP expose |  Critical | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-18826](https://issues.apache.org/jira/browse/HBASE-18826) | Use HStore instead of Store in our own code base and remove unnecessary methods in Store interface |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18839](https://issues.apache.org/jira/browse/HBASE-18839) | Apply RegionInfo to code base |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18105](https://issues.apache.org/jira/browse/HBASE-18105) | [AMv2] Split/Merge need cleanup; currently they diverge and do not fully embrace AMv2 world |  Major | Region Assignment | Michael Stack | Yi Liang |
| [HBASE-18815](https://issues.apache.org/jira/browse/HBASE-18815) | We need to pass something like CompactionRequest in CP to give user some information about the compaction |  Major | Coprocessors | Duo Zhang | Peter Somogyi |
| [HBASE-18933](https://issues.apache.org/jira/browse/HBASE-18933) | set version number to 2.0.0-alpha4-SNAPSHOT following release of alpha3 |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-18878](https://issues.apache.org/jira/browse/HBASE-18878) | Use Optional\<T\> return types when T can be null |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18931](https://issues.apache.org/jira/browse/HBASE-18931) | Make ObserverContext an interface and remove private/testing methods |  Major | Coprocessors | Apekshit Sharma | Apekshit Sharma |
| [HBASE-18949](https://issues.apache.org/jira/browse/HBASE-18949) | Remove the CompactionRequest parameter in preCompactSelection |  Major | Coprocessors | Duo Zhang | Peter Somogyi |
| [HBASE-18957](https://issues.apache.org/jira/browse/HBASE-18957) | add test that confirms 2 FamilyFilters in a FilterList using MUST\_PASS\_ONE operator will return results that match either of the FamilyFilters and revert as needed to make it pass. |  Critical | Filters | Sean Busbey | Peter Somogyi |
| [HBASE-18951](https://issues.apache.org/jira/browse/HBASE-18951) | Use Builder pattern to remove nullable parameters for checkAndXXX methods in RawAsyncTable/AsyncTable interface |  Blocker | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-18980](https://issues.apache.org/jira/browse/HBASE-18980) | Address issues found by error-prone in hbase-hadoop2-compat |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-18981](https://issues.apache.org/jira/browse/HBASE-18981) | Address issues found by error-prone in hbase-client |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-18183](https://issues.apache.org/jira/browse/HBASE-18183) | Region interface cleanup for CP expose |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-18867](https://issues.apache.org/jira/browse/HBASE-18867) | maven enforcer plugin needs update to work with jdk9 |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-18747](https://issues.apache.org/jira/browse/HBASE-18747) | Introduce new example and helper classes to tell CP users how to do filtering on scanners |  Critical | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18954](https://issues.apache.org/jira/browse/HBASE-18954) | Make \*CoprocessorHost classes private |  Major | Coprocessors | Apekshit Sharma | Apekshit Sharma |
| [HBASE-18960](https://issues.apache.org/jira/browse/HBASE-18960) | A few bug fixes and minor improvements around batchMutate() |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-19001](https://issues.apache.org/jira/browse/HBASE-19001) | Remove the hooks in RegionObserver which are designed to construct a StoreScanner which is marked as IA.Private |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18945](https://issues.apache.org/jira/browse/HBASE-18945) | Make a IA.LimitedPrivate interface for CellComparator |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19045](https://issues.apache.org/jira/browse/HBASE-19045) | Deprecate RegionObserver#postInstantiateDeleteTracker |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-19046](https://issues.apache.org/jira/browse/HBASE-19046) | RegionObserver#postCompactSelection  Avoid passing shaded ImmutableList param |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-18989](https://issues.apache.org/jira/browse/HBASE-18989) | Polish the compaction related CP hooks |  Major | Compaction, Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19067](https://issues.apache.org/jira/browse/HBASE-19067) | Do not expose getHDFSBlockDistribution in StoreFile |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-18873](https://issues.apache.org/jira/browse/HBASE-18873) | Hide protobufs in GlobalQuotaSettings |  Critical | . | Josh Elser | Josh Elser |
| [HBASE-19069](https://issues.apache.org/jira/browse/HBASE-19069) | Do not wrap the original CompactionLifeCycleTracker when calling CP hooks |  Blocker | Compaction, Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19053](https://issues.apache.org/jira/browse/HBASE-19053) | Split out o.a.h.h.http from hbase-server into a separate module |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19070](https://issues.apache.org/jira/browse/HBASE-19070) | temporarily make the mvnsite nightly test non-voting. |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19074](https://issues.apache.org/jira/browse/HBASE-19074) | Miscellaneous Observer cleanups |  Major | Coprocessors | Michael Stack | Michael Stack |
| [HBASE-19057](https://issues.apache.org/jira/browse/HBASE-19057) | Fix other code review comments about FilterList Improvement |  Blocker | Filters | Zheng Hu | Zheng Hu |
| [HBASE-19029](https://issues.apache.org/jira/browse/HBASE-19029) | Align RPC timout methods in Table and AsyncTableBase |  Critical | asyncclient, Client | Peter Somogyi | Peter Somogyi |
| [HBASE-19048](https://issues.apache.org/jira/browse/HBASE-19048) | Cleanup MasterObserver hooks which takes IA private params |  Major | Coprocessors | Anoop Sam John | Michael Stack |
| [HBASE-19090](https://issues.apache.org/jira/browse/HBASE-19090) | Add config 'hbase.systemtables.compacting.memstore.type' to hbase-default.xml |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18905](https://issues.apache.org/jira/browse/HBASE-18905) | Allow CPs to request flush on Region and know the completion of the requested flush |  Major | Coprocessors | Anoop Sam John | Duo Zhang |
| [HBASE-18906](https://issues.apache.org/jira/browse/HBASE-18906) | Provide Region#waitForFlushes API |  Critical | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-18995](https://issues.apache.org/jira/browse/HBASE-18995) | Move methods that are for internal usage from CellUtil to Private util class |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19047](https://issues.apache.org/jira/browse/HBASE-19047) | CP exposed Scanner types should not extend Shipper |  Critical | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-19033](https://issues.apache.org/jira/browse/HBASE-19033) | Allow CP users to change versions and TTL before opening StoreScanner |  Blocker | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19136](https://issues.apache.org/jira/browse/HBASE-19136) | Set branch-2 version to 2.0.0-alpha4 from 2.0.0-alpha4-SNAPSHOT |  Major | . | Michael Stack | Michael Stack |
| [HBASE-18770](https://issues.apache.org/jira/browse/HBASE-18770) | Remove bypass method in ObserverContext and implement the 'bypass' logic case by case |  Critical | Coprocessors | Duo Zhang | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18410](https://issues.apache.org/jira/browse/HBASE-18410) | FilterList  Improvement. |  Major | Filters | Zheng Hu | Zheng Hu |
| [HBASE-17143](https://issues.apache.org/jira/browse/HBASE-17143) | Scan improvement |  Blocker | Client, Scanners | Duo Zhang | Duo Zhang |
| [HBASE-18835](https://issues.apache.org/jira/browse/HBASE-18835) | The return type of ExtendedCell#deepClone should be ExtendedCell rather than Cell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18833](https://issues.apache.org/jira/browse/HBASE-18833) | Ensure precommit personality is up to date on all active branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-19043](https://issues.apache.org/jira/browse/HBASE-19043) | Purge TableWrapper and CoprocessorHConnnection |  Major | Coprocessors | Michael Stack | Michael Stack |
| [HBASE-19007](https://issues.apache.org/jira/browse/HBASE-19007) | Align Services Interfaces in Master and RegionServer |  Blocker | . | Michael Stack | Michael Stack |
| [HBASE-16338](https://issues.apache.org/jira/browse/HBASE-16338) | update jackson to 2.y |  Major | dependencies | Sean Busbey | Mike Drob |
| [HBASE-19049](https://issues.apache.org/jira/browse/HBASE-19049) | Update kerby to 1.0.1 GA release |  Major | dependencies | Sean Busbey | Sean Busbey |


