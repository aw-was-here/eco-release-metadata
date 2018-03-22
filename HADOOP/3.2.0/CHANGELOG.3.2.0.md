
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

## Release 3.2.0 - Unreleased (as of 2018-03-22)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14667](https://issues.apache.org/jira/browse/HADOOP-14667) | Flexible Visual Studio support |  Major | build | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-8028](https://issues.apache.org/jira/browse/YARN-8028) | Support authorizeUserAccessToQueue in RMWebServices |  Major | . | Wangda Tan | Wangda Tan |
| [HADOOP-15332](https://issues.apache.org/jira/browse/HADOOP-15332) | Fix typos in hadoop-aws markdown docs |  Minor | . | Gabor Bota | Gabor Bota |
| [HADOOP-15330](https://issues.apache.org/jira/browse/HADOOP-15330) | Remove jdk1.7 profile from hadoop-annotations module |  Minor | . | Akira Ajisaka | fang zhenyi |
| [HDFS-12884](https://issues.apache.org/jira/browse/HDFS-12884) | BlockUnderConstructionFeature.truncateBlock should be of type BlockInfo |  Major | namenode | Konstantin Shvachko | chencan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-8040](https://issues.apache.org/jira/browse/YARN-8040) | [UI2] New YARN UI webapp does not respect current pathname for REST api |  Major | yarn-ui-v2 | Sunil G | Sunil G |
| [HDFS-13296](https://issues.apache.org/jira/browse/HDFS-13296) | GenericTestUtils generates paths with drive letter in Windows and fail webhdfs related test cases |  Major | . | Xiao Liang | Xiao Liang |
| [HDFS-13268](https://issues.apache.org/jira/browse/HDFS-13268) | TestWebHdfsFileContextMainOperations fails on Windows |  Major | . | Íñigo Goiri | Xiao Liang |
| [HADOOP-15062](https://issues.apache.org/jira/browse/HADOOP-15062) | TestCryptoStreamsWithOpensslAesCtrCryptoCodec fails on Debian 9 |  Major | . | Miklos Szegedi | Miklos Szegedi |
| [HDFS-11043](https://issues.apache.org/jira/browse/HDFS-11043) | TestWebHdfsTimeouts fails |  Major | webhdfs | Andrew Wang | Chao Sun |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-7066](https://issues.apache.org/jira/browse/MAPREDUCE-7066) | TestQueue fails on Java9 |  Major | test | Takanobu Asanuma | Takanobu Asanuma |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15262](https://issues.apache.org/jira/browse/HADOOP-15262) | AliyunOSS: move files under a directory in parallel when rename a directory |  Major | fs/oss | wujinhu | wujinhu |
| [YARN-8002](https://issues.apache.org/jira/browse/YARN-8002) | Support NOT\_SELF and ALL namespace types for allocation tag |  Major | resourcemanager | Weiwei Yang | Weiwei Yang |
| [HDFS-13215](https://issues.apache.org/jira/browse/HDFS-13215) | RBF: Move Router to its own module |  Major | . | Íñigo Goiri | Wei Yan |
| [YARN-8053](https://issues.apache.org/jira/browse/YARN-8053) | Add hadoop-distcp in exclusion in hbase-server dependencies for timelineservice-hbase packages. |  Major | . | Rohith Sharma K S | Rohith Sharma K S |
| [HDFS-13307](https://issues.apache.org/jira/browse/HDFS-13307) | RBF: Improve the use of setQuota command |  Major | . | liuhongtong | liuhongtong |
| [HDFS-13250](https://issues.apache.org/jira/browse/HDFS-13250) | RBF: Router to manage requests across multiple subclusters |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-13318](https://issues.apache.org/jira/browse/HDFS-13318) | RBF: Fix FindBugs in hadoop-hdfs-rbf |  Minor | . | Íñigo Goiri | Ekanth S |


