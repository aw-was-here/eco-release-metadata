
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
# Apache Falcon Changelog

## Release 0.8 - 2015-11-15

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1401](https://issues.apache.org/jira/browse/FALCON-1401) | MetadataMappingService fails to add an edge for a process instance |  Minor | . | Pallavi Rao | Pallavi Rao |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1027](https://issues.apache.org/jira/browse/FALCON-1027) | Falcon REST API trusted proxy support |  Major | . | kenneth ho | Sowmya Ramesh |
| [FALCON-965](https://issues.apache.org/jira/browse/FALCON-965) | Open up life cycle stage implementation within Falcon for extension |  Major | . | Srikanth Sundarrajan | Ajay Yadava |
| [FALCON-1477](https://issues.apache.org/jira/browse/FALCON-1477) | Adding "-debug" option to Falcon CLI for debug statements to stdout. |  Major | . | Narayan Periwal | Narayan Periwal |
| [FALCON-1315](https://issues.apache.org/jira/browse/FALCON-1315) | Update falcon ui for HiveDR, secure clusters and bug fixes |  Major | falcon-ui, ui | Venkat Ranganathan | Venkat Ranganathan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-348](https://issues.apache.org/jira/browse/FALCON-348) | Add shutdown hook for Falcon |  Major | webapp | Venkatesh Seetharam | sandeep samudrala |
| [FALCON-1381](https://issues.apache.org/jira/browse/FALCON-1381) | The webservice response of Falcon includes a stack trace in case of errors |  Major | . | Pallavi Rao | Narayan Periwal |
| [FALCON-1403](https://issues.apache.org/jira/browse/FALCON-1403) | Revisit IT cleanup and teardown |  Major | . | Narayan Periwal | Narayan Periwal |
| [FALCON-1417](https://issues.apache.org/jira/browse/FALCON-1417) | Make validity end date optional for feed / process |  Major | . | Ajay Yadava | Pragya Mittal |
| [FALCON-438](https://issues.apache.org/jira/browse/FALCON-438) | Auto generate documentation for REST API |  Major | docs | Venkatesh Seetharam | Narayan Periwal |
| [FALCON-1502](https://issues.apache.org/jira/browse/FALCON-1502) | Checkstyle failures in Falcon Regression |  Major | merlin | Ajay Yadava | Pragya Mittal |
| [FALCON-1527](https://issues.apache.org/jira/browse/FALCON-1527) | Release Falcon Unit test jar |  Major | general | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1524](https://issues.apache.org/jira/browse/FALCON-1524) | Improve Lifecycle Retention validation checks |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1551](https://issues.apache.org/jira/browse/FALCON-1551) | Implement setWorkingDir Method in JailedFileSystem |  Major | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1582](https://issues.apache.org/jira/browse/FALCON-1582) | Documentation for globally disabling retries |  Major | docs | Pragya Mittal | Pallavi Rao |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1421](https://issues.apache.org/jira/browse/FALCON-1421) | checkColos should be a no-op for embedded mode |  Major | client | Sowmya Ramesh | Venkat Ranganathan |
| [FALCON-1416](https://issues.apache.org/jira/browse/FALCON-1416) | Add ACL (if missing) during touch |  Major | . | Ajay Yadava | Narayan Periwal |
| [FALCON-1429](https://issues.apache.org/jira/browse/FALCON-1429) | Fix Falcon monitoring, alert, audit and monitoring plugins by fixing aspectj handling |  Major | . | Venkat Ranganathan | Venkat Ranganathan |
| [FALCON-1410](https://issues.apache.org/jira/browse/FALCON-1410) | Entity submit fails when multiple threads try submitting same definition |  Major | prism | Pragya Mittal | sandeep samudrala |
| [FALCON-1365](https://issues.apache.org/jira/browse/FALCON-1365) | HCatReplication job fails with AccessControlException |  Major | replication | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1402](https://issues.apache.org/jira/browse/FALCON-1402) | Validate cmd throws NPE when source cluster and any one of target cluster doesn't have overlapping dates |  Major | oozie | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1371](https://issues.apache.org/jira/browse/FALCON-1371) | Status of scheduled Process entity is shown as submitted in corner case |  Major | . | Balu Vellanki | Balu Vellanki |
| [FALCON-1415](https://issues.apache.org/jira/browse/FALCON-1415) | Hive DR process fail if there are no events available from source table |  Major | replication | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1438](https://issues.apache.org/jira/browse/FALCON-1438) | Falcon RestAPI - In case of error falcon responds with FalconWebException::null |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-1445](https://issues.apache.org/jira/browse/FALCON-1445) | Docfix for api/instance/dependencies endpoint |  Major | docs | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1443](https://issues.apache.org/jira/browse/FALCON-1443) | NPE in shutdown hook |  Minor | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1446](https://issues.apache.org/jira/browse/FALCON-1446) | Flaky TaskLogRetrieverYarnTest |  Major | . | Ajay Yadava | Narayan Periwal |
| [FALCON-1461](https://issues.apache.org/jira/browse/FALCON-1461) | NPE in DateValidator.validate() |  Major | client | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1442](https://issues.apache.org/jira/browse/FALCON-1442) | Contract of WorkflowEngine API broken |  Major | . | Pallavi Rao | Balu Vellanki |
| [FALCON-1331](https://issues.apache.org/jira/browse/FALCON-1331) | Update Failed for an entity and further updates are not possible as lock is not released |  Major | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1465](https://issues.apache.org/jira/browse/FALCON-1465) | Cluster submission fails with java.lang.IllegalArgumentException in distributed mode |  Major | prism | Pragya Mittal | Ajay Yadava |
| [FALCON-1373](https://issues.apache.org/jira/browse/FALCON-1373) | HiveDR  does not work when job is run on destination cluster |  Major | replication | Balu Vellanki | Balu Vellanki |
| [FALCON-1484](https://issues.apache.org/jira/browse/FALCON-1484) | Find Bundles fails in case of hadoop namenode moving to HA |  Major | common | sandeep samudrala | sandeep samudrala |
| [FALCON-1462](https://issues.apache.org/jira/browse/FALCON-1462) | Modify use of "testuser" in UTs and ITs |  Minor | . | Pallavi Rao | Narayan Periwal |
| [FALCON-1470](https://issues.apache.org/jira/browse/FALCON-1470) | HiveDRStatusStoreTest should fail when using fakeGroup to create StatusStore |  Major | replication | Balu Vellanki | Balu Vellanki |
| [FALCON-1489](https://issues.apache.org/jira/browse/FALCON-1489) | Partial status http response code returns 200 |  Major | regression | Pragya Mittal | Pragya Mittal |
| [FALCON-1499](https://issues.apache.org/jira/browse/FALCON-1499) | Lifecycle Retention Issues |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1339](https://issues.apache.org/jira/browse/FALCON-1339) | List feed entities shows scheduled Feed entities as submitted |  Critical | . | Balu Vellanki | Balu Vellanki |
| [FALCON-1487](https://issues.apache.org/jira/browse/FALCON-1487) | In secure cluster setup Hcat process/feed scheduling or replication fails |  Major | replication | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1491](https://issues.apache.org/jira/browse/FALCON-1491) | Update ActiveMQ version to 5.12 |  Major | . | Venkat Ranganathan | Peeyush Bishnoi |
| [FALCON-1509](https://issues.apache.org/jira/browse/FALCON-1509) | Auto generation of REST API does not work in distributed mode. |  Major | docs | Pragya Mittal | Narayan Periwal |
| [FALCON-1514](https://issues.apache.org/jira/browse/FALCON-1514) | Incorrect logging while submitting cluster |  Major | prism | Pragya Mittal | sandeep samudrala |
| [FALCON-1518](https://issues.apache.org/jira/browse/FALCON-1518) | Temporarily comment getTotalEnqueueCount in JMSMessageConsumerTest |  Major | messaging | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1532](https://issues.apache.org/jira/browse/FALCON-1532) | Incorrect documentation in SLA monitoring |  Major | docs | Pragya Mittal | Pragya Mittal |
| [FALCON-1157](https://issues.apache.org/jira/browse/FALCON-1157) | Build error when using maven 3.3.x |  Major | ui | Venkatesan Ramachandran | Venkatesan Ramachandran |
| [FALCON-1530](https://issues.apache.org/jira/browse/FALCON-1530) | SLAMonitoring API is not honouring delete feature |  Major | . | Pragya Mittal | Ajay Yadava |
| [FALCON-1529](https://issues.apache.org/jira/browse/FALCON-1529) | SLAMonitoring API non-intuitive response |  Major | . | Pragya Mittal | Ajay Yadava |
| [FALCON-1543](https://issues.apache.org/jira/browse/FALCON-1543) | Upgrade Falcon regression to use Active MQ 5.12 |  Major | merlin | Pragya Mittal | Pragya Mittal |
| [FALCON-1526](https://issues.apache.org/jira/browse/FALCON-1526) | Entity Updates are happening multiple times in a single update command |  Major | prism | Pragya Mittal | Ajay Yadava |
| [FALCON-1541](https://issues.apache.org/jira/browse/FALCON-1541) | Bundle deploy.properties while packaging falcon |  Major | . | Pragya Mittal | Pragya Mittal |
| [FALCON-1555](https://issues.apache.org/jira/browse/FALCON-1555) | succeeded-post-processing action fails in Oozie uber mode |  Major | . | Pragya Mittal | Pragya Mittal |
| [FALCON-1558](https://issues.apache.org/jira/browse/FALCON-1558) | Sla API shows pending instance although \_SUCCESS directory is present |  Major | . | Pragya Mittal | Pragya Mittal |
| [FALCON-1556](https://issues.apache.org/jira/browse/FALCON-1556) | Falcon build fails when building with hivedr profile |  Blocker | . | Sowmya Ramesh | Venkat Ranganathan |
| [FALCON-1560](https://issues.apache.org/jira/browse/FALCON-1560) | Lifecycle does not allow feed with frequency greater than days(1) |  Major | . | Pragya Mittal | Ajay Yadava |
| [FALCON-1564](https://issues.apache.org/jira/browse/FALCON-1564) | Provide an option for users to disable system post-processing JMS notification |  Blocker | rerun | Peeyush Bishnoi | Pallavi Rao |
| [FALCON-1579](https://issues.apache.org/jira/browse/FALCON-1579) | post-processing action fails with javax.servlet.jsp.el.ELException |  Major | oozie | Pragya Mittal | Sowmya Ramesh |
| [FALCON-1563](https://issues.apache.org/jira/browse/FALCON-1563) | Old feed instances get deleted from SLA monitoring on feed update |  Blocker | prism | Pragya Mittal | Ajay Yadava |
| [FALCON-1585](https://issues.apache.org/jira/browse/FALCON-1585) | Add Falcon recipes DR document |  Major | docs | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-570](https://issues.apache.org/jira/browse/FALCON-570) | Falcon needs to publish maven artifacts |  Blocker | . | Raghav Kumar Gautam | Shwetha G S |
| [FALCON-298](https://issues.apache.org/jira/browse/FALCON-298) | Feed update with replication delay creates holes |  Major | . | Shwetha G S | sandeep samudrala |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1387](https://issues.apache.org/jira/browse/FALCON-1387) |  Add Instance Dependency API Test |  Major | feed, merlin, process | Pragya Mittal | Pragya Mittal |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1413](https://issues.apache.org/jira/browse/FALCON-1413) | Filter By throws wrong error in case of wrong argument being passed |  Minor | client | Narayan Periwal | Narayan Periwal |
| [FALCON-1414](https://issues.apache.org/jira/browse/FALCON-1414) | Add all fields in filterBy to the entity list output. |  Minor | client | Narayan Periwal | Narayan Periwal |
| [FALCON-1418](https://issues.apache.org/jira/browse/FALCON-1418) | Update Rest API twiki for proxy support |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1449](https://issues.apache.org/jira/browse/FALCON-1449) | Move getEntityProperties method to EntityUtil |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1205](https://issues.apache.org/jira/browse/FALCON-1205) | SLAService to keep track of missing SLAs for feeds |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1342](https://issues.apache.org/jira/browse/FALCON-1342) | Do not allow duplicate properties in cluster entities |  Major | general | Balu Vellanki | Balu Vellanki |
| [FALCON-1460](https://issues.apache.org/jira/browse/FALCON-1460) | Move getHiveCredentials method to ClusterHelper |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1425](https://issues.apache.org/jira/browse/FALCON-1425) | Provide Email based plugin to send Notification once instance completed |  Major | common | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1434](https://issues.apache.org/jira/browse/FALCON-1434) | Enhance schedule API to accept key-value properties |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1408](https://issues.apache.org/jira/browse/FALCON-1408) | Add more logging information for failing ClusterEntityValidationIT |  Major | . | Ajay Yadava | pavan kumar kolamuri |
| [FALCON-1426](https://issues.apache.org/jira/browse/FALCON-1426) | Add documentation for Falcon Email notification |  Major | docs | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1343](https://issues.apache.org/jira/browse/FALCON-1343) | Fix validation of read/write endpoints in ClusterEntityParser. |  Major | general | Balu Vellanki | Balu Vellanki |
| [FALCON-1437](https://issues.apache.org/jira/browse/FALCON-1437) | Change DR recipes notification with Falcon notification |  Major | common | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1483](https://issues.apache.org/jira/browse/FALCON-1483) | Add Utils to common to support native scheduler |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1472](https://issues.apache.org/jira/browse/FALCON-1472) | Improvements in SLA service |  Major | . | Pallavi Rao | Ajay Yadava |
| [FALCON-1475](https://issues.apache.org/jira/browse/FALCON-1475) | Separate SLA monitoring logs from application logs |  Major | . | Pragya Mittal | Ajay Yadava |
| [FALCON-1474](https://issues.apache.org/jira/browse/FALCON-1474) | Handling FileNotFoundException on SLA Monitoring service start |  Major | . | Pragya Mittal | Ajay Yadava |
| [FALCON-1473](https://issues.apache.org/jira/browse/FALCON-1473) | Feed SLA Miss Alerts through REST API |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1469](https://issues.apache.org/jira/browse/FALCON-1469) | Flaky EntityManagerJerseyIT#testDuplicateSubmitCommands |  Major | . | Ajay Yadava | sandeep samudrala |
| [FALCON-1476](https://issues.apache.org/jira/browse/FALCON-1476) | Maintaining threshold on monitoring entities for SLA service |  Major | . | Pragya Mittal | Ajay Yadava |
| [FALCON-1231](https://issues.apache.org/jira/browse/FALCON-1231) | Improve JobCompletionNotification Service |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1466](https://issues.apache.org/jira/browse/FALCON-1466) | Flaky test in Proxy user feature UT's |  Major | . | Pallavi Rao | Sowmya Ramesh |
| [FALCON-1316](https://issues.apache.org/jira/browse/FALCON-1316) | Add supporting REST API calls for new UI |  Major | . | Venkat Ranganathan | Balu Vellanki |
| [FALCON-1102](https://issues.apache.org/jira/browse/FALCON-1102) | Gather data transfer details of filesystem replication |  Major | . | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1537](https://issues.apache.org/jira/browse/FALCON-1537) | Update the documents for maven upgrade |  Major | falcon-ui, ui | Sowmya Ramesh | Venkat Ranganathan |
| [FALCON-1455](https://issues.apache.org/jira/browse/FALCON-1455) | Create branch 0.8 |  Major | general | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1519](https://issues.apache.org/jira/browse/FALCON-1519) | Suspend And Resume API's in Falcon Unit |  Major | general | pavan kumar kolamuri | Narayan Periwal |
| [FALCON-1485](https://issues.apache.org/jira/browse/FALCON-1485) | Add documentation for replication HDFS job counters |  Major | docs | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1451](https://issues.apache.org/jira/browse/FALCON-1451) | Update JIRA fix versions |  Major | general | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1522](https://issues.apache.org/jira/browse/FALCON-1522) | Merge pending patches and update fix version |  Major | general | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1453](https://issues.apache.org/jira/browse/FALCON-1453) | Upgrade falcon POM for 0.8 release |  Major | build-tools | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1523](https://issues.apache.org/jira/browse/FALCON-1523) | Update CHANGES.txt to change 0.8 branch to release |  Major | ease | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1457](https://issues.apache.org/jira/browse/FALCON-1457) | Update changes.txt for 0.8 branch |  Major | ease | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1456](https://issues.apache.org/jira/browse/FALCON-1456) | Check licenses and copyright information |  Major | docs | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1452](https://issues.apache.org/jira/browse/FALCON-1452) | Document upgrade from 0.7 to 0.8 |  Major | docs | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1574](https://issues.apache.org/jira/browse/FALCON-1574) | Document behavior of lifecycle retention stage frequency behavior |  Major | retention | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1590](https://issues.apache.org/jira/browse/FALCON-1590) | User friendly release notes |  Major | ease | Pallavi Rao | Sowmya Ramesh |
| [FALCON-1454](https://issues.apache.org/jira/browse/FALCON-1454) | Verify source tarball and run few end to end tests |  Major | build-tools | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1458](https://issues.apache.org/jira/browse/FALCON-1458) | Update documentation on site and announce the 0.8 release |  Major | ease | Sowmya Ramesh | Sowmya Ramesh |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-592](https://issues.apache.org/jira/browse/FALCON-592) | Refactor FalconCLI to make it more manageable. |  Major | . | Balu Vellanki | Balu Vellanki |
| [FALCON-1450](https://issues.apache.org/jira/browse/FALCON-1450) | Prepare Falcon Release v0.8 |  Major | ease | Sowmya Ramesh | Sowmya Ramesh |


