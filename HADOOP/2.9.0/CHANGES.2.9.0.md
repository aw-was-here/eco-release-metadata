
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

## Release 2.9.0 - Unreleased (as of 2016-04-19)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12321](https://issues.apache.org/jira/browse/HADOOP-12321) | Make JvmPauseMonitor an AbstractService |  Major | . | Steve Loughran | Sunil G |
| [HADOOP-12702](https://issues.apache.org/jira/browse/HADOOP-12702) | Add an HDFS metrics sink |  Major | metrics | Daniel Templeton | Daniel Templeton |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9267](https://issues.apache.org/jira/browse/HDFS-9267) | TestDiskError should get stored replicas through FsDatasetTestUtils. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9491](https://issues.apache.org/jira/browse/HDFS-9491) | Tests should get the number of pending async delets via FsDatasetTestUtils |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-8947](https://issues.apache.org/jira/browse/HDFS-8947) | NameNode, DataNode and NFS gateway to support JvmPauseMonitor as a service |  Minor | datanode, namenode, nfs | Sunil G | Sunil G |
| [MAPREDUCE-6462](https://issues.apache.org/jira/browse/MAPREDUCE-6462) | JobHistoryServer to support JvmPauseMonitor as a service |  Minor | jobhistoryserver | Sunil G | Sunil G |
| [YARN-4072](https://issues.apache.org/jira/browse/YARN-4072) | ApplicationHistoryServer, WebAppProxyServer, NodeManager and ResourceManager to support JvmPauseMonitor as a service |  Minor | nodemanager, resourcemanager | Sunil G | Sunil G |
| [HADOOP-12625](https://issues.apache.org/jira/browse/HADOOP-12625) | Add a config to disable the /logs endpoints |  Major | security | Robert Kanter | Robert Kanter |
| [YARN-4341](https://issues.apache.org/jira/browse/YARN-4341) | add doc about timeline performance tool usage |  Major | . | Chang Li | Chang Li |
| [HDFS-9281](https://issues.apache.org/jira/browse/HDFS-9281) | Change TestDeleteBlockPool to not explicitly use File to check block pool existence. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8477](https://issues.apache.org/jira/browse/HDFS-8477) | describe dfs.ha.zkfc.port in hdfs-default.xml |  Minor | . | Kanaka Kumar Avvaru | Kanaka Kumar Avvaru |
| [HDFS-9350](https://issues.apache.org/jira/browse/HDFS-9350) | Avoid creating temprorary strings in Block.toString() and getBlockName() |  Minor | performance | Staffan Friberg | Staffan Friberg |
| [HADOOP-12566](https://issues.apache.org/jira/browse/HADOOP-12566) | Add NullGroupMapping |  Major | . | Daniel Templeton | Daniel Templeton |
| [YARN-2934](https://issues.apache.org/jira/browse/YARN-2934) | Improve handling of container's stderr |  Critical | . | Gera Shegalov | Naganarasimha G R |
| [HADOOP-12663](https://issues.apache.org/jira/browse/HADOOP-12663) | Remove Hard-Coded Values From FileSystem.java |  Trivial | fs | BELUGA BEHR | BELUGA BEHR |
| [YARN-4438](https://issues.apache.org/jira/browse/YARN-4438) | Implement RM leader election with curator |  Major | . | Jian He | Jian He |
| [HADOOP-12683](https://issues.apache.org/jira/browse/HADOOP-12683) | Add number of samples in last interval in snapshot of MutableStat |  Minor | metrics | Vikram Srivastava | Vikram Srivastava |
| [HADOOP-8887](https://issues.apache.org/jira/browse/HADOOP-8887) | Use a Maven plugin to build the native code using CMake |  Minor | build | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-12713](https://issues.apache.org/jira/browse/HADOOP-12713) | Disable spurious checkstyle checks |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-12662](https://issues.apache.org/jira/browse/HADOOP-12662) | The build should fail if a -Dbundle option fails |  Minor | . | Kai Zheng | Kai Zheng |
| [HDFS-9576](https://issues.apache.org/jira/browse/HDFS-9576) | HTrace: collect position/length information on read operations |  Major | hdfs-client, tracing | Zhe Zhang | Zhe Zhang |
| [YARN-4603](https://issues.apache.org/jira/browse/YARN-4603) | FairScheduler should mention user requested queuename in error message when failed in queue ACL check |  Trivial | fairscheduler | Tao Jie | Tao Jie |
| [HDFS-9674](https://issues.apache.org/jira/browse/HDFS-9674) | The HTrace span for OpWriteBlock should record the maxWriteToDisk time |  Major | datanode, tracing | Colin Patrick McCabe | Colin Patrick McCabe |
| [YARN-4496](https://issues.apache.org/jira/browse/YARN-4496) | Improve HA ResourceManager Failover detection on the client |  Major | client, resourcemanager | Arun Suresh | Jian He |
| [YARN-3542](https://issues.apache.org/jira/browse/YARN-3542) | Re-factor support for CPU as a resource using the new ResourceHandler mechanism |  Critical | nodemanager | Sidharta Seethana | Varun Vasudev |
| [HDFS-9541](https://issues.apache.org/jira/browse/HDFS-9541) | Add hdfsStreamBuilder API to libhdfs to support defaultBlockSizes greater than 2 GB |  Major | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [YARN-4462](https://issues.apache.org/jira/browse/YARN-4462) | FairScheduler: Disallow preemption from a queue |  Major | fairscheduler | Tao Jie | Tao Jie |
| [HDFS-9677](https://issues.apache.org/jira/browse/HDFS-9677) | Rename generationStampV1/generationStampV2 to legacyGenerationStamp/generationStamp |  Minor | namenode | Jing Zhao | Mingliang Liu |
| [MAPREDUCE-6431](https://issues.apache.org/jira/browse/MAPREDUCE-6431) | JobClient should be an AutoClosable |  Major | . | André Kelpe | Haibo Chen |
| [HDFS-7764](https://issues.apache.org/jira/browse/HDFS-7764) | DirectoryScanner shouldn't abort the scan if one directory had an error |  Major | datanode | Rakesh R | Rakesh R |
| [YARN-4647](https://issues.apache.org/jira/browse/YARN-4647) | Make RegisterNodeManagerRequestPBImpl thread-safe |  Major | nodemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-4649](https://issues.apache.org/jira/browse/YARN-4649) | Add additional logging to some NM state store operations |  Minor | . | Sidharta Seethana | Sidharta Seethana |
| [HADOOP-12759](https://issues.apache.org/jira/browse/HADOOP-12759) | RollingFileSystemSink should eagerly rotate directories |  Critical | . | Daniel Templeton | Daniel Templeton |
| [YARN-4628](https://issues.apache.org/jira/browse/YARN-4628) | Display application priority in yarn top |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4655](https://issues.apache.org/jira/browse/YARN-4655) | Log uncaught exceptions/errors in various thread pools in YARN |  Major | . | Sidharta Seethana | Sidharta Seethana |
| [HDFS-9637](https://issues.apache.org/jira/browse/HDFS-9637) | Tests for RollingFileSystemSink |  Major | test | Daniel Templeton | Daniel Templeton |
| [YARN-4569](https://issues.apache.org/jira/browse/YARN-4569) | Remove incorrect part of maxResources in FairScheduler documentation |  Major | documentation | Ray Chiang | Ray Chiang |
| [YARN-4690](https://issues.apache.org/jira/browse/YARN-4690) | Skip object allocation in FSAppAttempt#getResourceUsage when possible |  Major | . | Ming Ma | Ming Ma |
| [MAPREDUCE-6634](https://issues.apache.org/jira/browse/MAPREDUCE-6634) | Log uncaught exceptions/errors in various thread pools in mapreduce |  Major | . | Sidharta Seethana | Sidharta Seethana |
| [HADOOP-12817](https://issues.apache.org/jira/browse/HADOOP-12817) | Enable TLS v1.1 and 1.2 |  Major | security | Robert Kanter | Robert Kanter |
| [MAPREDUCE-6627](https://issues.apache.org/jira/browse/MAPREDUCE-6627) | Add machine-readable output to mapred job -history command |  Major | client | Robert Kanter | Robert Kanter |
| [YARN-4708](https://issues.apache.org/jira/browse/YARN-4708) | Missing default mapper type in TimelineServer performance test tool usage |  Minor | timelineserver | Kai Sasaki | Kai Sasaki |
| [HADOOP-12829](https://issues.apache.org/jira/browse/HADOOP-12829) | StatisticsDataReferenceCleaner swallows interrupt exceptions |  Minor | fs | Gregory Chanan | Gregory Chanan |
| [MAPREDUCE-6640](https://issues.apache.org/jira/browse/MAPREDUCE-6640) | mapred job -history command should be able to take Job ID |  Major | client | Robert Kanter | Robert Kanter |
| [YARN-4697](https://issues.apache.org/jira/browse/YARN-4697) | NM aggregation thread pool is not bound by limits |  Major | nodemanager | Haibo Chen | Haibo Chen |
| [YARN-4579](https://issues.apache.org/jira/browse/YARN-4579) | Allow DefaultContainerExecutor container log directory permissions to be configurable |  Major | yarn | Ray Chiang | Ray Chiang |
| [YARN-4720](https://issues.apache.org/jira/browse/YARN-4720) | Skip unnecessary NN operations in log aggregation |  Major | . | Ming Ma | Jun Gong |
| [HADOOP-12841](https://issues.apache.org/jira/browse/HADOOP-12841) | Update s3-related properties in core-default.xml |  Minor | fs/s3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [MAPREDUCE-6622](https://issues.apache.org/jira/browse/MAPREDUCE-6622) | Add capability to set JHS job cache to a task-based limit |  Critical | jobhistoryserver | Ray Chiang | Ray Chiang |
| [YARN-4718](https://issues.apache.org/jira/browse/YARN-4718) | Rename variables in SchedulerNode to reduce ambiguity post YARN-1011 |  Major | scheduler | Karthik Kambatla | Inigo Goiri |
| [HADOOP-12859](https://issues.apache.org/jira/browse/HADOOP-12859) | Disable hiding field style checks in class setters |  Major | . | Kai Zheng | Kai Zheng |
| [HDFS-9534](https://issues.apache.org/jira/browse/HDFS-9534) | Add CLI command to clear storage policy from a path. |  Major | tools | Chris Nauroth | Xiaobing Zhou |
| [HDFS-9521](https://issues.apache.org/jira/browse/HDFS-9521) | TransferFsImage.receiveFile should account and log separate times for image download and fsync to disk |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HADOOP-11404](https://issues.apache.org/jira/browse/HADOOP-11404) | Clarify the "expected client Kerberos principal is null" authorization message |  Minor | security | Stephen Chu | Stephen Chu |
| [YARN-4719](https://issues.apache.org/jira/browse/YARN-4719) | Add a helper library to maintain node state and allows common queries |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [HDFS-9928](https://issues.apache.org/jira/browse/HDFS-9928) | Make HDFS commands guide up to date |  Major | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-4560](https://issues.apache.org/jira/browse/YARN-4560) | Make scheduler error checking message more user friendly |  Trivial | yarn | Ray Chiang | Ray Chiang |
| [HDFS-9579](https://issues.apache.org/jira/browse/HDFS-9579) | Provide bytes-read-by-network-distance metrics at FileSystem.Statistics level |  Major | . | Ming Ma | Ming Ma |
| [YARN-4732](https://issues.apache.org/jira/browse/YARN-4732) | \*ProcessTree classes have too many whitespace issues |  Trivial | . | Karthik Kambatla | Gabor Liptak |
| [HADOOP-12952](https://issues.apache.org/jira/browse/HADOOP-12952) | /BUILDING example of zero-docs dist should skip javadocs |  Trivial | build, documentation | Steve Loughran | Steve Loughran |
| [YARN-4436](https://issues.apache.org/jira/browse/YARN-4436) | DistShell ApplicationMaster.ExecBatScripStringtPath is misspelled |  Trivial | applications/distributed-shell | Daniel Templeton | Matt LaMantia |
| [YARN-4884](https://issues.apache.org/jira/browse/YARN-4884) | Fix missing documentation about rmadmin command regarding node labels |  Minor | . | Kai Sasaki | Kai Sasaki |
| [YARN-4811](https://issues.apache.org/jira/browse/YARN-4811) | Generate histograms in ContainerMetrics for actual container resource usage |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-4607](https://issues.apache.org/jira/browse/YARN-4607) | Pagination support for AppAttempt page TotalOutstandingResource Requests table |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4769](https://issues.apache.org/jira/browse/YARN-4769) | Add support for CSRF header in the dump capacity scheduler logs and kill app buttons in RM web UI |  Major | . | Varun Vasudev | Varun Vasudev |
| [HADOOP-12984](https://issues.apache.org/jira/browse/HADOOP-12984) | Add GenericTestUtils.getTestDir method and use it for temporary directory in tests |  Major | build, test | Steve Loughran | Steve Loughran |
| [YARN-4541](https://issues.apache.org/jira/browse/YARN-4541) | Change log message in LocalizedResource#handle() to DEBUG |  Minor | . | Ray Chiang | Ray Chiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4109](https://issues.apache.org/jira/browse/YARN-4109) | Exception on RM scheduler page loading with labels |  Minor | . | Bibin A Chundatt | Mohammad Shahid Khan |
| [YARN-4156](https://issues.apache.org/jira/browse/YARN-4156) | TestAMRestart#testAMBlacklistPreventsRestartOnSameNode assumes CapacityScheduler |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-4417](https://issues.apache.org/jira/browse/YARN-4417) | Make RM and Timeline-server REST APIs more consistent |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-4522](https://issues.apache.org/jira/browse/YARN-4522) | Queue acl can be checked at app submission |  Major | . | Jian He | Jian He |
| [YARN-4530](https://issues.apache.org/jira/browse/YARN-4530) | LocalizedResource trigger a NPE Cause the NodeManager exit |  Major | . | tangshangwen | tangshangwen |
| [MAPREDUCE-6577](https://issues.apache.org/jira/browse/MAPREDUCE-6577) | MR AM unable to load native library without MR\_AM\_ADMIN\_USER\_ENV set |  Critical | mr-am | Sangjin Lee | Sangjin Lee |
| [HADOOP-12655](https://issues.apache.org/jira/browse/HADOOP-12655) | TestHttpServer.testBindAddress bind port range is wider than expected |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12573](https://issues.apache.org/jira/browse/HADOOP-12573) | TestRPC.testClientBackOff failing |  Major | test | Steve Loughran | Xiao Chen |
| [YARN-4567](https://issues.apache.org/jira/browse/YARN-4567) | javadoc failing on java 8 |  Blocker | build | Steve Loughran | Steve Loughran |
| [HADOOP-12653](https://issues.apache.org/jira/browse/HADOOP-12653) | Use SO\_REUSEADDR to avoid getting "Address already in use" when using kerberos and attempting to bind to any port on the local IP address |  Major | net | Colin Patrick McCabe | Colin Patrick McCabe |
| [YARN-4571](https://issues.apache.org/jira/browse/YARN-4571) | Make app id/name available to the yarn authorizer provider for better auditing |  Major | . | Jian He | Jian He |
| [YARN-4551](https://issues.apache.org/jira/browse/YARN-4551) | Address the duplication between StatusUpdateWhenHealthy and StatusUpdateWhenUnhealthy transitions |  Minor | nodemanager | Karthik Kambatla | Sunil G |
| [HDFS-9517](https://issues.apache.org/jira/browse/HDFS-9517) | Fix missing @Test annotation on TestDistCpUtils.testUnpackAttributes |  Trivial | distcp | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-3446](https://issues.apache.org/jira/browse/YARN-3446) | FairScheduler headroom calculation should exclude nodes in the blacklist |  Major | fairscheduler | zhihai xu | zhihai xu |
| [HDFS-9624](https://issues.apache.org/jira/browse/HDFS-9624) | DataNode start slowly due to the initial DU command operations |  Major | . | Lin Yiqun | Lin Yiqun |
| [HADOOP-12712](https://issues.apache.org/jira/browse/HADOOP-12712) | Fix some cmake plugin and native build warnings |  Minor | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [YARN-4559](https://issues.apache.org/jira/browse/YARN-4559) | Make leader elector and zk store share the same curator client |  Major | . | Jian He | Jian He |
| [YARN-4611](https://issues.apache.org/jira/browse/YARN-4611) | Fix scheduler load simulator to support multi-layer network location |  Major | . | Ming Ma | Ming Ma |
| [HADOOP-12605](https://issues.apache.org/jira/browse/HADOOP-12605) | Fix intermittent failure of TestIPC.testIpcWithReaderQueuing |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-4584](https://issues.apache.org/jira/browse/YARN-4584) | RM startup failure when AM attempts greater than max-attempts |  Critical | . | Bibin A Chundatt | Bibin A Chundatt |
| [HDFS-9618](https://issues.apache.org/jira/browse/HDFS-9618) | Fix mismatch between log level and guard in BlockManager#computeRecoveryWorkForBlocks |  Minor | namenode | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-4497](https://issues.apache.org/jira/browse/YARN-4497) | RM might fail to restart when recovering apps whose attempts are missing |  Critical | . | Jun Gong | Jun Gong |
| [YARN-4612](https://issues.apache.org/jira/browse/YARN-4612) | Fix rumen and scheduler load simulator handle killed tasks properly |  Major | . | Ming Ma | Ming Ma |
| [MAPREDUCE-6620](https://issues.apache.org/jira/browse/MAPREDUCE-6620) | Jobs that did not start are shown as starting in 1969 in the JHS web UI |  Major | jobhistoryserver | Daniel Templeton | Haibo Chen |
| [YARN-4625](https://issues.apache.org/jira/browse/YARN-4625) | Make ApplicationSubmissionContext and ApplicationSubmissionContextInfo more consistent |  Major | . | Xuan Gong | Xuan Gong |
| [HADOOP-12761](https://issues.apache.org/jira/browse/HADOOP-12761) | incremental maven build is not really incremental |  Minor | build | Sangjin Lee | Sangjin Lee |
| [YARN-4594](https://issues.apache.org/jira/browse/YARN-4594) | container-executor fails to remove directory tree when chmod required |  Major | nodemanager | Colin Patrick McCabe | Colin Patrick McCabe |
| [YARN-4307](https://issues.apache.org/jira/browse/YARN-4307) | Display blacklisted nodes for AM container in the RM web UI |  Major | resourcemanager, webapp | Naganarasimha G R | Naganarasimha G R |
| [YARN-4669](https://issues.apache.org/jira/browse/YARN-4669) | Fix logging statements in resource manager's Application class |  Trivial | . | Sidharta Seethana | Sidharta Seethana |
| [HADOOP-12773](https://issues.apache.org/jira/browse/HADOOP-12773) | HBase classes fail to load with client/job classloader enabled |  Major | util | Sangjin Lee | Sangjin Lee |
| [YARN-4629](https://issues.apache.org/jira/browse/YARN-4629) | Distributed shell breaks under strong security |  Major | applications/distributed-shell, security | Daniel Templeton | Daniel Templeton |
| [HDFS-9691](https://issues.apache.org/jira/browse/HDFS-9691) | TestBlockManagerSafeMode#testCheckSafeMode fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [HDFS-9608](https://issues.apache.org/jira/browse/HDFS-9608) | Disk IO imbalance in HDFS with heterogeneous storages |  Major | . | Wei Zhou | Wei Zhou |
| [YARN-4689](https://issues.apache.org/jira/browse/YARN-4689) | FairScheduler: Cleanup preemptContainer to be more readable |  Trivial | fairscheduler | Karthik Kambatla | Kai Sasaki |
| [YARN-4651](https://issues.apache.org/jira/browse/YARN-4651) | movetoqueue option does not documented in 'YARN Commands' |  Major | documentation | Takashi Ohnishi | Takashi Ohnishi |
| [YARN-4648](https://issues.apache.org/jira/browse/YARN-4648) | Move preemption related tests from TestFairScheduler to TestFairSchedulerPreemption |  Major | fairscheduler | Karthik Kambatla | Kai Sasaki |
| [YARN-4722](https://issues.apache.org/jira/browse/YARN-4722) | AsyncDispatcher logs redundant event queue sizes |  Major | . | Jason Lowe | Jason Lowe |
| [YARN-4729](https://issues.apache.org/jira/browse/YARN-4729) | SchedulerApplicationAttempt#getTotalRequiredResources can throw an NPE |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-4701](https://issues.apache.org/jira/browse/YARN-4701) | When task logs are not available, port 8041 is referenced instead of port 8042 |  Major | yarn | Haibo Chen | Haibo Chen |
| [HDFS-9858](https://issues.apache.org/jira/browse/HDFS-9858) | RollingFileSystemSink can throw an NPE on non-secure clusters |  Major | . | Daniel Templeton | Daniel Templeton |
| [HDFS-9855](https://issues.apache.org/jira/browse/HDFS-9855) | Modify TestAuditLoggerWithCommands to workaround the absence of HDFS-8332 |  Major | test | Kuhu Shukla | Kuhu Shukla |
| [YARN-4731](https://issues.apache.org/jira/browse/YARN-4731) | container-executor should not follow symlinks in recursive\_unlink\_children |  Blocker | . | Bibin A Chundatt | Colin Patrick McCabe |
| [HADOOP-10321](https://issues.apache.org/jira/browse/HADOOP-10321) | TestCompositeService should cover all enumerations of adding a service to a parent service |  Major | . | Karthik Kambatla | Ray Chiang |
| [YARN-4763](https://issues.apache.org/jira/browse/YARN-4763) | RMApps Page crashes with NPE |  Major | webapp | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4737](https://issues.apache.org/jira/browse/YARN-4737) | Add CSRF filter support in YARN |  Major | nodemanager, resourcemanager, webapp | Jonathan Maron | Jonathan Maron |
| [YARN-4762](https://issues.apache.org/jira/browse/YARN-4762) | NMs failing on DelegatingLinuxContainerRuntime init with LCE on |  Blocker | . | Vinod Kumar Vavilapalli | Sidharta Seethana |
| [YARN-4764](https://issues.apache.org/jira/browse/YARN-4764) | Application submission fails when submitted queue is not available in scheduler xml |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [HADOOP-12895](https://issues.apache.org/jira/browse/HADOOP-12895) | SSLFactory#createSSLSocketFactory exception message is wrong |  Trivial | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12906](https://issues.apache.org/jira/browse/HADOOP-12906) | AuthenticatedURL should convert a 404/Not Found into an FileNotFoundException. |  Minor | io, security | Steve Loughran | Steve Loughran |
| [HDFS-9947](https://issues.apache.org/jira/browse/HDFS-9947) | Block#toString should not output information from derived classes |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [YARN-4816](https://issues.apache.org/jira/browse/YARN-4816) | SystemClock API broken in 2.9.0 |  Major | . | Siddharth Seth | Siddharth Seth |
| [YARN-4717](https://issues.apache.org/jira/browse/YARN-4717) | TestResourceLocalizationService.testPublicResourceInitializesLocalDir fails Intermittently due to IllegalArgumentException from cleanup |  Minor | nodemanager | Daniel Templeton | Daniel Templeton |
| [HDFS-9780](https://issues.apache.org/jira/browse/HDFS-9780) | RollingFileSystemSink doesn't work on secure clusters |  Critical | . | Daniel Templeton | Daniel Templeton |
| [HADOOP-12888](https://issues.apache.org/jira/browse/HADOOP-12888) | Shell to disable bash and setsid support when running under JVM security manager |  Major | security | Costin Leau | Costin Leau |
| [YARN-4593](https://issues.apache.org/jira/browse/YARN-4593) | Deadlock in AbstractService.getConfig() |  Major | yarn | Steve Loughran | Steve Loughran |
| [HDFS-10173](https://issues.apache.org/jira/browse/HDFS-10173) | Typo in DataXceiverServer |  Trivial | datanode | Michael Han | Michael Han |
| [YARN-4812](https://issues.apache.org/jira/browse/YARN-4812) | TestFairScheduler#testContinuousScheduling fails intermittently |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-6110](https://issues.apache.org/jira/browse/MAPREDUCE-6110) | JobHistoryServer CLI throws NullPointerException with job ids that do not exist |  Minor | jobhistoryserver | Li Lu | Kai Sasaki |
| [MAPREDUCE-6535](https://issues.apache.org/jira/browse/MAPREDUCE-6535) | TaskID default constructor results in NPE on toString() |  Major | mrv2 | Daniel Templeton | Daniel Templeton |
| [MAPREDUCE-6655](https://issues.apache.org/jira/browse/MAPREDUCE-6655) | Fix a typo (STRICT\_IE6) in Encrypted Shuffle |  Trivial | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12954](https://issues.apache.org/jira/browse/HADOOP-12954) | Add a way to change hadoop.security.token.service.use\_ip |  Major | security | Robert Kanter | Robert Kanter |
| [MAPREDUCE-6662](https://issues.apache.org/jira/browse/MAPREDUCE-6662) | Clear ASF Warnings on test data files |  Minor | . | Vinayakumar B | Vinayakumar B |
| [YARN-4865](https://issues.apache.org/jira/browse/YARN-4865) | Track Reserved resources in ResourceUsage and QueueCapacities |  Major | resourcemanager | Sunil G | Sunil G |
| [YARN-4183](https://issues.apache.org/jira/browse/YARN-4183) | Clarify the behavior of timeline service config properties |  Major | . | Mit Desai | Naganarasimha G R |
| [YARN-4657](https://issues.apache.org/jira/browse/YARN-4657) | Javadoc comment is broken for Resources.multiplyByAndAddTo() |  Trivial | . | Daniel Templeton | Daniel Templeton |
| [YARN-4706](https://issues.apache.org/jira/browse/YARN-4706) | UI Hosting Configuration in TimelineServer doc is broken |  Critical | documentation | Akira AJISAKA | Akira AJISAKA |
| [YARN-4880](https://issues.apache.org/jira/browse/YARN-4880) | Running TestZKRMStateStorePerf with real zookeeper cluster throws NPE |  Major | . | Rohith Sharma K S | Sunil G |
| [YARN-4609](https://issues.apache.org/jira/browse/YARN-4609) | RM Nodes list page takes too much time to load |  Major | webapp | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4916](https://issues.apache.org/jira/browse/YARN-4916) | TestNMProxy.tesNMProxyRPCRetry fails. |  Minor | . | Tibor Kiss | Tibor Kiss |
| [YARN-4906](https://issues.apache.org/jira/browse/YARN-4906) | Capture container start/finish time in container metrics |  Major | . | Jian He | Jian He |
| [MAPREDUCE-6670](https://issues.apache.org/jira/browse/MAPREDUCE-6670) | TestJobListCache#testEviction sometimes fails on Windows with timeout |  Minor | test | Gergely Novák | Gergely Novák |
| [HDFS-10192](https://issues.apache.org/jira/browse/HDFS-10192) | Namenode safemode not coming out during failover |  Major | namenode | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6647](https://issues.apache.org/jira/browse/MAPREDUCE-6647) | MR usage counters use the resources requested instead of the resources allocated |  Major | . | Haibo Chen | Haibo Chen |
| [HADOOP-13006](https://issues.apache.org/jira/browse/HADOOP-13006) | FileContextMainOperationsBaseTest.testListStatusThrowsExceptionForNonExistentFile() doesnt run |  Minor | test | Steve Loughran | Kai Sasaki |
| [YARN-4927](https://issues.apache.org/jira/browse/YARN-4927) | TestRMHA#testTransitionedToActiveRefreshFail fails with FairScheduler |  Major | test | Karthik Kambatla | Bibin A Chundatt |
| [YARN-4562](https://issues.apache.org/jira/browse/YARN-4562) | YARN WebApp ignores the configuration passed to it for keystore settings |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [YARN-4897](https://issues.apache.org/jira/browse/YARN-4897) | dataTables\_wrapper change min height |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [HDFS-8356](https://issues.apache.org/jira/browse/HDFS-8356) | Document missing properties in hdfs-default.xml |  Major | documentation | Ray Chiang | Ray Chiang |
| [YARN-4810](https://issues.apache.org/jira/browse/YARN-4810) | NM applicationpage cause internal error 500 |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [HDFS-10273](https://issues.apache.org/jira/browse/HDFS-10273) | Remove duplicate logSync() and log message in FSN#enterSafemode() |  Minor | . | Vinayakumar B | Vinayakumar B |
| [HDFS-10282](https://issues.apache.org/jira/browse/HDFS-10282) | The VolumeScanner should warn about replica files which are misplaced |  Major | datanode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-10216](https://issues.apache.org/jira/browse/HDFS-10216) | distcp -diff relative path exception |  Major | distcp | John Zhuge | Takashi Ohnishi |
| [HDFS-10283](https://issues.apache.org/jira/browse/HDFS-10283) | o.a.h.hdfs.server.namenode.TestFSImageWithSnapshot#testSaveLoadImageWithAppending fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [YARN-4934](https://issues.apache.org/jira/browse/YARN-4934) | Reserved Resource for QueueMetrics needs to be handled correctly in few cases |  Major | capacity scheduler | Sunil G | Sunil G |
| [HDFS-10306](https://issues.apache.org/jira/browse/HDFS-10306) | SafeModeMonitor should not leave safe mode if name system is starting active service |  Major | namenode | Mingliang Liu | Mingliang Liu |
| [HDFS-10284](https://issues.apache.org/jira/browse/HDFS-10284) | o.a.h.hdfs.server.blockmanagement.TestBlockManagerSafeMode.testCheckSafeMode fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9300](https://issues.apache.org/jira/browse/HDFS-9300) | TestDirectoryScanner.testThrottle() is still a little flakey |  Major | balancer & mover, test | Daniel Templeton | Daniel Templeton |
| [YARN-4704](https://issues.apache.org/jira/browse/YARN-4704) | TestResourceManager#testResourceAllocation() fails when using FairScheduler |  Major | fairscheduler, test | Ray Chiang | Yufei Gu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9129](https://issues.apache.org/jira/browse/HDFS-9129) | Move the safemode block count into BlockManager |  Major | namenode | Haohui Mai | Mingliang Liu |
| [HDFS-9414](https://issues.apache.org/jira/browse/HDFS-9414) | Refactor reconfiguration of ClientDatanodeProtocol for reusability |  Major | . | Xiaobing Zhou | Xiaobing Zhou |
| [HDFS-9371](https://issues.apache.org/jira/browse/HDFS-9371) | Code cleanup for DatanodeManager |  Major | namenode | Jing Zhao | Jing Zhao |
| [YARN-1856](https://issues.apache.org/jira/browse/YARN-1856) | cgroups based memory monitoring for containers |  Major | nodemanager | Karthik Kambatla | Varun Vasudev |
| [YARN-3480](https://issues.apache.org/jira/browse/YARN-3480) | Recovery may get very slow with lots of services with lots of app-attempts |  Major | resourcemanager | Jun Gong | Jun Gong |
| [HDFS-9498](https://issues.apache.org/jira/browse/HDFS-9498) | Move code that tracks blocks with future generation stamps to BlockManagerSafeMode |  Major | namenode | Mingliang Liu | Mingliang Liu |
| [YARN-4393](https://issues.apache.org/jira/browse/YARN-4393) | TestResourceLocalizationService#testFailedDirsResourceRelease fails intermittently |  Major | test | Varun Saxena | Varun Saxena |
| [YARN-4550](https://issues.apache.org/jira/browse/YARN-4550) | some tests in TestContainerLanch fails on non-english locale environment |  Minor | nodemanager, test | Takashi Ohnishi | Takashi Ohnishi |
| [HDFS-9621](https://issues.apache.org/jira/browse/HDFS-9621) | getListing wrongly associates Erasure Coding policy to pre-existing replicated files under an EC directory |  Critical | erasure-coding | Sushmitha Sreenivasan | Jing Zhao |
| [YARN-4553](https://issues.apache.org/jira/browse/YARN-4553) | Add cgroups support for docker containers |  Major | yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-4526](https://issues.apache.org/jira/browse/YARN-4526) | Make SystemClock singleton so AppSchedulingInfo could use it |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [HDFS-9542](https://issues.apache.org/jira/browse/HDFS-9542) | Move BlockIdManager from FSNamesystem to BlockManager |  Major | namenode | Jing Zhao | Jing Zhao |
| [YARN-4578](https://issues.apache.org/jira/browse/YARN-4578) | Directories that are mounted in docker containers need to be more restrictive/container-specific |  Major | yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-4574](https://issues.apache.org/jira/browse/YARN-4574) | TestAMRMClientOnRMRestart fails on trunk |  Major | client, test | Takashi Ohnishi | Takashi Ohnishi |
| [YARN-4613](https://issues.apache.org/jira/browse/YARN-4613) | TestClientRMService#testGetClusterNodes fails occasionally |  Major | test | Jason Lowe | Takashi Ohnishi |
| [HDFS-9094](https://issues.apache.org/jira/browse/HDFS-9094) | Add command line option to ask NameNode reload configuration. |  Major | namenode | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-4573](https://issues.apache.org/jira/browse/YARN-4573) | TestRMAppTransitions.testAppRunningKill and testAppKilledKilled fail on trunk |  Major | resourcemanager, test | Takashi Ohnishi | Takashi Ohnishi |
| [YARN-4633](https://issues.apache.org/jira/browse/YARN-4633) | TestRMRestart.testRMRestartAfterPreemption fails intermittently in trunk |  Major | test | Rohith Sharma K S | Bibin A Chundatt |
| [YARN-4543](https://issues.apache.org/jira/browse/YARN-4543) | TestNodeStatusUpdater.testStopReentrant fails + JUnit misusage |  Minor | nodemanager | Akihiro Suda | Akihiro Suda |
| [YARN-4615](https://issues.apache.org/jira/browse/YARN-4615) | TestAbstractYarnScheduler#testResourceRequestRecoveryToTheRightAppAttempt fails occasionally |  Major | test | Jason Lowe | Sunil G |
| [HADOOP-12749](https://issues.apache.org/jira/browse/HADOOP-12749) | Create a threadpoolexecutor that overrides afterExecute to log uncaught exceptions/errors |  Major | . | Sidharta Seethana | Sidharta Seethana |
| [YARN-4684](https://issues.apache.org/jira/browse/YARN-4684) | TestYarnCLI#testGetContainers failing in CN locale |  Major | yarn | Bibin A Chundatt | Bibin A Chundatt |
| [HDFS-9754](https://issues.apache.org/jira/browse/HDFS-9754) | Avoid unnecessary getBlockCollection calls in BlockManager |  Major | namenode | Jing Zhao | Jing Zhao |
| [HADOOP-12710](https://issues.apache.org/jira/browse/HADOOP-12710) | Remove dependency on commons-httpclient for TestHttpServerLogs |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-4566](https://issues.apache.org/jira/browse/YARN-4566) | TestMiniYarnClusterNodeUtilization sometimes fails on trunk |  Major | test | Takashi Ohnishi | Takashi Ohnishi |
| [HDFS-7964](https://issues.apache.org/jira/browse/HDFS-7964) | Add support for async edit logging |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [YARN-4749](https://issues.apache.org/jira/browse/YARN-4749) | Generalize config file handling in container-executor |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [HDFS-1477](https://issues.apache.org/jira/browse/HDFS-1477) | Support reconfiguring dfs.heartbeat.interval and dfs.namenode.heartbeat.recheck-interval without NN restart |  Major | namenode | Patrick Kling | Xiaobing Zhou |
| [YARN-4108](https://issues.apache.org/jira/browse/YARN-4108) | CapacityScheduler: Improve preemption to only kill containers that would satisfy the incoming request |  Major | capacity scheduler | Wangda Tan | Wangda Tan |
| [HADOOP-12926](https://issues.apache.org/jira/browse/HADOOP-12926) | lz4.c does not detect 64-bit mode properly |  Major | native | Alan Burlison | Alan Burlison |
| [YARN-4805](https://issues.apache.org/jira/browse/YARN-4805) | Don't go through all schedulers in ParameterizedTestBase |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [HDFS-9349](https://issues.apache.org/jira/browse/HDFS-9349) | Support reconfiguring fs.protected.directories without NN restart |  Major | namenode | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-4822](https://issues.apache.org/jira/browse/YARN-4822) | Refactor existing Preemption Policy of CS for easier adding new approach to select preemption candidates |  Major | . | Wangda Tan | Wangda Tan |
| [HADOOP-12753](https://issues.apache.org/jira/browse/HADOOP-12753) | S3A JUnit tests failing if using HTTP proxy |  Minor | fs/s3 | Zoran Rajic | Zoran Rajic |
| [HDFS-10209](https://issues.apache.org/jira/browse/HDFS-10209) | Support enable caller context in HDFS namenode audit log without restart namenode |  Major | . | Xiaoyu Yao | Xiaobing Zhou |
| [HDFS-10286](https://issues.apache.org/jira/browse/HDFS-10286) | Fix TestDFSAdmin#testNameNodeGetReconfigurableProperties |  Major | . | Xiaoyu Yao | Xiaobing Zhou |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4535](https://issues.apache.org/jira/browse/YARN-4535) | Fix checkstyle error in CapacityScheduler.java |  Trivial | . | Rohith Sharma K S | Naganarasimha G R |


