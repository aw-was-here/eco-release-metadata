
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

## Release 2.7.3 - Unreleased (as of 2015-12-16)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12413](https://issues.apache.org/jira/browse/HADOOP-12413) | AccessControlList should avoid calling getGroupNames in isUserInList with empty groups. |  Major | security | zhihai xu | zhihai xu |
| [HDFS-9314](https://issues.apache.org/jira/browse/HDFS-9314) | Improve BlockPlacementPolicyDefault's picking of excess replicas |  Major | . | Ming Ma | Xiao Chen |
| [HDFS-8647](https://issues.apache.org/jira/browse/HDFS-8647) | Abstract BlockManager's rack policy into BlockPlacementPolicy |  Major | . | Ming Ma | Brahma Reddy Battula |
| [MAPREDUCE-6436](https://issues.apache.org/jira/browse/MAPREDUCE-6436) | JobHistory cache issue |  Blocker | . | Ryu Kobayashi | Kai Sasaki |
| [MAPREDUCE-5485](https://issues.apache.org/jira/browse/MAPREDUCE-5485) | Allow repeating job commit by extending OutputCommitter API |  Critical | . | Nemon Lou | Junping Du |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12602](https://issues.apache.org/jira/browse/HADOOP-12602) | TestMetricsSystemImpl#testQSize occasionally fail |  Major | test | Wei-Chiu Chuang | Masatake Iwasaki |
| [HADOOP-12565](https://issues.apache.org/jira/browse/HADOOP-12565) | Replace DSA with RSA for SSH key type in SingleCluster.md |  Minor | documentation | Alexander Veit | Mingliang Liu |
| [HADOOP-12545](https://issues.apache.org/jira/browse/HADOOP-12545) | Hadoop javadoc has broken links for AccessControlList, ImpersonationProvider, DefaultImpersonationProvider, and DistCp |  Major | documentation | Arshad Mohammad | Arshad Mohammad |
| [HADOOP-12526](https://issues.apache.org/jira/browse/HADOOP-12526) | [Branch-2] there are duplicate dependency definitions in pom's |  Major | build | Sangjin Lee | Sangjin Lee |
| [HADOOP-12482](https://issues.apache.org/jira/browse/HADOOP-12482) | Race condition in JMX cache update |  Major | . | Tony Wu | Tony Wu |
| [HADOOP-12374](https://issues.apache.org/jira/browse/HADOOP-12374) | Description of hdfs expunge command is confusing |  Major | documentation, trash | Weiwei Yang | Weiwei Yang |
| [HADOOP-12348](https://issues.apache.org/jira/browse/HADOOP-12348) | MetricsSystemImpl creates MetricsSourceAdapter with wrong time unit parameter. |  Major | metrics | zhihai xu | zhihai xu |
| [HADOOP-12296](https://issues.apache.org/jira/browse/HADOOP-12296) | when setnetgrent returns 0 in linux, exception should be thrown |  Major | . | Chang Li | Chang Li |
| [HDFS-9431](https://issues.apache.org/jira/browse/HDFS-9431) | DistributedFileSystem#concat fails if the target path is relative. |  Major | hdfs-client | Kazuho Fujii | Kazuho Fujii |
| [HDFS-9383](https://issues.apache.org/jira/browse/HDFS-9383) | TestByteArrayManager#testByteArrayManager fails |  Major | . | Kihwal Lee | Tsz Wo Nicholas Sze |
| [HDFS-9313](https://issues.apache.org/jira/browse/HDFS-9313) | Possible NullPointerException in BlockManager if no excess replica can be chosen |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9289](https://issues.apache.org/jira/browse/HDFS-9289) | Make DataStreamer#block thread safe and verify genStamp in commitBlock |  Critical | . | Chang Li | Chang Li |
| [HDFS-8615](https://issues.apache.org/jira/browse/HDFS-8615) | Correct HTTP method in WebHDFS document |  Major | documentation | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-6481](https://issues.apache.org/jira/browse/HDFS-6481) | DatanodeManager#getDatanodeStorageInfos() should check the length of storageIDs |  Minor | namenode | Ted Yu | Tsz Wo Nicholas Sze |
| [HDFS-4937](https://issues.apache.org/jira/browse/HDFS-4937) | ReplicationMonitor can infinite-loop in BlockPlacementPolicyDefault#chooseRandom() |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [MAPREDUCE-6549](https://issues.apache.org/jira/browse/MAPREDUCE-6549) | multibyte delimiters with LineRecordReader cause duplicate records |  Major | mrv1, mrv2 | Dustin Cote | Wilfred Spiegelenburg |
| [MAPREDUCE-6540](https://issues.apache.org/jira/browse/MAPREDUCE-6540) | TestMRTimelineEventHandling fails |  Major | test | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6377](https://issues.apache.org/jira/browse/MAPREDUCE-6377) | JHS sorting on state column not working in webUi |  Minor | jobhistoryserver | Bibin A Chundatt | zhihai xu |
| [MAPREDUCE-5883](https://issues.apache.org/jira/browse/MAPREDUCE-5883) | "Total megabyte-seconds" in job counters is slightly misleading |  Minor | . | Nathan Roberts | Nathan Roberts |
| [YARN-4439](https://issues.apache.org/jira/browse/YARN-4439) | Clarify NMContainerStatus#toString method. |  Major | . | Jian He | Jian He |
| [YARN-4434](https://issues.apache.org/jira/browse/YARN-4434) | NodeManager Disk Checker parameter documentation is not correct |  Minor | documentation, nodemanager | Takashi Ohnishi | Weiwei Yang |
| [YARN-4422](https://issues.apache.org/jira/browse/YARN-4422) | Generic AHS sometimes doesn't show started, node, or logs on App page |  Major | . | Eric Payne | Eric Payne |
| [YARN-4398](https://issues.apache.org/jira/browse/YARN-4398) | Yarn recover functionality causes the cluster running slowly and the cluster usage rate is far below 100 |  Major | resourcemanager | NING DING | NING DING |
| [YARN-4380](https://issues.apache.org/jira/browse/YARN-4380) | TestResourceLocalizationService.testDownloadingResourcesOnContainerKill fails intermittently |  Major | test | Tsuyoshi Ozawa | Varun Saxena |
| [YARN-4374](https://issues.apache.org/jira/browse/YARN-4374) | RM capacity scheduler UI rounds user limit factor |  Major | capacityscheduler | Chang Li | Chang Li |
| [YARN-4365](https://issues.apache.org/jira/browse/YARN-4365) | FileSystemNodeLabelStore should check for root dir existence on startup |  Major | resourcemanager | Jason Lowe | Kuhu Shukla |
| [YARN-4348](https://issues.apache.org/jira/browse/YARN-4348) | ZKRMStateStore.syncInternal shouldn't wait for sync completion for avoiding blocking ZK's event thread |  Blocker | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-4347](https://issues.apache.org/jira/browse/YARN-4347) | Resource manager fails with Null pointer exception |  Major | yarn | Yesha Vora | Jian He |
| [YARN-4344](https://issues.apache.org/jira/browse/YARN-4344) | NMs reconnecting with changed capabilities can lead to wrong cluster resource calculations |  Critical | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-4326](https://issues.apache.org/jira/browse/YARN-4326) | Fix TestDistributedShell timeout as AHS in MiniYarnCluster no longer binds to default port 8188 |  Major | . | MENG DING | MENG DING |
| [YARN-4241](https://issues.apache.org/jira/browse/YARN-4241) | Fix typo of property name in yarn-default.xml |  Major | documentation | Anthony Rojas | Anthony Rojas |
| [YARN-3849](https://issues.apache.org/jira/browse/YARN-3849) | Too much of preemption activity causing continuos killing of containers across queues |  Critical | capacityscheduler | Sunil G | Sunil G |
| [YARN-3840](https://issues.apache.org/jira/browse/YARN-3840) | Resource Manager web ui issue when sorting application by id (with application having id \> 9999) |  Major | resourcemanager | LINTE | Varun Saxena |
| [YARN-3769](https://issues.apache.org/jira/browse/YARN-3769) | Consider user limit when calculating total pending resource for preemption policy in Capacity Scheduler |  Major | capacityscheduler | Eric Payne | Eric Payne |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


