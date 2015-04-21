
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

## Release 2.8.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3241](https://issues.apache.org/jira/browse/YARN-3241) | FairScheduler handles "invalid" queue names inconsistently |  Major | fairscheduler | zhihai xu | zhihai xu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2901](https://issues.apache.org/jira/browse/YARN-2901) | Add errors and warning metrics page to RM, NM web UI |  Major | nodemanager, resourcemanager | Varun Vasudev | Varun Vasudev |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3469](https://issues.apache.org/jira/browse/YARN-3469) | ZKRMStateStore: Avoid setting watches that are not required |  Minor | . | Jun Gong | Jun Gong |
| [YARN-3451](https://issues.apache.org/jira/browse/YARN-3451) | Add start time and Elapsed in ApplicationAttemptReport and display the same in RMAttemptBlock WebUI |  Major | api, webapp | Rohith | Rohith |
| [YARN-3428](https://issues.apache.org/jira/browse/YARN-3428) | Debug log resources to be localized for a container |  Trivial | nodemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-3424](https://issues.apache.org/jira/browse/YARN-3424) | Change logs for ContainerMonitorImpl's resourse monitoring from info to debug |  Major | nodemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3412](https://issues.apache.org/jira/browse/YARN-3412) | RM tests should use MockRM where possible |  Major | resourcemanager, test | Karthik Kambatla | Karthik Kambatla |
| [YARN-3404](https://issues.apache.org/jira/browse/YARN-3404) | View the queue name to YARN Application page |  Minor | . | Ryu Kobayashi | Ryu Kobayashi |
| [YARN-3350](https://issues.apache.org/jira/browse/YARN-3350) | YARN RackResolver spams logs with messages at info level |  Major | . | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-3348](https://issues.apache.org/jira/browse/YARN-3348) | Add a 'yarn top' tool to help understand cluster usage |  Major | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3294](https://issues.apache.org/jira/browse/YARN-3294) | Allow dumping of Capacity Scheduler debug logs via web UI for a fixed time period |  Major | capacityscheduler | Varun Vasudev | Varun Vasudev |
| [YARN-3293](https://issues.apache.org/jira/browse/YARN-3293) | Track and display capacity scheduler health metrics in web UI |  Major | capacityscheduler | Varun Vasudev | Varun Vasudev |
| [YARN-3258](https://issues.apache.org/jira/browse/YARN-3258) | FairScheduler: Need to add more logging to investigate allocations |  Minor | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3248](https://issues.apache.org/jira/browse/YARN-3248) | Display count of nodes blacklisted by apps in the web UI |  Major | capacityscheduler, resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-2868](https://issues.apache.org/jira/browse/YARN-2868) | FairScheduler: Metric for latency to allocate first container for an application |  Major | . | Ray Chiang | Ray Chiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3493](https://issues.apache.org/jira/browse/YARN-3493) | RM fails to come up with error "Failed to load/recover state" when  mem settings are changed |  Critical | yarn | Sumana Sathish | Jian He |
| [YARN-3472](https://issues.apache.org/jira/browse/YARN-3472) | Possible leak in DelegationTokenRenewer#allTokens |  Major | . | Jian He | Rohith |
| [YARN-3465](https://issues.apache.org/jira/browse/YARN-3465) | Use LinkedHashMap to preserve order of resource requests |  Major | nodemanager | zhihai xu | zhihai xu |
| [YARN-3459](https://issues.apache.org/jira/browse/YARN-3459) | Fix failiure of TestLog4jWarningErrorMetricsAppender |  Blocker | . | Li Lu | Varun Vasudev |
| [YARN-3457](https://issues.apache.org/jira/browse/YARN-3457) | NPE when NodeManager.serviceInit fails and stopRecoveryStore called |  Minor | nodemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3436](https://issues.apache.org/jira/browse/YARN-3436) | Fix URIs in documention of YARN web service REST APIs |  Minor | documentation, resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3435](https://issues.apache.org/jira/browse/YARN-3435) | AM container to be allocated Appattempt AM container shown as null |  Trivial | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3429](https://issues.apache.org/jira/browse/YARN-3429) | TestAMRMTokens.testTokenExpiry fails Intermittently with error message:Invalid AMRMToken |  Major | test | zhihai xu | zhihai xu |
| [YARN-3425](https://issues.apache.org/jira/browse/YARN-3425) | NPE from RMNodeLabelsManager.serviceStop when NodeLabelsManager.serviceInit failed |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3415](https://issues.apache.org/jira/browse/YARN-3415) | Non-AM containers can be counted towards amResourceUsage of a Fair Scheduler queue |  Critical | fairscheduler | Rohit Agarwal | zhihai xu |
| [YARN-3400](https://issues.apache.org/jira/browse/YARN-3400) | [JDK 8] Build Failure due to unreported exceptions in RPCUtil |  Major | . | Robert Kanter | Robert Kanter |
| [YARN-3397](https://issues.apache.org/jira/browse/YARN-3397) | yarn rmadmin should skip -failover |  Minor | resourcemanager | J.Andreina | J.Andreina |
| [YARN-3394](https://issues.apache.org/jira/browse/YARN-3394) | WebApplication  proxy documentation is incomplete |  Minor | resourcemanager | Bibin A Chundatt | Naganarasimha G R |
| [YARN-3383](https://issues.apache.org/jira/browse/YARN-3383) | AdminService should use "warn" instead of "info" to log exception when operation fails |  Major | resourcemanager | Wangda Tan | Li Lu |
| [YARN-3382](https://issues.apache.org/jira/browse/YARN-3382) | Some of UserMetricsInfo metrics are incorrectly set to root queue metrics |  Major | webapp | Rohit Agarwal | Rohit Agarwal |
| [YARN-3351](https://issues.apache.org/jira/browse/YARN-3351) | AppMaster tracking URL is broken in HA |  Major | webapp | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3305](https://issues.apache.org/jira/browse/YARN-3305) | AM-Used Resource for leafqueue is wrongly populated if AM ResourceRequest is less than minimumAllocation |  Major | scheduler | Rohith | Rohith |
| [YARN-3269](https://issues.apache.org/jira/browse/YARN-3269) | Yarn.nodemanager.remote-app-log-dir could not be configured to fully qualified path |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-3266](https://issues.apache.org/jira/browse/YARN-3266) | RMContext inactiveNodes should have NodeId as map key |  Major | resourcemanager | Chengbing Liu | Chengbing Liu |
| [YARN-3243](https://issues.apache.org/jira/browse/YARN-3243) | CapacityScheduler should pass headroom from parent to children to make sure ParentQueue obey its capacity limits. |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3205](https://issues.apache.org/jira/browse/YARN-3205) | FileSystemRMStateStore should disable FileSystem Cache to avoid get a Filesystem with an old configuration. |  Major | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3197](https://issues.apache.org/jira/browse/YARN-3197) | Confusing log generated by CapacityScheduler |  Minor | capacityscheduler | Hitesh Shah | Varun Saxena |
| [YARN-3021](https://issues.apache.org/jira/browse/YARN-3021) | YARN's delegation-token handling disallows certain trust setups to operate properly over DistCp |  Major | security | Harsh J | Yongjun Zhang |
| [YARN-2890](https://issues.apache.org/jira/browse/YARN-2890) | MiniYarnCluster should turn on timeline service if configured to do so |  Major | . | Mit Desai | Mit Desai |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3339](https://issues.apache.org/jira/browse/YARN-3339) | TestDockerContainerExecutor should pull a single image and not the entire centos repository |  Minor | test | Ravindra Kumar Naik |  |
| [YARN-2666](https://issues.apache.org/jira/browse/YARN-2666) | TestFairScheduler.testContinuousScheduling fails Intermittently |  Major | scheduler | Tsuyoshi Ozawa | zhihai xu |
| [YARN-1880](https://issues.apache.org/jira/browse/YARN-1880) | Cleanup TestApplicationClientProtocolOnHA |  Trivial | test | Tsuyoshi Ozawa | Tsuyoshi Ozawa |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3463](https://issues.apache.org/jira/browse/YARN-3463) | Integrate OrderingPolicy Framework with CapacityScheduler |  Major | capacityscheduler | Craig Welch | Craig Welch |
| [YARN-3443](https://issues.apache.org/jira/browse/YARN-3443) | Create a 'ResourceHandler' subsystem to ease addition of support for new resource types on the NM |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [YARN-3365](https://issues.apache.org/jira/browse/YARN-3365) | Add support for using the 'tc' tool via container-executor |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [YARN-3361](https://issues.apache.org/jira/browse/YARN-3361) | CapacityScheduler side changes to support non-exclusive node labels |  Major | capacityscheduler | Wangda Tan | Wangda Tan |
| [YARN-3356](https://issues.apache.org/jira/browse/YARN-3356) | Capacity Scheduler FiCaSchedulerApp should use ResourceUsage to track used-resources-by-label. |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3354](https://issues.apache.org/jira/browse/YARN-3354) | Container should contains node-labels asked by original ResourceRequests |  Major | api, capacityscheduler, nodemanager, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3347](https://issues.apache.org/jira/browse/YARN-3347) | Improve YARN log command to get AMContainer logs as well as running containers logs |  Major | log-aggregation | Xuan Gong | Xuan Gong |
| [YARN-3345](https://issues.apache.org/jira/browse/YARN-3345) | Add non-exclusive node label API to RMAdmin protocol and NodeLabelsManager |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3326](https://issues.apache.org/jira/browse/YARN-3326) | Support RESTful API for getLabelsToNodes |  Minor | resourcemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-3318](https://issues.apache.org/jira/browse/YARN-3318) | Create Initial OrderingPolicy Framework and FifoOrderingPolicy |  Major | scheduler | Craig Welch | Craig Welch |
| [YARN-3136](https://issues.apache.org/jira/browse/YARN-3136) | getTransferredContainers can be a bottleneck during AM registration |  Major | scheduler | Jason Lowe | Sunil G |
| [YARN-3110](https://issues.apache.org/jira/browse/YARN-3110) | Few issues in ApplicationHistory web ui |  Minor | applications, timelineserver | Bibin A Chundatt | Naganarasimha G R |
| [YARN-2696](https://issues.apache.org/jira/browse/YARN-2696) | Queue sorting in CapacityScheduler should consider node label |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2495](https://issues.apache.org/jira/browse/YARN-2495) | Allow admin specify labels from each NM (Distributed configuration) |  Major | resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-1402](https://issues.apache.org/jira/browse/YARN-1402) | Related Web UI, CLI changes on exposing client API to check log aggregation status |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1376](https://issues.apache.org/jira/browse/YARN-1376) | NM need to notify the log aggregation status to RM through Node heartbeat |  Major | . | Xuan Gong | Xuan Gong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


