
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

## Release 2.9.0 - Unreleased (as of 2016-09-16)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4784](https://issues.apache.org/jira/browse/YARN-4784) | Fairscheduler: defaultQueueSchedulingPolicy should not accept FIFO |  Major | fairscheduler | Yufei Gu | Yufei Gu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12321](https://issues.apache.org/jira/browse/HADOOP-12321) | Make JvmPauseMonitor an AbstractService |  Major | . | Steve Loughran | Sunil G |
| [HDFS-9525](https://issues.apache.org/jira/browse/HDFS-9525) | hadoop utilities need to support provided delegation tokens |  Blocker | security | Allen Wittenauer | HeeSoo Kim |
| [HADOOP-12702](https://issues.apache.org/jira/browse/HADOOP-12702) | Add an HDFS metrics sink |  Major | metrics | Daniel Templeton | Daniel Templeton |
| [HADOOP-12847](https://issues.apache.org/jira/browse/HADOOP-12847) | hadoop daemonlog should support https and SPNEGO for Kerberized cluster |  Major | security | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12747](https://issues.apache.org/jira/browse/HADOOP-12747) | support wildcard in libjars argument |  Major | util | Sangjin Lee | Sangjin Lee |
| [HDFS-9804](https://issues.apache.org/jira/browse/HDFS-9804) | Allow long-running Balancer to login with keytab |  Major | balancer & mover, security | Xiao Chen | Xiao Chen |
| [MAPREDUCE-6690](https://issues.apache.org/jira/browse/MAPREDUCE-6690) | Limit the number of resources a single map reduce job can submit for localization |  Major | . | Chris Trezzo | Chris Trezzo |
| [HADOOP-13396](https://issues.apache.org/jira/browse/HADOOP-13396) | Allow pluggable audit loggers in KMS |  Major | kms | Xiao Chen | Xiao Chen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9267](https://issues.apache.org/jira/browse/HDFS-9267) | TestDiskError should get stored replicas through FsDatasetTestUtils. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9491](https://issues.apache.org/jira/browse/HDFS-9491) | Tests should get the number of pending async delets via FsDatasetTestUtils |  Minor | test | Tony Wu | Tony Wu |
| [HADOOP-12625](https://issues.apache.org/jira/browse/HADOOP-12625) | Add a config to disable the /logs endpoints |  Major | security | Robert Kanter | Robert Kanter |
| [YARN-4341](https://issues.apache.org/jira/browse/YARN-4341) | add doc about timeline performance tool usage |  Major | . | Chang Li | Chang Li |
| [HDFS-9281](https://issues.apache.org/jira/browse/HDFS-9281) | Change TestDeleteBlockPool to not explicitly use File to check block pool existence. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8477](https://issues.apache.org/jira/browse/HDFS-8477) | describe dfs.ha.zkfc.port in hdfs-default.xml |  Minor | . | Kanaka Kumar Avvaru | Kanaka Kumar Avvaru |
| [HDFS-9350](https://issues.apache.org/jira/browse/HDFS-9350) | Avoid creating temprorary strings in Block.toString() and getBlockName() |  Minor | performance | Staffan Friberg | Staffan Friberg |
| [HADOOP-12566](https://issues.apache.org/jira/browse/HADOOP-12566) | Add NullGroupMapping |  Major | . | Daniel Templeton | Daniel Templeton |
| [YARN-2934](https://issues.apache.org/jira/browse/YARN-2934) | Improve handling of container\'s stderr |  Critical | . | Gera Shegalov | Naganarasimha G R |
| [HADOOP-12663](https://issues.apache.org/jira/browse/HADOOP-12663) | Remove Hard-Coded Values From FileSystem.java |  Trivial | fs | BELUGA BEHR | BELUGA BEHR |
| [YARN-4438](https://issues.apache.org/jira/browse/YARN-4438) | Implement RM leader election with curator |  Major | . | Jian He | Jian He |
| [HADOOP-12683](https://issues.apache.org/jira/browse/HADOOP-12683) | Add number of samples in last interval in snapshot of MutableStat |  Minor | metrics | Vikram Srivastava | Vikram Srivastava |
| [HADOOP-8887](https://issues.apache.org/jira/browse/HADOOP-8887) | Use a Maven plugin to build the native code using CMake |  Minor | build | Colin P. McCabe | Colin P. McCabe |
| [HADOOP-12713](https://issues.apache.org/jira/browse/HADOOP-12713) | Disable spurious checkstyle checks |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-12662](https://issues.apache.org/jira/browse/HADOOP-12662) | The build should fail if a -Dbundle option fails |  Minor | . | Kai Zheng | Kai Zheng |
| [HDFS-9576](https://issues.apache.org/jira/browse/HDFS-9576) | HTrace: collect position/length information on read operations |  Major | hdfs-client, tracing | Zhe Zhang | Zhe Zhang |
| [YARN-4603](https://issues.apache.org/jira/browse/YARN-4603) | FairScheduler should mention user requested queuename in error message when failed in queue ACL check |  Trivial | fairscheduler | Tao Jie | Tao Jie |
| [HDFS-9674](https://issues.apache.org/jira/browse/HDFS-9674) | The HTrace span for OpWriteBlock should record the maxWriteToDisk time |  Major | datanode, tracing | Colin P. McCabe | Colin P. McCabe |
| [YARN-4496](https://issues.apache.org/jira/browse/YARN-4496) | Improve HA ResourceManager Failover detection on the client |  Major | client, resourcemanager | Arun Suresh | Jian He |
| [YARN-3542](https://issues.apache.org/jira/browse/YARN-3542) | Re-factor support for CPU as a resource using the new ResourceHandler mechanism |  Critical | nodemanager | Sidharta Seethana | Varun Vasudev |
| [HDFS-9541](https://issues.apache.org/jira/browse/HDFS-9541) | Add hdfsStreamBuilder API to libhdfs to support defaultBlockSizes greater than 2 GB |  Major | libhdfs | Colin P. McCabe | Colin P. McCabe |
| [YARN-4462](https://issues.apache.org/jira/browse/YARN-4462) | FairScheduler: Disallow preemption from a queue |  Major | fairscheduler | Tao Jie | Tao Jie |
| [HDFS-9677](https://issues.apache.org/jira/browse/HDFS-9677) | Rename generationStampV1/generationStampV2 to legacyGenerationStamp/generationStamp |  Minor | namenode | Jing Zhao | Mingliang Liu |
| [MAPREDUCE-6431](https://issues.apache.org/jira/browse/MAPREDUCE-6431) | JobClient should be an AutoClosable |  Major | . | André Kelpe | Haibo Chen |
| [HDFS-7764](https://issues.apache.org/jira/browse/HDFS-7764) | DirectoryScanner shouldn\'t abort the scan if one directory had an error |  Major | datanode | Rakesh R | Rakesh R |
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
| [YARN-4697](https://issues.apache.org/jira/browse/YARN-4697) | NM aggregation thread pool is not bound by limits |  Critical | nodemanager | Haibo Chen | Haibo Chen |
| [YARN-4579](https://issues.apache.org/jira/browse/YARN-4579) | Allow DefaultContainerExecutor container log directory permissions to be configurable |  Major | yarn | Ray Chiang | Ray Chiang |
| [YARN-4720](https://issues.apache.org/jira/browse/YARN-4720) | Skip unnecessary NN operations in log aggregation |  Major | . | Ming Ma | Jun Gong |
| [HADOOP-12841](https://issues.apache.org/jira/browse/HADOOP-12841) | Update s3-related properties in core-default.xml |  Minor | fs/s3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [MAPREDUCE-6622](https://issues.apache.org/jira/browse/MAPREDUCE-6622) | Add capability to set JHS job cache to a task-based limit |  Critical | jobhistoryserver | Ray Chiang | Ray Chiang |
| [YARN-4718](https://issues.apache.org/jira/browse/YARN-4718) | Rename variables in SchedulerNode to reduce ambiguity post YARN-1011 |  Major | scheduler | Karthik Kambatla | Inigo Goiri |
| [HADOOP-12859](https://issues.apache.org/jira/browse/HADOOP-12859) | Disable hiding field style checks in class setters |  Major | . | Kai Zheng | Kai Zheng |
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
| [YARN-4607](https://issues.apache.org/jira/browse/YARN-4607) | Pagination support for AppAttempt page TotalOutstandingResource Requests table |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4769](https://issues.apache.org/jira/browse/YARN-4769) | Add support for CSRF header in the dump capacity scheduler logs and kill app buttons in RM web UI |  Major | . | Varun Vasudev | Varun Vasudev |
| [HADOOP-12984](https://issues.apache.org/jira/browse/HADOOP-12984) | Add GenericTestUtils.getTestDir method and use it for temporary directory in tests |  Major | build, test | Steve Loughran | Steve Loughran |
| [YARN-4541](https://issues.apache.org/jira/browse/YARN-4541) | Change log message in LocalizedResource#handle() to DEBUG |  Minor | . | Ray Chiang | Ray Chiang |
| [YARN-1297](https://issues.apache.org/jira/browse/YARN-1297) | FairScheduler: Move some logs to debug and check if debug logging is enabled |  Major | fairscheduler | Sandy Ryza | Yufei Gu |
| [HDFS-3702](https://issues.apache.org/jira/browse/HDFS-3702) | Add an option for NOT writing the blocks locally if there is a datanode on the same box as the client |  Minor | hdfs-client | Nicolas Liochon | Lei (Eddy) Xu |
| [YARN-5003](https://issues.apache.org/jira/browse/YARN-5003) | Add container resource to RM audit log |  Major | resourcemanager, scheduler | Nathan Roberts | Nathan Roberts |
| [HADOOP-13068](https://issues.apache.org/jira/browse/HADOOP-13068) | Clean up RunJar and related test class |  Trivial | util | Andras Bokor | Andras Bokor |
| [YARN-4577](https://issues.apache.org/jira/browse/YARN-4577) | Enable aux services to have their own custom classpath/jar file |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5053](https://issues.apache.org/jira/browse/YARN-5053) | More informative diagnostics when applications killed by a user |  Major | resourcemanager | Jason Lowe | Eric Badger |
| [HADOOP-12971](https://issues.apache.org/jira/browse/HADOOP-12971) | FileSystemShell doc should explain relative path |  Critical | documentation | John Zhuge | John Zhuge |
| [MAPREDUCE-6686](https://issues.apache.org/jira/browse/MAPREDUCE-6686) | Add a way to download the job config from the mapred CLI |  Major | client | Robert Kanter | Robert Kanter |
| [MAPREDUCE-6696](https://issues.apache.org/jira/browse/MAPREDUCE-6696) | Add a configuration to limit the number of map tasks allowed per job. |  Major | job submission | zhihai xu | zhihai xu |
| [YARN-4878](https://issues.apache.org/jira/browse/YARN-4878) | Expose scheduling policy and max running apps over JMX for Yarn queues |  Major | yarn | Yufei Gu | Yufei Gu |
| [HDFS-9782](https://issues.apache.org/jira/browse/HDFS-9782) | RollingFileSystemSink should have configurable roll interval |  Major | . | Daniel Templeton | Daniel Templeton |
| [HADOOP-13160](https://issues.apache.org/jira/browse/HADOOP-13160) | Suppress checkstyle JavadocPackage check for test source |  Minor | . | John Zhuge | John Zhuge |
| [YARN-4766](https://issues.apache.org/jira/browse/YARN-4766) | NM should not aggregate logs older than the retention policy |  Major | log-aggregation, nodemanager | Haibo Chen | Haibo Chen |
| [HADOOP-12291](https://issues.apache.org/jira/browse/HADOOP-12291) | Add support for nested groups in LdapGroupsMapping |  Major | security | Gautam Gopalakrishnan | Esther Kundin |
| [HDFS-7541](https://issues.apache.org/jira/browse/HDFS-7541) | Upgrade Domains in HDFS |  Major | . | Ming Ma | Ming Ma |
| [HDFS-10256](https://issues.apache.org/jira/browse/HDFS-10256) | Use GenericTestUtils.getTestDir method in tests for temporary directories |  Major | build, test | Vinayakumar B | Vinayakumar B |
| [YARN-5083](https://issues.apache.org/jira/browse/YARN-5083) | YARN CLI for AM logs does not give any error message if entered invalid am value |  Major | yarn | Sumana Sathish | Jian He |
| [YARN-5082](https://issues.apache.org/jira/browse/YARN-5082) | Limit ContainerId increase in fair scheduler if the num of  node app reserved reached the limit |  Major | . | sandflee | sandflee |
| [YARN-4958](https://issues.apache.org/jira/browse/YARN-4958) | The file localization process should allow for wildcards to reduce the application footprint in the state store |  Critical | nodemanager | Daniel Templeton | Daniel Templeton |
| [MAPREDUCE-6719](https://issues.apache.org/jira/browse/MAPREDUCE-6719) | The list of -libjars archives should be replaced with a wildcard in the distributed cache to reduce the application footprint in the state store |  Critical | distributed-cache | Daniel Templeton | Daniel Templeton |
| [MAPREDUCE-6721](https://issues.apache.org/jira/browse/MAPREDUCE-6721) | mapreduce.reduce.shuffle.memory.limit.percent=0.0 should be legal to enforce shuffle to disk |  Major | mrv2, task | Gera Shegalov | Gera Shegalov |
| [HDFS-10568](https://issues.apache.org/jira/browse/HDFS-10568) | Reuse ObjectMapper instance in CombinedHostsFileReader and CombinedHostsFileWriter |  Major | hdfs-client | Yiqun Lin | Yiqun Lin |
| [HADOOP-13337](https://issues.apache.org/jira/browse/HADOOP-13337) | Update maven-enforcer-plugin version to 1.4.1 |  Major | build | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-4568](https://issues.apache.org/jira/browse/YARN-4568) | Fix message when NodeManager runs into errors initializing the recovery directory |  Major | yarn | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6717](https://issues.apache.org/jira/browse/MAPREDUCE-6717) | Remove deprecated StringUtils.getFormattedTimeWithDiff |  Minor | . | Akira Ajisaka | Shen Yinjie |
| [HDFS-10387](https://issues.apache.org/jira/browse/HDFS-10387) | DataTransferProtocol#writeBlock missing some javadocs |  Minor | datanode, hdfs | Yongjun Zhang | John Zhuge |
| [YARN-5339](https://issues.apache.org/jira/browse/YARN-5339) | passing file to -out for YARN log CLI doesnt give warning or error code |  Major | . | Sumana Sathish | Xuan Gong |
| [HADOOP-13290](https://issues.apache.org/jira/browse/HADOOP-13290) | Appropriate use of generics in FairCallQueue |  Major | ipc | Konstantin Shvachko | Jonathan Hung |
| [YARN-5303](https://issues.apache.org/jira/browse/YARN-5303) | Clean up ContainerExecutor JavaDoc |  Minor | nodemanager | Daniel Templeton | Daniel Templeton |
| [MAPREDUCE-6652](https://issues.apache.org/jira/browse/MAPREDUCE-6652) | Add configuration property to prevent JHS from loading jobs with a task count greater than X |  Major | jobhistoryserver | Haibo Chen | Haibo Chen |
| [YARN-5181](https://issues.apache.org/jira/browse/YARN-5181) | ClusterNodeTracker: add method to get list of nodes matching a specific resourceName |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-4996](https://issues.apache.org/jira/browse/YARN-4996) | Make TestNMReconnect.testCompareRMNodeAfterReconnect() scheduler agnostic, or better yet parameterized |  Minor | resourcemanager, test | Daniel Templeton | Kai Sasaki |
| [MAPREDUCE-6365](https://issues.apache.org/jira/browse/MAPREDUCE-6365) | Refactor JobResourceUploader#uploadFilesInternal |  Minor | . | Chris Trezzo | Chris Trezzo |
| [HADOOP-13354](https://issues.apache.org/jira/browse/HADOOP-13354) | Update WASB driver to use the latest version (4.2.0) of SDK for Microsoft Azure Storage Clients |  Major | fs/azure | Sivaguru Sankaridurg | Sivaguru Sankaridurg |
| [YARN-5460](https://issues.apache.org/jira/browse/YARN-5460) | Change container runtime type logging in DelegatingLinuxContainerRuntime to debug |  Trivial | yarn | Shane Kumpf | Shane Kumpf |
| [HADOOP-13458](https://issues.apache.org/jira/browse/HADOOP-13458) | LoadBalancingKMSClientProvider#doOp should log IOException stacktrace |  Trivial | kms | Wei-Chiu Chuang | Chen Liang |
| [MAPREDUCE-6748](https://issues.apache.org/jira/browse/MAPREDUCE-6748) | Enhance logging for Cluster.java around InetSocketAddress |  Minor | . | sarun singla | Vrushali C |
| [YARN-4910](https://issues.apache.org/jira/browse/YARN-4910) | Fix incomplete log info in ResourceLocalizationService |  Trivial | . | Jun Gong | Jun Gong |
| [HADOOP-13380](https://issues.apache.org/jira/browse/HADOOP-13380) | TestBasicDiskValidator should not write data to /tmp |  Minor | . | Lei (Eddy) Xu | Yufei Gu |
| [MAPREDUCE-6741](https://issues.apache.org/jira/browse/MAPREDUCE-6741) | add MR support to redact job conf properties |  Major | mrv2 | Haibo Chen | Haibo Chen |
| [MAPREDUCE-6751](https://issues.apache.org/jira/browse/MAPREDUCE-6751) | Add debug log message when splitting is not possible due to unsplittable compression |  Minor | client, mrv1, mrv2 | Peter Vary | Peter Vary |
| [YARN-5455](https://issues.apache.org/jira/browse/YARN-5455) | Update Javadocs for LinuxContainerExecutor |  Major | nodemanager | Daniel Templeton | Daniel Templeton |
| [YARN-4702](https://issues.apache.org/jira/browse/YARN-4702) | FairScheduler: Allow setting maxResources for ad hoc queues |  Major | fairscheduler | Karthik Kambatla | Daniel Templeton |
| [HDFS-10645](https://issues.apache.org/jira/browse/HDFS-10645) | Make block report size as a metric and add this metric to datanode web ui |  Major | datanode, ui | Yuanbo Liu | Yuanbo Liu |
| [YARN-4491](https://issues.apache.org/jira/browse/YARN-4491) | yarn list command to support filtering by tags |  Minor | client | Steve Loughran | Varun Saxena |
| [HDFS-10798](https://issues.apache.org/jira/browse/HDFS-10798) | Make the threshold of reporting FSNamesystem lock contention configurable |  Major | logging, namenode | Zhe Zhang | Erik Krogen |
| [HDFS-10784](https://issues.apache.org/jira/browse/HDFS-10784) | Implement WebHdfsFileSystem#listStatusIterator |  Major | webhdfs | Andrew Wang | Andrew Wang |
| [HDFS-10822](https://issues.apache.org/jira/browse/HDFS-10822) | Log DataNodes in the write pipeline |  Trivial | hdfs-client | John Zhuge | John Zhuge |
| [YARN-5616](https://issues.apache.org/jira/browse/YARN-5616) | Clean up WeightAdjuster |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [HDFS-10778](https://issues.apache.org/jira/browse/HDFS-10778) | Add -format option to make the output of FileDistribution processor human-readable in OfflineImageViewer |  Major | tools | Yiqun Lin | Yiqun Lin |
| [HDFS-10847](https://issues.apache.org/jira/browse/HDFS-10847) | Complete the document for FileDistribution processor in OfflineImageViewer |  Minor | documentation | Yiqun Lin | Yiqun Lin |
| [HDFS-10837](https://issues.apache.org/jira/browse/HDFS-10837) | Standardize serializiation of WebHDFS DirectoryListing |  Major | webhdfs | Andrew Wang | Andrew Wang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-7256](https://issues.apache.org/jira/browse/HADOOP-7256) | Resource leak during failure scenario of closing of resources. |  Minor | util | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [YARN-4156](https://issues.apache.org/jira/browse/YARN-4156) | TestAMRestart#testAMBlacklistPreventsRestartOnSameNode assumes CapacityScheduler |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-4417](https://issues.apache.org/jira/browse/YARN-4417) | Make RM and Timeline-server REST APIs more consistent |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-4522](https://issues.apache.org/jira/browse/YARN-4522) | Queue acl can be checked at app submission |  Major | . | Jian He | Jian He |
| [YARN-4530](https://issues.apache.org/jira/browse/YARN-4530) | LocalizedResource trigger a NPE Cause the NodeManager exit |  Major | . | tangshangwen | tangshangwen |
| [MAPREDUCE-6577](https://issues.apache.org/jira/browse/MAPREDUCE-6577) | MR AM unable to load native library without MR\_AM\_ADMIN\_USER\_ENV set |  Critical | mr-am | Sangjin Lee | Sangjin Lee |
| [HADOOP-12655](https://issues.apache.org/jira/browse/HADOOP-12655) | TestHttpServer.testBindAddress bind port range is wider than expected |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12573](https://issues.apache.org/jira/browse/HADOOP-12573) | TestRPC.testClientBackOff failing |  Major | test | Steve Loughran | Xiao Chen |
| [YARN-4567](https://issues.apache.org/jira/browse/YARN-4567) | javadoc failing on java 8 |  Blocker | build | Steve Loughran | Steve Loughran |
| [HADOOP-12653](https://issues.apache.org/jira/browse/HADOOP-12653) | Use SO\_REUSEADDR to avoid getting "Address already in use" when using kerberos and attempting to bind to any port on the local IP address |  Major | net | Colin P. McCabe | Colin P. McCabe |
| [YARN-4571](https://issues.apache.org/jira/browse/YARN-4571) | Make app id/name available to the yarn authorizer provider for better auditing |  Major | . | Jian He | Jian He |
| [YARN-4551](https://issues.apache.org/jira/browse/YARN-4551) | Address the duplication between StatusUpdateWhenHealthy and StatusUpdateWhenUnhealthy transitions |  Minor | nodemanager | Karthik Kambatla | Sunil G |
| [HDFS-9517](https://issues.apache.org/jira/browse/HDFS-9517) | Fix missing @Test annotation on TestDistCpUtils.testUnpackAttributes |  Trivial | distcp | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9624](https://issues.apache.org/jira/browse/HDFS-9624) | DataNode start slowly due to the initial DU command operations |  Major | . | Yiqun Lin | Yiqun Lin |
| [HADOOP-12712](https://issues.apache.org/jira/browse/HADOOP-12712) | Fix some cmake plugin and native build warnings |  Minor | native | Colin P. McCabe | Colin P. McCabe |
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
| [YARN-4594](https://issues.apache.org/jira/browse/YARN-4594) | container-executor fails to remove directory tree when chmod required |  Major | nodemanager | Colin P. McCabe | Colin P. McCabe |
| [YARN-4669](https://issues.apache.org/jira/browse/YARN-4669) | Fix logging statements in resource manager\'s Application class |  Trivial | . | Sidharta Seethana | Sidharta Seethana |
| [HADOOP-12773](https://issues.apache.org/jira/browse/HADOOP-12773) | HBase classes fail to load with client/job classloader enabled |  Major | util | Sangjin Lee | Sangjin Lee |
| [YARN-4629](https://issues.apache.org/jira/browse/YARN-4629) | Distributed shell breaks under strong security |  Major | applications/distributed-shell, security | Daniel Templeton | Daniel Templeton |
| [HDFS-9608](https://issues.apache.org/jira/browse/HDFS-9608) | Disk IO imbalance in HDFS with heterogeneous storages |  Major | . | Wei Zhou | Wei Zhou |
| [YARN-4689](https://issues.apache.org/jira/browse/YARN-4689) | FairScheduler: Cleanup preemptContainer to be more readable |  Trivial | fairscheduler | Karthik Kambatla | Kai Sasaki |
| [YARN-4651](https://issues.apache.org/jira/browse/YARN-4651) | movetoqueue option does not documented in \'YARN Commands\' |  Major | documentation | Takashi Ohnishi | Takashi Ohnishi |
| [YARN-4648](https://issues.apache.org/jira/browse/YARN-4648) | Move preemption related tests from TestFairScheduler to TestFairSchedulerPreemption |  Major | fairscheduler | Karthik Kambatla | Kai Sasaki |
| [YARN-4722](https://issues.apache.org/jira/browse/YARN-4722) | AsyncDispatcher logs redundant event queue sizes |  Major | . | Jason Lowe | Jason Lowe |
| [YARN-4729](https://issues.apache.org/jira/browse/YARN-4729) | SchedulerApplicationAttempt#getTotalRequiredResources can throw an NPE |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-4701](https://issues.apache.org/jira/browse/YARN-4701) | When task logs are not available, port 8041 is referenced instead of port 8042 |  Major | yarn | Haibo Chen | Haibo Chen |
| [HDFS-9858](https://issues.apache.org/jira/browse/HDFS-9858) | RollingFileSystemSink can throw an NPE on non-secure clusters |  Major | . | Daniel Templeton | Daniel Templeton |
| [HDFS-9855](https://issues.apache.org/jira/browse/HDFS-9855) | Modify TestAuditLoggerWithCommands to workaround the absence of HDFS-8332 |  Major | test | Kuhu Shukla | Kuhu Shukla |
| [YARN-4731](https://issues.apache.org/jira/browse/YARN-4731) | container-executor should not follow symlinks in recursive\_unlink\_children |  Blocker | . | Bibin A Chundatt | Colin P. McCabe |
| [HADOOP-10321](https://issues.apache.org/jira/browse/HADOOP-10321) | TestCompositeService should cover all enumerations of adding a service to a parent service |  Major | . | Karthik Kambatla | Ray Chiang |
| [YARN-4763](https://issues.apache.org/jira/browse/YARN-4763) | RMApps Page crashes with NPE |  Major | webapp | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4737](https://issues.apache.org/jira/browse/YARN-4737) | Add CSRF filter support in YARN |  Major | nodemanager, resourcemanager, webapp | Jonathan Maron | Jonathan Maron |
| [YARN-4762](https://issues.apache.org/jira/browse/YARN-4762) | NMs failing on DelegatingLinuxContainerRuntime init with LCE on |  Blocker | . | Vinod Kumar Vavilapalli | Sidharta Seethana |
| [YARN-4764](https://issues.apache.org/jira/browse/YARN-4764) | Application submission fails when submitted queue is not available in scheduler xml |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [HADOOP-12895](https://issues.apache.org/jira/browse/HADOOP-12895) | SSLFactory#createSSLSocketFactory exception message is wrong |  Trivial | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12906](https://issues.apache.org/jira/browse/HADOOP-12906) | AuthenticatedURL should convert a 404/Not Found into an FileNotFoundException. |  Minor | io, security | Steve Loughran | Steve Loughran |
| [HDFS-9947](https://issues.apache.org/jira/browse/HDFS-9947) | Block#toString should not output information from derived classes |  Minor | . | Colin P. McCabe | Colin P. McCabe |
| [YARN-4816](https://issues.apache.org/jira/browse/YARN-4816) | SystemClock API broken in 2.9.0 |  Major | . | Siddharth Seth | Siddharth Seth |
| [HDFS-9780](https://issues.apache.org/jira/browse/HDFS-9780) | RollingFileSystemSink doesn\'t work on secure clusters |  Critical | . | Daniel Templeton | Daniel Templeton |
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
| [YARN-4706](https://issues.apache.org/jira/browse/YARN-4706) | UI Hosting Configuration in TimelineServer doc is broken |  Critical | documentation | Akira Ajisaka | Akira Ajisaka |
| [YARN-4880](https://issues.apache.org/jira/browse/YARN-4880) | Running TestZKRMStateStorePerf with real zookeeper cluster throws NPE |  Major | . | Rohith Sharma K S | Sunil G |
| [YARN-4609](https://issues.apache.org/jira/browse/YARN-4609) | RM Nodes list page takes too much time to load |  Major | webapp | Bibin A Chundatt | Bibin A Chundatt |
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
| [HDFS-10282](https://issues.apache.org/jira/browse/HDFS-10282) | The VolumeScanner should warn about replica files which are misplaced |  Major | datanode | Colin P. McCabe | Colin P. McCabe |
| [HDFS-10283](https://issues.apache.org/jira/browse/HDFS-10283) | o.a.h.hdfs.server.namenode.TestFSImageWithSnapshot#testSaveLoadImageWithAppending fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [YARN-4934](https://issues.apache.org/jira/browse/YARN-4934) | Reserved Resource for QueueMetrics needs to be handled correctly in few cases |  Major | capacity scheduler | Sunil G | Sunil G |
| [HDFS-10306](https://issues.apache.org/jira/browse/HDFS-10306) | SafeModeMonitor should not leave safe mode if name system is starting active service |  Major | namenode | Mingliang Liu | Mingliang Liu |
| [YARN-4935](https://issues.apache.org/jira/browse/YARN-4935) | TestYarnClient#testSubmitIncorrectQueue fails with FairScheduler |  Major | test | Yufei Gu | Yufei Gu |
| [MAPREDUCE-2398](https://issues.apache.org/jira/browse/MAPREDUCE-2398) | MRBench: setting the baseDir parameter has no effect |  Minor | benchmarks | Michael Noll | Wilfred Spiegelenburg |
| [YARN-4976](https://issues.apache.org/jira/browse/YARN-4976) | Missing NullPointer check in ContainerLaunchContextPBImpl causes RM to die |  Major | resourcemanager | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [YARN-4795](https://issues.apache.org/jira/browse/YARN-4795) | ContainerMetrics drops records |  Major | resourcemanager | Daniel Templeton | Daniel Templeton |
| [YARN-4983](https://issues.apache.org/jira/browse/YARN-4983) | JVM and UGI metrics disappear after RM is once transitioned to standby mode |  Major | . | Li Lu | Li Lu |
| [HADOOP-13012](https://issues.apache.org/jira/browse/HADOOP-13012) | yetus-wrapper should fail sooner when download fails |  Minor | yetus | Steven K. Wong | Steven K. Wong |
| [HADOOP-12469](https://issues.apache.org/jira/browse/HADOOP-12469) | distcp should not ignore the ignoreFailures option |  Critical | tools/distcp | Gera Shegalov | Mingliang Liu |
| [MAPREDUCE-6677](https://issues.apache.org/jira/browse/MAPREDUCE-6677) | LocalContainerAllocator doesn\'t specify resource of the containers allocated. |  Major | mr-am | Haibo Chen | Haibo Chen |
| [MAPREDUCE-6675](https://issues.apache.org/jira/browse/MAPREDUCE-6675) | TestJobImpl.testUnusableNode failed |  Major | mrv2 | Haibo Chen | Haibo Chen |
| [YARN-5002](https://issues.apache.org/jira/browse/YARN-5002) | getApplicationReport call may raise NPE for removed queues |  Critical | . | Sumana Sathish | Jian He |
| [HADOOP-13118](https://issues.apache.org/jira/browse/HADOOP-13118) | Fix IOUtils#cleanup and IOUtils#closeStream javadoc |  Trivial | io | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-10694](https://issues.apache.org/jira/browse/HADOOP-10694) | Remove synchronized input streams from Writable deserialization |  Major | io | Gopal V | Gopal V |
| [HDFS-10410](https://issues.apache.org/jira/browse/HDFS-10410) | RedundantEditLogInputStream#LOG is set to wrong class |  Minor | . | John Zhuge | John Zhuge |
| [HDFS-10208](https://issues.apache.org/jira/browse/HDFS-10208) | Addendum for HDFS-9579: to handle the case when client machine can\'t resolve network path |  Major | . | Ming Ma | Ming Ma |
| [MAPREDUCE-6701](https://issues.apache.org/jira/browse/MAPREDUCE-6701) | application master log can not be available when clicking jobhistory\'s am logs link |  Critical | jobhistoryserver | chenyukang | Haibo Chen |
| [HDFS-10404](https://issues.apache.org/jira/browse/HDFS-10404) | Fix formatting of CacheAdmin command usage help text |  Major | caching | Yiqun Lin | Yiqun Lin |
| [MAPREDUCE-6657](https://issues.apache.org/jira/browse/MAPREDUCE-6657) | job history server can fail on startup when NameNode is in start phase |  Major | jobhistoryserver | Haibo Chen | Haibo Chen |
| [HDFS-10360](https://issues.apache.org/jira/browse/HDFS-10360) | DataNode may format directory and lose blocks if current/VERSION is missing |  Major | datanode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-5076](https://issues.apache.org/jira/browse/YARN-5076) | YARN web interfaces lack XFS protection |  Major | nodemanager, resourcemanager, timelineserver | Jonathan Maron | Jonathan Maron |
| [YARN-5126](https://issues.apache.org/jira/browse/YARN-5126) | Remove CHANGES.txt from branch-2 |  Major | . | Akira Ajisaka | Akira Ajisaka |
| [YARN-5112](https://issues.apache.org/jira/browse/YARN-5112) | Excessive log warnings for directory permission issue on NM recovery. |  Major | . | Jian He | Jian He |
| [YARN-4979](https://issues.apache.org/jira/browse/YARN-4979) | FSAppAttempt demand calculation considers demands at multiple locality levels different |  Major | fairscheduler | zhihai xu | zhihai xu |
| [MAPREDUCE-6703](https://issues.apache.org/jira/browse/MAPREDUCE-6703) | Add flag to allow MapReduce AM to request for OPPORTUNISTIC containers |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-5131](https://issues.apache.org/jira/browse/YARN-5131) | Distributed shell AM fails when extra container arrives during finishing |  Major | . | Sumana Sathish | Wangda Tan |
| [YARN-4866](https://issues.apache.org/jira/browse/YARN-4866) | FairScheduler: AMs can consume all vcores leading to a livelock when using FAIR policy |  Major | fairscheduler | Karthik Kambatla | Yufei Gu |
| [HDFS-10463](https://issues.apache.org/jira/browse/HDFS-10463) | TestRollingFileSystemSinkWithHdfs needs some cleanup |  Critical | . | Daniel Templeton | Daniel Templeton |
| [HDFS-10449](https://issues.apache.org/jira/browse/HDFS-10449) | TestRollingFileSystemSinkWithHdfs#testFailedClose() fails on branch-2 |  Major | test | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-10485](https://issues.apache.org/jira/browse/HDFS-10485) | Fix findbugs warning in FSEditLog.java |  Major | . | Akira Ajisaka | Akira Ajisaka |
| [HDFS-10468](https://issues.apache.org/jira/browse/HDFS-10468) | HDFS read ends up ignoring an interrupt |  Major | . | Siddharth Seth | Jing Zhao |
| [MAPREDUCE-6240](https://issues.apache.org/jira/browse/MAPREDUCE-6240) | Hadoop client displays confusing error message |  Major | client | Mohammad Kamrul Islam | Gera Shegalov |
| [YARN-4308](https://issues.apache.org/jira/browse/YARN-4308) | ContainersAggregated CPU resource utilization reports negative usage in first few heartbeats |  Major | nodemanager | Sunil G | Sunil G |
| [HDFS-10508](https://issues.apache.org/jira/browse/HDFS-10508) | DFSInputStream should set thread\'s interrupt status after catching InterruptException from sleep |  Major | . | Jing Zhao | Jing Zhao |
| [HADOOP-13243](https://issues.apache.org/jira/browse/HADOOP-13243) | TestRollingFileSystemSink.testSetInitialFlushTime() fails intermittently |  Minor | test | Daniel Templeton | Daniel Templeton |
| [YARN-5077](https://issues.apache.org/jira/browse/YARN-5077) | Fix FSLeafQueue#getFairShare() for queues with zero fairshare |  Major | . | Yufei Gu | Yufei Gu |
| [HDFS-10437](https://issues.apache.org/jira/browse/HDFS-10437) | ReconfigurationProtocol not covered by HDFSPolicyProvider. |  Major | namenode | Chris Nauroth | Arpit Agarwal |
| [YARN-5246](https://issues.apache.org/jira/browse/YARN-5246) | NMWebAppFilter web redirects drop query parameters |  Major | . | Varun Vasudev | Varun Vasudev |
| [MAPREDUCE-6197](https://issues.apache.org/jira/browse/MAPREDUCE-6197) | Cache MapOutputLocations in ShuffleHandler |  Major | . | Siddharth Seth | Junping Du |
| [YARN-5266](https://issues.apache.org/jira/browse/YARN-5266) | Wrong exit code while trying to get app logs using regex via CLI |  Critical | yarn | Sumana Sathish | Xuan Gong |
| [HDFS-10561](https://issues.apache.org/jira/browse/HDFS-10561) | test\_native\_mini\_dfs fails by NoClassDefFoundError |  Major | native, test | Akira Ajisaka | Akira Ajisaka |
| [HDFS-10555](https://issues.apache.org/jira/browse/HDFS-10555) | Unable to loadFSEdits due to a failure in readCachePoolInfo |  Critical | caching, namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [MAPREDUCE-5803](https://issues.apache.org/jira/browse/MAPREDUCE-5803) | Counters page display all task neverthless of task type( Map or Reduce) |  Minor | jobhistoryserver | Rohith Sharma K S | Kai Sasaki |
| [YARN-5182](https://issues.apache.org/jira/browse/YARN-5182) | MockNodes.newNodes creates one more node per rack than requested |  Major | test | Karthik Kambatla | Karthik Kambatla |
| [YARN-5282](https://issues.apache.org/jira/browse/YARN-5282) | Fix typos in CapacityScheduler documentation |  Trivial | documentation | Ray Chiang | Ray Chiang |
| [HDFS-10572](https://issues.apache.org/jira/browse/HDFS-10572) | Fix TestOfflineEditsViewer#testGenerated |  Blocker | test | Xiaoyu Yao | Surendra Singh Lilhore |
| [YARN-5296](https://issues.apache.org/jira/browse/YARN-5296) | NMs going OutOfMemory because ContainerMetrics leak in ContainerMonitorImpl |  Major | nodemanager | Karam Singh | Junping Du |
| [YARN-5294](https://issues.apache.org/jira/browse/YARN-5294) | Pass remote ip address down to YarnAuthorizationProvider |  Major | . | Jian He | Jian He |
| [HDFS-10336](https://issues.apache.org/jira/browse/HDFS-10336) | TestBalancer failing intermittently because of not reseting UserGroupInformation completely |  Major | test | Yiqun Lin | Yiqun Lin |
| [YARN-4366](https://issues.apache.org/jira/browse/YARN-4366) | Fix Lint Warnings in YARN Common |  Major | yarn | Daniel Templeton | Daniel Templeton |
| [HADOOP-13315](https://issues.apache.org/jira/browse/HADOOP-13315) | FileContext#umask is not initialized properly |  Minor | . | John Zhuge | John Zhuge |
| [HADOOP-11361](https://issues.apache.org/jira/browse/HADOOP-11361) | Fix a race condition in MetricsSourceAdapter.updateJmxCache |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-5362](https://issues.apache.org/jira/browse/YARN-5362) | TestRMRestart#testFinishedAppRemovalAfterRMRestart can fail |  Major | . | Jason Lowe | sandflee |
| [HDFS-10544](https://issues.apache.org/jira/browse/HDFS-10544) | Balancer doesn\'t work with IPFailoverProxyProvider |  Major | balancer & mover, ha | Zhe Zhang | Zhe Zhang |
| [HDFS-10617](https://issues.apache.org/jira/browse/HDFS-10617) | PendingReconstructionBlocks.size() should be synchronized |  Major | . | Eric Badger | Eric Badger |
| [YARN-5383](https://issues.apache.org/jira/browse/YARN-5383) | Fix findbugs for nodemanager & checkstyle warnings in nodemanager.ContainerExecutor |  Major | nodemanager | Vrushali C | Vrushali C |
| [MAPREDUCE-6733](https://issues.apache.org/jira/browse/MAPREDUCE-6733) | MapReduce JerseyTest tests failing with "java.net.BindException: Address already in use" |  Critical | test | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-13254](https://issues.apache.org/jira/browse/HADOOP-13254) | Create framework for configurable disk checkers |  Major | util | Yufei Gu | Yufei Gu |
| [YARN-5272](https://issues.apache.org/jira/browse/YARN-5272) | Handle queue names consistently in FairScheduler |  Major | fairscheduler | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-5213](https://issues.apache.org/jira/browse/YARN-5213) | Fix a bug in LogCLIHelpers which cause TestLogsCLI#testFetchApplictionLogs fails intermittently |  Major | test | Rohith Sharma K S | Xuan Gong |
| [YARN-5195](https://issues.apache.org/jira/browse/YARN-5195) | RM intermittently crashed with NPE while handling APP\_ATTEMPT\_REMOVED event when async-scheduling enabled in CapacityScheduler |  Major | resourcemanager | Karam Singh | sandflee |
| [YARN-5441](https://issues.apache.org/jira/browse/YARN-5441) | Fixing minor Scheduler test case failures |  Major | . | Subru Krishnan | Subru Krishnan |
| [YARN-5440](https://issues.apache.org/jira/browse/YARN-5440) | Use AHSClient in YarnClient when TimelineServer is running |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5203](https://issues.apache.org/jira/browse/YARN-5203) | Return ResourceRequest JAXB object in ResourceManager Cluster Applications REST API |  Major | . | Subru Krishnan | Ellen Hui |
| [HDFS-9276](https://issues.apache.org/jira/browse/HDFS-9276) | Failed to Update HDFS Delegation Token for long running application in HA mode |  Major | fs, ha, security | Liangliang Gu | Liangliang Gu |
| [YARN-5436](https://issues.apache.org/jira/browse/YARN-5436) | Race in AsyncDispatcher can cause random test failures in Tez (probably YARN also) |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [HADOOP-13381](https://issues.apache.org/jira/browse/HADOOP-13381) | KMS clients should use KMS Delegation Tokens from current UGI. |  Critical | kms | Xiao Chen | Xiao Chen |
| [YARN-5444](https://issues.apache.org/jira/browse/YARN-5444) | Fix failing unit tests in TestLinuxContainerExecutorWithMocks |  Major | nodemanager | Yufei Gu | Yufei Gu |
| [MAPREDUCE-6724](https://issues.apache.org/jira/browse/MAPREDUCE-6724) | Single shuffle to memory must not exceed Integer#MAX\_VALUE |  Major | mrv2 | Haibo Chen | Haibo Chen |
| [HDFS-5805](https://issues.apache.org/jira/browse/HDFS-5805) | TestCheckpoint.testCheckpoint fails intermittently on branch2 |  Major | . | Mit Desai | Eric Badger |
| [HDFS-742](https://issues.apache.org/jira/browse/HDFS-742) | A down DataNode makes Balancer to hang on repeatingly asking NameNode its partial block list |  Minor | balancer & mover | Hairong Kuang | Mit Desai |
| [HDFS-10569](https://issues.apache.org/jira/browse/HDFS-10569) | A bug causes OutOfIndex error in BlockListAsLongs |  Minor | . | Weiwei Yang | Weiwei Yang |
| [HADOOP-13443](https://issues.apache.org/jira/browse/HADOOP-13443) | KMS should check the type of underlying keyprovider of KeyProviderExtension before falling back to default |  Minor | kms | Anthony Young-Garner | Anthony Young-Garner |
| [YARN-5333](https://issues.apache.org/jira/browse/YARN-5333) | Some recovered apps are put into default queue when RM HA |  Major | . | Jun Gong | Jun Gong |
| [HADOOP-13353](https://issues.apache.org/jira/browse/HADOOP-13353) | LdapGroupsMapping getPassward shouldn\'t return null when IOException throws |  Major | security | Zhaohao Liang | Wei-Chiu Chuang |
| [YARN-4624](https://issues.apache.org/jira/browse/YARN-4624) | NPE in PartitionQueueCapacitiesInfo while accessing Schduler UI |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-13403](https://issues.apache.org/jira/browse/HADOOP-13403) | AzureNativeFileSystem rename/delete performance improvements |  Major | azure | Subramanyam Pattipaka | Subramanyam Pattipaka |
| [HDFS-10457](https://issues.apache.org/jira/browse/HDFS-10457) | DataNode should not auto-format block pool directory if VERSION is missing |  Major | datanode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-4176](https://issues.apache.org/jira/browse/HDFS-4176) | EditLogTailer should call rollEdits with a timeout |  Major | ha, namenode | Todd Lipcon | Lei (Eddy) Xu |
| [HADOOP-13476](https://issues.apache.org/jira/browse/HADOOP-13476) | CredentialProviderFactory fails at class loading from libhdfs (JNI) |  Major | fs/s3 | Aaron Fabbri | Aaron Fabbri |
| [HDFS-8224](https://issues.apache.org/jira/browse/HDFS-8224) | Schedule a block for scanning if its metadata file is corrupt |  Major | datanode | Rushabh S Shah | Rushabh S Shah |
| [HADOOP-13461](https://issues.apache.org/jira/browse/HADOOP-13461) | NPE in KeyProvider.rollNewVersion |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [HDFS-8897](https://issues.apache.org/jira/browse/HDFS-8897) | Balancer should handle fs.defaultFS trailing slash in HA |  Major | balancer & mover | LINTE | John Zhuge |
| [HADOOP-13441](https://issues.apache.org/jira/browse/HADOOP-13441) | Document LdapGroupsMapping keystore password properties |  Minor | security | Wei-Chiu Chuang | Yuanbo Liu |
| [YARN-4833](https://issues.apache.org/jira/browse/YARN-4833) | For Queue AccessControlException client retries multiple times on both RM |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5491](https://issues.apache.org/jira/browse/YARN-5491) | Random Failure TestCapacityScheduler#testCSQueueBlocked |  Major | test | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5521](https://issues.apache.org/jira/browse/YARN-5521) | TestCapacityScheduler#testKillAllAppsInQueue fails randomly |  Major | . | Varun Saxena | sandflee |
| [HADOOP-13437](https://issues.apache.org/jira/browse/HADOOP-13437) | KMS should reload whitelist and default key ACLs when hot-reloading |  Major | kms | Xiao Chen | Xiao Chen |
| [YARN-5514](https://issues.apache.org/jira/browse/YARN-5514) | Clarify DecommissionType.FORCEFUL comment |  Minor | documentation | Robert Kanter | Vrushali C |
| [YARN-5475](https://issues.apache.org/jira/browse/YARN-5475) | Test failed for TestAggregatedLogFormat on trunk |  Major | . | Junping Du | Jun Gong |
| [YARN-5523](https://issues.apache.org/jira/browse/YARN-5523) | Yarn running container log fetching causes OutOfMemoryError |  Major | log-aggregation | Prasanth Jayachandran | Xuan Gong |
| [YARN-5526](https://issues.apache.org/jira/browse/YARN-5526) | DrainDispacher#ServiceStop blocked if setDrainEventsOnStop invoked |  Major | . | sandflee | sandflee |
| [YARN-5533](https://issues.apache.org/jira/browse/YARN-5533) | JMX AM Used metrics for queue wrong when app submited to nodelabel partition |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [MAPREDUCE-6762](https://issues.apache.org/jira/browse/MAPREDUCE-6762) | ControlledJob#toString failed with NPE when job status is not successfully updated |  Major | . | Weiwei Yang | Weiwei Yang |
| [HADOOP-13526](https://issues.apache.org/jira/browse/HADOOP-13526) | Add detailed logging in KMS for the authentication failure of proxy user |  Minor | kms | Suraj Acharya | Suraj Acharya |
| [HDFS-8312](https://issues.apache.org/jira/browse/HDFS-8312) | Trash does not descent into child directories to check for permissions |  Critical | fs, security | Eric Yang | Weiwei Yang |
| [YARN-5537](https://issues.apache.org/jira/browse/YARN-5537) | Intermittent test failure of TestAMRMClient#testAMRMClientWithContainerResourceChange |  Major | . | Varun Saxena | Bibin A Chundatt |
| [YARN-5430](https://issues.apache.org/jira/browse/YARN-5430) | Return container\'s ip and host from NM ContainerStatus call |  Major | . | Jian He | Jian He |
| [YARN-5373](https://issues.apache.org/jira/browse/YARN-5373) | NPE listing wildcard directory in containerLaunch |  Blocker | nodemanager | Haibo Chen | Daniel Templeton |
| [HADOOP-12765](https://issues.apache.org/jira/browse/HADOOP-12765) | HttpServer2 should switch to using the non-blocking SslSelectChannelConnector to prevent performance degradation when handling SSL connections |  Major | . | Min Shen | Min Shen |
| [HADOOP-13558](https://issues.apache.org/jira/browse/HADOOP-13558) | UserGroupInformation created from a Subject incorrectly tries to renew the Kerberos ticket |  Major | security | Alejandro Abdelnur | Xiao Chen |
| [MAPREDUCE-6628](https://issues.apache.org/jira/browse/MAPREDUCE-6628) | Potential memory leak in CryptoOutputStream |  Major | security | Mariappan Asokan | Mariappan Asokan |
| [HDFS-10832](https://issues.apache.org/jira/browse/HDFS-10832) | Propagate ACL bit and isEncrypted bit in HttpFS FileStatus permissions |  Critical | httpfs | Andrew Wang | Andrew Wang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9300](https://issues.apache.org/jira/browse/HDFS-9300) | TestDirectoryScanner.testThrottle() is still a little flakey |  Major | balancer & mover, test | Daniel Templeton | Daniel Templeton |
| [YARN-4704](https://issues.apache.org/jira/browse/YARN-4704) | TestResourceManager#testResourceAllocation() fails when using FairScheduler |  Major | fairscheduler, test | Ray Chiang | Yufei Gu |
| [HDFS-9888](https://issues.apache.org/jira/browse/HDFS-9888) | Allow reseting KerberosName in unit tests |  Minor | . | Xiao Chen | Xiao Chen |
| [HADOOP-12701](https://issues.apache.org/jira/browse/HADOOP-12701) | Run checkstyle on test source files |  Minor | . | John Zhuge | John Zhuge |
| [YARN-5024](https://issues.apache.org/jira/browse/YARN-5024) | TestContainerResourceUsage#testUsageAfterAMRestartWithMultipleContainers random failure |  Major | test | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5005](https://issues.apache.org/jira/browse/YARN-5005) | TestRMWebServices#testDumpingSchedulerLogs fails randomly |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5118](https://issues.apache.org/jira/browse/YARN-5118) | Tests fails with localizer port bind exception. |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-4989](https://issues.apache.org/jira/browse/YARN-4989) | TestWorkPreservingRMRestart#testCapacitySchedulerRecovery fails intermittently |  Major | test | Rohith Sharma K S | Ajith S |
| [YARN-5208](https://issues.apache.org/jira/browse/YARN-5208) | Run TestAMRMClient TestNMClient TestYarnClient TestClientRMTokens TestAMAuthorization tests with hadoop.security.token.service.use\_ip enabled |  Blocker | test | Rohith Sharma K S | Rohith Sharma K S |
| [HADOOP-13395](https://issues.apache.org/jira/browse/HADOOP-13395) | Enhance TestKMSAudit |  Minor | kms | Xiao Chen | Xiao Chen |
| [YARN-5343](https://issues.apache.org/jira/browse/YARN-5343) | TestContinuousScheduling#testSortedNodes fails intermittently |  Minor | . | sandflee | Yufei Gu |
| [YARN-2398](https://issues.apache.org/jira/browse/YARN-2398) | TestResourceTrackerOnHA crashes |  Major | test | Jason Lowe | Ajith S |
| [YARN-5608](https://issues.apache.org/jira/browse/YARN-5608) | TestAMRMClient.setup() fails with ArrayOutOfBoundsException |  Major | test | Daniel Templeton | Daniel Templeton |
| [HADOOP-7363](https://issues.apache.org/jira/browse/HADOOP-7363) | TestRawLocalFileSystemContract is needed |  Major | fs | Matt Foley | Andras Bokor |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9129](https://issues.apache.org/jira/browse/HDFS-9129) | Move the safemode block count into BlockManager |  Major | namenode | Haohui Mai | Mingliang Liu |
| [HDFS-9414](https://issues.apache.org/jira/browse/HDFS-9414) | Refactor reconfiguration of ClientDatanodeProtocol for reusability |  Major | . | Xiaobing Zhou | Xiaobing Zhou |
| [HDFS-9371](https://issues.apache.org/jira/browse/HDFS-9371) | Code cleanup for DatanodeManager |  Major | namenode | Jing Zhao | Jing Zhao |
| [YARN-1856](https://issues.apache.org/jira/browse/YARN-1856) | cgroups based memory monitoring for containers |  Major | nodemanager | Karthik Kambatla | Varun Vasudev |
| [YARN-2882](https://issues.apache.org/jira/browse/YARN-2882) | Add an OPPORTUNISTIC ExecutionType |  Major | nodemanager | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-3480](https://issues.apache.org/jira/browse/YARN-3480) | Recovery may get very slow with lots of services with lots of app-attempts |  Major | resourcemanager | Jun Gong | Jun Gong |
| [HDFS-9498](https://issues.apache.org/jira/browse/HDFS-9498) | Move code that tracks blocks with future generation stamps to BlockManagerSafeMode |  Major | namenode | Mingliang Liu | Mingliang Liu |
| [YARN-4550](https://issues.apache.org/jira/browse/YARN-4550) | some tests in TestContainerLanch fails on non-english locale environment |  Minor | nodemanager, test | Takashi Ohnishi | Takashi Ohnishi |
| [YARN-4335](https://issues.apache.org/jira/browse/YARN-4335) | Allow ResourceRequests to specify ExecutionType of a request ask |  Major | nodemanager, resourcemanager | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-4553](https://issues.apache.org/jira/browse/YARN-4553) | Add cgroups support for docker containers |  Major | yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-4526](https://issues.apache.org/jira/browse/YARN-4526) | Make SystemClock singleton so AppSchedulingInfo could use it |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [HDFS-9542](https://issues.apache.org/jira/browse/HDFS-9542) | Move BlockIdManager from FSNamesystem to BlockManager |  Major | namenode | Jing Zhao | Jing Zhao |
| [YARN-4578](https://issues.apache.org/jira/browse/YARN-4578) | Directories that are mounted in docker containers need to be more restrictive/container-specific |  Major | yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-4574](https://issues.apache.org/jira/browse/YARN-4574) | TestAMRMClientOnRMRestart fails on trunk |  Major | client, test | Takashi Ohnishi | Takashi Ohnishi |
| [YARN-4613](https://issues.apache.org/jira/browse/YARN-4613) | TestClientRMService#testGetClusterNodes fails occasionally |  Major | test | Jason Lowe | Takashi Ohnishi |
| [HDFS-9094](https://issues.apache.org/jira/browse/HDFS-9094) | Add command line option to ask NameNode reload configuration. |  Major | namenode | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-4633](https://issues.apache.org/jira/browse/YARN-4633) | TestRMRestart.testRMRestartAfterPreemption fails intermittently in trunk |  Major | test | Rohith Sharma K S | Bibin A Chundatt |
| [YARN-4543](https://issues.apache.org/jira/browse/YARN-4543) | TestNodeStatusUpdater.testStopReentrant fails + JUnit misusage |  Minor | nodemanager | Akihiro Suda | Akihiro Suda |
| [YARN-4615](https://issues.apache.org/jira/browse/YARN-4615) | TestAbstractYarnScheduler#testResourceRequestRecoveryToTheRightAppAttempt fails occasionally |  Major | test | Jason Lowe | Sunil G |
| [YARN-4684](https://issues.apache.org/jira/browse/YARN-4684) | TestYarnCLI#testGetContainers failing in CN locale |  Major | yarn | Bibin A Chundatt | Bibin A Chundatt |
| [HDFS-9754](https://issues.apache.org/jira/browse/HDFS-9754) | Avoid unnecessary getBlockCollection calls in BlockManager |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-9691](https://issues.apache.org/jira/browse/HDFS-9691) | TestBlockManagerSafeMode#testCheckSafeMode fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [HADOOP-12710](https://issues.apache.org/jira/browse/HADOOP-12710) | Remove dependency on commons-httpclient for TestHttpServerLogs |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-7964](https://issues.apache.org/jira/browse/HDFS-7964) | Add support for async edit logging |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [YARN-4749](https://issues.apache.org/jira/browse/YARN-4749) | Generalize config file handling in container-executor |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [HDFS-1477](https://issues.apache.org/jira/browse/HDFS-1477) | Support reconfiguring dfs.heartbeat.interval and dfs.namenode.heartbeat.recheck-interval without NN restart |  Major | namenode | Patrick Kling | Xiaobing Zhou |
| [YARN-4108](https://issues.apache.org/jira/browse/YARN-4108) | CapacityScheduler: Improve preemption to only kill containers that would satisfy the incoming request |  Major | capacity scheduler | Wangda Tan | Wangda Tan |
| [HADOOP-12926](https://issues.apache.org/jira/browse/HADOOP-12926) | lz4.c does not detect 64-bit mode properly |  Major | native | Alan Burlison | Alan Burlison |
| [HDFS-9005](https://issues.apache.org/jira/browse/HDFS-9005) | Provide configuration support for upgrade domain |  Major | . | Ming Ma | Ming Ma |
| [YARN-4805](https://issues.apache.org/jira/browse/YARN-4805) | Don\'t go through all schedulers in ParameterizedTestBase |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [HDFS-9349](https://issues.apache.org/jira/browse/HDFS-9349) | Support reconfiguring fs.protected.directories without NN restart |  Major | namenode | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-4822](https://issues.apache.org/jira/browse/YARN-4822) | Refactor existing Preemption Policy of CS for easier adding new approach to select preemption candidates |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-4811](https://issues.apache.org/jira/browse/YARN-4811) | Generate histograms in ContainerMetrics for actual container resource usage |  Major | . | Varun Vasudev | Varun Vasudev |
| [HADOOP-12753](https://issues.apache.org/jira/browse/HADOOP-12753) | S3A JUnit tests failing if using HTTP proxy |  Minor | fs/s3 | Zoran Rajic | Zoran Rajic |
| [HDFS-10209](https://issues.apache.org/jira/browse/HDFS-10209) | Support enable caller context in HDFS namenode audit log without restart namenode |  Major | . | Xiaoyu Yao | Xiaobing Zhou |
| [HDFS-10286](https://issues.apache.org/jira/browse/HDFS-10286) | Fix TestDFSAdmin#testNameNodeGetReconfigurableProperties |  Major | . | Xiaoyu Yao | Xiaobing Zhou |
| [HDFS-10284](https://issues.apache.org/jira/browse/HDFS-10284) | o.a.h.hdfs.server.blockmanagement.TestBlockManagerSafeMode.testCheckSafeMode fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [YARN-2883](https://issues.apache.org/jira/browse/YARN-2883) | Queuing of container requests in the NM |  Major | nodemanager, resourcemanager | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-4890](https://issues.apache.org/jira/browse/YARN-4890) | Unit test intermittent failure: TestNodeLabelContainerAllocation#testQueueUsedCapacitiesUpdate |  Major | . | Wangda Tan | Sunil G |
| [HDFS-10207](https://issues.apache.org/jira/browse/HDFS-10207) | Support enable Hadoop IPC backoff without namenode restart |  Major | . | Xiaoyu Yao | Xiaobing Zhou |
| [YARN-4968](https://issues.apache.org/jira/browse/YARN-4968) | A couple of AM retry unit tests need to wait SchedulerApplicationAttempt stopped. |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-4846](https://issues.apache.org/jira/browse/YARN-4846) | Random failures for TestCapacitySchedulerPreemption#testPreemptionPolicyShouldRespectAlreadyMarkedKillableContainers |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-2885](https://issues.apache.org/jira/browse/YARN-2885) | Create AMRMProxy request interceptor for distributed scheduling decisions for queueable containers |  Major | nodemanager, resourcemanager | Konstantinos Karanasos | Arun Suresh |
| [YARN-4966](https://issues.apache.org/jira/browse/YARN-4966) | Improve yarn logs to fetch container logs without specifying nodeId |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-4807](https://issues.apache.org/jira/browse/YARN-4807) | MockAM#waitForState sleep duration is too long |  Major | . | Karthik Kambatla | Yufei Gu |
| [YARN-3998](https://issues.apache.org/jira/browse/YARN-3998) | Add support in the NodeManager to re-launch containers |  Major | . | Jun Gong | Jun Gong |
| [YARN-4920](https://issues.apache.org/jira/browse/YARN-4920) | ATS/NM should support a link to dowload/get the logs in text format |  Major | yarn | Xuan Gong | Xuan Gong |
| [YARN-4905](https://issues.apache.org/jira/browse/YARN-4905) | Improve "yarn logs" command-line to optionally show log metadata also |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-4595](https://issues.apache.org/jira/browse/YARN-4595) | Add support for configurable read-only mounts when launching Docker containers |  Major | yarn | Billie Rinaldi | Billie Rinaldi |
| [YARN-4390](https://issues.apache.org/jira/browse/YARN-4390) | Do surgical preemption based on reserved container in CapacityScheduler |  Major | capacity scheduler | Eric Payne | Wangda Tan |
| [YARN-4778](https://issues.apache.org/jira/browse/YARN-4778) | Support specifying resources for task containers in SLS |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-4842](https://issues.apache.org/jira/browse/YARN-4842) | "yarn logs" command should not require the appOwner argument |  Major | . | Ram Venkatesh | Xuan Gong |
| [YARN-5073](https://issues.apache.org/jira/browse/YARN-5073) | Refactor startContainerInternal() in ContainerManager to remove unused parameter |  Minor | nodemanager, resourcemanager | Konstantinos Karanasos | Konstantinos Karanasos |
| [HDFS-9389](https://issues.apache.org/jira/browse/HDFS-9389) | Add maintenance states to AdminStates |  Major | . | Ming Ma | Ming Ma |
| [YARN-2888](https://issues.apache.org/jira/browse/YARN-2888) | Corrective mechanisms for rebalancing NM container queues |  Major | nodemanager, resourcemanager | Konstantinos Karanasos | Arun Suresh |
| [YARN-4738](https://issues.apache.org/jira/browse/YARN-4738) | Notify the RM about the status of OPPORTUNISTIC containers |  Major | nodemanager, resourcemanager | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-5075](https://issues.apache.org/jira/browse/YARN-5075) | Fix findbugs warning in hadoop-yarn-common module |  Major | . | Akira Ajisaka | Arun Suresh |
| [YARN-4412](https://issues.apache.org/jira/browse/YARN-4412) | Create ClusterMonitor to compute ordered list of preferred NMs for OPPORTUNITIC containers |  Major | nodemanager, resourcemanager | Arun Suresh | Arun Suresh |
| [YARN-5090](https://issues.apache.org/jira/browse/YARN-5090) | Add End-to-End test-cases for DistributedScheduling using MiniYarnCluster |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-4913](https://issues.apache.org/jira/browse/YARN-4913) | Yarn logs should take a -out option to write to a directory |  Major | . | Xuan Gong | Xuan Gong |
| [HDFS-2173](https://issues.apache.org/jira/browse/HDFS-2173) | saveNamespace should not throw IOE when only one storage directory fails to write VERSION file |  Major | . | Todd Lipcon | Andras Bokor |
| [YARN-5110](https://issues.apache.org/jira/browse/YARN-5110) | Fix OpportunisticContainerAllocator to insert complete HostAddress in issued ContainerTokenIds |  Major | . | Arun Suresh | Konstantinos Karanasos |
| [YARN-5016](https://issues.apache.org/jira/browse/YARN-5016) | Add support for a minimum retry interval for container retries |  Major | . | Varun Vasudev | Jun Gong |
| [HDFS-7766](https://issues.apache.org/jira/browse/HDFS-7766) | Add a flag to WebHDFS op=CREATE to not respond with a 307 redirect |  Major | ui, webhdfs | Ravi Prakash | Ravi Prakash |
| [YARN-5115](https://issues.apache.org/jira/browse/YARN-5115) | Avoid setting CONTENT-DISPOSITION header in the container-logs web-service |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5089](https://issues.apache.org/jira/browse/YARN-5089) | Improve "yarn log" command-line "logFiles" option to support regex |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5127](https://issues.apache.org/jira/browse/YARN-5127) | Expose ExecutionType in Container api record |  Major | . | Arun Suresh | Hitesh Sharma |
| [YARN-5117](https://issues.apache.org/jira/browse/YARN-5117) | QueuingContainerManager does not start GUARANTEED Container even if Resources are available |  Major | . | Arun Suresh | Konstantinos Karanasos |
| [YARN-4007](https://issues.apache.org/jira/browse/YARN-4007) | Add support for different network setups when launching the docker container |  Major | nodemanager | Varun Vasudev | Sidharta Seethana |
| [YARN-5141](https://issues.apache.org/jira/browse/YARN-5141) | Get Container logs for the Running application from Yarn Logs CommandLine |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5088](https://issues.apache.org/jira/browse/YARN-5088) | Improve "yarn log" command-line to read the last K bytes for the log files |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5162](https://issues.apache.org/jira/browse/YARN-5162) | Fix Exceptions thrown during registerAM call when Distributed Scheduling is Enabled |  Major | . | Arun Suresh | Hitesh Sharma |
| [HDFS-9877](https://issues.apache.org/jira/browse/HDFS-9877) | HDFS Namenode UI: Fix browsing directories that need to be encoded |  Major | ui | Ravi Prakash | Ravi Prakash |
| [HDFS-7767](https://issues.apache.org/jira/browse/HDFS-7767) | Use the noredirect flag in WebHDFS to allow web browsers to upload files via the NN UI |  Major | ui, webhdfs | Ravi Prakash | Ravi Prakash |
| [YARN-5180](https://issues.apache.org/jira/browse/YARN-5180) | Allow ResourceRequest to specify an enforceExecutionType flag |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-5204](https://issues.apache.org/jira/browse/YARN-5204) | Properly report status of killed/stopped queued containers |  Major | . | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-5191](https://issues.apache.org/jira/browse/YARN-5191) | Rename the “download=true” option for getLogs in NMWebServices and AHSWebServices |  Major | . | Xuan Gong | Xuan Gong |
| [HDFS-7987](https://issues.apache.org/jira/browse/HDFS-7987) | Allow files / directories to be moved |  Major | ui | Ravi Prakash | Ravi Prakash |
| [YARN-5124](https://issues.apache.org/jira/browse/YARN-5124) | Modify AMRMClient to set the ExecutionType in the ResourceRequest |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-5212](https://issues.apache.org/jira/browse/YARN-5212) | Run existing ContainerManager tests using QueuingContainerManagerImpl |  Major | . | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-4887](https://issues.apache.org/jira/browse/YARN-4887) | AM-RM protocol changes for identifying resource-requests explicitly |  Major | applications, resourcemanager | Subru Krishnan | Subru Krishnan |
| [HDFS-9016](https://issues.apache.org/jira/browse/HDFS-9016) | Display upgrade domain information in fsck |  Major | . | Ming Ma | Ming Ma |
| [YARN-5223](https://issues.apache.org/jira/browse/YARN-5223) | Container line in yarn logs output for a live application should include the hostname for the container |  Major | . | Siddharth Seth | Xuan Gong |
| [YARN-5122](https://issues.apache.org/jira/browse/YARN-5122) | "yarn logs" for running containers should print an explicit footer saying that the log may be incomplete |  Major | . | Vinod Kumar Vavilapalli | Jian He |
| [HDFS-9922](https://issues.apache.org/jira/browse/HDFS-9922) | Upgrade Domain placement policy status marks a good block in violation when there are decommissioned nodes |  Minor | . | Chris Trezzo | Chris Trezzo |
| [YARN-5251](https://issues.apache.org/jira/browse/YARN-5251) | Yarn CLI to obtain App logs for last \'n\' bytes fails with \'java.io.IOException\' and for \'n\' bytes fails with NumberFormatException |  Blocker | . | Sumana Sathish | Xuan Gong |
| [HDFS-10328](https://issues.apache.org/jira/browse/HDFS-10328) | Add per-cache-pool default replication num configuration |  Minor | caching | xupeng | xupeng |
| [YARN-5171](https://issues.apache.org/jira/browse/YARN-5171) | Extend DistributedSchedulerProtocol to notify RM of containers allocated by the Node |  Major | . | Arun Suresh | Inigo Goiri |
| [YARN-5227](https://issues.apache.org/jira/browse/YARN-5227) | yarn logs command: no need to specify -applicationId when specifying containerId |  Major | . | Jian He | Gergely Novák |
| [YARN-5224](https://issues.apache.org/jira/browse/YARN-5224) | Logs for a completed container are not available in the yarn logs output for a live application |  Major | . | Siddharth Seth | Xuan Gong |
| [YARN-5233](https://issues.apache.org/jira/browse/YARN-5233) | Support for specifying a path for ATS plugin jars |  Major | timelineserver | Li Lu | Li Lu |
| [YARN-5200](https://issues.apache.org/jira/browse/YARN-5200) | Improve yarn logs to get Container List |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5299](https://issues.apache.org/jira/browse/YARN-5299) | Log Docker run command when container fails |  Major | yarn | Varun Vasudev | Varun Vasudev |
| [YARN-4759](https://issues.apache.org/jira/browse/YARN-4759) | Fix signal handling for docker containers |  Major | yarn | Sidharta Seethana | Shane Kumpf |
| [YARN-5363](https://issues.apache.org/jira/browse/YARN-5363) | For AM containers, or for containers of running-apps, "yarn logs" incorrectly only (tries to) shows syslog file-type by default |  Major | log-aggregation | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-5298](https://issues.apache.org/jira/browse/YARN-5298) | Mount usercache and NM filecache directories into Docker container |  Major | yarn | Varun Vasudev | Sidharta Seethana |
| [YARN-5361](https://issues.apache.org/jira/browse/YARN-5361) | Obtaining logs for completed container says \'file belongs to a running container \' at the end |  Critical | . | Sumana Sathish | Xuan Gong |
| [YARN-5350](https://issues.apache.org/jira/browse/YARN-5350) | Distributed Scheduling: Ensure sort order of allocatable nodes returned by the RM is not lost |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-5392](https://issues.apache.org/jira/browse/YARN-5392) | Replace use of Priority in the Scheduling infrastructure with an opaque ShedulerRequestKey |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-5351](https://issues.apache.org/jira/browse/YARN-5351) | ResourceRequest should take ExecutionType into account during comparison |  Major | . | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-5113](https://issues.apache.org/jira/browse/YARN-5113) | Refactoring and other clean-up for distributed scheduling |  Major | . | Arun Suresh | Konstantinos Karanasos |
| [YARN-5458](https://issues.apache.org/jira/browse/YARN-5458) | Rename DockerStopCommandTest to TestDockerStopCommand |  Trivial | . | Shane Kumpf | Shane Kumpf |
| [YARN-5443](https://issues.apache.org/jira/browse/YARN-5443) | Add support for docker inspect command |  Major | yarn | Shane Kumpf | Shane Kumpf |
| [YARN-5226](https://issues.apache.org/jira/browse/YARN-5226) | remove AHS enable check from LogsCLI#fetchAMContainerLogs |  Major | . | Xuan Gong | Xuan Gong |
| [HDFS-10656](https://issues.apache.org/jira/browse/HDFS-10656) | Optimize conversion of byte arrays back to path string |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-10674](https://issues.apache.org/jira/browse/HDFS-10674) | Optimize creating a full path from an inode |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [YARN-5459](https://issues.apache.org/jira/browse/YARN-5459) | Add support for docker rm |  Minor | yarn | Shane Kumpf | Shane Kumpf |
| [YARN-5429](https://issues.apache.org/jira/browse/YARN-5429) | Fix @return related javadoc warnings in yarn-api |  Major | . | Vrushali C | Vrushali C |
| [YARN-4888](https://issues.apache.org/jira/browse/YARN-4888) | Changes in scheduler to identify resource-requests explicitly by allocation-id |  Major | resourcemanager | Subru Krishnan | Subru Krishnan |
| [YARN-5470](https://issues.apache.org/jira/browse/YARN-5470) | Differentiate exactly match with regex in yarn log CLI |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5394](https://issues.apache.org/jira/browse/YARN-5394) | Remove bind-mount /etc/passwd for Docker containers |  Major | yarn | Zhankun Tang | Zhankun Tang |
| [YARN-5137](https://issues.apache.org/jira/browse/YARN-5137) | Make DiskChecker pluggable in NodeManager |  Major | nodemanager | Ray Chiang | Yufei Gu |
| [HADOOP-13208](https://issues.apache.org/jira/browse/HADOOP-13208) | S3A listFiles(recursive=true) to do a bulk listObjects instead of walking the pseudo-tree of directories |  Minor | fs/s3 | Steve Loughran | Steve Loughran |
| [YARN-4676](https://issues.apache.org/jira/browse/YARN-4676) | Automatic and Asynchronous Decommissioning Nodes Status Tracking |  Major | resourcemanager | Daniel Zhi | Daniel Zhi |
| [HADOOP-13446](https://issues.apache.org/jira/browse/HADOOP-13446) | Support running isolated unit tests separate from AWS integration tests. |  Major | fs/s3 | Chris Nauroth | Chris Nauroth |
| [YARN-5042](https://issues.apache.org/jira/browse/YARN-5042) | Mount /sys/fs/cgroup into Docker containers as read only mount |  Major | yarn | Varun Vasudev | luhuichun |
| [YARN-5564](https://issues.apache.org/jira/browse/YARN-5564) | Fix typo in RM\_SCHEDULER\_RESERVATION\_THRESHOLD\_INCREMENT\_MULTIPLE |  Trivial | fairscheduler | Ray Chiang | Ray Chiang |
| [YARN-3940](https://issues.apache.org/jira/browse/YARN-3940) | Application moveToQueue should check NodeLabel permission |  Major | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5557](https://issues.apache.org/jira/browse/YARN-5557) | Add localize API to the ContainerManagementProtocol |  Major | . | Jian He | Jian He |
| [YARN-5327](https://issues.apache.org/jira/browse/YARN-5327) | API changes required to support recurring reservations in the YARN ReservationSystem |  Major | resourcemanager | Subru Krishnan | Sangeetha Abdu Jyothi |
| [YARN-4889](https://issues.apache.org/jira/browse/YARN-4889) | Changes in AMRMClient for identifying resource-requests explicitly |  Major | resourcemanager | Subru Krishnan | Arun Suresh |
| [HDFS-9392](https://issues.apache.org/jira/browse/HDFS-9392) | Admins support for maintenance state |  Major | . | Ming Ma | Ming Ma |
| [HDFS-10813](https://issues.apache.org/jira/browse/HDFS-10813) | DiskBalancer: Add the getNodeList method in Command |  Minor | balancer & mover | Yiqun Lin | Yiqun Lin |
| [YARN-5596](https://issues.apache.org/jira/browse/YARN-5596) | Fix failing unit test in TestDockerContainerRuntime |  Minor | nodemanager, yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-5264](https://issues.apache.org/jira/browse/YARN-5264) | Store all queue-specific information in FSQueue |  Major | . | Yufei Gu | Yufei Gu |
| [YARN-5576](https://issues.apache.org/jira/browse/YARN-5576) | Allow resource localization while container is running |  Major | . | Jian He | Jian He |
| [HADOOP-13447](https://issues.apache.org/jira/browse/HADOOP-13447) | Refactor S3AFileSystem to support introduction of separate metadata repository and tests. |  Major | fs/s3 | Chris Nauroth | Chris Nauroth |
| [HDFS-10673](https://issues.apache.org/jira/browse/HDFS-10673) | Optimize FSPermissionChecker\'s internal path usage |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [YARN-5620](https://issues.apache.org/jira/browse/YARN-5620) | Core changes in NodeManager to support re-initialization of Containers with new launchContext |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-4091](https://issues.apache.org/jira/browse/YARN-4091) | Add REST API to retrieve scheduler activity |  Major | capacity scheduler, resourcemanager | Sunil G | Chen Ge |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4535](https://issues.apache.org/jira/browse/YARN-4535) | Fix checkstyle error in CapacityScheduler.java |  Trivial | . | Rohith Sharma K S | Naganarasimha G R |
| [YARN-5297](https://issues.apache.org/jira/browse/YARN-5297) | Avoid printing a stack trace when recovering an app after the RM restarts |  Major | . | Siddharth Seth | Junping Du |


