
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
# Hadoop Changelog

## Release 2.7.1 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8361](https://issues.apache.org/jira/browse/HDFS-8361) | Choose SSD over DISK in block placement |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8204](https://issues.apache.org/jira/browse/HDFS-8204) | Mover/Balancer should not schedule two replicas to the same DN |  Minor | balancer & mover | Walter Su | Walter Su |
| [HDFS-7770](https://issues.apache.org/jira/browse/HDFS-7770) | Need document for storage type label of data node storage locations under dfs.datanode.data.dir |  Major | documentation | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7546](https://issues.apache.org/jira/browse/HDFS-7546) | Document, and set an accepting default for dfs.namenode.kerberos.principal.pattern |  Minor | security | Harsh J | Harsh J |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8681](https://issues.apache.org/jira/browse/HDFS-8681) | BlockScanner is incorrectly disabled by default |  Blocker | datanode | Andrew Wang | Arpit Agarwal |
| [HDFS-8633](https://issues.apache.org/jira/browse/HDFS-8633) | Fix setting of dfs.datanode.readahead.bytes in hdfs-default.xml to match DFSConfigKeys |  Minor | HDFS | Ray Chiang | Ray Chiang |
| [HDFS-8600](https://issues.apache.org/jira/browse/HDFS-8600) | TestWebHdfsFileSystemContract.testGetFileBlockLocations fails in branch-2.7 |  Major | webhdfs | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8596](https://issues.apache.org/jira/browse/HDFS-8596) | TestDistributedFileSystem et al tests are broken in branch-2 due to incorrect setting of "datanode" attribute |  Blocker | HDFS | Yongjun Zhang | Yongjun Zhang |
| [HDFS-8595](https://issues.apache.org/jira/browse/HDFS-8595) | TestCommitBlockSynchronization fails in branch-2.7 |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8583](https://issues.apache.org/jira/browse/HDFS-8583) | Document that NFS gateway does not work with rpcbind on SLES 11 |  Major | documentation | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8576](https://issues.apache.org/jira/browse/HDFS-8576) |  Lease recovery should return true if the lease can be released and the file can be closed |  Major | namenode | J.Andreina | J.Andreina |
| [HDFS-8566](https://issues.apache.org/jira/browse/HDFS-8566) | HDFS documentation about debug commands wrongly identifies them as "hdfs dfs" commands |  Major | documentation | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8544](https://issues.apache.org/jira/browse/HDFS-8544) | Incorrect port specified in HFTP Guide document in branch-2 |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8523](https://issues.apache.org/jira/browse/HDFS-8523) | Remove usage information on unsupported operation "fsck -showprogress" from branch-2 |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8522](https://issues.apache.org/jira/browse/HDFS-8522) | Change heavily recorded NN logs from INFO to DEBUG level |  Major | namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-8486](https://issues.apache.org/jira/browse/HDFS-8486) | DN startup may cause severe data loss |  Blocker | datanode | Daryn Sharp | Daryn Sharp |
| [HDFS-8451](https://issues.apache.org/jira/browse/HDFS-8451) | DFSClient probe for encryption testing interprets empty URI property for "enabled" |  Blocker | encryption | Steve Loughran | Steve Loughran |
| [HDFS-8405](https://issues.apache.org/jira/browse/HDFS-8405) | Fix a typo in NamenodeFsck |  Minor | namenode | Tsz Wo Nicholas Sze | Takanobu Asanuma |
| [HDFS-8404](https://issues.apache.org/jira/browse/HDFS-8404) | Pending block replication can get stuck using older genstamp |  Major | namenode | Nathan Roberts | Nathan Roberts |
| [HDFS-8273](https://issues.apache.org/jira/browse/HDFS-8273) | FSNamesystem#Delete() should not call logSync() when holding the lock |  Blocker | namenode | Jing Zhao | Haohui Mai |
| [HDFS-8270](https://issues.apache.org/jira/browse/HDFS-8270) | create() always retried with hardcoded timeout when file already exists with open lease |  Major | hdfs-client | Andrey Stepachev | J.Andreina |
| [HDFS-8163](https://issues.apache.org/jira/browse/HDFS-8163) | Using monotonicNow for block report scheduling causes test failures on recently restarted systems |  Blocker | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8153](https://issues.apache.org/jira/browse/HDFS-8153) | Error Message points to wrong parent directory in case of path component name length error |  Major | namenode | Anu Engineer | Anu Engineer |
| [HDFS-8151](https://issues.apache.org/jira/browse/HDFS-8151) | Always use snapshot path as source when invalid snapshot names are used for diff based distcp |  Minor | distcp | Sushmitha Sreenivasan | Jing Zhao |
| [HDFS-8147](https://issues.apache.org/jira/browse/HDFS-8147) | Mover should not schedule two replicas to the same DN storage |  Major | balancer & mover | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8127](https://issues.apache.org/jira/browse/HDFS-8127) | NameNode Failover during HA upgrade can cause DataNode to finalize upgrade |  Blocker | ha | Jing Zhao | Jing Zhao |
| [HDFS-8091](https://issues.apache.org/jira/browse/HDFS-8091) | ACLStatus and XAttributes not properly presented to INodeAttributesProvider before returning to client |  Major | HDFS | Arun Suresh | Arun Suresh |
| [HDFS-8070](https://issues.apache.org/jira/browse/HDFS-8070) | Pre-HDFS-7915 DFSClient cannot use short circuit on post-HDFS-7915 DataNode |  Blocker | caching | Gopal V | Colin Patrick McCabe |
| [HDFS-7934](https://issues.apache.org/jira/browse/HDFS-7934) | Update RollingUpgrade rollback documentation: should use bootstrapstandby for standby NN |  Critical | documentation | J.Andreina | J.Andreina |
| [HDFS-7931](https://issues.apache.org/jira/browse/HDFS-7931) | DistributedFIleSystem should not look for keyProvider in cache if Encryption is disabled |  Minor | hdfs-client | Arun Suresh | Arun Suresh |
| [HDFS-7916](https://issues.apache.org/jira/browse/HDFS-7916) | 'reportBadBlocks' from datanodes to standby Node BPServiceActor goes for infinite loop |  Critical | datanode | Vinayakumar B | Rushabh S Shah |
| [HDFS-6300](https://issues.apache.org/jira/browse/HDFS-6300) | Prevent multiple balancers from running simultaneously |  Critical | balancer & mover | Rakesh R | Rakesh R |
| [HDFS-5215](https://issues.apache.org/jira/browse/HDFS-5215) | dfs.datanode.du.reserved is not considered while computing available space |  Major | datanode | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-4660](https://issues.apache.org/jira/browse/HDFS-4660) | Block corruption can happen during pipeline recovery |  Blocker | datanode | Peng Zhang | Kihwal Lee |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8597](https://issues.apache.org/jira/browse/HDFS-8597) | Fix TestFSImage#testZeroBlockSize on Windows |  Major | datanode, test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7164](https://issues.apache.org/jira/browse/HDFS-7164) | Feature documentation for HDFS-6581 |  Major | documentation | Arpit Agarwal | Arpit Agarwal |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


