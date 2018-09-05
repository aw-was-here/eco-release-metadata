
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
# Apache HBase Changelog

## Release 0.98.20 - 2016-06-13



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15847](https://issues.apache.org/jira/browse/HBASE-15847) | VerifyReplication prefix filtering |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-15881](https://issues.apache.org/jira/browse/HBASE-15881) | Allow BZIP2 compression |  Major | HFile | Lars Hofhansl | Lars Hofhansl |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15686](https://issues.apache.org/jira/browse/HBASE-15686) | Add override mechanism for the exempt classes when dynamically loading table coprocessor |  Major | Coprocessors | Sangjin Lee | Ted Yu |
| [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | Print row locks at the debug dump page |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15808](https://issues.apache.org/jira/browse/HBASE-15808) | Reduce potential bulk load intermediate space usage and waste |  Minor | . | Jerry He | Jerry He |
| [HBASE-13532](https://issues.apache.org/jira/browse/HBASE-13532) | Make UnknownScannerException logging less scary |  Trivial | . | Appy | Appy |
| [HBASE-15837](https://issues.apache.org/jira/browse/HBASE-15837) | Memstore size accounting is wrong if postBatchMutate() throws exception |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-15854](https://issues.apache.org/jira/browse/HBASE-15854) | Log the cause of SASL connection failures |  Minor | security | Robert Yokota |  |
| [HBASE-15890](https://issues.apache.org/jira/browse/HBASE-15890) | Allow thrift to set/unset "cacheBlocks" for Scans |  Major | Thrift | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15727](https://issues.apache.org/jira/browse/HBASE-15727) | Canary Tool for Zookeeper |  Major | . | churro morales | churro morales |
| [HBASE-15931](https://issues.apache.org/jira/browse/HBASE-15931) | Add log for long-running tasks in AsyncProcess |  Critical | Operability | Yu Li | Yu Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15710](https://issues.apache.org/jira/browse/HBASE-15710) | Include issue servers information in RetriesExhaustedWithDetailsException message |  Minor | . | Yu Li | Yu Li |
| [HBASE-15634](https://issues.apache.org/jira/browse/HBASE-15634) | TestDateTieredCompactionPolicy#negativeForMajor is flaky |  Major | test | Ted Yu | Duo Zhang |
| [HBASE-15707](https://issues.apache.org/jira/browse/HBASE-15707) | ImportTSV bulk output does not support tags with hfile.format.version=3 |  Major | mapreduce | huaxiang sun | huaxiang sun |
| [HBASE-15676](https://issues.apache.org/jira/browse/HBASE-15676) | FuzzyRowFilter fails and matches all the rows in the table if the mask consists of all 0s |  Major | Filters | Rohit Sinha | Matt Warhaftig |
| [HBASE-15752](https://issues.apache.org/jira/browse/HBASE-15752) | ClassNotFoundException is encountered when custom WAL codec is not found in WALPlayer job |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15755](https://issues.apache.org/jira/browse/HBASE-15755) | SnapshotDescriptionUtils and SnapshotTestingUtils do not have any Interface audience marked |  Major | . | ramkrishna.s.vasudevan | Matteo Bertozzi |
| [HBASE-15292](https://issues.apache.org/jira/browse/HBASE-15292) | Refined ZooKeeperWatcher to prevent ZooKeeper's callback while construction |  Minor | Zookeeper | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-15738](https://issues.apache.org/jira/browse/HBASE-15738) | Ensure artifacts in project dist area include required md5 file |  Blocker | build, community | Sean Busbey | Nick Dimiduk |
| [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | Upgrade checkstyle for all branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-15742](https://issues.apache.org/jira/browse/HBASE-15742) | Reduce allocation of objects in metrics |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15615](https://issues.apache.org/jira/browse/HBASE-15615) | Wrong sleep time when RegionServerCallable need retry |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15815](https://issues.apache.org/jira/browse/HBASE-15815) | Region mover script sometimes reports stuck region where only one server was involved |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15846](https://issues.apache.org/jira/browse/HBASE-15846) | Minor fix in javadoc clearing misstatement that deletes go into the Table write buffer |  Major | . | stack | stack |
| [HBASE-15769](https://issues.apache.org/jira/browse/HBASE-15769) | Perform validation on cluster key for add\_peer |  Minor | . | Ted Yu | Matt Warhaftig |
| [HBASE-15841](https://issues.apache.org/jira/browse/HBASE-15841) | Performance Evaluation tool total rows may not be set correctly |  Minor | . | Jerry He | Jerry He |
| [HBASE-15617](https://issues.apache.org/jira/browse/HBASE-15617) | Canary in regionserver mode might not enumerate all regionservers |  Minor | . | Andrew Purtell | Sanjeev Lakshmanan |
| [HBASE-15805](https://issues.apache.org/jira/browse/HBASE-15805) | Canary test timeout if there is failed or shutdown zookeeper node in a quorum |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-15465](https://issues.apache.org/jira/browse/HBASE-15465) | userPermission returned by getUserPermission() for the selected namespace does not have namespace set |  Minor | Protobufs | Xiang Li | Xiang Li |
| [HBASE-15856](https://issues.apache.org/jira/browse/HBASE-15856) | Cached Connection instances can wind up with addresses never resolved |  Critical | Client | Gary Helmling | Gary Helmling |
| [HBASE-14818](https://issues.apache.org/jira/browse/HBASE-14818) | user\_permission does not list namespace permissions |  Minor | hbase | Steven Hancz | Xiang Li |
| [HBASE-15873](https://issues.apache.org/jira/browse/HBASE-15873) | ACL for snapshot restore / clone is not enforced |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-15693](https://issues.apache.org/jira/browse/HBASE-15693) | Reconsider the ImportOrder rule of checkstyle |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-15889](https://issues.apache.org/jira/browse/HBASE-15889) | String case conversions are locale-sensitive, used without locale |  Minor | localization | Sean Mackrory | Sean Mackrory |
| [HBASE-15954](https://issues.apache.org/jira/browse/HBASE-15954) | REST server should log requests with TRACE instead of DEBUG |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15698](https://issues.apache.org/jira/browse/HBASE-15698) | Increment TimeRange not serialized to server |  Blocker | . | James Taylor | Ted Yu |
| [HBASE-15803](https://issues.apache.org/jira/browse/HBASE-15803) | ZooKeeperWatcher's constructor can leak a ZooKeeper instance with throwing ZooKeeperConnectionException when canCreateBaseZNode is true |  Minor | . | Hiroshi Ikeda | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15740](https://issues.apache.org/jira/browse/HBASE-15740) | Replication source.shippedKBs metric is undercounting because it is in KB |  Major | . | Enis Soztutar | Enis Soztutar |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4368](https://issues.apache.org/jira/browse/HBASE-4368) | Expose processlist in shell (per regionserver and perhaps by cluster) |  Major | shell | stack | Talat UYARER |
| [HBASE-15895](https://issues.apache.org/jira/browse/HBASE-15895) | remove unmaintained jenkins build analysis tool. |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-15987](https://issues.apache.org/jira/browse/HBASE-15987) | [0.98] Downgrade maven-site-plugin to 2.4 |  Blocker | . | Andrew Purtell | Andrew Purtell |


