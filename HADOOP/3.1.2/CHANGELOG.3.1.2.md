
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

## Release 3.1.2 - Unreleased (as of 2018-08-15)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13448](https://issues.apache.org/jira/browse/HDFS-13448) | HDFS Block Placement - Ignore Locality for First Block Replica |  Minor | block placement, hdfs-client | BELUGA BEHR | BELUGA BEHR |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15609](https://issues.apache.org/jira/browse/HADOOP-15609) | Retry KMS calls when SSLHandshakeException occurs |  Major | common, kms | Kitti Nanasi | Kitti Nanasi |
| [HADOOP-15612](https://issues.apache.org/jira/browse/HADOOP-15612) | Improve exception when tfile fails to load LzoCodec |  Major | . | Gera Shegalov | Gera Shegalov |
| [HDFS-11060](https://issues.apache.org/jira/browse/HDFS-11060) | make DEFAULT\_MAX\_CORRUPT\_FILEBLOCKS\_RETURNED configurable |  Minor | hdfs | Lantao Jin | Lantao Jin |
| [HDFS-13727](https://issues.apache.org/jira/browse/HDFS-13727) | Log full stack trace if DiskBalancer exits with an unhandled exception |  Minor | diskbalancer | Stephen O'Donnell | Gabor Bota |
| [YARN-8584](https://issues.apache.org/jira/browse/YARN-8584) | Several typos in Log Aggregation related classes |  Minor | . | Szilard Nemeth | Szilard Nemeth |
| [HDFS-13728](https://issues.apache.org/jira/browse/HDFS-13728) | Disk Balancer should not fail if volume usage is greater than capacity |  Minor | diskbalancer | Stephen O'Donnell | Stephen O'Donnell |
| [YARN-8601](https://issues.apache.org/jira/browse/YARN-8601) | Print ExecutionType in Container report CLI |  Minor | . | Bilwa S T | Bilwa S T |
| [YARN-8568](https://issues.apache.org/jira/browse/YARN-8568) | Replace the deprecated zk-address property in the HA config example in ResourceManagerHA.md |  Minor | yarn | Antal Bálint Steinbach | Antal Bálint Steinbach |
| [HDFS-13735](https://issues.apache.org/jira/browse/HDFS-13735) | Make QJM HTTP URL connection timeout configurable |  Minor | qjm | Chao Sun | Chao Sun |
| [HDFS-13814](https://issues.apache.org/jira/browse/HDFS-13814) | Remove super user privilege requirement for NameNode.getServiceStatus |  Minor | namenode | Chao Sun | Chao Sun |
| [YARN-8559](https://issues.apache.org/jira/browse/YARN-8559) | Expose mutable-conf scheduler's configuration in RM /scheduler-conf endpoint |  Major | resourcemanager | Anna Savarin | Weiwei Yang |
| [HDFS-13813](https://issues.apache.org/jira/browse/HDFS-13813) | Exit NameNode if dangling child inode is detected when saving FsImage |  Major | hdfs, namenode | Siyao Meng | Siyao Meng |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-8426](https://issues.apache.org/jira/browse/YARN-8426) | Upgrade jquery-ui to 1.12.1 in YARN |  Major | webapp | Sunil Govindan | Sunil Govindan |
| [HDFS-13721](https://issues.apache.org/jira/browse/HDFS-13721) | NPE in DataNode due to uninitialized DiskBalancer |  Major | datanode, diskbalancer | Xiao Chen | Xiao Chen |
| [YARN-8360](https://issues.apache.org/jira/browse/YARN-8360) | Yarn service conflict between restart policy and NM configuration |  Critical | yarn | Chandni Singh | Suma Shivaprasad |
| [YARN-8380](https://issues.apache.org/jira/browse/YARN-8380) | Support bind propagation options for mounts in docker runtime |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-8544](https://issues.apache.org/jira/browse/YARN-8544) | [DS] AM registration fails when hadoop authorization is enabled |  Blocker | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-8548](https://issues.apache.org/jira/browse/YARN-8548) | AllocationRespose proto setNMToken initBuilder not done |  Major | . | Bibin A Chundatt | Bilwa S T |
| [YARN-7748](https://issues.apache.org/jira/browse/YARN-7748) | TestContainerResizing.testIncreaseContainerUnreservedWhenApplicationCompleted fails due to multiple container fail events |  Major | capacityscheduler | Haibo Chen | Weiwei Yang |
| [YARN-8577](https://issues.apache.org/jira/browse/YARN-8577) | Fix the broken anchor in SLS site-doc |  Minor | documentation | Weiwei Yang | Weiwei Yang |
| [YARN-4606](https://issues.apache.org/jira/browse/YARN-4606) | CapacityScheduler: applications could get starved because computation of #activeUsers considers pending apps |  Critical | capacity scheduler, capacityscheduler | Karam Singh | Manikandan R |
| [YARN-8330](https://issues.apache.org/jira/browse/YARN-8330) | Avoid publishing reserved container to ATS from RM |  Critical | yarn-native-services | Yesha Vora | Suma Shivaprasad |
| [YARN-8429](https://issues.apache.org/jira/browse/YARN-8429) | Improve diagnostic message when artifact is not set properly |  Major | . | Yesha Vora | Gour Saha |
| [YARN-8571](https://issues.apache.org/jira/browse/YARN-8571) | Validate service principal format prior to launching yarn service |  Major | security, yarn | Eric Yang | Eric Yang |
| [HADOOP-15637](https://issues.apache.org/jira/browse/HADOOP-15637) | LocalFs#listLocatedStatus does not filter out hidden .crc files |  Minor | fs | Erik Krogen | Erik Krogen |
| [YARN-8579](https://issues.apache.org/jira/browse/YARN-8579) | New AM attempt could not retrieve previous attempt component data |  Critical | . | Yesha Vora | Gour Saha |
| [YARN-8397](https://issues.apache.org/jira/browse/YARN-8397) | Potential thread leak in ActivitiesManager |  Major | . | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-8595](https://issues.apache.org/jira/browse/YARN-8595) | [UI2] Container diagnostic information is missing from container page |  Major | yarn-ui-v2 | Akhil PB | Akhil PB |
| [YARN-8403](https://issues.apache.org/jira/browse/YARN-8403) | Nodemanager logs failed to download file with INFO level |  Major | yarn | Eric Yang | Eric Yang |
| [YARN-8610](https://issues.apache.org/jira/browse/YARN-8610) | Yarn Service Upgrade: Typo in Error message |  Major | . | Chandni Singh | Chandni Singh |
| [YARN-8593](https://issues.apache.org/jira/browse/YARN-8593) | Add RM web service endpoint to get user information |  Major | resourcemanager | Akhil PB | Akhil PB |
| [YARN-8594](https://issues.apache.org/jira/browse/YARN-8594) | [UI2] Display current logged in user |  Major | . | Akhil PB | Akhil PB |
| [YARN-8592](https://issues.apache.org/jira/browse/YARN-8592) | [UI2] rmip:port/ui2 endpoint shows a blank page in windows OS and Chrome browser |  Major | . | Akhil S Naik | Akhil PB |
| [YARN-8318](https://issues.apache.org/jira/browse/YARN-8318) | [UI2] IP address in component page shows N/A |  Major | yarn-ui-v2 | Yesha Vora | Yesha Vora |
| [YARN-6966](https://issues.apache.org/jira/browse/YARN-6966) | NodeManager metrics may return wrong negative values when NM restart |  Major | . | Yang Wang | Szilard Nemeth |
| [YARN-8620](https://issues.apache.org/jira/browse/YARN-8620) | [UI2] YARN Services UI new submission failures are not debuggable |  Major | yarn-ui-v2 | Akhil PB | Akhil PB |
| [YARN-8615](https://issues.apache.org/jira/browse/YARN-8615) | [UI2] Resource Usage tab shows only memory related info. No info available for vcores/gpu. |  Major | yarn-ui-v2 | Sumana Sathish | Akhil PB |
| [YARN-8629](https://issues.apache.org/jira/browse/YARN-8629) | Container cleanup fails while trying to delete Cgroups |  Critical | . | Yesha Vora | Suma Shivaprasad |
| [YARN-8407](https://issues.apache.org/jira/browse/YARN-8407) | Container launch exception in AM log should be printed in ERROR level |  Major | . | Yesha Vora | Yesha Vora |
| [YARN-8633](https://issues.apache.org/jira/browse/YARN-8633) | Update DataTables version in yarn-common in line with JQuery 3 upgrade |  Major | yarn | Akhil PB | Akhil PB |
| [YARN-8331](https://issues.apache.org/jira/browse/YARN-8331) | Race condition in NM container launched after done |  Major | . | Yang Wang | Pradeep Ambati |
| [YARN-8521](https://issues.apache.org/jira/browse/YARN-8521) | NPE in AllocationTagsManager when a container is removed more than once |  Major | resourcemanager | Weiwei Yang | Weiwei Yang |
| [YARN-8575](https://issues.apache.org/jira/browse/YARN-8575) | Avoid committing allocation proposal to unavailable nodes in async scheduling |  Major | capacityscheduler | Tao Yang | Tao Yang |
| [HADOOP-15638](https://issues.apache.org/jira/browse/HADOOP-15638) | KMS Accept Queue Size default changed from 500 to 128 in Hadoop 3.x |  Major | kms | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-13823](https://issues.apache.org/jira/browse/HDFS-13823) | NameNode UI : "Utilities -\> Browse the file system -\> open a file -\> Head the file" is not working |  Major | ui | Nanda kumar | Nanda kumar |
| [HDFS-13738](https://issues.apache.org/jira/browse/HDFS-13738) | fsck -list-corruptfileblocks has infinite loop if user is not privileged. |  Major | tools | Wei-Chiu Chuang | Yuen-Kuei Hsueh |
| [HDFS-13758](https://issues.apache.org/jira/browse/HDFS-13758) | DatanodeManager should throw exception if it has BlockRecoveryCommand but the block is not under construction |  Major | namenode | Wei-Chiu Chuang | chencan |
| [YARN-8614](https://issues.apache.org/jira/browse/YARN-8614) | Fix few annotation typos in YarnConfiguration |  Trivial | . | Sen Zhao | Sen Zhao |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13743](https://issues.apache.org/jira/browse/HDFS-13743) | RBF: Router throws NullPointerException due to the invalid initialization of MountTableResolver |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-13583](https://issues.apache.org/jira/browse/HDFS-13583) | RBF: Router admin clrQuota is not synchronized with nameservice |  Major | . | Dibyendu Karmakar | Dibyendu Karmakar |
| [YARN-8263](https://issues.apache.org/jira/browse/YARN-8263) | DockerClient still touches hadoop.tmp.dir |  Minor | . | Jason Lowe | Craig Condit |
| [YARN-8287](https://issues.apache.org/jira/browse/YARN-8287) | Update documentation and yarn-default related to the Docker runtime |  Minor | . | Shane Kumpf | Craig Condit |
| [YARN-8624](https://issues.apache.org/jira/browse/YARN-8624) | Cleanup ENTRYPOINT documentation |  Minor | . | Craig Condit | Craig Condit |
| [YARN-8136](https://issues.apache.org/jira/browse/YARN-8136) | Add version attribute to site doc examples and quickstart |  Major | site | Gour Saha | Eric Yang |
| [YARN-8588](https://issues.apache.org/jira/browse/YARN-8588) | Logging improvements for better debuggability |  Major | . | Suma Shivaprasad | Suma Shivaprasad |
| [YARN-8520](https://issues.apache.org/jira/browse/YARN-8520) | Document best practice for user management |  Major | documentation, yarn | Eric Yang | Eric Yang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-8545](https://issues.apache.org/jira/browse/YARN-8545) | YARN native service should return container if launch failed |  Critical | . | Wangda Tan | Chandni Singh |
| [HDFS-13788](https://issues.apache.org/jira/browse/HDFS-13788) | Update EC documentation about rack fault tolerance |  Major | documentation, erasure-coding | Xiao Chen | Kitti Nanasi |


