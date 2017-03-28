
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

## Release 3.0.0-alpha3 - Unreleased (as of 2017-03-28)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10860](https://issues.apache.org/jira/browse/HDFS-10860) | Switch HttpFS from Tomcat to Jetty |  Blocker | httpfs | John Zhuge | John Zhuge |
| [HADOOP-13929](https://issues.apache.org/jira/browse/HADOOP-13929) | ADLS connector should not check in contract-test-options.xml |  Major | fs/adl, test | John Zhuge | John Zhuge |
| [HDFS-11100](https://issues.apache.org/jira/browse/HDFS-11100) | Recursively deleting file protected by sticky bit should fail |  Critical | fs | John Zhuge | John Zhuge |
| [HADOOP-13805](https://issues.apache.org/jira/browse/HADOOP-13805) | UGI.getCurrentUser() fails if user does not have a keytab associated |  Major | security | Alejandro Abdelnur | Xiao Chen |
| [HDFS-11405](https://issues.apache.org/jira/browse/HDFS-11405) | Rename "erasurecode" CLI subcommand to "ec" |  Blocker | erasure-coding | Andrew Wang | Manoj Govindassamy |
| [HDFS-11426](https://issues.apache.org/jira/browse/HDFS-11426) | Refactor EC CLI to be similar to storage policies CLI |  Major | erasure-coding, shell | Andrew Wang | Andrew Wang |
| [HDFS-11427](https://issues.apache.org/jira/browse/HDFS-11427) | Rename "rs-default" to "rs" |  Major | erasure-coding | Andrew Wang | Andrew Wang |
| [HDFS-11382](https://issues.apache.org/jira/browse/HDFS-11382) | Persist Erasure Coding Policy ID in a new optional field in INodeFile in FSImage |  Major | hdfs | Manoj Govindassamy | Manoj Govindassamy |
| [HDFS-11428](https://issues.apache.org/jira/browse/HDFS-11428) | Change setErasureCodingPolicy to take a required string EC policy name |  Major | erasure-coding | Andrew Wang | Andrew Wang |
| [HDFS-11152](https://issues.apache.org/jira/browse/HDFS-11152) | Start erasure coding policy ID number from 1 instead of 0 to void potential unexpected errors |  Blocker | erasure-coding | SammiChen | SammiChen |
| [HDFS-11314](https://issues.apache.org/jira/browse/HDFS-11314) | Enforce set of enabled EC policies on the NameNode |  Blocker | erasure-coding | Andrew Wang | Andrew Wang |
| [HDFS-11505](https://issues.apache.org/jira/browse/HDFS-11505) | Do not enable any erasure coding policies by default |  Major | erasure-coding | Andrew Wang | Manoj Govindassamy |
| [HADOOP-10101](https://issues.apache.org/jira/browse/HADOOP-10101) | Update guava dependency to the latest version |  Major | . | Rakesh R | Tsuyoshi Ozawa |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-5910](https://issues.apache.org/jira/browse/YARN-5910) | Support for multi-cluster delegation tokens |  Minor | security | Clay B. | Jian He |
| [YARN-5864](https://issues.apache.org/jira/browse/YARN-5864) | YARN Capacity Scheduler - Queue Priorities |  Major | . | Wangda Tan | Wangda Tan |
| [HDFS-11194](https://issues.apache.org/jira/browse/HDFS-11194) | Maintain aggregated peer performance metrics on NameNode |  Major | namenode | Xiaobing Zhou | Arpit Agarwal |
| [HADOOP-14049](https://issues.apache.org/jira/browse/HADOOP-14049) | Honour AclBit flag associated to file/folder permission for Azure datalake account |  Major | fs/adl | Vishwajeet Dusane | Vishwajeet Dusane |
| [YARN-5280](https://issues.apache.org/jira/browse/YARN-5280) | Allow YARN containers to run with Java Security Manager |  Minor | nodemanager, yarn | Greg Phillips | Greg Phillips |
| [HADOOP-14048](https://issues.apache.org/jira/browse/HADOOP-14048) | REDO operation of WASB#AtomicRename should create placeholder blob for destination folder |  Critical | fs/azure | NITIN VERMA | NITIN VERMA |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14002](https://issues.apache.org/jira/browse/HADOOP-14002) | Document -DskipShade property in BUILDING.txt |  Minor | build, documentation | Hanisha Koneru | Hanisha Koneru |
| [HADOOP-13956](https://issues.apache.org/jira/browse/HADOOP-13956) | Read ADLS credentials from Credential Provider |  Critical | fs/adl | John Zhuge | John Zhuge |
| [YARN-5547](https://issues.apache.org/jira/browse/YARN-5547) | NMLeveldbStateStore should be more tolerant of unknown keys |  Major | nodemanager | Jason Lowe | Ajith S |
| [HADOOP-13990](https://issues.apache.org/jira/browse/HADOOP-13990) | Document KMS usage of CredentialProvider API |  Minor | documentation, kms | John Zhuge | John Zhuge |
| [HDFS-10534](https://issues.apache.org/jira/browse/HDFS-10534) | NameNode WebUI should display DataNode usage histogram |  Major | namenode, ui | Zhe Zhang | Kai Sasaki |
| [HDFS-9884](https://issues.apache.org/jira/browse/HDFS-9884) | Use doxia macro to generate in-page TOC of HDFS site documentation |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-4658](https://issues.apache.org/jira/browse/YARN-4658) | Typo in o.a.h.yarn.server.resourcemanager.scheduler.fair.TestFairScheduler comment |  Major | . | Daniel Templeton | Udai Kiran Potluri |
| [MAPREDUCE-6644](https://issues.apache.org/jira/browse/MAPREDUCE-6644) | Use doxia macro to generate in-page TOC of MapReduce site documentation |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-11370](https://issues.apache.org/jira/browse/HDFS-11370) | Optimize NamenodeFsck#getReplicaInfo |  Minor | namenode | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-11353](https://issues.apache.org/jira/browse/HDFS-11353) | Improve the unit tests relevant to DataNode volume failure testing |  Major | . | Yiqun Lin | Yiqun Lin |
| [HADOOP-14053](https://issues.apache.org/jira/browse/HADOOP-14053) | Update the link to HTrace SpanReceivers |  Minor | documentation | Akira Ajisaka | Yiqun Lin |
| [HADOOP-12097](https://issues.apache.org/jira/browse/HADOOP-12097) | Allow port range to be specified while starting webapp |  Major | . | Varun Saxena | Varun Saxena |
| [HDFS-10219](https://issues.apache.org/jira/browse/HDFS-10219) | Change the default value for dfs.namenode.reconstruction.pending.timeout-sec from -1 to 300 |  Minor | . | Akira Ajisaka | Yiqun Lin |
| [MAPREDUCE-6404](https://issues.apache.org/jira/browse/MAPREDUCE-6404) | Allow AM to specify a port range for starting its webapp |  Major | applicationmaster | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6842](https://issues.apache.org/jira/browse/MAPREDUCE-6842) | Update the links in PiEstimator document |  Minor | documentation | Akira Ajisaka | Jung Yoo |
| [HDFS-11210](https://issues.apache.org/jira/browse/HDFS-11210) | Enhance key rolling to guarantee new KeyVersion is returned from generateEncryptedKeys after a key is rolled |  Major | encryption, kms | Xiao Chen | Xiao Chen |
| [HDFS-11409](https://issues.apache.org/jira/browse/HDFS-11409) | DatanodeInfo getNetworkLocation and setNetworkLocation shoud use volatile instead of synchronized |  Minor | performance | Chen Liang | Chen Liang |
| [YARN-4753](https://issues.apache.org/jira/browse/YARN-4753) | Use doxia macro to generate in-page TOC of YARN site documentation |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-11333](https://issues.apache.org/jira/browse/HDFS-11333) | Print a user friendly error message when plugins are not found |  Minor | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-6174](https://issues.apache.org/jira/browse/YARN-6174) | Log files pattern should be same for both running and finished container |  Major | yarn | Sumana Sathish | Xuan Gong |
| [HDFS-11375](https://issues.apache.org/jira/browse/HDFS-11375) | Display the volume storage type in datanode UI |  Minor | datanode, ui | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [YARN-6125](https://issues.apache.org/jira/browse/YARN-6125) | The application attempt's diagnostic message should have a maximum size |  Critical | resourcemanager | Daniel Templeton | Andras Piros |
| [HADOOP-14077](https://issues.apache.org/jira/browse/HADOOP-14077) | Improve the patch of HADOOP-13119 |  Major | security | Yuanbo Liu | Yuanbo Liu |
| [HDFS-11406](https://issues.apache.org/jira/browse/HDFS-11406) | Remove unused getStartInstance and getFinalizeInstance in FSEditLogOp |  Trivial | . | Andrew Wang | Alison Yu |
| [HDFS-11438](https://issues.apache.org/jira/browse/HDFS-11438) | Fix typo in error message of StoragePolicyAdmin tool |  Trivial | . | Alison Yu | Alison Yu |
| [YARN-6194](https://issues.apache.org/jira/browse/YARN-6194) | Cluster capacity in SchedulingPolicy is updated only on allocation file reload |  Major | fairscheduler | Karthik Kambatla | Yufei Gu |
| [HADOOP-13321](https://issues.apache.org/jira/browse/HADOOP-13321) | Deprecate FileSystem APIs that promote inefficient call patterns. |  Major | fs | Chris Nauroth | Mingliang Liu |
| [HADOOP-14097](https://issues.apache.org/jira/browse/HADOOP-14097) | Remove Java6 specific code from GzipCodec.java |  Minor | . | Akira Ajisaka | Elek, Marton |
| [HADOOP-13817](https://issues.apache.org/jira/browse/HADOOP-13817) | Add a finite shell command timeout to ShellBasedUnixGroupsMapping |  Minor | security | Harsh J | Harsh J |
| [HDFS-11295](https://issues.apache.org/jira/browse/HDFS-11295) | Check storage remaining instead of node remaining in BlockPlacementPolicyDefault.chooseReplicaToDelete() |  Major | namenode | Xiao Liang | Elek, Marton |
| [HADOOP-14127](https://issues.apache.org/jira/browse/HADOOP-14127) | Add log4j configuration to enable logging in hadoop-distcp's tests |  Minor | test | Xiao Chen | Xiao Chen |
| [HDFS-11466](https://issues.apache.org/jira/browse/HDFS-11466) | Change dfs.namenode.write-lock-reporting-threshold-ms default from 1000ms to 5000ms |  Major | namenode | Andrew Wang | Andrew Wang |
| [YARN-6189](https://issues.apache.org/jira/browse/YARN-6189) | Improve application status log message when RM restarted when app is in NEW state |  Major | . | Yesha Vora | Junping Du |
| [HDFS-11432](https://issues.apache.org/jira/browse/HDFS-11432) | Federation : Support fully qualified path for Quota/Snapshot/cacheadmin/cryptoadmin commands |  Major | federation | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-11461](https://issues.apache.org/jira/browse/HDFS-11461) | DataNode Disk Outlier Detection |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HDFS-11416](https://issues.apache.org/jira/browse/HDFS-11416) | Refactor out system default erasure coding policy |  Major | erasure-coding | Andrew Wang | Andrew Wang |
| [HADOOP-13930](https://issues.apache.org/jira/browse/HADOOP-13930) | Azure: Add Authorization support to WASB |  Major | fs/azure | Dushyanth | Sivaguru Sankaridurg |
| [HDFS-11494](https://issues.apache.org/jira/browse/HDFS-11494) | Log message when DN is not selected for block replication |  Minor | . | Yiqun Lin | Yiqun Lin |
| [HDFS-8741](https://issues.apache.org/jira/browse/HDFS-8741) | Proper error msg to be printed when invalid operation type is given to WebHDFS operations |  Minor | webhdfs | Archana T | Surendra Singh Lilhore |
| [HADOOP-14108](https://issues.apache.org/jira/browse/HADOOP-14108) | CLI MiniCluster: add an option to specify NameNode HTTP port |  Minor | . | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-10838](https://issues.apache.org/jira/browse/HDFS-10838) | Last full block report received time for each DN should be easily discoverable |  Major | ui | Arpit Agarwal | Surendra Singh Lilhore |
| [HDFS-11477](https://issues.apache.org/jira/browse/HDFS-11477) | Simplify file IO profiling configuration |  Minor | . | Hanisha Koneru | Hanisha Koneru |
| [YARN-6287](https://issues.apache.org/jira/browse/YARN-6287) | RMCriticalThreadUncaughtExceptionHandler.rmContext should be final |  Minor | resourcemanager | Daniel Templeton | Corey Barker |
| [HADOOP-14150](https://issues.apache.org/jira/browse/HADOOP-14150) | Implement getHomeDirectory() method in NativeAzureFileSystem |  Critical | fs/azure | Namit Maheshwari | Santhosh G Nayak |
| [HADOOP-13606](https://issues.apache.org/jira/browse/HADOOP-13606) | swift FS to add a service load metadata file |  Major | fs/swift | Steve Loughran | John Zhuge |
| [YARN-6300](https://issues.apache.org/jira/browse/YARN-6300) | NULL\_UPDATE\_REQUESTS is redundant in TestFairScheduler |  Minor | . | Daniel Templeton | Yuanbo Liu |
| [HDFS-11506](https://issues.apache.org/jira/browse/HDFS-11506) | Move ErasureCodingPolicyManager#getSystemDefaultPolicy to test code |  Major | erasure-coding | Andrew Wang | Manoj Govindassamy |
| [HADOOP-13946](https://issues.apache.org/jira/browse/HADOOP-13946) | Document how HDFS updates timestamps in the FS spec; compare with object stores |  Minor | documentation, fs | Steve Loughran | Steve Loughran |
| [HDFS-11511](https://issues.apache.org/jira/browse/HDFS-11511) | Support Timeout when checking single disk |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HDFS-10601](https://issues.apache.org/jira/browse/HDFS-10601) | Improve log message to include hostname when the NameNode is in safemode |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [HDFS-11517](https://issues.apache.org/jira/browse/HDFS-11517) | Expose slow disks via DataNode JMX |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HADOOP-14169](https://issues.apache.org/jira/browse/HADOOP-14169) | Implement listStatusIterator, listLocatedStatus for ViewFs |  Minor | viewfs | Erik Krogen | Erik Krogen |
| [HDFS-11547](https://issues.apache.org/jira/browse/HDFS-11547) | Add logs for slow BlockReceiver while writing data to disk |  Major | datanode | Xiaobing Zhou | Xiaobing Zhou |
| [MAPREDUCE-6865](https://issues.apache.org/jira/browse/MAPREDUCE-6865) | Fix typo in javadoc for DistributedCache |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [HADOOP-13945](https://issues.apache.org/jira/browse/HADOOP-13945) | Azure: Add Kerberos and Delegation token support to WASB client. |  Major | fs/azure | Santhosh G Nayak | Santhosh G Nayak |
| [HDFS-11545](https://issues.apache.org/jira/browse/HDFS-11545) | Propagate DataNode's slow disks info to the NameNode via Heartbeat |  Major | . | Hanisha Koneru | Hanisha Koneru |
| [YARN-6284](https://issues.apache.org/jira/browse/YARN-6284) | hasAlreadyRun should be final in ResourceManager.StandByTransitionRunnable |  Major | resourcemanager | Daniel Templeton | Laura Adams |
| [HADOOP-14213](https://issues.apache.org/jira/browse/HADOOP-14213) | Move Configuration runtime check for hadoop-site.xml to initialization |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [HDFS-10649](https://issues.apache.org/jira/browse/HDFS-10649) | Remove unused PermissionStatus#applyUMask |  Trivial | . | John Zhuge | Chen Liang |
| [HDFS-11574](https://issues.apache.org/jira/browse/HDFS-11574) | Spelling mistakes in the Java source |  Trivial | . | hu xiaodong |  |
| [HDFS-11534](https://issues.apache.org/jira/browse/HDFS-11534) | Add counters for number of blocks in pending IBR |  Major | hdfs | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-5956](https://issues.apache.org/jira/browse/YARN-5956) | Refactor ClientRMService to unify error handling across apis |  Minor | resourcemanager | Kai Sasaki | Kai Sasaki |
| [YARN-6379](https://issues.apache.org/jira/browse/YARN-6379) | Remove unused argument in ClientRMService |  Trivial | . | Kai Sasaki | Kai Sasaki |
| [HADOOP-14233](https://issues.apache.org/jira/browse/HADOOP-14233) | Delay construction of PreCondition.check failure message in Configuration#set |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [HADOOP-14240](https://issues.apache.org/jira/browse/HADOOP-14240) | Configuration#get return value optimization |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [YARN-6339](https://issues.apache.org/jira/browse/YARN-6339) | Improve performance for createAndGetApplicationReport |  Major | . | yunjiong zhao | yunjiong zhao |
| [HDFS-11170](https://issues.apache.org/jira/browse/HDFS-11170) | Add builder-based create API to FileSystem |  Major | . | SammiChen | SammiChen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-13858](https://issues.apache.org/jira/browse/HADOOP-13858) | TestGridmixMemoryEmulation and TestResourceUsageEmulators fail on the environment other than Linux or Windows |  Major | test | Akira Ajisaka | Akira Ajisaka |
| [YARN-6012](https://issues.apache.org/jira/browse/YARN-6012) | Remove node label (removeFromClusterNodeLabels) document is missing |  Major | documentation | Weiwei Yang | Ying Zhang |
| [YARN-6117](https://issues.apache.org/jira/browse/YARN-6117) | SharedCacheManager does not start up |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-6082](https://issues.apache.org/jira/browse/YARN-6082) | Invalid REST api response for getApps since queueUsagePercentage is coming as INF |  Critical | . | Sunil G | Sunil G |
| [MAPREDUCE-6808](https://issues.apache.org/jira/browse/MAPREDUCE-6808) | Log map attempts as part of shuffle handler audit log |  Major | . | Jonathan Eagles | Gergő Pásztor |
| [HADOOP-13989](https://issues.apache.org/jira/browse/HADOOP-13989) | Remove erroneous source jar option from hadoop-client shade configuration |  Minor | build | Joe Pallas | Joe Pallas |
| [YARN-4975](https://issues.apache.org/jira/browse/YARN-4975) | Fair Scheduler: exception thrown when a parent queue marked 'parent' has configured child queues |  Major | fairscheduler | Ashwin Shankar | Yufei Gu |
| [HDFS-11364](https://issues.apache.org/jira/browse/HDFS-11364) | Add a test to verify Audit log entries for setfacl/getfacl commands over FS shell |  Major | hdfs, test | Manoj Govindassamy | Manoj Govindassamy |
| [HDFS-11376](https://issues.apache.org/jira/browse/HDFS-11376) | Revert HDFS-8377 Support HTTP/2 in datanode |  Major | datanode | Andrew Wang | Xiao Chen |
| [HADOOP-13988](https://issues.apache.org/jira/browse/HADOOP-13988) | KMSClientProvider does not work with WebHDFS and Apache Knox w/ProxyUser |  Major | common, kms | Greg Senia | Xiaoyu Yao |
| [HADOOP-14029](https://issues.apache.org/jira/browse/HADOOP-14029) | Fix KMSClientProvider for non-secure proxyuser use case |  Major | common,kms | Xiaoyu Yao | Xiaoyu Yao |
| [YARN-5641](https://issues.apache.org/jira/browse/YARN-5641) | Localizer leaves behind tarballs after container is complete |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-13992](https://issues.apache.org/jira/browse/HADOOP-13992) | KMS should load SSL configuration the same way as SSLFactory |  Major | kms, security | John Zhuge | John Zhuge |
| [HDFS-11378](https://issues.apache.org/jira/browse/HDFS-11378) | Verify multiple DataNodes can be decommissioned/maintenance at the same time |  Major | hdfs | Manoj Govindassamy | Manoj Govindassamy |
| [YARN-6103](https://issues.apache.org/jira/browse/YARN-6103) | Log updates for ZKRMStateStore |  Trivial | . | Bibin A Chundatt | Daniel Sturman |
| [HADOOP-14018](https://issues.apache.org/jira/browse/HADOOP-14018) | shaded jars of hadoop-client modules are missing hadoop's root LICENSE and NOTICE files |  Critical | . | John Zhuge | Elek, Marton |
| [HDFS-11335](https://issues.apache.org/jira/browse/HDFS-11335) | Remove HdfsClientConfigKeys.DFS\_CLIENT\_SLOW\_IO\_WARNING\_THRESHOLD\_KEY usage from DNConf |  Major | . | Manoj Govindassamy | Manoj Govindassamy |
| [HADOOP-13895](https://issues.apache.org/jira/browse/HADOOP-13895) | Make FileStatus Serializable |  Minor | fs | Chris Douglas | Chris Douglas |
| [HADOOP-14045](https://issues.apache.org/jira/browse/HADOOP-14045) | Aliyun OSS documentation missing from website |  Major | documentation, fs/oss | Andrew Wang | Yiqun Lin |
| [HDFS-11363](https://issues.apache.org/jira/browse/HDFS-11363) | Need more diagnosis info when seeing Slow waitForAckedSeqno |  Major | . | Yongjun Zhang | Xiao Chen |
| [HADOOP-14044](https://issues.apache.org/jira/browse/HADOOP-14044) | Synchronization issue in delegation token cancel functionality |  Major | . | Hrishikesh Gadre | Hrishikesh Gadre |
| [HDFS-11371](https://issues.apache.org/jira/browse/HDFS-11371) | Document missing metrics of erasure coding |  Minor | documentation, erasure-coding | Yiqun Lin | Yiqun Lin |
| [MAPREDUCE-6338](https://issues.apache.org/jira/browse/MAPREDUCE-6338) | MR AppMaster does not honor ephemeral port range |  Major | mr-am, mrv2 | Frank Nguyen | Frank Nguyen |
| [HDFS-11377](https://issues.apache.org/jira/browse/HDFS-11377) | Balancer hung due to no available mover threads |  Major | balancer & mover | yunjiong zhao | yunjiong zhao |
| [HADOOP-14047](https://issues.apache.org/jira/browse/HADOOP-14047) | Require admin to access KMS instrumentation servlets |  Minor | kms | John Zhuge | John Zhuge |
| [YARN-6135](https://issues.apache.org/jira/browse/YARN-6135) | Node manager REST API documentation is not up to date |  Trivial | nodemanager, restapi | Miklos Szegedi | Miklos Szegedi |
| [YARN-6145](https://issues.apache.org/jira/browse/YARN-6145) | Improve log message on fail over |  Major | . | Jian He | Jian He |
| [YARN-6031](https://issues.apache.org/jira/browse/YARN-6031) | Application recovery has failed when node label feature is turned off during RM recovery |  Minor | scheduler | Ying Zhang | Ying Zhang |
| [YARN-6137](https://issues.apache.org/jira/browse/YARN-6137) | Yarn client implicitly invoke ATS client which accesses HDFS |  Major | . | Yesha Vora | Li Lu |
| [HADOOP-13433](https://issues.apache.org/jira/browse/HADOOP-13433) | Race in UGI.reloginFromKeytab |  Major | security | Duo Zhang | Duo Zhang |
| [YARN-6112](https://issues.apache.org/jira/browse/YARN-6112) | UpdateCallDuration is calculated only when debug logging is enabled |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-6144](https://issues.apache.org/jira/browse/YARN-6144) | FairScheduler: preempted resources can become negative |  Blocker | fairscheduler, resourcemanager | Miklos Szegedi | Miklos Szegedi |
| [YARN-6118](https://issues.apache.org/jira/browse/YARN-6118) | Add javadoc for Resources.isNone |  Minor | scheduler | Karthik Kambatla | Andres Perez |
| [YARN-6166](https://issues.apache.org/jira/browse/YARN-6166) | Unnecessary INFO logs in AMRMClientAsyncImpl$CallbackHandlerThread.run |  Trivial | . | Grant W | Grant W |
| [HADOOP-13233](https://issues.apache.org/jira/browse/HADOOP-13233) | help of stat is confusing |  Trivial | documentation, fs | Xiaohe Lan | Attila Bukor |
| [YARN-3933](https://issues.apache.org/jira/browse/YARN-3933) | FairScheduler: Multiple calls to completedContainer are not safe |  Major | fairscheduler | Lavkesh Lahngir | Shiwei Guo |
| [HDFS-11407](https://issues.apache.org/jira/browse/HDFS-11407) | Document the missing usages of OfflineImageViewer processors |  Minor | documentation, tools | Yiqun Lin | Yiqun Lin |
| [HDFS-11408](https://issues.apache.org/jira/browse/HDFS-11408) | The config name of balance bandwidth is out of date |  Minor | balancer & mover, documentation | Yiqun Lin | Yiqun Lin |
| [HADOOP-14058](https://issues.apache.org/jira/browse/HADOOP-14058) | Fix NativeS3FileSystemContractBaseTest#testDirWithDifferentMarkersWorks |  Major | fs/s3, test | Akira Ajisaka | Yiqun Lin |
| [HDFS-11084](https://issues.apache.org/jira/browse/HDFS-11084) | Add a regression test for sticky bit support of OIV ReverseXML processor |  Major | tools | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-11391](https://issues.apache.org/jira/browse/HDFS-11391) | Numeric usernames do no work with WebHDFS FS (write access) |  Major | webhdfs | Pierre Villard | Pierre Villard |
| [HADOOP-13924](https://issues.apache.org/jira/browse/HADOOP-13924) | Update checkstyle and checkstyle plugin version to handle indentation of JDK8 Lambdas |  Major | . | Xiaoyu Yao | Akira Ajisaka |
| [HDFS-11238](https://issues.apache.org/jira/browse/HDFS-11238) | Fix checkstyle warnings in NameNode#createNameNode |  Trivial | namenode | Ethan Li | Ethan Li |
| [YARN-4212](https://issues.apache.org/jira/browse/YARN-4212) | FairScheduler: Can't create a DRF queue under a FAIR policy queue |  Major | . | Arun Suresh | Yufei Gu |
| [YARN-6177](https://issues.apache.org/jira/browse/YARN-6177) | Yarn client should exit with an informative error message if an incompatible Jersey library is used at client |  Major | . | Weiwei Yang | Weiwei Yang |
| [YARN-6171](https://issues.apache.org/jira/browse/YARN-6171) | ConcurrentModificationException on FSAppAttempt.containersToPreempt |  Major | fairscheduler | Miklos Szegedi | Miklos Szegedi |
| [HDFS-11410](https://issues.apache.org/jira/browse/HDFS-11410) | Use the cached instance when edit logging SetAclOp, SetXAttrOp and RemoveXAttrOp |  Major | namenode | Xiao Chen | Xiao Chen |
| [YARN-6188](https://issues.apache.org/jira/browse/YARN-6188) | Fix OOM issue with decommissioningNodesWatcher in the case of clusters with large number of nodes |  Major | resourcemanager | Ajay Jadhav | Ajay Jadhav |
| [HDFS-11379](https://issues.apache.org/jira/browse/HDFS-11379) | DFSInputStream may infinite loop requesting block locations |  Critical | hdfs-client | Daryn Sharp | Daryn Sharp |
| [HDFS-11177](https://issues.apache.org/jira/browse/HDFS-11177) | 'storagepolicies -getStoragePolicy' command should accept URI based path. |  Major | shell | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-11404](https://issues.apache.org/jira/browse/HDFS-11404) | Increase timeout on TestShortCircuitLocalRead.testDeprecatedGetBlockLocalPathInfoRpc |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-14017](https://issues.apache.org/jira/browse/HADOOP-14017) | User friendly name for ADLS user and group |  Major | fs/adl | John Zhuge | Vishwajeet Dusane |
| [MAPREDUCE-6825](https://issues.apache.org/jira/browse/MAPREDUCE-6825) | YARNRunner#createApplicationSubmissionContext method is longer than 150 lines |  Trivial | . | Chris Trezzo | Gergely Novák |
| [YARN-6210](https://issues.apache.org/jira/browse/YARN-6210) | FS: Node reservations can interfere with preemption |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-6211](https://issues.apache.org/jira/browse/YARN-6211) | Synchronization improvement for moveApplicationAcrossQueues and updateApplicationPriority |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [HADOOP-14100](https://issues.apache.org/jira/browse/HADOOP-14100) | Upgrade Jsch jar to latest version to fix vulnerability in old versions |  Critical | . | Vinayakumar B | Vinayakumar B |
| [YARN-6222](https://issues.apache.org/jira/browse/YARN-6222) | TestFairScheduler.testReservationMetrics is flaky |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [HDFS-10620](https://issues.apache.org/jira/browse/HDFS-10620) | StringBuilder created and appended even if logging is disabled |  Major | namenode | Staffan Friberg | Staffan Friberg |
| [HADOOP-14116](https://issues.apache.org/jira/browse/HADOOP-14116) | FailoverOnNetworkExceptionRetry does not wait when failover on certain exception |  Major | . | Jian He | Jian He |
| [HDFS-11433](https://issues.apache.org/jira/browse/HDFS-11433) | Document missing usages of OfflineEditsViewer processors |  Minor | documentation, tools | Yiqun Lin | Yiqun Lin |
| [HDFS-11462](https://issues.apache.org/jira/browse/HDFS-11462) | Fix occasional BindException in TestNameNodeMetricsLogger |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-14119](https://issues.apache.org/jira/browse/HADOOP-14119) | Remove unused imports from GzipCodec.java |  Minor | . | Akira Ajisaka | Yiqun Lin |
| [MAPREDUCE-6841](https://issues.apache.org/jira/browse/MAPREDUCE-6841) | Fix dead link in MapReduce tutorial document |  Minor | documentation | Akira Ajisaka | Victor Nee |
| [YARN-6239](https://issues.apache.org/jira/browse/YARN-6239) | Fix javac warnings in YARN that caused by deprecated FileSystem APIs |  Minor | . | Yiqun Lin | Yiqun Lin |
| [YARN-1728](https://issues.apache.org/jira/browse/YARN-1728) | Workaround guice3x-undecoded pathInfo in YARN WebApp |  Major | . | Abraham Elmahrek | Yuanbo Liu |
| [HADOOP-12556](https://issues.apache.org/jira/browse/HADOOP-12556) | KafkaSink jar files are created but not copied to target dist |  Major | . | Babak Behzad | Babak Behzad |
| [HDFS-11478](https://issues.apache.org/jira/browse/HDFS-11478) | Update EC commands in HDFSCommands.md |  Minor | documentation, erasure-coding | Yiqun Lin | Yiqun Lin |
| [MAPREDUCE-6852](https://issues.apache.org/jira/browse/MAPREDUCE-6852) | Job#updateStatus() failed with NPE due to race condition |  Major | . | Junping Du | Junping Du |
| [MAPREDUCE-6753](https://issues.apache.org/jira/browse/MAPREDUCE-6753) | Variable in byte printed directly in mapreduce client |  Major | client | Nemo Chen | Kai Sasaki |
| [HADOOP-6801](https://issues.apache.org/jira/browse/HADOOP-6801) | io.sort.mb and io.sort.factor were renamed and moved to mapreduce but are still in CommonConfigurationKeysPublic.java and used in SequenceFile.java |  Minor | . | Erik Steffl | Harsh J |
| [YARN-6263](https://issues.apache.org/jira/browse/YARN-6263) | NMTokenSecretManagerInRM.createAndGetNMToken is not thread safe |  Major | yarn | Haibo Chen | Haibo Chen |
| [YARN-6218](https://issues.apache.org/jira/browse/YARN-6218) | Fix TestAMRMClient when using FairScheduler |  Minor | . | Miklos Szegedi | Miklos Szegedi |
| [YARN-6271](https://issues.apache.org/jira/browse/YARN-6271) | yarn rmadin -getGroups returns information from standby RM |  Critical | yarn | Sumana Sathish | Jian He |
| [YARN-6270](https://issues.apache.org/jira/browse/YARN-6270) | WebUtils.getRMWebAppURLWithScheme() needs to honor RM HA setting |  Major | . | Sumana Sathish | Xuan Gong |
| [YARN-6278](https://issues.apache.org/jira/browse/YARN-6278) | Enforce to use correct node and npm version in new YARN-UI build |  Critical | . | Sunil G | Sunil G |
| [YARN-6248](https://issues.apache.org/jira/browse/YARN-6248) | user is not removed from UsersManager’s when app is killed with pending container requests. |  Major | . | Eric Payne | Eric Payne |
| [HADOOP-14026](https://issues.apache.org/jira/browse/HADOOP-14026) | start-build-env.sh: invalid docker image name |  Major | build | Gergő Pásztor | Gergő Pásztor |
| [HDFS-11441](https://issues.apache.org/jira/browse/HDFS-11441) | Add escaping to error message in KMS web UI |  Minor | security | Aaron T. Myers | Aaron T. Myers |
| [YARN-5665](https://issues.apache.org/jira/browse/YARN-5665) | Enhance documentation for yarn.resourcemanager.scheduler.class property |  Trivial | documentation | Miklos Szegedi | Yufei Gu |
| [HDFS-11498](https://issues.apache.org/jira/browse/HDFS-11498) | Make RestCsrfPreventionHandler and WebHdfsHandler compatible with Netty 4.0 |  Major | . | Andrew Wang | Andrew Wang |
| [MAPREDUCE-6855](https://issues.apache.org/jira/browse/MAPREDUCE-6855) | Specify charset when create String in CredentialsTestJob |  Minor | . | Akira Ajisaka | Kai Sasaki |
| [HADOOP-14087](https://issues.apache.org/jira/browse/HADOOP-14087) | S3A typo in pom.xml test exclusions |  Major | fs/s3 | Aaron Fabbri | Aaron Fabbri |
| [HDFS-11508](https://issues.apache.org/jira/browse/HDFS-11508) | Fix bind failure in SimpleTCPServer & Portmap where bind fails because socket is in TIME\_WAIT state |  Major | nfs | Mukul Kumar Singh | Mukul Kumar Singh |
| [MAPREDUCE-6839](https://issues.apache.org/jira/browse/MAPREDUCE-6839) | TestRecovery.testCrashed failed |  Major | test | Gergő Pásztor | Gergő Pásztor |
| [YARN-6207](https://issues.apache.org/jira/browse/YARN-6207) | Move application across queues should handle delayed event processing |  Major | capacity scheduler | Bibin A Chundatt | Bibin A Chundatt |
| [MAPREDUCE-6859](https://issues.apache.org/jira/browse/MAPREDUCE-6859) | hadoop-mapreduce-client-jobclient.jar sets a main class that isn't in the JAR |  Minor | client | Daniel Templeton | Daniel Templeton |
| [YARN-6297](https://issues.apache.org/jira/browse/YARN-6297) | TestAppLogAggregatorImp.verifyFilesUploaded() should check # of filed uploaded with that of files expected |  Major | . | Haibo Chen | Haibo Chen |
| [YARN-6165](https://issues.apache.org/jira/browse/YARN-6165) | Intra-queue preemption occurs even when preemption is turned off for a specific queue. |  Major | capacity scheduler, scheduler preemption | Eric Payne | Eric Payne |
| [HADOOP-14052](https://issues.apache.org/jira/browse/HADOOP-14052) | Fix dead link in KMS document |  Minor | documentation | Akira Ajisaka | Christina Vu |
| [YARN-6310](https://issues.apache.org/jira/browse/YARN-6310) | OutputStreams in AggregatedLogFormat.LogWriter can be left open upon exceptions |  Major | yarn | Haibo Chen | Haibo Chen |
| [HADOOP-14062](https://issues.apache.org/jira/browse/HADOOP-14062) | ApplicationMasterProtocolPBClientImpl.allocate fails with EOFException when RPC privacy is enabled |  Critical | . | Steven Rand | Steven Rand |
| [YARN-6321](https://issues.apache.org/jira/browse/YARN-6321) | TestResources test timeouts are too aggressive |  Major | test | Jason Lowe | Eric Badger |
| [HDFS-11340](https://issues.apache.org/jira/browse/HDFS-11340) | DataNode reconfigure for disks doesn't remove the failed volumes |  Major | . | Manoj Govindassamy | Manoj Govindassamy |
| [HADOOP-14156](https://issues.apache.org/jira/browse/HADOOP-14156) | Fix grammar error in ConfTest.java |  Trivial | test | Andrey Dyatlov | Andrey Dyatlov |
| [HDFS-11512](https://issues.apache.org/jira/browse/HDFS-11512) | Increase timeout on TestShortCircuitLocalRead#testSkipWithVerifyChecksum |  Minor | . | Eric Badger | Eric Badger |
| [HDFS-11499](https://issues.apache.org/jira/browse/HDFS-11499) | Decommissioning stuck because of failing recovery |  Major | hdfs, namenode | Lukas Majercak | Lukas Majercak |
| [HDFS-11526](https://issues.apache.org/jira/browse/HDFS-11526) | Fix confusing block recovery message |  Minor | datanode | Wei-Chiu Chuang | Yiqun Lin |
| [YARN-6327](https://issues.apache.org/jira/browse/YARN-6327) | Removing queues from CapacitySchedulerQueueManager and ParentQueue should be done with iterator |  Major | capacityscheduler | Jonathan Hung | Jonathan Hung |
| [HADOOP-14170](https://issues.apache.org/jira/browse/HADOOP-14170) | FileSystemContractBaseTest is not cleaning up test directory clearly |  Major | fs | Mingliang Liu | Mingliang Liu |
| [YARN-6331](https://issues.apache.org/jira/browse/YARN-6331) | Fix flakiness in TestFairScheduler#testDumpState |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-6328](https://issues.apache.org/jira/browse/YARN-6328) | Fix a spelling mistake in CapacityScheduler |  Trivial | capacity scheduler | Jin Yibo | Jin Yibo |
| [YARN-6336](https://issues.apache.org/jira/browse/YARN-6336) | Jenkins report YARN new UI build failure |  Blocker | . | Junping Du | Sunil G |
| [HDFS-11420](https://issues.apache.org/jira/browse/HDFS-11420) | Edit file should not be processed by the same type processor in OfflineEditsViewer |  Major | tools | Yiqun Lin | Yiqun Lin |
| [YARN-6294](https://issues.apache.org/jira/browse/YARN-6294) | ATS client should better handle Socket closed case |  Major | timelineclient | Sumana Sathish | Li Lu |
| [YARN-6332](https://issues.apache.org/jira/browse/YARN-6332) | Make RegistrySecurity use short user names for ZK ACLs |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-4051](https://issues.apache.org/jira/browse/YARN-4051) | ContainerKillEvent lost when container is still recovering and application finishes |  Critical | nodemanager | sandflee | sandflee |
| [HDFS-11533](https://issues.apache.org/jira/browse/HDFS-11533) | reuseAddress option should be used for child channels in Portmap and SimpleTcpServer |  Major | nfs | Mukul Kumar Singh | Mukul Kumar Singh |
| [HADOOP-14191](https://issues.apache.org/jira/browse/HADOOP-14191) | Duplicate hadoop-minikdc dependency in hadoop-common module |  Minor | build | Akira Ajisaka | Xiaobing Zhou |
| [HDFS-10394](https://issues.apache.org/jira/browse/HDFS-10394) | move declaration of okhttp version from hdfs-client to hadoop-project POM |  Minor | build | Steve Loughran | Xiaobing Zhou |
| [HDFS-11516](https://issues.apache.org/jira/browse/HDFS-11516) | Admin command line should print message to stderr in failure case |  Minor | . | Kai Sasaki | Kai Sasaki |
| [YARN-6217](https://issues.apache.org/jira/browse/YARN-6217) | TestLocalCacheDirectoryManager test timeout is too aggressive |  Major | test | Jason Lowe | Miklos Szegedi |
| [YARN-6353](https://issues.apache.org/jira/browse/YARN-6353) | Clean up OrderingPolicy javadoc |  Minor | resourcemanager | Daniel Templeton | Daniel Templeton |
| [HADOOP-14059](https://issues.apache.org/jira/browse/HADOOP-14059) | typo in s3a rename(self, subdir) error message |  Minor | . | Steve Loughran | Steve Loughran |
| [HADOOP-14187](https://issues.apache.org/jira/browse/HADOOP-14187) | Update ZooKeeper dependency to 3.4.9 and Curator dependency to 2.12.0 |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-5934](https://issues.apache.org/jira/browse/YARN-5934) | Fix TestTimelineWebServices.testPrimaryFilterNumericString |  Major | test | Akira Ajisaka | Akira Ajisaka |
| [HDFS-11561](https://issues.apache.org/jira/browse/HDFS-11561) | HttpFS doc errors |  Trivial | documentation, httpfs, test | Yuanbo Liu | Yuanbo Liu |
| [HADOOP-9631](https://issues.apache.org/jira/browse/HADOOP-9631) | ViewFs should use underlying FileSystem's server side defaults |  Major | fs, viewfs | Lohit Vijayarenu | Erik Krogen |
| [HADOOP-14214](https://issues.apache.org/jira/browse/HADOOP-14214) | DomainSocketWatcher::add()/delete() should not self interrupt while looping await() |  Critical | hdfs-client | Mingliang Liu | Mingliang Liu |
| [HADOOP-14195](https://issues.apache.org/jira/browse/HADOOP-14195) | CredentialProviderFactory$getProviders is not thread-safe |  Major | security | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HADOOP-14211](https://issues.apache.org/jira/browse/HADOOP-14211) | FilterFs and ChRootedFs are too aggressive about enforcing "authorityNeeded" |  Major | viewfs | Erik Krogen | Erik Krogen |
| [YARN-6360](https://issues.apache.org/jira/browse/YARN-6360) | Prevent FS state dump logger from cramming other log files |  Major | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-6334](https://issues.apache.org/jira/browse/YARN-6334) | TestRMFailover#testAutomaticFailover always passes even when it should fail |  Major | . | Yufei Gu | Yufei Gu |
| [MAPREDUCE-6866](https://issues.apache.org/jira/browse/MAPREDUCE-6866) | Fix getNumMapTasks() documentation in JobConf |  Minor | documentation | Joe Mészáros | Joe Mészáros |
| [MAPREDUCE-6868](https://issues.apache.org/jira/browse/MAPREDUCE-6868) | License check for jdiff output files should be ignored |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-11555](https://issues.apache.org/jira/browse/HDFS-11555) | Fix typos in class OfflineImageReconstructor |  Trivial | . | Yiqun Lin | Yiqun Lin |
| [HDFS-10506](https://issues.apache.org/jira/browse/HDFS-10506) | OIV's ReverseXML processor cannot reconstruct some snapshot details |  Major | tools | Colin P. McCabe | Akira Ajisaka |
| [HDFS-11486](https://issues.apache.org/jira/browse/HDFS-11486) | Client close() should not fail fast if the last block is being decommissioned |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-6359](https://issues.apache.org/jira/browse/YARN-6359) | TestRM#testApplicationKillAtAcceptedState fails rarely due to race condition |  Major | test | Robert Kanter | Robert Kanter |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-11570](https://issues.apache.org/jira/browse/HDFS-11570) | Unit test for NameNodeStatusMXBean |  Major | hdfs, test | Hanisha Koneru | Hanisha Koneru |
| [HADOOP-14218](https://issues.apache.org/jira/browse/HADOOP-14218) | Replace assertThat with assertTrue in MetricsAsserts |  Minor | . | Akira Ajisaka | Akira Ajisaka |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-11296](https://issues.apache.org/jira/browse/HDFS-11296) | Maintenance state expiry should be an epoch time and not jvm monotonic |  Major | . | Manoj Govindassamy | Manoj Govindassamy |
| [HDFS-11121](https://issues.apache.org/jira/browse/HDFS-11121) | Add assertions to BlockInfo#addStorage to protect from breaking reportedBlock-blockGroup mapping |  Critical | erasure-coding | Takanobu Asanuma | Takanobu Asanuma |
| [YARN-6099](https://issues.apache.org/jira/browse/YARN-6099) | Improve webservice to list aggregated log files |  Major | . | Xuan Gong | Xuan Gong |
| [HDFS-11124](https://issues.apache.org/jira/browse/HDFS-11124) | Report blockIds of internal blocks for EC files in Fsck |  Major | erasure-coding | Takanobu Asanuma | Takanobu Asanuma |
| [YARN-5830](https://issues.apache.org/jira/browse/YARN-5830) | FairScheduler: Avoid preempting AM containers |  Major | fairscheduler | Karthik Kambatla | Yufei Gu |
| [YARN-3637](https://issues.apache.org/jira/browse/YARN-3637) | Handle localization sym-linking correctly at the YARN level |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-5866](https://issues.apache.org/jira/browse/YARN-5866) | Fix few issues reported by jshint in new YARN UI |  Major | yarn-ui-v2 | Akhil PB | Akhil PB |
| [YARN-6100](https://issues.apache.org/jira/browse/YARN-6100) | improve YARN webservice to output aggregated container logs |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-6108](https://issues.apache.org/jira/browse/YARN-6108) | Improve AHS webservice to accept NM address as a parameter to get container logs |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5917](https://issues.apache.org/jira/browse/YARN-5917) | Make navigation link active when selecting sub tabs in "Applications" and "Nodes" page for new UI |  Minor | yarn-ui-v2 | Kai Sasaki | Kai Sasaki |
| [YARN-5258](https://issues.apache.org/jira/browse/YARN-5258) | Document Use of Docker with LinuxContainerExecutor |  Critical | documentation | Daniel Templeton | Daniel Templeton |
| [HADOOP-14065](https://issues.apache.org/jira/browse/HADOOP-14065) | AliyunOSS: oss directory filestatus should use meta time |  Major | fs/oss | Fei Hui | Fei Hui |
| [HADOOP-14032](https://issues.apache.org/jira/browse/HADOOP-14032) | Reduce fair call queue priority inversion |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-14034](https://issues.apache.org/jira/browse/HADOOP-14034) | Allow ipc layer exceptions to selectively close connections |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-14033](https://issues.apache.org/jira/browse/HADOOP-14033) | Reduce fair call queue lock contention |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-13768](https://issues.apache.org/jira/browse/HADOOP-13768) | AliyunOSS: handle the failure in the batch delete operation \`deleteDirs\`. |  Major | fs | Genmao Yu | Genmao Yu |
| [YARN-6170](https://issues.apache.org/jira/browse/YARN-6170) | TimelineReaderServer should wait to join with HttpServer2 |  Minor | timelinereader | Sangjin Lee | Sangjin Lee |
| [HADOOP-13075](https://issues.apache.org/jira/browse/HADOOP-13075) | Add support for SSE-KMS and SSE-C in s3a filesystem |  Major | fs/s3 | Andrew Olson | Steve Moist |
| [HADOOP-14069](https://issues.apache.org/jira/browse/HADOOP-14069) | AliyunOSS: listStatus returns wrong file info |  Major | fs/oss | Fei Hui | Fei Hui |
| [HADOOP-13769](https://issues.apache.org/jira/browse/HADOOP-13769) | AliyunOSS: update oss sdk version |  Major | fs, fs/oss | Genmao Yu | Genmao Yu |
| [YARN-6113](https://issues.apache.org/jira/browse/YARN-6113) | re-direct NM Web Service to get container logs for finished applications |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-5966](https://issues.apache.org/jira/browse/YARN-5966) | AMRMClient changes to support ExecutionType update |  Major | . | Arun Suresh | Arun Suresh |
| [YARN-5912](https://issues.apache.org/jira/browse/YARN-5912) | Fix breadcrumb issues for various pages in new YARN UI |  Minor | yarn-ui-v2 | Akhil PB | Akhil PB |
| [HADOOP-14072](https://issues.apache.org/jira/browse/HADOOP-14072) | AliyunOSS: Failed to read from stream when seek beyond the download size |  Major | fs/oss | Genmao Yu | Genmao Yu |
| [YARN-6156](https://issues.apache.org/jira/browse/YARN-6156) | AM blacklisting to consider node label partition |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [HDFS-11265](https://issues.apache.org/jira/browse/HDFS-11265) | Extend visualization for Maintenance Mode under Datanode tab in the NameNode UI |  Major | datanode, namenode | Manoj Govindassamy | Elek, Marton |
| [YARN-6163](https://issues.apache.org/jira/browse/YARN-6163) | FS Preemption is a trickle for severely starved applications |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-5798](https://issues.apache.org/jira/browse/YARN-5798) | Set UncaughtExceptionHandler for all FairScheduler threads |  Major | fairscheduler | Karthik Kambatla | Yufei Gu |
| [YARN-4675](https://issues.apache.org/jira/browse/YARN-4675) | Reorganize TimelineClient and TimelineClientImpl into separate classes for ATSv1.x and ATSv2 |  Major | timelineserver | Naganarasimha G R | Naganarasimha G R |
| [HADOOP-14040](https://issues.apache.org/jira/browse/HADOOP-14040) | Use shaded aws-sdk uber-JAR 1.11.86 |  Major | build, fs/s3 | Steve Loughran | Steve Loughran |
| [YARN-6159](https://issues.apache.org/jira/browse/YARN-6159) | Documentation changes for TimelineV2Client |  Minor | documentation | Varun Saxena | Naganarasimha G R |
| [HDFS-11430](https://issues.apache.org/jira/browse/HDFS-11430) | Separate class InnerNode from class NetworkTopology and make it extendable |  Major | namenode | Chen Liang | Tsz Wo Nicholas Sze |
| [HDFS-11411](https://issues.apache.org/jira/browse/HDFS-11411) | Avoid OutOfMemoryError in TestMaintenanceState test runs |  Major | datanode, namenode | Manoj Govindassamy | Manoj Govindassamy |
| [HADOOP-14102](https://issues.apache.org/jira/browse/HADOOP-14102) | Relax error message assertion in S3A test ITestS3AEncryptionSSEC |  Minor | fs/s3 | Mingliang Liu | Mingliang Liu |
| [HDFS-4025](https://issues.apache.org/jira/browse/HDFS-4025) | QJM: Sychronize past log segments to JNs that missed them |  Major | ha | Todd Lipcon | Hanisha Koneru |
| [YARN-6069](https://issues.apache.org/jira/browse/YARN-6069) | CORS support in timeline v2 |  Major | timelinereader | Sreenath Somarajapuram | Rohith Sharma K S |
| [YARN-6143](https://issues.apache.org/jira/browse/YARN-6143) | Fix incompatible issue caused by YARN-3583 |  Blocker | rolling upgrade | Wangda Tan | Sunil G |
| [HADOOP-14113](https://issues.apache.org/jira/browse/HADOOP-14113) | review ADL Docs |  Minor | documentation, fs/adl | Steve Loughran | Steve Loughran |
| [YARN-4779](https://issues.apache.org/jira/browse/YARN-4779) | Fix AM container allocation logic in SLS |  Major | scheduler-load-simulator | Wangda Tan | Wangda Tan |
| [YARN-6228](https://issues.apache.org/jira/browse/YARN-6228) | EntityGroupFSTimelineStore should allow configurable cache stores. |  Major | timelineserver | Li Lu | Li Lu |
| [YARN-6123](https://issues.apache.org/jira/browse/YARN-6123) | [YARN-5864] Add a test to make sure queues of orderingPolicy will be updated when childQueues is added or removed. |  Major | . | Wangda Tan | Wangda Tan |
| [HADOOP-14118](https://issues.apache.org/jira/browse/HADOOP-14118) | move jets3t into a dependency on hadoop-aws JAR |  Major | build, fs/s3 | Steve Loughran | Akira Ajisaka |
| [YARN-5335](https://issues.apache.org/jira/browse/YARN-5335) | Use em-table in app/nodes pages for new YARN UI |  Major | . | Sunil G | Sunil G |
| [HDFS-11450](https://issues.apache.org/jira/browse/HDFS-11450) | HDFS specific network topology classes with storage type info included |  Major | namenode | Chen Liang | Chen Liang |
| [HDFS-11412](https://issues.apache.org/jira/browse/HDFS-11412) | Maintenance minimum replication config value allowable range should be [0, DefaultReplication] |  Major | datanode, namenode | Manoj Govindassamy | Manoj Govindassamy |
| [HADOOP-14138](https://issues.apache.org/jira/browse/HADOOP-14138) | Remove S3A ref from META-INF service discovery, rely on existing core-default entry |  Critical | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-14057](https://issues.apache.org/jira/browse/HADOOP-14057) | Fix package.html to compile with Java 9 |  Major | documentation | Akira Ajisaka | Akira Ajisaka |
| [HDFS-8112](https://issues.apache.org/jira/browse/HDFS-8112) | Relax permission checking for EC related operations |  Blocker | erasure-coding | Kai Zheng | Andrew Wang |
| [HADOOP-14056](https://issues.apache.org/jira/browse/HADOOP-14056) | Update maven-javadoc-plugin to 2.10.4 |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-6275](https://issues.apache.org/jira/browse/YARN-6275) | Fail to show real-time tracking charts in SLS |  Major | scheduler-load-simulator | Yufei Gu | Yufei Gu |
| [HDFS-10983](https://issues.apache.org/jira/browse/HDFS-10983) | OIV tool should make an EC file explicit |  Major | . | Wei-Chiu Chuang | Manoj Govindassamy |
| [YARN-5669](https://issues.apache.org/jira/browse/YARN-5669) | Add support for Docker pull |  Major | yarn | Zhankun Tang | luhuichun |
| [YARN-1047](https://issues.apache.org/jira/browse/YARN-1047) | Expose # of pre-emptions as a queue counter |  Major | fairscheduler | Philip Zeyliger | Karthik Kambatla |
| [HADOOP-14123](https://issues.apache.org/jira/browse/HADOOP-14123) | Remove misplaced ADL service provider config file for FileSystem |  Minor | fs/adl | John Zhuge | John Zhuge |
| [HADOOP-14153](https://issues.apache.org/jira/browse/HADOOP-14153) | ADL module has messed doc structure |  Major | fs/adl | Mingliang Liu | Mingliang Liu |
| [HADOOP-14111](https://issues.apache.org/jira/browse/HADOOP-14111) | cut some obsolete, ignored s3 tests in TestS3Credentials |  Minor | fs/s3, test | Steve Loughran | Yuanbo Liu |
| [HDFS-11482](https://issues.apache.org/jira/browse/HDFS-11482) | Add storage type demand to into DFSNetworkTopology#chooseRandom |  Major | namenode | Chen Liang | Chen Liang |
| [YARN-5496](https://issues.apache.org/jira/browse/YARN-5496) | Make Node Heatmap Chart categories clickable in new YARN UI |  Major | . | Yesha Vora | Gergely Novák |
| [YARN-6314](https://issues.apache.org/jira/browse/YARN-6314) | Potential infinite redirection on YARN log redirection web service |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-6313](https://issues.apache.org/jira/browse/YARN-6313) | yarn logs cli should provide logs for a completed container even when application is still running |  Major | . | Siddharth Seth | Xuan Gong |
| [HDFS-11514](https://issues.apache.org/jira/browse/HDFS-11514) | DFSTopologyNodeImpl#chooseRandom optimizations |  Major | namenode | Chen Liang | Chen Liang |
| [HDFS-10530](https://issues.apache.org/jira/browse/HDFS-10530) | BlockManager reconstruction work scheduling should correctly adhere to EC block placement policy |  Major | namenode | Rui Gao | Manoj Govindassamy |
| [HADOOP-14192](https://issues.apache.org/jira/browse/HADOOP-14192) | Aliyun OSS FileSystem contract test should implement getTestBaseDir() |  Major | fs/oss | Mingliang Liu | Mingliang Liu |
| [YARN-6362](https://issues.apache.org/jira/browse/YARN-6362) | Use frontend-maven-plugin 0.0.22 version for new yarn ui |  Major | . | Kai Sasaki | Kai Sasaki |
| [HDFS-11358](https://issues.apache.org/jira/browse/HDFS-11358) | DiskBalancer: Report command supports reading nodes from host file |  Major | diskbalancer | Yiqun Lin | Yiqun Lin |
| [YARN-6367](https://issues.apache.org/jira/browse/YARN-6367) | YARN logs CLI needs alway check containerLogsInfo/containerLogInfo before parse the JSON object from NMWebService |  Major | . | Siddharth Seth | Xuan Gong |
| [YARN-6326](https://issues.apache.org/jira/browse/YARN-6326) | Shouldn't use AppAttemptIds to fetch applications while AM Simulator tracks app in SLS |  Major | scheduler-load-simulator | Yufei Gu | Yufei Gu |
| [HADOOP-14135](https://issues.apache.org/jira/browse/HADOOP-14135) | Remove URI parameter in AWSCredentialProvider constructors |  Major | fs/s3 | Mingliang Liu | Mingliang Liu |
| [HADOOP-14196](https://issues.apache.org/jira/browse/HADOOP-14196) | Azure Data Lake doc is missing required config entry |  Major | fs/adl | Atul Sikaria | Atul Sikaria |
| [HADOOP-14197](https://issues.apache.org/jira/browse/HADOOP-14197) | Fix ADLS doc for credential provider |  Major | documentation, fs/adl | John Zhuge | John Zhuge |
| [HADOOP-13715](https://issues.apache.org/jira/browse/HADOOP-13715) | Add isErasureCoded() API to FileStatus class |  Blocker | fs | Wei-Chiu Chuang | Manoj Govindassamy |
| [HADOOP-14230](https://issues.apache.org/jira/browse/HADOOP-14230) | TestAdlFileSystemContractLive fails to clean up |  Minor | fs/adl, test | John Zhuge | John Zhuge |
| [HADOOP-14038](https://issues.apache.org/jira/browse/HADOOP-14038) | Rename ADLS credential properties |  Minor | fs/adl | John Zhuge | John Zhuge |
| [HDFS-11577](https://issues.apache.org/jira/browse/HDFS-11577) | Combine the old and the new chooseRandom for better performance |  Major | namenode | Chen Liang | Chen Liang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-11026](https://issues.apache.org/jira/browse/HDFS-11026) | Convert BlockTokenIdentifier to use Protobuf |  Major | hdfs, hdfs-client | Ewan Higgs | Ewan Higgs |
| [HADOOP-14091](https://issues.apache.org/jira/browse/HADOOP-14091) | AbstractFileSystem implementaion for 'wasbs' scheme |  Major | fs/azure | Varada Hemeswari | Varada Hemeswari |
| [YARN-6274](https://issues.apache.org/jira/browse/YARN-6274) | Documentation refers to incorrect nodemanager health checker interval property |  Trivial | documentation | Charles Zhang | Weiwei Yang |


