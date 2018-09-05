
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

## Release 0.4 - 2014-02-02



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-107](https://issues.apache.org/jira/browse/FALCON-107) | Adding extensions |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-54](https://issues.apache.org/jira/browse/FALCON-54) | Falcon support for hadoop 2.0 |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-85](https://issues.apache.org/jira/browse/FALCON-85) | Hive (HCatalog) integration |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-80](https://issues.apache.org/jira/browse/FALCON-80) | Option in falcon-start to not start embedded activemq |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-73](https://issues.apache.org/jira/browse/FALCON-73) | Remove JUnit dependency as its used only for asserts while TestNG for tests |  Trivial | tests | Venkatesh Seetharam | Srikanth Sundarrajan |
| [FALCON-83](https://issues.apache.org/jira/browse/FALCON-83) | Option to build distributed packages |  Major | general | Shwetha G S | Shwetha G S |
| [FALCON-131](https://issues.apache.org/jira/browse/FALCON-131) | Remove set -e from falcon scripts |  Major | general | Suresh Srinivas | Suresh Srinivas |
| [FALCON-151](https://issues.apache.org/jira/browse/FALCON-151) | Document the REST APIs for Falcon |  Minor | docs | Venkatesh Seetharam | Raghav Kumar Gautam |
| [FALCON-165](https://issues.apache.org/jira/browse/FALCON-165) | simplify packaging to create one package instead of client, falcon and prism packages |  Major | . | Arpit Gupta | Arpit Gupta |
| [FALCON-164](https://issues.apache.org/jira/browse/FALCON-164) | Provide Falcon Prism Web UI |  Major | client, prism | Srimanth Gunturi | Srimanth Gunturi |
| [FALCON-192](https://issues.apache.org/jira/browse/FALCON-192) | Release falcon 0.4 umbrella |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-61](https://issues.apache.org/jira/browse/FALCON-61) | The identifier regex for oozie bundle,coordinator, workflow pattern is incorrect. |  Minor | oozie | Suhas Vasu | Srikanth Sundarrajan |
| [FALCON-72](https://issues.apache.org/jira/browse/FALCON-72) | Feeds with invalid oozie URI in cluster cannot be deleted |  Major | general | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-79](https://issues.apache.org/jira/browse/FALCON-79) | Fix typos in Falcon architecture document |  Trivial | . | Suresh Srinivas | Suresh Srinivas |
| [FALCON-71](https://issues.apache.org/jira/browse/FALCON-71) | mvn jetty:run doesn't work |  Major | tests | Shwetha G S | Srikanth Sundarrajan |
| [FALCON-42](https://issues.apache.org/jira/browse/FALCON-42) | Simplify Build and Installation Guide |  Major | docs | Ashish Paliwal |  |
| [FALCON-100](https://issues.apache.org/jira/browse/FALCON-100) | Build error with mvn 3.0.4 |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-101](https://issues.apache.org/jira/browse/FALCON-101) | mvn release:prepare fails because of build order |  Major | general | Shwetha G S | Shwetha G S |
| [FALCON-127](https://issues.apache.org/jira/browse/FALCON-127) | Fix test issues after FALCON-107 |  Blocker | . | Shwetha G S | Shwetha G S |
| [FALCON-128](https://issues.apache.org/jira/browse/FALCON-128) | Feed replication post processing log mover error |  Major | feed | Samarth Gupta | Shwetha G S |
| [FALCON-50](https://issues.apache.org/jira/browse/FALCON-50) | Falcon replication having issue to s3 |  Major | general | Biswajit Nayak |  |
| [FALCON-69](https://issues.apache.org/jira/browse/FALCON-69) | exception from ConfigurationChangeListener should fail the API |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-132](https://issues.apache.org/jira/browse/FALCON-132) | assembly plugin for embedded does not generate client artifacts |  Minor | general | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-24](https://issues.apache.org/jira/browse/FALCON-24) | Allow re-run of timedout instances |  Major | . | Shwetha G S | Samarth Gupta |
| [FALCON-142](https://issues.apache.org/jira/browse/FALCON-142) | Cleanup testng dependency |  Major | . | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-152](https://issues.apache.org/jira/browse/FALCON-152) | REST API for entity & Admin resources only returns XML |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-168](https://issues.apache.org/jira/browse/FALCON-168) | Different validity of clusters in feed not handled |  Major | replication | Samarth Gupta | Venkatesh Seetharam |
| [FALCON-169](https://issues.apache.org/jira/browse/FALCON-169) | multiple "/" in target for replication for multi target feed |  Major | replication | Samarth Gupta | Venkatesh Seetharam |
| [FALCON-182](https://issues.apache.org/jira/browse/FALCON-182) | Disable specifying partitions in inputs with table storage for process |  Major | process | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-179](https://issues.apache.org/jira/browse/FALCON-179) | Table replication must drop partition before import as late reruns fails |  Blocker | replication | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-180](https://issues.apache.org/jira/browse/FALCON-180) | Disable table replication for multiple sources |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-187](https://issues.apache.org/jira/browse/FALCON-187) | Update Falcon start script to also redirect stdout to the log file |  Major | . | Arpit Gupta | Arpit Gupta |
| [FALCON-174](https://issues.apache.org/jira/browse/FALCON-174) | bind activemq to all interfaces rather than just localhost |  Minor | . | Arpit Gupta | Arpit Gupta |
| [FALCON-162](https://issues.apache.org/jira/browse/FALCON-162) | Update falcon scripts to let the user set the log and pid locations. |  Major | . | Arpit Gupta | Arpit Gupta |
| [FALCON-159](https://issues.apache.org/jira/browse/FALCON-159) | Version API endpoint does not emit valid JSON |  Major | prism | Srimanth Gunturi | Srimanth Gunturi |
| [FALCON-188](https://issues.apache.org/jira/browse/FALCON-188) | hadoop-2 profile is not carried through to oozie package |  Major | oozie | Venkatesh Seetharam | Haohui Mai |
| [FALCON-185](https://issues.apache.org/jira/browse/FALCON-185) | Timestamp handled as int |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-186](https://issues.apache.org/jira/browse/FALCON-186) | Enable scheduler support for embedded activemq |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-201](https://issues.apache.org/jira/browse/FALCON-201) | Package oozie-el-extensions jar files as part of tarball. |  Major | general | Ashish Singh | Ashish Singh |
| [FALCON-158](https://issues.apache.org/jira/browse/FALCON-158) | Fix failing jenkins nightly build |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-213](https://issues.apache.org/jira/browse/FALCON-213) | Validating Storage Exists (table) should be called only from the server (not from prism) |  Critical | prism | Samarth Gupta | Venkatesh Seetharam |
| [FALCON-223](https://issues.apache.org/jira/browse/FALCON-223) | hive-exec bundles protobuf-2.4.1 which is incompatible with hadoop-2 requiring protobuf-2.5 |  Blocker | . | Venkatesh Seetharam | Arpit Gupta |
| [FALCON-215](https://issues.apache.org/jira/browse/FALCON-215) | falcon-start fails |  Major | . | Samarth Gupta | Arpit Gupta |
| [FALCON-38](https://issues.apache.org/jira/browse/FALCON-38) | Falcon's parent workflow actions (pre-processing & post-processing) should have mulitple retries |  Major | oozie, process | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-258](https://issues.apache.org/jira/browse/FALCON-258) | Falcon status throws an error when external jobids are missing |  Major | general | Binish A.R | Suhas Vasu |
| [FALCON-60](https://issues.apache.org/jira/browse/FALCON-60) | Feed retention doesn't delete empty parent dirs |  Major | . | Shwetha G S | Shaik Idris Ali |
| [FALCON-494](https://issues.apache.org/jira/browse/FALCON-494) | update feature broken |  Blocker | general | Samarth Gupta | Shwetha G S |
| [FALCON-495](https://issues.apache.org/jira/browse/FALCON-495) | multi source single target feed replication failing in regression |  Major | replication | Samarth Gupta | Satish Mittal |
| [FALCON-569](https://issues.apache.org/jira/browse/FALCON-569) | SUSPENDED process going RUNNING state after update |  Major | general | Samarth Gupta |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-67](https://issues.apache.org/jira/browse/FALCON-67) | Remove ant dependency in oozie workflows |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-78](https://issues.apache.org/jira/browse/FALCON-78) | Falcon error when prism on one hadoop version and server on another |  Major | prism | Anoop Narang | Shwetha G S |
| [FALCON-62](https://issues.apache.org/jira/browse/FALCON-62) | Falcon compilation with hadoop 2.0 libs |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-63](https://issues.apache.org/jira/browse/FALCON-63) | Ability to ingest hadoop libs to falcon release package |  Major | . | Shwetha G S | Suhas Vasu |
| [FALCON-86](https://issues.apache.org/jira/browse/FALCON-86) | Hive table integration with cluster entity |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-88](https://issues.apache.org/jira/browse/FALCON-88) | Add embedded hive and webhcat for integration tests |  Major | tests | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-87](https://issues.apache.org/jira/browse/FALCON-87) | Hive table integration with feed entity |  Major | feed | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-96](https://issues.apache.org/jira/browse/FALCON-96) | Hive client to talk to the metastore |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-103](https://issues.apache.org/jira/browse/FALCON-103) | Upgrade oozie to 4.0.x |  Major | oozie | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-102](https://issues.apache.org/jira/browse/FALCON-102) | Add integration tests for feed entity parser with table defined |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-76](https://issues.apache.org/jira/browse/FALCON-76) | Use cluster readonly endpoint for replication source |  Major | . | Shwetha G S | Suhas Vasu |
| [FALCON-113](https://issues.apache.org/jira/browse/FALCON-113) | Update documentation for Hive integration |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-94](https://issues.apache.org/jira/browse/FALCON-94) | Retention to handle hive table eviction |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-93](https://issues.apache.org/jira/browse/FALCON-93) | Replication to handle hive table replication |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-90](https://issues.apache.org/jira/browse/FALCON-90) | Propagate hive table through Process mapper |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-129](https://issues.apache.org/jira/browse/FALCON-129) | Disable Late data handling for hive tables |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-104](https://issues.apache.org/jira/browse/FALCON-104) | FALCON-86 introduces a backward incompatible change |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-146](https://issues.apache.org/jira/browse/FALCON-146) | Javadoc generation should respect skipCheck property |  Major | build-tools | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-91](https://issues.apache.org/jira/browse/FALCON-91) | Handle feed updates in purview of tables |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-153](https://issues.apache.org/jira/browse/FALCON-153) | Feed Storage type isn't passed in replication for successful post processing |  Critical | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-154](https://issues.apache.org/jira/browse/FALCON-154) | Remove webhcat startup in HadoopStartupListener as its not used |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-95](https://issues.apache.org/jira/browse/FALCON-95) | Enable embedding hive scripts directly in a process |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-143](https://issues.apache.org/jira/browse/FALCON-143) | Enable Late data handling for hive tables |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-161](https://issues.apache.org/jira/browse/FALCON-161) | Feed evictor evicts instances not eligible when pattern has dash |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-163](https://issues.apache.org/jira/browse/FALCON-163) | Merge FALCON-85 branch into main line |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-171](https://issues.apache.org/jira/browse/FALCON-171) | Provide status in /api/entities/list |  Major | general | Haohui Mai | Haohui Mai |
| [FALCON-190](https://issues.apache.org/jira/browse/FALCON-190) | /api/entities/list should allow the client to query different fields |  Major | general | Srikanth Sundarrajan | Haohui Mai |
| [FALCON-175](https://issues.apache.org/jira/browse/FALCON-175) | Visualize dependency information |  Major | prism | Haohui Mai | Haohui Mai |
| [FALCON-178](https://issues.apache.org/jira/browse/FALCON-178) | Implement client-side pagination |  Minor | general | Haohui Mai | Haohui Mai |
| [FALCON-193](https://issues.apache.org/jira/browse/FALCON-193) | Update the documentation to reflect the current work of dashboard |  Major | general | Haohui Mai | Haohui Mai |
| [FALCON-195](https://issues.apache.org/jira/browse/FALCON-195) | Update trunk version to 0.5-incubating-SNAPSHOT |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-196](https://issues.apache.org/jira/browse/FALCON-196) | Create branch-0.4 and update version to 0.4-incubating |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-194](https://issues.apache.org/jira/browse/FALCON-194) | Import external libraries into the repository |  Major | general | Haohui Mai | Haohui Mai |
| [FALCON-198](https://issues.apache.org/jira/browse/FALCON-198) | Update LICENSE.txt to contain license information for all third-party libraries |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-203](https://issues.apache.org/jira/browse/FALCON-203) | Do not generate transitive closure for the dependency graph |  Major | general | Haohui Mai | Haohui Mai |
| [FALCON-204](https://issues.apache.org/jira/browse/FALCON-204) | Process mapper generates params assuming table input and output as names literally |  Blocker | process | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-212](https://issues.apache.org/jira/browse/FALCON-212) | OozieClient does not propagate user in request to Oozie server |  Blocker | oozie | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-208](https://issues.apache.org/jira/browse/FALCON-208) | Improve the icons for instance lists |  Major | general | Haohui Mai | Haohui Mai |
| [FALCON-197](https://issues.apache.org/jira/browse/FALCON-197) | Update release notes in CHANGES.txt in branch and trunk |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-294](https://issues.apache.org/jira/browse/FALCON-294) | Update the podling status page post release |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-43](https://issues.apache.org/jira/browse/FALCON-43) | Add Falcon to Sonar for Analysis |  Major | . | Ashish Paliwal | Srikanth Sundarrajan |
| [FALCON-136](https://issues.apache.org/jira/browse/FALCON-136) | Upgrade to commons-codec 1.8 |  Trivial | general | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-135](https://issues.apache.org/jira/browse/FALCON-135) | Remove jzlib dependency |  Trivial | . | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-137](https://issues.apache.org/jira/browse/FALCON-137) | Remove commons-logging dependency |  Trivial | . | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-138](https://issues.apache.org/jira/browse/FALCON-138) | Remove perf4j dependency |  Trivial | . | Jean-Baptiste Onofré | Jean-Baptiste Onofré |
| [FALCON-134](https://issues.apache.org/jira/browse/FALCON-134) | Remove jsch dependency |  Trivial | . | Jean-Baptiste Onofré | Jean-Baptiste Onofré |


