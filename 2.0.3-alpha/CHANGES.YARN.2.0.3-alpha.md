# Hadoop Changelog

## Release 2.0.3-alpha - 2013-02-14

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-286](https://issues.apache.org/jira/browse/YARN-286) | Add a YARN ApplicationClassLoader |  Major | applications | Tom White | Tom White |
| [YARN-187](https://issues.apache.org/jira/browse/YARN-187) | Add hierarchical queues to the fair scheduler |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-146](https://issues.apache.org/jira/browse/YARN-146) | Add unit tests for computing fair share in the fair scheduler |  Major | resourcemanager | Sandy Ryza | Sandy Ryza |
| [YARN-145](https://issues.apache.org/jira/browse/YARN-145) | Add a Web UI to the fair share scheduler |  Major | resourcemanager | Sandy Ryza | Sandy Ryza |
| [YARN-2](https://issues.apache.org/jira/browse/YARN-2) | Enhance CS to schedule accounting for both memory and cpu cores |  Major | capacityscheduler, scheduler | Arun C Murthy | Arun C Murthy |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-331](https://issues.apache.org/jira/browse/YARN-331) | Fill in missing fair scheduler documentation |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-328](https://issues.apache.org/jira/browse/YARN-328) | Use token request messages defined in hadoop common |  Major | resourcemanager | Suresh Srinivas | Suresh Srinivas |
| [YARN-315](https://issues.apache.org/jira/browse/YARN-315) | Use security token protobuf definition from hadoop common |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [YARN-285](https://issues.apache.org/jira/browse/YARN-285) | RM should be able to provide a tracking link for apps that have already been purged |  Major | . | Derek Dagit | Derek Dagit |
| [YARN-277](https://issues.apache.org/jira/browse/YARN-277) | Use AMRMClient in DistributedShell to exemplify the approach |  Major | . | Bikas Saha | Bikas Saha |
| [YARN-254](https://issues.apache.org/jira/browse/YARN-254) | Update fair scheduler web UI for hierarchical queues |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-222](https://issues.apache.org/jira/browse/YARN-222) | Fair scheduler should create queue for each user by default |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-216](https://issues.apache.org/jira/browse/YARN-216) | Remove jquery theming support |  Major | . | Todd Lipcon | Robert Joseph Evans |
| [YARN-184](https://issues.apache.org/jira/browse/YARN-184) | Remove unnecessary locking in fair scheduler, and address findbugs excludes. |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-183](https://issues.apache.org/jira/browse/YARN-183) | Clean up fair scheduler code |  Minor | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-169](https://issues.apache.org/jira/browse/YARN-169) | Update log4j.appender.EventCounter to use org.apache.hadoop.log.metrics.EventCounter |  Minor | nodemanager | Anthony Rojas | Anthony Rojas |
| [YARN-165](https://issues.apache.org/jira/browse/YARN-165) | RM should point tracking URL to RM web page for app when AM fails |  Blocker | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-129](https://issues.apache.org/jira/browse/YARN-129) | Simplify classpath construction for mini YARN tests |  Major | client | Tom White | Tom White |
| [YARN-57](https://issues.apache.org/jira/browse/YARN-57) | Plugable process tree |  Major | nodemanager | Radim Kolar | Radim Kolar |
| [YARN-23](https://issues.apache.org/jira/browse/YARN-23) | FairScheduler: FSQueueSchedulable#updateDemand() - potential redundant aggregation |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-364](https://issues.apache.org/jira/browse/YARN-364) | AggregatedLogDeletionService can take too long to delete logs |  Major | . | Jason Lowe | Jason Lowe |
| [YARN-360](https://issues.apache.org/jira/browse/YARN-360) | Allow apps to concurrently register tokens for renewal |  Critical | . | Daryn Sharp | Daryn Sharp |
| [YARN-357](https://issues.apache.org/jira/browse/YARN-357) | App submission should not be synchronized |  Major | resourcemanager | Daryn Sharp | Daryn Sharp |
| [YARN-355](https://issues.apache.org/jira/browse/YARN-355) | RM app submission jams under load |  Blocker | resourcemanager | Daryn Sharp | Daryn Sharp |
| [YARN-354](https://issues.apache.org/jira/browse/YARN-354) | WebAppProxyServer exits immediately after startup |  Blocker | . | Liang Xie | Liang Xie |
| [YARN-343](https://issues.apache.org/jira/browse/YARN-343) | Capacity Scheduler maximum-capacity value -1 is invalid |  Major | capacityscheduler | Thomas Graves | Xuan Gong |
| [YARN-336](https://issues.apache.org/jira/browse/YARN-336) | Fair scheduler FIFO scheduling within a queue only allows 1 app at a time |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-334](https://issues.apache.org/jira/browse/YARN-334) | Maven RAT plugin is not checking all source files |  Critical | . | Thomas Graves | Thomas Graves |
| [YARN-330](https://issues.apache.org/jira/browse/YARN-330) | Flakey test: TestNodeManagerShutdown#testKillContainersOnShutdown |  Major | nodemanager | Hitesh Shah | Sandy Ryza |
| [YARN-325](https://issues.apache.org/jira/browse/YARN-325) | RM CapacityScheduler can deadlock when getQueueInfo() is called and a container is completing |  Blocker | capacityscheduler | Jason Lowe | Arun C Murthy |
| [YARN-320](https://issues.apache.org/jira/browse/YARN-320) | RM should always be able to renew its own tokens |  Blocker | resourcemanager | Daryn Sharp | Daryn Sharp |
| [YARN-302](https://issues.apache.org/jira/browse/YARN-302) | Fair scheduler assignmultiple should default to false |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-301](https://issues.apache.org/jira/browse/YARN-301) | Fair scheduler throws ConcurrentModificationException when iterating over app's priorities |  Major | resourcemanager, scheduler | Hong Shen | Hong Shen |
| [YARN-300](https://issues.apache.org/jira/browse/YARN-300) | After YARN-271, fair scheduler can infinite loop and not schedule any application. |  Major | resourcemanager, scheduler | Hong Shen | Sandy Ryza |
| [YARN-293](https://issues.apache.org/jira/browse/YARN-293) | Node Manager leaks LocalizerRunner object for every Container |  Critical | nodemanager | Devaraj K | Robert Joseph Evans |
| [YARN-288](https://issues.apache.org/jira/browse/YARN-288) | Fair scheduler queue doesn't accept any jobs when ACLs are configured. |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-283](https://issues.apache.org/jira/browse/YARN-283) | Fair scheduler fails to get queue info without root prefix |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-282](https://issues.apache.org/jira/browse/YARN-282) | Fair scheduler web UI double counts Apps Submitted |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-278](https://issues.apache.org/jira/browse/YARN-278) | Fair scheduler maxRunningApps config causes no apps to make progress |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-272](https://issues.apache.org/jira/browse/YARN-272) | Fair scheduler log messages try to print objects without overridden toString methods |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-271](https://issues.apache.org/jira/browse/YARN-271) | Fair scheduler hits IllegalStateException trying to reserve different apps on same node |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-267](https://issues.apache.org/jira/browse/YARN-267) | Fix fair scheduler web UI |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-266](https://issues.apache.org/jira/browse/YARN-266) | RM and JHS Web UIs are blank because AppsBlock is not escaping string properly |  Critical | resourcemanager | Ravi Prakash | Ravi Prakash |
| [YARN-264](https://issues.apache.org/jira/browse/YARN-264) | y.s.rm.DelegationTokenRenewer attempts to renew token even after removing an app |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-258](https://issues.apache.org/jira/browse/YARN-258) | RM web page UI shows Invalid Date for start and finish times |  Major | resourcemanager | Ravi Prakash | Ravi Prakash |
| [YARN-253](https://issues.apache.org/jira/browse/YARN-253) | Container launch may fail if no files were localized |  Critical | nodemanager | Tom White | Tom White |
| [YARN-251](https://issues.apache.org/jira/browse/YARN-251) | Proxy URI generation fails for blank tracking URIs |  Major | resourcemanager | Tom White | Tom White |
| [YARN-225](https://issues.apache.org/jira/browse/YARN-225) | Proxy Link in RM UI thows NPE in Secure mode |  Critical | resourcemanager | Devaraj K | Devaraj K |
| [YARN-224](https://issues.apache.org/jira/browse/YARN-224) | Fair scheduler logs too many nodeUpdate INFO messages |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-223](https://issues.apache.org/jira/browse/YARN-223) | Change processTree interface to work better with native code |  Critical | . | Radim Kolar | Radim Kolar |
| [YARN-217](https://issues.apache.org/jira/browse/YARN-217) | yarn rmadmin commands fail in secure cluster |  Blocker | resourcemanager | Devaraj K | Devaraj K |
| [YARN-214](https://issues.apache.org/jira/browse/YARN-214) | RMContainerImpl does not handle event EXPIRE at state RUNNING |  Major | resourcemanager | Jason Lowe | Jonathan Eagles |
| [YARN-212](https://issues.apache.org/jira/browse/YARN-212) | NM state machine ignores an APPLICATION\_CONTAINER\_FINISHED event when it shouldn't |  Blocker | nodemanager | Nathan Roberts | Nathan Roberts |
| [YARN-206](https://issues.apache.org/jira/browse/YARN-206) | TestApplicationCleanup.testContainerCleanup occasionally fails |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-201](https://issues.apache.org/jira/browse/YARN-201) | CapacityScheduler can take a very long time to schedule containers if requests are off cluster |  Critical | capacityscheduler | Jason Lowe | Jason Lowe |
| [YARN-189](https://issues.apache.org/jira/browse/YARN-189) | deadlock in RM - AMResponse object |  Blocker | resourcemanager | Thomas Graves | Thomas Graves |
| [YARN-181](https://issues.apache.org/jira/browse/YARN-181) | capacity-scheduler.xml move breaks Eclipse import |  Critical | resourcemanager | Siddharth Seth | Siddharth Seth |
| [YARN-180](https://issues.apache.org/jira/browse/YARN-180) | Capacity scheduler - containers that get reserved create container token to early |  Critical | capacityscheduler | Thomas Graves | Arun C Murthy |
| [YARN-179](https://issues.apache.org/jira/browse/YARN-179) | Bunch of test failures on trunk |  Blocker | capacityscheduler | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-178](https://issues.apache.org/jira/browse/YARN-178) | Fix custom ProcessTree instance creation |  Critical | . | Radim Kolar | Radim Kolar |
| [YARN-177](https://issues.apache.org/jira/browse/YARN-177) | CapacityScheduler - adding a queue while the RM is running has wacky results |  Critical | capacityscheduler | Thomas Graves | Arun C Murthy |
| [YARN-170](https://issues.apache.org/jira/browse/YARN-170) | NodeManager stop() gets called twice on shutdown |  Major | nodemanager | Sandy Ryza | Sandy Ryza |
| [YARN-166](https://issues.apache.org/jira/browse/YARN-166) | capacity scheduler doesn't allow capacity \< 1.0 |  Major | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-163](https://issues.apache.org/jira/browse/YARN-163) | Retrieving container log via NM webapp can hang with multibyte characters in log |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-161](https://issues.apache.org/jira/browse/YARN-161) | Yarn Common has multiple compiler warnings for unchecked operations |  Major | api | Chris Nauroth | Chris Nauroth |
| [YARN-159](https://issues.apache.org/jira/browse/YARN-159) | RM web ui applications page should be sorted to display last app first |  Major | resourcemanager | Thomas Graves | Thomas Graves |
| [YARN-151](https://issues.apache.org/jira/browse/YARN-151) | Browser thinks RM main page JS is taking too long |  Major | . | Robert Joseph Evans | Ravi Prakash |
| [YARN-150](https://issues.apache.org/jira/browse/YARN-150) | AppRejectedTransition does not unregister app from master service and scheduler |  Major | . | Bikas Saha | Bikas Saha |
| [YARN-140](https://issues.apache.org/jira/browse/YARN-140) | Add capacity-scheduler-default.xml to provide a default set of configurations for the capacity scheduler. |  Major | capacityscheduler | Ahmed Radwan | Ahmed Radwan |
| [YARN-139](https://issues.apache.org/jira/browse/YARN-139) | Interrupted Exception within AsyncDispatcher leads to user confusion |  Major | api | Nathan Roberts | Vinod Kumar Vavilapalli |
| [YARN-136](https://issues.apache.org/jira/browse/YARN-136) | Make ClientTokenSecretManager part of RMContext |  Major | resourcemanager | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-133](https://issues.apache.org/jira/browse/YARN-133) | update web services docs for RM clusterMetrics |  Major | resourcemanager | Thomas Graves | Ravi Prakash |
| [YARN-131](https://issues.apache.org/jira/browse/YARN-131) | Incorrect ACL properties in capacity scheduler documentation |  Major | capacityscheduler | Ahmed Radwan | Ahmed Radwan |
| [YARN-127](https://issues.apache.org/jira/browse/YARN-127) | Move RMAdmin tool to the client package |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-116](https://issues.apache.org/jira/browse/YARN-116) | RM is missing ability to add include/exclude files without a restart |  Major | resourcemanager | xieguiming | xieguiming |
| [YARN-102](https://issues.apache.org/jira/browse/YARN-102) | Move the apache licence header to the top of the file in MemStore.java |  Trivial | resourcemanager | Devaraj K | Devaraj K |
| [YARN-94](https://issues.apache.org/jira/browse/YARN-94) | DistributedShell jar should point to Client as the main class by default |  Major | applications/distributed-shell | Vinod Kumar Vavilapalli | Hitesh Shah |
| [YARN-93](https://issues.apache.org/jira/browse/YARN-93) | Diagnostics missing from applications that have finished but failed |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-82](https://issues.apache.org/jira/browse/YARN-82) | YARN local-dirs defaults to /tmp/nm-local-dir |  Minor | nodemanager | Andy Isaacson | Hemanth Yamijala |
| [YARN-78](https://issues.apache.org/jira/browse/YARN-78) | Change UnmanagedAMLauncher to use YarnClientImpl |  Major | applications | Bikas Saha | Bikas Saha |
| [YARN-72](https://issues.apache.org/jira/browse/YARN-72) | NM should handle cleaning up containers when it shuts down |  Major | nodemanager | Hitesh Shah | Sandy Ryza |
| [YARN-53](https://issues.apache.org/jira/browse/YARN-53) | Add protocol to YARN to support GetGroups |  Major | resourcemanager | Alejandro Abdelnur | Bo Wang |
| [YARN-43](https://issues.apache.org/jira/browse/YARN-43) | TestResourceTrackerService fail intermittently on jdk7 |  Major | . | Thomas Graves | Thomas Graves |
| [YARN-40](https://issues.apache.org/jira/browse/YARN-40) | Provide support for missing yarn commands |  Major | client | Devaraj K | Devaraj K |
| [YARN-33](https://issues.apache.org/jira/browse/YARN-33) | LocalDirsHandler should validate the configured local and log dirs |  Major | nodemanager | Mayank Bansal | Mayank Bansal |
| [YARN-32](https://issues.apache.org/jira/browse/YARN-32) | TestApplicationTokens fails intermintently on jdk7 |  Major | . | Thomas Graves | Vinod Kumar Vavilapalli |
| [YARN-30](https://issues.apache.org/jira/browse/YARN-30) | TestNMWebServicesApps, TestRMWebServicesApps and TestRMWebServicesNodes fail on jdk7 |  Major | . | Thomas Graves | Thomas Graves |
| [YARN-28](https://issues.apache.org/jira/browse/YARN-28) | TestCompositeService fails on jdk7 |  Major | . | Thomas Graves | Thomas Graves |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-280](https://issues.apache.org/jira/browse/YARN-280) | RM does not reject app submission with invalid tokens |  Major | resourcemanager | Daryn Sharp | Daryn Sharp |
| [YARN-231](https://issues.apache.org/jira/browse/YARN-231) | Add FS-based persistent store implementation for RMStateStore |  Major | resourcemanager | Bikas Saha | Bikas Saha |
| [YARN-230](https://issues.apache.org/jira/browse/YARN-230) | Make changes for RM restart phase 1 |  Major | resourcemanager | Bikas Saha | Bikas Saha |
| [YARN-229](https://issues.apache.org/jira/browse/YARN-229) | Remove old code for restart |  Major | resourcemanager | Bikas Saha | Bikas Saha |
| [YARN-219](https://issues.apache.org/jira/browse/YARN-219) | NM should aggregate logs when application finishes. |  Critical | nodemanager | Robert Joseph Evans | Robert Joseph Evans |
| [YARN-204](https://issues.apache.org/jira/browse/YARN-204) | test coverage for org.apache.hadoop.tools |  Major | applications | Aleksey Gorshkov | Aleksey Gorshkov |
| [YARN-202](https://issues.apache.org/jira/browse/YARN-202) | Log Aggregation generates a storm of fsync() for namenode |  Critical | . | Kihwal Lee | Kihwal Lee |
| [YARN-188](https://issues.apache.org/jira/browse/YARN-188) | Coverage fixing for CapacityScheduler |  Major | capacityscheduler | Aleksey Gorshkov | Aleksey Gorshkov |
| [YARN-186](https://issues.apache.org/jira/browse/YARN-186) | Coverage fixing LinuxContainerExecutor |  Major | resourcemanager, scheduler | Aleksey Gorshkov | Aleksey Gorshkov |
| [YARN-135](https://issues.apache.org/jira/browse/YARN-135) | ClientTokens should be per app-attempt and be unregistered on App-finish. |  Major | resourcemanager | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-134](https://issues.apache.org/jira/browse/YARN-134) | ClientToAMSecretManager creates keys without checking for validity of the appID |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-103](https://issues.apache.org/jira/browse/YARN-103) | Add a yarn AM - RM client module |  Major | . | Bikas Saha | Bikas Saha |
| [YARN-50](https://issues.apache.org/jira/browse/YARN-50) | Implement renewal / cancellation of Delegation Tokens |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [YARN-3](https://issues.apache.org/jira/browse/YARN-3) | Add support for CPU isolation/monitoring of containers |  Major | . | Arun C Murthy | Andrew Ferguson |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-372](https://issues.apache.org/jira/browse/YARN-372) | Move InlineDispatcher from hadoop-yarn-server-resourcemanager to hadoop-yarn-common |  Minor | . | Siddharth Seth | Siddharth Seth |


