
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
# Changelog

## Release 4.0.0 - 2013-08-30

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1245](https://issues.apache.org/jira/browse/OOZIE-1245) | Add ability to automatically suspend workflow at specified actions |  Major | workflow | Robert Kanter | Robert Kanter |
| [OOZIE-1244](https://issues.apache.org/jira/browse/OOZIE-1244) | SLA Support in Oozie |  Major | monitoring | Rohini Palaniswamy | Ryota Egashira |
| [OOZIE-894](https://issues.apache.org/jira/browse/OOZIE-894) | support for hive in Oozie CLI |  Major | client, workflow | Alejandro Abdelnur | Bowen Zhang |
| [OOZIE-561](https://issues.apache.org/jira/browse/OOZIE-561) | Integrate Oozie with HCatalog |  Major | . | Santhosh Srinivasan | Mona Chitnis |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1480](https://issues.apache.org/jira/browse/OOZIE-1480) | Web-console Workflow Job Info popup should display parent-id field and no empty Nominal time field |  Minor | workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1465](https://issues.apache.org/jira/browse/OOZIE-1465) | Making constants in CoordELFunctions public for el extensions |  Major | . | Shwetha G S | Shwetha G S |
| [OOZIE-1417](https://issues.apache.org/jira/browse/OOZIE-1417) | Exclude **/oozie/store/* **/oozie/examples/* from clover reports |  Major | . | Dennis Y | Dennis Y |
| [OOZIE-1398](https://issues.apache.org/jira/browse/OOZIE-1398) | [Scale] Reduce the number of CLOB columns used |  Major | . | Rohini Palaniswamy | Ryota Egashira |
| [OOZIE-1350](https://issues.apache.org/jira/browse/OOZIE-1350) | Improve client debug output information |  Major | client | Robert Kanter | Robert Kanter |
| [OOZIE-1315](https://issues.apache.org/jira/browse/OOZIE-1315) | Refactor classes from launcher jar into Oozie sharelib |  Major | action, core | Robert Kanter | Robert Kanter |
| [OOZIE-1311](https://issues.apache.org/jira/browse/OOZIE-1311) | Refactor action Main classes into sharelibs |  Major | action, core | Robert Kanter | Robert Kanter |
| [OOZIE-1288](https://issues.apache.org/jira/browse/OOZIE-1288) | Improve docs around -D arguments support in the Oozie CLI's pig subcommand |  Minor | docs | Harsh J | Harsh J |
| [OOZIE-1224](https://issues.apache.org/jira/browse/OOZIE-1224) | web console user interface improvements |  Minor | . | Matthew Ropp |  |
| [OOZIE-1207](https://issues.apache.org/jira/browse/OOZIE-1207) | Optimize current EL resolution in case of start-instance and end-instance |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1204](https://issues.apache.org/jira/browse/OOZIE-1204) | Illustrate correct use of parameters inside SLA tags |  Major | . | Mona Chitnis | jun aoki |
| [OOZIE-1203](https://issues.apache.org/jira/browse/OOZIE-1203) | Oozie web-console to display Bundle job definition, configuration and log tabs |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1118](https://issues.apache.org/jira/browse/OOZIE-1118) | improve logic of purge service |  Major | bundle, coordinator, workflow | Alejandro Abdelnur | Robert Kanter |
| [OOZIE-1045](https://issues.apache.org/jira/browse/OOZIE-1045) | Parameterize \<unresolved-instances\> tag currently hardcoded |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1008](https://issues.apache.org/jira/browse/OOZIE-1008) | Convert Oozie action cookbooks to cwiki pages |  Major | docs | Mona Chitnis | Mona Chitnis |
| [OOZIE-670](https://issues.apache.org/jira/browse/OOZIE-670) | Merge addtowar and oozie-setup scripts into one |  Major | . | Alejandro Abdelnur | Bowen Zhang |
| [OOZIE-611](https://issues.apache.org/jira/browse/OOZIE-611) | distcp action does not have documentation |  Major | . | Alejandro Abdelnur | Robert Kanter |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1960](https://issues.apache.org/jira/browse/OOZIE-1960) | Cannot create a Hive table in ORC format using the Hive action of Oozie |  Major | . | Anuroopa George |  |
| [OOZIE-1514](https://issues.apache.org/jira/browse/OOZIE-1514) | Rerunning a coordinator with no input dependencies puts actions in WAITING instead of READY and proceeding |  Blocker | . | Mona Chitnis | Bowen Zhang |
| [OOZIE-1510](https://issues.apache.org/jira/browse/OOZIE-1510) | Fix branch-4.0 compilation |  Blocker | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1507](https://issues.apache.org/jira/browse/OOZIE-1507) | Command queue filling up with duplicate commands from RecoveryService |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1502](https://issues.apache.org/jira/browse/OOZIE-1502) | Coordinator Job not going to Failed if a bad HCat-uri is specified |  Major | coordinator | Mona Chitnis | Mona Chitnis |
| [OOZIE-1501](https://issues.apache.org/jira/browse/OOZIE-1501) | Mapreduce action counters are picked up from launcher job instead of mapreduce job |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1484](https://issues.apache.org/jira/browse/OOZIE-1484) | Error in DB upgrade when error message exceeds 4K characters |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1482](https://issues.apache.org/jira/browse/OOZIE-1482) | 4.0 client does not work with 3.x server for coord jobs |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1481](https://issues.apache.org/jira/browse/OOZIE-1481) | Getting a coordinator job info with len=0 should return 0 actions |  Major | coordinator | Robert Kanter | Rohini Palaniswamy |
| [OOZIE-1473](https://issues.apache.org/jira/browse/OOZIE-1473) | getKey() not overridden in some commands causing duplicates in queue |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1470](https://issues.apache.org/jira/browse/OOZIE-1470) | BundleStatusUpdateXCommand should get lock for bundle job |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1469](https://issues.apache.org/jira/browse/OOZIE-1469) | loadState() and/or verifyPrecondition() are blank in some commands |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1467](https://issues.apache.org/jira/browse/OOZIE-1467) | Bundle not killed if coordinator fails due to db exception |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1466](https://issues.apache.org/jira/browse/OOZIE-1466) | current EL should not check for less than or equal to zero |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1451](https://issues.apache.org/jira/browse/OOZIE-1451) | CoordActionInputCheckX does a redundant eagerLoadState |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1444](https://issues.apache.org/jira/browse/OOZIE-1444) | Job DAG causes OOM. Remove refresh option |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1439](https://issues.apache.org/jira/browse/OOZIE-1439) | Job materialization happening even after coordinator is supposed to be killed. |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1438](https://issues.apache.org/jira/browse/OOZIE-1438) | parentID is null in job event message of subworkflow action |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1436](https://issues.apache.org/jira/browse/OOZIE-1436) | Revert SLA\_XML and few other varchar columns back to clob |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1435](https://issues.apache.org/jira/browse/OOZIE-1435) | StatusTransitService unnecessarily updates the lastModifiedTime of jobs which causes MaterializationService to bring same jobs in memory |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1433](https://issues.apache.org/jira/browse/OOZIE-1433) | ActionCheckX should override XCommand.getKey() to prevent duplicates |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1427](https://issues.apache.org/jira/browse/OOZIE-1427) | Update CredentialsModule docs to mention Hive |  Minor | docs | Robert Kanter | Robert Kanter |
| [OOZIE-1420](https://issues.apache.org/jira/browse/OOZIE-1420) | OOZIE-1365 breaks the action popup in the Web UI |  Critical | . | Robert Kanter | Michalis Kongtongk |
| [OOZIE-1414](https://issues.apache.org/jira/browse/OOZIE-1414) | Configuring Oozie for HTTPS still allows HTTP connections to all resources |  Blocker | security | Robert Kanter | Robert Kanter |
| [OOZIE-1412](https://issues.apache.org/jira/browse/OOZIE-1412) | Webapp contains all sharedlib dependencies after launcher refactor |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1410](https://issues.apache.org/jira/browse/OOZIE-1410) | V2 servlets are missing from ssl-web.xml |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-1397](https://issues.apache.org/jira/browse/OOZIE-1397) | failure in running test cases |  Major | . | Ryota Egashira | Andrey Klochkov |
| [OOZIE-1395](https://issues.apache.org/jira/browse/OOZIE-1395) | Using Yarn's CapacityScheduler causes some tests to time out |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1392](https://issues.apache.org/jira/browse/OOZIE-1392) | Add commons-io-*.jar to addtowar for hadoop-2.0 |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1387](https://issues.apache.org/jira/browse/OOZIE-1387) | Proxysubmission from the Oozie client doesn't allow the mapreduce API |  Major | client | Robert Kanter | Robert Kanter |
| [OOZIE-1386](https://issues.apache.org/jira/browse/OOZIE-1386) | NPE in XOozieClient if fs.default.name is not defined but fs.defaultFS is |  Major | client | Wing Yew Poon | Wing Yew Poon |
| [OOZIE-1384](https://issues.apache.org/jira/browse/OOZIE-1384) | Make Uber Mode not the default |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1381](https://issues.apache.org/jira/browse/OOZIE-1381) | Oozie does not support access to the distributed cache file under different name node |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1377](https://issues.apache.org/jira/browse/OOZIE-1377) | OpenJPA runtime enhancement should be disabled and update OpenJPA to 2.2.2 |  Major | core | Alejandro Abdelnur | Alejandro Abdelnur |
| [OOZIE-1373](https://issues.apache.org/jira/browse/OOZIE-1373) | Oozie compilation fails with jdk7 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1371](https://issues.apache.org/jira/browse/OOZIE-1371) | oozie.coord.action.notification.url has no documentation |  Major | docs | Robert Kanter | Robert Kanter |
| [OOZIE-1370](https://issues.apache.org/jira/browse/OOZIE-1370) | oozie create db script throws classNotFound exception |  Blocker | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1368](https://issues.apache.org/jira/browse/OOZIE-1368) | Error message when using an incorrect oozie url with kerberos is misleading |  Major | client | Robert Kanter | Robert Kanter |
| [OOZIE-1365](https://issues.apache.org/jira/browse/OOZIE-1365) | The hive action popup in the web UI is broken when externalChildIDs is empty string |  Major | . | Robert Kanter | Michalis Kongtongk |
| [OOZIE-1364](https://issues.apache.org/jira/browse/OOZIE-1364) | Fix duplicate events generated and fields missing in events |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1360](https://issues.apache.org/jira/browse/OOZIE-1360) | Oozie CLI shows created time of workflow as started time |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1359](https://issues.apache.org/jira/browse/OOZIE-1359) | mention default value of throttle in doc |  Trivial | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1357](https://issues.apache.org/jira/browse/OOZIE-1357) | Can't view more than 1000 actions of a coordinator and paging does not work |  Major | . | Rohini Palaniswamy | Ryota Egashira |
| [OOZIE-1356](https://issues.apache.org/jira/browse/OOZIE-1356) | Bundle job in PAUSEWITHERROR state does not goto SUSPENDEDWITHERROR state on suspending it |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1353](https://issues.apache.org/jira/browse/OOZIE-1353) | hive CLI fails with -X argument |  Major | . | Bowen Zhang | Robert Kanter |
| [OOZIE-1351](https://issues.apache.org/jira/browse/OOZIE-1351) | Oozie jobs with state PAUSEDWITHERROR should change to SUSPENDEDWITHERROR state when suspended |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1349](https://issues.apache.org/jira/browse/OOZIE-1349) | oozieCLI -Doozie.auth.token.cache doesn't work |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1348](https://issues.apache.org/jira/browse/OOZIE-1348) | log warning in CoordElFunctions.java doesn't tag job id after OOZIE-1073 |  Minor | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1347](https://issues.apache.org/jira/browse/OOZIE-1347) | Additions to JMS topic API |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1346](https://issues.apache.org/jira/browse/OOZIE-1346) | Modularize hbase credentials to separate the populating of jobconf and  obtaining token for job |  Minor | . | Virag Kothari | Virag Kothari |
| [OOZIE-1344](https://issues.apache.org/jira/browse/OOZIE-1344) | We should use Sqoop 1.4.3 instead of 1.5.0-incubating-SNAPSHOT |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1343](https://issues.apache.org/jira/browse/OOZIE-1343) | Sqoop sharelib should have hsqldb jar |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-1341](https://issues.apache.org/jira/browse/OOZIE-1341) | Have Action Main classes in Oozie webapp |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1337](https://issues.apache.org/jira/browse/OOZIE-1337) | HadoopAccessorService has two static methods so you can't override them with another implementation |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1335](https://issues.apache.org/jira/browse/OOZIE-1335) | The launcher job should use uber mode in Hadoop 2 by default |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1333](https://issues.apache.org/jira/browse/OOZIE-1333) | Some testcases related to EventHandlerService are failing in a transient way |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1332](https://issues.apache.org/jira/browse/OOZIE-1332) | Flakey test TestActionCheckXCommand.testActionCheckTransientDuringMRAction |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1326](https://issues.apache.org/jira/browse/OOZIE-1326) | sharelib tests failing saying error on fork after OOZIE-1311 refactor |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1323](https://issues.apache.org/jira/browse/OOZIE-1323) | HTTPS docs lists the same step twice for creating a self-signed certificate |  Major | docs | Robert Kanter | Robert Kanter |
| [OOZIE-1322](https://issues.apache.org/jira/browse/OOZIE-1322) | show child job URL tab selectively for pig action |  Minor | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1320](https://issues.apache.org/jira/browse/OOZIE-1320) | Tests for sharelib actions fail with ClassNotFoundException against Hadoop 2 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1318](https://issues.apache.org/jira/browse/OOZIE-1318) | Action Main classes should be overridable via action configuration settings |  Major | action, core | Robert Kanter | Robert Kanter |
| [OOZIE-1317](https://issues.apache.org/jira/browse/OOZIE-1317) | TestEventGeneration.testCoordinatorActionEvent fails |  Blocker | tests | Robert Kanter | Mona Chitnis |
| [OOZIE-1300](https://issues.apache.org/jira/browse/OOZIE-1300) | [Doc] Error in the the email action XML schema |  Trivial | docs | Harsh J | Harsh J |
| [OOZIE-1297](https://issues.apache.org/jira/browse/OOZIE-1297) | Add chgrp in FS action |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1291](https://issues.apache.org/jira/browse/OOZIE-1291) | TestHadoopAccessorService.testGetMRDelegationTokenRenewer fails against Yarn |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1286](https://issues.apache.org/jira/browse/OOZIE-1286) | SSH Action does not properly handle arguments that have spaces |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-1281](https://issues.apache.org/jira/browse/OOZIE-1281) | Hiveaction should populate externalChildIDs |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1278](https://issues.apache.org/jira/browse/OOZIE-1278) | oozie example datelist-java-main has job property typo and has no lib directory for examples.jar |  Minor | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1274](https://issues.apache.org/jira/browse/OOZIE-1274) | change recovery service interval to make it consistent with oozie-default.xml |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1272](https://issues.apache.org/jira/browse/OOZIE-1272) | Two workflow jobs mapped to a single coordinator action |  Major | . | Virag Kothari | Ryota Egashira |
| [OOZIE-1270](https://issues.apache.org/jira/browse/OOZIE-1270) | Querying job directly does not pop correct information for coordinator and bundle |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1264](https://issues.apache.org/jira/browse/OOZIE-1264) | The "parent" property of a subworkflow should be the ID of the parent workflow |  Major | workflow | Robert Kanter | Robert Kanter |
| [OOZIE-1246](https://issues.apache.org/jira/browse/OOZIE-1246) | appname need to be persisted on SLA event table by SLA status event |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1237](https://issues.apache.org/jira/browse/OOZIE-1237) | Bump up trunk to 4.0.0-SNAPSHOT |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1231](https://issues.apache.org/jira/browse/OOZIE-1231) | Provide access to launcher job URL from web console when using Map Reduce action |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1215](https://issues.apache.org/jira/browse/OOZIE-1215) | add note of using escape for oozie jobs filters in doc |  Trivial | docs | Ryota Egashira | Ryota Egashira |
| [OOZIE-1208](https://issues.apache.org/jira/browse/OOZIE-1208) | Oozie web-console when displaying Coord Job Log for an action gives Format Error |  Major | . | Mona Chitnis | Rohini Palaniswamy |
| [OOZIE-1205](https://issues.apache.org/jira/browse/OOZIE-1205) | If the JobTracker is restarted during a Fork, Oozie doesn't fail all of the currently running actions |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-1191](https://issues.apache.org/jira/browse/OOZIE-1191) | add examples of coordinator with SLA tag inserted |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1183](https://issues.apache.org/jira/browse/OOZIE-1183) | Update WebServices API documentation |  Major | docs | Robert Kanter | Robert Kanter |
| [OOZIE-1180](https://issues.apache.org/jira/browse/OOZIE-1180) | Separate the connection context details from JMS Accessor service |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1146](https://issues.apache.org/jira/browse/OOZIE-1146) | FileSystem used by prepare sections should use the configuration of the action |  Major | action, workflow | Shaik Idris Ali | Rohini Palaniswamy |
| [OOZIE-1096](https://issues.apache.org/jira/browse/OOZIE-1096) | Update wfgen README.txt to have the TLP mailing list |  Trivial | docs | Robert Kanter | jun aoki |
| [OOZIE-1037](https://issues.apache.org/jira/browse/OOZIE-1037) | XTestCase.delete() can cause tests to fail if it runs into a dangling symlink |  Minor | . | Robert Kanter | Robert Kanter |
| [OOZIE-1007](https://issues.apache.org/jira/browse/OOZIE-1007) | Add license headers to all files don't have them |  Blocker | . | Alejandro Abdelnur | Ryota Egashira |
| [OOZIE-979](https://issues.apache.org/jira/browse/OOZIE-979) | bump up trunk version to 3.4.0-SNAPSHOT |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [OOZIE-966](https://issues.apache.org/jira/browse/OOZIE-966) | Fix formatting in CLI output when GMT-#### and GMT-##:## formatted timezones are used |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-897](https://issues.apache.org/jira/browse/OOZIE-897) | remove special build handling for sqoop testcase |  Major | build | Alejandro Abdelnur | Robert Kanter |
| [OOZIE-809](https://issues.apache.org/jira/browse/OOZIE-809) | MySQL TEXT columns should be MEDIUMTEXT |  Major | . | Shwetha G S | Robert Kanter |
| [OOZIE-674](https://issues.apache.org/jira/browse/OOZIE-674) | resolveInstanceRange doesn't work for EL extensions |  Major | . | Shwetha G S | Shwetha G S |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1329](https://issues.apache.org/jira/browse/OOZIE-1329) | fix coverage org.apache.oozie.tools |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |
| [OOZIE-1328](https://issues.apache.org/jira/browse/OOZIE-1328) | Cover package org.apache.oozie.cli  with unit tests |  Minor | . | Vadim Bondarev | Vadim Bondarev |
| [OOZIE-1327](https://issues.apache.org/jira/browse/OOZIE-1327) | enhance unit-test coverage of package org.apache.oozie |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [OOZIE-1316](https://issues.apache.org/jira/browse/OOZIE-1316) | fix coverage org.apache.oozie.action.hadoop |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |
| [OOZIE-1313](https://issues.apache.org/jira/browse/OOZIE-1313) | coverage fix for org.apache.oozie.client |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |
| [OOZIE-1307](https://issues.apache.org/jira/browse/OOZIE-1307) | Cover package org.apache.oozie.action.ssh with unit tests |  Minor | . | Vadim Bondarev | Vadim Bondarev |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1479](https://issues.apache.org/jira/browse/OOZIE-1479) | Duplicate end\_miss events introduced by OOZIE-1472 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1472](https://issues.apache.org/jira/browse/OOZIE-1472) | Confirm against database before generating start and duration miss events |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1450](https://issues.apache.org/jira/browse/OOZIE-1450) | Duplicate Coord\_Action events on Waiting -\> Timeout, and Coord Materialize not removing actions on Failure |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1441](https://issues.apache.org/jira/browse/OOZIE-1441) | Fix bugs related to coordchange and parentId in events |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1430](https://issues.apache.org/jira/browse/OOZIE-1430) | Documentation for job notifications |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1429](https://issues.apache.org/jira/browse/OOZIE-1429) | Fix bugs in SLA UI |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1426](https://issues.apache.org/jira/browse/OOZIE-1426) | Fix bugs in SLA UI |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1424](https://issues.apache.org/jira/browse/OOZIE-1424) | Improve SLA reliability on restart, fix bugs related to SLA and event generation |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1423](https://issues.apache.org/jira/browse/OOZIE-1423) | Coordinator job change command not removing SLA Registration bean |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1422](https://issues.apache.org/jira/browse/OOZIE-1422) | fix bug in SLARegistrationBean and CoordActionsCountForJobIdJPAExecutor |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1421](https://issues.apache.org/jira/browse/OOZIE-1421) | UI for SLA |  Major | . | Rohini Palaniswamy | Virag Kothari |
| [OOZIE-1418](https://issues.apache.org/jira/browse/OOZIE-1418) | Fix bugs around ActionKillX not setting end time, V2SLAServlet and exception handling for event threads |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1408](https://issues.apache.org/jira/browse/OOZIE-1408) | Change column type of "frequency" from int to varchar for coordinators |  Critical | coordinator | Robert Kanter | Robert Kanter |
| [OOZIE-1405](https://issues.apache.org/jira/browse/OOZIE-1405) | Fix flakey SLA tests |  Major | . | Rohini Palaniswamy | Mona Chitnis |
| [OOZIE-1404](https://issues.apache.org/jira/browse/OOZIE-1404) | Handle reruns for SLA notifications |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1400](https://issues.apache.org/jira/browse/OOZIE-1400) | REST API to fetch SLA |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1394](https://issues.apache.org/jira/browse/OOZIE-1394) | Fix Bugs in Job and SLA Events |  Minor | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1375](https://issues.apache.org/jira/browse/OOZIE-1375) | Generate Job notification events for Workflow Actions |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1361](https://issues.apache.org/jira/browse/OOZIE-1361) | Remove SLACalculatorBean and add columns to SummaryBean indicating events processed and sla processed |  Minor | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1339](https://issues.apache.org/jira/browse/OOZIE-1339) | Implement SLA Bootstrap Service and fix bugs in SLACalculator |  Major | . | Ryota Egashira | Virag Kothari |
| [OOZIE-1331](https://issues.apache.org/jira/browse/OOZIE-1331) | URIHandlerService not allowing relative path for URI's |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1303](https://issues.apache.org/jira/browse/OOZIE-1303) | CLI API for Bulk Monitoring |  Major | bundle, coordinator, workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1296](https://issues.apache.org/jira/browse/OOZIE-1296) | SLA JMS Event Listener for publishing notifications related to SLA information |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1294](https://issues.apache.org/jira/browse/OOZIE-1294) | SLA Email Notification |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1280](https://issues.apache.org/jira/browse/OOZIE-1280) | CoordPushDependencyCheck queued by Recovery Services doesn't remove dependencies from cache |  Major | . | Virag Kothari | Rohini Palaniswamy |
| [OOZIE-1277](https://issues.apache.org/jira/browse/OOZIE-1277) | CoordActionInputCheck requeues itself even if only push missing dependencies exist |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1269](https://issues.apache.org/jira/browse/OOZIE-1269) | Exception in push dependency check when there is also a pull dependency leaves it in waiting till timeout |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1267](https://issues.apache.org/jira/browse/OOZIE-1267) | Dryrun option for push missing deps |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1263](https://issues.apache.org/jira/browse/OOZIE-1263) | Fix few HCat dependency check issues |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1261](https://issues.apache.org/jira/browse/OOZIE-1261) | Registered push dependencies are not removed on Coord Kill command |  Major | . | Rohini Palaniswamy | Virag Kothari |
| [OOZIE-1255](https://issues.apache.org/jira/browse/OOZIE-1255) | latest/future check for hcat can cause shutdown to hang |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1253](https://issues.apache.org/jira/browse/OOZIE-1253) | latest() gets resolved before all push dependencies are resolved |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1251](https://issues.apache.org/jira/browse/OOZIE-1251) | Log messages for DependencyChecker class show wrong jobid and actionid |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1250](https://issues.apache.org/jira/browse/OOZIE-1250) | Coord action timeout not happening when there is a exception |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1249](https://issues.apache.org/jira/browse/OOZIE-1249) | SLA Documentation |  Minor | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1247](https://issues.apache.org/jira/browse/OOZIE-1247) | CoordActionInputCheck shouldn't queue CoordPushInputCheck |  Major | . | Virag Kothari | Rohini Palaniswamy |
| [OOZIE-1238](https://issues.apache.org/jira/browse/OOZIE-1238) | CoordPushCheck doesn't evaluate the configuration section which is propogated to workflow |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1235](https://issues.apache.org/jira/browse/OOZIE-1235) | Client API for retrieving topic and jms connection related details |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1234](https://issues.apache.org/jira/browse/OOZIE-1234) | JMS Event Listeners for publishing notifications related to workflow and coordinator |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1218](https://issues.apache.org/jira/browse/OOZIE-1218) | Create a HCatalog Integration Guide |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1217](https://issues.apache.org/jira/browse/OOZIE-1217) | Address review comments in OOZIE-1210 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1210](https://issues.apache.org/jira/browse/OOZIE-1210) | Rework uri handling for Prepare actions and jms server mapping |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1209](https://issues.apache.org/jira/browse/OOZIE-1209) | Event generation and handling for workflow and coordinator |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1197](https://issues.apache.org/jira/browse/OOZIE-1197) | Create a hcat sharelib which can be included in pig, hive and java actions |  Major | . | Mona Chitnis | Rohini Palaniswamy |
| [OOZIE-1196](https://issues.apache.org/jira/browse/OOZIE-1196) | HCat EL functions for database and table should be modified |  Major | coordinator | Mona Chitnis | Mona Chitnis |
| [OOZIE-1185](https://issues.apache.org/jira/browse/OOZIE-1185) | Retry jms connections on failure |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1181](https://issues.apache.org/jira/browse/OOZIE-1181) | Dependency cache with configurations for eviction, ttl and max elements in memory |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1168](https://issues.apache.org/jira/browse/OOZIE-1168) | Reliability and retry for JMS connections |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1167](https://issues.apache.org/jira/browse/OOZIE-1167) | Fix and rework PartitionDependency Management |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1158](https://issues.apache.org/jira/browse/OOZIE-1158) | Add hcataloglib sub-module |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1157](https://issues.apache.org/jira/browse/OOZIE-1157) | EL function hcat:exists for decision making |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1156](https://issues.apache.org/jira/browse/OOZIE-1156) | Make all the latest/future instances as pull dependences |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1150](https://issues.apache.org/jira/browse/OOZIE-1150) | DB upgrade scripts for hcat changes |  Major | . | Rohini Palaniswamy | Ryota Egashira |
| [OOZIE-1145](https://issues.apache.org/jira/browse/OOZIE-1145) | Modify Recovery Service to handle push missing dependencies |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1141](https://issues.apache.org/jira/browse/OOZIE-1141) | Escaping Ampersand in the HCat URI to bypass XML validation |  Major | . | Mona Chitnis | Rohini Palaniswamy |
| [OOZIE-1138](https://issues.apache.org/jira/browse/OOZIE-1138) |  Provide rule based mechanism to allow multiple hcatalog servers to connect to JMS server |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1135](https://issues.apache.org/jira/browse/OOZIE-1135) | Display missing partition dependencies via job -info command on CLI |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1125](https://issues.apache.org/jira/browse/OOZIE-1125) | Prepare actions for hcat |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1123](https://issues.apache.org/jira/browse/OOZIE-1123) | EL Functions for hcatalog |  Major | . | Rohini Palaniswamy | Mona Chitnis |
| [OOZIE-1111](https://issues.apache.org/jira/browse/OOZIE-1111) | change HCatURI to specify partitions in path instead of query parameter |  Major | . | Ryota Egashira | Rohini Palaniswamy |
| [OOZIE-1109](https://issues.apache.org/jira/browse/OOZIE-1109) | The size of the map cache in PartitionDependencyManagerService should be configurable |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1108](https://issues.apache.org/jira/browse/OOZIE-1108) | Fix JMS message consumer to maintain single session per topic registration |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1107](https://issues.apache.org/jira/browse/OOZIE-1107) | Change default done-flag from \_SUCCESS to empty for Hcat |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-1105](https://issues.apache.org/jira/browse/OOZIE-1105) | Resolve issues found in integration |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-1097](https://issues.apache.org/jira/browse/OOZIE-1097) | Revert OOZIE-1095 once dependent HCat jar mavenized |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1095](https://issues.apache.org/jira/browse/OOZIE-1095) | Add HCatalog jar as resource for building |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1086](https://issues.apache.org/jira/browse/OOZIE-1086) | Command to check the missing partitions directly against HCatalog server |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-1075](https://issues.apache.org/jira/browse/OOZIE-1075) | Create general scheme handler |  Major | . | Ryota Egashira | Rohini Palaniswamy |
| [OOZIE-1069](https://issues.apache.org/jira/browse/OOZIE-1069) | Update dataIn and dataOut EL functions to support partitions |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-1068](https://issues.apache.org/jira/browse/OOZIE-1068) | Metadata Accessor service for HCatalog |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-1061](https://issues.apache.org/jira/browse/OOZIE-1061) | Add new EL function to retrieve HCatalog server, DB and table name |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-1059](https://issues.apache.org/jira/browse/OOZIE-1059) | Add static method to create URI String in HCatURI |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1056](https://issues.apache.org/jira/browse/OOZIE-1056) | Command to update push-based dependency |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-1050](https://issues.apache.org/jira/browse/OOZIE-1050) | Implement logic to update dependencies via push JMS message |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1044](https://issues.apache.org/jira/browse/OOZIE-1044) | Parameterize \<uris\> tag currently hardcoded |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1043](https://issues.apache.org/jira/browse/OOZIE-1043) | Add logic to register to Missing Dependency Structure in coord action materialization |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1042](https://issues.apache.org/jira/browse/OOZIE-1042) | Coordinator action table schema change |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-1039](https://issues.apache.org/jira/browse/OOZIE-1039) | Implement the Missing Dependency structure for HCat partitions |  Major | core | Mona Chitnis | Mona Chitnis |
| [OOZIE-1036](https://issues.apache.org/jira/browse/OOZIE-1036) | Utility class to parse HCat URI |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1033](https://issues.apache.org/jira/browse/OOZIE-1033) | Generic utility class to register/unregister a JMS message handler |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-1032](https://issues.apache.org/jira/browse/OOZIE-1032) | Create JMSService used for any JMS compliant product |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [OOZIE-976](https://issues.apache.org/jira/browse/OOZIE-976) | add workflowgenerator into distro tarball |  Major | tools | Ryota Egashira | Ryota Egashira |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1374](https://issues.apache.org/jira/browse/OOZIE-1374) | Make all unit tests run with Hadoop 2 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1352](https://issues.apache.org/jira/browse/OOZIE-1352) | Write documentation for OOzie Hive CLI |  Major | . | Bowen Zhang | Robert Kanter |
| [OOZIE-1292](https://issues.apache.org/jira/browse/OOZIE-1292) | Add Hadoop 0.23 Poms in hadooplibs to enable a build/tests against branch 0.23 |  Major | tests | Mona Chitnis | Mona Chitnis |
| [OOZIE-1239](https://issues.apache.org/jira/browse/OOZIE-1239) | Bump up trunk to 4.1.0-SNAPSHOT |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1083](https://issues.apache.org/jira/browse/OOZIE-1083) | Help -\> About dialog box |  Trivial | workflow | jun aoki | jun aoki |
| [OOZIE-1078](https://issues.apache.org/jira/browse/OOZIE-1078) | Help -\> Documentation and Help -\> Online Help should link to oozie.apache.org/ |  Trivial | workflow | jun aoki | jun aoki |


