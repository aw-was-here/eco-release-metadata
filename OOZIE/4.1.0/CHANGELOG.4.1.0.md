
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

## Release 4.1.0 - 2014-12-08

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1228](https://issues.apache.org/jira/browse/OOZIE-1228) | Support for sqoop in Oozie CLI |  Major | client | Robert Kanter | Bowen Zhang |
| [OOZIE-944](https://issues.apache.org/jira/browse/OOZIE-944) | Implement Workflow Generator UI Tool |  Minor | tools | Ryota Egashira | Ryota Egashira |
| [OOZIE-615](https://issues.apache.org/jira/browse/OOZIE-615) | Support high availability for the Oozie service |  Major | HA | Craig Peters | Robert Kanter |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2033](https://issues.apache.org/jira/browse/OOZIE-2033) | HA and misc improvements to SSL docs |  Major | docs, HA, security | Robert Kanter | Robert Kanter |
| [OOZIE-1916](https://issues.apache.org/jira/browse/OOZIE-1916) | Use Curator leader latch instead of checking the order of Oozie servers |  Minor | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1849](https://issues.apache.org/jira/browse/OOZIE-1849) | If the underlying job finishes while a Workflow is suspended, Oozie can take a while to realize it |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1826](https://issues.apache.org/jira/browse/OOZIE-1826) | Add thread which detects JVM pauses |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1817](https://issues.apache.org/jira/browse/OOZIE-1817) | Oozie timers are not biased |  Major | monitoring | Gilad Wolff | Robert Kanter |
| [OOZIE-1804](https://issues.apache.org/jira/browse/OOZIE-1804) | Improve documentation for Coordinator Specification |  Trivial | docs | Lars Francke | Lars Francke |
| [OOZIE-1801](https://issues.apache.org/jira/browse/OOZIE-1801) | ZKLocksService instrumentation should say how many locks this server has |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1740](https://issues.apache.org/jira/browse/OOZIE-1740) | Add a new function hadoop:conf() that can be invoked from the workflow.xml and will return a hadoop configuration option |  Major | workflow | sam liu | sam liu |
| [OOZIE-1698](https://issues.apache.org/jira/browse/OOZIE-1698) | Action sharelib configuration document lacks the "oozie." prefix |  Major | docs | Harsh J | Harsh J |
| [OOZIE-1680](https://issues.apache.org/jira/browse/OOZIE-1680) | Add a check for a maximum frequency of 5 min on Coord jobs |  Minor | coordinator | Robert Kanter | Robert Kanter |
| [OOZIE-1646](https://issues.apache.org/jira/browse/OOZIE-1646) | HBase Table Copy between two HBase servers doesn't work with Kerberos |  Major | action, security | Robert Kanter | Robert Kanter |
| [OOZIE-1606](https://issues.apache.org/jira/browse/OOZIE-1606) | Update Curator to 2.3.0 and fix some misc minor ZK related things |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1597](https://issues.apache.org/jira/browse/OOZIE-1597) | Cleanup database before every test |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1581](https://issues.apache.org/jira/browse/OOZIE-1581) | Workflow performance optimizations |  Major | workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1560](https://issues.apache.org/jira/browse/OOZIE-1560) | Log messages should have a way of identifying which server they came from when using HA |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1550](https://issues.apache.org/jira/browse/OOZIE-1550) | Create a safeguard to kill errant recursive workflows before they bring down oozie |  Major | workflow | Robert Justice | Robert Kanter |
| [OOZIE-1492](https://issues.apache.org/jira/browse/OOZIE-1492) | Make sure HA works with HCat and SLA notifications |  Major | HA | Robert Kanter | Ryota Egashira |
| [OOZIE-1491](https://issues.apache.org/jira/browse/OOZIE-1491) | Make sure HA works with a secure ZooKeeper |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1460](https://issues.apache.org/jira/browse/OOZIE-1460) | Implement and Document security for HA |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1458](https://issues.apache.org/jira/browse/OOZIE-1458) | If a Credentials type is not defined, Oozie should say something |  Major | security | Robert Kanter | Robert Kanter |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2034](https://issues.apache.org/jira/browse/OOZIE-2034) | Disable SSLv3 (POODLEbleed vulnerability) |  Blocker | security | Robert Kanter | Robert Kanter |
| [OOZIE-2032](https://issues.apache.org/jira/browse/OOZIE-2032) | If using SSL, the port reported by Oozie is incorrect for HA tasks |  Major | core, HA | Robert Kanter | Robert Kanter |
| [OOZIE-2017](https://issues.apache.org/jira/browse/OOZIE-2017) | On startup, StatusTransitService can transition Coordinators that were in PREPSUSPENDED to RUNNING |  Critical | coordinator | Robert Kanter | Robert Kanter |
| [OOZIE-1989](https://issues.apache.org/jira/browse/OOZIE-1989) | NPE during a rerun with forks |  Blocker | core | Robert Kanter | Robert Kanter |
| [OOZIE-1944](https://issues.apache.org/jira/browse/OOZIE-1944) | Recursive variable resolution broken when same parameter name in config-default and action conf |  Major | workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1925](https://issues.apache.org/jira/browse/OOZIE-1925) | upgrade tomcat to 6.0.41 |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-1920](https://issues.apache.org/jira/browse/OOZIE-1920) | Capture Output for SSH Action doesn't work |  Blocker | action | Alessandro Costantino | Richard Williams |
| [OOZIE-1906](https://issues.apache.org/jira/browse/OOZIE-1906) | Service to periodically remove ZK lock |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1879](https://issues.apache.org/jira/browse/OOZIE-1879) | Workflow Rerun causes error depending on the order of forked nodes |  Blocker | core | Robert Kanter | Robert Kanter |
| [OOZIE-1872](https://issues.apache.org/jira/browse/OOZIE-1872) | TestCoordActionInputCheckXCommand.testActionInputCheckLatestActionCreationTime is failing for past couple of builds |  Major | tests | Rohini Palaniswamy | Mona Chitnis |
| [OOZIE-1865](https://issues.apache.org/jira/browse/OOZIE-1865) | Oozie servers can't talk to each other with Oozie HA and Kerberos |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1844](https://issues.apache.org/jira/browse/OOZIE-1844) | HA -  Lock mechanism for CoordMaterializeTriggerService |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1838](https://issues.apache.org/jira/browse/OOZIE-1838) | jdbc.connections.active sampler does not show up |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1835](https://issues.apache.org/jira/browse/OOZIE-1835) | NullPointerException from SLAEmailEventListener |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1834](https://issues.apache.org/jira/browse/OOZIE-1834) | sla should-start is supposed to be optional but it is not |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1831](https://issues.apache.org/jira/browse/OOZIE-1831) | Oozie upgrade fails if workflow jobs are in running or suspended state |  Major | tools | Satish Mittal | Satish Mittal |
| [OOZIE-1828](https://issues.apache.org/jira/browse/OOZIE-1828) | Introduce counters JobStatus terminal states metrics |  Major | monitoring | Gilad Wolff | Robert Kanter |
| [OOZIE-1823](https://issues.apache.org/jira/browse/OOZIE-1823) | OozieSharelibCLI shouldn't load ext services |  Blocker | tools | Robert Kanter | Robert Kanter |
| [OOZIE-1821](https://issues.apache.org/jira/browse/OOZIE-1821) | Oozie java action fails due to AlreadyBeingCreatedException |  Minor | action | Abhishek Agarwal | Abhishek Agarwal |
| [OOZIE-1799](https://issues.apache.org/jira/browse/OOZIE-1799) | Document hcatalog integration steps for Oozie in a secure cluster |  Major | examples | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-1787](https://issues.apache.org/jira/browse/OOZIE-1787) | parameterize interval of SLAService updating SlaStatus |  Major | monitoring | Ryota Egashira | Ryota Egashira |
| [OOZIE-1785](https://issues.apache.org/jira/browse/OOZIE-1785) | Add oozie email action xsd to OozieCli.java |  Trivial | client | Jagat Singh | Jagat Singh |
| [OOZIE-1765](https://issues.apache.org/jira/browse/OOZIE-1765) | JMS Notifications for Workflows not always on the correct topic |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1748](https://issues.apache.org/jira/browse/OOZIE-1748) | When using cron-like syntax, the "Time Unit" field says "MINUTE" |  Major | coordinator | Robert Kanter | Bowen Zhang |
| [OOZIE-1734](https://issues.apache.org/jira/browse/OOZIE-1734) | Oozie returned 500 Internal Server error when user passes invalid request |  Major | core | Chelsey Chang | Chelsey Chang |
| [OOZIE-1720](https://issues.apache.org/jira/browse/OOZIE-1720) | Oozie Hive action doesn't honour mapred.job.name. |  Major | action | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [OOZIE-1718](https://issues.apache.org/jira/browse/OOZIE-1718) | Coord Job Query UPDATE\_COORD\_JOB\_CHANGE does not update last modified time |  Major | coordinator | Mona Chitnis | Mona Chitnis |
| [OOZIE-1715](https://issues.apache.org/jira/browse/OOZIE-1715) | Distributed ID sequence for HA |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1689](https://issues.apache.org/jira/browse/OOZIE-1689) | HA support for OOZIE-7(Ability to view the log information corresponding to particular coordinator action) |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1685](https://issues.apache.org/jira/browse/OOZIE-1685) | Oozie doesn’t process correctly workflows with a non-default name node |  Major | core | Benjamin Zhitomirsky | Benjamin Zhitomirsky |
| [OOZIE-1660](https://issues.apache.org/jira/browse/OOZIE-1660) | DB connection misconfig causes all or most unit tests to fail |  Blocker | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1659](https://issues.apache.org/jira/browse/OOZIE-1659) | oozie-site is missing email-action-0.2 schema |  Trivial | core | Robert Kanter | Jagat Singh |
| [OOZIE-1655](https://issues.apache.org/jira/browse/OOZIE-1655) | Change oozie.service.JPAService.validate.db.connection to true |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1651](https://issues.apache.org/jira/browse/OOZIE-1651) | Oozie should mask the signature secret in the configuration output |  Critical | security | Robert Kanter | Robert Kanter |
| [OOZIE-1650](https://issues.apache.org/jira/browse/OOZIE-1650) | Whitelisting docs are incorrect |  Minor | docs | Robert Kanter | Anbalagan Pugaleesan |
| [OOZIE-1647](https://issues.apache.org/jira/browse/OOZIE-1647) | oozie-setup.sh doesn't check exit code of java executions |  Major | scripts | Andrew Lazarev | Andrew Lazarev |
| [OOZIE-1643](https://issues.apache.org/jira/browse/OOZIE-1643) | Oozie doesn't parse Hadoop Job Id from the Hive action |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-1634](https://issues.apache.org/jira/browse/OOZIE-1634) | TestJavaActionExecutor#testUpdateConfForUberMode fails against Hadoop 2 |  Minor | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1632](https://issues.apache.org/jira/browse/OOZIE-1632) | Coordinators that undergo change endtime but are doneMaterialization, not getting picked for StatusTransit |  Major | coordinator | Mona Chitnis | Mona Chitnis |
| [OOZIE-1631](https://issues.apache.org/jira/browse/OOZIE-1631) | Tools module should have a direct dependency on mockito |  Minor | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1608](https://issues.apache.org/jira/browse/OOZIE-1608) | Update Curator to 2.4.0 when its available to fix security hole |  Blocker | HA, security | Robert Kanter | Robert Kanter |
| [OOZIE-1596](https://issues.apache.org/jira/browse/OOZIE-1596) | TestOozieMySqlDBCLI.testCreateMysql fails when tests are executed in a different order |  Minor | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1589](https://issues.apache.org/jira/browse/OOZIE-1589) | TestZKLocksService is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1568](https://issues.apache.org/jira/browse/OOZIE-1568) | TestWorkflowClient.testSla is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1558](https://issues.apache.org/jira/browse/OOZIE-1558) | RAT Warning from BundleActionsGetJPAExecutor.java |  Blocker | core | Robert Kanter | Robert Kanter |
| [OOZIE-1557](https://issues.apache.org/jira/browse/OOZIE-1557) | TestFsActionExecutor.testChmodWithGlob fails against Hadoop 2.1.x-beta |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1546](https://issues.apache.org/jira/browse/OOZIE-1546) | TestMapReduceActionExecutorUberJar.testMapReduceWithUberJarEnabled fails |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1543](https://issues.apache.org/jira/browse/OOZIE-1543) | Minor typo in Hive Action documentation |  Trivial | docs | Robert Kanter | Anbalagan Pugaleesan |
| [OOZIE-1541](https://issues.apache.org/jira/browse/OOZIE-1541) | Typo in Oozie HA admin -servers command in documentation |  Trivial | docs, HA | Robert Kanter | Robert Kanter |
| [OOZIE-1540](https://issues.apache.org/jira/browse/OOZIE-1540) | When oozie.zookeeper.oozie.id is not specified, its using a space instead of the hostname |  Critical | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1530](https://issues.apache.org/jira/browse/OOZIE-1530) | Fork-join mismatch makes workflow Failed but some actions stay Running |  Major | workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1527](https://issues.apache.org/jira/browse/OOZIE-1527) | Fix scalability issues with coordinator materialization |  Major | coordinator | Mona Chitnis | Purshotam Shah |
| [OOZIE-1526](https://issues.apache.org/jira/browse/OOZIE-1526) | Oozie does not work with a secure HA JobTracker or ResourceManager |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-1449](https://issues.apache.org/jira/browse/OOZIE-1449) | Coordinator Workflow parent relationship is broken for purge service |  Critical | core | Robert Kanter | Robert Kanter |
| [OOZIE-1447](https://issues.apache.org/jira/browse/OOZIE-1447) | Sqoop actions that don't launch a map reduce job fail with an IllegalArgumentException |  Major | action | Robert Kanter | Jarek Jarcec Cecho |
| [OOZIE-1440](https://issues.apache.org/jira/browse/OOZIE-1440) | Build fails in certain environments due to xerces OpenJPA issue |  Major | build | Robert Kanter | Sean Mackrory |
| [OOZIE-1298](https://issues.apache.org/jira/browse/OOZIE-1298) | TestPartitionDependencyManagerEhcache.testEvictionOnTimeToIdle is flakey |  Major | tests | Robert Kanter | Rohini Palaniswamy |
| [OOZIE-1243](https://issues.apache.org/jira/browse/OOZIE-1243) | libtools dir should not include hadoop JARs |  Blocker | build | Alejandro Abdelnur | Satish Mittal |
| [OOZIE-943](https://issues.apache.org/jira/browse/OOZIE-943) | parentId is null when fetching oozie jobs information using REST API |  Minor | core | Ashish Vaidya | Mona Chitnis |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1711](https://issues.apache.org/jira/browse/OOZIE-1711) | TestLiteWorkflowAppParser fails against Hadoop 2 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1704](https://issues.apache.org/jira/browse/OOZIE-1704) | Add ability to use Bulk API with bundle ID |  Major | bundle | Mona Chitnis | Mona Chitnis |
| [OOZIE-1678](https://issues.apache.org/jira/browse/OOZIE-1678) | HA support for SLA |  Major | HA | Ryota Egashira | Ryota Egashira |
| [OOZIE-1644](https://issues.apache.org/jira/browse/OOZIE-1644) | Default config from config-default.xml is not propagated to actions |  Major | action | Mona Chitnis | Mona Chitnis |
| [OOZIE-1633](https://issues.apache.org/jira/browse/OOZIE-1633) | Test failures related to sharelib when running against Hadoop 2 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1609](https://issues.apache.org/jira/browse/OOZIE-1609) | HA support for share lib. |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1576](https://issues.apache.org/jira/browse/OOZIE-1576) | Add documentation for Oozie Sqoop CLI |  Major | client | Bowen Zhang | Bowen Zhang |
| [OOZIE-1575](https://issues.apache.org/jira/browse/OOZIE-1575) | Add functionality to submit sqoop jobs through http on oozie server side |  Major | client | Bowen Zhang | Bowen Zhang |
| [OOZIE-1569](https://issues.apache.org/jira/browse/OOZIE-1569) | Maintain backward incompatibility for running jobs before upgrade |  Major | workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1552](https://issues.apache.org/jira/browse/OOZIE-1552) | Bring Windows shell script functionality and structure in line with trunk |  Major | core, tools | David Wannemacher | Ostap |
| [OOZIE-1539](https://issues.apache.org/jira/browse/OOZIE-1539) | Load more coordinator jobs eligible to be materialized in MaterializeTriggerService |  Major | coordinator | Mona Chitnis | Mona Chitnis |
| [OOZIE-1523](https://issues.apache.org/jira/browse/OOZIE-1523) | Create Windows versions of the shell scripts |  Major | core, tools | David Wannemacher | David Wannemacher |
| [OOZIE-1517](https://issues.apache.org/jira/browse/OOZIE-1517) | Support using MS SQL Server as a metastore |  Major | core, tools | David Wannemacher | David Wannemacher |
| [OOZIE-1500](https://issues.apache.org/jira/browse/OOZIE-1500) | Fix many OS-specific issues on Windows |  Major | build, core, examples, scripts, tests | David Wannemacher | David Wannemacher |
| [OOZIE-1490](https://issues.apache.org/jira/browse/OOZIE-1490) | Remove unix OS enforcement from build |  Major | build | David Wannemacher | David Wannemacher |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


