
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

## Release 2.8.1 - Unreleased (as of 2017-05-08)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14174](https://issues.apache.org/jira/browse/HADOOP-14174) | Set default ADLS access token provider type to ClientCredential |  Major | fs/adl | John Zhuge | John Zhuge |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10683](https://issues.apache.org/jira/browse/HDFS-10683) | Make class Token$PrivateToken private |  Minor | . | John Zhuge | John Zhuge |
| [HADOOP-13688](https://issues.apache.org/jira/browse/HADOOP-13688) | Stop bundling HTML source code in javadoc JARs |  Major | build | Andrew Wang | Andrew Wang |
| [HADOOP-13496](https://issues.apache.org/jira/browse/HADOOP-13496) | Include file lengths in Mismatch in length error for distcp |  Minor | . | Ted Yu | Ted Yu |
| [HDFS-10534](https://issues.apache.org/jira/browse/HDFS-10534) | NameNode WebUI should display DataNode usage histogram |  Major | namenode, ui | Zhe Zhang | Kai Sasaki |
| [HADOOP-14050](https://issues.apache.org/jira/browse/HADOOP-14050) | Add process name to kms process |  Minor | kms, scripts | Rushabh S Shah | Rushabh S Shah |
| [HDFS-11390](https://issues.apache.org/jira/browse/HDFS-11390) | Add process name to httpfs process |  Minor | httpfs, scripts | John Zhuge | Weiwei Yang |
| [HDFS-11333](https://issues.apache.org/jira/browse/HDFS-11333) | Print a user friendly error message when plugins are not found |  Minor | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-11466](https://issues.apache.org/jira/browse/HDFS-11466) | Change dfs.namenode.write-lock-reporting-threshold-ms default from 1000ms to 5000ms |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-11432](https://issues.apache.org/jira/browse/HDFS-11432) | Federation : Support fully qualified path for Quota/Snapshot/cacheadmin/cryptoadmin commands |  Major | federation | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-14169](https://issues.apache.org/jira/browse/HADOOP-14169) | Implement listStatusIterator, listLocatedStatus for ViewFs |  Minor | viewfs | Erik Krogen | Erik Krogen |
| [HADOOP-14233](https://issues.apache.org/jira/browse/HADOOP-14233) | Delay construction of PreCondition.check failure message in Configuration#set |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [HADOOP-14240](https://issues.apache.org/jira/browse/HADOOP-14240) | Configuration#get return value optimization |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [YARN-6339](https://issues.apache.org/jira/browse/YARN-6339) | Improve performance for createAndGetApplicationReport |  Major | . | yunjiong zhao | yunjiong zhao |
| [HDFS-9705](https://issues.apache.org/jira/browse/HDFS-9705) | Refine the behaviour of getFileChecksum when length = 0 |  Minor | . | Kai Zheng | SammiChen |
| [HDFS-11628](https://issues.apache.org/jira/browse/HDFS-11628) | Clarify the behavior of HDFS Mover in documentation |  Major | documentation | Xiaobing Zhou | Xiaobing Zhou |
| [HADOOP-14104](https://issues.apache.org/jira/browse/HADOOP-14104) | Client should always ask namenode for kms provider path. |  Major | kms | Rushabh S Shah | Rushabh S Shah |
| [HADOOP-14276](https://issues.apache.org/jira/browse/HADOOP-14276) | Add a nanosecond API to Time/Timer/FakeTimer |  Minor | util | Erik Krogen | Erik Krogen |
| [HDFS-11558](https://issues.apache.org/jira/browse/HDFS-11558) | BPServiceActor thread name is too long |  Minor | datanode | Tsz Wo Nicholas Sze | Xiaobing Zhou |
| [HDFS-11648](https://issues.apache.org/jira/browse/HDFS-11648) | Lazy construct the IIP pathname |  Major | . | Daryn Sharp | Daryn Sharp |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9276](https://issues.apache.org/jira/browse/HDFS-9276) | Failed to Update HDFS Delegation Token for long running application in HA mode |  Major | fs, ha, security | Liangliang Gu | Liangliang Gu |
| [HADOOP-13508](https://issues.apache.org/jira/browse/HADOOP-13508) | FsPermission string constructor does not recognize sticky bit |  Major | . | Atul Sikaria | Atul Sikaria |
| [HADOOP-13928](https://issues.apache.org/jira/browse/HADOOP-13928) | TestAdlFileContextMainOperationsLive.testGetFileContext1 runtime error |  Major | fs/adl, test | John Zhuge | John Zhuge |
| [HADOOP-13976](https://issues.apache.org/jira/browse/HADOOP-13976) | Path globbing does not match newlines |  Major | . | Eric Badger | Eric Badger |
| [HDFS-11316](https://issues.apache.org/jira/browse/HDFS-11316) | TestDataNodeVolumeFailure#testUnderReplicationAfterVolFailure fails in trunk |  Minor | . | Yiqun Lin | Yiqun Lin |
| [YARN-6031](https://issues.apache.org/jira/browse/YARN-6031) | Application recovery has failed when node label feature is turned off during RM recovery |  Minor | scheduler | Ying Zhang | Ying Zhang |
| [YARN-6137](https://issues.apache.org/jira/browse/YARN-6137) | Yarn client implicitly invoke ATS client which accesses HDFS |  Major | . | Yesha Vora | Li Lu |
| [HADOOP-13433](https://issues.apache.org/jira/browse/HADOOP-13433) | Race in UGI.reloginFromKeytab |  Major | security | Duo Zhang | Duo Zhang |
| [HADOOP-13119](https://issues.apache.org/jira/browse/HADOOP-13119) | Add ability to secure log servlet using proxy users |  Major | . | Jeffrey E  Rodriguez | Yuanbo Liu |
| [HADOOP-14058](https://issues.apache.org/jira/browse/HADOOP-14058) | Fix NativeS3FileSystemContractBaseTest#testDirWithDifferentMarkersWorks |  Major | fs/s3, test | Akira Ajisaka | Yiqun Lin |
| [HDFS-11084](https://issues.apache.org/jira/browse/HDFS-11084) | Add a regression test for sticky bit support of OIV ReverseXML processor |  Major | tools | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-11391](https://issues.apache.org/jira/browse/HDFS-11391) | Numeric usernames do no work with WebHDFS FS (write access) |  Major | webhdfs | Pierre Villard | Pierre Villard |
| [HDFS-11177](https://issues.apache.org/jira/browse/HDFS-11177) | 'storagepolicies -getStoragePolicy' command should accept URI based path. |  Major | shell | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-11404](https://issues.apache.org/jira/browse/HDFS-11404) | Increase timeout on TestShortCircuitLocalRead.testDeprecatedGetBlockLocalPathInfoRpc |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-14100](https://issues.apache.org/jira/browse/HADOOP-14100) | Upgrade Jsch jar to latest version to fix vulnerability in old versions |  Critical | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-14114](https://issues.apache.org/jira/browse/HADOOP-14114) | S3A can no longer handle unencoded + in URIs |  Minor | fs/s3 | Sean Mackrory | Sean Mackrory |
| [MAPREDUCE-6841](https://issues.apache.org/jira/browse/MAPREDUCE-6841) | Fix dead link in MapReduce tutorial document |  Minor | documentation | Akira Ajisaka | Victor Nee |
| [MAPREDUCE-6753](https://issues.apache.org/jira/browse/MAPREDUCE-6753) | Variable in byte printed directly in mapreduce client |  Major | client | Nemo Chen | Kai Sasaki |
| [YARN-6263](https://issues.apache.org/jira/browse/YARN-6263) | NMTokenSecretManagerInRM.createAndGetNMToken is not thread safe |  Major | yarn | Haibo Chen | Haibo Chen |
| [HADOOP-14026](https://issues.apache.org/jira/browse/HADOOP-14026) | start-build-env.sh: invalid docker image name |  Major | build | Gergő Pásztor | Gergő Pásztor |
| [HDFS-11441](https://issues.apache.org/jira/browse/HDFS-11441) | Add escaping to error message in KMS web UI |  Minor | security | Aaron T. Myers | Aaron T. Myers |
| [MAPREDUCE-6855](https://issues.apache.org/jira/browse/MAPREDUCE-6855) | Specify charset when create String in CredentialsTestJob |  Minor | . | Akira Ajisaka | Kai Sasaki |
| [YARN-6165](https://issues.apache.org/jira/browse/YARN-6165) | Intra-queue preemption occurs even when preemption is turned off for a specific queue. |  Major | capacity scheduler, scheduler preemption | Eric Payne | Eric Payne |
| [YARN-6310](https://issues.apache.org/jira/browse/YARN-6310) | OutputStreams in AggregatedLogFormat.LogWriter can be left open upon exceptions |  Major | yarn | Haibo Chen | Haibo Chen |
| [YARN-6321](https://issues.apache.org/jira/browse/YARN-6321) | TestResources test timeouts are too aggressive |  Major | test | Jason Lowe | Eric Badger |
| [HDFS-11512](https://issues.apache.org/jira/browse/HDFS-11512) | Increase timeout on TestShortCircuitLocalRead#testSkipWithVerifyChecksum |  Minor | . | Eric Badger | Eric Badger |
| [HDFS-11499](https://issues.apache.org/jira/browse/HDFS-11499) | Decommissioning stuck because of failing recovery |  Major | hdfs, namenode | Lukas Majercak | Lukas Majercak |
| [HDFS-11395](https://issues.apache.org/jira/browse/HDFS-11395) | RequestHedgingProxyProvider#RequestHedgingInvocationHandler hides the Exception thrown from NameNode |  Major | ha | Nandakumar | Nandakumar |
| [YARN-4051](https://issues.apache.org/jira/browse/YARN-4051) | ContainerKillEvent lost when container is still recovering and application finishes |  Critical | nodemanager | sandflee | sandflee |
| [YARN-6217](https://issues.apache.org/jira/browse/YARN-6217) | TestLocalCacheDirectoryManager test timeout is too aggressive |  Major | test | Jason Lowe | Miklos Szegedi |
| [HDFS-11132](https://issues.apache.org/jira/browse/HDFS-11132) | Allow AccessControlException in contract tests when getFileStatus on subdirectory of existing files |  Major | fs/adl, test | Vishwajeet Dusane | Vishwajeet Dusane |
| [HADOOP-14204](https://issues.apache.org/jira/browse/HADOOP-14204) | S3A multipart commit failing, "UnsupportedOperationException at java.util.Collections$UnmodifiableList.sort" |  Critical | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-14205](https://issues.apache.org/jira/browse/HADOOP-14205) | No FileSystem for scheme: adl |  Major | fs/adl | John Zhuge | John Zhuge |
| [HDFS-11561](https://issues.apache.org/jira/browse/HDFS-11561) | HttpFS doc errors |  Trivial | documentation, httpfs, test | Yuanbo Liu | Yuanbo Liu |
| [HADOOP-9631](https://issues.apache.org/jira/browse/HADOOP-9631) | ViewFs should use underlying FileSystem's server side defaults |  Major | fs, viewfs | Lohit Vijayarenu | Erik Krogen |
| [HADOOP-14214](https://issues.apache.org/jira/browse/HADOOP-14214) | DomainSocketWatcher::add()/delete() should not self interrupt while looping await() |  Critical | hdfs-client | Mingliang Liu | Mingliang Liu |
| [HADOOP-14195](https://issues.apache.org/jira/browse/HADOOP-14195) | CredentialProviderFactory$getProviders is not thread-safe |  Major | security | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HADOOP-14211](https://issues.apache.org/jira/browse/HADOOP-14211) | FilterFs and ChRootedFs are too aggressive about enforcing "authorityNeeded" |  Major | viewfs | Erik Krogen | Erik Krogen |
| [MAPREDUCE-6866](https://issues.apache.org/jira/browse/MAPREDUCE-6866) | Fix getNumMapTasks() documentation in JobConf |  Minor | documentation | Joe Mészáros | Joe Mészáros |
| [MAPREDUCE-6868](https://issues.apache.org/jira/browse/MAPREDUCE-6868) | License check for jdiff output files should be ignored |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-10506](https://issues.apache.org/jira/browse/HDFS-10506) | OIV's ReverseXML processor cannot reconstruct some snapshot details |  Major | tools | Colin P. McCabe | Akira Ajisaka |
| [HDFS-11486](https://issues.apache.org/jira/browse/HDFS-11486) | Client close() should not fail fast if the last block is being decommissioned |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-6359](https://issues.apache.org/jira/browse/YARN-6359) | TestRM#testApplicationKillAtAcceptedState fails rarely due to race condition |  Major | test | Robert Kanter | Robert Kanter |
| [YARN-5368](https://issues.apache.org/jira/browse/YARN-5368) | Memory leak in timeline server |  Critical | timelineserver | Wataru Yukawa | Jonathan Eagles |
| [HADOOP-14247](https://issues.apache.org/jira/browse/HADOOP-14247) | FileContextMainOperationsBaseTest should clean up test root path |  Minor | fs, test | Mingliang Liu | Mingliang Liu |
| [YARN-6352](https://issues.apache.org/jira/browse/YARN-6352) | Header injections are possible in application proxy servlet |  Major | resourcemanager, security | Naganarasimha G R | Naganarasimha G R |
| [MAPREDUCE-6873](https://issues.apache.org/jira/browse/MAPREDUCE-6873) | MR Job Submission Fails if MR framework application path not on defaultFS |  Minor | mrv2 | Erik Krogen | Erik Krogen |
| [HADOOP-14256](https://issues.apache.org/jira/browse/HADOOP-14256) | [S3A DOC] Correct the format for "Seoul" example |  Minor | documentation, s3 | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6850](https://issues.apache.org/jira/browse/MAPREDUCE-6850) | Shuffle Handler keep-alive connections are closed from the server side |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [HDFS-11592](https://issues.apache.org/jira/browse/HDFS-11592) | Closing a file has a wasteful preconditions in NameNode |  Major | namenode | Eric Badger | Eric Badger |
| [YARN-6354](https://issues.apache.org/jira/browse/YARN-6354) | LeveldbRMStateStore can parse invalid keys when recovering reservations |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-5703](https://issues.apache.org/jira/browse/YARN-5703) | ReservationAgents are not correctly configured |  Major | capacity scheduler, resourcemanager | Sean Po | Manikandan R |
| [HADOOP-14268](https://issues.apache.org/jira/browse/HADOOP-14268) | Fix markdown itemization in hadoop-aws documents |  Minor | documentation, fs/s3 | Akira Ajisaka | Akira Ajisaka |
| [YARN-6436](https://issues.apache.org/jira/browse/YARN-6436) | TestSchedulingPolicy#testParseSchedulingPolicy timeout is too low |  Major | test | Jason Lowe | Eric Badger |
| [YARN-6420](https://issues.apache.org/jira/browse/YARN-6420) | RM startup failure due to wrong order in nodelabel editlog |  Critical | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-6403](https://issues.apache.org/jira/browse/YARN-6403) | Invalid local resource request can raise NPE and make NM exit |  Major | nodemanager | Tao Yang | Tao Yang |
| [HDFS-11538](https://issues.apache.org/jira/browse/HDFS-11538) | Move ClientProtocol HA proxies into hadoop-hdfs-client |  Blocker | hdfs-client | Andrew Wang | Huafeng Wang |
| [YARN-6437](https://issues.apache.org/jira/browse/YARN-6437) | TestSignalContainer#testSignalRequestDeliveryToNM fails intermittently |  Major | test | Jason Lowe | Jason Lowe |
| [HDFS-11629](https://issues.apache.org/jira/browse/HDFS-11629) | Revert HDFS-11431 hadoop-hdfs-client JAR does not include ConfiguredFailoverProxyProvider. |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-13996](https://issues.apache.org/jira/browse/HADOOP-13996) | Fix some release build issues |  Blocker | build | Andrew Wang | Andrew Wang |
| [HDFS-11608](https://issues.apache.org/jira/browse/HDFS-11608) | HDFS write crashed with block size greater than 2 GB |  Critical | hdfs-client | Xiaobing Zhou | Xiaobing Zhou |
| [YARN-6288](https://issues.apache.org/jira/browse/YARN-6288) | Exceptions during aggregated log writes are mishandled |  Critical | log-aggregation | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-14066](https://issues.apache.org/jira/browse/HADOOP-14066) | VersionInfo should be marked as public API |  Critical | common | Thejas M Nair | Akira Ajisaka |
| [HADOOP-14293](https://issues.apache.org/jira/browse/HADOOP-14293) | Initialize FakeTimer with a less trivial value |  Major | test | Andrew Wang | Andrew Wang |
| [YARN-6461](https://issues.apache.org/jira/browse/YARN-6461) | TestRMAdminCLI has very low test timeouts |  Major | test | Jason Lowe | Eric Badger |
| [YARN-6463](https://issues.apache.org/jira/browse/YARN-6463) | correct spelling mistake in FileSystemRMStateStore |  Trivial | . | Yeliang Cang | Yeliang Cang |
| [HDFS-11163](https://issues.apache.org/jira/browse/HDFS-11163) | Mover should move the file blocks to default storage once policy is unset |  Major | balancer & mover | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [YARN-3760](https://issues.apache.org/jira/browse/YARN-3760) | FSDataOutputStream leak in AggregatedLogFormat.LogWriter.close() |  Critical | nodemanager | Daryn Sharp | Haibo Chen |
| [YARN-5994](https://issues.apache.org/jira/browse/YARN-5994) | TestCapacityScheduler.testAMLimitUsage fails intermittently |  Major | . | Eric Badger | Eric Badger |
| [YARN-6480](https://issues.apache.org/jira/browse/YARN-6480) | Timeout is too aggressive for TestAMRestart.testPreemptedAMRestartOnRMRestart |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-14311](https://issues.apache.org/jira/browse/HADOOP-14311) | Add python2.7-dev to Dockerfile |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [YARN-6304](https://issues.apache.org/jira/browse/YARN-6304) | Skip rm.transitionToActive call to RM if RM is already active. |  Major | resourcemanager | Rohith Sharma K S | Rohith Sharma K S |
| [HDFS-11615](https://issues.apache.org/jira/browse/HDFS-11615) | FSNamesystemLock metrics can be inaccurate due to millisecond precision |  Major | hdfs | Erik Krogen | Erik Krogen |
| [HADOOP-14318](https://issues.apache.org/jira/browse/HADOOP-14318) | Remove non-existent setfattr command option from FileSystemShell.md |  Minor | documentation | Doris Gu | Doris Gu |
| [HADOOP-14315](https://issues.apache.org/jira/browse/HADOOP-14315) | Python example in the rack awareness document doesn't work due to bad indentation |  Minor | documentation | Kengo Seki | Kengo Seki |
| [HDFS-11689](https://issues.apache.org/jira/browse/HDFS-11689) | New exception thrown by DFSClient#isHDFSEncryptionEnabled broke hacky hive code |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-11691](https://issues.apache.org/jira/browse/HDFS-11691) | Add a proper scheme to the datanode links in NN web UI |  Major | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-14341](https://issues.apache.org/jira/browse/HADOOP-14341) | Support multi-line value for ssl.server.exclude.cipher.list |  Major | . | John Zhuge | John Zhuge |
| [YARN-5617](https://issues.apache.org/jira/browse/YARN-5617) | AMs only intended to run one attempt can be run more than once |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [HADOOP-14346](https://issues.apache.org/jira/browse/HADOOP-14346) | CryptoOutputStream throws IOException on flush() if stream is closed |  Major | . | Pierre Lacave | Pierre Lacave |
| [HDFS-11709](https://issues.apache.org/jira/browse/HDFS-11709) | StandbyCheckpointer should handle an non-existing legacyOivImageDir gracefully |  Critical | ha, namenode | Zhe Zhang | Erik Krogen |
| [YARN-5894](https://issues.apache.org/jira/browse/YARN-5894) | fixed license warning caused by de.ruedigermoeller:fst:jar:2.24 |  Blocker | yarn | Haibo Chen | Haibo Chen |
| [HDFS-11609](https://issues.apache.org/jira/browse/HDFS-11609) | Some blocks can be permanently lost if nodes are decommissioned while dead |  Blocker | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-8498](https://issues.apache.org/jira/browse/HDFS-8498) | Blocks can be committed with wrong size |  Critical | hdfs-client | Daryn Sharp | Jing Zhao |
| [HDFS-11714](https://issues.apache.org/jira/browse/HDFS-11714) | Newly added NN storage directory won't get initialized and cause space exhaustion |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-14371](https://issues.apache.org/jira/browse/HADOOP-14371) | License error in TestLoadBalancingKMSClientProvider.java |  Major | . | hu xiaodong | hu xiaodong |
| [HADOOP-14207](https://issues.apache.org/jira/browse/HADOOP-14207) | "dfsadmin -refreshCallQueue" fails with DecayRpcScheduler |  Blocker | rpc-server | Surendra Singh Lilhore | Surendra Singh Lilhore |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9300](https://issues.apache.org/jira/browse/HDFS-9300) | TestDirectoryScanner.testThrottle() is still a little flakey |  Major | balancer & mover, test | Daniel Templeton | Daniel Templeton |
| [MAPREDUCE-6831](https://issues.apache.org/jira/browse/MAPREDUCE-6831) | Flaky test TestJobImpl.testKilledDuringKillAbort |  Major | mrv2 | Peter Bacsko | Peter Bacsko |
| [HDFS-11290](https://issues.apache.org/jira/browse/HDFS-11290) | TestFSNameSystemMBean should wait until JMX cache is cleared |  Major | test | Akira Ajisaka | Erik Krogen |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14032](https://issues.apache.org/jira/browse/HADOOP-14032) | Reduce fair call queue priority inversion |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-14034](https://issues.apache.org/jira/browse/HADOOP-14034) | Allow ipc layer exceptions to selectively close connections |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-14033](https://issues.apache.org/jira/browse/HADOOP-14033) | Reduce fair call queue lock contention |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-14135](https://issues.apache.org/jira/browse/HADOOP-14135) | Remove URI parameter in AWSCredentialProvider constructors |  Major | fs/s3 | Mingliang Liu | Mingliang Liu |
| [HADOOP-14196](https://issues.apache.org/jira/browse/HADOOP-14196) | Azure Data Lake doc is missing required config entry |  Major | fs/adl | Atul Sikaria | Atul Sikaria |
| [HADOOP-14197](https://issues.apache.org/jira/browse/HADOOP-14197) | Fix ADLS doc for credential provider |  Major | documentation, fs/adl | John Zhuge | John Zhuge |
| [HADOOP-14230](https://issues.apache.org/jira/browse/HADOOP-14230) | TestAdlFileSystemContractLive fails to clean up |  Minor | fs/adl, test | John Zhuge | John Zhuge |
| [HADOOP-14038](https://issues.apache.org/jira/browse/HADOOP-14038) | Rename ADLS credential properties |  Minor | fs/adl | John Zhuge | John Zhuge |
| [HADOOP-14321](https://issues.apache.org/jira/browse/HADOOP-14321) | Explicitly exclude S3A root dir ITests from parallel runs |  Minor | fs/s3, test | Steve Loughran | Steve Loughran |
| [HADOOP-14241](https://issues.apache.org/jira/browse/HADOOP-14241) | Add ADLS sensitive config keys to default list |  Minor | fs, fs/adl, security | John Zhuge | John Zhuge |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14344](https://issues.apache.org/jira/browse/HADOOP-14344) | Revert HADOOP-13606 swift FS to add a service load metadata file |  Major | . | John Zhuge | John Zhuge |


