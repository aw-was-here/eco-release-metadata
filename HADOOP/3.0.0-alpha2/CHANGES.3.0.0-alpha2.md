
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

## Release 3.0.0-alpha2 - Unreleased (as of 2016-07-29)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-13301](https://issues.apache.org/jira/browse/HADOOP-13301) | Millisecond timestamp for FsShell console log and MapReduce jobsummary log |  Minor | . | John Zhuge | John Zhuge |
| [HDFS-10650](https://issues.apache.org/jira/browse/HDFS-10650) | DFSClient#mkdirs and DFSClient#primitiveMkdir should use default directory permission |  Minor | . | John Zhuge | John Zhuge |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10425](https://issues.apache.org/jira/browse/HDFS-10425) | Clean up NNStorage and TestSaveNamespace |  Minor | . | Andras Bokor | Andras Bokor |
| [YARN-4883](https://issues.apache.org/jira/browse/YARN-4883) | Make consistent operation name in AdminService |  Minor | resourcemanager | Kai Sasaki | Kai Sasaki |
| [HDFS-10287](https://issues.apache.org/jira/browse/HDFS-10287) | MiniDFSCluster should implement AutoCloseable |  Minor | test | John Zhuge | Andras Bokor |
| [HDFS-10225](https://issues.apache.org/jira/browse/HDFS-10225) | DataNode hot swap drives should disallow storage type changes. |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9937](https://issues.apache.org/jira/browse/HDFS-9937) | Update dfsadmin command line help and HdfsQuotaAdminGuide |  Minor | . | Wei-Chiu Chuang | Kai Sasaki |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10639](https://issues.apache.org/jira/browse/HDFS-10639) | Fix typos in HDFSDiskbalancer.md |  Trivial | documentation | Akira Ajisaka | Yiqun Lin |
| [HADOOP-13073](https://issues.apache.org/jira/browse/HADOOP-13073) | RawLocalFileSystem does not react on changing umask |  Major | fs | Andras Bokor | Andras Bokor |
| [HADOOP-13202](https://issues.apache.org/jira/browse/HADOOP-13202) | Avoid possible overflow in org.apache.hadoop.util.bloom.BloomFilter#getNBytes |  Major | util | zhengbing li | Kai Sasaki |
| [HDFS-10603](https://issues.apache.org/jira/browse/HDFS-10603) | Fix flaky tests in org.apache.hadoop.hdfs.server.namenode.snapshot.TestOpenFilesWithSnapshot |  Major | hdfs, namenode | Yongjun Zhang | Yiqun Lin |
| [HADOOP-12991](https://issues.apache.org/jira/browse/HADOOP-12991) | Conflicting default ports in DelegateToFileSystem |  Major | fs | Kevin Hogeland | Kai Sasaki |
| [HDFS-10671](https://issues.apache.org/jira/browse/HDFS-10671) | Fix typo in HdfsRollingUpgrade.md |  Trivial | documentation | Yiqun Lin | Yiqun Lin |
| [HADOOP-9427](https://issues.apache.org/jira/browse/HADOOP-9427) | Use JUnit assumptions to skip platform-specific tests |  Major | test | Arpit Agarwal | Gergely Novák |
| [YARN-5431](https://issues.apache.org/jira/browse/YARN-5431) | TimeLineReader daemon start should allow to pass its own reader opts |  Major | scripts, timelinereader | Rohith Sharma K S | Rohith Sharma K S |
| [HDFS-10696](https://issues.apache.org/jira/browse/HDFS-10696) | TestHDFSCLI fails |  Major | test | Akira Ajisaka | Kai Sasaki |
| [YARN-5440](https://issues.apache.org/jira/browse/YARN-5440) | Use AHSClient in YarnClient when TimelineServer is running |  Major | . | Xuan Gong | Xuan Gong |
| [HDFS-9276](https://issues.apache.org/jira/browse/HDFS-9276) | Failed to Update HDFS Delegation Token for long running application in HA mode |  Major | fs, ha, security | Liangliang Gu | Liangliang Gu |
| [YARN-5436](https://issues.apache.org/jira/browse/YARN-5436) | Race in AsyncDispatcher can cause random test failures in Tez (probably YARN also) |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [HADOOP-13381](https://issues.apache.org/jira/browse/HADOOP-13381) | KMS clients should use KMS Delegation Tokens from current UGI. |  Critical | kms | Xiao Chen | Xiao Chen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6738](https://issues.apache.org/jira/browse/MAPREDUCE-6738) | TestJobListCache.testAddExisting failed intermittently in slow VM testbed |  Minor | . | Junping Du | Junping Du |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10598](https://issues.apache.org/jira/browse/HDFS-10598) | DiskBalancer does not execute multi-steps plan. |  Critical | diskbalancer | Lei (Eddy) Xu | Lei (Eddy) Xu |


