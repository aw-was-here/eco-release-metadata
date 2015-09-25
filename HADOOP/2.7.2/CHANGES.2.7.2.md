
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

## Release 2.7.2 - Unreleased (as of 2015-09-25)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12280](https://issues.apache.org/jira/browse/HADOOP-12280) | Skip unit tests based on maven profile rather than NativeCodeLoader.isNativeCodeLoaded |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-12232](https://issues.apache.org/jira/browse/HADOOP-12232) | Upgrade Tomcat dependency to 6.0.44. |  Major | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-11812](https://issues.apache.org/jira/browse/HADOOP-11812) | Implement listLocatedStatus for ViewFileSystem to speed up split calculation |  Blocker | fs | Gera Shegalov | Gera Shegalov |
| [HADOOP-7139](https://issues.apache.org/jira/browse/HADOOP-7139) | Allow appending to existing SequenceFiles |  Major | io | Stephen Rose | Kanaka Kumar Avvaru |
| [HADOOP-5323](https://issues.apache.org/jira/browse/HADOOP-5323) | Trash documentation should describe its directory structure and configurations |  Minor | documentation | Suman Sehgal | Weiwei Yang |
| [HDFS-8727](https://issues.apache.org/jira/browse/HDFS-8727) | Allow using path style addressing for accessing the s3 endpoint |  Major | HDFS | Andrew Baptist | Andrew Baptist |
| [HDFS-8722](https://issues.apache.org/jira/browse/HDFS-8722) | Optimize datanode writes for small writes and flushes |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-8659](https://issues.apache.org/jira/browse/HDFS-8659) | Block scanner INFO message is spamming logs |  Major | datanode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-8384](https://issues.apache.org/jira/browse/HDFS-8384) | Allow NN to startup if there are files having a lease but are not under construction |  Minor | namenode | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-7314](https://issues.apache.org/jira/browse/HDFS-7314) | When the DFSClient lease cannot be renewed, abort open-for-write files rather than the entire DFSClient |  Major | . | Ming Ma | Ming Ma |
| [YARN-4158](https://issues.apache.org/jira/browse/YARN-4158) | Remove duplicate close for LogWriter in AppLogAggregatorImpl#uploadLogsForContainers |  Minor | nodemanager | zhihai xu | zhihai xu |
| [YARN-3978](https://issues.apache.org/jira/browse/YARN-3978) | Configurably turn off the saving of container info in Generic AHS |  Major | timelineserver, yarn | Eric Payne | Eric Payne |
| [YARN-3248](https://issues.apache.org/jira/browse/YARN-3248) | Display count of nodes blacklisted by apps in the web UI |  Major | capacityscheduler, resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3170](https://issues.apache.org/jira/browse/YARN-3170) | YARN architecture document needs updating |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12359](https://issues.apache.org/jira/browse/HADOOP-12359) | hadoop fs -getmerge doc is wrong |  Major | documentation | Daniel Templeton | Jagadesh Kiran N |
| [HADOOP-12304](https://issues.apache.org/jira/browse/HADOOP-12304) | Applications using FileContext fail with the default file system configured to be wasb/s3/etc. |  Blocker | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-12213](https://issues.apache.org/jira/browse/HADOOP-12213) | Interrupted exception can occur when Client#stop is called |  Minor | . | Oleg Zhurakousky | Kuhu Shukla |
| [HADOOP-12191](https://issues.apache.org/jira/browse/HADOOP-12191) | Bzip2Factory is not thread safe |  Major | io | Jason Lowe | Brahma Reddy Battula |
| [HADOOP-12186](https://issues.apache.org/jira/browse/HADOOP-12186) | ActiveStandbyElector shouldn't call monitorLockNodeAsync multiple times |  Major | ha | zhihai xu | zhihai xu |
| [HADOOP-12006](https://issues.apache.org/jira/browse/HADOOP-12006) | Remove unimplemented option for `hadoop fs -ls` from document in branch-2.7 |  Major | . | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-11932](https://issues.apache.org/jira/browse/HADOOP-11932) |  MetricsSinkAdapter hangs when being stopped |  Critical | . | Jian He | Brahma Reddy Battula |
| [HADOOP-11491](https://issues.apache.org/jira/browse/HADOOP-11491) | HarFs incorrectly declared as requiring an authority |  Critical | fs | Gera Shegalov | Brahma Reddy Battula |
| [HADOOP-10365](https://issues.apache.org/jira/browse/HADOOP-10365) | BufferedOutputStream in FileUtil#unpackEntries() should be closed in finally block |  Minor | util | Ted Yu | Kiran Kumar M R |
| [HADOOP-8151](https://issues.apache.org/jira/browse/HADOOP-8151) | Error handling in snappy decompressor throws invalid exceptions |  Major | io, native | Todd Lipcon | Matt Foley |
| [HDFS-9043](https://issues.apache.org/jira/browse/HDFS-9043) | Doc updation for commands in HDFS Federation |  Minor | documentation | J.Andreina | J.Andreina |
| [HDFS-9042](https://issues.apache.org/jira/browse/HDFS-9042) | Update document for the Storage policy name |  Minor | documentation | J.Andreina | J.Andreina |
| [HDFS-9033](https://issues.apache.org/jira/browse/HDFS-9033) | dfsadmin -metasave prints "NaN" for cache used% |  Major | . | Archana T | Brahma Reddy Battula |
| [HDFS-8995](https://issues.apache.org/jira/browse/HDFS-8995) | Flaw in registration bookeeping can make DN die on reconnect |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-8891](https://issues.apache.org/jira/browse/HDFS-8891) | HDFS concat should keep srcs order |  Blocker | . | Yong Zhang | Yong Zhang |
| [HDFS-8879](https://issues.apache.org/jira/browse/HDFS-8879) | Quota by storage type usage incorrectly initialized upon namenode restart |  Major | namenode | Kihwal Lee | Xiaoyu Yao |
| [HDFS-8867](https://issues.apache.org/jira/browse/HDFS-8867) | Enable optimized block reports |  Major | . | Rushabh S Shah | Daryn Sharp |
| [HDFS-8863](https://issues.apache.org/jira/browse/HDFS-8863) | The remaining space check in BlockPlacementPolicyDefault is flawed |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-8852](https://issues.apache.org/jira/browse/HDFS-8852) | HDFS architecture documentation of version 2.x is outdated about append write support |  Major | documentation | Hong Dai Thanh | Ajith S |
| [HDFS-8846](https://issues.apache.org/jira/browse/HDFS-8846) | Add a unit test for INotify functionality across a layout version upgrade |  Major | namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8806](https://issues.apache.org/jira/browse/HDFS-8806) | Inconsistent metrics: number of missing blocks with replication factor 1 not properly cleared |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8767](https://issues.apache.org/jira/browse/HDFS-8767) | RawLocalFileSystem.listStatus() returns null for UNIX pipefile |  Critical | . | Haohui Mai | Kanaka Kumar Avvaru |
| [HDFS-8431](https://issues.apache.org/jira/browse/HDFS-8431) | hdfs crypto class not found in Windows |  Critical | HDFS | Sumana Sathish | Anu Engineer |
| [HDFS-8219](https://issues.apache.org/jira/browse/HDFS-8219) | setStoragePolicy with folder behavior is different after cluster restart |  Major | . | Peter Shi | Surendra Singh Lilhore |
| [HDFS-8099](https://issues.apache.org/jira/browse/HDFS-8099) | Change "DFSInputStream has been closed already" message to debug log level |  Minor | hdfs-client | Charles Lamb | Charles Lamb |
| [HDFS-8046](https://issues.apache.org/jira/browse/HDFS-8046) | Allow better control of getContentSummary |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-7609](https://issues.apache.org/jira/browse/HDFS-7609) | Avoid retry cache collision when Standby NameNode loading edits |  Critical | namenode | Carrey Zhan | Ming Ma |
| [HDFS-6945](https://issues.apache.org/jira/browse/HDFS-6945) | BlockManager should remove a block from excessReplicateMap and decrement ExcessBlocks metric when the block is removed |  Critical | namenode | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-6481](https://issues.apache.org/jira/browse/MAPREDUCE-6481) | LineRecordReader may give incomplete record and wrong position/key information for uncompressed input sometimes. |  Critical | mrv2 | zhihai xu | zhihai xu |
| [MAPREDUCE-6474](https://issues.apache.org/jira/browse/MAPREDUCE-6474) | ShuffleHandler can possibly exhaust nodemanager file descriptors |  Major | mrv2, nodemanager | Nathan Roberts | Kuhu Shukla |
| [MAPREDUCE-6472](https://issues.apache.org/jira/browse/MAPREDUCE-6472) | MapReduce AM should have java.io.tmpdir=./tmp to be consistent with tasks |  Major | mr-am | Jason Lowe | Naganarasimha G R |
| [MAPREDUCE-6454](https://issues.apache.org/jira/browse/MAPREDUCE-6454) | MapReduce doesn't set the HADOOP\_CLASSPATH for jar lib in distributed cache. |  Critical | . | Junping Du | Junping Du |
| [MAPREDUCE-6442](https://issues.apache.org/jira/browse/MAPREDUCE-6442) | Stack trace is missing when error occurs in client protocol provider's constructor |  Major | client | Chang Li | Chang Li |
| [MAPREDUCE-6439](https://issues.apache.org/jira/browse/MAPREDUCE-6439) | AM may fail instead of retrying if RM shuts down during the allocate call |  Critical | . | Anubhav Dhoot | Anubhav Dhoot |
| [MAPREDUCE-6426](https://issues.apache.org/jira/browse/MAPREDUCE-6426) | TestShuffleHandler#testGetMapOutputInfo is failing |  Major | test | Devaraj K | zhihai xu |
| [MAPREDUCE-6425](https://issues.apache.org/jira/browse/MAPREDUCE-6425) | ShuffleHandler passes wrong "base" parameter to getMapOutputInfo if mapId is not in the cache. |  Major | mrv2, nodemanager | zhihai xu | zhihai xu |
| [MAPREDUCE-5982](https://issues.apache.org/jira/browse/MAPREDUCE-5982) | Task attempts that fail from the ASSIGNED state can disappear |  Major | mr-am | Jason Lowe | Chang Li |
| [MAPREDUCE-5948](https://issues.apache.org/jira/browse/MAPREDUCE-5948) | org.apache.hadoop.mapred.LineRecordReader does not handle multibyte record delimiters well |  Critical | . | Kris Geusebroek | Akira AJISAKA |
| [MAPREDUCE-5649](https://issues.apache.org/jira/browse/MAPREDUCE-5649) | Reduce cannot use more than 2G memory  for the final merge |  Major | mrv2 | stanley shi | Gera Shegalov |
| [YARN-4105](https://issues.apache.org/jira/browse/YARN-4105) | Capacity Scheduler headroom for DRF is wrong |  Major | capacityscheduler | Chang Li | Chang Li |
| [YARN-4103](https://issues.apache.org/jira/browse/YARN-4103) | RM WebServices missing scheme for appattempts logLinks |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [YARN-4096](https://issues.apache.org/jira/browse/YARN-4096) | App local logs are leaked if log aggregation fails to initialize for the app |  Major | log-aggregation, nodemanager | Jason Lowe | Jason Lowe |
| [YARN-4087](https://issues.apache.org/jira/browse/YARN-4087) | Followup fixes after YARN-2019 regarding RM behavior when state-store error occurs |  Major | . | Jian He | Jian He |
| [YARN-4047](https://issues.apache.org/jira/browse/YARN-4047) | ClientRMService getApplications has high scheduler lock contention |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-3999](https://issues.apache.org/jira/browse/YARN-3999) | RM hangs on draining events |  Major | . | Jian He | Jian He |
| [YARN-3990](https://issues.apache.org/jira/browse/YARN-3990) | AsyncDispatcher may overloaded with RMAppNodeUpdateEvent when Node is connected/disconnected |  Critical | resourcemanager | Rohith Sharma K S | Bibin A Chundatt |
| [YARN-3975](https://issues.apache.org/jira/browse/YARN-3975) | WebAppProxyServlet should not redirect to RM page if AHS is enabled |  Major | . | Mit Desai | Mit Desai |
| [YARN-3967](https://issues.apache.org/jira/browse/YARN-3967) | Fetch the application report from the AHS if the RM does not know about it |  Major | . | Mit Desai | Mit Desai |
| [YARN-3925](https://issues.apache.org/jira/browse/YARN-3925) | ContainerLogsUtils#getContainerLogFile fails to read container log files from full disks. |  Critical | nodemanager | zhihai xu | zhihai xu |
| [YARN-3905](https://issues.apache.org/jira/browse/YARN-3905) | Application History Server UI NPEs when accessing apps run after RM restart |  Major | timelineserver | Eric Payne | Eric Payne |
| [YARN-3878](https://issues.apache.org/jira/browse/YARN-3878) | AsyncDispatcher can hang while stopping if it is configured for draining events on stop |  Critical | . | Varun Saxena | Varun Saxena |
| [YARN-3857](https://issues.apache.org/jira/browse/YARN-3857) | Memory leak in ResourceManager with SIMPLE mode |  Critical | resourcemanager | mujunchao | mujunchao |
| [YARN-3793](https://issues.apache.org/jira/browse/YARN-3793) | Several NPEs when deleting local files on NM recovery |  Major | nodemanager | Karthik Kambatla | Varun Saxena |
| [YARN-3697](https://issues.apache.org/jira/browse/YARN-3697) | FairScheduler: ContinuousSchedulingThread can fail to shutdown |  Critical | fairscheduler | zhihai xu | zhihai xu |
| [YARN-3690](https://issues.apache.org/jira/browse/YARN-3690) | [JDK8] 'mvn site' fails |  Major | api, site | Akira AJISAKA | Brahma Reddy Battula |
| [YARN-3624](https://issues.apache.org/jira/browse/YARN-3624) | ApplicationHistoryServer reverses the order of the filters it gets |  Major | timelineserver | Mit Desai | Mit Desai |
| [YARN-3535](https://issues.apache.org/jira/browse/YARN-3535) | Scheduler must re-request container resources when RMContainer transitions from ALLOCATED to KILLED |  Critical | capacityscheduler, fairscheduler, resourcemanager | Peng Zhang | Peng Zhang |
| [YARN-3508](https://issues.apache.org/jira/browse/YARN-3508) | Prevent processing preemption events on the main RM dispatcher |  Major | resourcemanager, scheduler | Jason Lowe | Varun Saxena |
| [YARN-2890](https://issues.apache.org/jira/browse/YARN-2890) | MiniYarnCluster should turn on timeline service if configured to do so |  Major | . | Mit Desai | Mit Desai |
| [YARN-2019](https://issues.apache.org/jira/browse/YARN-2019) | Retrospect on decision of making RM crashed if any exception throw in ZKRMStateStore |  Critical | . | Junping Du | Jian He |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4101](https://issues.apache.org/jira/browse/YARN-4101) | RM should print alert messages if Zookeeper and Resourcemanager gets connection issue |  Critical | yarn | Yesha Vora | Xuan Gong |
| [YARN-4092](https://issues.apache.org/jira/browse/YARN-4092) | RM HA UI redirection needs to be fixed when both RMs are in standby mode |  Major | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-3969](https://issues.apache.org/jira/browse/YARN-3969) | Allow jobs to be submitted to reservation that is active but does not have any allocations |  Major | capacityscheduler, fairscheduler, resourcemanager | Subru Krishnan | Subru Krishnan |
| [YARN-3893](https://issues.apache.org/jira/browse/YARN-3893) | Both RM in active state when Admin#transitionToActive failure from refeshAll() |  Critical | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3740](https://issues.apache.org/jira/browse/YARN-3740) | Fixed the typo with the configuration name: APPLICATION\_HISTORY\_PREFIX\_MAX\_APPS |  Major | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3700](https://issues.apache.org/jira/browse/YARN-3700) | ATS Web Performance issue at load time when large number of jobs |  Major | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-2801](https://issues.apache.org/jira/browse/YARN-2801) | Add documentation for node labels feature |  Major | documentation | Gururaj Shetty | Wangda Tan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


