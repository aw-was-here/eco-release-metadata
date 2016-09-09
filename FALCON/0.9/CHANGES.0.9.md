
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

## Release 0.9 - 2016-02-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1617](https://issues.apache.org/jira/browse/FALCON-1617) | Enable SLA monitoring for instances in past |  Major | . | Ajay Yadava | Narayan Periwal |
| [FALCON-1479](https://issues.apache.org/jira/browse/FALCON-1479) | Capture data transfer details for various available replications |  Major | replication | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1168](https://issues.apache.org/jira/browse/FALCON-1168) | Native Scheduler in Falcon - Umbrella JIRA |  Major | . | Pallavi Rao | Pallavi Rao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1592](https://issues.apache.org/jira/browse/FALCON-1592) | Code Refactoring: Introduce Event type for scheduler events |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1486](https://issues.apache.org/jira/browse/FALCON-1486) | Add Unit Test cases for HiveDR |  Major | replication | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1587](https://issues.apache.org/jira/browse/FALCON-1587) | Divide FalconCLI.twiki into sub sections for different modules on the lines of REST Api |  Major | docs | Ajay Yadava | Praveen Adlakha |
| [FALCON-1597](https://issues.apache.org/jira/browse/FALCON-1597) | Falcon should not retry in case of an instance being manual kill from user. |  Major | oozie, rerun | sandeep samudrala | sandeep samudrala |
| [FALCON-1607](https://issues.apache.org/jira/browse/FALCON-1607) | Code refactoring: Refactor ID into more specific sub classes |  Critical | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1622](https://issues.apache.org/jira/browse/FALCON-1622) | On starting falcon server JPS shows Main and not Falcon |  Major | . | sandeep samudrala | sandeep samudrala |
| [FALCON-1588](https://issues.apache.org/jira/browse/FALCON-1588) | Add ability to provide the path for recipe files in command line |  Major | . | Ajay Yadava | Peeyush Bishnoi |
| [FALCON-1634](https://issues.apache.org/jira/browse/FALCON-1634) | Add .reviewboardrc file so that review requests can be created using just command line |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [FALCON-1616](https://issues.apache.org/jira/browse/FALCON-1616) | Consume Workflow job end notifications for SLA monitoring |  Major | . | Ajay Yadava | sandeep samudrala |
| [FALCON-1619](https://issues.apache.org/jira/browse/FALCON-1619) | Create a sidebar navigation for falcon site |  Major | docs, site | Ajay Yadava | Srikanth Sundarrajan |
| [FALCON-1656](https://issues.apache.org/jira/browse/FALCON-1656) | Improve FeedHelper:getRetentionFrequency method |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1658](https://issues.apache.org/jira/browse/FALCON-1658) | MySql Support for Native Scheduler |  Major | scheduler | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1669](https://issues.apache.org/jira/browse/FALCON-1669) | Falcon should show more helpful message when it is unable to initialize Falcon Client object |  Major | client | baishuo | baishuo |
| [FALCON-1683](https://issues.apache.org/jira/browse/FALCON-1683) | Inconsistent behavior when user tries to switch schedulers |  Major | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1689](https://issues.apache.org/jira/browse/FALCON-1689) | NoOutputProcessTest fails due to scheme missing in workflow.xml |  Major | merlin | Pragya Mittal | Pragya Mittal |
| [FALCON-1679](https://issues.apache.org/jira/browse/FALCON-1679) | API to get type of scheduler(native/oozie) |  Major | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1601](https://issues.apache.org/jira/browse/FALCON-1601) | Make Falcon StateStore more secure by not disclosing imp params in startup.props |  Major | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1643](https://issues.apache.org/jira/browse/FALCON-1643) | Add CLI option to display captured replication metrics |  Major | . | Peeyush Bishnoi | Peeyush Bishnoi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1546](https://issues.apache.org/jira/browse/FALCON-1546) | Add ProcessUpdateTest, PipelineInstanceDependencyTest and other tests and test fixes contributed by Raghav Gautam and Paul Isaychuk |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1578](https://issues.apache.org/jira/browse/FALCON-1578) | post-processing action fails with javax.servlet.jsp.el.ELException |  Major | oozie | Pragya Mittal | Venkatesan Ramachandran |
| [FALCON-1593](https://issues.apache.org/jira/browse/FALCON-1593) | Oozie setup failing in setup phase |  Major | build-tools | Praveen Adlakha | Praveen Adlakha |
| [FALCON-1569](https://issues.apache.org/jira/browse/FALCON-1569) | Bug in setting the frequency of Feed retention coordinator |  Major | retention | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1372](https://issues.apache.org/jira/browse/FALCON-1372) | Retention does not work in corner cases |  Major | . | Balu Vellanki | Balu Vellanki |
| [FALCON-1603](https://issues.apache.org/jira/browse/FALCON-1603) | FeedHelperTest::testGetDateFromPath fails in some environments |  Critical | . | Ajay Yadava | Balu Vellanki |
| [FALCON-1605](https://issues.apache.org/jira/browse/FALCON-1605) | Instance API is not working as expected in case of Native Scheduler |  Major | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1606](https://issues.apache.org/jira/browse/FALCON-1606) | Process schedule fails in some cases in case of NativeScheduler |  Minor | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1589](https://issues.apache.org/jira/browse/FALCON-1589) | Package sample recipe properties file |  Major | . | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1604](https://issues.apache.org/jira/browse/FALCON-1604) | Status API Not working in case of Falcon Native Scheduler |  Major | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1595](https://issues.apache.org/jira/browse/FALCON-1595) | In secure cluster, Falcon server loses ability to communicate with HDFS over time |  Major | . | Balu Vellanki | Balu Vellanki |
| [FALCON-1568](https://issues.apache.org/jira/browse/FALCON-1568) | Process Instances are not getting scheduled in Falcon Native Scheduler |  Blocker | scheduler | pavan kumar kolamuri | Pallavi Rao |
| [FALCON-1651](https://issues.apache.org/jira/browse/FALCON-1651) | Falcon doesn't start |  Blocker | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1647](https://issues.apache.org/jira/browse/FALCON-1647) | Unable to create feed : FilePermission error under cluster staging directory |  Major | feed | Balu Vellanki | Balu Vellanki |
| [FALCON-1660](https://issues.apache.org/jira/browse/FALCON-1660) | Examples directory missing in distributed mode |  Major | . | Praveen Adlakha | Praveen Adlakha |
| [FALCON-1572](https://issues.apache.org/jira/browse/FALCON-1572) | Only one instance is running in a process when run using Native Scheduler |  Blocker | scheduler | pavan kumar kolamuri | Pallavi Rao |
| [FALCON-1641](https://issues.apache.org/jira/browse/FALCON-1641) | Triage on an invalid feed instance throws IndexOutOfBoundException |  Major | . | Karishma Gulati | Karishma Gulati |
| [FALCON-1644](https://issues.apache.org/jira/browse/FALCON-1644) | Retention : Some feed instances are never deleted by retention jobs. |  Major | retention | Balu Vellanki | Balu Vellanki |
| [FALCON-1680](https://issues.apache.org/jira/browse/FALCON-1680) | Error message is not intuitive when entity schedule fails |  Major | client | Pragya Mittal | Pallavi Rao |
| [FALCON-1681](https://issues.apache.org/jira/browse/FALCON-1681) | Improve logging for idempotent behaviour while scheduling entities. |  Major | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1694](https://issues.apache.org/jira/browse/FALCON-1694) | Status API shows params along with instance status |  Major | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1696](https://issues.apache.org/jira/browse/FALCON-1696) | Falcon build failing in checkstyle module |  Blocker | . | Pallavi Rao | Praveen Adlakha |
| [FALCON-1565](https://issues.apache.org/jira/browse/FALCON-1565) | Listing API non-intuitive response if time \> endTime |  Major | . | Pragya Mittal | Praveen Adlakha |
| [FALCON-1703](https://issues.apache.org/jira/browse/FALCON-1703) | Falcon docs module not generating html files |  Blocker | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1702](https://issues.apache.org/jira/browse/FALCON-1702) | Exception thrown by workflow status listeners on success notification |  Minor | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1711](https://issues.apache.org/jira/browse/FALCON-1711) | DependencyInstance twiki does not contain correct documentation |  Minor | docs | Pragya Mittal | Praveen Adlakha |
| [FALCON-1653](https://issues.apache.org/jira/browse/FALCON-1653) | Falcon server start throws NPE in distributed mode. |  Major | scheduler | Pragya Mittal | pavan kumar kolamuri |
| [FALCON-1654](https://issues.apache.org/jira/browse/FALCON-1654) | ClassNotFoundException when starting falcon server in distributed mode |  Major | scheduler | Pragya Mittal | pavan kumar kolamuri |
| [FALCON-1655](https://issues.apache.org/jira/browse/FALCON-1655) | Database creation fails with FileNotFound exception / Permission denied |  Major | scheduler | Pragya Mittal | pavan kumar kolamuri |
| [FALCON-1709](https://issues.apache.org/jira/browse/FALCON-1709) | FIFO order is not followed when scheduled using native scheduler |  Major | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1648](https://issues.apache.org/jira/browse/FALCON-1648) | Submit cluster entity without temp and working location fails. |  Major | . | Balu Vellanki | Balu Vellanki |
| [FALCON-1674](https://issues.apache.org/jira/browse/FALCON-1674) | Fix the mapping of InstanceState status to workflow Status in InstancesResult |  Blocker | scheduler | pavan kumar kolamuri | Pallavi Rao |
| [FALCON-1714](https://issues.apache.org/jira/browse/FALCON-1714) | EntityNotRegisteredException when process with no input/output feed is scheduled |  Major | metrics | Pragya Mittal | Ajay Yadava |
| [FALCON-1710](https://issues.apache.org/jira/browse/FALCON-1710) | dependency API sets totalResults as 0 by default |  Minor | client | Pragya Mittal | Praveen Adlakha |
| [FALCON-1720](https://issues.apache.org/jira/browse/FALCON-1720) | Rerun API does not rerun succeeded instances |  Major | scheduler | Pragya Mittal | pavan kumar kolamuri |
| [FALCON-1719](https://issues.apache.org/jira/browse/FALCON-1719) | Retry does not update the state of the instance in the database |  Major | scheduler | Pragya Mittal | pavan kumar kolamuri |
| [FALCON-1725](https://issues.apache.org/jira/browse/FALCON-1725) | Falcon API shows results in ascending order in native scheduler |  Major | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1708](https://issues.apache.org/jira/browse/FALCON-1708) | params API does not take start as a mandatory option |  Major | client | Pragya Mittal | Praveen Adlakha |
| [FALCON-1678](https://issues.apache.org/jira/browse/FALCON-1678) | SLA Monitoring does not honour entity end date |  Major | feed | Pragya Mittal | Ajay Yadava |
| [FALCON-1735](https://issues.apache.org/jira/browse/FALCON-1735) | FalconException shouldn't be caught in AbstractRerunHandler in case of obtaining Workflow engine from entity |  Major | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1730](https://issues.apache.org/jira/browse/FALCON-1730) | Upgrade enunciate for JDK 8 compatibility |  Minor | . | ruoyu wang | Deepak Barr |
| [FALCON-1675](https://issues.apache.org/jira/browse/FALCON-1675) | Lifecycle stage is not honoured when only cluster level lifecycle is implemented. |  Major | feed | Pragya Mittal | Ajay Yadava |
| [FALCON-1677](https://issues.apache.org/jira/browse/FALCON-1677) | Support re-tries for timed-out instances |  Major | . | Pallavi Rao | Narayan Periwal |
| [FALCON-1732](https://issues.apache.org/jira/browse/FALCON-1732) | Folders not getting deleted after testing |  Major | . | Praveen Adlakha | Praveen Adlakha |
| [FALCON-1715](https://issues.apache.org/jira/browse/FALCON-1715) | IllegalStateException in MetadataMappingService when entity is scheduled via native scheduler |  Major | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1538](https://issues.apache.org/jira/browse/FALCON-1538) | Prism status gives wrong info. |  Major | . | sandeep samudrala | Praveen Adlakha |
| [FALCON-1742](https://issues.apache.org/jira/browse/FALCON-1742) | Implement instance summary api for native scheduler |  Major | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1748](https://issues.apache.org/jira/browse/FALCON-1748) | Client throws FalconWebException irrespective of type of error |  Blocker | client | Pragya Mittal | Praveen Adlakha |
| [FALCON-1762](https://issues.apache.org/jira/browse/FALCON-1762) | status call from client redirected to RUNNING api |  Blocker | client | Pragya Mittal | Ajay Yadava |
| [FALCON-1757](https://issues.apache.org/jira/browse/FALCON-1757) | EntityNotRegisteredException when entity is deleted from falcon |  Major | scheduler | Pragya Mittal | pavan kumar kolamuri |
| [FALCON-1754](https://issues.apache.org/jira/browse/FALCON-1754) | JobCompletionService throws FalconException |  Minor | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1758](https://issues.apache.org/jira/browse/FALCON-1758) | APIs fail when oozie workflow entries are deleted |  Major | scheduler | Pragya Mittal | pavan kumar kolamuri |
| [FALCON-1727](https://issues.apache.org/jira/browse/FALCON-1727) | Suspend fails with InvalidStateTransitionException if entity has 'KILLED' instances |  Major | scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1747](https://issues.apache.org/jira/browse/FALCON-1747) | Falcon instance status listing is throwing error message. |  Major | prism | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1750](https://issues.apache.org/jira/browse/FALCON-1750) | Null Pointer Exception while listening to Workflow Notifications |  Major | general | Pragya Mittal | Pallavi Rao |
| [FALCON-1782](https://issues.apache.org/jira/browse/FALCON-1782) | Client returns FalconWebException instead of the expected error message |  Major | client, scheduler | Pragya Mittal | Praveen Adlakha |
| [FALCON-1804](https://issues.apache.org/jira/browse/FALCON-1804) | Non-SLA feed throws NullPointerException |  Major | feed | Pragya Mittal | sandeep samudrala |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1377](https://issues.apache.org/jira/browse/FALCON-1377) | Add tests in falcon for the Triage API |  Major | . | Karishma Gulati | Karishma Gulati |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1213](https://issues.apache.org/jira/browse/FALCON-1213) | Base framework of the native scheduler |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1553](https://issues.apache.org/jira/browse/FALCON-1553) | Flaky test in SchedulerUtilTest |  Major | . | Sowmya Ramesh | Balu Vellanki |
| [FALCON-1520](https://issues.apache.org/jira/browse/FALCON-1520) | Delete, update, Validate entity operations support in Falcon Unit |  Major | general | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1214](https://issues.apache.org/jira/browse/FALCON-1214) | Time Based Notification Service to enable timed scheduling of workflows on Oozie |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1459](https://issues.apache.org/jira/browse/FALCON-1459) | Ability to import from database |  Major | acquisition | Venkatesan Ramachandran | Venkatesan Ramachandran |
| [FALCON-1559](https://issues.apache.org/jira/browse/FALCON-1559) | Config changes required for native scheduler |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1528](https://issues.apache.org/jira/browse/FALCON-1528) | Instance Management Api in Falcon Unit |  Major | . | Narayan Periwal | Narayan Periwal |
| [FALCON-1552](https://issues.apache.org/jira/browse/FALCON-1552) | Migration of  ProcessInstanceManagerIT to use falcon unit |  Major | . | Narayan Periwal | Narayan Periwal |
| [FALCON-1557](https://issues.apache.org/jira/browse/FALCON-1557) | Supporting some Entity Management Api's and admin api in Falcon Unit |  Major | falcon-unit | Narayan Periwal | Narayan Periwal |
| [FALCON-1234](https://issues.apache.org/jira/browse/FALCON-1234) | State Store for instances scheduled by Falcon |  Major | . | Pallavi Rao | pavan kumar kolamuri |
| [FALCON-1480](https://issues.apache.org/jira/browse/FALCON-1480) | Gather data transfer details of Hive DR |  Major | replication | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1608](https://issues.apache.org/jira/browse/FALCON-1608) | Base framework for Spring Shell based shell for Falcon |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [FALCON-1233](https://issues.apache.org/jira/browse/FALCON-1233) | Support co-existence of Oozie scheduler (coord) and Falcon native scheduler |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1490](https://issues.apache.org/jira/browse/FALCON-1490) | Fixing the inconsistencies in the filterBy |  Minor | client | sandeep samudrala | Narayan Periwal |
| [FALCON-1598](https://issues.apache.org/jira/browse/FALCON-1598) | Flaky test : EntityManagerJerseyIT.testDuplicateDeleteCommands |  Major | tests | Balu Vellanki | Narayan Periwal |
| [FALCON-1577](https://issues.apache.org/jira/browse/FALCON-1577) | Migration of EntityManagerJerseyIT to use falcon unit |  Major | . | Narayan Periwal | Narayan Periwal |
| [FALCON-1512](https://issues.apache.org/jira/browse/FALCON-1512) | Implement touch feature for native scheduler |  Major | scheduler | Pallavi Rao | Pallavi Rao |
| [FALCON-1652](https://issues.apache.org/jira/browse/FALCON-1652) | Documentation for enabling native scheduler in falcon |  Major | . | Pragya Mittal | Pallavi Rao |
| [FALCON-1447](https://issues.apache.org/jira/browse/FALCON-1447) | Integration Tests for native scheduler |  Major | scheduler | Pallavi Rao | pavan kumar kolamuri |
| [FALCON-1635](https://issues.apache.org/jira/browse/FALCON-1635) | Migration of EntityManagerJerseySmokeIT to use falcon unit |  Major | . | Narayan Periwal | Narayan Periwal |
| [FALCON-1636](https://issues.apache.org/jira/browse/FALCON-1636) | Add Rerun API In Falcon Native Scheduler |  Major | scheduler | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1639](https://issues.apache.org/jira/browse/FALCON-1639) | Implement update feature for native scheduler |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1645](https://issues.apache.org/jira/browse/FALCON-1645) | Ability to export to database |  Major | acquisition | Venkatesan Ramachandran | Venkatesan Ramachandran |
| [FALCON-1640](https://issues.apache.org/jira/browse/FALCON-1640) | Cascading Delete for instances in Native Scheduler |  Blocker | scheduler | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1700](https://issues.apache.org/jira/browse/FALCON-1700) | Add new test cases to HiveDRTest |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1717](https://issues.apache.org/jira/browse/FALCON-1717) | Update CHANGES.txt for 0.9 Release |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1693](https://issues.apache.org/jira/browse/FALCON-1693) | Create 0.9 branch |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1697](https://issues.apache.org/jira/browse/FALCON-1697) | Stabilization of scenarios which are based on instances lifecycle |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1698](https://issues.apache.org/jira/browse/FALCON-1698) | New tests for ProcessSetupTest, ClusterSetupTest, UI test fixes |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1705](https://issues.apache.org/jira/browse/FALCON-1705) | Standardization of error handling in falcon Server |  Major | webapp | Praveen Adlakha | Praveen Adlakha |
| [FALCON-1718](https://issues.apache.org/jira/browse/FALCON-1718) | Change version in pom.xml |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1701](https://issues.apache.org/jira/browse/FALCON-1701) | HiveDr, ClusterSetupTest, MirrorSummaryTest fixes |  Major | merlin | Paul Isaychuk | Murali Ramasami |
| [FALCON-1699](https://issues.apache.org/jira/browse/FALCON-1699) | Test fixes for RetentionTest, LineageApiTest, TouchAPIPrismAndServerTest, FeedReplicationTest and few fortifications |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1741](https://issues.apache.org/jira/browse/FALCON-1741) | Rerun API behaviour different in case of succeeded instances |  Major | oozie, scheduler | Pragya Mittal | Pallavi Rao |
| [FALCON-1545](https://issues.apache.org/jira/browse/FALCON-1545) | Add documentation for Hive replication job counters |  Major | replication | Sowmya Ramesh | Peeyush Bishnoi |
| [FALCON-1752](https://issues.apache.org/jira/browse/FALCON-1752) | Revert FALCON-1573 from 0.9 branch |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1662](https://issues.apache.org/jira/browse/FALCON-1662) | Ensure entity can be scheduled on multiple clusters on same colo |  Major | scheduler | Pallavi Rao | Pallavi Rao |
| [FALCON-1707](https://issues.apache.org/jira/browse/FALCON-1707) | Code Refactoring for Falcon Client |  Major | client | Ajay Yadava | Ajay Yadava |
| [FALCON-1704](https://issues.apache.org/jira/browse/FALCON-1704) | Standardization of error handling in falcon Client |  Major | . | Praveen Adlakha | Praveen Adlakha |
| [FALCON-1778](https://issues.apache.org/jira/browse/FALCON-1778) | Check licenses and copyright information |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1692](https://issues.apache.org/jira/browse/FALCON-1692) | Update fix versions of JIRAs |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1800](https://issues.apache.org/jira/browse/FALCON-1800) | Document any upgrade steps from 0.8 to 0.9 |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1799](https://issues.apache.org/jira/browse/FALCON-1799) | Verify final source tar ball |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1797](https://issues.apache.org/jira/browse/FALCON-1797) | Create user-friendly documentation |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1824](https://issues.apache.org/jira/browse/FALCON-1824) | Update Falcon site with latest doc. |  Major | . | Pallavi Rao | Pallavi Rao |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1733](https://issues.apache.org/jira/browse/FALCON-1733) | Support for building falcon with JDK 1.8 also. |  Major | . | Narayan Periwal | Narayan Periwal |
| [FALCON-1812](https://issues.apache.org/jira/browse/FALCON-1812) | Data Import and Export documentation for Falcon 0.9 |  Major | . | Venkatesan Ramachandran | Venkatesan Ramachandran |


