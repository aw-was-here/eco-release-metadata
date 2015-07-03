
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
| [YARN-2336](https://issues.apache.org/jira/browse/YARN-2336) | Fair scheduler REST api returns a missing '[' bracket JSON for deep queue tree |  Major | fairscheduler | Kenji Kikushima | Akira AJISAKA |
| [YARN-41](https://issues.apache.org/jira/browse/YARN-41) | The RM should handle the graceful shutdown of the NM. |  Major | nodemanager, resourcemanager | Ravi Teja Ch N V | Devaraj K |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2901](https://issues.apache.org/jira/browse/YARN-2901) | Add errors and warning metrics page to RM, NM web UI |  Major | nodemanager, resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-41](https://issues.apache.org/jira/browse/YARN-41) | The RM should handle the graceful shutdown of the NM. |  Major | nodemanager, resourcemanager | Ravi Teja Ch N V | Devaraj K |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3834](https://issues.apache.org/jira/browse/YARN-3834) | Scrub debug logging of tokens during resource localization. |  Major | nodemanager | Chris Nauroth | Chris Nauroth |
| [YARN-3789](https://issues.apache.org/jira/browse/YARN-3789) | Improve logs for LeafQueue#activateApplications() |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3786](https://issues.apache.org/jira/browse/YARN-3786) | Document yarn class path options |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-3722](https://issues.apache.org/jira/browse/YARN-3722) | Merge multiple TestWebAppUtils into o.a.h.yarn.webapp.util.TestWebAppUtils |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-3713](https://issues.apache.org/jira/browse/YARN-3713) | Remove duplicate function call storeContainerDiagnostics in ContainerDiagnosticsUpdateTransition |  Minor | nodemanager | zhihai xu | zhihai xu |
| [YARN-3613](https://issues.apache.org/jira/browse/YARN-3613) | TestContainerManagerSecurity should init and start Yarn cluster in setup instead of individual methods |  Minor | test | Karthik Kambatla | nijel |
| [YARN-3547](https://issues.apache.org/jira/browse/YARN-3547) | FairScheduler: Apps that have no resource demand should not participate scheduling |  Major | fairscheduler | Xianyin Xin | Xianyin Xin |
| [YARN-3513](https://issues.apache.org/jira/browse/YARN-3513) | Remove unused variables in ContainersMonitorImpl and add debug log for overall resource usage by all containers |  Trivial | nodemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-3511](https://issues.apache.org/jira/browse/YARN-3511) | Add errors and warnings page to ATS |  Major | timelineserver | Varun Vasudev | Varun Vasudev |
| [YARN-3503](https://issues.apache.org/jira/browse/YARN-3503) | Expose disk utilization percentage and bad local and log dir counts on NM via JMX |  Major | nodemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3491](https://issues.apache.org/jira/browse/YARN-3491) | PublicLocalizer#addResource is too slow. |  Critical | nodemanager | zhihai xu | zhihai xu |
| [YARN-3467](https://issues.apache.org/jira/browse/YARN-3467) | Expose allocatedMB, allocatedVCores, and runningContainers metrics on running Applications in RM Web UI |  Minor | webapp, yarn | Anthony Rojas | Anubhav Dhoot |
| [YARN-3451](https://issues.apache.org/jira/browse/YARN-3451) | Add start time and Elapsed in ApplicationAttemptReport and display the same in RMAttemptBlock WebUI |  Major | api, webapp | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-3428](https://issues.apache.org/jira/browse/YARN-3428) | Debug log resources to be localized for a container |  Trivial | nodemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-3424](https://issues.apache.org/jira/browse/YARN-3424) | Change logs for ContainerMonitorImpl's resourse monitoring from info to debug |  Major | nodemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3412](https://issues.apache.org/jira/browse/YARN-3412) | RM tests should use MockRM where possible |  Major | resourcemanager, test | Karthik Kambatla | Karthik Kambatla |
| [YARN-3410](https://issues.apache.org/jira/browse/YARN-3410) | YARN admin should be able to remove individual application records from RMStateStore |  Critical | resourcemanager, yarn | Wangda Tan | Rohith Sharma K S |
| [YARN-3363](https://issues.apache.org/jira/browse/YARN-3363) | add localization and container launch time to ContainerMetrics at NM to show these timing information for each active container. |  Major | nodemanager | zhihai xu | zhihai xu |
| [YARN-3360](https://issues.apache.org/jira/browse/YARN-3360) | Add JMX metrics to TimelineDataManager |  Major | timelineserver | Jason Lowe | Jason Lowe |
| [YARN-3348](https://issues.apache.org/jira/browse/YARN-3348) | Add a 'yarn top' tool to help understand cluster usage |  Major | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3294](https://issues.apache.org/jira/browse/YARN-3294) | Allow dumping of Capacity Scheduler debug logs via web UI for a fixed time period |  Major | capacityscheduler | Varun Vasudev | Varun Vasudev |
| [YARN-3293](https://issues.apache.org/jira/browse/YARN-3293) | Track and display capacity scheduler health metrics in web UI |  Major | capacityscheduler | Varun Vasudev | Varun Vasudev |
| [YARN-3259](https://issues.apache.org/jira/browse/YARN-3259) | FairScheduler: Trigger fairShare updates on node events |  Major | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3258](https://issues.apache.org/jira/browse/YARN-3258) | FairScheduler: Need to add more logging to investigate allocations |  Minor | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3248](https://issues.apache.org/jira/browse/YARN-3248) | Display count of nodes blacklisted by apps in the web UI |  Major | capacityscheduler, resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3169](https://issues.apache.org/jira/browse/YARN-3169) | Drop YARN's overview document |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [YARN-2784](https://issues.apache.org/jira/browse/YARN-2784) | Make POM project names consistent |  Minor | build | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-2206](https://issues.apache.org/jira/browse/YARN-2206) | Update document for applications REST API response examples |  Minor | documentation | Kenji Kikushima | Brahma Reddy Battula |
| [YARN-1050](https://issues.apache.org/jira/browse/YARN-1050) | Document the Fair Scheduler REST API |  Major | documentation, fairscheduler | Sandy Ryza | Kenji Kikushima |
| [YARN-160](https://issues.apache.org/jira/browse/YARN-160) | nodemanagers should obtain cpu/memory values from underlying OS |  Major | nodemanager | Alejandro Abdelnur | Varun Vasudev |
| [YARN-20](https://issues.apache.org/jira/browse/YARN-20) | More information for "yarn.resourcemanager.webapp.address" in yarn-default.xml |  Trivial | documentation, resourcemanager | Nemon Lou | Bartosz Ługowski |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3860](https://issues.apache.org/jira/browse/YARN-3860) | rmadmin -transitionToActive should check the state of non-target node |  Major | resourcemanager | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-3859](https://issues.apache.org/jira/browse/YARN-3859) | LeafQueue doesn't print user properly for application add |  Minor | capacityscheduler | Devaraj K | Varun Saxena |
| [YARN-3835](https://issues.apache.org/jira/browse/YARN-3835) | hadoop-yarn-server-resourcemanager test package bundles core-site.xml, yarn-site.xml |  Minor | resourcemanager | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [YARN-3830](https://issues.apache.org/jira/browse/YARN-3830) | AbstractYarnScheduler.createReleaseCache may try to clean a null attempt |  Major | scheduler | nijel | nijel |
| [YARN-3826](https://issues.apache.org/jira/browse/YARN-3826) | Race condition in ResourceTrackerService leads to wrong diagnostics messages |  Major | resourcemanager | Chengbing Liu | Chengbing Liu |
| [YARN-3824](https://issues.apache.org/jira/browse/YARN-3824) | Fix two minor nits in member variable properties of YarnConfiguration |  Trivial | yarn | Ray Chiang | Ray Chiang |
| [YARN-3802](https://issues.apache.org/jira/browse/YARN-3802) | Two RMNodes for the same NodeId are used in RM sometimes after NM is reconnected. |  Major | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3794](https://issues.apache.org/jira/browse/YARN-3794) | TestRMEmbeddedElector fails because of ambiguous LOG reference |  Major | test | Chengbing Liu | Chengbing Liu |
| [YARN-3790](https://issues.apache.org/jira/browse/YARN-3790) | usedResource from rootQueue metrics may get stale data for FS scheduler after recovering the container |  Major | fairscheduler, test | Rohith Sharma K S | zhihai xu |
| [YARN-3785](https://issues.apache.org/jira/browse/YARN-3785) | Support for Resource as an argument during submitApp call in MockRM test class |  Minor | resourcemanager | Sunil G | Sunil G |
| [YARN-3780](https://issues.apache.org/jira/browse/YARN-3780) | Should use equals when compare Resource in RMNodeImpl#ReconnectNodeTransition |  Minor | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3768](https://issues.apache.org/jira/browse/YARN-3768) | ArrayIndexOutOfBoundsException with empty environment variables |  Major | yarn | Joe Ferner | zhihai xu |
| [YARN-3762](https://issues.apache.org/jira/browse/YARN-3762) | FairScheduler: CME on FSParentQueue#getQueueUserAclInfo |  Critical | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-3747](https://issues.apache.org/jira/browse/YARN-3747) | TestLocalDirsHandlerService should delete the created test directory logDir2 |  Minor | test | David Moore | David Moore |
| [YARN-3655](https://issues.apache.org/jira/browse/YARN-3655) | FairScheduler: potential livelock due to maxAMShare limitation and container reservation |  Critical | fairscheduler | zhihai xu | zhihai xu |
| [YARN-3654](https://issues.apache.org/jira/browse/YARN-3654) | ContainerLogsPage web UI should not have meta-refresh |  Major | yarn | Xuan Gong | Xuan Gong |
| [YARN-3604](https://issues.apache.org/jira/browse/YARN-3604) | removeApplication in ZKRMStateStore should also disable watch. |  Minor | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3602](https://issues.apache.org/jira/browse/YARN-3602) | TestResourceLocalizationService.testPublicResourceInitializesLocalDir fails Intermittently due to IOException from cleanup |  Minor | test | zhihai xu | zhihai xu |
| [YARN-3594](https://issues.apache.org/jira/browse/YARN-3594) | WintuilsProcessStubExecutor.startStreamReader leaks streams |  Trivial | nodemanager | Steve Loughran | Lars Francke |
| [YARN-3592](https://issues.apache.org/jira/browse/YARN-3592) | Fix typos in RMNodeLabelsManager |  Trivial | resourcemanager | Junping Du | Sunil G |
| [YARN-3589](https://issues.apache.org/jira/browse/YARN-3589) | RM and AH web UI display DOCTYPE wrongly |  Major | webapp | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-3587](https://issues.apache.org/jira/browse/YARN-3587) | Fix the javadoc of DelegationTokenSecretManager in projects of yarn, etc. |  Minor | documentation | Akira AJISAKA | Gabor Liptak |
| [YARN-3577](https://issues.apache.org/jira/browse/YARN-3577) | Misspelling of threshold in log4j.properties for tests |  Minor | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-3572](https://issues.apache.org/jira/browse/YARN-3572) | Correct typos in WritingYarnApplications.md |  Minor | documentation | Sandeep Khurana | Gabor Liptak |
| [YARN-3552](https://issues.apache.org/jira/browse/YARN-3552) | RM Web UI shows -1 running containers for completed apps |  Trivial | webapp | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-3533](https://issues.apache.org/jira/browse/YARN-3533) | Test: Fix launchAM in MockRM to wait for attempt to be scheduled |  Major | yarn | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3530](https://issues.apache.org/jira/browse/YARN-3530) | ATS throws exception on trying to filter results without otherinfo. |  Critical | timelineserver | Sreenath Somarajapuram | Zhijie Shen |
| [YARN-3523](https://issues.apache.org/jira/browse/YARN-3523) | Cleanup ResourceManagerAdministrationProtocol interface audience |  Major | client, resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-3517](https://issues.apache.org/jira/browse/YARN-3517) | RM web ui for dumping scheduler logs should be for admins only |  Blocker | resourcemanager, security | Varun Vasudev | Varun Vasudev |
| [YARN-3493](https://issues.apache.org/jira/browse/YARN-3493) | RM fails to come up with error "Failed to load/recover state" when  mem settings are changed |  Critical | yarn | Sumana Sathish | Jian He |
| [YARN-3473](https://issues.apache.org/jira/browse/YARN-3473) | Fix RM Web UI configuration for some properties |  Minor | resourcemanager | Ray Chiang | Ray Chiang |
| [YARN-3444](https://issues.apache.org/jira/browse/YARN-3444) | Fix typo capabililty |  Trivial | applications/distributed-shell | Gabor Liptak | Gabor Liptak |
| [YARN-3436](https://issues.apache.org/jira/browse/YARN-3436) | Fix URIs in documention of YARN web service REST APIs |  Minor | documentation, resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3435](https://issues.apache.org/jira/browse/YARN-3435) | AM container to be allocated Appattempt AM container shown as null |  Trivial | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3434](https://issues.apache.org/jira/browse/YARN-3434) | Interaction between reservations and userlimit can result in significant ULF violation |  Major | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-3429](https://issues.apache.org/jira/browse/YARN-3429) | TestAMRMTokens.testTokenExpiry fails Intermittently with error message:Invalid AMRMToken |  Major | test | zhihai xu | zhihai xu |
| [YARN-3425](https://issues.apache.org/jira/browse/YARN-3425) | NPE from RMNodeLabelsManager.serviceStop when NodeLabelsManager.serviceInit failed |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3415](https://issues.apache.org/jira/browse/YARN-3415) | Non-AM containers can be counted towards amResourceUsage of a Fair Scheduler queue |  Critical | fairscheduler | Rohit Agarwal | zhihai xu |
| [YARN-3397](https://issues.apache.org/jira/browse/YARN-3397) | yarn rmadmin should skip -failover |  Minor | resourcemanager | J.Andreina | J.Andreina |
| [YARN-3396](https://issues.apache.org/jira/browse/YARN-3396) | Handle URISyntaxException in ResourceLocalizationService |  Major | nodemanager | Chengbing Liu | Brahma Reddy Battula |
| [YARN-3395](https://issues.apache.org/jira/browse/YARN-3395) | FairScheduler: Trim whitespaces when using username for queuename |  Major | fairscheduler | zhihai xu | zhihai xu |
| [YARN-3394](https://issues.apache.org/jira/browse/YARN-3394) | WebApplication  proxy documentation is incomplete |  Minor | resourcemanager | Bibin A Chundatt | Naganarasimha G R |
| [YARN-3387](https://issues.apache.org/jira/browse/YARN-3387) | Previous AM's container complete message couldn't pass to current am if am restarted and rm changed |  Critical | resourcemanager | sandflee | sandflee |
| [YARN-3383](https://issues.apache.org/jira/browse/YARN-3383) | AdminService should use "warn" instead of "info" to log exception when operation fails |  Major | resourcemanager | Wangda Tan | Li Lu |
| [YARN-3375](https://issues.apache.org/jira/browse/YARN-3375) | NodeHealthScriptRunner.shouldRun() check is performing 3 times for starting NodeHealthScriptRunner |  Minor | nodemanager | Devaraj K | Devaraj K |
| [YARN-3305](https://issues.apache.org/jira/browse/YARN-3305) | AM-Used Resource for leafqueue is wrongly populated if AM ResourceRequest is less than minimumAllocation |  Major | scheduler | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-3266](https://issues.apache.org/jira/browse/YARN-3266) | RMContext inactiveNodes should have NodeId as map key |  Major | resourcemanager | Chengbing Liu | Chengbing Liu |
| [YARN-3243](https://issues.apache.org/jira/browse/YARN-3243) | CapacityScheduler should pass headroom from parent to children to make sure ParentQueue obey its capacity limits. |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3241](https://issues.apache.org/jira/browse/YARN-3241) | FairScheduler handles "invalid" queue names inconsistently |  Major | fairscheduler | zhihai xu | zhihai xu |
| [YARN-3205](https://issues.apache.org/jira/browse/YARN-3205) | FileSystemRMStateStore should disable FileSystem Cache to avoid get a Filesystem with an old configuration. |  Major | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3197](https://issues.apache.org/jira/browse/YARN-3197) | Confusing log generated by CapacityScheduler |  Minor | capacityscheduler | Hitesh Shah | Varun Saxena |
| [YARN-3097](https://issues.apache.org/jira/browse/YARN-3097) | Logging of resource recovery on NM restart has redundancies |  Minor | nodemanager | Jason Lowe | Eric Payne |
| [YARN-3021](https://issues.apache.org/jira/browse/YARN-3021) | YARN's delegation-token handling disallows certain trust setups to operate properly over DistCp |  Major | security | Harsh J | Yongjun Zhang |
| [YARN-3018](https://issues.apache.org/jira/browse/YARN-3018) | Unify the default value for yarn.scheduler.capacity.node-locality-delay in code and default xml file |  Trivial | capacityscheduler | nijel | nijel |
| [YARN-2893](https://issues.apache.org/jira/browse/YARN-2893) | AMLaucher: sporadic job failures due to EOFException in readTokenStorageStream |  Major | resourcemanager | Gera Shegalov | zhihai xu |
| [YARN-2821](https://issues.apache.org/jira/browse/YARN-2821) | Distributed shell app master becomes unresponsive sometimes |  Major | applications/distributed-shell | Varun Vasudev | Varun Vasudev |
| [YARN-2421](https://issues.apache.org/jira/browse/YARN-2421) | RM still allocates containers to an app in the FINISHING state |  Major | scheduler | Thomas Graves | Chang Li |
| [YARN-2336](https://issues.apache.org/jira/browse/YARN-2336) | Fair scheduler REST api returns a missing '[' bracket JSON for deep queue tree |  Major | fairscheduler | Kenji Kikushima | Akira AJISAKA |
| [YARN-2123](https://issues.apache.org/jira/browse/YARN-2123) | Progress bars in Web UI always at 100% due to non-US locale |  Major | webapp | Johannes Simon | Akira AJISAKA |
| [YARN-1993](https://issues.apache.org/jira/browse/YARN-1993) | Cross-site scripting vulnerability in TextView.java |  Major | webapp | Ted Yu | Kenji Kikushima |
| [YARN-1912](https://issues.apache.org/jira/browse/YARN-1912) | ResourceLocalizer started without any jvm memory control |  Major | nodemanager | stanley shi | Masatake Iwasaki |
| [YARN-1832](https://issues.apache.org/jira/browse/YARN-1832) | Fix wrong MockLocalizerStatus#equals implementation |  Minor | nodemanager | Hong Zhiguo | Hong Zhiguo |
| [YARN-1519](https://issues.apache.org/jira/browse/YARN-1519) | check if sysconf is implemented before using it |  Major | nodemanager | Radim Kolar | Radim Kolar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3580](https://issues.apache.org/jira/browse/YARN-3580) | [JDK 8] TestClientRMService.testGetLabelsToNodes fails |  Major | test | Robert Kanter | Robert Kanter |
| [YARN-3339](https://issues.apache.org/jira/browse/YARN-3339) | TestDockerContainerExecutor should pull a single image and not the entire centos repository |  Minor | test | Ravindra Kumar Naik | Ravindra Kumar Naik |
| [YARN-2666](https://issues.apache.org/jira/browse/YARN-2666) | TestFairScheduler.testContinuousScheduling fails Intermittently |  Major | scheduler | Tsuyoshi Ozawa | zhihai xu |
| [YARN-1880](https://issues.apache.org/jira/browse/YARN-1880) | Cleanup TestApplicationClientProtocolOnHA |  Trivial | test | Tsuyoshi Ozawa | Tsuyoshi Ozawa |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3827](https://issues.apache.org/jira/browse/YARN-3827) | Migrate YARN native build to new CMake framework |  Major | build | Alan Burlison | Alan Burlison |
| [YARN-3787](https://issues.apache.org/jira/browse/YARN-3787) | loading applications by filtering appstartedTime period for ATS Web UI |  Major | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3766](https://issues.apache.org/jira/browse/YARN-3766) | ATS Web UI breaks because of YARN-3467 |  Blocker | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3740](https://issues.apache.org/jira/browse/YARN-3740) | Fixed the typo with the configuration name: APPLICATION\_HISTORY\_PREFIX\_MAX\_APPS |  Major | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3716](https://issues.apache.org/jira/browse/YARN-3716) | Node-label-expression should be included by ResourceRequestPBImpl.toString |  Minor | api | Xianyin Xin | Xianyin Xin |
| [YARN-3700](https://issues.apache.org/jira/browse/YARN-3700) | ATS Web Performance issue at load time when large number of jobs |  Major | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3684](https://issues.apache.org/jira/browse/YARN-3684) | Change ContainerExecutor's primary lifecycle methods to use a more extensible mechanism for passing information. |  Major | yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-3647](https://issues.apache.org/jira/browse/YARN-3647) | RMWebServices api's should use updated api from CommonNodeLabelsManager to get NodeLabel object |  Major | resourcemanager | Sunil G | Sunil G |
| [YARN-3632](https://issues.apache.org/jira/browse/YARN-3632) | Ordering policy should be allowed to reorder an application when demand changes |  Major | capacityscheduler | Craig Welch | Craig Welch |
| [YARN-3593](https://issues.apache.org/jira/browse/YARN-3593) | Add label-type and Improve "DEFAULT\_PARTITION" in Node Labels Page |  Major | webapp | Naganarasimha G R | Naganarasimha G R |
| [YARN-3583](https://issues.apache.org/jira/browse/YARN-3583) | Support of NodeLabel object instead of plain String in YarnClient side. |  Major | client | Sunil G | Sunil G |
| [YARN-3581](https://issues.apache.org/jira/browse/YARN-3581) | Deprecate -directlyAccessNodeLabelStore in RMAdminCLI |  Major | api, client, resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-3579](https://issues.apache.org/jira/browse/YARN-3579) | CommonNodeLabelsManager should support NodeLabel instead of string label name when getting node-to-label/label-to-label mappings |  Minor | resourcemanager | Sunil G | Sunil G |
| [YARN-3565](https://issues.apache.org/jira/browse/YARN-3565) | NodeHeartbeatRequest/RegisterNodeManagerRequest should use NodeLabel object instead of String |  Blocker | api, client, resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-3541](https://issues.apache.org/jira/browse/YARN-3541) | Add version info on timeline service / generic history web UI and REST API |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3521](https://issues.apache.org/jira/browse/YARN-3521) | Support return structured NodeLabel objects in REST API |  Major | api, client, resourcemanager | Wangda Tan | Sunil G |
| [YARN-3505](https://issues.apache.org/jira/browse/YARN-3505) | Node's Log Aggregation Report with SUCCEED should not cached in RMApps |  Critical | log-aggregation | Junping Du | Xuan Gong |
| [YARN-3463](https://issues.apache.org/jira/browse/YARN-3463) | Integrate OrderingPolicy Framework with CapacityScheduler |  Major | capacityscheduler | Craig Welch | Craig Welch |
| [YARN-3448](https://issues.apache.org/jira/browse/YARN-3448) | Add Rolling Time To Lives Level DB Plugin Capabilities |  Major | timelineserver | Jonathan Eagles | Jonathan Eagles |
| [YARN-3443](https://issues.apache.org/jira/browse/YARN-3443) | Create a 'ResourceHandler' subsystem to ease addition of support for new resource types on the NM |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [YARN-3413](https://issues.apache.org/jira/browse/YARN-3413) | Node label attributes (like exclusivity) should settable via addToClusterNodeLabels but shouldn't be changeable at runtime |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3365](https://issues.apache.org/jira/browse/YARN-3365) | Add support for using the 'tc' tool via container-executor |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [YARN-3362](https://issues.apache.org/jira/browse/YARN-3362) | Add node label usage in RM CapacityScheduler web UI |  Major | capacityscheduler, resourcemanager, webapp | Wangda Tan | Naganarasimha G R |
| [YARN-3361](https://issues.apache.org/jira/browse/YARN-3361) | CapacityScheduler side changes to support non-exclusive node labels |  Major | capacityscheduler | Wangda Tan | Wangda Tan |
| [YARN-3356](https://issues.apache.org/jira/browse/YARN-3356) | Capacity Scheduler FiCaSchedulerApp should use ResourceUsage to track used-resources-by-label. |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3354](https://issues.apache.org/jira/browse/YARN-3354) | Container should contains node-labels asked by original ResourceRequests |  Major | api, capacityscheduler, nodemanager, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3347](https://issues.apache.org/jira/browse/YARN-3347) | Improve YARN log command to get AMContainer logs as well as running containers logs |  Major | log-aggregation | Xuan Gong | Xuan Gong |
| [YARN-3345](https://issues.apache.org/jira/browse/YARN-3345) | Add non-exclusive node label API to RMAdmin protocol and NodeLabelsManager |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3326](https://issues.apache.org/jira/browse/YARN-3326) | Support RESTful API for getLabelsToNodes |  Minor | resourcemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-3319](https://issues.apache.org/jira/browse/YARN-3319) | Implement a FairOrderingPolicy |  Major | scheduler | Craig Welch | Craig Welch |
| [YARN-3318](https://issues.apache.org/jira/browse/YARN-3318) | Create Initial OrderingPolicy Framework and FifoOrderingPolicy |  Major | scheduler | Craig Welch | Craig Welch |
| [YARN-3136](https://issues.apache.org/jira/browse/YARN-3136) | getTransferredContainers can be a bottleneck during AM registration |  Major | scheduler | Jason Lowe | Sunil G |
| [YARN-3110](https://issues.apache.org/jira/browse/YARN-3110) | Few issues in ApplicationHistory web ui |  Minor | applications, timelineserver | Bibin A Chundatt | Naganarasimha G R |
| [YARN-2918](https://issues.apache.org/jira/browse/YARN-2918) | Don't fail RM if queue's configured labels are not existed in cluster-node-labels |  Major | resourcemanager | Rohith Sharma K S | Wangda Tan |
| [YARN-2740](https://issues.apache.org/jira/browse/YARN-2740) | Fix NodeLabelsManager to properly handle node label modifications when distributed node label configuration enabled |  Major | resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-2696](https://issues.apache.org/jira/browse/YARN-2696) | Queue sorting in CapacityScheduler should consider node label |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2498](https://issues.apache.org/jira/browse/YARN-2498) | Respect labels in preemption policy of capacity scheduler for inter-queue preemption |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2495](https://issues.apache.org/jira/browse/YARN-2495) | Allow admin specify labels from each NM (Distributed configuration) |  Major | resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-2392](https://issues.apache.org/jira/browse/YARN-2392) | add more diags about app retry limits on AM failures |  Minor | resourcemanager | Steve Loughran | Steve Loughran |
| [YARN-2331](https://issues.apache.org/jira/browse/YARN-2331) | Distinguish shutdown during supervision vs. shutdown for rolling upgrade |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-644](https://issues.apache.org/jira/browse/YARN-644) | Basic null check is not performed on passed in arguments before using them in ContainerManagerImpl.startContainer |  Minor | nodemanager | Omkar Vinit Joshi | Varun Saxena |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3357](https://issues.apache.org/jira/browse/YARN-3357) | Move TestFifoScheduler to FIFO package |  Major | scheduler, test | Rohith Sharma K S | Rohith Sharma K S |


