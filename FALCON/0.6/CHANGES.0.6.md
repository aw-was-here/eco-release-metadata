
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

## Release 0.6 - 2014-12-04

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-753](https://issues.apache.org/jira/browse/FALCON-753) | Change the ownership for staging dir to user submitting the feed |  Major | oozie | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-849](https://issues.apache.org/jira/browse/FALCON-849) | Metadata Rest API throws "500 : Unauthorized Resource" error |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-766](https://issues.apache.org/jira/browse/FALCON-766) | Falcon workflow rerun by default should rerun only Failed nodes and remove continue option |  Major | client, oozie | Shaik Idris Ali | Shaik Idris Ali |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-400](https://issues.apache.org/jira/browse/FALCON-400) | Add Authorization for Entities |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-722](https://issues.apache.org/jira/browse/FALCON-722) | Add SLA  for processes |  Major | . | Ajay Yadava | Ajay Yadava |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-133](https://issues.apache.org/jira/browse/FALCON-133) | Upgrade to slf4j 1.7.5 and use SLF4J logger |  Major | general | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-353](https://issues.apache.org/jira/browse/FALCON-353) | enable dry run feature of oozie for schedule and update |  Major | . | Samarth Gupta | Shwetha G S |
| [FALCON-481](https://issues.apache.org/jira/browse/FALCON-481) | Simplify process parent workflow |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-327](https://issues.apache.org/jira/browse/FALCON-327) | Simplify message passing framework |  Major | messaging | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-588](https://issues.apache.org/jira/browse/FALCON-588) | Baselining designer code |  Blocker | designer | samar |  |
| [FALCON-612](https://issues.apache.org/jira/browse/FALCON-612) | Create CHANGES.txt for falcon-regression |  Minor | merlin | Arpit Gupta | Arpit Gupta |
| [FALCON-655](https://issues.apache.org/jira/browse/FALCON-655) | Skip workflow upload if process won't be submitted |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-469](https://issues.apache.org/jira/browse/FALCON-469) | Enhance REST API to drive interactive user dashboard |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-654](https://issues.apache.org/jira/browse/FALCON-654) | Exclude junit dependency in pom |  Major | merlin, tests | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-657](https://issues.apache.org/jira/browse/FALCON-657) | String datePattern moved to BaseTestClass in falcon-regression |  Minor | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-675](https://issues.apache.org/jira/browse/FALCON-675) | Request URLS moved from parameters into methods in falcon-regression |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-665](https://issues.apache.org/jira/browse/FALCON-665) | Handle message consumption failures in JMSMessageConsumer |  Critical | messaging | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-666](https://issues.apache.org/jira/browse/FALCON-666) | Add Alerts for unrecoverable failures |  Critical | metrics | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-745](https://issues.apache.org/jira/browse/FALCON-745) | LogUtil requires fine control over what to dump |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-576](https://issues.apache.org/jira/browse/FALCON-576) | Update Installation notes for Mac OS |  Major | docs | Ajay Yadava | Ajay Yadava |
| [FALCON-809](https://issues.apache.org/jira/browse/FALCON-809) | Add message from response if assertSucceeded fails |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-838](https://issues.apache.org/jira/browse/FALCON-838) | Add support for https in merlin |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-828](https://issues.apache.org/jira/browse/FALCON-828) | Add hadoop version info as part of falcon admin version API |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-834](https://issues.apache.org/jira/browse/FALCON-834) | Propagate request id in the response to help trace and debug failures in merlin |  Major | webapp | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-856](https://issues.apache.org/jira/browse/FALCON-856) | Handle JsonSyntaxException in hitUrl |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-813](https://issues.apache.org/jira/browse/FALCON-813) | Expose job id for running jobs in Falcon |  Major | client | Suhas Vasu | Suhas Vasu |
| [FALCON-685](https://issues.apache.org/jira/browse/FALCON-685) | All actions by user must be audited |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-145](https://issues.apache.org/jira/browse/FALCON-145) | Feed eviction be implemented in appropriate Storage implementation |  Major | . | Venkatesh Seetharam | Ajay Yadava |
| [FALCON-878](https://issues.apache.org/jira/browse/FALCON-878) | Move falcon html files to HTML5 |  Minor | . | Ajay Yadava | Ajay Yadava |
| [FALCON-744](https://issues.apache.org/jira/browse/FALCON-744) | Document existing falcon data archival to cloud store |  Major | docs | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-756](https://issues.apache.org/jira/browse/FALCON-756) | Discontinue support for EOL components |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-781](https://issues.apache.org/jira/browse/FALCON-781) | Release falcon 0.6 umbrella |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-441](https://issues.apache.org/jira/browse/FALCON-441) | Lineage capture fails for feeds with multiple instances |  Major | . | Sowmya Ramesh | Venkatesh Seetharam |
| [FALCON-240](https://issues.apache.org/jira/browse/FALCON-240) | Instance status from CLI on a feed doesn't give the retention details |  Major | . | Suhas Vasu | pavan kumar kolamuri |
| [FALCON-443](https://issues.apache.org/jira/browse/FALCON-443) | Process with Hive workflow engine and filesystem input feeds, table output feed fails |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-444](https://issues.apache.org/jira/browse/FALCON-444) | Logs dir for replication workflow is incorrect and jobs fail with permission issues |  Major | replication | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-445](https://issues.apache.org/jira/browse/FALCON-445) | Propagate hive credentials defined in cluster entity to hive-site.xml |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-446](https://issues.apache.org/jira/browse/FALCON-446) | Hive Replications fail because of permissions issue |  Major | replication | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-456](https://issues.apache.org/jira/browse/FALCON-456) | Custom DistCp conflict with core DistCp in container classpath fails falcon workflows |  Major | replication | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-459](https://issues.apache.org/jira/browse/FALCON-459) | Lineage resource API fails with NPE for bad query params |  Minor | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-460](https://issues.apache.org/jira/browse/FALCON-460) | Concurrent deletion of same entity results in NPE |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-430](https://issues.apache.org/jira/browse/FALCON-430) | Process update with user |  Major | process | Shwetha G S | Shwetha G S |
| [FALCON-280](https://issues.apache.org/jira/browse/FALCON-280) | Validate the ACL in Feed entity with the user submitting the entity |  Major | feed | Venkatesh Seetharam | Jean-Baptiste Onofré |
| [FALCON-483](https://issues.apache.org/jira/browse/FALCON-483) | Fix the failing test ConfigurationStoreTest.testConcurrentRemoves on jenkins |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-496](https://issues.apache.org/jira/browse/FALCON-496) | Feed Replication with Empty Directories giving error |  Major | replication | Karishma Gulati | pavan kumar kolamuri |
| [FALCON-495](https://issues.apache.org/jira/browse/FALCON-495) | multi source single target feed replication failing in regression |  Major | replication | Samarth Gupta | Satish Mittal |
| [FALCON-357](https://issues.apache.org/jira/browse/FALCON-357) | HCatalog Feed replication: Hive export job fails when table partition contains multiple dated columns |  Major | . | Satish Mittal | Satish Mittal |
| [FALCON-497](https://issues.apache.org/jira/browse/FALCON-497) | Able to submit feed even though owner of storage specified (location type=data) is different from the ACL owner |  Major | general | Karishma Gulati | Shwetha G S |
| [FALCON-554](https://issues.apache.org/jira/browse/FALCON-554) | Extend time functions available in Falcon to support current & last week |  Major | oozie | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-556](https://issues.apache.org/jira/browse/FALCON-556) | Feed Replication \_SUCCESS is not getting created on target directory. |  Major | feed | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-561](https://issues.apache.org/jira/browse/FALCON-561) | Falcon jenkins failure in EntityManagerJerseyIT |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-566](https://issues.apache.org/jira/browse/FALCON-566) | update throwing null job id exception |  Major | . | Samarth Gupta | Shwetha G S |
| [FALCON-514](https://issues.apache.org/jira/browse/FALCON-514) | Falcon CLI giving error when using -file option with -rerun in instance management |  Major | rerun | Samarth Gupta | pavan kumar kolamuri |
| [FALCON-577](https://issues.apache.org/jira/browse/FALCON-577) | Extend time functions added in Falcon 0.6 to support current & last week are giving UnsupportedOperationException |  Major | process | Pragya Mittal | Srikanth Sundarrajan |
| [FALCON-582](https://issues.apache.org/jira/browse/FALCON-582) | Latest changes to LICENSE files results in build failure |  Major | general | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-581](https://issues.apache.org/jira/browse/FALCON-581) | merlin: Refactor code for cross product and make it a method |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-583](https://issues.apache.org/jira/browse/FALCON-583) | Post processing is broken in current trunk |  Blocker | . | Suhas Vasu | Venkatesh Seetharam |
| [FALCON-613](https://issues.apache.org/jira/browse/FALCON-613) | Add first class  tag for 'pipelines' for process entity |  Major | common | Balu Vellanki | Balu Vellanki |
| [FALCON-598](https://issues.apache.org/jira/browse/FALCON-598) | org.apache.falcon.entity.ProcessHelper throws NullPointerException if the process has no inputs OR no outputs defined |  Major | common | David Kjerrumgaard | Balu Vellanki |
| [FALCON-616](https://issues.apache.org/jira/browse/FALCON-616) | cluster submission should fail when shared libs copy fail |  Major | general | Samarth Gupta | Shwetha G S |
| [FALCON-619](https://issues.apache.org/jira/browse/FALCON-619) | ELExp\_FutureAndLatestTest stabilization |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-610](https://issues.apache.org/jira/browse/FALCON-610) | Refactoring and documentation updates |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-611](https://issues.apache.org/jira/browse/FALCON-611) | Post process arg status is in 'FAILED' state always |  Blocker | . | Venkatesh Seetharam | Shwetha G S |
| [FALCON-630](https://issues.apache.org/jira/browse/FALCON-630) | late data rerun for process broken in trunk |  Blocker | rerun | Samarth Gupta | Shwetha G S |
| [FALCON-632](https://issues.apache.org/jira/browse/FALCON-632) | Refactoring, documentation stuff |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-646](https://issues.apache.org/jira/browse/FALCON-646) | Refactoring, documentation stuff |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-587](https://issues.apache.org/jira/browse/FALCON-587) | Don't delete input data in @AfterClass in falcon-regression tests if clean\_test\_dir=false |  Minor | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-649](https://issues.apache.org/jira/browse/FALCON-649) | Remove unnecessary validation for Instance start time in FalconCLI |  Major | client | Balu Vellanki | Balu Vellanki |
| [FALCON-650](https://issues.apache.org/jira/browse/FALCON-650) | Instance list APIs occassionally fail when orderBy set to starttime or endtime |  Major | client, prism | Balu Vellanki | Balu Vellanki |
| [FALCON-652](https://issues.apache.org/jira/browse/FALCON-652) | EntityUtils tests are failing |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-643](https://issues.apache.org/jira/browse/FALCON-643) | Tests with zero-output/input scenario amended to match test case |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-669](https://issues.apache.org/jira/browse/FALCON-669) | Missing optional workflow execution listeners configuration results in NPE |  Major | . | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-644](https://issues.apache.org/jira/browse/FALCON-644) | Falcon message producer masks errors in Post processing |  Blocker | messaging | Sowmya Ramesh | Venkatesh Seetharam |
| [FALCON-695](https://issues.apache.org/jira/browse/FALCON-695) | Lineage: "stored-in" edge is added between feed entity and target cluster |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-694](https://issues.apache.org/jira/browse/FALCON-694) | Lineage: StringIndexOutOfBoundsException while updating graph DB for replicated instance |  Critical | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-590](https://issues.apache.org/jira/browse/FALCON-590) | Update to ACLs added to process is not handled |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-677](https://issues.apache.org/jira/browse/FALCON-677) | Feed data and stats path defaults to /tmp/ |  Major | feed | Suhas Vasu | Suhas Vasu |
| [FALCON-702](https://issues.apache.org/jira/browse/FALCON-702) | JailedFileSystem does not work for relative paths |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-707](https://issues.apache.org/jira/browse/FALCON-707) | ProcessInstanceSuspendTest is failing because input path is not set correctly |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-711](https://issues.apache.org/jira/browse/FALCON-711) | Test retagged |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-693](https://issues.apache.org/jira/browse/FALCON-693) | Tests with zero inp/outp fixed to use correct workflow, javadocs added |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-713](https://issues.apache.org/jira/browse/FALCON-713) | UpdateAtSpecificTimeTest#updateTimeInPast\_Feed should submitAndSchedule feed rather then submit |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-720](https://issues.apache.org/jira/browse/FALCON-720) | Fix ProcessInstanceStatusTest as per FALCON-166 |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-716](https://issues.apache.org/jira/browse/FALCON-716) | PrismFeedSuspendTest tests retagged as distributed |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-715](https://issues.apache.org/jira/browse/FALCON-715) | "end" parameter should be greater than last instance's startTime |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-723](https://issues.apache.org/jira/browse/FALCON-723) | Fix ProcessInstanceResumeTest and ProcessInstanceSuspendTest as per FALCON-166 |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-712](https://issues.apache.org/jira/browse/FALCON-712) | Tests fail because oozie process frequency limit have changed |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-726](https://issues.apache.org/jira/browse/FALCON-726) | Expect less fields in messages in falcon-regression |  Critical | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-727](https://issues.apache.org/jira/browse/FALCON-727) | JQuery license is incorrectly mentioned in the header file |  Major | license | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-729](https://issues.apache.org/jira/browse/FALCON-729) | HCatFeedOperationsTest should not initialize hcat client during var declaration |  Critical | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-728](https://issues.apache.org/jira/browse/FALCON-728) | Unit test failures |  Major | tests | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-724](https://issues.apache.org/jira/browse/FALCON-724) | Build fails as Integration test fails |  Major | webapp | Srikanth Sundarrajan | Balu Vellanki |
| [FALCON-733](https://issues.apache.org/jira/browse/FALCON-733) | HCatProcess tests fail because \_SUCCESS file is non-zero size |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-739](https://issues.apache.org/jira/browse/FALCON-739) | JmsMessageConsumer should start daemon threads |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-731](https://issues.apache.org/jira/browse/FALCON-731) | Lineage capture for evicted instance is broken |  Blocker | . | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-732](https://issues.apache.org/jira/browse/FALCON-732) | Lineage capture fails for an instance thats not generated by falcon |  Blocker | . | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-736](https://issues.apache.org/jira/browse/FALCON-736) | OneNonCatInputOneHCatOutput test fails because of change in parameter name |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-737](https://issues.apache.org/jira/browse/FALCON-737) | In NoOutputProcessTest print info before assertion |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-747](https://issues.apache.org/jira/browse/FALCON-747) | validateSuccessOnlyStart should use '1' as expected value |  Minor | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-740](https://issues.apache.org/jira/browse/FALCON-740) | Entity kill job calls OozieClient.kill on bundle coord job ids before calling kill on bundle job id |  Major | webapp | Balu Vellanki | Sowmya Ramesh |
| [FALCON-750](https://issues.apache.org/jira/browse/FALCON-750) | Method name fixed |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-748](https://issues.apache.org/jira/browse/FALCON-748) | Falcon throws '413 Full Head' error message when kerberos is enabled with AD |  Critical | . | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-759](https://issues.apache.org/jira/browse/FALCON-759) | Adding cluster entity fails when Yarn TimelineClient is enabled. |  Major | . | Balu Vellanki | Balu Vellanki |
| [FALCON-767](https://issues.apache.org/jira/browse/FALCON-767) | Upgrade Hadoop from 2.4 to 2.5 |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-760](https://issues.apache.org/jira/browse/FALCON-760) | Messaging is broken for FALCON.ENTITY.TOPIC in case of Eviction |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-768](https://issues.apache.org/jira/browse/FALCON-768) | Change dashboard USER\_ID to falcon-dashboard |  Major | docs, webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-776](https://issues.apache.org/jira/browse/FALCON-776) | Fixing PrismFeedUpdateTest and FeedInstanceStatus test issues |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-773](https://issues.apache.org/jira/browse/FALCON-773) | Log clean up handlers only work in distributed mode |  Major | general | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-779](https://issues.apache.org/jira/browse/FALCON-779) | ProcessInstanceStatusTest#testProcessInstanceStatusReverseDateRange fixed |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-788](https://issues.apache.org/jira/browse/FALCON-788) | Lineage: Minor bug fixes |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-789](https://issues.apache.org/jira/browse/FALCON-789) | Post processing is broken for Feeds |  Blocker | messaging | Sowmya Ramesh | Venkatesh Seetharam |
| [FALCON-777](https://issues.apache.org/jira/browse/FALCON-777) | UT intermittent failures in Messaging tests depending on Thread.sleep |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-746](https://issues.apache.org/jira/browse/FALCON-746) | Add ACL validation and enforcement tests |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-797](https://issues.apache.org/jira/browse/FALCON-797) | ProcessInstanceStatusTest#testProcessInstanceStatusEndOutOfRange fixed |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-798](https://issues.apache.org/jira/browse/FALCON-798) | optionalTest\_updateProcessMakeOptionalCompulsory fixed |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-706](https://issues.apache.org/jira/browse/FALCON-706) | Parse json with instances to InstancesResult using joda's DateTime |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-787](https://issues.apache.org/jira/browse/FALCON-787) | FalconCLI - Submit recipe failed |  Major | client | Balu Vellanki | Sowmya Ramesh |
| [FALCON-792](https://issues.apache.org/jira/browse/FALCON-792) | Integration test EntityManagerPaginationJerseyIT fails occasionally. |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-800](https://issues.apache.org/jira/browse/FALCON-800) | Falcon lineage is not working |  Blocker | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-802](https://issues.apache.org/jira/browse/FALCON-802) | Authorization test disabled |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-764](https://issues.apache.org/jira/browse/FALCON-764) | Falcon retry of failed process/feed instances broken during restart |  Critical | rerun | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-482](https://issues.apache.org/jira/browse/FALCON-482) | Concurrent requests made using Proxy Oozie client fail |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-678](https://issues.apache.org/jira/browse/FALCON-678) | Falcon's default port has changed to 15443 |  Major | prism | Raghav Kumar Gautam | Balu Vellanki |
| [FALCON-803](https://issues.apache.org/jira/browse/FALCON-803) | Falcon Dashboard : Instances displayed on entity page should be sorted by startTime. |  Major | ui | Balu Vellanki | Balu Vellanki |
| [FALCON-801](https://issues.apache.org/jira/browse/FALCON-801) | Increasing time to wait for instance |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-812](https://issues.apache.org/jira/browse/FALCON-812) | all the entities must have acl |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-811](https://issues.apache.org/jira/browse/FALCON-811) | falcon superuser should be used instead of admin |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-819](https://issues.apache.org/jira/browse/FALCON-819) | Submission of cluster with registry interface fails on secure setup |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-826](https://issues.apache.org/jira/browse/FALCON-826) | unify staging and working dir requirements |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-832](https://issues.apache.org/jira/browse/FALCON-832) | more edge labels and node type for lineage |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-835](https://issues.apache.org/jira/browse/FALCON-835) | Tag authorization tests |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-833](https://issues.apache.org/jira/browse/FALCON-833) | FeedReplicationTest.availabilityFlagTest fix |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-710](https://issues.apache.org/jira/browse/FALCON-710) | start/end is optional for lifecycle operations |  Major | . | Karishma Gulati | Balu Vellanki |
| [FALCON-831](https://issues.apache.org/jira/browse/FALCON-831) | Operation on non existing entity throws internal server error |  Major | . | Raghav Kumar Gautam | Venkatesh Seetharam |
| [FALCON-814](https://issues.apache.org/jira/browse/FALCON-814) | Tests for entities summary API. |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-840](https://issues.apache.org/jira/browse/FALCON-840) | Possible NPE in filteredInstanceSet method of AbstractInstanceManager |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-839](https://issues.apache.org/jira/browse/FALCON-839) | Authorization succeds with invalid acl owner based on group membership |  Critical | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-841](https://issues.apache.org/jira/browse/FALCON-841) | Test falcon process with different frequencies |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-847](https://issues.apache.org/jira/browse/FALCON-847) | Issue with login from keytab in merlin |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-844](https://issues.apache.org/jira/browse/FALCON-844) | List instances tests |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-848](https://issues.apache.org/jira/browse/FALCON-848) | ListEntitiesTest tagged and checkstyle bugs fixed |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-852](https://issues.apache.org/jira/browse/FALCON-852) | Merlin function testProcessOrderBy() needs to use string ordering instead of enum ordering |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-850](https://issues.apache.org/jira/browse/FALCON-850) | Cluster summary UI page results in 400 Bad Request |  Major | ui | Balu Vellanki | Balu Vellanki |
| [FALCON-851](https://issues.apache.org/jira/browse/FALCON-851) | Super user authorization is broken |  Blocker | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-857](https://issues.apache.org/jira/browse/FALCON-857) | Authorization failure results in internal server error |  Critical | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-858](https://issues.apache.org/jira/browse/FALCON-858) | entity/instance Rest API - make keys for filterBy param case insensitive |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-859](https://issues.apache.org/jira/browse/FALCON-859) | EntitySummary RestAPI : Change pathParam "cluster" to queryParam |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-860](https://issues.apache.org/jira/browse/FALCON-860) | Add label-types for labels added as part of EntitySummaryTest |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-855](https://issues.apache.org/jira/browse/FALCON-855) | Fix validation in ProcessInstanceKillsTest#testProcessInstanceKillStartAndEndSame |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-861](https://issues.apache.org/jira/browse/FALCON-861) | Add ACL tests for falcon client and ACL update |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-863](https://issues.apache.org/jira/browse/FALCON-863) | Fix tests to have start as well as end time for kill, rerun etc requests |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-866](https://issues.apache.org/jira/browse/FALCON-866) | Lineage endpoints need to be changed for merlin |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-867](https://issues.apache.org/jira/browse/FALCON-867) | In process ACL tests process validity needs to be in future |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-865](https://issues.apache.org/jira/browse/FALCON-865) | Rest end-point entities/summary has changed |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-708](https://issues.apache.org/jira/browse/FALCON-708) | Falcon assumes a default umask in HDFS for staging dir |  Critical | oozie | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-862](https://issues.apache.org/jira/browse/FALCON-862) | Falcon entity Rest API - filter by tags also returns entities that do not have tags. |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-864](https://issues.apache.org/jira/browse/FALCON-864) | Falcon superuser is unable to delete scheduled feed |  Blocker | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-868](https://issues.apache.org/jira/browse/FALCON-868) | Rerun command incorrect in falcon CLI documentation |  Minor | docs | Karishma Gulati | Karishma Gulati |
| [FALCON-595](https://issues.apache.org/jira/browse/FALCON-595) | Improvements to DefaultAuthorizationProvider code |  Minor | . | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-820](https://issues.apache.org/jira/browse/FALCON-820) | Fix minor nits with HadoopClientFactory |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-815](https://issues.apache.org/jira/browse/FALCON-815) | Rename mapBandwidthKB to mapBandwidth in DistCp |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-874](https://issues.apache.org/jira/browse/FALCON-874) | Rest API - Instance and Entity orderBy param values should be case insensitive |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-875](https://issues.apache.org/jira/browse/FALCON-875) | Enitiy Summary endpoint filterBy does not filter entities without pipelines |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-876](https://issues.apache.org/jira/browse/FALCON-876) | Reducing fail time for HCatProcessTest and PrismFeedReplicationUpdateTest |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-883](https://issues.apache.org/jira/browse/FALCON-883) | Fixing testFeedCustomFilter() |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-886](https://issues.apache.org/jira/browse/FALCON-886) | Disable tests that are failing |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-888](https://issues.apache.org/jira/browse/FALCON-888) | Disabling test for special chars in pipeline name and RescheduleProcessInFinalStatesTest |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-891](https://issues.apache.org/jira/browse/FALCON-891) | Removing some more invalid acl tests |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-893](https://issues.apache.org/jira/browse/FALCON-893) | Add tests for replication to wasb filesystem |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-837](https://issues.apache.org/jira/browse/FALCON-837) | ListProcessInstancesTest added |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-717](https://issues.apache.org/jira/browse/FALCON-717) | Shutdown not clean for JMSMessageConsumer |  Major | . | Sowmya Ramesh | Shaik Idris Ali |
| [FALCON-880](https://issues.apache.org/jira/browse/FALCON-880) | Oozie Java actions for hive tables fail in secure mode |  Critical | oozie, retention | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-885](https://issues.apache.org/jira/browse/FALCON-885) | RequestID is coming as null for all instance API calls |  Major | . | Suhas Vasu | Venkatesh Seetharam |
| [FALCON-892](https://issues.apache.org/jira/browse/FALCON-892) | HCatReplication fails in secure setup |  Critical | oozie | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-894](https://issues.apache.org/jira/browse/FALCON-894) | Cluster submission with hive registry fails in secure setup |  Blocker | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-889](https://issues.apache.org/jira/browse/FALCON-889) | Windows azure replication fails with "wasb" as the scheme to an HDFS file system |  Blocker | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-846](https://issues.apache.org/jira/browse/FALCON-846) | Cluster submitted by one user when deleted by another leads to internal server error |  Major | . | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-824](https://issues.apache.org/jira/browse/FALCON-824) | Remove usage of Hadoop incompatible API |  Critical | feed | Suhas Vasu | Shwetha G S |
| [FALCON-829](https://issues.apache.org/jira/browse/FALCON-829) | Better error message for cluster submission failure |  Major | . | Raghav Kumar Gautam | karan kumar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-836](https://issues.apache.org/jira/browse/FALCON-836) | Add tests for entities list API |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-279](https://issues.apache.org/jira/browse/FALCON-279) | Add ACL for Cluster Entity |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-462](https://issues.apache.org/jira/browse/FALCON-462) | Add ACL for process entity |  Major | process | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-463](https://issues.apache.org/jira/browse/FALCON-463) | Validate Feed ACL only if authorization is enabled |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-464](https://issues.apache.org/jira/browse/FALCON-464) | Enforce Authorization for REST API |  Major | process | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-468](https://issues.apache.org/jira/browse/FALCON-468) | Add User Documentation for this feature |  Major | docs | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-557](https://issues.apache.org/jira/browse/FALCON-557) | Add super-user who is authorized for all |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-466](https://issues.apache.org/jira/browse/FALCON-466) | REST APIs must add the entity owner as an implicit filter |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-484](https://issues.apache.org/jira/browse/FALCON-484) | Refactor workflow related code into context, listener and Notification |  Major | messaging | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-485](https://issues.apache.org/jira/browse/FALCON-485) | Simplify JMS Message Sender/Consumer and use Workflow Context |  Major | messaging | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-486](https://issues.apache.org/jira/browse/FALCON-486) | Introduce Workflow Context in Post Processing |  Major | messaging | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-487](https://issues.apache.org/jira/browse/FALCON-487) | Introduce Workflow Context in Rerun framework |  Major | messaging | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-488](https://issues.apache.org/jira/browse/FALCON-488) | Introduce Workflow Context in Lineage Service |  Major | messaging | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-492](https://issues.apache.org/jira/browse/FALCON-492) | Refactor workflow listener implementation init config driven |  Major | messaging | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-471](https://issues.apache.org/jira/browse/FALCON-471) | Add support for limits to list, status, and other applicable API |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-472](https://issues.apache.org/jira/browse/FALCON-472) | Ability to Filter instances list API by a specific status |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-473](https://issues.apache.org/jira/browse/FALCON-473) | Add ability to filter API by custom fields |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-504](https://issues.apache.org/jira/browse/FALCON-504) | Add ability to filter by tags in REST API |  Major | webapp | Sowmya Ramesh | Balu Vellanki |
| [FALCON-512](https://issues.apache.org/jira/browse/FALCON-512) | API support for Monitoring |  Minor | client | Balu Vellanki |  |
| [FALCON-614](https://issues.apache.org/jira/browse/FALCON-614) | Add pipeline element to process entity |  Major | process | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-615](https://issues.apache.org/jira/browse/FALCON-615) | Add pipleline element to lineage graph |  Major | process | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-470](https://issues.apache.org/jira/browse/FALCON-470) | Add support for pagination, filter by, etc. to Entity and Instance List API |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-166](https://issues.apache.org/jira/browse/FALCON-166) | Instance status start and end dates are rigid and inconvenient |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-474](https://issues.apache.org/jira/browse/FALCON-474) | Add Bulk APIs to drive the dashboard needs |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-325](https://issues.apache.org/jira/browse/FALCON-325) | Process lineage information for Replication policies |  Major | . | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-594](https://issues.apache.org/jira/browse/FALCON-594) | Process lineage information for Retention policies |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-579](https://issues.apache.org/jira/browse/FALCON-579) | Lineage breaks if feed.xml doesn't have the date pattern in feed path location |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-640](https://issues.apache.org/jira/browse/FALCON-640) | Add ability to specify sort order for orderBy param in RestAPI |  Major | . | Balu Vellanki | Balu Vellanki |
| [FALCON-660](https://issues.apache.org/jira/browse/FALCON-660) | 7 test classes refactored and few of them documented |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-674](https://issues.apache.org/jira/browse/FALCON-674) | General code factored out for ProcessInstance\* tests |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-661](https://issues.apache.org/jira/browse/FALCON-661) | Add list types API |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-662](https://issues.apache.org/jira/browse/FALCON-662) | Fetch relationships for a given type API |  Major | webapp | Venkatesh Seetharam | Balu Vellanki |
| [FALCON-635](https://issues.apache.org/jira/browse/FALCON-635) | Add recipe option in falcon client |  Major | client | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-636](https://issues.apache.org/jira/browse/FALCON-636) | Add a sample recipe for disaster recovery of hdfs dirs/files |  Major | . | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-651](https://issues.apache.org/jira/browse/FALCON-651) | Typos in Falcon Documentation |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-701](https://issues.apache.org/jira/browse/FALCON-701) | HadoopUtil and Util classes documented |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-757](https://issues.apache.org/jira/browse/FALCON-757) | Discontinue support for Hadoop-1.x |  Major | hadoop | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-758](https://issues.apache.org/jira/browse/FALCON-758) | Discontinue support for Oozie-3.x |  Major | oozie | Venkatesh Seetharam | Peeyush Bishnoi |
| [FALCON-687](https://issues.apache.org/jira/browse/FALCON-687) | Add hooks for extensions in Audit |  Major | webapp | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-20](https://issues.apache.org/jira/browse/FALCON-20) | Remove dependency on custom InMobi DistCp |  Major | replication | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-786](https://issues.apache.org/jira/browse/FALCON-786) | FalconAuditFilter - Arguments in wrong order |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-762](https://issues.apache.org/jira/browse/FALCON-762) | Support feed listing for file system storage |  Major | client, feed | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-799](https://issues.apache.org/jira/browse/FALCON-799) | Falcon Dashboard unusable when server is started with umask 077 |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-795](https://issues.apache.org/jira/browse/FALCON-795) | Maven Enforcer plugin is throwing error while building Falcon. |  Minor | . | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-784](https://issues.apache.org/jira/browse/FALCON-784) | Update release notes in CHANGES.txt in branch and trunk |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-783](https://issues.apache.org/jira/browse/FALCON-783) | Create branch-0.6 and update version to 0.6-incubating |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-897](https://issues.apache.org/jira/browse/FALCON-897) | remove regression code from source release |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-901](https://issues.apache.org/jira/browse/FALCON-901) | Addon designer should be excluded from 0.6 release |  Major | . | Balu Vellanki | Balu Vellanki |
| [FALCON-903](https://issues.apache.org/jira/browse/FALCON-903) | Remove SNAPSHOT from version in \*/pom.xml in branch-0.6 |  Major | . | Balu Vellanki | Balu Vellanki |
| [FALCON-785](https://issues.apache.org/jira/browse/FALCON-785) | Document upgrade path from 0.5 to 0.6 |  Major | docs | Venkatesh Seetharam | Balu Vellanki |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-303](https://issues.apache.org/jira/browse/FALCON-303) | Ability to limit the result set on the "instances status" call |  Major | . | Dmytro Sen | Balu Vellanki |
| [FALCON-804](https://issues.apache.org/jira/browse/FALCON-804) | Remove Oozie 3.\* patch files from Falcon |  Major | build-tools | Peeyush Bishnoi | Peeyush Bishnoi |


