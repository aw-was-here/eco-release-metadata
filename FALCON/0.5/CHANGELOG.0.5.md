
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

## Release 0.5 - 2014-09-10



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-238](https://issues.apache.org/jira/browse/FALCON-238) | Support updates at specific time |  Major | . | Shwetha G S | Shwetha G S |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-66](https://issues.apache.org/jira/browse/FALCON-66) | Make oozie version change configurable |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-64](https://issues.apache.org/jira/browse/FALCON-64) | Add example entity xmls in falcon package |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-233](https://issues.apache.org/jira/browse/FALCON-233) | Update hadoop 2 version to 2.2.0 |  Minor | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-252](https://issues.apache.org/jira/browse/FALCON-252) | Upgrade to json-simple 1.1.1 |  Major | general | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-247](https://issues.apache.org/jira/browse/FALCON-247) | Add scripts to check the status of falcon and prism |  Major | general | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-26](https://issues.apache.org/jira/browse/FALCON-26) | Pipeline Monitor addition |  Major | client | Samarth Gupta | Suhas Vasu |
| [FALCON-271](https://issues.apache.org/jira/browse/FALCON-271) | Upgrade to maven-surefire-plugin 2.16 |  Major | . | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-342](https://issues.apache.org/jira/browse/FALCON-342) | Add ability to set maxMaps on replication |  Critical | feed, replication | Michael Miklavcic | Michael Miklavcic |
| [FALCON-356](https://issues.apache.org/jira/browse/FALCON-356) | Merge OozieProcessMapper and OozieProcessWorkflowBuilder |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-367](https://issues.apache.org/jira/browse/FALCON-367) | Bump dagre and jquery version for the web UI |  Major | . | Haohui Mai | Haohui Mai |
| [FALCON-380](https://issues.apache.org/jira/browse/FALCON-380) | The dependency option doesn't mention input or output for a feed |  Major | . | Suhas Vasu | Suhas Vasu |
| [FALCON-393](https://issues.apache.org/jira/browse/FALCON-393) | Display error messages when the web UI fails to get the data from the server |  Major | . | Haohui Mai | Haohui Mai |
| [FALCON-391](https://issues.apache.org/jira/browse/FALCON-391) | Add ability to set mapBandwidth |  Major | feed, replication | Michael Miklavcic | Michael Miklavcic |
| [FALCON-392](https://issues.apache.org/jira/browse/FALCON-392) | HCat recipes |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-11](https://issues.apache.org/jira/browse/FALCON-11) | Add support for security in Falcon |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-421](https://issues.apache.org/jira/browse/FALCON-421) | Upgrade Hadoop to 2.4.0 |  Major | . | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-369](https://issues.apache.org/jira/browse/FALCON-369) | Refactor workflow builder |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-572](https://issues.apache.org/jira/browse/FALCON-572) | HadoopUtil cleanup in falcon-regression |  Minor | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-412](https://issues.apache.org/jira/browse/FALCON-412) | Release falcon 0.5 umbrella |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-228](https://issues.apache.org/jira/browse/FALCON-228) | Build failed on build-tools module |  Major | build-tools | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-106](https://issues.apache.org/jira/browse/FALCON-106) | Falcon compilation fails for hadoop-2 profile |  Major | build-tools | Suresh Srinivas | Shwetha G S |
| [FALCON-232](https://issues.apache.org/jira/browse/FALCON-232) | mvn clean verify fails with oozie war not found |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-226](https://issues.apache.org/jira/browse/FALCON-226) | Tests for subscribing/listening to multiple active-mq topics |  Major | common, messaging, rerun | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-236](https://issues.apache.org/jira/browse/FALCON-236) | Falcon process output events which is optional should have at least one event if defined |  Minor | client, process | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-206](https://issues.apache.org/jira/browse/FALCON-206) | Process update for wf changes |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-241](https://issues.apache.org/jira/browse/FALCON-241) | The job logs are not copied during Post-Processing step in Replication workflows |  Major | . | Suhas Vasu | Suhas Vasu |
| [FALCON-249](https://issues.apache.org/jira/browse/FALCON-249) | Fix mistakes in docs/InstallationSteps.html |  Major | docs | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-262](https://issues.apache.org/jira/browse/FALCON-262) | Example files should use aligned dependency versions |  Major | docs | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-38](https://issues.apache.org/jira/browse/FALCON-38) | Falcon's parent workflow actions (pre-processing & post-processing) should have mulitple retries |  Major | oozie, process | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-268](https://issues.apache.org/jira/browse/FALCON-268) | Checkstyle/Findbugs issues on FalconCLI |  Major | client | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-260](https://issues.apache.org/jira/browse/FALCON-260) | When a process is scheduled, the user workflow is failing with OozieClientException |  Critical | . | Suhas Vasu | Shwetha G S |
| [FALCON-123](https://issues.apache.org/jira/browse/FALCON-123) | Improve build speeds in falcon |  Major | build-tools | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-270](https://issues.apache.org/jira/browse/FALCON-270) | Checkstyle can not be run on a module |  Major | . | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-221](https://issues.apache.org/jira/browse/FALCON-221) | Logmover is not copying all action level logs |  Minor | archival | Pracheer Agarwal | Srikanth Sundarrajan |
| [FALCON-264](https://issues.apache.org/jira/browse/FALCON-264) | Update with endTime in CLI |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-239](https://issues.apache.org/jira/browse/FALCON-239) | Build failed on build-tools due to a missing SNAPSHOT |  Blocker | build-tools | Jean-Baptiste Onofré | Srikanth Sundarrajan |
| [FALCON-304](https://issues.apache.org/jira/browse/FALCON-304) | Simplify assembly for script in standalone and distributed mode |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [FALCON-266](https://issues.apache.org/jira/browse/FALCON-266) | HCatalog partition registration with same HDFS location format within process |  Major | . | Satish Mittal | Satish Mittal |
| [FALCON-278](https://issues.apache.org/jira/browse/FALCON-278) | Changes in feed availability info doesn't update process |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-242](https://issues.apache.org/jira/browse/FALCON-242) | Post processing is not called in Retention workflows |  Major | . | Suhas Vasu | Shaik Idris Ali |
| [FALCON-311](https://issues.apache.org/jira/browse/FALCON-311) | Several dead links in Falcon documentation |  Minor | . | Suresh Srinivas | Suresh Srinivas |
| [FALCON-297](https://issues.apache.org/jira/browse/FALCON-297) | Validations on update with effective time |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-330](https://issues.apache.org/jira/browse/FALCON-330) | Build fails for the module 'Apache Falcon CLI client ' on ubuntu |  Major | client | Deepak Marathe | Deepak Marathe |
| [FALCON-321](https://issues.apache.org/jira/browse/FALCON-321) | Feed evictor deleting more stuff than it should |  Blocker | . | Raghav Kumar Gautam | Shaik Idris Ali |
| [FALCON-333](https://issues.apache.org/jira/browse/FALCON-333) | jsp-api dependency is defined twice |  Minor | common | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-319](https://issues.apache.org/jira/browse/FALCON-319) | Summary instance API returning wrong exception |  Major | common | Samarth Gupta | Shwetha G S |
| [FALCON-323](https://issues.apache.org/jira/browse/FALCON-323) | Summary API deserialization fails if array has only one element |  Major | . | Samarth Gupta | Shwetha G S |
| [FALCON-331](https://issues.apache.org/jira/browse/FALCON-331) | Summary API returning NPE if only start is passed |  Major | . | Samarth Gupta | Shwetha G S |
| [FALCON-315](https://issues.apache.org/jira/browse/FALCON-315) | Trunk build broken |  Critical | . | Srikanth Sundarrajan | Venkatesh Seetharam |
| [FALCON-336](https://issues.apache.org/jira/browse/FALCON-336) | FALCON-331 introduced a check style error - builds fail |  Critical | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-302](https://issues.apache.org/jira/browse/FALCON-302) | Issues with distributed package properties |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-257](https://issues.apache.org/jira/browse/FALCON-257) | File system storage wont work with relative paths |  Critical | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-347](https://issues.apache.org/jira/browse/FALCON-347) | Retention FeedEvictorTest fails |  Major | retention | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-344](https://issues.apache.org/jira/browse/FALCON-344) | FeedEvictorTest failure |  Minor | retention | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-355](https://issues.apache.org/jira/browse/FALCON-355) | Remove SLAMonitoringService |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-343](https://issues.apache.org/jira/browse/FALCON-343) | Post entity XSDs in a public place so users can use that to validate the entity definitions |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-363](https://issues.apache.org/jira/browse/FALCON-363) | Jetty is started with war when the war is already expanded |  Minor | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-269](https://issues.apache.org/jira/browse/FALCON-269) | Mistake in the embedded ActiveMQ port property |  Major | messaging | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-98](https://issues.apache.org/jira/browse/FALCON-98) | starting embedded hadoop fails sometimes |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-365](https://issues.apache.org/jira/browse/FALCON-365) | Remove the checked in oozie xsds |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-374](https://issues.apache.org/jira/browse/FALCON-374) | Update with effective time in CLI |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-332](https://issues.apache.org/jira/browse/FALCON-332) | Oozie execution order is wrongly mapped in Falcon for LAST\_ONLY |  Critical | client | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-378](https://issues.apache.org/jira/browse/FALCON-378) | Feed status fails with NPE post update when the new coordinator is in PREP state |  Major | oozie | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-377](https://issues.apache.org/jira/browse/FALCON-377) | Unit test fails consistently - EntityManagerJerseyIT.testProcessInputUpdate |  Major | tests | Venkatesh Seetharam | Shwetha G S |
| [FALCON-352](https://issues.apache.org/jira/browse/FALCON-352) | old properties not removed on refresh of runtime properties |  Major | . | Samarth Gupta | Shaik Idris Ali |
| [FALCON-396](https://issues.apache.org/jira/browse/FALCON-396) | minor logging typo in FalconTopicSubscriber |  Major | . | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-409](https://issues.apache.org/jira/browse/FALCON-409) | Not able to create a package |  Major | build-tools | Raju Bairishetti | Raju Bairishetti |
| [FALCON-397](https://issues.apache.org/jira/browse/FALCON-397) | DistCp uses JobSubmissionFiles API which is incompatible between hadoop versions |  Major | replication | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-284](https://issues.apache.org/jira/browse/FALCON-284) | Hcatalog based feed retention doesn't work when partition filter spans across multiple partition keys |  Major | . | Satish Mittal | Satish Mittal |
| [FALCON-418](https://issues.apache.org/jira/browse/FALCON-418) | Webapp doesn't compile |  Blocker | tests, webapp | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-395](https://issues.apache.org/jira/browse/FALCON-395) | Falcon service does not start when \_HOST is used in the spnego principal |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-390](https://issues.apache.org/jira/browse/FALCON-390) | falcon HCatProcess tests are failing in secure clusters |  Major | . | Raghav Kumar Gautam | Venkatesh Seetharam |
| [FALCON-398](https://issues.apache.org/jira/browse/FALCON-398) | Null pointer Exception on submitting HCat Feed |  Major | . | Karishma Gulati | Sowmya Ramesh |
| [FALCON-364](https://issues.apache.org/jira/browse/FALCON-364) | Process specification contains a mistake in the parallel section |  Trivial | docs | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-420](https://issues.apache.org/jira/browse/FALCON-420) | hcatalog replication is failing as current user is trying to write to path owned by falcon |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-401](https://issues.apache.org/jira/browse/FALCON-401) | replicate hcat table to two targets can fail with export dir exists on source |  Major | . | Arpit Gupta | Sowmya Ramesh |
| [FALCON-426](https://issues.apache.org/jira/browse/FALCON-426) | Prism unable to connect to falcon server if falcon endpoint URL ends with '/' character |  Major | . | Satish Mittal | Satish Mittal |
| [FALCON-28](https://issues.apache.org/jira/browse/FALCON-28) | unable to submit/delete feed or process which had been attempted submit with wrong cluster |  Major | prism | Samarth Gupta | Shwetha G S |
| [FALCON-425](https://issues.apache.org/jira/browse/FALCON-425) | src/bin/package.sh is broken for hadoop 2.\* versions |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-427](https://issues.apache.org/jira/browse/FALCON-427) | Update default falcon endpoint URL in runtime.properties for prism setup to work out of box |  Major | . | Satish Mittal | Satish Mittal |
| [FALCON-429](https://issues.apache.org/jira/browse/FALCON-429) | Falcon CLI entity list command throws NPE stack trace in case of no entities |  Major | . | Satish Mittal | Satish Mittal |
| [FALCON-379](https://issues.apache.org/jira/browse/FALCON-379) | Document limitations of Hive support in Falcon |  Major | docs | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-312](https://issues.apache.org/jira/browse/FALCON-312) | Falcon LogCleanupServiceTest seems to clean up root "/" |  Blocker | common | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-437](https://issues.apache.org/jira/browse/FALCON-437) | Feed Replication workflows are failing |  Blocker | . | Satish Mittal | Venkatesh Seetharam |
| [FALCON-494](https://issues.apache.org/jira/browse/FALCON-494) | update feature broken |  Blocker | general | Samarth Gupta | Shwetha G S |
| [FALCON-357](https://issues.apache.org/jira/browse/FALCON-357) | HCatalog Feed replication: Hive export job fails when table partition contains multiple dated columns |  Major | . | Satish Mittal | Satish Mittal |
| [FALCON-571](https://issues.apache.org/jira/browse/FALCON-571) | user libs not getting loaded during process execution |  Blocker | process | Samarth Gupta | Shwetha G S |
| [FALCON-597](https://issues.apache.org/jira/browse/FALCON-597) | String logged at the start and end of the merlin test are slightly mismatched |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-582](https://issues.apache.org/jira/browse/FALCON-582) | Latest changes to LICENSE files results in build failure |  Major | general | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-691](https://issues.apache.org/jira/browse/FALCON-691) | Build issues - Hadoop-2 profile |  Blocker | build-tools, oozie | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-727](https://issues.apache.org/jira/browse/FALCON-727) | JQuery license is incorrectly mentioned in the header file |  Major | license | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-764](https://issues.apache.org/jira/browse/FALCON-764) | Falcon retry of failed process/feed instances broken during restart |  Critical | rerun | Shaik Idris Ali | Shaik Idris Ali |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-254](https://issues.apache.org/jira/browse/FALCON-254) | Bootstrap designer module |  Major | designer | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-259](https://issues.apache.org/jira/browse/FALCON-259) | Design Transformation Interface |  Major | designer | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-281](https://issues.apache.org/jira/browse/FALCON-281) | Design Action Interface |  Major | designer | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-14](https://issues.apache.org/jira/browse/FALCON-14) | secure falcon daemon |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-15](https://issues.apache.org/jira/browse/FALCON-15) | Secure Hadoop client interface |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-16](https://issues.apache.org/jira/browse/FALCON-16) | Secure Oozie client interface |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-17](https://issues.apache.org/jira/browse/FALCON-17) | Secure Falcon Web Interface |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-18](https://issues.apache.org/jira/browse/FALCON-18) | Secure Falcon Client Interface |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-219](https://issues.apache.org/jira/browse/FALCON-219) | Secure hive/hcatalog client interface |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-220](https://issues.apache.org/jira/browse/FALCON-220) | Post processing should propagate user information in messages for offline processing |  Major | messaging | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-227](https://issues.apache.org/jira/browse/FALCON-227) | Secure Dashboard - need to send a valid user instead of 'admin' |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-231](https://issues.apache.org/jira/browse/FALCON-231) | Document security configuration |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-286](https://issues.apache.org/jira/browse/FALCON-286) | Capture information in process entity about the user workflow |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-287](https://issues.apache.org/jira/browse/FALCON-287) | Record lineage information in post processing |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-288](https://issues.apache.org/jira/browse/FALCON-288) | Persist lineage information into a persistent store |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-289](https://issues.apache.org/jira/browse/FALCON-289) | Provide REST APIs for discovering lineage metadata over the store |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-334](https://issues.apache.org/jira/browse/FALCON-334) | Add indexing to the graph property keys |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-354](https://issues.apache.org/jira/browse/FALCON-354) | Bug when MetadataMappingService is not configured as one of the application services |  Minor | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-358](https://issues.apache.org/jira/browse/FALCON-358) | REST API does not conform to Rexster |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-359](https://issues.apache.org/jira/browse/FALCON-359) | Instance id's captured are of different formats in process and feed |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-360](https://issues.apache.org/jira/browse/FALCON-360) | Lineage recording fails with NPE for processes with \>1 inputs |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-366](https://issues.apache.org/jira/browse/FALCON-366) | Add a REST API to get properties for a given vertex |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-370](https://issues.apache.org/jira/browse/FALCON-370) | Remove Graph dump option in CLI |  Minor | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-290](https://issues.apache.org/jira/browse/FALCON-290) | Visualize lineage information on the dashboard |  Major | . | Venkatesh Seetharam | Haohui Mai |
| [FALCON-371](https://issues.apache.org/jira/browse/FALCON-371) | Show vertex information in the web UI |  Major | . | Haohui Mai | Haohui Mai |
| [FALCON-373](https://issues.apache.org/jira/browse/FALCON-373) | Display lineage link only for jobs that are succeeded in the web UI |  Major | . | Haohui Mai | Haohui Mai |
| [FALCON-229](https://issues.apache.org/jira/browse/FALCON-229) | Enable SSL for Falcon REST API |  Blocker | . | Venkatesh Seetharam | Srikanth Sundarrajan |
| [FALCON-414](https://issues.apache.org/jira/browse/FALCON-414) | Create branch-0.5 and update version to 0.5-incubating |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-413](https://issues.apache.org/jira/browse/FALCON-413) | Update trunk version to 0.6-incubating-SNAPSHOT |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-415](https://issues.apache.org/jira/browse/FALCON-415) | Update release notes in CHANGES.txt in branch and trunk |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-324](https://issues.apache.org/jira/browse/FALCON-324) | Document lineage feature |  Major | . | Venkatesh Seetharam | Sowmya Ramesh |
| [FALCON-439](https://issues.apache.org/jira/browse/FALCON-439) | Update the copyright in Notice and License files |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-440](https://issues.apache.org/jira/browse/FALCON-440) | Exclude IDEA IntelliJ and other unnecessary files from source distribution |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-448](https://issues.apache.org/jira/browse/FALCON-448) | File names in the release should have apache as the prefix |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-447](https://issues.apache.org/jira/browse/FALCON-447) | Remove the jar file form the source distribution |  Major | tests | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-449](https://issues.apache.org/jira/browse/FALCON-449) | Twik documentation files may need ALv2 headers |  Major | docs | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-450](https://issues.apache.org/jira/browse/FALCON-450) | Add jdk 1.6 requirement in release notes |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-454](https://issues.apache.org/jira/browse/FALCON-454) | Include a header for each key entry |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-453](https://issues.apache.org/jira/browse/FALCON-453) | possible LICENSE/NOTICE issues |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-245](https://issues.apache.org/jira/browse/FALCON-245) | POM should use Apache POM as parent |  Major | build-tools | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-386](https://issues.apache.org/jira/browse/FALCON-386) | Upgrade to oozie 4.0.1 |  Major | oozie | Jean-Baptiste Onofré | Sowmya Ramesh |


