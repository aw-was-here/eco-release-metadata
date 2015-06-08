
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
| [YARN-3539](https://issues.apache.org/jira/browse/YARN-3539) | Compatibility doc to state that ATS v1 is a stable REST API |  Major | documentation | Steve Loughran | Steve Loughran |
| [YARN-3469](https://issues.apache.org/jira/browse/YARN-3469) | ZKRMStateStore: Avoid setting watches that are not required |  Minor | . | Jun Gong | Jun Gong |
| [YARN-3193](https://issues.apache.org/jira/browse/YARN-3193) | When visit standby RM webui, it will redirect to the active RM webui slowly. |  Minor | webapp | Japs\_123 | Steve Loughran |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3764](https://issues.apache.org/jira/browse/YARN-3764) | CapacityScheduler should forbid moving LeafQueue from one parent to another |  Blocker | . | Wangda Tan | Wangda Tan |
| [YARN-3753](https://issues.apache.org/jira/browse/YARN-3753) | RM failed to come up with "java.io.IOException: Wait for ZKClient creation timed out" |  Critical | yarn | Sumana Sathish | Jian He |
| [YARN-3733](https://issues.apache.org/jira/browse/YARN-3733) | Fix DominantRC#compare() does not work as expected if cluster resource is empty |  Blocker | resourcemanager | Bibin A Chundatt | Rohith |
| [YARN-3725](https://issues.apache.org/jira/browse/YARN-3725) | App submission via REST API is broken in secure mode due to Timeline DT service address is empty |  Blocker | resourcemanager, timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3723](https://issues.apache.org/jira/browse/YARN-3723) | Need to clearly document primaryFilter and otherInfo value type |  Critical | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3701](https://issues.apache.org/jira/browse/YARN-3701) | Isolating the error of generating a single app report when getting all apps from generic history service |  Blocker | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3694](https://issues.apache.org/jira/browse/YARN-3694) | Fix dead link for TimelineServer REST API |  Minor | documentation | Akira AJISAKA | Jagadesh Kiran N |
| [YARN-3681](https://issues.apache.org/jira/browse/YARN-3681) | yarn cmd says "could not find main class 'queue'" in windows |  Blocker | yarn | Sumana Sathish | Varun Saxena |
| [YARN-3677](https://issues.apache.org/jira/browse/YARN-3677) | Fix findbugs warnings in yarn-server-resourcemanager |  Minor | resourcemanager | Akira AJISAKA | Vinod Kumar Vavilapalli |
| [YARN-3675](https://issues.apache.org/jira/browse/YARN-3675) | FairScheduler: RM quits when node removal races with continousscheduling on the same node |  Critical | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3646](https://issues.apache.org/jira/browse/YARN-3646) | Applications are getting stuck some times in case of retry policy forever |  Major | client | Raju Bairishetti | Raju Bairishetti |
| [YARN-3626](https://issues.apache.org/jira/browse/YARN-3626) | On Windows localized resources are not moved to the front of the classpath when they should be |  Major | yarn | Craig Welch | Craig Welch |
| [YARN-3614](https://issues.apache.org/jira/browse/YARN-3614) | FileSystemRMStateStore throw exception when failed to remove application, that cause resourcemanager to crash |  Critical | resourcemanager | lachisis |  |
| [YARN-3601](https://issues.apache.org/jira/browse/YARN-3601) | Fix UT TestRMFailover.testRMWebAppRedirect |  Critical | resourcemanager, webapp | Weiwei Yang | Weiwei Yang |
| [YARN-3585](https://issues.apache.org/jira/browse/YARN-3585) | NodeManager cannot exit on SHUTDOWN event triggered and NM recovery is enabled |  Critical | . | Peng Zhang | Rohith |
| [YARN-3554](https://issues.apache.org/jira/browse/YARN-3554) | Default value for maximum nodemanager connect wait time is too high |  Major | . | Jason Lowe | Naganarasimha G R |
| [YARN-3537](https://issues.apache.org/jira/browse/YARN-3537) | NPE when NodeManager.serviceInit fails and stopRecoveryStore invoked |  Major | nodemanager | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-3526](https://issues.apache.org/jira/browse/YARN-3526) | ApplicationMaster tracking URL is incorrectly redirected on a QJM cluster |  Major | resourcemanager, webapp | Weiwei Yang | Weiwei Yang |
| [YARN-3522](https://issues.apache.org/jira/browse/YARN-3522) | DistributedShell uses the wrong user to put timeline data |  Blocker | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3516](https://issues.apache.org/jira/browse/YARN-3516) | killing ContainerLocalizer action doesn't take effect when private localizer receives FETCH\_FAILURE status. |  Minor | nodemanager | zhihai xu | zhihai xu |
| [YARN-3497](https://issues.apache.org/jira/browse/YARN-3497) | ContainerManagementProtocolProxy modifies IPC timeout conf without making a copy |  Major | client | Jason Lowe | Jason Lowe |
| [YARN-3493](https://issues.apache.org/jira/browse/YARN-3493) | RM fails to come up with error "Failed to load/recover state" when  mem settings are changed |  Critical | yarn | Sumana Sathish | Jian He |
| [YARN-3485](https://issues.apache.org/jira/browse/YARN-3485) | FairScheduler headroom calculation doesn't consider maxResources for Fifo and FairShare policies |  Critical | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-3476](https://issues.apache.org/jira/browse/YARN-3476) | Nodemanager can fail to delete local logs if log aggregation fails |  Major | log-aggregation, nodemanager | Jason Lowe | Rohith |
| [YARN-3472](https://issues.apache.org/jira/browse/YARN-3472) | Possible leak in DelegationTokenRenewer#allTokens |  Major | . | Jian He | Rohith |
| [YARN-3466](https://issues.apache.org/jira/browse/YARN-3466) | Fix RM nodes web page to sort by node HTTP-address, #containers and node-label column |  Major | resourcemanager, webapp | Jason Lowe | Jason Lowe |
| [YARN-3465](https://issues.apache.org/jira/browse/YARN-3465) | Use LinkedHashMap to preserve order of resource requests |  Major | nodemanager | zhihai xu | zhihai xu |
| [YARN-3464](https://issues.apache.org/jira/browse/YARN-3464) | Race condition in LocalizerRunner kills localizer before localizing all resources |  Critical | nodemanager | zhihai xu | zhihai xu |
| [YARN-3462](https://issues.apache.org/jira/browse/YARN-3462) | Patches applied for YARN-2424 are inconsistent between trunk and branch-2 |  Major | . | Sidharta Seethana | Naganarasimha G R |
| [YARN-3457](https://issues.apache.org/jira/browse/YARN-3457) | NPE when NodeManager.serviceInit fails and stopRecoveryStore called |  Minor | nodemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3434](https://issues.apache.org/jira/browse/YARN-3434) | Interaction between reservations and userlimit can result in significant ULF violation |  Major | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-3385](https://issues.apache.org/jira/browse/YARN-3385) | Race condition: KeeperException$NoNodeException will cause RM shutdown during ZK node deletion. |  Critical | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3382](https://issues.apache.org/jira/browse/YARN-3382) | Some of UserMetricsInfo metrics are incorrectly set to root queue metrics |  Major | webapp | Rohit Agarwal | Rohit Agarwal |
| [YARN-3358](https://issues.apache.org/jira/browse/YARN-3358) | Audit log not present while refreshing Service ACLs |  Minor | resourcemanager | Varun Saxena | Varun Saxena |
| [YARN-3351](https://issues.apache.org/jira/browse/YARN-3351) | AppMaster tracking URL is broken in HA |  Major | webapp | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3243](https://issues.apache.org/jira/browse/YARN-3243) | CapacityScheduler should pass headroom from parent to children to make sure ParentQueue obey its capacity limits. |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2238](https://issues.apache.org/jira/browse/YARN-2238) | filtering on UI sticks even if I move away from the page |  Major | webapp | Sangjin Lee | Jian He |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3686](https://issues.apache.org/jira/browse/YARN-3686) | CapacityScheduler should trim default\_node\_label\_expression |  Critical | api, client, resourcemanager | Wangda Tan | Sunil G |
| [YARN-3609](https://issues.apache.org/jira/browse/YARN-3609) | Move load labels from storage from serviceInit to serviceStart to make it works with RM HA case. |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3544](https://issues.apache.org/jira/browse/YARN-3544) | AM logs link missing in the RM UI for a completed app |  Blocker | . | Hitesh Shah | Xuan Gong |
| [YARN-3487](https://issues.apache.org/jira/browse/YARN-3487) | CapacityScheduler scheduler lock obtained unnecessarily when calling getQueue |  Critical | capacityscheduler | Jason Lowe | Jason Lowe |
| [YARN-3006](https://issues.apache.org/jira/browse/YARN-3006) | Improve the error message when attempting manual failover with auto-failover enabled |  Minor | . | Akira AJISAKA | Akira AJISAKA |
| [YARN-2918](https://issues.apache.org/jira/browse/YARN-2918) | Don't fail RM if queue's configured labels are not existed in cluster-node-labels |  Major | resourcemanager | Rohith | Wangda Tan |
| [YARN-2900](https://issues.apache.org/jira/browse/YARN-2900) | Application (Attempt and Container) Not Found in AHS results in Internal Server Error (500) |  Major | timelineserver | Jonathan Eagles | Mit Desai |
| [YARN-2605](https://issues.apache.org/jira/browse/YARN-2605) | [RM HA] Rest api endpoints doing redirect incorrectly |  Major | resourcemanager | bc Wong | Xuan Gong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


