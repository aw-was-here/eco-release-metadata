
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

## Release 1.5.0 - 2019-10-14



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19528](https://issues.apache.org/jira/browse/HBASE-19528) | Major Compaction Tool |  Major | . | churro morales | churro morales |
| [HBASE-22622](https://issues.apache.org/jira/browse/HBASE-22622) | WALKey Extended Attributes |  Major | wal | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-22648](https://issues.apache.org/jira/browse/HBASE-22648) | Snapshot TTL |  Minor | snapshots | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-22313](https://issues.apache.org/jira/browse/HBASE-22313) | Add a method to FsDelegationToken to accept token kind |  Minor | security | Venkatesh Sridharan | Venkatesh Sridharan |
| [HBASE-15666](https://issues.apache.org/jira/browse/HBASE-15666) | shaded dependencies for hbase-testing-util |  Critical | test | Sean Busbey | Balazs Meszaros |
| [HBASE-22623](https://issues.apache.org/jira/browse/HBASE-22623) | Add RegionObserver coprocessor hook for preWALAppend |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17314](https://issues.apache.org/jira/browse/HBASE-17314) | Limit total buffered size for all replication sources |  Major | Replication | Phil Yang | Phil Yang |
| [HBASE-19290](https://issues.apache.org/jira/browse/HBASE-19290) | Reduce zk request when doing split log |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-19673](https://issues.apache.org/jira/browse/HBASE-19673) | Backport " Periodically ensure records are not buffered too long by BufferedMutator" to branch-1 |  Major | Client | Niels Basjes | Niels Basjes |
| [HBASE-20087](https://issues.apache.org/jira/browse/HBASE-20087) | Periodically attempt redeploy of regions in FAILED\_OPEN state |  Major | master, Region Assignment | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20109](https://issues.apache.org/jira/browse/HBASE-20109) | Add Admin#getMaster API to branch-1 |  Minor | Client | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19024](https://issues.apache.org/jira/browse/HBASE-19024) | Configurable default durability for synchronous WAL |  Critical | wal | Vikas Vishwakarma | Harshal Jain |
| [HBASE-20286](https://issues.apache.org/jira/browse/HBASE-20286) | Improving shell command compaction\_state |  Minor | shell | Csaba Skrabak | Csaba Skrabak |
| [HBASE-20406](https://issues.apache.org/jira/browse/HBASE-20406) | HBase Thrift HTTP - Shouldn't handle TRACE/OPTIONS methods |  Major | security, Thrift | Kevin Risden | Kevin Risden |
| [HBASE-20444](https://issues.apache.org/jira/browse/HBASE-20444) | Improve version comparison logic for HBase specific version string and add unit tests |  Major | util | Umesh Agashe | maoling |
| [HBASE-20450](https://issues.apache.org/jira/browse/HBASE-20450) | Provide metrics for number of total active, priority and replication rpc handlers |  Major | metrics | Nihal Jain | Nihal Jain |
| [HBASE-19036](https://issues.apache.org/jira/browse/HBASE-19036) | Add action in Chaos Monkey to restart Active Namenode |  Minor | . | Mihir Monani | Mihir Monani |
| [HBASE-20845](https://issues.apache.org/jira/browse/HBASE-20845) | Support set the consistency for Gets and Scans in thrift2 |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21126](https://issues.apache.org/jira/browse/HBASE-21126) | Add ability for HBase Canary to ignore a configurable number of ZooKeeper down nodes |  Minor | canary, Zookeeper | David Manning | David Manning |
| [HBASE-20446](https://issues.apache.org/jira/browse/HBASE-20446) | Allow building HBase 1.x against Hadoop 3.1.x |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-21164](https://issues.apache.org/jira/browse/HBASE-21164) | reportForDuty to spew less log if master is initializing |  Minor | regionserver | Michael Stack | Mingliang Liu |
| [HBASE-21000](https://issues.apache.org/jira/browse/HBASE-21000) | Default limits for PressureAwareCompactionThroughputController are too low |  Minor | Compaction | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21256](https://issues.apache.org/jira/browse/HBASE-21256) | Improve IntegrationTestBigLinkedList for testing huge data |  Major | integration tests | Zephyr Guo | Zephyr Guo |
| [HBASE-21318](https://issues.apache.org/jira/browse/HBASE-21318) | Make RefreshHFilesClient runnable |  Minor | HFile | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-21325](https://issues.apache.org/jira/browse/HBASE-21325) | Force to terminate regionserver when abort hang in somewhere |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-21328](https://issues.apache.org/jira/browse/HBASE-21328) | add HBASE\_DISABLE\_HADOOP\_CLASSPATH\_LOOKUP switch to hbase-env.sh |  Minor | documentation, Operability | cong.han | cong.han |
| [HBASE-21283](https://issues.apache.org/jira/browse/HBASE-21283) | Add new shell command 'rit' for listing regions in transition |  Minor | Operability, shell | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21659](https://issues.apache.org/jira/browse/HBASE-21659) | Avoid to load duplicate coprocessors in system config and table descriptor |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20209](https://issues.apache.org/jira/browse/HBASE-20209) | Do Not Use Both Map containsKey and get Methods in Replication Sink |  Trivial | Replication | David Mollitor | David Mollitor |
| [HBASE-21595](https://issues.apache.org/jira/browse/HBASE-21595) | Print thread's information and stack traces when RS is aborting forcibly |  Minor | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21932](https://issues.apache.org/jira/browse/HBASE-21932) | Use Runtime.getRuntime().halt to terminate regionserver when abort timeout |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21987](https://issues.apache.org/jira/browse/HBASE-21987) | Simplify RSGroupInfoManagerImpl#flushConfig() for offline mode |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-21810](https://issues.apache.org/jira/browse/HBASE-21810) | bulkload  support set hfile compression on client |  Major | mapreduce | Yechao Chen | Yechao Chen |
| [HBASE-22034](https://issues.apache.org/jira/browse/HBASE-22034) | Backport HBASE-21401 and HBASE-22032 to branch-1 |  Major | . | Geoffrey Jacoby | Andrew Kyle Purtell |
| [HBASE-22009](https://issues.apache.org/jira/browse/HBASE-22009) | Improve RSGroupInfoManagerImpl#getDefaultServers() |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-22283](https://issues.apache.org/jira/browse/HBASE-22283) | Print row and table information when failed to get region location |  Major | Client, logging | Yu Li | Yu Li |
| [HBASE-21883](https://issues.apache.org/jira/browse/HBASE-21883) | Enhancements to Major Compaction tool |  Minor | Client, Compaction, tooling | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-22301](https://issues.apache.org/jira/browse/HBASE-22301) | Consider rolling the WAL if the HDFS write pipeline is slow |  Minor | wal | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22377](https://issues.apache.org/jira/browse/HBASE-22377) | Provide API to check the existence of a namespace which does not require ADMIN permissions |  Major | . | Chinmay Kulkarni | Andrew Kyle Purtell |
| [HBASE-22459](https://issues.apache.org/jira/browse/HBASE-22459) | Expose store reader reference count |  Minor | HFile, metrics, regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22593](https://issues.apache.org/jira/browse/HBASE-22593) | Add local Jenv file to gitignore |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22344](https://issues.apache.org/jira/browse/HBASE-22344) | Document deprecated public APIs |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22596](https://issues.apache.org/jira/browse/HBASE-22596) | [Chore] Separate the execution period between CompactionChecker and PeriodicMemStoreFlusher |  Minor | Compaction | Reid Chan | Reid Chan |
| [HBASE-22616](https://issues.apache.org/jira/browse/HBASE-22616) | responseTooXXX logging for Multi should characterize the component ops |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22604](https://issues.apache.org/jira/browse/HBASE-22604) | fix the link in the docs to "Understanding HBase and BigTable" by Jim R. Wilson |  Trivial | documentation | David Mollitor | Murtaza Hassan |
| [HBASE-22669](https://issues.apache.org/jira/browse/HBASE-22669) | Add unit tests for org.apache.hadoop.hbase.util.Strings |  Major | java | Eric Hettiaratchi | Eric Hettiaratchi |
| [HBASE-22689](https://issues.apache.org/jira/browse/HBASE-22689) | Line break for fix version in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22610](https://issues.apache.org/jira/browse/HBASE-22610) | [BucketCache] Rename "hbase.offheapcache.minblocksize" |  Trivial | . | Reid Chan | Murtaza Hassan |
| [HBASE-22692](https://issues.apache.org/jira/browse/HBASE-22692) | Rubocop definition is not used in the /bin directory |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22702](https://issues.apache.org/jira/browse/HBASE-22702) | [Log] 'Group not found for table' is chatty |  Trivial | . | Reid Chan | Murtaza Hassan |
| [HBASE-22363](https://issues.apache.org/jira/browse/HBASE-22363) | Remove hardcoded number of read cache block buckets |  Trivial | BlockCache, BucketCache | Biju Nair | Biju Nair |
| [HBASE-22762](https://issues.apache.org/jira/browse/HBASE-22762) | Print the delta between phases in the split/merge/compact/flush transaction journals |  Minor | logging | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22786](https://issues.apache.org/jira/browse/HBASE-22786) | Fix Checkstyle issues in tests of hbase-client |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22785](https://issues.apache.org/jira/browse/HBASE-22785) | Reduce number of Checkstyle issues in client exceptions |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22828](https://issues.apache.org/jira/browse/HBASE-22828) | Log a region close journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22844](https://issues.apache.org/jira/browse/HBASE-22844) | Fix Checkstyle issues in client snapshot exceptions |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22810](https://issues.apache.org/jira/browse/HBASE-22810) | Initialize an separate ThreadPoolExecutor for taking/restoring snapshot |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22464](https://issues.apache.org/jira/browse/HBASE-22464) | Improvements to hbase-vote script |  Trivial | scripts | Artem Ervits | Artem Ervits |
| [HBASE-22880](https://issues.apache.org/jira/browse/HBASE-22880) | [Backport] HBASE-22871 to branch-1 |  Major | . | Reid Chan | Baiqiang Zhao |
| [HBASE-22872](https://issues.apache.org/jira/browse/HBASE-22872) | Don't create normalization plan unnecesarily when split and merge both are disabled |  Minor | . | Aman Poonia | Aman Poonia |
| [HBASE-22618](https://issues.apache.org/jira/browse/HBASE-22618) | added the possibility to load custom cost functions |  Major | . | Pierre Zemb | Pierre Zemb |
| [HBASE-22724](https://issues.apache.org/jira/browse/HBASE-22724) | Add a emoji on the vote table for pre commit result on github |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-22912](https://issues.apache.org/jira/browse/HBASE-22912) | [Backport] HBASE-22867 to branch-1 to avoid ForkJoinPool to spawn thousands of threads |  Major | . | Reid Chan | Zheng Hu |
| [HBASE-22760](https://issues.apache.org/jira/browse/HBASE-22760) | Stop/Resume Snapshot Auto-Cleanup activity with shell command |  Major | Admin, shell, snapshots | Viraj Jasani | Viraj Jasani |
| [HBASE-22804](https://issues.apache.org/jira/browse/HBASE-22804) | Provide an API to get list of successful regions and total expected regions in Canary |  Minor | canary | Caroline | Caroline |
| [HBASE-22890](https://issues.apache.org/jira/browse/HBASE-22890) | Verify the files when RegionServer is starting and BucketCache is in file mode |  Major | BucketCache | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23058](https://issues.apache.org/jira/browse/HBASE-23058) | Should be "Column Family Name" in table.jsp |  Minor | . | Qiongwu | Qiongwu |
| [HBASE-22975](https://issues.apache.org/jira/browse/HBASE-22975) | Add read and write QPS metrics at server level and table level |  Minor | metrics | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23038](https://issues.apache.org/jira/browse/HBASE-23038) | Provide consistent and clear logging about disabling chores |  Minor | master, regionserver | Sean Busbey | Sanjeet Nishad |
| [HBASE-22930](https://issues.apache.org/jira/browse/HBASE-22930) | Set unique name to longCompactions/shortCompactions threads |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | Define a public interface for Canary and move existing implementation to LimitedPrivate |  Critical | canary | Duo Zhang | Rushabh Shah |
| [HBASE-23116](https://issues.apache.org/jira/browse/HBASE-23116) | LoadBalancer should log table name when balancing per table |  Minor | . | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-21996](https://issues.apache.org/jira/browse/HBASE-21996) | Set locale for javadoc |  Major | documentation | Peter Somogyi | Peter Somogyi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18312](https://issues.apache.org/jira/browse/HBASE-18312) | Ineffective handling of FileNotFoundException in FileLink$FileLinkInputStream.tryOpen() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | limit max log message width in log4j |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-19240](https://issues.apache.org/jira/browse/HBASE-19240) | Fix error-prone errors, part four? |  Major | . | Mike Drob | Mike Drob |
| [HBASE-16499](https://issues.apache.org/jira/browse/HBASE-16499) | slow replication for small HBase clusters |  Critical | Replication | Vikas Vishwakarma | Ashish Singhi |
| [HBASE-19850](https://issues.apache.org/jira/browse/HBASE-19850) | The number of Offline Regions is wrong after restoring a snapshot |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20006](https://issues.apache.org/jira/browse/HBASE-20006) | TestRestoreSnapshotFromClientWithRegionReplicas is flakey |  Critical | read replicas | Michael Stack | Toshihiro Suzuki |
| [HBASE-18116](https://issues.apache.org/jira/browse/HBASE-18116) | Replication source in-memory accounting should not include bulk transfer hfiles |  Major | Replication | Andrew Kyle Purtell | Xu Cang |
| [HBASE-20691](https://issues.apache.org/jira/browse/HBASE-20691) | Storage policy should allow deferring to HDFS |  Blocker | Filesystem Integration, wal | Sean Busbey | Yu Li |
| [HBASE-20870](https://issues.apache.org/jira/browse/HBASE-20870) | Wrong HBase root dir in ITBLL's Search Tool |  Minor | integration tests | Allan Yang | Allan Yang |
| [HBASE-20744](https://issues.apache.org/jira/browse/HBASE-20744) | Address FindBugs warnings in branch-1 |  Major | . | Ted Yu | Xu Cang |
| [HBASE-20928](https://issues.apache.org/jira/browse/HBASE-20928) | Rewrite calculation of midpoint in binarySearch functions to prevent overflow |  Minor | io | saurabh singh | saurabh singh |
| [HBASE-21132](https://issues.apache.org/jira/browse/HBASE-21132) | return wrong result in rest multiget |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21021](https://issues.apache.org/jira/browse/HBASE-21021) | Result returned by Append operation should be ordered |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-21208](https://issues.apache.org/jira/browse/HBASE-21208) | Bytes#toShort doesn't work without unsafe |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20764](https://issues.apache.org/jira/browse/HBASE-20764) | build broken when latest commit is gpg signed |  Critical | build | Mike Drob | Mike Drob |
| [HBASE-21575](https://issues.apache.org/jira/browse/HBASE-21575) | memstore above high watermark message is logged too much |  Minor | logging, regionserver | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21749](https://issues.apache.org/jira/browse/HBASE-21749) | RS UI may throw NPE and make rs-status page inaccessible with multiwal and replication |  Major | Replication, UI | Nihal Jain | Nihal Jain |
| [HBASE-21866](https://issues.apache.org/jira/browse/HBASE-21866) | Do not move the table to null rsgroup when creating an existing table |  Major | proc-v2, rsgroup | Xiang Li | Xiang Li |
| [HBASE-21740](https://issues.apache.org/jira/browse/HBASE-21740) | NPE happens while shutdown the RS |  Major | . | lujie | lujie |
| [HBASE-21796](https://issues.apache.org/jira/browse/HBASE-21796) | RecoverableZooKeeper indefinitely retries a client stuck in AUTH\_FAILED |  Major | Zookeeper | Josh Elser | Josh Elser |
| [HBASE-22057](https://issues.apache.org/jira/browse/HBASE-22057) | Impose upper-bound on size of ZK ops sent in a single multi() |  Major | . | Josh Elser | Josh Elser |
| [HBASE-22185](https://issues.apache.org/jira/browse/HBASE-22185) | RAMQueueEntry#writeToCache should freeBlock if any exception encountered instead of the IOException catch block |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22194](https://issues.apache.org/jira/browse/HBASE-22194) | Snapshot unittests fail on Windows due to invalid file path uri |  Major | regionserver, test | Bahram Chehrazy | Bahram Chehrazy |
| [HBASE-22230](https://issues.apache.org/jira/browse/HBASE-22230) | REST Server drops connection on long scans |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22047](https://issues.apache.org/jira/browse/HBASE-22047) | LeaseException in Scan should be retired |  Major | Client, Scanners | Allan Yang | Igor Rudenko |
| [HBASE-21070](https://issues.apache.org/jira/browse/HBASE-21070) | SnapshotFileCache won't update for snapshots stored in S3 |  Critical | snapshots | Zach York | Zach York |
| [HBASE-21777](https://issues.apache.org/jira/browse/HBASE-21777) | "Tune compaction throughput" debug messages even when nothing has changed |  Trivial | Compaction | Andrew Kyle Purtell | Tak-Lon (Stephen) Wu |
| [HBASE-22378](https://issues.apache.org/jira/browse/HBASE-22378) | HBase Canary fails with TableNotFoundException when table deleted during Canary run |  Minor | canary | Caroline | Caroline |
| [HBASE-22510](https://issues.apache.org/jira/browse/HBASE-22510) | Address findbugs/spotbugs complaints (branch-1) |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22519](https://issues.apache.org/jira/browse/HBASE-22519) | New Hadoop 2.8 dependencies fail shaded invariants check |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22396](https://issues.apache.org/jira/browse/HBASE-22396) | Backport HBASE-21536 to branch-1 |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-22520](https://issues.apache.org/jira/browse/HBASE-22520) | Avoid possible NPE in HalfStoreFileReader seekBefore() |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22563](https://issues.apache.org/jira/browse/HBASE-22563) | Reduce retained jobs for Jenkins pipelines |  Major | . | Josh Elser | Josh Elser |
| [HBASE-22559](https://issues.apache.org/jira/browse/HBASE-22559) | [RPC] set guard against CALL\_QUEUE\_HANDLER\_FACTOR\_CONF\_KEY |  Minor | rpc | Reid Chan | Reid Chan |
| [HBASE-22562](https://issues.apache.org/jira/browse/HBASE-22562) | PressureAwareThroughputController#skipControl never invoked |  Trivial | Operability | Josh Elser | Josh Elser |
| [HBASE-22495](https://issues.apache.org/jira/browse/HBASE-22495) | Update SyncTable section, explaining from which specific minor versions "doDeletes/doPuts" is available |  Major | documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22426](https://issues.apache.org/jira/browse/HBASE-22426) | Disable region split/merge switch doen't work when 'hbase.assignment.usezk' is set true |  Major | Region Assignment | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22605](https://issues.apache.org/jira/browse/HBASE-22605) | Ref guide includes dev guidance only applicable to EOM versions |  Trivial | documentation | Sean Busbey | Mingliang Liu |
| [HBASE-22538](https://issues.apache.org/jira/browse/HBASE-22538) | Prevent graceful\_stop.sh from shutting down RS too early before finishing unloading regions |  Minor | shell | Jeongdae Kim | Jeongdae Kim |
| [HBASE-22492](https://issues.apache.org/jira/browse/HBASE-22492) | HBase server doesn't preserve SASL sequence number on the network |  Major | regionserver | Sébastien BARNOUD | Sébastien BARNOUD |
| [HBASE-22629](https://issues.apache.org/jira/browse/HBASE-22629) | Remove TestReplicationDroppedTables from branch-1 |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22637](https://issues.apache.org/jira/browse/HBASE-22637) | fix flaky TestMetaTableMetrics test |  Major | metrics, test | Mate Szalay-Beko | Mate Szalay-Beko |
| [HBASE-22654](https://issues.apache.org/jira/browse/HBASE-22654) | apache-rat complains on branch-1 |  Minor | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22656](https://issues.apache.org/jira/browse/HBASE-22656) | [Metrics]  Tabe metrics 'BatchPut' and 'BatchDelete' are never updated |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-22666](https://issues.apache.org/jira/browse/HBASE-22666) | Add missing @Test annotation to TestQuotaThrottle |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22686](https://issues.apache.org/jira/browse/HBASE-22686) | ZkSplitLogWorkerCoordination doesn't allow a regionserver to pick up all of the split work it is capable of |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22571](https://issues.apache.org/jira/browse/HBASE-22571) | Javadoc Warnings related to @return tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22586](https://issues.apache.org/jira/browse/HBASE-22586) | Javadoc Warnings related to @param tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22720](https://issues.apache.org/jira/browse/HBASE-22720) | Incorrect link for hbase.unittests |  Trivial | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-22603](https://issues.apache.org/jira/browse/HBASE-22603) | Javadoc Warnings related to @link tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22730](https://issues.apache.org/jira/browse/HBASE-22730) | XML Parsing error on branch-1 |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22715](https://issues.apache.org/jira/browse/HBASE-22715) | All scan requests should be handled by scan handler threads in RWQueueRpcExecutor |  Minor | . | Jeongdae Kim | Jeongdae Kim |
| [HBASE-22658](https://issues.apache.org/jira/browse/HBASE-22658) | region\_mover.rb  should choose same rsgroup servers as target servers |  Major | rsgroup, shell | liang.feng |  |
| [HBASE-22145](https://issues.apache.org/jira/browse/HBASE-22145) | windows hbase-env causes hbase cli/etc to ignore HBASE\_OPTS |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22773](https://issues.apache.org/jira/browse/HBASE-22773) | when set blockSize option in Performance Evaluation tool, error occurs:ERROR: Unrecognized option/command: --blockSize=131072 |  Minor | mapreduce | dingwei2019 | dingwei2019 |
| [HBASE-22801](https://issues.apache.org/jira/browse/HBASE-22801) | Maven build issue on Github PRs |  Major | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22838](https://issues.apache.org/jira/browse/HBASE-22838) | assembly:single failure: user id or group id 'xxxxx' is too big |  Major | build | Viraj Jasani | Viraj Jasani |
| [HBASE-22774](https://issues.apache.org/jira/browse/HBASE-22774) | [WAL] RegionGroupingStrategy loses its function after split |  Major | Performance, wal | Reid Chan | Reid Chan |
| [HBASE-22856](https://issues.apache.org/jira/browse/HBASE-22856) | HBASE-Find-Flaky-Tests fails with pip error |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-22861](https://issues.apache.org/jira/browse/HBASE-22861) | [WAL] Merged region should get its WAL according to WALProvider. |  Major | wal | Reid Chan | Reid Chan |
| [HBASE-22601](https://issues.apache.org/jira/browse/HBASE-22601) | Misconfigured addition of peers leads to cluster shutdown. |  Major | . | Rushabh Shah | Rushabh Shah |
| [HBASE-22866](https://issues.apache.org/jira/browse/HBASE-22866) | Multiple slf4j-log4j provider versions included in binary package (branch-1) |  Minor | . | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-22935](https://issues.apache.org/jira/browse/HBASE-22935) | TaskMonitor warns MonitoredRPCHandler task may be stuck when it recently started |  Minor | logging | David Manning | David Manning |
| [HBASE-22937](https://issues.apache.org/jira/browse/HBASE-22937) | The RawBytesComparator in branch-1 have wrong comparison order |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22981](https://issues.apache.org/jira/browse/HBASE-22981) | Remove unused flags for Yetus |  Critical | build | Peter Somogyi | Peter Somogyi |
| [HBASE-23007](https://issues.apache.org/jira/browse/HBASE-23007) | UnsatisfiedLinkError when using hbase-shaded packages under linux |  Critical | shading | Balazs Meszaros | Balazs Meszaros |
| [HBASE-23019](https://issues.apache.org/jira/browse/HBASE-23019) | Handle --skip-errorprone on branch-1 |  Major | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22955](https://issues.apache.org/jira/browse/HBASE-22955) | Branches-1 precommit and nightly yetus jobs are using jdk8 for jdk7 jobs |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-22649](https://issues.apache.org/jira/browse/HBASE-22649) | Encode StoreFile path URLs in the UI to handle scenarios where CF contains special characters (like # etc.) |  Major | UI | Ashok shetty | Y. SREENIVASULU REDDY |
| [HBASE-23015](https://issues.apache.org/jira/browse/HBASE-23015) | Replace Jackson with relocated gson everywhere but hbase-rest |  Blocker | Client, shading | Sean Busbey | Viraj Jasani |
| [HBASE-22653](https://issues.apache.org/jira/browse/HBASE-22653) | Do not run errorProne on JDK7 |  Major | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22902](https://issues.apache.org/jira/browse/HBASE-22902) | At regionserver start there's a request to roll the WAL |  Minor | wal | David Manning | Sandeep Pal |
| [HBASE-23086](https://issues.apache.org/jira/browse/HBASE-23086) | TestShell failing on branch-1 and branch-1.4 |  Blocker | shell | Sean Busbey | Viraj Jasani |
| [HBASE-22735](https://issues.apache.org/jira/browse/HBASE-22735) | list\_regions may throw an error if a region is RIT |  Minor | shell | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-23094](https://issues.apache.org/jira/browse/HBASE-23094) | Wrong log message in simpleRegionNormaliser while checking if merge is enabled. |  Minor | . | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-23139](https://issues.apache.org/jira/browse/HBASE-23139) | MapReduce jobs lauched from convenience distribution are nonfunctional |  Blocker | mapreduce | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22784](https://issues.apache.org/jira/browse/HBASE-22784) | OldWALs not cleared in a replication slave cluster (cyclic replication bw 2 clusters) |  Blocker | regionserver, Replication | Solvannan R M | Wellington Chevreuil |
| [HBASE-23128](https://issues.apache.org/jira/browse/HBASE-23128) | Restore Region interface compatibility |  Blocker | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20667](https://issues.apache.org/jira/browse/HBASE-20667) | Rename TestGlobalThrottler to TestReplicationGlobalThrottler |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21272](https://issues.apache.org/jira/browse/HBASE-21272) | Re-add assertions for RS Group admin tests |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-21952](https://issues.apache.org/jira/browse/HBASE-21952) | Test Failure: TestClientOperationInterrupt.testInterrupt50Percent |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-22051](https://issues.apache.org/jira/browse/HBASE-22051) | Expect values are hard-coded in the verifications of TestRSGroupsBasics |  Minor | rsgroup, test | Xiang Li | Xiang Li |
| [HBASE-22450](https://issues.apache.org/jira/browse/HBASE-22450) | Port TestStoreScannerClosure from HBASE-22072 |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22545](https://issues.apache.org/jira/browse/HBASE-22545) | TestLogLevel broken |  Major | test | Josh Elser | Mingliang Liu |
| [HBASE-22615](https://issues.apache.org/jira/browse/HBASE-22615) | Make TestChoreService more robust to timing |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-22725](https://issues.apache.org/jira/browse/HBASE-22725) | Remove all remaining javadoc warnings |  Trivial | test | Murtaza Hassan | Murtaza Hassan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19631](https://issues.apache.org/jira/browse/HBASE-19631) | Allow building HBase 1.5.x against Hadoop 3.0.0 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-19932](https://issues.apache.org/jira/browse/HBASE-19932) | TestSecureIPC in branch-1 fails with NoSuchMethodError against hadoop 3 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20048](https://issues.apache.org/jira/browse/HBASE-20048) | Revert serial replication feature |  Blocker | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20716](https://issues.apache.org/jira/browse/HBASE-20716) | Unsafe access cleanup |  Critical | Performance | Michael Stack | Sahil Aggarwal |
| [HBASE-21679](https://issues.apache.org/jira/browse/HBASE-21679) | Port HBASE-6028 (Start/Stop compactions at region server level) to branch-1 |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21675](https://issues.apache.org/jira/browse/HBASE-21675) | Port HBASE-21642 (CopyTable by reading snapshot and bulkloading will save a lot of time) to branch-1 |  Major | . | Andrew Kyle Purtell | Zheng Hu |
| [HBASE-21616](https://issues.apache.org/jira/browse/HBASE-21616) | Port HBASE-21034 (Add new throttle type: read/write capacity unit) to branch-1 |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21680](https://issues.apache.org/jira/browse/HBASE-21680) | Port HBASE-20194 (Basic Replication WebUI - Master) and HBASE-20193 (Basic Replication Web UI - Regionserver) to branch-1 |  Major | Replication | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21735](https://issues.apache.org/jira/browse/HBASE-21735) | Port HBASE-18784 (Use of filesystem that requires hflush / hsync / append / etc should query outputstream capabilities) to branch-1 |  Major | Filesystem Integration, wal | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21727](https://issues.apache.org/jira/browse/HBASE-21727) | Simplify documentation around client timeout |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21838](https://issues.apache.org/jira/browse/HBASE-21838) | Create a special ReplicationEndpoint just for verifying the WAL entries are fine |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-17884](https://issues.apache.org/jira/browse/HBASE-17884) | Backport HBASE-16217 to branch-1 |  Major | Coprocessors, security | Gary Helmling | Gary Helmling |
| [HBASE-22413](https://issues.apache.org/jira/browse/HBASE-22413) | Backport 'HBASE-22399 Change default hadoop-two.version to 2.8.x and remove the 2.7.x hadoop checks' to branch-1 |  Major | build, hadoop2 | Duo Zhang | Duo Zhang |
| [HBASE-22506](https://issues.apache.org/jira/browse/HBASE-22506) | Backport HBASE-22500 'Modify pom and jenkins jobs for hadoop versions' to branch-1 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22535](https://issues.apache.org/jira/browse/HBASE-22535) | TestShellRSGroups fails when run on JDK11 |  Minor | java, shell | Sakthi | Sakthi |
| [HBASE-22554](https://issues.apache.org/jira/browse/HBASE-22554) | Upgrade to surefire 2.22.2 |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22458](https://issues.apache.org/jira/browse/HBASE-22458) | TestClassFinder fails when run on JDK11 |  Minor | java, test | Sakthi | Sakthi |
| [HBASE-22627](https://issues.apache.org/jira/browse/HBASE-22627) | Port HBASE-22617 (Recovered WAL directories not getting cleaned up) to branch-1 |  Blocker | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22719](https://issues.apache.org/jira/browse/HBASE-22719) | Add debug support for github PR pre commit job |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22132](https://issues.apache.org/jira/browse/HBASE-22132) | Backport HBASE-22115 "HBase RPC aspires to grow an infinite tree of trace scopes; some other places are also unsafe" intent to branch-1 |  Major | . | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-22728](https://issues.apache.org/jira/browse/HBASE-22728) | Upgrade jackson dependencies in branch-1 |  Major | . | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-22891](https://issues.apache.org/jira/browse/HBASE-22891) | Use HBaseQA in HBase-PreCommit-GitHub-PR job |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-22706](https://issues.apache.org/jira/browse/HBASE-22706) | Backport HBASE-21292 "IdLock.getLockEntry() may hang if interrupted" to branch-1 |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22988](https://issues.apache.org/jira/browse/HBASE-22988) | Backport HBASE-11062 "hbtop" to branch-1 |  Major | backport, hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23110](https://issues.apache.org/jira/browse/HBASE-23110) | Backport HBASE-23054 "Remove synchronization block from MetaTableMetrics and fix LossyCounting algorithm" to branch-1 |  Major | metrics | Duo Zhang | Andrew Kyle Purtell |
| [HBASE-23101](https://issues.apache.org/jira/browse/HBASE-23101) | Backport HBASE-22380 to branch-1 |  Blocker | . | Wellington Chevreuil | Wellington Chevreuil |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22833](https://issues.apache.org/jira/browse/HBASE-22833) | MultiRowRangeFilter should provide a method for creating a filter which is functionally equivalent to multiple prefix filters |  Minor | Client | Itsuki Toyota | Itsuki Toyota |
| [HBASE-20493](https://issues.apache.org/jira/browse/HBASE-20493) | Port HBASE-19994 (Create a new class for RPC throttling exception, make it retryable) to branch-1 |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20486](https://issues.apache.org/jira/browse/HBASE-20486) | Change default throughput controller to PressureAwareThroughputController in branch-1 |  Major | . | Andrew Kyle Purtell | Xu Cang |
| [HBASE-19858](https://issues.apache.org/jira/browse/HBASE-19858) | Backport HBASE-14061 (Support CF-level Storage Policy) to branch-1 |  Major | hadoop2, Operability | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20501](https://issues.apache.org/jira/browse/HBASE-20501) | Change the Hadoop minimum version to 2.7.1 |  Blocker | community, documentation | Andrew Kyle Purtell | Sean Busbey |
| [HBASE-21791](https://issues.apache.org/jira/browse/HBASE-21791) | Upgrade thrift dependency to 0.12.0 |  Blocker | Thrift | Duo Zhang | Duo Zhang |
| [HBASE-21826](https://issues.apache.org/jira/browse/HBASE-21826) | Rebase 1.5.0 CHANGES on branch-1.4 at release 1.4.9 |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21969](https://issues.apache.org/jira/browse/HBASE-21969) | Improve the update of destination rsgroup of RSGroupInfoManagerImpl#moveTables() |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-22044](https://issues.apache.org/jira/browse/HBASE-22044) | ByteBufferUtils should not be IA.Public API |  Major | compatibility, util | Sean Busbey | Sean Busbey |
| [HBASE-22444](https://issues.apache.org/jira/browse/HBASE-22444) | Backport HBASE-19954 to branch-1 |  Major | hadoop2, hadoop3, test | Duo Zhang | Duo Zhang |
| [HBASE-22556](https://issues.apache.org/jira/browse/HBASE-22556) | [DOCS] Backport HBASE-15557 to branch-1 and branch-2 |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22409](https://issues.apache.org/jira/browse/HBASE-22409) | update branch-1 ref guide section on prereqs |  Critical | documentation | Sean Busbey | Sean Busbey |
| [HBASE-19230](https://issues.apache.org/jira/browse/HBASE-19230) | Write up fixVersion policy from dev discussion in refguide |  Major | documentation | Michael Stack | Murtaza Hassan |
| [HBASE-21606](https://issues.apache.org/jira/browse/HBASE-21606) | Document use of the meta table load metrics added in HBASE-19722 |  Critical | documentation, meta, metrics, Operability | Sean Busbey | Mate Szalay-Beko |
| [HBASE-22911](https://issues.apache.org/jira/browse/HBASE-22911) | fewer concurrent github PR builds |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-22913](https://issues.apache.org/jira/browse/HBASE-22913) | Use Hadoop label for nightly builds |  Major | build | Duo Zhang | Gavin McDonald |
| [HBASE-23024](https://issues.apache.org/jira/browse/HBASE-23024) | Replace Exception.initCause() with Constructor args |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23023](https://issues.apache.org/jira/browse/HBASE-23023) | upgrade shellcheck used to test in nightly and precommit |  Major | build | Sean Busbey | Sean Busbey |


