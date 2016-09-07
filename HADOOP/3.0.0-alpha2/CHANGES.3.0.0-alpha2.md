
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

## Release 3.0.0-alpha2 - Unreleased (as of 2016-09-07)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-5049](https://issues.apache.org/jira/browse/YARN-5049) | Extend NMStateStore to save queued container information |  Major | nodemanager, resourcemanager | Konstantinos Karanasos | Konstantinos Karanasos |
| [HADOOP-13301](https://issues.apache.org/jira/browse/HADOOP-13301) | Millisecond timestamp for FsShell console log and MapReduce jobsummary log |  Minor | . | John Zhuge | John Zhuge |
| [HDFS-10650](https://issues.apache.org/jira/browse/HDFS-10650) | DFSClient#mkdirs and DFSClient#primitiveMkdir should use default directory permission |  Minor | . | John Zhuge | John Zhuge |
| [HDFS-10725](https://issues.apache.org/jira/browse/HDFS-10725) | Caller context should always be constructed by a builder |  Minor | ipc | Mingliang Liu | Mingliang Liu |
| [HDFS-6962](https://issues.apache.org/jira/browse/HDFS-6962) | ACL inheritance conflicts with umaskmode |  Critical | security | LINTE | John Zhuge |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10584](https://issues.apache.org/jira/browse/HDFS-10584) | Allow long-running Mover tool to login with keytab |  Major | balancer & mover, security | Rakesh R | Rakesh R |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10425](https://issues.apache.org/jira/browse/HDFS-10425) | Clean up NNStorage and TestSaveNamespace |  Minor | . | Andras Bokor | Andras Bokor |
| [YARN-5456](https://issues.apache.org/jira/browse/YARN-5456) | container-executor support for FreeBSD, NetBSD, and others if conf path is absolute |  Major | nodemanager, security | Allen Wittenauer | Allen Wittenauer |
| [YARN-5550](https://issues.apache.org/jira/browse/YARN-5550) | TestYarnCLI#testGetContainers should format according to CONTAINER\_PATTERN |  Minor | client, test | Jonathan Hung | Jonathan Hung |
| [HDFS-10814](https://issues.apache.org/jira/browse/HDFS-10814) | Add assertion for getNumEncryptionZones when no EZ is created |  Minor | test | Vinitha Reddy Gankidi | Vinitha Reddy Gankidi |
| [HDFS-10784](https://issues.apache.org/jira/browse/HDFS-10784) | Implement WebHdfsFileSystem#listStatusIterator |  Major | webhdfs | Andrew Wang | Andrew Wang |
| [HDFS-10817](https://issues.apache.org/jira/browse/HDFS-10817) | Add Logging for Long-held NN Read Locks |  Major | logging, namenode | Erik Krogen | Erik Krogen |
| [HADOOP-13465](https://issues.apache.org/jira/browse/HADOOP-13465) | Design Server.Call to be extensible for unified call queue |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HDFS-10822](https://issues.apache.org/jira/browse/HDFS-10822) | Log DataNodes in the write pipeline |  Trivial | hdfs-client | John Zhuge | John Zhuge |
| [HDFS-10833](https://issues.apache.org/jira/browse/HDFS-10833) | Fix JSON errors in WebHDFS.md examples |  Trivial | documentation | Andrew Wang | Andrew Wang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10639](https://issues.apache.org/jira/browse/HDFS-10639) | Fix typos in HDFSDiskbalancer.md |  Trivial | documentation | Akira Ajisaka | Yiqun Lin |
| [HADOOP-13073](https://issues.apache.org/jira/browse/HADOOP-13073) | RawLocalFileSystem does not react on changing umask |  Major | fs | Andras Bokor | Andras Bokor |
| [HADOOP-9427](https://issues.apache.org/jira/browse/HADOOP-9427) | Use JUnit assumptions to skip platform-specific tests |  Major | test | Arpit Agarwal | Gergely Novák |
| [YARN-5431](https://issues.apache.org/jira/browse/YARN-5431) | TimeLineReader daemon start should allow to pass its own reader opts |  Major | scripts, timelinereader | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-5121](https://issues.apache.org/jira/browse/YARN-5121) | fix some container-executor portability issues |  Blocker | nodemanager, security | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13440](https://issues.apache.org/jira/browse/HADOOP-13440) | FileContext does not react on changing umask via configuration |  Major | . | Yufei Gu | Akira Ajisaka |
| [MAPREDUCE-6682](https://issues.apache.org/jira/browse/MAPREDUCE-6682) | TestMRCJCFileOutputCommitter fails intermittently |  Major | test | Brahma Reddy Battula | Akira Ajisaka |
| [HADOOP-13410](https://issues.apache.org/jira/browse/HADOOP-13410) | RunJar adds the content of the jar twice to the classpath |  Major | util | Sangjin Lee | Yuanbo Liu |
| [HDFS-9696](https://issues.apache.org/jira/browse/HDFS-9696) | Garbage snapshot records lingering forever |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-10773](https://issues.apache.org/jira/browse/HDFS-10773) | BlockSender should not synchronize on the dataset object |  Major | datanode | Arpit Agarwal | Chen Liang |
| [HDFS-10763](https://issues.apache.org/jira/browse/HDFS-10763) | Open files can leak permanently due to inconsistent lease update |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-13532](https://issues.apache.org/jira/browse/HADOOP-13532) | Fix typo in hadoop\_connect\_to\_hosts error message |  Trivial | scripts | Albert Chu | Albert Chu |
| [HADOOP-13533](https://issues.apache.org/jira/browse/HADOOP-13533) | User cannot set empty HADOOP\_SSH\_OPTS environment variable option |  Minor | scripts | Albert Chu | Albert Chu |
| [HDFS-8915](https://issues.apache.org/jira/browse/HDFS-8915) | TestFSNamesystem.testFSLockGetWaiterCount fails intermittently in jenkins |  Minor | test | Anu Engineer | Masatake Iwasaki |
| [MAPREDUCE-4784](https://issues.apache.org/jira/browse/MAPREDUCE-4784) | TestRecovery occasionally fails |  Major | mrv2, test | Jason Lowe | Haibo Chen |
| [HDFS-10760](https://issues.apache.org/jira/browse/HDFS-10760) | DataXceiver#run() should not log InvalidToken exception as an error |  Major | . | Pan Yuxuan | Pan Yuxuan |
| [HDFS-10729](https://issues.apache.org/jira/browse/HDFS-10729) | Improve log message for edit loading failures caused by FS limit checks. |  Major | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-5221](https://issues.apache.org/jira/browse/YARN-5221) | Expose UpdateResourceRequest API to allow AM to request for change in container properties |  Major | . | Arun Suresh | Arun Suresh |
| [HADOOP-13375](https://issues.apache.org/jira/browse/HADOOP-13375) | o.a.h.security.TestGroupsCaching.testBackgroundRefreshCounters seems flaky |  Major | security, test | Mingliang Liu | Weiwei Yang |
| [HADOOP-13508](https://issues.apache.org/jira/browse/HADOOP-13508) | FsPermission string constructor does not recognize sticky bit |  Major | . | Atul Sikaria | Atul Sikaria |
| [HDFS-10820](https://issues.apache.org/jira/browse/HDFS-10820) | Reuse closeResponder to reset the response variable in DataStreamer#run |  Minor | . | Yiqun Lin | Yiqun Lin |
| [YARN-5555](https://issues.apache.org/jira/browse/YARN-5555) | Scheduler UI: "% of Queue" is inaccurate if leaf queue is hierarchically nested. |  Minor | . | Eric Payne | Eric Payne |
| [HDFS-10835](https://issues.apache.org/jira/browse/HDFS-10835) | Fix typos in httpfs.sh |  Trivial | httpfs | John Zhuge | John Zhuge |
| [HDFS-10841](https://issues.apache.org/jira/browse/HDFS-10841) | Remove duplicate or unused variable in appendFile() |  Minor | . | Kihwal Lee | Kihwal Lee |
| [HDFS-9038](https://issues.apache.org/jira/browse/HDFS-9038) | DFS reserved space is erroneously counted towards non-DFS used. |  Major | datanode | Chris Nauroth | Brahma Reddy Battula |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10588](https://issues.apache.org/jira/browse/HDFS-10588) | False alarm in datanode log - ERROR - Disk Balancer is not enabled |  Major | datanode, hdfs | Weiwei Yang | Weiwei Yang |
| [YARN-4091](https://issues.apache.org/jira/browse/YARN-4091) | Add REST API to retrieve scheduler activity |  Major | capacity scheduler, resourcemanager | Sunil G | Chen Ge |
| [HDFS-10681](https://issues.apache.org/jira/browse/HDFS-10681) | DiskBalancer: query command should report Plan file path apart from PlanID |  Minor | diskbalancer | Manoj Govindassamy | Manoj Govindassamy |
| [YARN-5457](https://issues.apache.org/jira/browse/YARN-5457) | Refactor DistributedScheduling framework to pull out common functionality |  Major | resourcemanager | Arun Suresh | Arun Suresh |
| [HDFS-10598](https://issues.apache.org/jira/browse/HDFS-10598) | DiskBalancer does not execute multi-steps plan. |  Critical | diskbalancer | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9392](https://issues.apache.org/jira/browse/HDFS-9392) | Admins support for maintenance state |  Major | . | Ming Ma | Ming Ma |
| [HDFS-10813](https://issues.apache.org/jira/browse/HDFS-10813) | DiskBalancer: Add the getNodeList method in Command |  Minor | balancer & mover | Yiqun Lin | Yiqun Lin |
| [YARN-5596](https://issues.apache.org/jira/browse/YARN-5596) | Fix failing unit test in TestDockerContainerRuntime |  Minor | nodemanager, yarn | Sidharta Seethana | Sidharta Seethana |
| [HADOOP-13547](https://issues.apache.org/jira/browse/HADOOP-13547) | Optimize IPC client protobuf decoding |  Major | . | Daryn Sharp | Daryn Sharp |
| [HADOOP-13218](https://issues.apache.org/jira/browse/HADOOP-13218) | Migrate other Hadoop side tests to prepare for removing WritableRPCEngine |  Major | test | Kai Zheng | Wei Zhou |
| [YARN-5576](https://issues.apache.org/jira/browse/YARN-5576) | Allow resource localization while container is running |  Major | . | Jian He | Jian He |
| [HADOOP-13549](https://issues.apache.org/jira/browse/HADOOP-13549) | Eliminate intermediate buffer for server-side PB encoding |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-13447](https://issues.apache.org/jira/browse/HADOOP-13447) | Refactor S3AFileSystem to support introduction of separate metadata repository and tests. |  Major | fs/s3 | Chris Nauroth | Chris Nauroth |
| [HDFS-9847](https://issues.apache.org/jira/browse/HDFS-9847) | HDFS configuration should accept time units |  Major | . | Yiqun Lin | Yiqun Lin |
| [YARN-5566](https://issues.apache.org/jira/browse/YARN-5566) | Client-side NM graceful decom is not triggered when jobs finish |  Major | nodemanager | Robert Kanter | Robert Kanter |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-5495](https://issues.apache.org/jira/browse/YARN-5495) | Remove import wildcard in CapacityScheduler |  Trivial | capacityscheduler | Ray Chiang | Ray Chiang |


