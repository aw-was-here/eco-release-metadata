
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

## Release 3.2.3 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-15574](https://issues.apache.org/jira/browse/HDFS-15574) | Remove unnecessary sort of block list in DirectoryScanner |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-15583](https://issues.apache.org/jira/browse/HDFS-15583) | Backport DirectoryScanner improvements HDFS-14476, HDFS-14751 and HDFS-15048 to branch 3.2 and 3.1 |  Major | datanode | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-15567](https://issues.apache.org/jira/browse/HDFS-15567) | [SBN Read] HDFS should expose msync() API to allow downstream applications call it explicitly. |  Major | ha, hdfs-client | Konstantin Shvachko | Konstantin Shvachko |
| [YARN-10450](https://issues.apache.org/jira/browse/YARN-10450) | Add cpu and memory utilization per node and cluster-wide metrics |  Minor | yarn | Jim Brennan | Jim Brennan |
| [YARN-10475](https://issues.apache.org/jira/browse/YARN-10475) | Scale RM-NM heartbeat interval based on node utilization |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HDFS-15665](https://issues.apache.org/jira/browse/HDFS-15665) | Balancer logging improvement |  Major | balancer & mover | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-17342](https://issues.apache.org/jira/browse/HADOOP-17342) | Creating a token identifier should not do kerberos name resolution |  Major | common | Jim Brennan | Jim Brennan |
| [YARN-10479](https://issues.apache.org/jira/browse/YARN-10479) | RMProxy should retry on SocketTimeout Exceptions |  Major | yarn | Jim Brennan | Jim Brennan |
| [HDFS-15623](https://issues.apache.org/jira/browse/HDFS-15623) | Respect configured values of rpc.engine |  Major | hdfs | Hector Sandoval Chaverri | Hector Sandoval Chaverri |
| [HDFS-14395](https://issues.apache.org/jira/browse/HDFS-14395) | Remove WARN Logging From Interrupts in DataStreamer |  Minor | hdfs-client | David Mollitor | David Mollitor |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-17119](https://issues.apache.org/jira/browse/HADOOP-17119) | Jetty upgrade to 9.4.x causes MR app fail with IOException |  Major | . | Bilwa S T | Bilwa S T |
| [YARN-10430](https://issues.apache.org/jira/browse/YARN-10430) | Log improvements in NodeStatusUpdaterImpl |  Minor | nodemanager | Bilwa S T | Bilwa S T |
| [HDFS-15628](https://issues.apache.org/jira/browse/HDFS-15628) | HttpFS server throws NPE if a file is a symlink |  Major | fs, httpfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15627](https://issues.apache.org/jira/browse/HDFS-15627) | Audit log deletes before collecting blocks |  Major | logging, namenode | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17309](https://issues.apache.org/jira/browse/HADOOP-17309) | Javadoc warnings and errors are ignored in the precommit jobs |  Major | build, documentation | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15639](https://issues.apache.org/jira/browse/HDFS-15639) | [JDK 11] Fix Javadoc errors in hadoop-hdfs-client |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-15618](https://issues.apache.org/jira/browse/HDFS-15618) | Improve datanode shutdown latency |  Major | datanode | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15622](https://issues.apache.org/jira/browse/HDFS-15622) | Deleted blocks linger in the replications queue |  Major | hdfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15641](https://issues.apache.org/jira/browse/HDFS-15641) | DataNode could meet deadlock if invoke refreshNameNode |  Critical | . | Hongbing Wang | Hongbing Wang |
| [HDFS-15644](https://issues.apache.org/jira/browse/HDFS-15644) | Failed volumes can cause DNs to stop block reporting |  Major | block placement, datanode | Ahmed Hussein | Ahmed Hussein |
| [YARN-10467](https://issues.apache.org/jira/browse/YARN-10467) | ContainerIdPBImpl objects can be leaked in RMNodeImpl.completedContainers |  Major | resourcemanager | Haibo Chen | Haibo Chen |
| [HADOOP-17329](https://issues.apache.org/jira/browse/HADOOP-17329) | mvn site commands fails due to MetricsSystemImpl changes |  Major | . | Xiaoqiao He | Xiaoqiao He |
| [YARN-10472](https://issues.apache.org/jira/browse/YARN-10472) | Backport YARN-10314 to branch-3.2 |  Blocker | yarn | Siyao Meng | Siyao Meng |
| [HADOOP-17340](https://issues.apache.org/jira/browse/HADOOP-17340) | TestLdapGroupsMapping failing -string mismatch in exception validation |  Major | test | Steve Loughran | Steve Loughran |
| [HADOOP-17352](https://issues.apache.org/jira/browse/HADOOP-17352) | Update PATCH\_NAMING\_RULE in the personality file |  Minor | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15485](https://issues.apache.org/jira/browse/HDFS-15485) | Fix outdated properties of JournalNode when performing rollback |  Minor | . | Deegue | Deegue |
| [HADOOP-17096](https://issues.apache.org/jira/browse/HADOOP-17096) | ZStandardCompressor throws java.lang.InternalError: Error (generic) |  Major | io | Stephen Jung (Stripe) | Stephen Jung (Stripe) |
| [HADOOP-17358](https://issues.apache.org/jira/browse/HADOOP-17358) | Improve excessive reloading of Configurations |  Major | conf | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15538](https://issues.apache.org/jira/browse/HDFS-15538) | Fix the documentation for dfs.namenode.replication.max-streams in hdfs-default.xml |  Major | . | Xieming Li | Xieming Li |
| [YARN-10485](https://issues.apache.org/jira/browse/YARN-10485) | TimelineConnector swallows InterruptedException |  Major | . | Ahmed Hussein | Ahmed Hussein |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-15459](https://issues.apache.org/jira/browse/HDFS-15459) | TestBlockTokenWithDFSStriped fails intermittently |  Major | hdfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15461](https://issues.apache.org/jira/browse/HDFS-15461) | TestDFSClientRetries#testGetFileChecksum fails intermittently |  Major | dfsclient, test | Ahmed Hussein | Ahmed Hussein |
| [HDFS-9776](https://issues.apache.org/jira/browse/HDFS-9776) | TestHAAppend#testMultipleAppendsDuringCatchupTailing is flaky |  Major | . | Vinayakumar B | Ahmed Hussein |
| [HADOOP-17330](https://issues.apache.org/jira/browse/HADOOP-17330) | Backport HADOOP-16005-"NativeAzureFileSystem does not support setXAttr" to branch-3.2 |  Major | fs/azure | Sally Zuo | Sally Zuo |
| [HDFS-15643](https://issues.apache.org/jira/browse/HDFS-15643) | EC: Fix checksum computation in case of native encoders |  Blocker | . | Ahmed Hussein | Ayush Saxena |


