
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

## Release 3.1.2 - Unreleased (as of 2018-07-29)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13727](https://issues.apache.org/jira/browse/HDFS-13727) | Log full stack trace if DiskBalancer exits with an unhandled exception |  Minor | diskbalancer | Stephen O'Donnell | Gabor Bota |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-8360](https://issues.apache.org/jira/browse/YARN-8360) | Yarn service conflict between restart policy and NM configuration |  Critical | yarn | Chandni Singh | Suma Shivaprasad |
| [YARN-8380](https://issues.apache.org/jira/browse/YARN-8380) | Support bind propagation options for mounts in docker runtime |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-8544](https://issues.apache.org/jira/browse/YARN-8544) | [DS] AM registration fails when hadoop authorization is enabled |  Blocker | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-8548](https://issues.apache.org/jira/browse/YARN-8548) | AllocationRespose proto setNMToken initBuilder not done |  Major | . | Bibin A Chundatt | Bilwa S T |
| [YARN-7748](https://issues.apache.org/jira/browse/YARN-7748) | TestContainerResizing.testIncreaseContainerUnreservedWhenApplicationCompleted fails due to multiple container fail events |  Major | capacityscheduler | Haibo Chen | Weiwei Yang |
| [YARN-8577](https://issues.apache.org/jira/browse/YARN-8577) | Fix the broken anchor in SLS site-doc |  Minor | documentation | Weiwei Yang | Weiwei Yang |
| [YARN-4606](https://issues.apache.org/jira/browse/YARN-4606) | CapacityScheduler: applications could get starved because computation of #activeUsers considers pending apps |  Critical | capacity scheduler, capacityscheduler | Karam Singh | Manikandan R |
| [YARN-8330](https://issues.apache.org/jira/browse/YARN-8330) | An extra container got launched by RM for yarn-service |  Critical | yarn-native-services | Yesha Vora | Suma Shivaprasad |
| [YARN-8429](https://issues.apache.org/jira/browse/YARN-8429) | Improve diagnostic message when artifact is not set properly |  Major | . | Yesha Vora | Gour Saha |
| [YARN-8571](https://issues.apache.org/jira/browse/YARN-8571) | Validate service principal format prior to launching yarn service |  Major | security, yarn | Eric Yang | Eric Yang |
| [YARN-8508](https://issues.apache.org/jira/browse/YARN-8508) | GPU  does not get released even though the container is killed |  Major | . | Sumana Sathish | Chandni Singh |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13743](https://issues.apache.org/jira/browse/HDFS-13743) | RBF: Router throws NullPointerException due to the invalid initialization of MountTableResolver |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-13583](https://issues.apache.org/jira/browse/HDFS-13583) | RBF: Router admin clrQuota is not synchronized with nameservice |  Major | . | Dibyendu Karmakar | Dibyendu Karmakar |
| [YARN-8546](https://issues.apache.org/jira/browse/YARN-8546) | Resource leak caused by a reserved container being released more than once under async scheduling |  Major | capacity scheduler | Weiwei Yang | Tao Yang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-8545](https://issues.apache.org/jira/browse/YARN-8545) | YARN native service should return container if launch failed |  Critical | . | Wangda Tan | Chandni Singh |


