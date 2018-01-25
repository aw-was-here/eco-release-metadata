
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
# Apache Hadoop Changelog

## Release 2.10.0 - Unreleased (as of 2018-01-25)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12883](https://issues.apache.org/jira/browse/HDFS-12883) | RBF: Document Router and State Store metrics |  Major | documentation | Yiqun Lin | Yiqun Lin |
| [HDFS-12895](https://issues.apache.org/jira/browse/HDFS-12895) | RBF: Add ACL support for mount table |  Major | . | Yiqun Lin | Yiqun Lin |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14872](https://issues.apache.org/jira/browse/HADOOP-14872) | CryptoInputStream should implement unbuffer |  Major | fs, security | John Zhuge | John Zhuge |
| [HADOOP-14960](https://issues.apache.org/jira/browse/HADOOP-14960) | Add GC time percentage monitor/alerter |  Major | . | Misha Dmitriev | Misha Dmitriev |
| [HADOOP-15023](https://issues.apache.org/jira/browse/HADOOP-15023) | ValueQueue should also validate (lowWatermark \* numValues) \> 0 on construction |  Minor | . | Xiao Chen | Xiao Chen |
| [YARN-6851](https://issues.apache.org/jira/browse/YARN-6851) | Capacity Scheduler: document configs for controlling # containers allowed to be allocated per node heartbeat |  Minor | . | Wei Yan | Wei Yan |
| [YARN-7495](https://issues.apache.org/jira/browse/YARN-7495) | Improve robustness of the AggregatedLogDeletionService |  Major | log-aggregation | Jonathan Eagles | Jonathan Eagles |
| [HADOOP-15056](https://issues.apache.org/jira/browse/HADOOP-15056) | Fix TestUnbuffer#testUnbufferException failure |  Minor | test | Jack Bearden | Jack Bearden |
| [HADOOP-15012](https://issues.apache.org/jira/browse/HADOOP-15012) | Add readahead, dropbehind, and unbuffer to StreamCapabilities |  Major | fs | John Zhuge | John Zhuge |
| [HADOOP-15104](https://issues.apache.org/jira/browse/HADOOP-15104) | AliyunOSS: change the default value of max error retry |  Major | fs/oss | wujinhu | wujinhu |
| [YARN-7642](https://issues.apache.org/jira/browse/YARN-7642) | Add test case to verify context update after container promotion or demotion with or without auto update |  Minor | nodemanager | Weiwei Yang | Weiwei Yang |
| [HADOOP-15111](https://issues.apache.org/jira/browse/HADOOP-15111) | AliyunOSS: backport HADOOP-14993 to branch-2 |  Major | fs/oss | Genmao Yu | Genmao Yu |
| [HDFS-12818](https://issues.apache.org/jira/browse/HDFS-12818) | Support multiple storages in DataNodeCluster / SimulatedFSDataset |  Minor | datanode, test | Erik Krogen | Erik Krogen |
| [HDFS-9023](https://issues.apache.org/jira/browse/HDFS-9023) | When NN is not able to identify DN for replication, reason behind it can be logged |  Critical | hdfs-client, namenode | Surendra Singh Lilhore | Xiao Chen |
| [YARN-7678](https://issues.apache.org/jira/browse/YARN-7678) | Ability to enable logging of container memory stats |  Major | nodemanager | Jim Brennan | Jim Brennan |
| [HDFS-12945](https://issues.apache.org/jira/browse/HDFS-12945) | Switch to ClientProtocol instead of NamenodeProtocols in NamenodeWebHdfsMethods |  Minor | . | Wei Yan | Wei Yan |
| [YARN-7622](https://issues.apache.org/jira/browse/YARN-7622) | Allow fair-scheduler configuration on HDFS |  Minor | fairscheduler, resourcemanager | Greg Phillips | Greg Phillips |
| [YARN-7590](https://issues.apache.org/jira/browse/YARN-7590) | Improve container-executor validation check |  Major | security, yarn | Eric Yang | Eric Yang |
| [MAPREDUCE-7029](https://issues.apache.org/jira/browse/MAPREDUCE-7029) | FileOutputCommitter is slow on filesystems lacking recursive delete |  Minor | . | Karthik Palaniappan | Karthik Palaniappan |
| [MAPREDUCE-6984](https://issues.apache.org/jira/browse/MAPREDUCE-6984) | MR AM to clean up temporary files from previous attempt in case of no recovery |  Major | applicationmaster | Gergo Repas | Gergo Repas |
| [YARN-7728](https://issues.apache.org/jira/browse/YARN-7728) | Expose container preemptions related information in Capacity Scheduler queue metrics |  Major | . | Eric Payne | Eric Payne |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12052](https://issues.apache.org/jira/browse/HDFS-12052) | Set SWEBHDFS delegation token kind when ssl is enabled in HttpFS |  Major | httpfs, webhdfs | Zoran Dimitrijevic | Zoran Dimitrijevic |
| [HDFS-12318](https://issues.apache.org/jira/browse/HDFS-12318) | Fix IOException condition for openInfo in DFSInputStream |  Major | . | legend | legend |
| [YARN-7370](https://issues.apache.org/jira/browse/YARN-7370) | Preemption properties should be refreshable |  Major | capacity scheduler, scheduler preemption | Eric Payne | Gergely Novák |
| [YARN-7428](https://issues.apache.org/jira/browse/YARN-7428) | Add containerId to Localizer failed logs |  Minor | nodemanager | Prabhu Joseph | Prabhu Joseph |
| [HDFS-12783](https://issues.apache.org/jira/browse/HDFS-12783) | [branch-2] "dfsrouter" should use hdfsScript |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-12788](https://issues.apache.org/jira/browse/HDFS-12788) | Reset the upload button when file upload fails |  Critical | ui, webhdfs | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-6078](https://issues.apache.org/jira/browse/YARN-6078) | Containers stuck in Localizing state |  Major | . | Jagadish | Billie Rinaldi |
| [YARN-7469](https://issues.apache.org/jira/browse/YARN-7469) | Capacity Scheduler Intra-queue preemption: User can starve if newest app is exactly at user limit |  Major | capacity scheduler, yarn | Eric Payne | Eric Payne |
| [HADOOP-14982](https://issues.apache.org/jira/browse/HADOOP-14982) | Clients using FailoverOnNetworkExceptionRetry can go into a loop if they're used without authenticating with kerberos in HA env |  Major | common | Peter Bacsko | Peter Bacsko |
| [YARN-7489](https://issues.apache.org/jira/browse/YARN-7489) | ConcurrentModificationException in RMAppImpl#getRMAppMetrics |  Major | capacityscheduler | Tao Yang | Tao Yang |
| [YARN-7525](https://issues.apache.org/jira/browse/YARN-7525) | Incorrect query parameters in cluster nodes REST API document |  Minor | documentation | Tao Yang | Tao Yang |
| [HDFS-12813](https://issues.apache.org/jira/browse/HDFS-12813) | RequestHedgingProxyProvider can hide Exception thrown from the Namenode for proxy size of 1 |  Major | ha | Mukul Kumar Singh | Mukul Kumar Singh |
| [HADOOP-15045](https://issues.apache.org/jira/browse/HADOOP-15045) | ISA-L build options are documented in branch-2 |  Major | build, documentation | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15067](https://issues.apache.org/jira/browse/HADOOP-15067) | GC time percentage reported in JvmMetrics should be a gauge, not counter |  Major | . | Misha Dmitriev | Misha Dmitriev |
| [YARN-7363](https://issues.apache.org/jira/browse/YARN-7363) | ContainerLocalizer doesn't have a valid log4j config when using LinuxContainerExecutor |  Major | nodemanager | Yufei Gu | Yufei Gu |
| [HDFS-12754](https://issues.apache.org/jira/browse/HDFS-12754) | Lease renewal can hit a deadlock |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [HDFS-12832](https://issues.apache.org/jira/browse/HDFS-12832) | INode.getFullPathName may throw ArrayIndexOutOfBoundsException lead to NameNode exit |  Critical | namenode | DENG FEI | Konstantin Shvachko |
| [HDFS-11754](https://issues.apache.org/jira/browse/HDFS-11754) | Make FsServerDefaults cache configurable. |  Minor | . | Rushabh S Shah | Mikhail Erofeev |
| [HADOOP-15042](https://issues.apache.org/jira/browse/HADOOP-15042) | Azure PageBlobInputStream.skip() can return negative value when numberOfPagesRemaining is 0 |  Minor | fs/azure | Rajesh Balamohan | Rajesh Balamohan |
| [HDFS-12638](https://issues.apache.org/jira/browse/HDFS-12638) | Delete copy-on-truncate block along with the original block, when deleting a file being truncated |  Blocker | hdfs | Jiandan Yang | Konstantin Shvachko |
| [YARN-4813](https://issues.apache.org/jira/browse/YARN-4813) | TestRMWebServicesDelegationTokenAuthentication.testDoAs fails intermittently |  Major | resourcemanager | Daniel Templeton | Gergo Repas |
| [MAPREDUCE-5124](https://issues.apache.org/jira/browse/MAPREDUCE-5124) | AM lacks flow control for task events |  Major | mr-am | Jason Lowe | Peter Bacsko |
| [YARN-7455](https://issues.apache.org/jira/browse/YARN-7455) | quote\_and\_append\_arg can overflow buffer |  Major | nodemanager | Jason Lowe | Jim Brennan |
| [YARN-5594](https://issues.apache.org/jira/browse/YARN-5594) | Handle old RMDelegationToken format when recovering RM |  Major | resourcemanager | Tatyana But | Robert Kanter |
| [HADOOP-14985](https://issues.apache.org/jira/browse/HADOOP-14985) | Remove subversion related code from VersionInfoMojo.java |  Minor | build | Akira Ajisaka | Ajay Kumar |
| [HDFS-11751](https://issues.apache.org/jira/browse/HDFS-11751) | DFSZKFailoverController daemon exits with wrong status code |  Major | auto-failover | Doris Gu | Bharat Viswanadham |
| [HDFS-12889](https://issues.apache.org/jira/browse/HDFS-12889) | Router UI is missing robots.txt file |  Major | . | Bharat Viswanadham | Bharat Viswanadham |
| [YARN-7607](https://issues.apache.org/jira/browse/YARN-7607) | Remove the trailing duplicated timestamp in container diagnostics message |  Minor | nodemanager | Weiwei Yang | Weiwei Yang |
| [HADOOP-15080](https://issues.apache.org/jira/browse/HADOOP-15080) | Aliyun OSS: update oss sdk from 2.8.1 to 2.8.3 to remove its dependency on Cat-x "json-lib" |  Blocker | fs/oss | Chris Douglas | SammiChen |
| [YARN-7608](https://issues.apache.org/jira/browse/YARN-7608) | Incorrect sTarget column causing DataTable warning on RM application and scheduler web page |  Major | resourcemanager, webapp | Weiwei Yang | Gergely Novák |
| [HDFS-12833](https://issues.apache.org/jira/browse/HDFS-12833) | Distcp : Update the usage of delete option for dependency with update and overwrite option |  Minor | distcp, hdfs | Harshakiran Reddy | usharani |
| [YARN-7647](https://issues.apache.org/jira/browse/YARN-7647) | NM print inappropriate error log when node-labels is enabled |  Minor | . | Yang Wang | Yang Wang |
| [HDFS-12907](https://issues.apache.org/jira/browse/HDFS-12907) | Allow read-only access to reserved raw for non-superusers |  Major | namenode | Daryn Sharp | Rushabh S Shah |
| [HDFS-12881](https://issues.apache.org/jira/browse/HDFS-12881) | Output streams closed with IOUtils suppressing write errors |  Major | . | Jason Lowe | Ajay Kumar |
| [YARN-7595](https://issues.apache.org/jira/browse/YARN-7595) | Container launching code suppresses close exceptions after writes |  Major | nodemanager | Jason Lowe | Jim Brennan |
| [HADOOP-15085](https://issues.apache.org/jira/browse/HADOOP-15085) | Output streams closed with IOUtils suppressing write errors |  Major | . | Jason Lowe | Jim Brennan |
| [HADOOP-15123](https://issues.apache.org/jira/browse/HADOOP-15123) | KDiag tries to load krb5.conf from KRB5CCNAME instead of KRB5\_CONFIG |  Minor | security | Vipin Rathor | Vipin Rathor |
| [YARN-7661](https://issues.apache.org/jira/browse/YARN-7661) | NodeManager metrics return wrong value after update node resource |  Major | . | Yang Wang | Yang Wang |
| [HDFS-12347](https://issues.apache.org/jira/browse/HDFS-12347) | TestBalancerRPCDelay#testBalancerRPCDelay fails very frequently |  Critical | test | Xiao Chen | Bharat Viswanadham |
| [YARN-7662](https://issues.apache.org/jira/browse/YARN-7662) | [Atsv2] Define new set of configurations for reader and collectors to bind. |  Major | . | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-7674](https://issues.apache.org/jira/browse/YARN-7674) | Update Timeline Reader web app address in UI2 |  Major | . | Rohith Sharma K S | Sunil G |
| [HADOOP-15143](https://issues.apache.org/jira/browse/HADOOP-15143) | NPE due to Invalid KerberosTicket in UGI |  Major | . | Jitendra Nath Pandey | Mukul Kumar Singh |
| [YARN-7692](https://issues.apache.org/jira/browse/YARN-7692) | Skip validating priority acls while recovering applications |  Blocker | resourcemanager | Charan Hebri | Sunil G |
| [MAPREDUCE-7028](https://issues.apache.org/jira/browse/MAPREDUCE-7028) | Concurrent task progress updates causing NPE in Application Master |  Blocker | mr-am | Gergo Repas | Gergo Repas |
| [YARN-7619](https://issues.apache.org/jira/browse/YARN-7619) | Max AM Resource value in Capacity Scheduler UI has to be refreshed for every user |  Major | capacity scheduler, yarn | Eric Payne | Eric Payne |
| [YARN-7699](https://issues.apache.org/jira/browse/YARN-7699) | queueUsagePercentage is coming as INF for getApp REST api call |  Major | webapp | Sunil G | Sunil G |
| [HDFS-12985](https://issues.apache.org/jira/browse/HDFS-12985) | NameNode crashes during restart after an OpenForWrite file present in the Snapshot got deleted |  Major | hdfs | Manoj Govindassamy | Manoj Govindassamy |
| [YARN-4227](https://issues.apache.org/jira/browse/YARN-4227) | Ignore expired containers from removed nodes in FairScheduler |  Critical | fairscheduler | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-7508](https://issues.apache.org/jira/browse/YARN-7508) | NPE in FiCaSchedulerApp when debug log enabled in async-scheduling mode |  Major | capacityscheduler | Tao Yang | Tao Yang |
| [YARN-7663](https://issues.apache.org/jira/browse/YARN-7663) | RMAppImpl:Invalid event: START at KILLED |  Minor | resourcemanager | lujie | lujie |
| [YARN-6948](https://issues.apache.org/jira/browse/YARN-6948) | Invalid event: ATTEMPT\_ADDED at FINAL\_SAVING |  Minor | yarn | lujie | lujie |
| [HADOOP-15060](https://issues.apache.org/jira/browse/HADOOP-15060) | TestShellBasedUnixGroupsMapping.testFiniteGroupResolutionTime flaky |  Major | . | Miklos Szegedi | Miklos Szegedi |
| [YARN-7735](https://issues.apache.org/jira/browse/YARN-7735) | Fix typo in YARN documentation |  Minor | documentation | Takanobu Asanuma | Takanobu Asanuma |
| [YARN-7727](https://issues.apache.org/jira/browse/YARN-7727) | Incorrect log levels in few logs with QueuePriorityContainerCandidateSelector |  Minor | yarn | Prabhu Joseph | Prabhu Joseph |
| [YARN-7705](https://issues.apache.org/jira/browse/YARN-7705) | Create the container log directory with correct sticky bit in C code |  Major | nodemanager | Yufei Gu | Yufei Gu |
| [HDFS-8693](https://issues.apache.org/jira/browse/HDFS-8693) | refreshNamenodes does not support adding a new standby to a running DN |  Critical | datanode, ha | Jian Fang | Ajith S |
| [HDFS-9049](https://issues.apache.org/jira/browse/HDFS-9049) | Make Datanode Netty reverse proxy port to be configurable |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [YARN-7758](https://issues.apache.org/jira/browse/YARN-7758) | Add an additional check to the validity of container and application ids passed to container-executor |  Major | nodemanager | Miklos Szegedi | Yufei Gu |
| [HADOOP-15150](https://issues.apache.org/jira/browse/HADOOP-15150) | in FsShell, UGI params should be overidden through env vars(-D arg) |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-15181](https://issues.apache.org/jira/browse/HADOOP-15181) | Typo in SecureMode.md |  Trivial | documentation | Masahiro Tanaka | Masahiro Tanaka |
| [YARN-7806](https://issues.apache.org/jira/browse/YARN-7806) | Distributed Shell should use timeline async api's |  Major | distributed-shell | Rohith Sharma K S | Rohith Sharma K S |
| [MAPREDUCE-7015](https://issues.apache.org/jira/browse/MAPREDUCE-7015) | Possible race condition in JHS if the job is not loaded |  Major | jobhistoryserver | Peter Bacsko | Peter Bacsko |
| [YARN-7737](https://issues.apache.org/jira/browse/YARN-7737) | prelaunch.err file not found exception on container failure |  Major | . | Jonathan Hung | Keqiu Hu |
| [HDFS-13063](https://issues.apache.org/jira/browse/HDFS-13063) | Fix the incorrect spelling in HDFSHighAvailabilityWithQJM.md |  Trivial | documentation | Jianfei Jiang | Jianfei Jiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14997](https://issues.apache.org/jira/browse/HADOOP-14997) |  Add hadoop-aliyun as dependency of hadoop-cloud-storage |  Minor | fs/oss | Genmao Yu | Genmao Yu |
| [HDFS-12801](https://issues.apache.org/jira/browse/HDFS-12801) | RBF: Set MountTableResolver as default file resolver |  Minor | . | Íñigo Goiri | Íñigo Goiri |
| [YARN-7430](https://issues.apache.org/jira/browse/YARN-7430) | Enable user re-mapping for Docker containers by default |  Blocker | security, yarn | Eric Yang | Eric Yang |
| [HADOOP-15024](https://issues.apache.org/jira/browse/HADOOP-15024) | AliyunOSS: support user agent configuration and include that & Hadoop version information to oss server |  Major | fs, fs/oss | SammiChen | SammiChen |
| [HDFS-12858](https://issues.apache.org/jira/browse/HDFS-12858) | RBF: Add router admin commands usage in HDFS commands reference doc |  Minor | documentation | Yiqun Lin | Yiqun Lin |
| [HDFS-12835](https://issues.apache.org/jira/browse/HDFS-12835) | RBF: Fix Javadoc parameter errors |  Minor | . | Wei Yan | Wei Yan |
| [HDFS-12396](https://issues.apache.org/jira/browse/HDFS-12396) | Webhdfs file system should get delegation token from kms provider. |  Major | encryption, kms, webhdfs | Rushabh S Shah | Rushabh S Shah |
| [YARN-6704](https://issues.apache.org/jira/browse/YARN-6704) | Add support for work preserving NM restart when FederationInterceptor is enabled in AMRMProxyService |  Major | . | Botong Huang | Botong Huang |
| [HDFS-12875](https://issues.apache.org/jira/browse/HDFS-12875) | RBF: Complete logic for -readonly option of dfsrouteradmin add command |  Major | . | Yiqun Lin | Íñigo Goiri |
| [YARN-7630](https://issues.apache.org/jira/browse/YARN-7630) | Fix AMRMToken rollover handling in AMRMProxy |  Minor | . | Botong Huang | Botong Huang |
| [HDFS-12937](https://issues.apache.org/jira/browse/HDFS-12937) | RBF: Add more unit tests for router admin commands |  Major | test | Yiqun Lin | Yiqun Lin |
| [YARN-7032](https://issues.apache.org/jira/browse/YARN-7032) | [ATSv2] NPE while starting hbase co-processor when HBase authorization is enabled. |  Critical | . | Rohith Sharma K S | Rohith Sharma K S |
| [HDFS-12988](https://issues.apache.org/jira/browse/HDFS-12988) | RBF: Mount table entries not properly updated in the local cache |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-12802](https://issues.apache.org/jira/browse/HDFS-12802) | RBF: Control MountTableResolver cache size |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-12934](https://issues.apache.org/jira/browse/HDFS-12934) | RBF: Federation supports global quota |  Major | . | Yiqun Lin | Yiqun Lin |
| [HDFS-12972](https://issues.apache.org/jira/browse/HDFS-12972) | RBF: Display mount table quota info in Web UI and admin command |  Major | . | Yiqun Lin | Yiqun Lin |
| [YARN-6736](https://issues.apache.org/jira/browse/YARN-6736) | Consider writing to both ats v1 & v2 from RM for smoother upgrades |  Major | timelineserver | Vrushali C | Aaron Gresch |
| [HDFS-12973](https://issues.apache.org/jira/browse/HDFS-12973) | RBF: Document global quota supporting in federation |  Major | . | Yiqun Lin | Yiqun Lin |
| [HDFS-13028](https://issues.apache.org/jira/browse/HDFS-13028) | RBF: Fix spurious TestRouterRpc#testProxyGetStats |  Minor | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-12772](https://issues.apache.org/jira/browse/HDFS-12772) | RBF: Federation Router State State Store internal API |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-13042](https://issues.apache.org/jira/browse/HDFS-13042) | RBF: Heartbeat Router State |  Major | . | Íñigo Goiri | Íñigo Goiri |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15149](https://issues.apache.org/jira/browse/HADOOP-15149) | CryptoOutputStream should implement StreamCapabilities |  Major | fs | Mike Drob | Xiao Chen |
| [HADOOP-15177](https://issues.apache.org/jira/browse/HADOOP-15177) | Update the release year to 2018 |  Blocker | build | Akira Ajisaka | Bharat Viswanadham |


