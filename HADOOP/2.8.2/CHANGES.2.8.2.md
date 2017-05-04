
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

## Release 2.8.2 - Unreleased (as of 2017-05-04)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7541](https://issues.apache.org/jira/browse/HDFS-7541) | Upgrade Domains in HDFS |  Major | . | Ming Ma | Ming Ma |
| [HDFS-11634](https://issues.apache.org/jira/browse/HDFS-11634) | Optimize BlockIterator when iterating starts in the middle. |  Major | . | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-11384](https://issues.apache.org/jira/browse/HDFS-11384) | Add option for balancer to disperse getBlocks calls to avoid NameNode's rpc.CallQueueLength spike |  Major | balancer & mover | yunjiong zhao | Konstantin Shvachko |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-524](https://issues.apache.org/jira/browse/YARN-524) | TestYarnVersionInfo failing if generated properties doesn't include an SVN URL |  Minor | api | Steve Loughran | Steve Loughran |
| [YARN-4812](https://issues.apache.org/jira/browse/YARN-4812) | TestFairScheduler#testContinuousScheduling fails intermittently |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-14320](https://issues.apache.org/jira/browse/HADOOP-14320) | TestIPC.testIpcWithReaderQueuing fails intermittently |  Major | . | Eric Badger | Eric Badger |
| [YARN-6536](https://issues.apache.org/jira/browse/YARN-6536) | TestAMRMClient.testAMRMClientWithSaslEncryption fails intermittently |  Major | . | Eric Badger | Jason Lowe |
| [HADOOP-14369](https://issues.apache.org/jira/browse/HADOOP-14369) | NetworkTopology calls expensive toString() when logging |  Major | . | Inigo Goiri | Inigo Goiri |
| [HADOOP-14306](https://issues.apache.org/jira/browse/HADOOP-14306) | TestLocalFileSystem tests have very low timeouts |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-14372](https://issues.apache.org/jira/browse/HADOOP-14372) | TestSymlinkLocalFS timeouts are too low |  Major | . | Eric Badger | Eric Badger |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-5343](https://issues.apache.org/jira/browse/YARN-5343) | TestContinuousScheduling#testSortedNodes fails intermittently |  Minor | . | sandflee | Yufei Gu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14349](https://issues.apache.org/jira/browse/HADOOP-14349) | Rename ADLS CONTRACT\_ENABLE\_KEY |  Minor | fs/adl | Mingliang Liu | Mingliang Liu |
| [HDFS-9005](https://issues.apache.org/jira/browse/HDFS-9005) | Provide configuration support for upgrade domain |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9016](https://issues.apache.org/jira/browse/HDFS-9016) | Display upgrade domain information in fsck |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9922](https://issues.apache.org/jira/browse/HDFS-9922) | Upgrade Domain placement policy status marks a good block in violation when there are decommissioned nodes |  Minor | . | Chris Trezzo | Chris Trezzo |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-11717](https://issues.apache.org/jira/browse/HDFS-11717) | Add unit test for HDFS-11709 StandbyCheckpointer should handle non-existing legacyOivImageDir gracefully |  Minor | ha, namenode | Erik Krogen | Erik Krogen |


