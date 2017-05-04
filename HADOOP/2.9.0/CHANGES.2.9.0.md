
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

## Release 2.9.0 - Unreleased (as of 2017-05-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4784](https://issues.apache.org/jira/browse/YARN-4784) | Fairscheduler: defaultQueueSchedulingPolicy should not accept FIFO |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [MAPREDUCE-6776](https://issues.apache.org/jira/browse/MAPREDUCE-6776) | yarn.app.mapreduce.client.job.max-retries should have a more useful default |  Major | client | Daniel Templeton | Miklos Szegedi |
| [YARN-5388](https://issues.apache.org/jira/browse/YARN-5388) | Deprecate and remove DockerContainerExecutor |  Critical | nodemanager | Daniel Templeton | Daniel Templeton |
| [YARN-5825](https://issues.apache.org/jira/browse/YARN-5825) | ProportionalPreemptionalPolicy could use readLock over LeafQueue instead of synchronized block |  Major | capacity scheduler | Sunil G | Sunil G |
| [HADOOP-12705](https://issues.apache.org/jira/browse/HADOOP-12705) | Upgrade Jackson 2.2.3 to 2.7.8 |  Major | build | Steve Loughran | Sean Mackrory |
| [HADOOP-13050](https://issues.apache.org/jira/browse/HADOOP-13050) | Upgrade to AWS SDK 1.11.45 |  Blocker | build, fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-14174](https://issues.apache.org/jira/browse/HADOOP-14174) | Set default ADLS access token provider type to ClientCredential |  Major | fs/adl | John Zhuge | John Zhuge |
| [YARN-2962](https://issues.apache.org/jira/browse/YARN-2962) | ZKRMStateStore: Limit the number of znodes under a znode |  Critical | resourcemanager | Karthik Kambatla | Varun Saxena |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12321](https://issues.apache.org/jira/browse/HADOOP-12321) | Make JvmPauseMonitor an AbstractService |  Major | . | Steve Loughran | Sunil G |
| [HDFS-9525](https://issues.apache.org/jira/browse/HDFS-9525) | hadoop utilities need to support provided delegation tokens |  Blocker | security | Allen Wittenauer | HeeSoo Kim |
| [HADOOP-12702](https://issues.apache.org/jira/browse/HADOOP-12702) | Add an HDFS metrics sink |  Major | metrics | Daniel Templeton | Daniel Templeton |
| [HADOOP-12847](https://issues.apache.org/jira/browse/HADOOP-12847) | hadoop daemonlog should support https and SPNEGO for Kerberized cluster |  Major | security | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12747](https://issues.apache.org/jira/browse/HADOOP-12747) | support wildcard in libjars argument |  Major | util | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6690](https://issues.apache.org/jira/browse/MAPREDUCE-6690) | Limit the number of resources a single map reduce job can submit for localization |  Major | . | Chris Trezzo | Chris Trezzo |
| [HADOOP-13396](https://issues.apache.org/jira/browse/HADOOP-13396) | Allow pluggable audit loggers in KMS |  Major | kms | Xiao Chen | Xiao Chen |
| [HDFS-9820](https://issues.apache.org/jira/browse/HDFS-9820) | Improve distcp to support efficient restore to an earlier snapshot |  Major | distcp | Yongjun Zhang | Yongjun Zhang |
| [YARN-4597](https://issues.apache.org/jira/browse/YARN-4597) | Introduce ContainerScheduler and a SCHEDULED state to NodeManager container lifecycle |  Major | nodemanager | Chris Douglas | Arun Suresh |
| [HADOOP-13578](https://issues.apache.org/jira/browse/HADOOP-13578) | Add Codec for ZStandard Compression |  Major | . | churro morales | churro morales |
| [HADOOP-13933](https://issues.apache.org/jira/browse/HADOOP-13933) | Add haadmin -getAllServiceState option to get the HA state of all the NameNodes/ResourceManagers |  Major | tools | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [YARN-5910](https://issues.apache.org/jira/browse/YARN-5910) | Support for multi-cluster delegation tokens |  Minor | security | Clay B. | Jian He |
| [YARN-5864](https://issues.apache.org/jira/browse/YARN-5864) | YARN Capacity Scheduler - Queue Priorities |  Major | . | Wangda Tan | Wangda Tan |
| [HDFS-11194](https://issues.apache.org/jira/browse/HDFS-11194) | Maintain aggregated peer performance metrics on NameNode |  Major | namenode | Xiaobing Zhou | Arpit Agarwal |
| [MAPREDUCE-6871](https://issues.apache.org/jira/browse/MAPREDUCE-6871) | Allow users to specify racks and nodes for strict locality for AMs |  Major | client | Robert Kanter | Robert Kanter |
| [HDFS-11417](https://issues.apache.org/jira/browse/HDFS-11417) | Add datanode admin command to get the storage info. |  Major | . | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [YARN-679](https://issues.apache.org/jira/browse/YARN-679) | add an entry point that can start any Yarn service |  Major | api | Steve Loughran | Steve Loughran |


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
| [MAPREDUCE-6634](https://issues.apache.org/jira/browse/MAPREDUCE-6634) | Log uncaught exceptions/errors in various thread pools in mapreduce |  Major | . | Sidharta Seethana | Sidharta Seethana |
| [HADOOP-12817](https://issues.apache.org/jira/browse/HADOOP-12817) | Enable TLS v1.1 and 1.2 |  Major | security | Robert Kanter | Robert Kanter |
| [MAPREDUCE-6627](https://issues.apache.org/jira/browse/MAPREDUCE-6627) | Add machine-readable output to mapred job -history command |  Major | client | Robert Kanter | Robert Kanter |
| [YARN-4708](https://issues.apache.org/jira/browse/YARN-4708) | Missing default mapper type in TimelineServer performance test tool usage |  Minor | timelineserver | Kai Sasaki | Kai Sasaki |
| [HADOOP-12829](https://issues.apache.org/jira/browse/HADOOP-12829) | StatisticsDataReferenceCleaner swallows interrupt exceptions |  Minor | fs | Gregory Chanan | Gregory Chanan |
| [MAPREDUCE-6640](https://issues.apache.org/jira/browse/MAPREDUCE-6640) | mapred job -history command should be able to take Job ID |  Major | client | Robert Kanter | Robert Kanter |
| [YARN-4697](https://issues.apache.org/jira/browse/YARN-4697) | NM aggregation thread pool is not bound by limits |  Critical | nodemanager | Haibo Chen | Haibo Chen |
| [YARN-4579](https://issues.apache.org/jira/browse/YARN-4579) | Allow DefaultContainerExecutor container log directory permissions to be configurable |  Major | yarn | Ray Chiang | Ray Chiang |
| [HADOOP-12841](https://issues.apache.org/jira/browse/HADOOP-12841) | Update s3-related properties in core-default.xml |  Minor | fs/s3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-4718](https://issues.apache.org/jira/browse/YARN-4718) | Rename variables in SchedulerNode to reduce ambiguity post YARN-1011 |  Major | scheduler | Karthik Kambatla | Inigo Goiri |
| [HDFS-9521](https://issues.apache.org/jira/browse/HDFS-9521) | TransferFsImage.receiveFile should account and log separate times for image download and fsync to disk |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HADOOP-11404](https://issues.apache.org/jira/browse/HADOOP-11404) | Clarify the "expected client Kerberos principal is null" authorization message |  Minor | security | Stephen Chu | Stephen Chu |
| [YARN-4719](https://issues.apache.org/jira/browse/YARN-4719) | Add a helper library to maintain node state and allows common queries |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [HDFS-9928](https://issues.apache.org/jira/browse/HDFS-9928) | Make HDFS commands guide up to date |  Major | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-4560](https://issues.apache.org/jira/browse/YARN-4560) | Make scheduler error checking message more user friendly |  Trivial | yarn | Ray Chiang | Ray Chiang |
| [HDFS-9579](https://issues.apache.org/jira/browse/HDFS-9579) | Provide bytes-read-by-network-distance metrics at FileSystem.Statistics level |  Major | . | Ming Ma | Ming Ma |
| [YARN-4732](https://issues.apache.org/jira/browse/YARN-4732) | \*ProcessTree classes have too many whitespace issues |  Trivial | . | Karthik Kambatla | Gabor Liptak |
| [HADOOP-12952](https://issues.apache.org/jira/browse/HADOOP-12952) | /BUILDING example of zero-docs dist should skip javadocs |  Trivial | build, documentation | Steve Loughran | Steve Loughran |
| [YARN-4436](https://issues.apache.org/jira/browse/YARN-4436) | DistShell ApplicationMaster.ExecBatScripStringtPath is misspelled |  Trivial | applications/distributed-shell | Daniel Templeton | Matt LaMantia |
| [YARN-4607](https://issues.apache.org/jira/browse/YARN-4607) | Pagination support for AppAttempt page TotalOutstandingResource Requests table |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4769](https://issues.apache.org/jira/browse/YARN-4769) | Add support for CSRF header in the dump capacity scheduler logs and kill app buttons in RM web UI |  Major | . | Varun Vasudev | Varun Vasudev |
| [HADOOP-12984](https://issues.apache.org/jira/browse/HADOOP-12984) | Add GenericTestUtils.getTestDir method and use it for temporary directory in tests |  Major | build, test | Steve Loughran | Steve Loughran |
| [YARN-4541](https://issues.apache.org/jira/browse/YARN-4541) | Change log message in LocalizedResource#handle() to DEBUG |  Minor | . | Ray Chiang | Ray Chiang |
| [YARN-1297](https://issues.apache.org/jira/browse/YARN-1297) | FairScheduler: Move some logs to debug and check if debug logging is enabled |  Major | fairscheduler | Sandy Ryza | Yufei Gu |
| [YARN-5003](https://issues.apache.org/jira/browse/YARN-5003) | Add container resource to RM audit log |  Major | resourcemanager, scheduler | Nathan Roberts | Nathan Roberts |
| [HADOOP-13068](https://issues.apache.org/jira/browse/HADOOP-13068) | Clean up RunJar and related test class |  Trivial | util | Andras Bokor | Andras Bokor |
| [YARN-4577](https://issues.apache.org/jira/browse/YARN-4577) | Enable aux services to have their own custom classpath/jar file |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5053](https://issues.apache.org/jira/browse/YARN-5053) | More informative diagnostics when applications killed by a user |  Major | resourcemanager | Jason Lowe | Eric Badger |
| [MAPREDUCE-6686](https://issues.apache.org/jira/browse/MAPREDUCE-6686) | Add a way to download the job config from the mapred CLI |  Major | client | Robert Kanter | Robert Kanter |
| [HADOOP-12782](https://issues.apache.org/jira/browse/HADOOP-12782) | Faster LDAP group name resolution with ActiveDirectory |  Major | security | Wei-Chiu Chuang | Wei-Chiu Chuang |
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
| [HADOOP-13034](https://issues.apache.org/jira/browse/HADOOP-13034) | Log message about input options in distcp lacks some items |  Minor | tools/distcp | Takashi Ohnishi | Takashi Ohnishi |
| [HDFS-10568](https://issues.apache.org/jira/browse/HDFS-10568) | Reuse ObjectMapper instance in CombinedHostsFileReader and CombinedHostsFileWriter |  Major | hdfs-client | Yiqun Lin | Yiqun Lin |
| [HADOOP-13337](https://issues.apache.org/jira/browse/HADOOP-13337) | Update maven-enforcer-plugin version to 1.4.1 |  Major | build | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-4568](https://issues.apache.org/jira/browse/YARN-4568) | Fix message when NodeManager runs into errors initializing the recovery directory |  Major | yarn | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6717](https://issues.apache.org/jira/browse/MAPREDUCE-6717) | Remove deprecated StringUtils.getFormattedTimeWithDiff |  Minor | . | Akira Ajisaka | Shen Yinjie |
| [HDFS-10387](https://issues.apache.org/jira/browse/HDFS-10387) | DataTransferProtocol#writeBlock missing some javadocs |  Minor | datanode, hdfs | Yongjun Zhang | John Zhuge |
| [YARN-5339](https://issues.apache.org/jira/browse/YARN-5339) | passing file to -out for YARN log CLI doesnt give warning or error code |  Major | . | Sumana Sathish | Xuan Gong |
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
| [MAPREDUCE-6751](https://issues.apache.org/jira/browse/MAPREDUCE-6751) | Add debug log message when splitting is not possible due to unsplittable compression |  Minor | client, mrv1, mrv2 | Peter Vary | Peter Vary |
| [YARN-5455](https://issues.apache.org/jira/browse/YARN-5455) | Update Javadocs for LinuxContainerExecutor |  Major | nodemanager | Daniel Templeton | Daniel Templeton |
| [YARN-4702](https://issues.apache.org/jira/browse/YARN-4702) | FairScheduler: Allow setting maxResources for ad hoc queues |  Major | fairscheduler | Karthik Kambatla | Daniel Templeton |
| [HDFS-10645](https://issues.apache.org/jira/browse/HDFS-10645) | Make block report size as a metric and add this metric to datanode web ui |  Major | datanode, ui | Yuanbo Liu | Yuanbo Liu |
| [YARN-4491](https://issues.apache.org/jira/browse/YARN-4491) | yarn list command to support filtering by tags |  Minor | client | Steve Loughran | Varun Saxena |
| [HDFS-10784](https://issues.apache.org/jira/browse/HDFS-10784) | Implement WebHdfsFileSystem#listStatusIterator |  Major | webhdfs | Andrew Wang | Andrew Wang |
| [HDFS-10822](https://issues.apache.org/jira/browse/HDFS-10822) | Log DataNodes in the write pipeline |  Trivial | hdfs-client | John Zhuge | John Zhuge |
| [YARN-5616](https://issues.apache.org/jira/browse/YARN-5616) | Clean up WeightAdjuster |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [HDFS-10778](https://issues.apache.org/jira/browse/HDFS-10778) | Add -format option to make the output of FileDistribution processor human-readable in OfflineImageViewer |  Major | tools | Yiqun Lin | Yiqun Lin |
| [HDFS-10847](https://issues.apache.org/jira/browse/HDFS-10847) | Complete the document for FileDistribution processor in OfflineImageViewer |  Minor | documentation | Yiqun Lin | Yiqun Lin |
| [HDFS-10837](https://issues.apache.org/jira/browse/HDFS-10837) | Standardize serializiation of WebHDFS DirectoryListing |  Major | webhdfs | Andrew Wang | Andrew Wang |
| [HADOOP-13411](https://issues.apache.org/jira/browse/HADOOP-13411) | Checkstyle suppression by annotation or comment |  Minor | . | John Zhuge | John Zhuge |
| [HADOOP-13412](https://issues.apache.org/jira/browse/HADOOP-13412) | Move dev-support/checkstyle/suppressions.xml to hadoop-build-tools |  Trivial | . | John Zhuge | John Zhuge |
| [HDFS-10823](https://issues.apache.org/jira/browse/HDFS-10823) | Implement HttpFSFileSystem#listStatusIterator |  Major | httpfs | Andrew Wang | Andrew Wang |
| [MAPREDUCE-6632](https://issues.apache.org/jira/browse/MAPREDUCE-6632) | Master.getMasterAddress() should be updated to use YARN-4629 |  Minor | applicationmaster | Daniel Templeton | Daniel Templeton |
| [YARN-5400](https://issues.apache.org/jira/browse/YARN-5400) | Light cleanup in ZKRMStateStore |  Trivial | resourcemanager | Daniel Templeton | Daniel Templeton |
| [MAPREDUCE-6718](https://issues.apache.org/jira/browse/MAPREDUCE-6718) | add progress log to JHS during startup |  Minor | jobhistoryserver | Haibo Chen | Haibo Chen |
| [MAPREDUCE-6638](https://issues.apache.org/jira/browse/MAPREDUCE-6638) | Do not attempt to recover progress from previous job attempts if spill encryption is enabled |  Major | applicationmaster | Karthik Kambatla | Haibo Chen |
| [YARN-5551](https://issues.apache.org/jira/browse/YARN-5551) | Ignore file backed pages from memory computation when smaps is enabled |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [YARN-5466](https://issues.apache.org/jira/browse/YARN-5466) | DefaultContainerExecutor needs JavaDocs |  Minor | nodemanager | Daniel Templeton | Daniel Templeton |
| [HADOOP-13522](https://issues.apache.org/jira/browse/HADOOP-13522) | Add %A and %a formats for fs -stat command to print permissions |  Major | fs | Alex Garbarini | Alex Garbarini |
| [HADOOP-13737](https://issues.apache.org/jira/browse/HADOOP-13737) | Cleanup DiskChecker interface |  Major | util | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-13702](https://issues.apache.org/jira/browse/HADOOP-13702) | Add a new instrumented read-write lock |  Major | common | Jingcheng Du | Jingcheng Du |
| [MAPREDUCE-6792](https://issues.apache.org/jira/browse/MAPREDUCE-6792) | Allow user\'s full principal name as owner of MapReduce staging directory in JobSubmissionFiles#JobStagingDir() |  Major | client | Santhosh G Nayak | Santhosh G Nayak |
| [YARN-5575](https://issues.apache.org/jira/browse/YARN-5575) | Many classes use bare yarn. properties instead of the defined constants |  Major | . | Daniel Templeton | Daniel Templeton |
| [HDFS-11049](https://issues.apache.org/jira/browse/HDFS-11049) | The description of dfs.block.replicator.classname is not clear |  Minor | documentation | Yiqun Lin | Yiqun Lin |
| [YARN-4456](https://issues.apache.org/jira/browse/YARN-4456) | Clean up Lint warnings in nodemanager |  Minor | nodemanager | Daniel Templeton | Daniel Templeton |
| [YARN-4668](https://issues.apache.org/jira/browse/YARN-4668) | Reuse objectMapper instance in Yarn |  Major | timelineclient | Yiqun Lin | Yiqun Lin |
| [YARN-4907](https://issues.apache.org/jira/browse/YARN-4907) | Make all MockRM#waitForState consistent. |  Major | resourcemanager | Yufei Gu | Yufei Gu |
| [YARN-4396](https://issues.apache.org/jira/browse/YARN-4396) | Log the trace information on FSAppAttempt#assignContainer |  Major | applications, fairscheduler | Yiqun Lin | Yiqun Lin |
| [HADOOP-13738](https://issues.apache.org/jira/browse/HADOOP-13738) | DiskChecker should perform some disk IO |  Major | . | Arpit Agarwal | Arpit Agarwal |
| [HDFS-11088](https://issues.apache.org/jira/browse/HDFS-11088) | Quash unnecessary safemode WARN message during NameNode startup |  Trivial | . | Andrew Wang | Yiqun Lin |
| [YARN-4998](https://issues.apache.org/jira/browse/YARN-4998) | Minor cleanup to UGI use in AdminService |  Trivial | resourcemanager | Daniel Templeton | Daniel Templeton |
| [HDFS-10756](https://issues.apache.org/jira/browse/HDFS-10756) | Expose getTrashRoot to HTTPFS and WebHDFS |  Major | encryption, httpfs, webhdfs | Xiao Chen | Yuanbo Liu |
| [YARN-5356](https://issues.apache.org/jira/browse/YARN-5356) | NodeManager should communicate physical resource capability to ResourceManager |  Major | nodemanager, resourcemanager | Nathan Roberts | Inigo Goiri |
| [HADOOP-13802](https://issues.apache.org/jira/browse/HADOOP-13802) | Make generic options help more consistent, and aligned |  Minor | . | Grant Sohn | Grant Sohn |
| [HDFS-9482](https://issues.apache.org/jira/browse/HDFS-9482) | Replace DatanodeInfo constructors with a builder pattern |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-13687](https://issues.apache.org/jira/browse/HADOOP-13687) | Provide a unified dependency artifact that transitively includes the cloud storage modules shipped with Hadoop. |  Major | build | Chris Nauroth | Chris Nauroth |
| [YARN-5552](https://issues.apache.org/jira/browse/YARN-5552) | Add Builder methods for common yarn API records |  Major | . | Arun Suresh | Tao Jie |
| [YARN-4033](https://issues.apache.org/jira/browse/YARN-4033) | In FairScheduler, parent queues should also display queue status |  Major | fairscheduler | Siqi Li | Siqi Li |
| [HADOOP-13427](https://issues.apache.org/jira/browse/HADOOP-13427) | Eliminate needless uses of FileSystem#{exists(), isFile(), isDirectory()} |  Major | fs | Steve Loughran | Mingliang Liu |
| [YARN-5375](https://issues.apache.org/jira/browse/YARN-5375) | invoke MockRM#drainEvents implicitly in MockRM methods to reduce test failures |  Major | resourcemanager | sandflee | sandflee |
| [YARN-5722](https://issues.apache.org/jira/browse/YARN-5722) | FairScheduler hides group resolution exceptions when assigning queue |  Major | fairscheduler | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [HADOOP-11552](https://issues.apache.org/jira/browse/HADOOP-11552) | Allow handoff on the server side for RPC requests |  Major | ipc | Siddharth Seth | Siddharth Seth |
| [HADOOP-13605](https://issues.apache.org/jira/browse/HADOOP-13605) | Clean up FileSystem javadocs, logging; improve diagnostics on FS load |  Major | fs | Steve Loughran | Steve Loughran |
| [HADOOP-13018](https://issues.apache.org/jira/browse/HADOOP-13018) | Make Kdiag check whether hadoop.token.files points to existent and valid files |  Major | . | Ravi Prakash | Ravi Prakash |
| [YARN-5890](https://issues.apache.org/jira/browse/YARN-5890) | FairScheduler should log information about AM-resource-usage and max-AM-share for queues |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [HDFS-7588](https://issues.apache.org/jira/browse/HDFS-7588) | Improve the HDFS Web UI browser to allow chowning / chmoding, creating dirs and uploading files |  Major | ui, webhdfs | Ravi Prakash | Ravi Prakash |
| [YARN-4997](https://issues.apache.org/jira/browse/YARN-4997) | Update fair scheduler to use pluggable auth provider |  Major | fairscheduler | Daniel Templeton | Tao Jie |
| [MAPREDUCE-6787](https://issues.apache.org/jira/browse/MAPREDUCE-6787) | Allow job\_conf.xml to be downloadable on the job overview page in JHS |  Major | jobhistoryserver | Haibo Chen | Haibo Chen |
| [HDFS-11211](https://issues.apache.org/jira/browse/HDFS-11211) | Add a time unit to the DataNode client trace format |  Minor | datanode | Akira Ajisaka | Jagadesh Kiran N |
| [HDFS-10206](https://issues.apache.org/jira/browse/HDFS-10206) | Datanodes not sorted properly by distance when the reader isn\'t a datanode |  Major | . | Ming Ma | Nandakumar |
| [HADOOP-13709](https://issues.apache.org/jira/browse/HADOOP-13709) | Ability to clean up subprocesses spawned by Shell when the process exits |  Major | . | Eric Badger | Eric Badger |
| [HDFS-10930](https://issues.apache.org/jira/browse/HDFS-10930) | Refactor: Wrap Datanode IO related operations |  Major | datanode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-10959](https://issues.apache.org/jira/browse/HDFS-10959) | Adding per disk IO statistics and metrics in DataNode. |  Major | datanode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-10913](https://issues.apache.org/jira/browse/HDFS-10913) | Introduce fault injectors to simulate slow mirrors |  Major | datanode, test | Xiaobing Zhou | Xiaobing Zhou |
| [HADOOP-13863](https://issues.apache.org/jira/browse/HADOOP-13863) | Azure: Add a new SAS key mode for WASB. |  Major | fs/azure | Dushyanth | Dushyanth |
| [HDFS-10917](https://issues.apache.org/jira/browse/HDFS-10917) | Collect peer performance statistics on DataNode. |  Major | datanode | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-5969](https://issues.apache.org/jira/browse/YARN-5969) | FairShareComparator: Cache value of getResourceUsage for better performance |  Major | fairscheduler | zhangshilong | zhangshilong |
| [HDFS-11279](https://issues.apache.org/jira/browse/HDFS-11279) | Cleanup unused DataNode#checkDiskErrorAsync() |  Minor | . | Xiaoyu Yao | Hanisha Koneru |
| [HDFS-11156](https://issues.apache.org/jira/browse/HDFS-11156) | Add new op GETFILEBLOCKLOCATIONS to WebHDFS REST API |  Major | webhdfs | Weiwei Yang | Weiwei Yang |
| [YARN-6015](https://issues.apache.org/jira/browse/YARN-6015) | AsyncDispatcher thread name can be set to improved debugging |  Major | . | Ajith S | Ajith S |
| [HADOOP-13953](https://issues.apache.org/jira/browse/HADOOP-13953) | Make FTPFileSystem\'s data connection mode and transfer mode configurable |  Major | fs | Xiao Chen | Xiao Chen |
| [HDFS-11299](https://issues.apache.org/jira/browse/HDFS-11299) | Support multiple Datanode File IO hooks |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [YARN-5849](https://issues.apache.org/jira/browse/YARN-5849) | Automatically create YARN control group for pre-mounted cgroups |  Minor | . | Miklos Szegedi | Miklos Szegedi |
| [HDFS-11339](https://issues.apache.org/jira/browse/HDFS-11339) | Support File IO sampling for Datanode IO profiling hooks |  Major | datanode | Hanisha Koneru | Hanisha Koneru |
| [HDFS-11274](https://issues.apache.org/jira/browse/HDFS-11274) | Datanode should only check the failed volume upon IO errors |  Major | datanode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-11306](https://issues.apache.org/jira/browse/HDFS-11306) | Print remaining edit logs from buffer if edit log can\'t be rolled. |  Major | ha, namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-6028](https://issues.apache.org/jira/browse/YARN-6028) | Add document for container metrics |  Major | documentation, nodemanager | Weiwei Yang | Weiwei Yang |
| [MAPREDUCE-6728](https://issues.apache.org/jira/browse/MAPREDUCE-6728) | Give fetchers hint when ShuffleHandler rejects a shuffling connection |  Major | mrv2 | Haibo Chen | Haibo Chen |
| [YARN-5547](https://issues.apache.org/jira/browse/YARN-5547) | NMLeveldbStateStore should be more tolerant of unknown keys |  Major | nodemanager | Jason Lowe | Ajith S |
| [HDFS-10534](https://issues.apache.org/jira/browse/HDFS-10534) | NameNode WebUI should display DataNode usage histogram |  Major | namenode, ui | Zhe Zhang | Kai Sasaki |
| [MAPREDUCE-6829](https://issues.apache.org/jira/browse/MAPREDUCE-6829) | Add peak memory usage counter for each task |  Major | mrv2 | Yufei Gu | Miklos Szegedi |
| [HADOOP-14003](https://issues.apache.org/jira/browse/HADOOP-14003) | Make additional KMS tomcat settings configurable |  Major | kms | Andrew Wang | Andrew Wang |
| [HDFS-11374](https://issues.apache.org/jira/browse/HDFS-11374) | Skip FSync in Test util CreateEditsLog to speed up edit log generation |  Minor | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HDFS-9884](https://issues.apache.org/jira/browse/HDFS-9884) | Use doxia macro to generate in-page TOC of HDFS site documentation |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-6131](https://issues.apache.org/jira/browse/YARN-6131) | FairScheduler: Lower update interval for faster tests |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-6106](https://issues.apache.org/jira/browse/YARN-6106) | Document FairScheduler \'allowPreemptionFrom\' queue property |  Minor | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-4658](https://issues.apache.org/jira/browse/YARN-4658) | Typo in o.a.h.yarn.server.resourcemanager.scheduler.fair.TestFairScheduler comment |  Major | . | Daniel Templeton | Udai Kiran Potluri |
| [MAPREDUCE-6644](https://issues.apache.org/jira/browse/MAPREDUCE-6644) | Use doxia macro to generate in-page TOC of MapReduce site documentation |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-11112](https://issues.apache.org/jira/browse/HDFS-11112) | Journal Nodes should refuse to format non-empty directories |  Major | . | Arpit Agarwal | Yiqun Lin |
| [HADOOP-14050](https://issues.apache.org/jira/browse/HADOOP-14050) | Add process name to kms process |  Minor | kms, scripts | Rushabh S Shah | Rushabh S Shah |
| [HADOOP-14053](https://issues.apache.org/jira/browse/HADOOP-14053) | Update the link to HTrace SpanReceivers |  Minor | documentation | Akira Ajisaka | Yiqun Lin |
| [HADOOP-12097](https://issues.apache.org/jira/browse/HADOOP-12097) | Allow port range to be specified while starting webapp |  Major | . | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6404](https://issues.apache.org/jira/browse/MAPREDUCE-6404) | Allow AM to specify a port range for starting its webapp |  Major | applicationmaster | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6842](https://issues.apache.org/jira/browse/MAPREDUCE-6842) | Update the links in PiEstimator document |  Minor | documentation | Akira Ajisaka | Jung Yoo |
| [HDFS-11390](https://issues.apache.org/jira/browse/HDFS-11390) | Add process name to httpfs process |  Minor | httpfs, scripts | John Zhuge | Weiwei Yang |
| [HDFS-11409](https://issues.apache.org/jira/browse/HDFS-11409) | DatanodeInfo getNetworkLocation and setNetworkLocation shoud use volatile instead of synchronized |  Minor | performance | Chen Liang | Chen Liang |
| [YARN-6061](https://issues.apache.org/jira/browse/YARN-6061) | Add an UncaughtExceptionHandler for critical threads in RM |  Major | resourcemanager | Yufei Gu | Yufei Gu |
| [YARN-4753](https://issues.apache.org/jira/browse/YARN-4753) | Use doxia macro to generate in-page TOC of YARN site documentation |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-11333](https://issues.apache.org/jira/browse/HDFS-11333) | Print a user friendly error message when plugins are not found |  Minor | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-6174](https://issues.apache.org/jira/browse/YARN-6174) | Log files pattern should be same for both running and finished container |  Major | yarn | Sumana Sathish | Xuan Gong |
| [HDFS-11375](https://issues.apache.org/jira/browse/HDFS-11375) | Display the volume storage type in datanode UI |  Minor | datanode, ui | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [YARN-6125](https://issues.apache.org/jira/browse/YARN-6125) | The application attempt\'s diagnostic message should have a maximum size |  Critical | resourcemanager | Daniel Templeton | Andras Piros |
| [HDFS-11406](https://issues.apache.org/jira/browse/HDFS-11406) | Remove unused getStartInstance and getFinalizeInstance in FSEditLogOp |  Trivial | . | Andrew Wang | Alison Yu |
| [HDFS-11438](https://issues.apache.org/jira/browse/HDFS-11438) | Fix typo in error message of StoragePolicyAdmin tool |  Trivial | . | Alison Yu | Alison Yu |
| [YARN-6194](https://issues.apache.org/jira/browse/YARN-6194) | Cluster capacity in SchedulingPolicy is updated only on allocation file reload |  Major | fairscheduler | Karthik Kambatla | Yufei Gu |
| [HADOOP-14097](https://issues.apache.org/jira/browse/HADOOP-14097) | Remove Java6 specific code from GzipCodec.java |  Minor | . | Akira Ajisaka | Elek, Marton |
| [HADOOP-13817](https://issues.apache.org/jira/browse/HADOOP-13817) | Add a finite shell command timeout to ShellBasedUnixGroupsMapping |  Minor | security | Harsh J | Harsh J |
| [HDFS-11295](https://issues.apache.org/jira/browse/HDFS-11295) | Check storage remaining instead of node remaining in BlockPlacementPolicyDefault.chooseReplicaToDelete() |  Major | namenode | Xiao Liang | Elek, Marton |
| [HADOOP-14083](https://issues.apache.org/jira/browse/HADOOP-14083) | KMS should support old SSL clients |  Minor | kms | John Zhuge | John Zhuge |
| [HADOOP-14127](https://issues.apache.org/jira/browse/HADOOP-14127) | Add log4j configuration to enable logging in hadoop-distcp\'s tests |  Minor | test | Xiao Chen | Xiao Chen |
| [YARN-6189](https://issues.apache.org/jira/browse/YARN-6189) | Improve application status log message when RM restarted when app is in NEW state |  Major | . | Yesha Vora | Junping Du |
| [HDFS-11418](https://issues.apache.org/jira/browse/HDFS-11418) | HttpFS should support old SSL clients |  Minor | httpfs | John Zhuge | John Zhuge |
| [HDFS-11461](https://issues.apache.org/jira/browse/HDFS-11461) | DataNode Disk Outlier Detection |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HADOOP-13930](https://issues.apache.org/jira/browse/HADOOP-13930) | Azure: Add Authorization support to WASB |  Major | fs/azure | Dushyanth | Sivaguru Sankaridurg |
| [HDFS-11494](https://issues.apache.org/jira/browse/HDFS-11494) | Log message when DN is not selected for block replication |  Minor | . | Yiqun Lin | Yiqun Lin |
| [HDFS-8741](https://issues.apache.org/jira/browse/HDFS-8741) | Proper error msg to be printed when invalid operation type is given to WebHDFS operations |  Minor | webhdfs | Archana T | Surendra Singh Lilhore |
| [HADOOP-14108](https://issues.apache.org/jira/browse/HADOOP-14108) | CLI MiniCluster: add an option to specify NameNode HTTP port |  Minor | . | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-10838](https://issues.apache.org/jira/browse/HDFS-10838) | Last full block report received time for each DN should be easily discoverable |  Major | ui | Arpit Agarwal | Surendra Singh Lilhore |
| [HDFS-11477](https://issues.apache.org/jira/browse/HDFS-11477) | Simplify file IO profiling configuration |  Minor | . | Hanisha Koneru | Hanisha Koneru |
| [YARN-6287](https://issues.apache.org/jira/browse/YARN-6287) | RMCriticalThreadUncaughtExceptionHandler.rmContext should be final |  Minor | resourcemanager | Daniel Templeton | Corey Barker |
| [HADOOP-14150](https://issues.apache.org/jira/browse/HADOOP-14150) | Implement getHomeDirectory() method in NativeAzureFileSystem |  Critical | fs/azure | Namit Maheshwari | Santhosh G Nayak |
| [YARN-6300](https://issues.apache.org/jira/browse/YARN-6300) | NULL\_UPDATE\_REQUESTS is redundant in TestFairScheduler |  Minor | . | Daniel Templeton | Yuanbo Liu |
| [YARN-6042](https://issues.apache.org/jira/browse/YARN-6042) | Dump scheduler and queue state information into FairScheduler DEBUG log |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [HDFS-11511](https://issues.apache.org/jira/browse/HDFS-11511) | Support Timeout when checking single disk |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HDFS-11517](https://issues.apache.org/jira/browse/HDFS-11517) | Expose slow disks via DataNode JMX |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HADOOP-14169](https://issues.apache.org/jira/browse/HADOOP-14169) | Implement listStatusIterator, listLocatedStatus for ViewFs |  Minor | viewfs | Erik Krogen | Erik Krogen |
| [HDFS-11547](https://issues.apache.org/jira/browse/HDFS-11547) | Add logs for slow BlockReceiver while writing data to disk |  Major | datanode | Xiaobing Zhou | Xiaobing Zhou |
| [MAPREDUCE-6865](https://issues.apache.org/jira/browse/MAPREDUCE-6865) | Fix typo in javadoc for DistributedCache |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [YARN-6309](https://issues.apache.org/jira/browse/YARN-6309) | Fair scheduler docs should have the queue and queuePlacementPolicy elements listed in bold so that they\'re easier to see |  Minor | fairscheduler | Daniel Templeton | esmaeil mirzaee |
| [HADOOP-13945](https://issues.apache.org/jira/browse/HADOOP-13945) | Azure: Add Kerberos and Delegation token support to WASB client. |  Major | fs/azure | Santhosh G Nayak | Santhosh G Nayak |
| [HDFS-11545](https://issues.apache.org/jira/browse/HDFS-11545) | Propagate DataNode\'s slow disks info to the NameNode via Heartbeat |  Major | . | Hanisha Koneru | Hanisha Koneru |
| [YARN-6284](https://issues.apache.org/jira/browse/YARN-6284) | hasAlreadyRun should be final in ResourceManager.StandByTransitionRunnable |  Major | resourcemanager | Daniel Templeton | Laura Adams |
| [HADOOP-14213](https://issues.apache.org/jira/browse/HADOOP-14213) | Move Configuration runtime check for hadoop-site.xml to initialization |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [HDFS-11534](https://issues.apache.org/jira/browse/HDFS-11534) | Add counters for number of blocks in pending IBR |  Major | hdfs | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-5956](https://issues.apache.org/jira/browse/YARN-5956) | Refactor ClientRMService to unify error handling across apis |  Minor | resourcemanager | Kai Sasaki | Kai Sasaki |
| [YARN-6379](https://issues.apache.org/jira/browse/YARN-6379) | Remove unused argument in ClientRMService |  Trivial | . | Kai Sasaki | Kai Sasaki |
| [HADOOP-14233](https://issues.apache.org/jira/browse/HADOOP-14233) | Delay construction of PreCondition.check failure message in Configuration#set |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [HADOOP-14240](https://issues.apache.org/jira/browse/HADOOP-14240) | Configuration#get return value optimization |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [HDFS-11170](https://issues.apache.org/jira/browse/HDFS-11170) | Add builder-based create API to FileSystem |  Major | . | SammiChen | SammiChen |
| [YARN-6329](https://issues.apache.org/jira/browse/YARN-6329) | Remove unnecessary TODO comment from AppLogAggregatorImpl.java |  Minor | . | Akira Ajisaka | victor bertschinger |
| [HDFS-11551](https://issues.apache.org/jira/browse/HDFS-11551) | Handle SlowDiskReport from DataNode at the NameNode |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HDFS-11603](https://issues.apache.org/jira/browse/HDFS-11603) | Improve slow mirror/disk warnings in BlockReceiver |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-11560](https://issues.apache.org/jira/browse/HDFS-11560) | Expose slow disks via NameNode JMX |  Major | namenode | Hanisha Koneru | Hanisha Koneru |
| [HDFS-9651](https://issues.apache.org/jira/browse/HDFS-9651) | All web UIs should include a robots.txt file |  Minor | . | Lars Francke | Lars Francke |
| [HDFS-11628](https://issues.apache.org/jira/browse/HDFS-11628) | Clarify the behavior of HDFS Mover in documentation |  Major | documentation | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-6381](https://issues.apache.org/jira/browse/YARN-6381) | FSAppAttempt has several variables that should be final |  Major | fairscheduler | Daniel Templeton | Ameet Zaveri |
| [HDFS-11302](https://issues.apache.org/jira/browse/HDFS-11302) | Improve Logging for SSLHostnameVerifier |  Major | security | Xiaoyu Yao | Chen Liang |
| [YARN-5797](https://issues.apache.org/jira/browse/YARN-5797) | Add metrics to the node manager for cleaning the PUBLIC and PRIVATE caches |  Major | . | Chris Trezzo | Chris Trezzo |
| [HADOOP-14276](https://issues.apache.org/jira/browse/HADOOP-14276) | Add a nanosecond API to Time/Timer/FakeTimer |  Minor | util | Erik Krogen | Erik Krogen |
| [YARN-6195](https://issues.apache.org/jira/browse/YARN-6195) | Export UsedCapacity and AbsoluteUsedCapacity to JMX |  Major | capacityscheduler, metrics, yarn | Benson Qiu | Benson Qiu |
| [HADOOP-14246](https://issues.apache.org/jira/browse/HADOOP-14246) | Authentication Tokens should use SecureRandom instead of Random and 256 bit secrets |  Major | security | Robert Kanter | Robert Kanter |
| [HADOOP-14274](https://issues.apache.org/jira/browse/HADOOP-14274) | Azure: Simplify Ranger-WASB policy model |  Major | fs/azure | Sivaguru Sankaridurg | Sivaguru Sankaridurg |
| [MAPREDUCE-6673](https://issues.apache.org/jira/browse/MAPREDUCE-6673) | Add a test example job that grows in memory usage over time |  Major | test | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-11794](https://issues.apache.org/jira/browse/HADOOP-11794) | Enable distcp to copy blocks in parallel |  Major | tools/distcp | dhruba borthakur | Yongjun Zhang |
| [YARN-6406](https://issues.apache.org/jira/browse/YARN-6406) | Remove SchedulerRequestKeys when no more pending ResourceRequest |  Major | . | Arun Suresh | Arun Suresh |
| [HDFS-11634](https://issues.apache.org/jira/browse/HDFS-11634) | Optimize BlockIterator when iterating starts in the middle. |  Major | . | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-14141](https://issues.apache.org/jira/browse/HADOOP-14141) | Store KMS SSL keystore password in catalina.properties |  Minor | kms | John Zhuge | John Zhuge |
| [YARN-6164](https://issues.apache.org/jira/browse/YARN-6164) | Expose Queue Configurations per Node Label through YARN client api |  Major | . | Benson Qiu | Benson Qiu |
| [YARN-6392](https://issues.apache.org/jira/browse/YARN-6392) | Add submit time to Application Summary log |  Minor | resourcemanager | zhihai xu | zhihai xu |
| [HADOOP-12856](https://issues.apache.org/jira/browse/HADOOP-12856) | FileUtil.checkDest() and RawLocalFileSystem.mkdirs() to throw stricter IOEs; RawLocalFS contract tests to verify |  Minor | fs | Steve Loughran | Steve Loughran |
| [HDFS-11384](https://issues.apache.org/jira/browse/HDFS-11384) | Add option for balancer to disperse getBlocks calls to avoid NameNode\'s rpc.CallQueueLength spike |  Major | balancer & mover | yunjiong zhao | Konstantin Shvachko |
| [HDFS-8873](https://issues.apache.org/jira/browse/HDFS-8873) | Allow the directoryScanner to be rate-limited |  Major | datanode | Nathan Roberts | Daniel Templeton |
| [HDFS-11722](https://issues.apache.org/jira/browse/HDFS-11722) | Change Datanode file IO profiling sampling to percentage |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-7256](https://issues.apache.org/jira/browse/HADOOP-7256) | Resource leak during failure scenario of closing of resources. |  Minor | util | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [YARN-524](https://issues.apache.org/jira/browse/YARN-524) | TestYarnVersionInfo failing if generated properties doesn\'t include an SVN URL |  Minor | api | Steve Loughran | Steve Loughran |
| [MAPREDUCE-5875](https://issues.apache.org/jira/browse/MAPREDUCE-5875) | Make Counter limits consistent across JobClient, MRAppMaster, and YarnChild |  Major | applicationmaster, client, task | Gera Shegalov | Gera Shegalov |
| [YARN-4156](https://issues.apache.org/jira/browse/YARN-4156) | TestAMRestart#testAMBlacklistPreventsRestartOnSameNode assumes CapacityScheduler |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-4417](https://issues.apache.org/jira/browse/YARN-4417) | Make RM and Timeline-server REST APIs more consistent |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-4522](https://issues.apache.org/jira/browse/YARN-4522) | Queue acl can be checked at app submission |  Major | . | Jian He | Jian He |
| [YARN-4530](https://issues.apache.org/jira/browse/YARN-4530) | LocalizedResource trigger a NPE Cause the NodeManager exit |  Major | . | tangshangwen | tangshangwen |
| [HADOOP-12655](https://issues.apache.org/jira/browse/HADOOP-12655) | TestHttpServer.testBindAddress bind port range is wider than expected |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12573](https://issues.apache.org/jira/browse/HADOOP-12573) | TestRPC.testClientBackOff failing |  Major | test | Steve Loughran | Xiao Chen |
| [HADOOP-12653](https://issues.apache.org/jira/browse/HADOOP-12653) | Use SO\_REUSEADDR to avoid getting "Address already in use" when using kerberos and attempting to bind to any port on the local IP address |  Major | net | Colin P. McCabe | Colin P. McCabe |
| [YARN-4571](https://issues.apache.org/jira/browse/YARN-4571) | Make app id/name available to the yarn authorizer provider for better auditing |  Major | . | Jian He | Jian He |
| [YARN-4551](https://issues.apache.org/jira/browse/YARN-4551) | Address the duplication between StatusUpdateWhenHealthy and StatusUpdateWhenUnhealthy transitions |  Minor | nodemanager | Karthik Kambatla | Sunil G |
| [HDFS-9517](https://issues.apache.org/jira/browse/HDFS-9517) | Fix missing @Test annotation on TestDistCpUtils.testUnpackAttributes |  Trivial | distcp | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9624](https://issues.apache.org/jira/browse/HDFS-9624) | DataNode start slowly due to the initial DU command operations |  Major | . | Yiqun Lin | Yiqun Lin |
| [YARN-4611](https://issues.apache.org/jira/browse/YARN-4611) | Fix scheduler load simulator to support multi-layer network location |  Major | . | Ming Ma | Ming Ma |
| [YARN-4584](https://issues.apache.org/jira/browse/YARN-4584) | RM startup failure when AM attempts greater than max-attempts |  Critical | . | Bibin A Chundatt | Bibin A Chundatt |
| [HDFS-9618](https://issues.apache.org/jira/browse/HDFS-9618) | Fix mismatch between log level and guard in BlockManager#computeRecoveryWorkForBlocks |  Minor | namenode | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-4497](https://issues.apache.org/jira/browse/YARN-4497) | RM might fail to restart when recovering apps whose attempts are missing |  Critical | . | Jun Gong | Jun Gong |
| [YARN-4612](https://issues.apache.org/jira/browse/YARN-4612) | Fix rumen and scheduler load simulator handle killed tasks properly |  Major | . | Ming Ma | Ming Ma |
| [MAPREDUCE-6620](https://issues.apache.org/jira/browse/MAPREDUCE-6620) | Jobs that did not start are shown as starting in 1969 in the JHS web UI |  Major | jobhistoryserver | Daniel Templeton | Haibo Chen |
| [YARN-4625](https://issues.apache.org/jira/browse/YARN-4625) | Make ApplicationSubmissionContext and ApplicationSubmissionContextInfo more consistent |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-4594](https://issues.apache.org/jira/browse/YARN-4594) | container-executor fails to remove directory tree when chmod required |  Major | nodemanager | Colin P. McCabe | Colin P. McCabe |
| [YARN-4669](https://issues.apache.org/jira/browse/YARN-4669) | Fix logging statements in resource manager\'s Application class |  Trivial | . | Sidharta Seethana | Sidharta Seethana |
| [YARN-4629](https://issues.apache.org/jira/browse/YARN-4629) | Distributed shell breaks under strong security |  Major | applications/distributed-shell, security | Daniel Templeton | Daniel Templeton |
| [HDFS-9608](https://issues.apache.org/jira/browse/HDFS-9608) | Disk IO imbalance in HDFS with heterogeneous storages |  Major | . | Wei Zhou | Wei Zhou |
| [YARN-4689](https://issues.apache.org/jira/browse/YARN-4689) | FairScheduler: Cleanup preemptContainer to be more readable |  Trivial | fairscheduler | Karthik Kambatla | Kai Sasaki |
| [YARN-4651](https://issues.apache.org/jira/browse/YARN-4651) | movetoqueue option does not documented in \'YARN Commands\' |  Major | documentation | Takashi Ohnishi | Takashi Ohnishi |
| [YARN-4648](https://issues.apache.org/jira/browse/YARN-4648) | Move preemption related tests from TestFairScheduler to TestFairSchedulerPreemption |  Major | fairscheduler | Karthik Kambatla | Kai Sasaki |
| [YARN-4729](https://issues.apache.org/jira/browse/YARN-4729) | SchedulerApplicationAttempt#getTotalRequiredResources can throw an NPE |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-4701](https://issues.apache.org/jira/browse/YARN-4701) | When task logs are not available, port 8041 is referenced instead of port 8042 |  Major | yarn | Haibo Chen | Haibo Chen |
| [HDFS-9858](https://issues.apache.org/jira/browse/HDFS-9858) | RollingFileSystemSink can throw an NPE on non-secure clusters |  Major | . | Daniel Templeton | Daniel Templeton |
| [YARN-4731](https://issues.apache.org/jira/browse/YARN-4731) | container-executor should not follow symlinks in recursive\_unlink\_children |  Blocker | . | Bibin A Chundatt | Colin P. McCabe |
| [HADOOP-10321](https://issues.apache.org/jira/browse/HADOOP-10321) | TestCompositeService should cover all enumerations of adding a service to a parent service |  Major | . | Karthik Kambatla | Ray Chiang |
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
| [YARN-4657](https://issues.apache.org/jira/browse/YARN-4657) | Javadoc comment is broken for Resources.multiplyByAndAddTo() |  Trivial | . | Daniel Templeton | Daniel Templeton |
| [YARN-4880](https://issues.apache.org/jira/browse/YARN-4880) | Running TestZKRMStateStorePerf with real zookeeper cluster throws NPE |  Major | . | Rohith Sharma K S | Sunil G |
| [YARN-4609](https://issues.apache.org/jira/browse/YARN-4609) | RM Nodes list page takes too much time to load |  Major | webapp | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4906](https://issues.apache.org/jira/browse/YARN-4906) | Capture container start/finish time in container metrics |  Major | . | Jian He | Jian He |
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
| [HDFS-10306](https://issues.apache.org/jira/browse/HDFS-10306) | SafeModeMonitor should not leave safe mode if name system is starting active service |  Major | namenode | Mingliang Liu | Mingliang Liu |
| [YARN-4935](https://issues.apache.org/jira/browse/YARN-4935) | TestYarnClient#testSubmitIncorrectQueue fails with FairScheduler |  Major | test | Yufei Gu | Yufei Gu |
| [MAPREDUCE-2398](https://issues.apache.org/jira/browse/MAPREDUCE-2398) | MRBench: setting the baseDir parameter has no effect |  Minor | benchmarks | Michael Noll | Wilfred Spiegelenburg |
| [YARN-4976](https://issues.apache.org/jira/browse/YARN-4976) | Missing NullPointer check in ContainerLaunchContextPBImpl causes RM to die |  Major | resourcemanager | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [YARN-4795](https://issues.apache.org/jira/browse/YARN-4795) | ContainerMetrics drops records |  Major | resourcemanager | Daniel Templeton | Daniel Templeton |
| [YARN-4983](https://issues.apache.org/jira/browse/YARN-4983) | JVM and UGI metrics disappear after RM is once transitioned to standby mode |  Major | . | Li Lu | Li Lu |
| [MAPREDUCE-6286](https://issues.apache.org/jira/browse/MAPREDUCE-6286) | A typo in HistoryViewer makes some code useless, which causes counter limits are not reset correctly. |  Major | client | zhihai xu | zhihai xu |
| [HADOOP-13012](https://issues.apache.org/jira/browse/HADOOP-13012) | yetus-wrapper should fail sooner when download fails |  Minor | yetus | Steven K. Wong | Steven K. Wong |
| [HADOOP-12469](https://issues.apache.org/jira/browse/HADOOP-12469) | distcp should not ignore the ignoreFailures option |  Critical | tools/distcp | Gera Shegalov | Mingliang Liu |
| [MAPREDUCE-6677](https://issues.apache.org/jira/browse/MAPREDUCE-6677) | LocalContainerAllocator doesn\'t specify resource of the containers allocated. |  Major | mr-am | Haibo Chen | Haibo Chen |
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
| [HDFS-10468](https://issues.apache.org/jira/browse/HDFS-10468) | HDFS read ends up ignoring an interrupt |  Major | . | Siddharth Seth | Jing Zhao |
| [MAPREDUCE-6240](https://issues.apache.org/jira/browse/MAPREDUCE-6240) | Hadoop client displays confusing error message |  Major | client | Mohammad Kamrul Islam | Gera Shegalov |
| [YARN-4308](https://issues.apache.org/jira/browse/YARN-4308) | ContainersAggregated CPU resource utilization reports negative usage in first few heartbeats |  Major | nodemanager | Sunil G | Sunil G |
| [HDFS-10508](https://issues.apache.org/jira/browse/HDFS-10508) | DFSInputStream should set thread\'s interrupt status after catching InterruptException from sleep |  Major | . | Jing Zhao | Jing Zhao |
| [HADOOP-13243](https://issues.apache.org/jira/browse/HADOOP-13243) | TestRollingFileSystemSink.testSetInitialFlushTime() fails intermittently |  Minor | test | Daniel Templeton | Daniel Templeton |
| [YARN-5077](https://issues.apache.org/jira/browse/YARN-5077) | Fix FSLeafQueue#getFairShare() for queues with zero fairshare |  Major | . | Yufei Gu | Yufei Gu |
| [HDFS-10437](https://issues.apache.org/jira/browse/HDFS-10437) | ReconfigurationProtocol not covered by HDFSPolicyProvider. |  Major | namenode | Chris Nauroth | Arpit Agarwal |
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
| [YARN-4366](https://issues.apache.org/jira/browse/YARN-4366) | Fix Lint Warnings in YARN Common |  Major | yarn | Daniel Templeton | Daniel Templeton |
| [YARN-5362](https://issues.apache.org/jira/browse/YARN-5362) | TestRMRestart#testFinishedAppRemovalAfterRMRestart can fail |  Major | . | Jason Lowe | sandflee |
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
| [YARN-5436](https://issues.apache.org/jira/browse/YARN-5436) | Race in AsyncDispatcher can cause random test failures in Tez (probably YARN also) |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [YARN-5444](https://issues.apache.org/jira/browse/YARN-5444) | Fix failing unit tests in TestLinuxContainerExecutorWithMocks |  Major | nodemanager | Yufei Gu | Yufei Gu |
| [HADOOP-13443](https://issues.apache.org/jira/browse/HADOOP-13443) | KMS should check the type of underlying keyprovider of KeyProviderExtension before falling back to default |  Minor | kms | Anthony Young-Garner | Anthony Young-Garner |
| [YARN-5333](https://issues.apache.org/jira/browse/YARN-5333) | Some recovered apps are put into default queue when RM HA |  Major | . | Jun Gong | Jun Gong |
| [HADOOP-13353](https://issues.apache.org/jira/browse/HADOOP-13353) | LdapGroupsMapping getPassward shouldn\'t return null when IOException throws |  Major | security | Zhaohao Liang | Wei-Chiu Chuang |
| [HADOOP-13403](https://issues.apache.org/jira/browse/HADOOP-13403) | AzureNativeFileSystem rename/delete performance improvements |  Major | fs/azure | Subramanyam Pattipaka | Subramanyam Pattipaka |
| [HDFS-10457](https://issues.apache.org/jira/browse/HDFS-10457) | DataNode should not auto-format block pool directory if VERSION is missing |  Major | datanode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-4176](https://issues.apache.org/jira/browse/HDFS-4176) | EditLogTailer should call rollEdits with a timeout |  Major | ha, namenode | Todd Lipcon | Lei (Eddy) Xu |
| [HADOOP-13476](https://issues.apache.org/jira/browse/HADOOP-13476) | CredentialProviderFactory fails at class loading from libhdfs (JNI) |  Major | fs/s3 | Aaron Fabbri | Aaron Fabbri |
| [HADOOP-13461](https://issues.apache.org/jira/browse/HADOOP-13461) | NPE in KeyProvider.rollNewVersion |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [HADOOP-13441](https://issues.apache.org/jira/browse/HADOOP-13441) | Document LdapGroupsMapping keystore password properties |  Minor | security | Wei-Chiu Chuang | Yuanbo Liu |
| [YARN-4833](https://issues.apache.org/jira/browse/YARN-4833) | For Queue AccessControlException client retries multiple times on both RM |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5521](https://issues.apache.org/jira/browse/YARN-5521) | TestCapacityScheduler#testKillAllAppsInQueue fails randomly |  Major | . | Varun Saxena | sandflee |
| [HADOOP-13437](https://issues.apache.org/jira/browse/HADOOP-13437) | KMS should reload whitelist and default key ACLs when hot-reloading |  Major | kms | Xiao Chen | Xiao Chen |
| [YARN-5514](https://issues.apache.org/jira/browse/YARN-5514) | Clarify DecommissionType.FORCEFUL comment |  Minor | documentation | Robert Kanter | Vrushali C |
| [YARN-5475](https://issues.apache.org/jira/browse/YARN-5475) | Test failed for TestAggregatedLogFormat on trunk |  Major | . | Junping Du | Jun Gong |
| [YARN-5523](https://issues.apache.org/jira/browse/YARN-5523) | Yarn running container log fetching causes OutOfMemoryError |  Major | log-aggregation | Prasanth Jayachandran | Xuan Gong |
| [HADOOP-11786](https://issues.apache.org/jira/browse/HADOOP-11786) | Fix Javadoc typos in org.apache.hadoop.fs.FileSystem |  Trivial | documentation | Chen He | Andras Bokor |
| [YARN-5526](https://issues.apache.org/jira/browse/YARN-5526) | DrainDispacher#ServiceStop blocked if setDrainEventsOnStop invoked |  Major | . | sandflee | sandflee |
| [YARN-5533](https://issues.apache.org/jira/browse/YARN-5533) | JMX AM Used metrics for queue wrong when app submited to nodelabel partition |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [MAPREDUCE-6762](https://issues.apache.org/jira/browse/MAPREDUCE-6762) | ControlledJob#toString failed with NPE when job status is not successfully updated |  Major | . | Weiwei Yang | Weiwei Yang |
| [HADOOP-13526](https://issues.apache.org/jira/browse/HADOOP-13526) | Add detailed logging in KMS for the authentication failure of proxy user |  Minor | kms | Suraj Acharya | Suraj Acharya |
| [HDFS-8312](https://issues.apache.org/jira/browse/HDFS-8312) | Trash does not descent into child directories to check for permissions |  Critical | fs, security | Eric Yang | Weiwei Yang |
| [YARN-5537](https://issues.apache.org/jira/browse/YARN-5537) | Intermittent test failure of TestAMRMClient#testAMRMClientWithContainerResourceChange |  Major | . | Varun Saxena | Bibin A Chundatt |
| [YARN-5430](https://issues.apache.org/jira/browse/YARN-5430) | Return container\'s ip and host from NM ContainerStatus call |  Major | . | Jian He | Jian He |
| [YARN-5373](https://issues.apache.org/jira/browse/YARN-5373) | NPE listing wildcard directory in containerLaunch |  Blocker | nodemanager | Haibo Chen | Daniel Templeton |
| [MAPREDUCE-6628](https://issues.apache.org/jira/browse/MAPREDUCE-6628) | Potential memory leak in CryptoOutputStream |  Major | security | Mariappan Asokan | Mariappan Asokan |
| [MAPREDUCE-6777](https://issues.apache.org/jira/browse/MAPREDUCE-6777) | Typos in 4 log messages |  Trivial | . | Mehran Hassani | Mehran Hassani |
| [YARN-5642](https://issues.apache.org/jira/browse/YARN-5642) | Typos in 9 log messages |  Trivial | . | Mehran Hassani | Mehran Hassani |
| [YARN-5657](https://issues.apache.org/jira/browse/YARN-5657) | Fix TestDefaultContainerExecutor |  Major | test | Akira Ajisaka | Arun Suresh |
| [HADOOP-13602](https://issues.apache.org/jira/browse/HADOOP-13602) | Fix some warnings by findbugs in hadoop-maven-plugin |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-4973](https://issues.apache.org/jira/browse/YARN-4973) | YarnWebParams next.fresh.interval should be next.refresh.interval |  Minor | webapp | Daniel Templeton | Daniel Templeton |
| [YARN-5662](https://issues.apache.org/jira/browse/YARN-5662) | Provide an option to enable ContainerMonitor |  Major | . | Jian He | Jian He |
| [HADOOP-13164](https://issues.apache.org/jira/browse/HADOOP-13164) | Optimize S3AFileSystem::deleteUnnecessaryFakeDirectories |  Minor | fs/s3 | Rajesh Balamohan | Rajesh Balamohan |
| [YARN-5693](https://issues.apache.org/jira/browse/YARN-5693) | Reduce loglevel to Debug in ContainerManagementProtocolProxy and AMRMClientImpl |  Major | yarn | Yufei Gu | Yufei Gu |
| [YARN-5678](https://issues.apache.org/jira/browse/YARN-5678) | Log demand as demand in FSLeafQueue and FSParentQueue |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-5672](https://issues.apache.org/jira/browse/YARN-5672) | FairScheduler: wrong queue name in log when adding application |  Minor | fairscheduler | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-4767](https://issues.apache.org/jira/browse/YARN-4767) | Network issues can cause persistent RM UI outage |  Critical | webapp | Daniel Templeton | Daniel Templeton |
| [MAPREDUCE-6789](https://issues.apache.org/jira/browse/MAPREDUCE-6789) | Fix TestAMWebApp failure |  Major | test | Akira Ajisaka | Daniel Templeton |
| [HADOOP-13690](https://issues.apache.org/jira/browse/HADOOP-13690) | Fix typos in core-default.xml |  Minor | documentation | Yiqun Lin | Yiqun Lin |
| [HDFS-10969](https://issues.apache.org/jira/browse/HDFS-10969) | Fix typos in hdfs-default.xml |  Minor | documentation | Yiqun Lin | Yiqun Lin |
| [YARN-5057](https://issues.apache.org/jira/browse/YARN-5057) | resourcemanager.security.TestDelegationTokenRenewer fails in trunk |  Major | . | Yongjun Zhang | Jason Lowe |
| [HADOOP-13697](https://issues.apache.org/jira/browse/HADOOP-13697) | LogLevel#main throws exception if no arguments provided |  Major | . | Mingliang Liu | Mingliang Liu |
| [HDFS-10699](https://issues.apache.org/jira/browse/HDFS-10699) | Log object instance get incorrectly in TestDFSAdmin |  Minor | . | Yiqun Lin | Yiqun Lin |
| [HDFS-10423](https://issues.apache.org/jira/browse/HDFS-10423) | Increase default value of httpfs maxHttpHeaderSize |  Minor | hdfs | Nicolae Popa | Nicolae Popa |
| [HADOOP-13626](https://issues.apache.org/jira/browse/HADOOP-13626) | Remove distcp dependency on FileStatus serialization |  Major | tools/distcp | Chris Douglas | Chris Douglas |
| [YARN-5711](https://issues.apache.org/jira/browse/YARN-5711) | Propogate exceptions back to client when using hedging RM failover provider |  Critical | applications, resourcemanager | Subru Krishnan | Subru Krishnan |
| [YARN-5754](https://issues.apache.org/jira/browse/YARN-5754) | Null check missing for earliest in FifoPolicy |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [HDFS-11040](https://issues.apache.org/jira/browse/HDFS-11040) | Add documentation for HDFS-9820 distcp improvement |  Major | distcp | Yongjun Zhang | Yongjun Zhang |
| [HDFS-9929](https://issues.apache.org/jira/browse/HDFS-9929) | Duplicate keys in NAMENODE\_SPECIFIC\_KEYS |  Minor | namenode | Akira Ajisaka | Akira Ajisaka |
| [YARN-5752](https://issues.apache.org/jira/browse/YARN-5752) | TestLocalResourcesTrackerImpl#testLocalResourceCache times out |  Major | . | Eric Badger | Eric Badger |
| [YARN-5710](https://issues.apache.org/jira/browse/YARN-5710) | Fix inconsistent naming in class ResourceRequest |  Trivial | yarn | Yufei Gu | Yufei Gu |
| [YARN-5686](https://issues.apache.org/jira/browse/YARN-5686) | DefaultContainerExecutor random working dir algorigthm skews results |  Minor | . | Miklos Szegedi | Vrushali C |
| [MAPREDUCE-6798](https://issues.apache.org/jira/browse/MAPREDUCE-6798) | Fix intermittent failure of TestJobHistoryParsing.testJobHistoryMethods() |  Major | jobhistoryserver | Haibo Chen | Haibo Chen |
| [YARN-5757](https://issues.apache.org/jira/browse/YARN-5757) | RM REST API documentation is not up to date |  Trivial | resourcemanager, yarn | Miklos Szegedi | Miklos Szegedi |
| [YARN-5420](https://issues.apache.org/jira/browse/YARN-5420) | Delete org.apache.hadoop.yarn.server.resourcemanager.resource.Priority as its not necessary |  Minor | resourcemanager | Sunil G | Sunil G |
| [YARN-5172](https://issues.apache.org/jira/browse/YARN-5172) | Update yarn daemonlog documentation due to HADOOP-12847 |  Trivial | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-4388](https://issues.apache.org/jira/browse/YARN-4388) | Cleanup "mapreduce.job.hdfs-servers" from yarn-default.xml |  Minor | yarn | Junping Du | Junping Du |
| [YARN-2306](https://issues.apache.org/jira/browse/YARN-2306) | Add test for leakage of reservation metrics in fair scheduler |  Minor | fairscheduler | Hong Zhiguo | Hong Zhiguo |
| [YARN-4743](https://issues.apache.org/jira/browse/YARN-4743) | FairSharePolicy breaks TimSort assumption |  Major | fairscheduler | Zephyr Guo | Zephyr Guo |
| [YARN-5793](https://issues.apache.org/jira/browse/YARN-5793) | Trim configuration values in DockerLinuxContainerRuntime |  Minor | nodemanager | Tianyin Xu | Tianyin Xu |
| [YARN-5809](https://issues.apache.org/jira/browse/YARN-5809) | AsyncDispatcher possibly invokes multiple shutdown thread when handling exception |  Major | . | Jian He | Jian He |
| [YARN-5805](https://issues.apache.org/jira/browse/YARN-5805) | Add isDebugEnabled check for debug logs in nodemanager |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5788](https://issues.apache.org/jira/browse/YARN-5788) | Apps not activiated and AM limit resource in UI and REST not updated after -replaceLabelsOnNode |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [MAPREDUCE-6765](https://issues.apache.org/jira/browse/MAPREDUCE-6765) | MR should not schedule container requests in cases where reducer or mapper containers demand resource larger than the maximum supported |  Minor | mr-am | Haibo Chen | Haibo Chen |
| [HDFS-11095](https://issues.apache.org/jira/browse/HDFS-11095) | BlockManagerSafeMode should respect extension period default config value (30s) |  Minor | namenode | Mingliang Liu | Mingliang Liu |
| [YARN-4862](https://issues.apache.org/jira/browse/YARN-4862) | Handle duplicate completed containers in RMNodeImpl |  Major | resourcemanager | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-5377](https://issues.apache.org/jira/browse/YARN-5377) | Fix TestQueuingContainerManager.testKillMultipleOpportunisticContainers |  Major | . | Rohith Sharma K S | Konstantinos Karanasos |
| [MAPREDUCE-6782](https://issues.apache.org/jira/browse/MAPREDUCE-6782) | JHS task page search based on each individual column not working |  Major | jobhistoryserver | Bibin A Chundatt | Ajith S |
| [HADOOP-13789](https://issues.apache.org/jira/browse/HADOOP-13789) | Hadoop Common includes generated test protos in both jar and test-jar |  Major | build, common | Sean Busbey | Sean Busbey |
| [YARN-5823](https://issues.apache.org/jira/browse/YARN-5823) | Update NMTokens in case of requests with only opportunistic containers |  Blocker | . | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-5862](https://issues.apache.org/jira/browse/YARN-5862) | TestDiskFailures.testLocalDirsFailures failed |  Major | . | Yufei Gu | Yufei Gu |
| [YARN-5453](https://issues.apache.org/jira/browse/YARN-5453) | FairScheduler#update may skip update demand resource of child queue/app if current demand reached maxResource |  Major | fairscheduler | sandflee | sandflee |
| [YARN-5843](https://issues.apache.org/jira/browse/YARN-5843) | Incorrect documentation for timeline service entityType/events REST end points |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5834](https://issues.apache.org/jira/browse/YARN-5834) | TestNodeStatusUpdater.testNMRMConnectionConf compares nodemanager wait time to the incorrect value |  Trivial | . | Miklos Szegedi | Chang Li |
| [YARN-5545](https://issues.apache.org/jira/browse/YARN-5545) | Fix issues related to Max App in capacity scheduler |  Major | capacity scheduler | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5874](https://issues.apache.org/jira/browse/YARN-5874) | RM -format-state-store and -remove-application-from-state-store commands fail with NPE |  Critical | resourcemanager | Varun Saxena | Varun Saxena |
| [YARN-5873](https://issues.apache.org/jira/browse/YARN-5873) | RM crashes with NPE if generic application history is enabled |  Critical | resourcemanager | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6811](https://issues.apache.org/jira/browse/MAPREDUCE-6811) | TestPipeApplication#testSubmitter fails after HADOOP-13802 |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-5891](https://issues.apache.org/jira/browse/YARN-5891) | yarn rmadmin -help contains a misspelled ResourceManager |  Trivial | resourcemanager | Grant Sohn | Grant Sohn |
| [YARN-5870](https://issues.apache.org/jira/browse/YARN-5870) | Expose getApplications API in YarnClient with GetApplicationsRequest parameter |  Major | client | Gour Saha | Jian He |
| [YARN-3538](https://issues.apache.org/jira/browse/YARN-3538) | TimelineServer doesn\'t catch/translate all exceptions raised |  Minor | timelineserver | Steve Loughran | Steve Loughran |
| [YARN-5904](https://issues.apache.org/jira/browse/YARN-5904) | Reduce the number of default server threads for AMRMProxyService |  Minor | nodemanager | Subru Krishnan | Subru Krishnan |
| [MAPREDUCE-6793](https://issues.apache.org/jira/browse/MAPREDUCE-6793) | io.sort.factor code default and mapred-default.xml values inconsistent |  Trivial | task | Gera Shegalov | Prabhu Joseph |
| [YARN-5911](https://issues.apache.org/jira/browse/YARN-5911) | DrainDispatcher does not drain all events on stop even if setDrainEventsOnStop is true |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-5918](https://issues.apache.org/jira/browse/YARN-5918) | Handle Opportunistic scheduling allocate request failure when NM is lost |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5920](https://issues.apache.org/jira/browse/YARN-5920) | Fix deadlock in TestRMHA.testTransitionedToStandbyShouldNotHang |  Major | test | Rohith Sharma K S | Varun Saxena |
| [HADOOP-13833](https://issues.apache.org/jira/browse/HADOOP-13833) | TestSymlinkHdfsFileSystem#testCreateLinkUsingPartQualPath2 fails after HADOOP13605 |  Critical | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-5851](https://issues.apache.org/jira/browse/YARN-5851) | TestContainerManagerSecurity testContainerManager[1] failed |  Major | nodemanager | Haibo Chen | Haibo Chen |
| [MAPREDUCE-6565](https://issues.apache.org/jira/browse/MAPREDUCE-6565) | Configuration to use host name in delegation token service is not read from job.xml during MapReduce job execution. |  Major | . | Chris Nauroth | Li Lu |
| [YARN-5942](https://issues.apache.org/jira/browse/YARN-5942) | "Overridden" is misspelled as "overriden" in FairScheduler.md |  Trivial | site | Daniel Templeton | Heather Sutherland |
| [YARN-5901](https://issues.apache.org/jira/browse/YARN-5901) | Fix race condition in TestGetGroups beforeclass setup() |  Major | yarn | Haibo Chen | Haibo Chen |
| [YARN-5929](https://issues.apache.org/jira/browse/YARN-5929) | Missing scheduling policy in the FS queue metric. |  Major | . | Yufei Gu | Yufei Gu |
| [HADOOP-13675](https://issues.apache.org/jira/browse/HADOOP-13675) | Bug in return value for delete() calls in WASB |  Major | fs/azure | Dushyanth | Dushyanth |
| [MAPREDUCE-6571](https://issues.apache.org/jira/browse/MAPREDUCE-6571) | JobEndNotification info logs are missing in AM container syslog |  Minor | applicationmaster | Prabhu Joseph | Haibo Chen |
| [HADOOP-13859](https://issues.apache.org/jira/browse/HADOOP-13859) | TestConfigurationFieldsBase fails for fields that are DEFAULT values of skipped properties. |  Major | common | Haibo Chen | Haibo Chen |
| [YARN-5932](https://issues.apache.org/jira/browse/YARN-5932) | Retrospect moveApplicationToQueue in align with YARN-5611 |  Major | capacity scheduler, resourcemanager | Sunil G | Sunil G |
| [YARN-5136](https://issues.apache.org/jira/browse/YARN-5136) | Error in handling event type APP\_ATTEMPT\_REMOVED to the scheduler |  Major | . | tangshangwen | Wilfred Spiegelenburg |
| [MAPREDUCE-6817](https://issues.apache.org/jira/browse/MAPREDUCE-6817) | The format of job start time in JHS is different from those of submit and finish time |  Major | jobhistoryserver | Haibo Chen | Haibo Chen |
| [YARN-5963](https://issues.apache.org/jira/browse/YARN-5963) | Spelling errors in logging and exceptions for node manager, client, web-proxy, common, and app history code |  Trivial | client, nodemanager | Grant Sohn | Grant Sohn |
| [HADOOP-13867](https://issues.apache.org/jira/browse/HADOOP-13867) | FilterFileSystem should override rename(.., options) to take effect of Rename options called via FilterFileSystem implementations |  Major | . | Vinayakumar B | Vinayakumar B |
| [YARN-4752](https://issues.apache.org/jira/browse/YARN-4752) | FairScheduler should preempt for a ResourceRequest and all preempted containers should be on the same node |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [HDFS-11226](https://issues.apache.org/jira/browse/HDFS-11226) | cacheadmin,cryptoadmin and storagepolicyadmin should support generic options |  Minor | tools | Archana T | Brahma Reddy Battula |
| [MAPREDUCE-6822](https://issues.apache.org/jira/browse/MAPREDUCE-6822) | should set HADOOP\_JOB\_HISTORYSERVER\_HEAPSIZE only if it\'s empty on branch2 |  Major | scripts | Fei Hui |  |
| [YARN-5999](https://issues.apache.org/jira/browse/YARN-5999) | AMRMClientAsync will stop if any exceptions thrown on allocate call |  Major | . | Jian He | Jian He |
| [HADOOP-13831](https://issues.apache.org/jira/browse/HADOOP-13831) | Correct check for error code to detect Azure Storage Throttling and provide retries |  Major | fs/azure | Gaurav Kanade | Gaurav Kanade |
| [HADOOP-13508](https://issues.apache.org/jira/browse/HADOOP-13508) | FsPermission string constructor does not recognize sticky bit |  Major | . | Atul Sikaria | Atul Sikaria |
| [HDFS-11253](https://issues.apache.org/jira/browse/HDFS-11253) | FileInputStream leak on failure path in BlockSender |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [YARN-4330](https://issues.apache.org/jira/browse/YARN-4330) | MiniYARNCluster is showing multiple  Failed to instantiate default resource calculator warning messages. |  Blocker | test, yarn | Steve Loughran | Varun Saxena |
| [YARN-5903](https://issues.apache.org/jira/browse/YARN-5903) | Fix race condition in TestResourceManagerAdministrationProtocolPBClientImpl beforeclass setup method |  Major | yarn | Haibo Chen | Haibo Chen |
| [YARN-5774](https://issues.apache.org/jira/browse/YARN-5774) | MR Job stuck in ACCEPTED status without any progress in Fair Scheduler if set yarn.scheduler.minimum-allocation-mb to 0. |  Blocker | resourcemanager | Yufei Gu | Yufei Gu |
| [YARN-6000](https://issues.apache.org/jira/browse/YARN-6000) | Make AllocationFileLoaderService.Listener public |  Major | fairscheduler, yarn | Tao Jie | Tao Jie |
| [YARN-6026](https://issues.apache.org/jira/browse/YARN-6026) | A couple of spelling errors in the docs |  Trivial | documentation | Grant Sohn | Grant Sohn |
| [HADOOP-13940](https://issues.apache.org/jira/browse/HADOOP-13940) | Document the missing envvars commands |  Minor | documentation | Yiqun Lin | Yiqun Lin |
| [HADOOP-13943](https://issues.apache.org/jira/browse/HADOOP-13943) | TestCommonConfigurationFields#testCompareXmlAgainstConfigurationClass fails after HADOOP-13863 |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-5962](https://issues.apache.org/jira/browse/YARN-5962) | Spelling errors in logging and exceptions for resource manager code |  Trivial | resourcemanager | Grant Sohn | Grant Sohn |
| [YARN-5257](https://issues.apache.org/jira/browse/YARN-5257) | Fix unreleased resources and null dereferences |  Major | . | Yufei Gu | Yufei Gu |
| [YARN-6001](https://issues.apache.org/jira/browse/YARN-6001) | Improve moveApplicationQueues command line |  Major | client | Sunil G | Sunil G |
| [YARN-4882](https://issues.apache.org/jira/browse/YARN-4882) | Change the log level to DEBUG for recovering completed applications |  Major | resourcemanager | Rohith Sharma K S | Daniel Templeton |
| [HDFS-11251](https://issues.apache.org/jira/browse/HDFS-11251) | ConcurrentModificationException during DataNode#refreshVolumes |  Major | . | Jason Lowe | Manoj Govindassamy |
| [HDFS-11267](https://issues.apache.org/jira/browse/HDFS-11267) | Avoid redefinition of storageDirs in NNStorage and cleanup its accessors in Storage |  Major | . | Manoj Govindassamy | Manoj Govindassamy |
| [HADOOP-13942](https://issues.apache.org/jira/browse/HADOOP-13942) | Build failure due to errors of javadoc build in hadoop-azure |  Major | fs/azure | Kai Sasaki | Kai Sasaki |
| [YARN-5988](https://issues.apache.org/jira/browse/YARN-5988) | RM unable to start in secure setup |  Blocker | . | Ajith S | Ajith S |
| [MAPREDUCE-6715](https://issues.apache.org/jira/browse/MAPREDUCE-6715) | Fix Several Unsafe Practices |  Major | . | Yufei Gu | Yufei Gu |
| [HDFS-11282](https://issues.apache.org/jira/browse/HDFS-11282) | Document the missing metrics of DataNode Volume IO operations |  Minor | documentation | Yiqun Lin | Yiqun Lin |
| [YARN-6041](https://issues.apache.org/jira/browse/YARN-6041) | Opportunistic containers : Combined patch for branch-2 |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-6066](https://issues.apache.org/jira/browse/YARN-6066) | Opportunistic containers minor fixes: API annotations and config parameter changes |  Minor | . | Arun Suresh | Arun Suresh |
| [YARN-6068](https://issues.apache.org/jira/browse/YARN-6068) | Log aggregation get failed when NM restart even with recovery |  Blocker | . | Junping Du | Junping Du |
| [YARN-6073](https://issues.apache.org/jira/browse/YARN-6073) | Misuse of format specifier in Preconditions.checkArgument |  Trivial | . | Yongjun Zhang | Yuanbo Liu |
| [YARN-5899](https://issues.apache.org/jira/browse/YARN-5899) | Debug log in AbstractCSQueue#canAssignToThisQueue needs improvement |  Trivial | capacity scheduler | Ying Zhang | Ying Zhang |
| [YARN-6054](https://issues.apache.org/jira/browse/YARN-6054) | TimelineServer fails to start when some LevelDb state files are missing. |  Major | . | Ravi Prakash | Ravi Prakash |
| [YARN-6022](https://issues.apache.org/jira/browse/YARN-6022) | Revert changes of AbstractResourceRequest |  Blocker | . | Wangda Tan | Wangda Tan |
| [YARN-4148](https://issues.apache.org/jira/browse/YARN-4148) | When killing app, RM releases app\'s resource before they are released by NM |  Major | resourcemanager | Jun Gong | Jason Lowe |
| [YARN-6079](https://issues.apache.org/jira/browse/YARN-6079) | simple spelling errors in yarn test code |  Trivial | test | Grant Sohn | vijay |
| [HADOOP-13903](https://issues.apache.org/jira/browse/HADOOP-13903) | Improvements to KMS logging to help debug authorization errors |  Minor | kms | Tristan Stevens | Tristan Stevens |
| [YARN-6072](https://issues.apache.org/jira/browse/YARN-6072) | RM unable to start in secure mode |  Blocker | resourcemanager | Bibin A Chundatt | Ajith S |
| [YARN-6081](https://issues.apache.org/jira/browse/YARN-6081) | LeafQueue#getTotalPendingResourcesConsideringUserLimit should deduct reserved from pending to avoid unnecessary preemption of reserved container |  Critical | . | Wangda Tan | Wangda Tan |
| [HADOOP-13928](https://issues.apache.org/jira/browse/HADOOP-13928) | TestAdlFileContextMainOperationsLive.testGetFileContext1 runtime error |  Major | fs/adl, test | John Zhuge | John Zhuge |
| [HDFS-11307](https://issues.apache.org/jira/browse/HDFS-11307) | The rpc to portmap service for NFS has hardcoded timeout. |  Major | . | Jitendra Nath Pandey | Mukul Kumar Singh |
| [YARN-6057](https://issues.apache.org/jira/browse/YARN-6057) | yarn.scheduler.minimum-allocation-\* descriptions are incorrect about behavior when a request is out of bounds |  Minor | . | Bibin A Chundatt | Julia Sommer |
| [HDFS-11209](https://issues.apache.org/jira/browse/HDFS-11209) | SNN can\'t checkpoint when rolling upgrade is not finalized |  Critical | rolling upgrades | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-10733](https://issues.apache.org/jira/browse/HDFS-10733) | NameNode terminated after full GC thinking QJM is unresponsive. |  Major | namenode, qjm | Konstantin Shvachko | Vinitha Reddy Gankidi |
| [HDFS-11316](https://issues.apache.org/jira/browse/HDFS-11316) | TestDataNodeVolumeFailure#testUnderReplicationAfterVolFailure fails in trunk |  Minor | . | Yiqun Lin | Yiqun Lin |
| [HDFS-11287](https://issues.apache.org/jira/browse/HDFS-11287) | Storage class member storageDirs should be private to avoid unprotected access by derived classes |  Major | . | Manoj Govindassamy | Manoj Govindassamy |
| [YARN-6110](https://issues.apache.org/jira/browse/YARN-6110) | Fix opportunistic containers documentation |  Minor | documentation | Akira Ajisaka | Akira Ajisaka |
| [YARN-6104](https://issues.apache.org/jira/browse/YARN-6104) | RegistrySecurity overrides zookeeper sasl system properties |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [HADOOP-13858](https://issues.apache.org/jira/browse/HADOOP-13858) | TestGridmixMemoryEmulation and TestResourceUsageEmulators fail on the environment other than Linux or Windows |  Major | test | Akira Ajisaka | Akira Ajisaka |
| [YARN-6117](https://issues.apache.org/jira/browse/YARN-6117) | SharedCacheManager does not start up |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-6082](https://issues.apache.org/jira/browse/YARN-6082) | Invalid REST api response for getApps since queueUsagePercentage is coming as INF |  Critical | . | Sunil G | Sunil G |
| [HDFS-11365](https://issues.apache.org/jira/browse/HDFS-11365) | Log portnumber in PrivilegedNfsGatewayStarter |  Minor | nfs | Mukul Kumar Singh | Mukul Kumar Singh |
| [HDFS-11369](https://issues.apache.org/jira/browse/HDFS-11369) | Change exception message in StorageLocationChecker |  Minor | datanode | Arpit Agarwal | Arpit Agarwal |
| [YARN-4975](https://issues.apache.org/jira/browse/YARN-4975) | Fair Scheduler: exception thrown when a parent queue marked \'parent\' has configured child queues |  Major | fairscheduler | Ashwin Shankar | Yufei Gu |
| [HDFS-11364](https://issues.apache.org/jira/browse/HDFS-11364) | Add a test to verify Audit log entries for setfacl/getfacl commands over FS shell |  Major | hdfs, test | Manoj Govindassamy | Manoj Govindassamy |
| [HADOOP-13988](https://issues.apache.org/jira/browse/HADOOP-13988) | KMSClientProvider does not work with WebHDFS and Apache Knox w/ProxyUser |  Major | common, kms | Greg Senia | Xiaoyu Yao |
| [HADOOP-14029](https://issues.apache.org/jira/browse/HADOOP-14029) | Fix KMSClientProvider for non-secure proxyuser use case |  Major | common,kms | Xiaoyu Yao | Xiaoyu Yao |
| [YARN-5641](https://issues.apache.org/jira/browse/YARN-5641) | Localizer leaves behind tarballs after container is complete |  Major | . | Eric Badger | Eric Badger |
| [HDFS-11378](https://issues.apache.org/jira/browse/HDFS-11378) | Verify multiple DataNodes can be decommissioned/maintenance at the same time |  Major | hdfs | Manoj Govindassamy | Manoj Govindassamy |
| [YARN-6103](https://issues.apache.org/jira/browse/YARN-6103) | Log updates for ZKRMStateStore |  Trivial | . | Bibin A Chundatt | Daniel Sturman |
| [HDFS-11335](https://issues.apache.org/jira/browse/HDFS-11335) | Remove HdfsClientConfigKeys.DFS\_CLIENT\_SLOW\_IO\_WARNING\_THRESHOLD\_KEY usage from DNConf |  Major | . | Manoj Govindassamy | Manoj Govindassamy |
| [HDFS-11363](https://issues.apache.org/jira/browse/HDFS-11363) | Need more diagnosis info when seeing Slow waitForAckedSeqno |  Major | . | Yongjun Zhang | Xiao Chen |
| [HDFS-11387](https://issues.apache.org/jira/browse/HDFS-11387) | Socket reuse address option is not honored in PrivilegedNfsGatewayStarter |  Major | nfs | Mukul Kumar Singh | Mukul Kumar Singh |
| [HADOOP-14044](https://issues.apache.org/jira/browse/HADOOP-14044) | Synchronization issue in delegation token cancel functionality |  Major | . | Hrishikesh Gadre | Hrishikesh Gadre |
| [MAPREDUCE-6338](https://issues.apache.org/jira/browse/MAPREDUCE-6338) | MR AppMaster does not honor ephemeral port range |  Major | mr-am, mrv2 | Frank Nguyen | Frank Nguyen |
| [HDFS-11377](https://issues.apache.org/jira/browse/HDFS-11377) | Balancer hung due to no available mover threads |  Major | balancer & mover | yunjiong zhao | yunjiong zhao |
| [YARN-6145](https://issues.apache.org/jira/browse/YARN-6145) | Improve log message on fail over |  Major | . | Jian He | Jian He |
| [YARN-6031](https://issues.apache.org/jira/browse/YARN-6031) | Application recovery has failed when node label feature is turned off during RM recovery |  Minor | scheduler | Ying Zhang | Ying Zhang |
| [YARN-6137](https://issues.apache.org/jira/browse/YARN-6137) | Yarn client implicitly invoke ATS client which accesses HDFS |  Major | . | Yesha Vora | Li Lu |
| [HADOOP-13433](https://issues.apache.org/jira/browse/HADOOP-13433) | Race in UGI.reloginFromKeytab |  Major | security | Duo Zhang | Duo Zhang |
| [YARN-6112](https://issues.apache.org/jira/browse/YARN-6112) | UpdateCallDuration is calculated only when debug logging is enabled |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-6144](https://issues.apache.org/jira/browse/YARN-6144) | FairScheduler: preempted resources can become negative |  Blocker | fairscheduler, resourcemanager | Miklos Szegedi | Miklos Szegedi |
| [YARN-6118](https://issues.apache.org/jira/browse/YARN-6118) | Add javadoc for Resources.isNone |  Minor | scheduler | Karthik Kambatla | Andres Perez |
| [YARN-6166](https://issues.apache.org/jira/browse/YARN-6166) | Unnecessary INFO logs in AMRMClientAsyncImpl$CallbackHandlerThread.run |  Trivial | . | Grant W | Grant W |
| [HADOOP-14055](https://issues.apache.org/jira/browse/HADOOP-14055) | SwiftRestClient includes pass length in exception if auth fails |  Minor | security | Marcell Hegedus | Marcell Hegedus |
| [HDFS-11403](https://issues.apache.org/jira/browse/HDFS-11403) | Zookeper ACLs on NN HA enabled clusters to be handled consistently |  Major | hdfs | Laszlo Puskas | Hanisha Koneru |
| [HADOOP-13233](https://issues.apache.org/jira/browse/HADOOP-13233) | help of stat is confusing |  Trivial | documentation, fs | Xiaohe Lan | Attila Bukor |
| [HADOOP-14058](https://issues.apache.org/jira/browse/HADOOP-14058) | Fix NativeS3FileSystemContractBaseTest#testDirWithDifferentMarkersWorks |  Major | fs/s3, test | Akira Ajisaka | Yiqun Lin |
| [HDFS-11084](https://issues.apache.org/jira/browse/HDFS-11084) | Add a regression test for sticky bit support of OIV ReverseXML processor |  Major | tools | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-11391](https://issues.apache.org/jira/browse/HDFS-11391) | Numeric usernames do no work with WebHDFS FS (write access) |  Major | webhdfs | Pierre Villard | Pierre Villard |
| [YARN-4212](https://issues.apache.org/jira/browse/YARN-4212) | FairScheduler: Can\'t create a DRF queue under a FAIR policy queue |  Major | . | Arun Suresh | Yufei Gu |
| [YARN-6177](https://issues.apache.org/jira/browse/YARN-6177) | Yarn client should exit with an informative error message if an incompatible Jersey library is used at client |  Major | . | Weiwei Yang | Weiwei Yang |
| [YARN-6171](https://issues.apache.org/jira/browse/YARN-6171) | ConcurrentModificationException on FSAppAttempt.containersToPreempt |  Major | fairscheduler | Miklos Szegedi | Miklos Szegedi |
| [HDFS-11410](https://issues.apache.org/jira/browse/HDFS-11410) | Use the cached instance when edit logging SetAclOp, SetXAttrOp and RemoveXAttrOp |  Major | namenode | Xiao Chen | Xiao Chen |
| [YARN-6188](https://issues.apache.org/jira/browse/YARN-6188) | Fix OOM issue with decommissioningNodesWatcher in the case of clusters with large number of nodes |  Major | resourcemanager | Ajay Jadhav | Ajay Jadhav |
| [HDFS-11404](https://issues.apache.org/jira/browse/HDFS-11404) | Increase timeout on TestShortCircuitLocalRead.testDeprecatedGetBlockLocalPathInfoRpc |  Major | . | Eric Badger | Eric Badger |
| [MAPREDUCE-6825](https://issues.apache.org/jira/browse/MAPREDUCE-6825) | YARNRunner#createApplicationSubmissionContext method is longer than 150 lines |  Trivial | . | Chris Trezzo | Gergely Novák |
| [YARN-6210](https://issues.apache.org/jira/browse/YARN-6210) | FS: Node reservations can interfere with preemption |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-6211](https://issues.apache.org/jira/browse/YARN-6211) | Synchronization improvement for moveApplicationAcrossQueues and updateApplicationPriority |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [HADOOP-14100](https://issues.apache.org/jira/browse/HADOOP-14100) | Upgrade Jsch jar to latest version to fix vulnerability in old versions |  Critical | . | Vinayakumar B | Vinayakumar B |
| [YARN-6222](https://issues.apache.org/jira/browse/YARN-6222) | TestFairScheduler.testReservationMetrics is flaky |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [HDFS-10620](https://issues.apache.org/jira/browse/HDFS-10620) | StringBuilder created and appended even if logging is disabled |  Major | namenode | Staffan Friberg | Staffan Friberg |
| [HADOOP-14116](https://issues.apache.org/jira/browse/HADOOP-14116) | FailoverOnNetworkExceptionRetry does not wait when failover on certain exception |  Major | . | Jian He | Jian He |
| [HDFS-11433](https://issues.apache.org/jira/browse/HDFS-11433) | Document missing usages of OfflineEditsViewer processors |  Minor | documentation, tools | Yiqun Lin | Yiqun Lin |
| [HDFS-11462](https://issues.apache.org/jira/browse/HDFS-11462) | Fix occasional BindException in TestNameNodeMetricsLogger |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [YARN-6172](https://issues.apache.org/jira/browse/YARN-6172) | FSLeafQueue demand update needs to be atomic |  Major | resourcemanager | Varun Saxena | Miklos Szegedi |
| [HADOOP-14119](https://issues.apache.org/jira/browse/HADOOP-14119) | Remove unused imports from GzipCodec.java |  Minor | . | Akira Ajisaka | Yiqun Lin |
| [MAPREDUCE-6841](https://issues.apache.org/jira/browse/MAPREDUCE-6841) | Fix dead link in MapReduce tutorial document |  Minor | documentation | Akira Ajisaka | Victor Nee |
| [YARN-6231](https://issues.apache.org/jira/browse/YARN-6231) | FairSchedulerTestBase helper methods should call scheduler.update to avoid flakiness |  Major | . | Arun Suresh | Karthik Kambatla |
| [HDFS-11479](https://issues.apache.org/jira/browse/HDFS-11479) | Socket re-use address option should be used in SimpleUdpServer |  Major | nfs | Mukul Kumar Singh | Mukul Kumar Singh |
| [HADOOP-14131](https://issues.apache.org/jira/browse/HADOOP-14131) | kms.sh creates bogus dir for tomcat logs |  Minor | kms | John Zhuge | John Zhuge |
| [MAPREDUCE-6852](https://issues.apache.org/jira/browse/MAPREDUCE-6852) | Job#updateStatus() failed with NPE due to race condition |  Major | . | Junping Du | Junping Du |
| [MAPREDUCE-6753](https://issues.apache.org/jira/browse/MAPREDUCE-6753) | Variable in byte printed directly in mapreduce client |  Major | client | Nemo Chen | Kai Sasaki |
| [HADOOP-6801](https://issues.apache.org/jira/browse/HADOOP-6801) | io.sort.mb and io.sort.factor were renamed and moved to mapreduce but are still in CommonConfigurationKeysPublic.java and used in SequenceFile.java |  Minor | . | Erik Steffl | Harsh J |
| [YARN-6263](https://issues.apache.org/jira/browse/YARN-6263) | NMTokenSecretManagerInRM.createAndGetNMToken is not thread safe |  Major | yarn | Haibo Chen | Haibo Chen |
| [YARN-6218](https://issues.apache.org/jira/browse/YARN-6218) | Fix TestAMRMClient when using FairScheduler |  Minor | . | Miklos Szegedi | Miklos Szegedi |
| [HDFS-11476](https://issues.apache.org/jira/browse/HDFS-11476) | Fix NPE in FsDatasetImpl#checkAndUpdate |  Major | datanode | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-6271](https://issues.apache.org/jira/browse/YARN-6271) | yarn rmadin -getGroups returns information from standby RM |  Critical | yarn | Sumana Sathish | Jian He |
| [HADOOP-14026](https://issues.apache.org/jira/browse/HADOOP-14026) | start-build-env.sh: invalid docker image name |  Major | build | Gergő Pásztor | Gergő Pásztor |
| [HDFS-11441](https://issues.apache.org/jira/browse/HDFS-11441) | Add escaping to error message in KMS web UI |  Minor | security | Aaron T. Myers | Aaron T. Myers |
| [YARN-5665](https://issues.apache.org/jira/browse/YARN-5665) | Enhance documentation for yarn.resourcemanager.scheduler.class property |  Trivial | documentation | Miklos Szegedi | Yufei Gu |
| [MAPREDUCE-6855](https://issues.apache.org/jira/browse/MAPREDUCE-6855) | Specify charset when create String in CredentialsTestJob |  Minor | . | Akira Ajisaka | Kai Sasaki |
| [HDFS-11508](https://issues.apache.org/jira/browse/HDFS-11508) | Fix bind failure in SimpleTCPServer & Portmap where bind fails because socket is in TIME\_WAIT state |  Major | nfs | Mukul Kumar Singh | Mukul Kumar Singh |
| [MAPREDUCE-6839](https://issues.apache.org/jira/browse/MAPREDUCE-6839) | TestRecovery.testCrashed failed |  Major | test | Gergő Pásztor | Gergő Pásztor |
| [YARN-6207](https://issues.apache.org/jira/browse/YARN-6207) | Move application across queues should handle delayed event processing |  Major | capacity scheduler | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-6297](https://issues.apache.org/jira/browse/YARN-6297) | TestAppLogAggregatorImp.verifyFilesUploaded() should check # of filed uploaded with that of files expected |  Major | . | Haibo Chen | Haibo Chen |
| [YARN-6165](https://issues.apache.org/jira/browse/YARN-6165) | Intra-queue preemption occurs even when preemption is turned off for a specific queue. |  Major | capacity scheduler, scheduler preemption | Eric Payne | Eric Payne |
| [YARN-6264](https://issues.apache.org/jira/browse/YARN-6264) | AM not launched when a single vcore is available on the cluster |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-6310](https://issues.apache.org/jira/browse/YARN-6310) | OutputStreams in AggregatedLogFormat.LogWriter can be left open upon exceptions |  Major | yarn | Haibo Chen | Haibo Chen |
| [YARN-6321](https://issues.apache.org/jira/browse/YARN-6321) | TestResources test timeouts are too aggressive |  Major | test | Jason Lowe | Eric Badger |
| [HDFS-11340](https://issues.apache.org/jira/browse/HDFS-11340) | DataNode reconfigure for disks doesn\'t remove the failed volumes |  Major | . | Manoj Govindassamy | Manoj Govindassamy |
| [HDFS-11512](https://issues.apache.org/jira/browse/HDFS-11512) | Increase timeout on TestShortCircuitLocalRead#testSkipWithVerifyChecksum |  Minor | . | Eric Badger | Eric Badger |
| [HDFS-11499](https://issues.apache.org/jira/browse/HDFS-11499) | Decommissioning stuck because of failing recovery |  Major | hdfs, namenode | Lukas Majercak | Lukas Majercak |
| [HDFS-11526](https://issues.apache.org/jira/browse/HDFS-11526) | Fix confusing block recovery message |  Minor | datanode | Wei-Chiu Chuang | Yiqun Lin |
| [HADOOP-14170](https://issues.apache.org/jira/browse/HADOOP-14170) | FileSystemContractBaseTest is not cleaning up test directory clearly |  Major | fs | Mingliang Liu | Mingliang Liu |
| [YARN-6328](https://issues.apache.org/jira/browse/YARN-6328) | Fix a spelling mistake in CapacityScheduler |  Trivial | capacity scheduler | Jin Yibo | Jin Yibo |
| [HDFS-11420](https://issues.apache.org/jira/browse/HDFS-11420) | Edit file should not be processed by the same type processor in OfflineEditsViewer |  Major | tools | Yiqun Lin | Yiqun Lin |
| [YARN-6294](https://issues.apache.org/jira/browse/YARN-6294) | ATS client should better handle Socket closed case |  Major | timelineclient | Sumana Sathish | Li Lu |
| [YARN-6332](https://issues.apache.org/jira/browse/YARN-6332) | Make RegistrySecurity use short user names for ZK ACLs |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-4051](https://issues.apache.org/jira/browse/YARN-4051) | ContainerKillEvent lost when container is still recovering and application finishes |  Critical | nodemanager | sandflee | sandflee |
| [HDFS-11533](https://issues.apache.org/jira/browse/HDFS-11533) | reuseAddress option should be used for child channels in Portmap and SimpleTcpServer |  Major | nfs | Mukul Kumar Singh | Mukul Kumar Singh |
| [HDFS-10394](https://issues.apache.org/jira/browse/HDFS-10394) | move declaration of okhttp version from hdfs-client to hadoop-project POM |  Minor | build | Steve Loughran | Xiaobing Zhou |
| [HDFS-11516](https://issues.apache.org/jira/browse/HDFS-11516) | Admin command line should print message to stderr in failure case |  Minor | . | Kai Sasaki | Kai Sasaki |
| [YARN-6217](https://issues.apache.org/jira/browse/YARN-6217) | TestLocalCacheDirectoryManager test timeout is too aggressive |  Major | test | Jason Lowe | Miklos Szegedi |
| [YARN-6353](https://issues.apache.org/jira/browse/YARN-6353) | Clean up OrderingPolicy javadoc |  Minor | resourcemanager | Daniel Templeton | Daniel Templeton |
| [HADOOP-14059](https://issues.apache.org/jira/browse/HADOOP-14059) | typo in s3a rename(self, subdir) error message |  Minor | . | Steve Loughran | Steve Loughran |
| [HDFS-6648](https://issues.apache.org/jira/browse/HDFS-6648) | Order of namenodes in ConfiguredFailoverProxyProvider is undefined |  Major | ha, hdfs-client | Rafal Wojdyla | Inigo Goiri |
| [HDFS-11132](https://issues.apache.org/jira/browse/HDFS-11132) | Allow AccessControlException in contract tests when getFileStatus on subdirectory of existing files |  Major | fs/adl, test | Vishwajeet Dusane | Vishwajeet Dusane |
| [HADOOP-14205](https://issues.apache.org/jira/browse/HADOOP-14205) | No FileSystem for scheme: adl |  Major | fs/adl | John Zhuge | John Zhuge |
| [HDFS-11561](https://issues.apache.org/jira/browse/HDFS-11561) | HttpFS doc errors |  Trivial | documentation, httpfs, test | Yuanbo Liu | Yuanbo Liu |
| [HADOOP-9631](https://issues.apache.org/jira/browse/HADOOP-9631) | ViewFs should use underlying FileSystem\'s server side defaults |  Major | fs, viewfs | Lohit Vijayarenu | Erik Krogen |
| [HADOOP-14195](https://issues.apache.org/jira/browse/HADOOP-14195) | CredentialProviderFactory$getProviders is not thread-safe |  Major | security | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HADOOP-14211](https://issues.apache.org/jira/browse/HADOOP-14211) | FilterFs and ChRootedFs are too aggressive about enforcing "authorityNeeded" |  Major | viewfs | Erik Krogen | Erik Krogen |
| [YARN-6360](https://issues.apache.org/jira/browse/YARN-6360) | Prevent FS state dump logger from cramming other log files |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-6334](https://issues.apache.org/jira/browse/YARN-6334) | TestRMFailover#testAutomaticFailover always passes even when it should fail |  Major | . | Yufei Gu | Yufei Gu |
| [MAPREDUCE-6866](https://issues.apache.org/jira/browse/MAPREDUCE-6866) | Fix getNumMapTasks() documentation in JobConf |  Minor | documentation | Joe Mészáros | Joe Mészáros |
| [MAPREDUCE-6868](https://issues.apache.org/jira/browse/MAPREDUCE-6868) | License check for jdiff output files should be ignored |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-10506](https://issues.apache.org/jira/browse/HDFS-10506) | OIV\'s ReverseXML processor cannot reconstruct some snapshot details |  Major | tools | Colin P. McCabe | Akira Ajisaka |
| [HDFS-11486](https://issues.apache.org/jira/browse/HDFS-11486) | Client close() should not fail fast if the last block is being decommissioned |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-6359](https://issues.apache.org/jira/browse/YARN-6359) | TestRM#testApplicationKillAtAcceptedState fails rarely due to race condition |  Major | test | Robert Kanter | Robert Kanter |
| [YARN-5368](https://issues.apache.org/jira/browse/YARN-5368) | Memory leak in timeline server |  Critical | timelineserver | Wataru Yukawa | Jonathan Eagles |
| [YARN-6050](https://issues.apache.org/jira/browse/YARN-6050) | AMs can\'t be scheduled on racks or nodes |  Major | . | Robert Kanter | Robert Kanter |
| [HDFS-11571](https://issues.apache.org/jira/browse/HDFS-11571) | Typo in DataStorage exception message |  Minor | datanode | Daniel Templeton | Anna Budai |
| [YARN-5685](https://issues.apache.org/jira/browse/YARN-5685) | RM configuration allows all failover methods to disabled when automatic failover is enabled |  Critical | resourcemanager | Daniel Templeton | Daniel Templeton |
| [YARN-6352](https://issues.apache.org/jira/browse/YARN-6352) | Header injections are possible in application proxy servlet |  Major | resourcemanager, security | Naganarasimha G R | Naganarasimha G R |
| [MAPREDUCE-6862](https://issues.apache.org/jira/browse/MAPREDUCE-6862) | Fragments are not handled correctly by resource limit checking |  Minor | . | Chris Trezzo | Chris Trezzo |
| [MAPREDUCE-6873](https://issues.apache.org/jira/browse/MAPREDUCE-6873) | MR Job Submission Fails if MR framework application path not on defaultFS |  Minor | mrv2 | Erik Krogen | Erik Krogen |
| [HADOOP-14256](https://issues.apache.org/jira/browse/HADOOP-14256) | [S3A DOC] Correct the format for "Seoul" example |  Minor | documentation, s3 | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6850](https://issues.apache.org/jira/browse/MAPREDUCE-6850) | Shuffle Handler keep-alive connections are closed from the server side |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-6836](https://issues.apache.org/jira/browse/MAPREDUCE-6836) | exception thrown when accessing the job configuration web UI |  Minor | webapps | Sangjin Lee | Haibo Chen |
| [YARN-6354](https://issues.apache.org/jira/browse/YARN-6354) | LeveldbRMStateStore can parse invalid keys when recovering reservations |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [HADOOP-14272](https://issues.apache.org/jira/browse/HADOOP-14272) | Azure: WasbRemoteCallHelper should use String equals for comparison. |  Major | fs/azure | Santhosh G Nayak | Santhosh G Nayak |
| [HADOOP-14273](https://issues.apache.org/jira/browse/HADOOP-14273) | Azure: NativeAzureFileSystem should respect config for kerberosSupportEnabled flag |  Major | fs/azure | Santhosh G Nayak | Santhosh G Nayak |
| [YARN-6436](https://issues.apache.org/jira/browse/YARN-6436) | TestSchedulingPolicy#testParseSchedulingPolicy timeout is too low |  Major | test | Jason Lowe | Eric Badger |
| [YARN-6004](https://issues.apache.org/jira/browse/YARN-6004) | Refactor TestResourceLocalizationService#testDownloadingResourcesOnContainer so that it is less than 150 lines |  Trivial | test | Chris Trezzo | Chris Trezzo |
| [YARN-6420](https://issues.apache.org/jira/browse/YARN-6420) | RM startup failure due to wrong order in nodelabel editlog |  Critical | . | Bibin A Chundatt | Bibin A Chundatt |
| [MAPREDUCE-6824](https://issues.apache.org/jira/browse/MAPREDUCE-6824) | TaskAttemptImpl#createCommonContainerLaunchContext is longer than 150 lines |  Trivial | . | Chris Trezzo | Chris Trezzo |
| [YARN-6403](https://issues.apache.org/jira/browse/YARN-6403) | Invalid local resource request can raise NPE and make NM exit |  Major | nodemanager | Tao Yang | Tao Yang |
| [YARN-6437](https://issues.apache.org/jira/browse/YARN-6437) | TestSignalContainer#testSignalRequestDeliveryToNM fails intermittently |  Major | test | Jason Lowe | Jason Lowe |
| [YARN-6448](https://issues.apache.org/jira/browse/YARN-6448) | Continuous scheduling thread crashes while sorting nodes |  Major | . | Yufei Gu | Yufei Gu |
| [MAPREDUCE-6846](https://issues.apache.org/jira/browse/MAPREDUCE-6846) | Fragments specified for libjar paths are not handled correctly |  Minor | . | Chris Trezzo | Chris Trezzo |
| [HDFS-11131](https://issues.apache.org/jira/browse/HDFS-11131) | TestThrottledAsyncChecker#testCancellation is flaky |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-11362](https://issues.apache.org/jira/browse/HDFS-11362) | StorageDirectory should initialize a non-null default StorageDirType |  Minor | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HDFS-11608](https://issues.apache.org/jira/browse/HDFS-11608) | HDFS write crashed with block size greater than 2 GB |  Critical | hdfs-client | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-6288](https://issues.apache.org/jira/browse/YARN-6288) | Exceptions during aggregated log writes are mishandled |  Critical | log-aggregation | Akira Ajisaka | Akira Ajisaka |
| [YARN-6368](https://issues.apache.org/jira/browse/YARN-6368) | Decommissioning an NM results in a -1 exit code |  Minor | . | Miklos Szegedi | Miklos Szegedi |
| [HADOOP-14066](https://issues.apache.org/jira/browse/HADOOP-14066) | VersionInfo should be marked as public API |  Critical | common | Thejas M Nair | Akira Ajisaka |
| [YARN-6343](https://issues.apache.org/jira/browse/YARN-6343) | Docker docs MR example is broken |  Major | nodemanager | Daniel Templeton | Prashant Jha |
| [HADOOP-14293](https://issues.apache.org/jira/browse/HADOOP-14293) | Initialize FakeTimer with a less trivial value |  Major | test | Andrew Wang | Andrew Wang |
| [HADOOP-13545](https://issues.apache.org/jira/browse/HADOOP-13545) | Upgrade HSQLDB to 2.3.4 |  Minor | build | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [YARN-6461](https://issues.apache.org/jira/browse/YARN-6461) | TestRMAdminCLI has very low test timeouts |  Major | test | Jason Lowe | Eric Badger |
| [YARN-6439](https://issues.apache.org/jira/browse/YARN-6439) | Fix ReservationSystem creation of default ReservationQueue |  Major | . | Carlo Curino | Carlo Curino |
| [HDFS-11630](https://issues.apache.org/jira/browse/HDFS-11630) | TestThrottledAsyncCheckerTimeout fails intermittently in Jenkins builds |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [YARN-6450](https://issues.apache.org/jira/browse/YARN-6450) | TestContainerManagerWithLCE requires override for each new test added to ContainerManagerTest |  Major | test | Jason Lowe | Jason Lowe |
| [YARN-6216](https://issues.apache.org/jira/browse/YARN-6216) | Unify Container Resizing code paths with Container Updates making it scheduler agnostic |  Major | capacity scheduler, fairscheduler, resourcemanager | Arun Suresh | Arun Suresh |
| [YARN-5994](https://issues.apache.org/jira/browse/YARN-5994) | TestCapacityScheduler.testAMLimitUsage fails intermittently |  Major | . | Eric Badger | Eric Badger |
| [YARN-6433](https://issues.apache.org/jira/browse/YARN-6433) | Only accessible cgroup mount directories should be selected for a controller |  Major | nodemanager | Miklos Szegedi | Miklos Szegedi |
| [YARN-6480](https://issues.apache.org/jira/browse/YARN-6480) | Timeout is too aggressive for TestAMRestart.testPreemptedAMRestartOnRMRestart |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-14311](https://issues.apache.org/jira/browse/HADOOP-14311) | Add python2.7-dev to Dockerfile |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HDFS-11615](https://issues.apache.org/jira/browse/HDFS-11615) | FSNamesystemLock metrics can be inaccurate due to millisecond precision |  Major | hdfs | Erik Krogen | Erik Krogen |
| [HADOOP-14318](https://issues.apache.org/jira/browse/HADOOP-14318) | Remove non-existent setfattr command option from FileSystemShell.md |  Minor | documentation | Doris Gu | Doris Gu |
| [HADOOP-14315](https://issues.apache.org/jira/browse/HADOOP-14315) | Python example in the rack awareness document doesn\'t work due to bad indentation |  Minor | documentation | Kengo Seki | Kengo Seki |
| [HADOOP-13997](https://issues.apache.org/jira/browse/HADOOP-13997) | Typo in metrics docs |  Trivial | documentation | Daniel Templeton | Ana Krasteva |
| [HDFS-11660](https://issues.apache.org/jira/browse/HDFS-11660) | TestFsDatasetCache#testPageRounder fails intermittently with AssertionError |  Major | test | Andrew Wang | Andrew Wang |
| [HDFS-11685](https://issues.apache.org/jira/browse/HDFS-11685) | TestDistributedFileSystem.java fails to compile |  Major | test | John Zhuge | John Zhuge |
| [YARN-6501](https://issues.apache.org/jira/browse/YARN-6501) | FSSchedulerNode.java fails to compile with JDK7 |  Major | resourcemanager | John Zhuge | John Zhuge |
| [YARN-6453](https://issues.apache.org/jira/browse/YARN-6453) | fairscheduler-statedump.log gets generated regardless of service |  Blocker | fairscheduler, scheduler | Allen Wittenauer | Yufei Gu |
| [YARN-6153](https://issues.apache.org/jira/browse/YARN-6153) | keepContainer does not work when AM retry window is set |  Major | resourcemanager | kyungwan nam | kyungwan nam |
| [HDFS-11689](https://issues.apache.org/jira/browse/HDFS-11689) | New exception thrown by DFSClient#isHDFSEncryptionEnabled broke hacky hive code |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [YARN-6500](https://issues.apache.org/jira/browse/YARN-6500) | Do not mount inaccessible cgroups directories in CgroupsLCEResourcesHandler |  Major | nodemanager | Miklos Szegedi | Miklos Szegedi |
| [HDFS-11691](https://issues.apache.org/jira/browse/HDFS-11691) | Add a proper scheme to the datanode links in NN web UI |  Major | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-14207](https://issues.apache.org/jira/browse/HADOOP-14207) | "dfsadmin -refreshCallQueue" fails with DecayRpcScheduler |  Blocker | rpc-server | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HADOOP-14341](https://issues.apache.org/jira/browse/HADOOP-14341) | Support multi-line value for ssl.server.exclude.cipher.list |  Major | . | John Zhuge | John Zhuge |
| [YARN-5617](https://issues.apache.org/jira/browse/YARN-5617) | AMs only intended to run one attempt can be run more than once |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-6510](https://issues.apache.org/jira/browse/YARN-6510) | Fix profs stat file warning caused by process names that includes parenthesis |  Major | . | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [HADOOP-14351](https://issues.apache.org/jira/browse/HADOOP-14351) | Azure: RemoteWasbAuthorizerImpl and RemoteSASKeyGeneratorImpl should not use Kerberos interactive user cache |  Major | fs/azure | Santhosh G Nayak | Santhosh G Nayak |
| [HDFS-11709](https://issues.apache.org/jira/browse/HDFS-11709) | StandbyCheckpointer should handle an non-existing legacyOivImageDir gracefully |  Critical | ha, namenode | Zhe Zhang | Erik Krogen |
| [YARN-5894](https://issues.apache.org/jira/browse/YARN-5894) | fixed license warning caused by de.ruedigermoeller:fst:jar:2.24 |  Blocker | yarn | Haibo Chen | Haibo Chen |
| [HADOOP-14320](https://issues.apache.org/jira/browse/HADOOP-14320) | TestIPC.testIpcWithReaderQueuing fails intermittently |  Major | . | Eric Badger | Eric Badger |
| [YARN-6536](https://issues.apache.org/jira/browse/YARN-6536) | TestAMRMClient.testAMRMClientWithSaslEncryption fails intermittently |  Major | . | Eric Badger | Jason Lowe |
| [YARN-6517](https://issues.apache.org/jira/browse/YARN-6517) | Fix warnings from Spotbugs in hadoop-yarn-common |  Major | . | Weiwei Yang | Weiwei Yang |
| [YARN-6520](https://issues.apache.org/jira/browse/YARN-6520) | Fix warnings from Spotbugs in hadoop-yarn-client |  Major | . | Weiwei Yang | Weiwei Yang |
| [HDFS-8498](https://issues.apache.org/jira/browse/HDFS-8498) | Blocks can be committed with wrong size |  Critical | hdfs-client | Daryn Sharp | Jing Zhao |
| [HDFS-11593](https://issues.apache.org/jira/browse/HDFS-11593) | Change SimpleHttpProxyHandler#exceptionCaught log level from info to debug |  Minor | datanode | Xiaoyu Yao | Xiaobing Zhou |
| [HADOOP-14371](https://issues.apache.org/jira/browse/HADOOP-14371) | License error in TestLoadBalancingKMSClientProvider.java |  Major | . | hu xiaodong | hu xiaodong |
| [HADOOP-14369](https://issues.apache.org/jira/browse/HADOOP-14369) | NetworkTopology calls expensive toString() when logging |  Major | . | Inigo Goiri | Inigo Goiri |
| [YARN-6519](https://issues.apache.org/jira/browse/YARN-6519) | Fix warnings from Spotbugs in hadoop-yarn-server-resourcemanager |  Major | resourcemanager | Weiwei Yang | Weiwei Yang |
| [YARN-6481](https://issues.apache.org/jira/browse/YARN-6481) | Yarn top shows negative container number in FS |  Major | yarn | Yufei Gu | Tao Jie |
| [HADOOP-14306](https://issues.apache.org/jira/browse/HADOOP-14306) | TestLocalFileSystem tests have very low timeouts |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-14372](https://issues.apache.org/jira/browse/HADOOP-14372) | TestSymlinkLocalFS timeouts are too low |  Major | . | Eric Badger | Eric Badger |
| [HDFS-11739](https://issues.apache.org/jira/browse/HDFS-11739) | Fix regression in tests caused by YARN-679 |  Major | test | Steve Loughran | Steve Loughran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9300](https://issues.apache.org/jira/browse/HDFS-9300) | TestDirectoryScanner.testThrottle() is still a little flakey |  Major | balancer & mover, test | Daniel Templeton | Daniel Templeton |
| [YARN-4704](https://issues.apache.org/jira/browse/YARN-4704) | TestResourceManager#testResourceAllocation() fails when using FairScheduler |  Major | fairscheduler, test | Ray Chiang | Yufei Gu |
| [HADOOP-12701](https://issues.apache.org/jira/browse/HADOOP-12701) | Run checkstyle on test source files |  Minor | . | John Zhuge | John Zhuge |
| [YARN-5024](https://issues.apache.org/jira/browse/YARN-5024) | TestContainerResourceUsage#testUsageAfterAMRestartWithMultipleContainers random failure |  Major | test | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5005](https://issues.apache.org/jira/browse/YARN-5005) | TestRMWebServices#testDumpingSchedulerLogs fails randomly |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-5118](https://issues.apache.org/jira/browse/YARN-5118) | Tests fails with localizer port bind exception. |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-4989](https://issues.apache.org/jira/browse/YARN-4989) | TestWorkPreservingRMRestart#testCapacitySchedulerRecovery fails intermittently |  Major | test | Rohith Sharma K S | Ajith S |
| [YARN-5208](https://issues.apache.org/jira/browse/YARN-5208) | Run TestAMRMClient TestNMClient TestYarnClient TestClientRMTokens TestAMAuthorization tests with hadoop.security.token.service.use\_ip enabled |  Blocker | test | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-5343](https://issues.apache.org/jira/browse/YARN-5343) | TestContinuousScheduling#testSortedNodes fails intermittently |  Minor | . | sandflee | Yufei Gu |
| [YARN-2398](https://issues.apache.org/jira/browse/YARN-2398) | TestResourceTrackerOnHA crashes |  Major | test | Jason Lowe | Ajith S |
| [YARN-5656](https://issues.apache.org/jira/browse/YARN-5656) | Fix ReservationACLsTestBase |  Major | . | Sean Po | Sean Po |
| [YARN-4555](https://issues.apache.org/jira/browse/YARN-4555) | TestDefaultContainerExecutor#testContainerLaunchError fails on non-english locale environment |  Minor | nodemanager, test | Takashi Ohnishi | Takashi Ohnishi |
| [YARN-4363](https://issues.apache.org/jira/browse/YARN-4363) | In TestFairScheduler, testcase should not create FairScheduler redundantly |  Trivial | fairscheduler | Tao Jie | Tao Jie |
| [MAPREDUCE-6831](https://issues.apache.org/jira/browse/MAPREDUCE-6831) | Flaky test TestJobImpl.testKilledDuringKillAbort |  Major | mrv2 | Peter Bacsko | Peter Bacsko |
| [HDFS-11290](https://issues.apache.org/jira/browse/HDFS-11290) | TestFSNameSystemMBean should wait until JMX cache is cleared |  Major | test | Akira Ajisaka | Erik Krogen |
| [HDFS-11570](https://issues.apache.org/jira/browse/HDFS-11570) | Unit test for NameNodeStatusMXBean |  Major | hdfs, test | Hanisha Koneru | Hanisha Koneru |
| [HADOOP-14218](https://issues.apache.org/jira/browse/HADOOP-14218) | Replace assertThat with assertTrue in MetricsAsserts |  Minor | . | Akira Ajisaka | Akira Ajisaka |


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
| [YARN-4615](https://issues.apache.org/jira/browse/YARN-4615) | TestAbstractYarnScheduler#testResourceRequestRecoveryToTheRightAppAttempt fails occasionally |  Major | test | Jason Lowe | Sunil G |
| [YARN-4684](https://issues.apache.org/jira/browse/YARN-4684) | TestYarnCLI#testGetContainers failing in CN locale |  Major | yarn | Bibin A Chundatt | Bibin A Chundatt |
| [HDFS-9754](https://issues.apache.org/jira/browse/HDFS-9754) | Avoid unnecessary getBlockCollection calls in BlockManager |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-9691](https://issues.apache.org/jira/browse/HDFS-9691) | TestBlockManagerSafeMode#testCheckSafeMode fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [HADOOP-12710](https://issues.apache.org/jira/browse/HADOOP-12710) | Remove dependency on commons-httpclient for TestHttpServerLogs |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-1477](https://issues.apache.org/jira/browse/HDFS-1477) | Support reconfiguring dfs.heartbeat.interval and dfs.namenode.heartbeat.recheck-interval without NN restart |  Major | namenode | Patrick Kling | Xiaobing Zhou |
| [HADOOP-12926](https://issues.apache.org/jira/browse/HADOOP-12926) | lz4.c does not detect 64-bit mode properly |  Major | native | Alan Burlison | Alan Burlison |
| [YARN-4805](https://issues.apache.org/jira/browse/YARN-4805) | Don\'t go through all schedulers in ParameterizedTestBase |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [HDFS-9349](https://issues.apache.org/jira/browse/HDFS-9349) | Support reconfiguring fs.protected.directories without NN restart |  Major | namenode | Xiaobing Zhou | Xiaobing Zhou |
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
| [YARN-5176](https://issues.apache.org/jira/browse/YARN-5176) | More test cases for queuing of containers at the NM |  Major | . | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-5204](https://issues.apache.org/jira/browse/YARN-5204) | Properly report status of killed/stopped queued containers |  Major | . | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-5191](https://issues.apache.org/jira/browse/YARN-5191) | Rename the “download=true” option for getLogs in NMWebServices and AHSWebServices |  Major | . | Xuan Gong | Xuan Gong |
| [HDFS-7987](https://issues.apache.org/jira/browse/HDFS-7987) | Allow files / directories to be moved |  Major | ui | Ravi Prakash | Ravi Prakash |
| [YARN-5124](https://issues.apache.org/jira/browse/YARN-5124) | Modify AMRMClient to set the ExecutionType in the ResourceRequest |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-5212](https://issues.apache.org/jira/browse/YARN-5212) | Run existing ContainerManager tests using QueuingContainerManagerImpl |  Major | . | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-4887](https://issues.apache.org/jira/browse/YARN-4887) | AM-RM protocol changes for identifying resource-requests explicitly |  Major | applications, resourcemanager | Subru Krishnan | Subru Krishnan |
| [YARN-5223](https://issues.apache.org/jira/browse/YARN-5223) | Container line in yarn logs output for a live application should include the hostname for the container |  Major | . | Siddharth Seth | Xuan Gong |
| [YARN-5122](https://issues.apache.org/jira/browse/YARN-5122) | "yarn logs" for running containers should print an explicit footer saying that the log may be incomplete |  Major | . | Vinod Kumar Vavilapalli | Jian He |
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
| [YARN-5459](https://issues.apache.org/jira/browse/YARN-5459) | Add support for docker rm |  Minor | yarn | Shane Kumpf | Shane Kumpf |
| [YARN-5429](https://issues.apache.org/jira/browse/YARN-5429) | Fix @return related javadoc warnings in yarn-api |  Major | . | Vrushali C | Vrushali C |
| [YARN-4888](https://issues.apache.org/jira/browse/YARN-4888) | Changes in scheduler to identify resource-requests explicitly by allocation-id |  Major | resourcemanager | Subru Krishnan | Subru Krishnan |
| [YARN-5470](https://issues.apache.org/jira/browse/YARN-5470) | Differentiate exactly match with regex in yarn log CLI |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5394](https://issues.apache.org/jira/browse/YARN-5394) | Remove bind-mount /etc/passwd for Docker containers |  Major | yarn | Zhankun Tang | Zhankun Tang |
| [YARN-5137](https://issues.apache.org/jira/browse/YARN-5137) | Make DiskChecker pluggable in NodeManager |  Major | nodemanager | Ray Chiang | Yufei Gu |
| [YARN-4676](https://issues.apache.org/jira/browse/YARN-4676) | Automatic and Asynchronous Decommissioning Nodes Status Tracking |  Major | resourcemanager | Daniel Zhi | Daniel Zhi |
| [YARN-5042](https://issues.apache.org/jira/browse/YARN-5042) | Mount /sys/fs/cgroup into Docker containers as read only mount |  Major | yarn | Varun Vasudev | luhuichun |
| [YARN-5564](https://issues.apache.org/jira/browse/YARN-5564) | Fix typo in RM\_SCHEDULER\_RESERVATION\_THRESHOLD\_INCREMENT\_MULTIPLE |  Trivial | fairscheduler | Ray Chiang | Ray Chiang |
| [YARN-5557](https://issues.apache.org/jira/browse/YARN-5557) | Add localize API to the ContainerManagementProtocol |  Major | . | Jian He | Jian He |
| [YARN-5327](https://issues.apache.org/jira/browse/YARN-5327) | API changes required to support recurring reservations in the YARN ReservationSystem |  Major | resourcemanager | Subru Krishnan | Sangeetha Abdu Jyothi |
| [YARN-4889](https://issues.apache.org/jira/browse/YARN-4889) | Changes in AMRMClient for identifying resource-requests explicitly |  Major | resourcemanager | Subru Krishnan | Arun Suresh |
| [HDFS-9392](https://issues.apache.org/jira/browse/HDFS-9392) | Admins support for maintenance state |  Major | . | Ming Ma | Ming Ma |
| [HDFS-10813](https://issues.apache.org/jira/browse/HDFS-10813) | DiskBalancer: Add the getNodeList method in Command |  Minor | balancer & mover | Yiqun Lin | Yiqun Lin |
| [YARN-5596](https://issues.apache.org/jira/browse/YARN-5596) | Fix failing unit test in TestDockerContainerRuntime |  Minor | nodemanager, yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-5264](https://issues.apache.org/jira/browse/YARN-5264) | Store all queue-specific information in FSQueue |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-5576](https://issues.apache.org/jira/browse/YARN-5576) | Allow resource localization while container is running |  Major | . | Jian He | Jian He |
| [YARN-5620](https://issues.apache.org/jira/browse/YARN-5620) | Core changes in NodeManager to support re-initialization of Containers with new launchContext |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-4091](https://issues.apache.org/jira/browse/YARN-4091) | Add REST API to retrieve scheduler activity |  Major | capacity scheduler, resourcemanager | Sunil G | Chen Ge |
| [YARN-5637](https://issues.apache.org/jira/browse/YARN-5637) | Changes in NodeManager to support Container rollback and commit |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-3140](https://issues.apache.org/jira/browse/YARN-3140) | Improve locks in AbstractCSQueue/LeafQueue/ParentQueue |  Major | resourcemanager, scheduler | Wangda Tan | Wangda Tan |
| [YARN-3141](https://issues.apache.org/jira/browse/YARN-3141) | Improve locks in SchedulerApplicationAttempt/FSAppAttempt/FiCaSchedulerApp |  Major | resourcemanager, scheduler | Wangda Tan | Wangda Tan |
| [YARN-5609](https://issues.apache.org/jira/browse/YARN-5609) | Expose upgrade and restart API in ContainerManagementProtocol |  Major | . | Arun Suresh | Arun Suresh |
| [HDFS-9895](https://issues.apache.org/jira/browse/HDFS-9895) | Remove unnecessary conf cache from DataNode |  Major | datanode | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-3142](https://issues.apache.org/jira/browse/YARN-3142) | Improve locks in AppSchedulingInfo |  Major | resourcemanager, scheduler | Wangda Tan | Varun Saxena |
| [YARN-4205](https://issues.apache.org/jira/browse/YARN-4205) | Add a service for monitoring application life time out |  Major | scheduler | nijel | Rohith Sharma K S |
| [YARN-5486](https://issues.apache.org/jira/browse/YARN-5486) | Update OpportunisticContainerAllocatorAMService::allocate method to handle OPPORTUNISTIC container requests |  Major | resourcemanager | Arun Suresh | Konstantinos Karanasos |
| [YARN-5384](https://issues.apache.org/jira/browse/YARN-5384) | Expose priority in ReservationSystem submission APIs |  Major | capacity scheduler, fairscheduler, resourcemanager | Sean Po | Sean Po |
| [YARN-5702](https://issues.apache.org/jira/browse/YARN-5702) | Refactor TestPBImplRecords so that we can reuse for testing protocol records in other YARN modules |  Major | . | Subru Krishnan | Subru Krishnan |
| [YARN-3139](https://issues.apache.org/jira/browse/YARN-3139) | Improve locks in AbstractYarnScheduler/CapacityScheduler/FairScheduler |  Major | resourcemanager, scheduler | Wangda Tan | Wangda Tan |
| [HDFS-10893](https://issues.apache.org/jira/browse/HDFS-10893) | Refactor TestDFSShell by setting up MiniDFSCluser once for all commands test |  Major | test | Mingliang Liu | Mingliang Liu |
| [HADOOP-13627](https://issues.apache.org/jira/browse/HADOOP-13627) | Have an explicit KerberosAuthException for UGI to throw, text from public constants |  Major | security | Steve Loughran | Xiao Chen |
| [HDFS-9390](https://issues.apache.org/jira/browse/HDFS-9390) | Block management for maintenance states |  Major | . | Ming Ma | Ming Ma |
| [YARN-4911](https://issues.apache.org/jira/browse/YARN-4911) | Bad placement policy in FairScheduler causes the RM to crash |  Major | fairscheduler | Ray Chiang | Ray Chiang |
| [YARN-5047](https://issues.apache.org/jira/browse/YARN-5047) | Refactor nodeUpdate across schedulers |  Major | capacityscheduler, fairscheduler, scheduler | Ray Chiang | Ray Chiang |
| [YARN-5799](https://issues.apache.org/jira/browse/YARN-5799) | Fix Opportunistic Allocation to set the correct value of Node Http Address |  Major | resourcemanager | Arun Suresh | Arun Suresh |
| [YARN-2995](https://issues.apache.org/jira/browse/YARN-2995) | Enhance UI to show cluster resource utilization of various container Execution types |  Blocker | resourcemanager | Sriram Rao | Konstantinos Karanasos |
| [YARN-5716](https://issues.apache.org/jira/browse/YARN-5716) | Add global scheduler interface definition and update CapacityScheduler to use it. |  Major | capacityscheduler | Wangda Tan | Wangda Tan |
| [YARN-5833](https://issues.apache.org/jira/browse/YARN-5833) | Add validation to ensure default ports are unique in Configuration |  Major | yarn | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-4329](https://issues.apache.org/jira/browse/YARN-4329) | Allow fetching exact reason as to why a submitted app is in ACCEPTED state in Fair Scheduler |  Major | fairscheduler, resourcemanager | Naganarasimha G R | Yufei Gu |
| [YARN-5611](https://issues.apache.org/jira/browse/YARN-5611) | Provide an API to update lifetime of an application. |  Major | resourcemanager | Rohith Sharma K S | Rohith Sharma K S |
| [HDFS-11119](https://issues.apache.org/jira/browse/HDFS-11119) | Support for parallel checking of StorageLocations on DataNode startup |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-11114](https://issues.apache.org/jira/browse/HDFS-11114) | Support for running async disk checks in DataNode |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-11148](https://issues.apache.org/jira/browse/HDFS-11148) | Update DataNode to use StorageLocationChecker at startup |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [YARN-5865](https://issues.apache.org/jira/browse/YARN-5865) | Retrospect updateApplicationPriority api to handle state store exception in align with YARN-5611 |  Major | . | Sunil G | Sunil G |
| [YARN-5649](https://issues.apache.org/jira/browse/YARN-5649) | Add REST endpoints for updating application timeouts |  Major | scheduler | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-4206](https://issues.apache.org/jira/browse/YARN-4206) | Add Application timeouts in Application report and CLI |  Major | scheduler | nijel | Rohith Sharma K S |
| [HDFS-11149](https://issues.apache.org/jira/browse/HDFS-11149) | Support for parallel checking of FsVolumes |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8678](https://issues.apache.org/jira/browse/HDFS-8678) | Bring back the feature to view chunks of files in the HDFS file browser |  Major | ui | Ravi Prakash | Ravi Prakash |
| [YARN-5761](https://issues.apache.org/jira/browse/YARN-5761) | Separate QueueManager from Scheduler |  Major | capacityscheduler | Xuan Gong | Xuan Gong |
| [YARN-5746](https://issues.apache.org/jira/browse/YARN-5746) | The state of the parentQueue and its childQueues should be synchronized. |  Major | capacity scheduler, resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-5965](https://issues.apache.org/jira/browse/YARN-5965) | Retrospect ApplicationReport#getApplicationTimeouts |  Major | scheduler | Jian He | Rohith Sharma K S |
| [YARN-5982](https://issues.apache.org/jira/browse/YARN-5982) | Simplify opportunistic container parameters and metrics |  Major | . | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-5970](https://issues.apache.org/jira/browse/YARN-5970) | Validate application update timeout request parameters |  Major | scheduler | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-5524](https://issues.apache.org/jira/browse/YARN-5524) | Yarn live log aggregation does not throw if command line arg is wrong |  Major | log-aggregation | Prasanth Jayachandran | Xuan Gong |
| [YARN-5650](https://issues.apache.org/jira/browse/YARN-5650) | Render Application Timeout value in web UI |  Major | scheduler | Rohith Sharma K S | Akhil PB |
| [HDFS-11182](https://issues.apache.org/jira/browse/HDFS-11182) | Update DataNode to use DatasetVolumeChecker |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [YARN-5756](https://issues.apache.org/jira/browse/YARN-5756) | Add state-machine implementation for scheduler queues |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5931](https://issues.apache.org/jira/browse/YARN-5931) | Document timeout interfaces CLI and REST APIs |  Major | scheduler | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-5529](https://issues.apache.org/jira/browse/YARN-5529) | Create new DiskValidator class with metrics |  Major | nodemanager | Ray Chiang | Yufei Gu |
| [YARN-6025](https://issues.apache.org/jira/browse/YARN-6025) | Fix synchronization issues of AbstractYarnScheduler#nodeUpdate and its implementations |  Major | capacity scheduler, scheduler | Naganarasimha G R | Naganarasimha G R |
| [YARN-5923](https://issues.apache.org/jira/browse/YARN-5923) | Unable to access logs for a running application if YARN\_ACL\_ENABLE is enabled |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5906](https://issues.apache.org/jira/browse/YARN-5906) | Update AppSchedulingInfo to use SchedulingPlacementSet |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-6009](https://issues.apache.org/jira/browse/YARN-6009) | RM fails to start during an upgrade - Failed to load/recover state (YarnException: Invalid application timeout, value=0 for type=LIFETIME) |  Critical | resourcemanager | Gour Saha | Rohith Sharma K S |
| [YARN-3955](https://issues.apache.org/jira/browse/YARN-3955) | Support for application priority ACLs in queues of CapacityScheduler |  Major | capacityscheduler | Sunil G | Sunil G |
| [HDFS-9391](https://issues.apache.org/jira/browse/HDFS-9391) | Update webUI/JMX to display maintenance state info |  Major | . | Ming Ma | Manoj Govindassamy |
| [YARN-5416](https://issues.apache.org/jira/browse/YARN-5416) | TestRMRestart#testRMRestartWaitForPreviousAMToFinish failed intermittently due to not wait SchedulerApplicationAttempt to be stopped |  Minor | test, yarn | Junping Du | Junping Du |
| [YARN-6011](https://issues.apache.org/jira/browse/YARN-6011) | Add a new web service to list the files on a container in AHSWebService |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-6016](https://issues.apache.org/jira/browse/YARN-6016) | Fix minor bugs in handling of local AMRMToken in AMRMProxy |  Minor | federation | Botong Huang | Botong Huang |
| [YARN-5556](https://issues.apache.org/jira/browse/YARN-5556) | CapacityScheduler: Support deleting queues without requiring a RM restart |  Major | capacity scheduler | Xuan Gong | Naganarasimha G R |
| [HDFS-11259](https://issues.apache.org/jira/browse/HDFS-11259) | Update fsck to display maintenance state info |  Major | datanode, namenode | Manoj Govindassamy | Manoj Govindassamy |
| [YARN-5831](https://issues.apache.org/jira/browse/YARN-5831) | Propagate allowPreemptionFrom flag all the way down to the app |  Major | fairscheduler | Karthik Kambatla | Yufei Gu |
| [HDFS-11296](https://issues.apache.org/jira/browse/HDFS-11296) | Maintenance state expiry should be an epoch time and not jvm monotonic |  Major | . | Manoj Govindassamy | Manoj Govindassamy |
| [YARN-6099](https://issues.apache.org/jira/browse/YARN-6099) | Improve webservice to list aggregated log files |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5830](https://issues.apache.org/jira/browse/YARN-5830) | FairScheduler: Avoid preempting AM containers |  Major | fairscheduler | Karthik Kambatla | Yufei Gu |
| [YARN-3637](https://issues.apache.org/jira/browse/YARN-3637) | Handle localization sym-linking correctly at the YARN level |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-6126](https://issues.apache.org/jira/browse/YARN-6126) | Obtaining app logs for Running application fails with "Unable to parse json from webservice. Error:" |  Major | . | Sumana Sathish | Xuan Gong |
| [YARN-6100](https://issues.apache.org/jira/browse/YARN-6100) | improve YARN webservice to output aggregated container logs |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-6108](https://issues.apache.org/jira/browse/YARN-6108) | Improve AHS webservice to accept NM address as a parameter to get container logs |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5258](https://issues.apache.org/jira/browse/YARN-5258) | Document Use of Docker with LinuxContainerExecutor |  Critical | documentation | Daniel Templeton | Daniel Templeton |
| [HADOOP-13075](https://issues.apache.org/jira/browse/HADOOP-13075) | Add support for SSE-KMS and SSE-C in s3a filesystem |  Major | fs/s3 | Andrew Olson | Steve Moist |
| [YARN-6113](https://issues.apache.org/jira/browse/YARN-6113) | re-direct NM Web Service to get container logs for finished applications |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-6156](https://issues.apache.org/jira/browse/YARN-6156) | AM blacklisting to consider node label partition |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [HDFS-11265](https://issues.apache.org/jira/browse/HDFS-11265) | Extend visualization for Maintenance Mode under Datanode tab in the NameNode UI |  Major | datanode, namenode | Manoj Govindassamy | Elek, Marton |
| [YARN-6163](https://issues.apache.org/jira/browse/YARN-6163) | FS Preemption is a trickle for severely starved applications |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-5798](https://issues.apache.org/jira/browse/YARN-5798) | Set UncaughtExceptionHandler for all FairScheduler threads |  Major | fairscheduler | Karthik Kambatla | Yufei Gu |
| [HADOOP-14040](https://issues.apache.org/jira/browse/HADOOP-14040) | Use shaded aws-sdk uber-JAR 1.11.86 |  Major | build, fs/s3 | Steve Loughran | Steve Loughran |
| [YARN-6193](https://issues.apache.org/jira/browse/YARN-6193) | FairScheduler might not trigger preemption when using DRF |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-14099](https://issues.apache.org/jira/browse/HADOOP-14099) | Split S3 testing documentation out into its own file |  Minor | documentation, fs/s3 | Steve Loughran | Steve Loughran |
| [HDFS-11411](https://issues.apache.org/jira/browse/HDFS-11411) | Avoid OutOfMemoryError in TestMaintenanceState test runs |  Major | datanode, namenode | Manoj Govindassamy | Manoj Govindassamy |
| [HADOOP-14102](https://issues.apache.org/jira/browse/HADOOP-14102) | Relax error message assertion in S3A test ITestS3AEncryptionSSEC |  Minor | fs/s3 | Mingliang Liu | Mingliang Liu |
| [YARN-5959](https://issues.apache.org/jira/browse/YARN-5959) | RM changes to support change of container ExecutionType |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-6228](https://issues.apache.org/jira/browse/YARN-6228) | EntityGroupFSTimelineStore should allow configurable cache stores. |  Major | timelineserver | Li Lu | Li Lu |
| [YARN-6215](https://issues.apache.org/jira/browse/YARN-6215) | FairScheduler preemption and update should not run concurrently |  Major | fairscheduler, test | Sunil G | Tao Jie |
| [YARN-6123](https://issues.apache.org/jira/browse/YARN-6123) | [YARN-5864] Add a test to make sure queues of orderingPolicy will be updated when childQueues is added or removed. |  Major | . | Wangda Tan | Wangda Tan |
| [HDFS-11412](https://issues.apache.org/jira/browse/HDFS-11412) | Maintenance minimum replication config value allowable range should be [0, DefaultReplication] |  Major | datanode, namenode | Manoj Govindassamy | Manoj Govindassamy |
| [YARN-5669](https://issues.apache.org/jira/browse/YARN-5669) | Add support for Docker pull |  Major | yarn | Zhankun Tang | luhuichun |
| [YARN-1047](https://issues.apache.org/jira/browse/YARN-1047) | Expose # of pre-emptions as a queue counter |  Major | fairscheduler | Philip Zeyliger | Karthik Kambatla |
| [YARN-6314](https://issues.apache.org/jira/browse/YARN-6314) | Potential infinite redirection on YARN log redirection web service |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-6313](https://issues.apache.org/jira/browse/YARN-6313) | yarn logs cli should provide logs for a completed container even when application is still running |  Major | . | Siddharth Seth | Xuan Gong |
| [YARN-6367](https://issues.apache.org/jira/browse/YARN-6367) | YARN logs CLI needs alway check containerLogsInfo/containerLogInfo before parse the JSON object from NMWebService |  Major | . | Siddharth Seth | Xuan Gong |
| [HADOOP-14120](https://issues.apache.org/jira/browse/HADOOP-14120) | needless S3AFileSystem.setOptionalPutRequestParameters in S3ABlockOutputStream putObject() |  Minor | fs/s3 | Steve Loughran | Yuanbo Liu |
| [HADOOP-14230](https://issues.apache.org/jira/browse/HADOOP-14230) | TestAdlFileSystemContractLive fails to clean up |  Minor | fs/adl, test | John Zhuge | John Zhuge |
| [HADOOP-14038](https://issues.apache.org/jira/browse/HADOOP-14038) | Rename ADLS credential properties |  Minor | fs/adl | John Zhuge | John Zhuge |
| [YARN-6109](https://issues.apache.org/jira/browse/YARN-6109) | Add an ability to convert ChildQueue to ParentQueue |  Major | capacity scheduler | Xuan Gong | Xuan Gong |
| [HADOOP-14290](https://issues.apache.org/jira/browse/HADOOP-14290) | Update SLF4J from 1.7.10 to 1.7.25 |  Major | . | Akira Ajisaka | Akira Ajisaka |
| [YARN-6372](https://issues.apache.org/jira/browse/YARN-6372) | Add default value for NM disk validator |  Major | nodemanager | Yufei Gu | Yufei Gu |
| [HADOOP-14301](https://issues.apache.org/jira/browse/HADOOP-14301) | Deprecate SharedInstanceProfileCredentialsProvider in branch-2. |  Major | fs/s3 | Mingliang Liu | Mingliang Liu |
| [HADOOP-14255](https://issues.apache.org/jira/browse/HADOOP-14255) | S3A to delete unnecessary fake directory objects in mkdirs() |  Major | fs/s3 | Mingliang Liu | Mingliang Liu |
| [YARN-6040](https://issues.apache.org/jira/browse/YARN-6040) | Introduce api independent PendingAsk to replace usage of ResourceRequest within Scheduler classes |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-6432](https://issues.apache.org/jira/browse/YARN-6432) | FairScheduler: Reserve preempted resources for corresponding applications |  Major | . | Miklos Szegedi | Miklos Szegedi |
| [HADOOP-14241](https://issues.apache.org/jira/browse/HADOOP-14241) | Add ADLS sensitive config keys to default list |  Minor | fs, fs/adl, security | John Zhuge | John Zhuge |
| [HADOOP-14324](https://issues.apache.org/jira/browse/HADOOP-14324) | Refine S3 server-side-encryption key as encryption secret; improve error reporting and diagnostics |  Blocker | fs/s3 | Steve Loughran | Steve Loughran |
| [HDFS-7964](https://issues.apache.org/jira/browse/HDFS-7964) | Add support for async edit logging |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [YARN-4359](https://issues.apache.org/jira/browse/YARN-4359) | Update LowCost agents logic to take advantage of YARN-4358 |  Major | capacityscheduler, fairscheduler, resourcemanager | Carlo Curino | Ishai Menache |
| [YARN-6542](https://issues.apache.org/jira/browse/YARN-6542) | Fix the logger in TestAlignedPlanner and TestGreedyReservationAgent |  Major | reservation system | Subru Krishnan | Subru Krishnan |
| [YARN-5331](https://issues.apache.org/jira/browse/YARN-5331) | Extend RLESparseResourceAllocation with period for supporting recurring reservations in YARN ReservationSystem |  Major | resourcemanager | Subru Krishnan | Sangeetha Abdu Jyothi |
| [HDFS-9922](https://issues.apache.org/jira/browse/HDFS-9922) | Upgrade Domain placement policy status marks a good block in violation when there are decommissioned nodes |  Minor | . | Chris Trezzo | Chris Trezzo |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4535](https://issues.apache.org/jira/browse/YARN-4535) | Fix checkstyle error in CapacityScheduler.java |  Trivial | . | Rohith Sharma K S | Naganarasimha G R |
| [YARN-5297](https://issues.apache.org/jira/browse/YARN-5297) | Avoid printing a stack trace when recovering an app after the RM restarts |  Major | . | Siddharth Seth | Junping Du |
| [YARN-5717](https://issues.apache.org/jira/browse/YARN-5717) | Add tests for container-executor\'s is\_feature\_enabled function |  Major | yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-5308](https://issues.apache.org/jira/browse/YARN-5308) | FairScheduler: Move continuous scheduling related tests to TestContinuousScheduling |  Major | fairscheduler, test | Karthik Kambatla | Kai Sasaki |
| [YARN-5822](https://issues.apache.org/jira/browse/YARN-5822) | Log ContainerRuntime initialization error in LinuxContainerExecutor |  Trivial | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [YARN-5646](https://issues.apache.org/jira/browse/YARN-5646) | Add documentation and update config parameter names for scheduling of OPPORTUNISTIC containers |  Blocker | . | Konstantinos Karanasos | Konstantinos Karanasos |
| [YARN-6411](https://issues.apache.org/jira/browse/YARN-6411) | Clean up the overwrite of createDispatcher() in subclass of MockRM |  Minor | resourcemanager | Yufei Gu | Yufei Gu |
| [HADOOP-14344](https://issues.apache.org/jira/browse/HADOOP-14344) | Revert HADOOP-13606 swift FS to add a service load metadata file |  Major | . | John Zhuge | John Zhuge |
| [HDFS-11717](https://issues.apache.org/jira/browse/HDFS-11717) | Add unit test for HDFS-11709 StandbyCheckpointer should handle non-existing legacyOivImageDir gracefully |  Minor | ha, namenode | Erik Krogen | Erik Krogen |


