
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
# Apache Oozie Changelog

## Release 5.2.0 - 2019-12-06



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3414](https://issues.apache.org/jira/browse/OOZIE-3414) | Oozie master does not compile with -Dhadoop.version=2.8.5 |  Major | . | Daniel Becker | Andras Salamon |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3277](https://issues.apache.org/jira/browse/OOZIE-3277) | [build] Check for star imports |  Minor | build | Gézapeti | Kinga Marton |
| [OOZIE-3361](https://issues.apache.org/jira/browse/OOZIE-3361) | [docs] Document embedded XML job submission mode |  Minor | docs | Andras Salamon | Andras Salamon |
| [OOZIE-3378](https://issues.apache.org/jira/browse/OOZIE-3378) | [core] Coordinator action's status is SUBMITTED after E1003 error |  Major | core | Andras Salamon | Andras Salamon |
| [OOZIE-3338](https://issues.apache.org/jira/browse/OOZIE-3338) | [build] Remove SVN references |  Minor | build, docs | Andras Salamon | Andras Salamon |
| [OOZIE-3382](https://issues.apache.org/jira/browse/OOZIE-3382) | [SSH action] Optimize process streams draining |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3399](https://issues.apache.org/jira/browse/OOZIE-3399) | [tests] Eliminate nested class in TestV1JobsServletBundleEngine and TestV1JobServletBundleEngine |  Major | tests | Andras Salamon | Andras Salamon |
| [OOZIE-3398](https://issues.apache.org/jira/browse/OOZIE-3398) | [docs] Fix oozie sub-workflow documentation |  Minor | docs | Andras Salamon | Andras Salamon |
| [OOZIE-3397](https://issues.apache.org/jira/browse/OOZIE-3397) | Improve logging in NotificationXCommand |  Major | core | Kinga Marton | Andras Salamon |
| [OOZIE-3410](https://issues.apache.org/jira/browse/OOZIE-3410) | [build] Deploy fluent-job and oozie-sharelib-git artifacts |  Major | build | Andras Piros | Andras Piros |
| [OOZIE-3341](https://issues.apache.org/jira/browse/OOZIE-3341) | [docs] Fix difference between command line help and documentation |  Major | docs | Andras Salamon | Andras Salamon |
| [OOZIE-3421](https://issues.apache.org/jira/browse/OOZIE-3421) | [tests] GitServer lifecycle fixes |  Major | tests | Andras Piros | Andras Piros |
| [OOZIE-3422](https://issues.apache.org/jira/browse/OOZIE-3422) | [client] Enhance logging of Oozie client connecting to the Oozie server |  Major | client | Andras Salamon | Andras Salamon |
| [OOZIE-3420](https://issues.apache.org/jira/browse/OOZIE-3420) | [action] pom.xml fixes |  Major | action | Andras Piros | Andras Piros |
| [OOZIE-3419](https://issues.apache.org/jira/browse/OOZIE-3419) | [fluent-job] GraphVisualization fails before JDK 1.8.0\_u40 |  Major | fluent-job | Andras Piros | Andras Salamon |
| [OOZIE-3417](https://issues.apache.org/jira/browse/OOZIE-3417) | [FS Action] Refactor and optimize FsActionExecutor.java decision making part |  Major | core | duan xiong | duan xiong |
| [OOZIE-3426](https://issues.apache.org/jira/browse/OOZIE-3426) | [core] V1JobsServlet should log HDFS related error when trying to save workflow definition |  Minor | core | Andras Salamon | Andras Salamon |
| [OOZIE-3427](https://issues.apache.org/jira/browse/OOZIE-3427) | [core] Use best practices in HTTP response headers |  Minor | core | Andras Salamon | Andras Salamon |
| [OOZIE-3261](https://issues.apache.org/jira/browse/OOZIE-3261) | [build] Set up mvn clean to delete the "build" directory as well |  Major | build | Gézapeti | duan xiong |
| [OOZIE-3442](https://issues.apache.org/jira/browse/OOZIE-3442) | Check and eliminate builds/runHudsonCIBuild.sh |  Minor | build | Andras Salamon | duan xiong |
| [OOZIE-3446](https://issues.apache.org/jira/browse/OOZIE-3446) | Migrate from commons-lang 2.x to commons-lang 3.x |  Major | . | Andras Salamon | duan xiong |
| [OOZIE-3443](https://issues.apache.org/jira/browse/OOZIE-3443) | Migrate from joda time to java.time |  Minor | . | Andras Salamon | Mate Juhasz |
| [OOZIE-3450](https://issues.apache.org/jira/browse/OOZIE-3450) | Investigate and clean git sharelib |  Major | . | Andras Salamon | Mate Juhasz |
| [OOZIE-3249](https://issues.apache.org/jira/browse/OOZIE-3249) | [tools] Instrumentation log parser |  Major | tools | Andras Piros | Andras Piros |
| [OOZIE-3463](https://issues.apache.org/jira/browse/OOZIE-3463) | Migrate from com.google.common.base.Charsets to java.nio.charset.StandardCharsets |  Major | . | Andras Salamon | duan xiong |
| [OOZIE-3481](https://issues.apache.org/jira/browse/OOZIE-3481) | Upgrade Jetty to 9.3.27 |  Major | . | Kinga Marton | Andras Salamon |
| [OOZIE-3393](https://issues.apache.org/jira/browse/OOZIE-3393) | Add Oozie instrumentation delayed metric in CoordMaterializeTriggerService |  Major | coordinator | Junfan Zhang | Junfan Zhang |
| [OOZIE-2882](https://issues.apache.org/jira/browse/OOZIE-2882) | Rerun workflow fails Error: E0404 |  Major | . | Attila Sasvári | Kinga Marton |
| [OOZIE-3528](https://issues.apache.org/jira/browse/OOZIE-3528) | Migrate to PowerMock 2 and Mockito2 |  Major | . | Kinga Marton | Kinga Marton |
| [OOZIE-3468](https://issues.apache.org/jira/browse/OOZIE-3468) | [build] Use modernizer plugin |  Major | build | Andras Salamon | Andras Salamon |
| [OOZIE-3539](https://issues.apache.org/jira/browse/OOZIE-3539) | Support http proxy/basic authentication in the command line client |  Major | client | Zsombor Gegesy | Zsombor Gegesy |
| [OOZIE-3540](https://issues.apache.org/jira/browse/OOZIE-3540) | Use StringBuilder instead of StringBuffer if concurrent access is not required |  Minor | core | Zsombor Gegesy | Zsombor Gegesy |
| [OOZIE-3405](https://issues.apache.org/jira/browse/OOZIE-3405) | SSH action shows empty error Message and Error code |  Minor | . | Peter Orova | Mate Juhasz |
| [OOZIE-3179](https://issues.apache.org/jira/browse/OOZIE-3179) | Adding a configurable config-default.xml location to a workflow |  Major | . | Jason Phelps | Jason Phelps |
| [OOZIE-3465](https://issues.apache.org/jira/browse/OOZIE-3465) | Migrate from commons-codec |  Major | . | Andras Salamon | Mate Juhasz |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3368](https://issues.apache.org/jira/browse/OOZIE-3368) | [fluent-job] CredentialsRetrying example does not compile |  Minor | examples, fluent-job | Daniel Becker | Daniel Becker |
| [OOZIE-3365](https://issues.apache.org/jira/browse/OOZIE-3365) | Workflow and coordinator action status remains RUNNING after rerun |  Major | core | Satish Saley | Satish Saley |
| [OOZIE-3373](https://issues.apache.org/jira/browse/OOZIE-3373) | [core] Logging of lock information is inconsistent |  Minor | core | Prabhu Joseph | Prabhu Joseph |
| [OOZIE-3380](https://issues.apache.org/jira/browse/OOZIE-3380) | TestCoordMaterializeTransitionXCommand failure after DST change date |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3386](https://issues.apache.org/jira/browse/OOZIE-3386) | Misleading error message when workflow application does not exist |  Major | . | Attila Sasvári | Kinga Marton |
| [OOZIE-3389](https://issues.apache.org/jira/browse/OOZIE-3389) | Getting input dependency list on the UI throws NPE |  Blocker | . | Attila Sasvári | Andras Piros |
| [OOZIE-3379](https://issues.apache.org/jira/browse/OOZIE-3379) | [client] Auth token cache file name should include OOZIE\_URL |  Major | client | Junfan Zhang | Junfan Zhang |
| [OOZIE-3194](https://issues.apache.org/jira/browse/OOZIE-3194) | [tools] Oozie should set proper permissions to sharelib after upload |  Critical | tools | Dénes Bodó | Dénes Bodó |
| [OOZIE-3186](https://issues.apache.org/jira/browse/OOZIE-3186) | [core] Oozie is unable to use configuration linked using jceks://file/ |  Critical | core | Dénes Bodó | Dénes Bodó |
| [OOZIE-3067](https://issues.apache.org/jira/browse/OOZIE-3067) | [core] Remove duplicate logic from ZKJobsConcurrencyService |  Minor | core | Dénes Bodó | Dénes Bodó |
| [OOZIE-3415](https://issues.apache.org/jira/browse/OOZIE-3415) | [core] libpath cannot be used together with coord.application.path and bundle.application.path |  Major | core | Andras Salamon | Andras Salamon |
| [OOZIE-3401](https://issues.apache.org/jira/browse/OOZIE-3401) | [test] fix TestPySpark failure |  Major | tests | Andras Salamon | Kinga Marton |
| [OOZIE-2949](https://issues.apache.org/jira/browse/OOZIE-2949) | Escape quotes whitespaces in Sqoop \<command\> field |  Major | . | Gézapeti | Andras Salamon |
| [OOZIE-3431](https://issues.apache.org/jira/browse/OOZIE-3431) | [web UI] Oozie web UI should not serve image from http://extjs.com/s.gif |  Minor | . | Jacob Tolar | Jacob Tolar |
| [OOZIE-3439](https://issues.apache.org/jira/browse/OOZIE-3439) | Hive2 action is not parsing application ID for TEZ from log file properly |  Major | action | Shubham | Shubham |
| [OOZIE-3437](https://issues.apache.org/jira/browse/OOZIE-3437) | Missing README from distro |  Minor | . | Andras Salamon | duan xiong |
| [OOZIE-3438](https://issues.apache.org/jira/browse/OOZIE-3438) | Copy only apache-jsp server dependencies to distro |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-2614](https://issues.apache.org/jira/browse/OOZIE-2614) | Add XFrame Filter for REST APIs |  Major | security | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-3326](https://issues.apache.org/jira/browse/OOZIE-3326) | [action] Sqoop Action should support tez delegation tokens for hive-import |  Major | action | Brian Goerlitz | Brian Goerlitz |
| [OOZIE-3441](https://issues.apache.org/jira/browse/OOZIE-3441) | Upgrade jackson version to 2.6.5 |  Critical | action | duan xiong | duan xiong |
| [OOZIE-3409](https://issues.apache.org/jira/browse/OOZIE-3409) | Oozie Server : Memory leak in EL evaluation |  Major | . | Praneeth | Andras Salamon |
| [OOZIE-3440](https://issues.apache.org/jira/browse/OOZIE-3440) | [action] Oozie Spark action replaces path symlink # to %23 |  Major | action | Dénes Bodó | Dénes Bodó |
| [OOZIE-2693](https://issues.apache.org/jira/browse/OOZIE-2693) | SimpleHCatDependencyCache.removeMissingDependency can throw NPE |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-3207](https://issues.apache.org/jira/browse/OOZIE-3207) | Update ASF root pom version |  Blocker | build | Robert Kanter | Andras Salamon |
| [OOZIE-3312](https://issues.apache.org/jira/browse/OOZIE-3312) | Add support for HSTS |  Major | security | Gézapeti | Kinga Marton |
| [OOZIE-3448](https://issues.apache.org/jira/browse/OOZIE-3448) | Cleanup of oozie-server copy dependency |  Major | . | Andras Salamon | duan xiong |
| [OOZIE-3429](https://issues.apache.org/jira/browse/OOZIE-3429) | PreCommit FindBugs checking does not work |  Major | . | Andras Salamon | Kinga Marton |
| [OOZIE-3460](https://issues.apache.org/jira/browse/OOZIE-3460) | Remove pom files from Oozie sharelibs |  Minor | . | Andras Salamon | duan xiong |
| [OOZIE-3470](https://issues.apache.org/jira/browse/OOZIE-3470) | PurgeXCommand coordActionDel variable assignment should be standardized |  Major | . | Junfan Zhang | Junfan Zhang |
| [OOZIE-3477](https://issues.apache.org/jira/browse/OOZIE-3477) | Fix parameter checking in WorkflowStore.getWorkflowCountWithStatusInLastNSeconds |  Major | . | Junfan Zhang | Junfan Zhang |
| [OOZIE-3478](https://issues.apache.org/jira/browse/OOZIE-3478) | Oozie needs execute permission on the submitting users home directory |  Major | action, security | Andras Salamon | Andras Salamon |
| [OOZIE-3464](https://issues.apache.org/jira/browse/OOZIE-3464) | Use UTF8 charset instead of default one |  Major | . | Kinga Marton | duan xiong |
| [OOZIE-2927](https://issues.apache.org/jira/browse/OOZIE-2927) | Append new line character for Hive2 query using query tag |  Major | action | Abhishek Bafna | Andras Salamon |
| [OOZIE-3455](https://issues.apache.org/jira/browse/OOZIE-3455) | Inconsistent CoordMaterializeTransitionXCommand logging |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3494](https://issues.apache.org/jira/browse/OOZIE-3494) | Incorrect hadoop-yarn-registry version |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3503](https://issues.apache.org/jira/browse/OOZIE-3503) | TestJavaActionExecutor.testSubmitWithLauncherQueue unit test failure |  Major | tests | Andras Salamon | Andras Salamon |
| [OOZIE-3510](https://issues.apache.org/jira/browse/OOZIE-3510) | TestProxyUserService.testInvalidGroup fails if executed by nobody |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3495](https://issues.apache.org/jira/browse/OOZIE-3495) | Upgrade hive version to 1.2.2 |  Major | . | Andras Salamon | duan xiong |
| [OOZIE-3492](https://issues.apache.org/jira/browse/OOZIE-3492) | [spark-action] Missing HADOOP\_CONF\_DIR property |  Major | action | Andras Salamon | Andras Salamon |
| [OOZIE-3507](https://issues.apache.org/jira/browse/OOZIE-3507) | Upgrade to Dozer 6 |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3515](https://issues.apache.org/jira/browse/OOZIE-3515) | Upgrade sqoop version to 1.4.7 |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3516](https://issues.apache.org/jira/browse/OOZIE-3516) | Misleading warning: java.lang.IllegalArgumentException: Does not contain a valid host:port authority: yarnRM |  Major | . | Kinga Marton | Kinga Marton |
| [OOZIE-3517](https://issues.apache.org/jira/browse/OOZIE-3517) | Invalid reference to xtheme-default.css |  Major | . | Andras Salamon | duan xiong |
| [OOZIE-3518](https://issues.apache.org/jira/browse/OOZIE-3518) | [docs] Dead links in DG\_HCatalogIntegration |  Major | docs | Andras Salamon | duan xiong |
| [OOZIE-3520](https://issues.apache.org/jira/browse/OOZIE-3520) | Upgrade Derby to 10.14.2.0 |  Major | . | Andras Salamon | duan xiong |
| [OOZIE-2836](https://issues.apache.org/jira/browse/OOZIE-2836) | Remove .ps1 and .cmd windows scripts |  Minor | . | Attila Sasvári | Kinga Marton |
| [OOZIE-3523](https://issues.apache.org/jira/browse/OOZIE-3523) | First missing dependency is shown incorrectly |  Major | . | Rohini Palaniswamy | Manasa Gogineni |
| [OOZIE-3524](https://issues.apache.org/jira/browse/OOZIE-3524) | fs:fileSize() does not work correctly for files with extra slash in path |  Major | . | Rohini Palaniswamy | Manasa Gogineni |
| [OOZIE-3527](https://issues.apache.org/jira/browse/OOZIE-3527) | Oozie stuck in waiting state if CoordPushDependencyCheckXCommand is not requeued |  Major | . | Rohini Palaniswamy | Manasa Gogineni |
| [OOZIE-2755](https://issues.apache.org/jira/browse/OOZIE-2755) | Oozie HA: ZKJobsConcurrencyService throws runtime exception when numOozies is zero |  Major | HA | Dongying Jiao | Andras Salamon |
| [OOZIE-3526](https://issues.apache.org/jira/browse/OOZIE-3526) | Global job-xml not being overwritten by job-xml specified for an action |  Major | . | Manasa Gogineni | Manasa Gogineni |
| [OOZIE-3024](https://issues.apache.org/jira/browse/OOZIE-3024) | Email action ignores value of content\_type attribute when attachment attribute is set |  Major | core | Jim Hopper | Mate Juhasz |
| [OOZIE-3496](https://issues.apache.org/jira/browse/OOZIE-3496) | Upgrade ActiveMQ to 5.15.9 |  Minor | . | Andras Salamon | Andras Salamon |
| [OOZIE-3535](https://issues.apache.org/jira/browse/OOZIE-3535) | mapreduce.job.acl-view-job property in Oozie workflow.xml not taking full effect |  Major | . | Kinga Marton | Kinga Marton |
| [OOZIE-3543](https://issues.apache.org/jira/browse/OOZIE-3543) | Upgrade quartz to 2.3.1 |  Blocker | . | Andras Salamon | Mate Juhasz |
| [OOZIE-3544](https://issues.apache.org/jira/browse/OOZIE-3544) | Upgrade commons-beanutils to 1.9.4 |  Major | . | Andras Salamon | Mate Juhasz |
| [OOZIE-3529](https://issues.apache.org/jira/browse/OOZIE-3529) | Oozie not supported for s3 as filesystem |  Critical | core | Dénes Bodó | Dénes Bodó |
| [OOZIE-3542](https://issues.apache.org/jira/browse/OOZIE-3542) | Handle better old Hdfs implementations in ECPolicyDisabler |  Major | tools | Zsombor Gegesy | Zsombor Gegesy |
| [OOZIE-3487](https://issues.apache.org/jira/browse/OOZIE-3487) | Confusing E0820 error message |  Minor | . | Andras Salamon | Mate Juhasz |
| [OOZIE-3552](https://issues.apache.org/jira/browse/OOZIE-3552) | OozieCLI: missing separator in coordinator job output |  Major | client | Alexander Litvinov | Alexander Litvinov |
| [OOZIE-3553](https://issues.apache.org/jira/browse/OOZIE-3553) | [examples] Fix sqoop example |  Critical | . | Andras Salamon | Andras Salamon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3371](https://issues.apache.org/jira/browse/OOZIE-3371) | TestSubWorkflowActionExecutor#testSubWorkflowRerun() is flaky |  Major | core, tests | Andras Piros | Andras Piros |
| [OOZIE-3384](https://issues.apache.org/jira/browse/OOZIE-3384) | [tests] TestWorkflowActionRetryInfoXCommand#testRetryConsoleUrlForked() is flaky |  Major | tests | Andras Piros | Andras Salamon |
| [OOZIE-3400](https://issues.apache.org/jira/browse/OOZIE-3400) | [core] Fix PurgeService sub-sub-workflow checking |  Major | core | Andras Salamon | Andras Salamon |
| [OOZIE-3407](https://issues.apache.org/jira/browse/OOZIE-3407) | [tests] Cleanup TestPurgeXCommand |  Major | tests | Andras Salamon | Andras Salamon |
| [OOZIE-3243](https://issues.apache.org/jira/browse/OOZIE-3243) | [tests] Flaky test TestCoordActionsKillXCommand#testActionKillCommandDate |  Major | . | Peter Bacsko | Andras Salamon |
| [OOZIE-1624](https://issues.apache.org/jira/browse/OOZIE-1624) | Exclusion pattern for sharelib JARs |  Major | . | Purshotam Shah | Mate Juhasz |
| [OOZIE-3466](https://issues.apache.org/jira/browse/OOZIE-3466) | Migrate from com.google.common.io.Closeables to org.apache.commons.io.IOUtils |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3467](https://issues.apache.org/jira/browse/OOZIE-3467) | Migrate from com.google.common.base.Stopwatch |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3488](https://issues.apache.org/jira/browse/OOZIE-3488) | Migrate from guava classes to the base Java implementations |  Major | . | Zsombor Gegesy | Zsombor Gegesy |
| [OOZIE-3485](https://issues.apache.org/jira/browse/OOZIE-3485) | [Java 11] Update Maven Surefire Plugin to 2.22.2 |  Major | . | Kinga Marton | Kinga Marton |
| [OOZIE-3498](https://issues.apache.org/jira/browse/OOZIE-3498) | TestOozieCLI testRetryWithRetryCount and testRetryForTimeout is flaky |  Major | tests | Andras Salamon | Andras Salamon |
| [OOZIE-3500](https://issues.apache.org/jira/browse/OOZIE-3500) | Flaky tests based on WorkflowTestCase |  Major | tests | Andras Salamon | Andras Salamon |
| [OOZIE-3483](https://issues.apache.org/jira/browse/OOZIE-3483) | [Java 11] Fluent job API build fails due to Jaxb2 maven plugin |  Major | . | Kinga Marton | Kinga Marton |
| [OOZIE-3490](https://issues.apache.org/jira/browse/OOZIE-3490) | [Java 11] Remove com.sun:tools dependency from core module |  Major | . | Kinga Marton | Kinga Marton |
| [OOZIE-3489](https://issues.apache.org/jira/browse/OOZIE-3489) | TestBulkWorkflowXCommand.testbulkWfKillSuccess is flaky |  Major | tests | Andras Salamon | Andras Salamon |
| [OOZIE-3499](https://issues.apache.org/jira/browse/OOZIE-3499) | [Java 11] Fix TestLiteWorkflowAppParser |  Major | . | Kinga Marton | Kinga Marton |
| [OOZIE-2879](https://issues.apache.org/jira/browse/OOZIE-2879) | Remove unused class SLAStore and related classes |  Major | . | Peter Bacsko | Andras Salamon |
| [OOZIE-3505](https://issues.apache.org/jira/browse/OOZIE-3505) | [Java 11] Fix TestDBLoadDump |  Major | . | Kinga Marton | Kinga Marton |
| [OOZIE-1855](https://issues.apache.org/jira/browse/OOZIE-1855) | TestPriorityDelayQueue#testPoll failed intermittently in Jenkins |  Major | . | Ostap | Ostap |
| [OOZIE-2907](https://issues.apache.org/jira/browse/OOZIE-2907) | Delete PrepareActionsDriver from oozie-sharelib |  Minor | . | Peter Bacsko | Andras Salamon |
| [OOZIE-3513](https://issues.apache.org/jira/browse/OOZIE-3513) | Migrate from Preconditions.checkNotNull and ParamChecker.notNull |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3522](https://issues.apache.org/jira/browse/OOZIE-3522) | Migrate from Guava's Joiner |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3476](https://issues.apache.org/jira/browse/OOZIE-3476) | Migrate classes without setup/tearDown to JUnit4 |  Minor | tests | Andras Salamon | Andras Salamon |
| [OOZIE-3506](https://issues.apache.org/jira/browse/OOZIE-3506) | Flaky test TestOozieRollingPolicy |  Minor | . | Andras Salamon | Andras Salamon |
| [OOZIE-3504](https://issues.apache.org/jira/browse/OOZIE-3504) | [Java 11] Fix tests using PowerMock |  Major | . | Kinga Marton | Kinga Marton |
| [OOZIE-3533](https://issues.apache.org/jira/browse/OOZIE-3533) | Flaky test TestXLogService.testLog4jReload |  Minor | . | Andras Salamon | Andras Salamon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1702](https://issues.apache.org/jira/browse/OOZIE-1702) | [build] Fix Javadoc warnings |  Minor | build | Mona Chitnis | Dénes Bodó |
| [OOZIE-3381](https://issues.apache.org/jira/browse/OOZIE-3381) | [coordinator] Enhance logging of CoordElFunctions |  Major | coordinator | Andras Piros | Andras Piros |
| [OOZIE-3120](https://issues.apache.org/jira/browse/OOZIE-3120) | Upgrade maven-assembly plugin to v. 3.1.0 |  Major | . | Artem Ervits | Artem Ervits |
| [OOZIE-3395](https://issues.apache.org/jira/browse/OOZIE-3395) | [build] Migration from FindBugs to SpotBugs |  Minor | build | Attila Sasvári | Kinga Marton |
| [OOZIE-3502](https://issues.apache.org/jira/browse/OOZIE-3502) |  Use https when downloading dependencies |  Major | . | Gézapeti | Gézapeti |
| [OOZIE-3265](https://issues.apache.org/jira/browse/OOZIE-3265) | Properties RERUN\_FAIL\_NODES and RERUN\_SKIP\_NODES should be able to appear together |  Minor | . | TIAN XING | Kinga Marton |


