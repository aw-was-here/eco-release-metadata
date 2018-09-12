
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

## Release 0.11 - Unreleased (as of 2018-09-12)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1596](https://issues.apache.org/jira/browse/FALCON-1596) | Spring shell based CLI for falcon |  Major | shell | Rajat Khandelwal | Praveen Adlakha |
| [FALCON-2082](https://issues.apache.org/jira/browse/FALCON-2082) | Add CSRF filter for REST APIs |  Major | prism | Ying Zheng | Ying Zheng |
| [FALCON-2182](https://issues.apache.org/jira/browse/FALCON-2182) | Add support for Falcon user extensions |  Major | extensions | Pallavi Rao |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1944](https://issues.apache.org/jira/browse/FALCON-1944) | Ability to provide additional DistCP options for mirroring extensions and feed replication |  Major | extensions, replication | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-2039](https://issues.apache.org/jira/browse/FALCON-2039) | Move falcon post processing to falcon server and remove post processing action from falcon workflow |  Major | general | sandeep samudrala | Praveen Adlakha |
| [FALCON-1776](https://issues.apache.org/jira/browse/FALCON-1776) | Process instance update in titan DB based on JMS notifications on coordinator actions |  Major | process | Ying Zheng | Ying Zheng |
| [FALCON-2123](https://issues.apache.org/jira/browse/FALCON-2123) | Make Blocking Queue configurable in LogMoverService |  Major | general | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2119](https://issues.apache.org/jira/browse/FALCON-2119) | Minor Licensing Issue |  Major | license | Ajay Yadava | Ajay Yadava |
| [FALCON-1856](https://issues.apache.org/jira/browse/FALCON-1856) | Fix ProcessInstanceStatusTest |  Major | regression | Pragya Mittal | Pragya Mittal |
| [FALCON-2077](https://issues.apache.org/jira/browse/FALCON-2077) | Api support for Process SLA |  Major | process | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2170](https://issues.apache.org/jira/browse/FALCON-2170) | Umbrella jira for bugs in EntitySLAMonitoring and BacklogEmitter service |  Major | metrics | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2173](https://issues.apache.org/jira/browse/FALCON-2173) | BacklogEmitterService should emit 0 for process which donot have backlog |  Major | metrics | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2044](https://issues.apache.org/jira/browse/FALCON-2044) | Persist Process stats in db |  Major | metrics | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2204](https://issues.apache.org/jira/browse/FALCON-2204) | Change mode for falcon\_merge\_pr.py to executable |  Major | dev-tools | Ajay Yadava | Ajay Yadava |
| [FALCON-2228](https://issues.apache.org/jira/browse/FALCON-2228) | Falcon should also set the feed output names as a coord property |  Major | feed | Pallavi Rao | sandeep samudrala |
| [FALCON-1494](https://issues.apache.org/jira/browse/FALCON-1494) | Revisit of Client and Apis |  Major | client, general | sandeep samudrala | Narayan Periwal |
| [FALCON-2247](https://issues.apache.org/jira/browse/FALCON-2247) | Include status of the entities of the extensionJob in getDetailExtensionJobs |  Minor | extensions | Pracheer Agarwal | Pracheer Agarwal |
| [FALCON-2246](https://issues.apache.org/jira/browse/FALCON-2246) | Api to list all the jobs in the system (and what extensions do they refer to) |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2289](https://issues.apache.org/jira/browse/FALCON-2289) | Report final state of metrics into graphite before stopping metric notification service |  Major | common | Pracheer Agarwal | Pracheer Agarwal |
| [FALCON-2288](https://issues.apache.org/jira/browse/FALCON-2288) | Remove job\_name validations for trusted extensions |  Major | extensions | Pracheer Agarwal | Pracheer Agarwal |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-2072](https://issues.apache.org/jira/browse/FALCON-2072) | Hive2 URLs in Falcon should allow additional configuration elements in the URL |  Major | general | Venkat Ranganathan | Sowmya Ramesh |
| [FALCON-2047](https://issues.apache.org/jira/browse/FALCON-2047) | HiveDR tests are failed due to data-mirroring does not have correct ownership/permissions |  Critical | replication | Murali Ramasami | Sowmya Ramesh |
| [FALCON-2108](https://issues.apache.org/jira/browse/FALCON-2108) | Fix licensing issues for Falcon release |  Blocker | general | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-2097](https://issues.apache.org/jira/browse/FALCON-2097) | Feed update with replication delay creates random number of holes/overlaps |  Major | replication | sandeep samudrala | sandeep samudrala |
| [FALCON-2111](https://issues.apache.org/jira/browse/FALCON-2111) | Build failed due to checkstyle violation |  Major | general | Balu Vellanki | Balu Vellanki |
| [FALCON-2115](https://issues.apache.org/jira/browse/FALCON-2115) | UT test failure on FalconCSRFFilterTest |  Major | general | Ying Zheng | Ying Zheng |
| [FALCON-2028](https://issues.apache.org/jira/browse/FALCON-2028) | HDFS extension: Validate and append/remove the scheme://authority for the paths |  Major | extensions | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-2096](https://issues.apache.org/jira/browse/FALCON-2096) | Feed instance listing doesn't give instance status of all the clusters. |  Major | common | sandeep samudrala | sandeep samudrala |
| [FALCON-2116](https://issues.apache.org/jira/browse/FALCON-2116) | Queue defined in \<retention-stage\> is not getting used in actual retention job |  Major | retention | sandeep samudrala | sandeep samudrala |
| [FALCON-2118](https://issues.apache.org/jira/browse/FALCON-2118) | Proposal for new UI changes for FALCON |  Major | falcon-ui | Venkat Ranganathan | Venkat Ranganathan |
| [FALCON-2113](https://issues.apache.org/jira/browse/FALCON-2113) | Falcon retry happens in few cases inspite of a manual kill from the user |  Major | common | sandeep samudrala | sandeep samudrala |
| [FALCON-2125](https://issues.apache.org/jira/browse/FALCON-2125) | Feed replication fails due to failed post processing action missing in workflow |  Major | feed, process | Pragya Mittal | Praveen Adlakha |
| [FALCON-2080](https://issues.apache.org/jira/browse/FALCON-2080) | Exceptions in the log |  Major | general | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2120](https://issues.apache.org/jira/browse/FALCON-2120) | falcon-regression build is failing because of CLI and hive changes |  Major | regression | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2127](https://issues.apache.org/jira/browse/FALCON-2127) | Fix the falcon regression compilation issue and delete the deprecated recipe test cases |  Critical | merlin | Murali Ramasami | Murali Ramasami |
| [FALCON-2121](https://issues.apache.org/jira/browse/FALCON-2121) | If a feed does not exist on a cluster, process submission fails with NPE |  Major | prism | Pallavi Rao | Pallavi Rao |
| [FALCON-2133](https://issues.apache.org/jira/browse/FALCON-2133) | Disable the LogMover assertions from FeedReplication on Secure Mode |  Major | merlin | Murali Ramasami | Murali Ramasami |
| [FALCON-2128](https://issues.apache.org/jira/browse/FALCON-2128) | Status api shows timeout instances as failed |  Major | prism | Pragya Mittal | sandeep samudrala |
| [FALCON-2146](https://issues.apache.org/jira/browse/FALCON-2146) | EntitySlaAlertService runs only once irrespective of the configured frequency |  Major | prism | Pragya Mittal | Praveen Adlakha |
| [FALCON-2148](https://issues.apache.org/jira/browse/FALCON-2148) | Entries not removed from sla list when instance succeeds |  Major | prism | Pragya Mittal | Praveen Adlakha |
| [FALCON-2147](https://issues.apache.org/jira/browse/FALCON-2147) | Excess logging due to SlaMonitoring service and Backlog emitter service |  Major | prism | Pragya Mittal | Pallavi Rao |
| [FALCON-2163](https://issues.apache.org/jira/browse/FALCON-2163) | Feed replication based on partition does not produce expected output |  Major | feed, prism | Pragya Mittal | Pallavi Rao |
| [FALCON-2171](https://issues.apache.org/jira/browse/FALCON-2171) | When feed from multiple colos are replicated, the colo folders get overwritten |  Major | replication | Pallavi Rao | Pallavi Rao |
| [FALCON-2175](https://issues.apache.org/jira/browse/FALCON-2175) |  java.lang.IllegalArgumentException in LogMover service |  Major | general | Pallavi Rao | Pallavi Rao |
| [FALCON-2177](https://issues.apache.org/jira/browse/FALCON-2177) | Improve error message when entity suspend fails |  Minor | prism | Pallavi Rao | Pallavi Rao |
| [FALCON-2203](https://issues.apache.org/jira/browse/FALCON-2203) | Minor issues in EntitySLAmonitoring |  Major | process | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2219](https://issues.apache.org/jira/browse/FALCON-2219) | Untracked files after falcon build |  Major | general | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2214](https://issues.apache.org/jira/browse/FALCON-2214) | Falcon extension registered without fully qualified hdfs path |  Major | extensions | Pragya Mittal | Praveen Adlakha |
| [FALCON-2215](https://issues.apache.org/jira/browse/FALCON-2215) | Extension job submission throws non intuitive error |  Major | common | Pragya Mittal | sandeep samudrala |
| [FALCON-2224](https://issues.apache.org/jira/browse/FALCON-2224) | Change return type of extension APIs to APIResult |  Major | extensions | Praveen Adlakha | Pracheer Agarwal |
| [FALCON-2230](https://issues.apache.org/jira/browse/FALCON-2230) | Extension API failure after APIResult changes |  Major | extensions | Pracheer Agarwal | Pracheer Agarwal |
| [FALCON-2221](https://issues.apache.org/jira/browse/FALCON-2221) | Submitting an existing job fails with MySQLIntegrityConstraintViolationException |  Minor | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2229](https://issues.apache.org/jira/browse/FALCON-2229) | Process Update/delete fails for issue with backlog metric service |  Major | process | sandeep samudrala | sandeep samudrala |
| [FALCON-2238](https://issues.apache.org/jira/browse/FALCON-2238) | Falcon extension describe feature is broken |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2239](https://issues.apache.org/jira/browse/FALCON-2239) | Falcon extension definition feature is broken |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2240](https://issues.apache.org/jira/browse/FALCON-2240) | Enable/disable feature is broken |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2242](https://issues.apache.org/jira/browse/FALCON-2242) | Extension validate feature is broken |  Major | extensions | Pragya Mittal | sandeep samudrala |
| [FALCON-2259](https://issues.apache.org/jira/browse/FALCON-2259) | Unregister an extension only if no extension jobs are dependant on the extension |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2261](https://issues.apache.org/jira/browse/FALCON-2261) | Job submission fails with IllegalArgumentException |  Major | extensions | Pragya Mittal | sandeep samudrala |
| [FALCON-2263](https://issues.apache.org/jira/browse/FALCON-2263) | Deletion of entities for an extension has to have a specific order of deleting processes first and then feeds |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2264](https://issues.apache.org/jira/browse/FALCON-2264) | Error response returns object instead of response-message |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2266](https://issues.apache.org/jira/browse/FALCON-2266) | Non-intuitive response while registering/unregistering/submitting extension via server |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2272](https://issues.apache.org/jira/browse/FALCON-2272) | Extension update succeeds while it is disabled |  Major | extensions | Pragya Mittal | sandeep samudrala |
| [FALCON-2271](https://issues.apache.org/jira/browse/FALCON-2271) | Scheduling non existing job fails with non intuitive response |  Major | extensions | Pragya Mittal | sandeep samudrala |
| [FALCON-2270](https://issues.apache.org/jira/browse/FALCON-2270) | Extension job details returns incomplete response |  Major | extensions | Pragya Mittal | Pallavi Rao |
| [FALCON-2268](https://issues.apache.org/jira/browse/FALCON-2268) | Extension list api does not follow default ASC order |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2267](https://issues.apache.org/jira/browse/FALCON-2267) | Definition api fails if resources are empty |  Major | extensions | Pragya Mittal |  |
| [FALCON-2269](https://issues.apache.org/jira/browse/FALCON-2269) | Extension api fails via server in distributed mode |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2275](https://issues.apache.org/jira/browse/FALCON-2275) | Unable to list instances of an extension |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2273](https://issues.apache.org/jira/browse/FALCON-2273) | Disallow external entity injection and clean up some log messages |  Major | general | Venkat Ranganathan | Venkat Ranganathan |
| [FALCON-2274](https://issues.apache.org/jira/browse/FALCON-2274) | Job list in extension is failing with IllegalArgumentException |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2276](https://issues.apache.org/jira/browse/FALCON-2276) | FalconCLIException while submitting trusted extension job |  Major | extensions | Richie Varghese | sandeep samudrala |
| [FALCON-2277](https://issues.apache.org/jira/browse/FALCON-2277) | Incorrect error message on registering trusted exceptions |  Major | extensions | Richie Varghese | Pracheer Agarwal |
| [FALCON-2279](https://issues.apache.org/jira/browse/FALCON-2279) | Killed instances are not rerun via falcon |  Major | rerun | Pragya Mittal | sandeep samudrala |
| [FALCON-2281](https://issues.apache.org/jira/browse/FALCON-2281) | HiveDRTest tests are getting permissions denied |  Major | general | Cheng Xu | Sowmya Ramesh |
| [FALCON-2283](https://issues.apache.org/jira/browse/FALCON-2283) | Internal Server Error : On trying to submit a trusted extension job |  Major | extensions | Richie Varghese | sandeep samudrala |
| [FALCON-2287](https://issues.apache.org/jira/browse/FALCON-2287) | Extension list fails with MIME type error on server |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2284](https://issues.apache.org/jira/browse/FALCON-2284) | Error while listing extension jobs |  Major | extensions | Richie Varghese | Pracheer Agarwal |
| [FALCON-2290](https://issues.apache.org/jira/browse/FALCON-2290) | Change staging directory for entity creation while extension job submission |  Major | extensions | Pracheer Agarwal | Pracheer Agarwal |
| [FALCON-2280](https://issues.apache.org/jira/browse/FALCON-2280) | Unable to create mirror on WASB target due to "Cluster entity not found" |  Major | extensions | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-2291](https://issues.apache.org/jira/browse/FALCON-2291) | Incorrect path to the REST calls on extension (POST) |  Major | docs | Pengfei Xuan | Pengfei Xuan |
| [FALCON-2292](https://issues.apache.org/jira/browse/FALCON-2292) | User Extension submission is failing because of the validate late inputs |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2286](https://issues.apache.org/jira/browse/FALCON-2286) | Falcon upgradation fails to create new tables |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2293](https://issues.apache.org/jira/browse/FALCON-2293) | falcon extension fails for deletion if 2 extensions have same entity name |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2303](https://issues.apache.org/jira/browse/FALCON-2303) | Backloginmins is not getting updated |  Major | metrics | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2305](https://issues.apache.org/jira/browse/FALCON-2305) | workflow metrics thread failures |  Major | metrics | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2319](https://issues.apache.org/jira/browse/FALCON-2319) | Falcon Build is failing on a clean state machine |  Major | common | sandeep samudrala | sandeep samudrala |
| [FALCON-2326](https://issues.apache.org/jira/browse/FALCON-2326) | Falcon Pull Request Builds failing |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-2330](https://issues.apache.org/jira/browse/FALCON-2330) | Update Notice copyright period to 2018 |  Major | . | sandeep samudrala | sandeep samudrala |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1610](https://issues.apache.org/jira/browse/FALCON-1610) | Add instance commands to Falcon spring-shell CLI |  Major | client | Rajat Khandelwal | Praveen Adlakha |
| [FALCON-1611](https://issues.apache.org/jira/browse/FALCON-1611) | Add admin commands to Falcon spring-shell CLI |  Major | client | Rajat Khandelwal | Praveen Adlakha |
| [FALCON-1612](https://issues.apache.org/jira/browse/FALCON-1612) | Add Metadata commands to Falcon spring-shell CLI |  Major | client | Rajat Khandelwal | Praveen Adlakha |
| [FALCON-1780](https://issues.apache.org/jira/browse/FALCON-1780) | Add falcon-cli executable and link that to falcon executable when no arguments are provided |  Major | client | Rajat Khandelwal | Praveen Adlakha |
| [FALCON-2098](https://issues.apache.org/jira/browse/FALCON-2098) | Create release notes for 0.10 |  Major | ease | Balu Vellanki | Balu Vellanki |
| [FALCON-1997](https://issues.apache.org/jira/browse/FALCON-1997) | Verify source tarball and run few end to end tests |  Major | build-tools | Balu Vellanki | Balu Vellanki |
| [FALCON-1999](https://issues.apache.org/jira/browse/FALCON-1999) | Merge pending patches and update fix version |  Major | general | Balu Vellanki | Balu Vellanki |
| [FALCON-2003](https://issues.apache.org/jira/browse/FALCON-2003) | Check licenses and copyright information |  Major | docs | Balu Vellanki | Balu Vellanki |
| [FALCON-1995](https://issues.apache.org/jira/browse/FALCON-1995) | Document upgrade from 0.9 to 0.10 |  Major | docs | Balu Vellanki | Balu Vellanki |
| [FALCON-2004](https://issues.apache.org/jira/browse/FALCON-2004) | Update CHANGES.txt to change 0.10 branch to release |  Major | ease | Balu Vellanki | Balu Vellanki |
| [FALCON-2006](https://issues.apache.org/jira/browse/FALCON-2006) | Update documentation on site and announce the release |  Major | ease | Balu Vellanki | Balu Vellanki |
| [FALCON-2181](https://issues.apache.org/jira/browse/FALCON-2181) | Support for storing metadata of non trusted recipe |  Major | extensions | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2183](https://issues.apache.org/jira/browse/FALCON-2183) | Extension Builder changes to support new user extensions |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2184](https://issues.apache.org/jira/browse/FALCON-2184) | Support to delete a non trusted recipe metadata from server |  Major | extensions | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2189](https://issues.apache.org/jira/browse/FALCON-2189) | Falcon build is failing for falcon jpa service to be initialized before extension servivce |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2186](https://issues.apache.org/jira/browse/FALCON-2186) | Rest api to get details of an extension |  Major | extensions | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2187](https://issues.apache.org/jira/browse/FALCON-2187) | Refactor modules to create a new module for entity xsd specifications and jaxb bindings |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2188](https://issues.apache.org/jira/browse/FALCON-2188) | Rest api to register extension |  Major | extensions | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2193](https://issues.apache.org/jira/browse/FALCON-2193) | Fix test case failure caused by FALCON-2188 |  Major | extensions | Pallavi Rao | Pallavi Rao |
| [FALCON-2185](https://issues.apache.org/jira/browse/FALCON-2185) | Falcon Client changes for Falcon user extensions |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2191](https://issues.apache.org/jira/browse/FALCON-2191) | Extension Rest Api changes to support new user extensions  and extension job metastore changes |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2149](https://issues.apache.org/jira/browse/FALCON-2149) | On deleting process entries still exist in BACKLOG\_METRIC |  Major | prism | Pragya Mittal | Praveen Adlakha |
| [FALCON-2208](https://issues.apache.org/jira/browse/FALCON-2208) | Falcon CLI(client) need hadoop in the classpath |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2201](https://issues.apache.org/jira/browse/FALCON-2201) | Falcon Unit changes to support extensions |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2210](https://issues.apache.org/jira/browse/FALCON-2210) | Server side changes for submit and submitAndSchedule for user extensions |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2194](https://issues.apache.org/jira/browse/FALCON-2194) | Enhance validate API to support config validation for user extensions |  Major | extensions | Pallavi Rao | sandeep samudrala |
| [FALCON-2195](https://issues.apache.org/jira/browse/FALCON-2195) | Add API to get details of an extension job |  Major | extensions | Pallavi Rao | sandeep samudrala |
| [FALCON-2211](https://issues.apache.org/jira/browse/FALCON-2211) | Falcon Fails to start in distributed mode |  Major | extensions | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2154](https://issues.apache.org/jira/browse/FALCON-2154) | On deleting entity backlog emitter does not go back to zero |  Major | messaging | Pragya Mittal | Praveen Adlakha |
| [FALCON-2164](https://issues.apache.org/jira/browse/FALCON-2164) | NPE exception in GraphiteNotification Plugin |  Major | common | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2161](https://issues.apache.org/jira/browse/FALCON-2161) | Process Sla API does not show sla for last instance |  Major | prism | Pragya Mittal | Praveen Adlakha |
| [FALCON-2155](https://issues.apache.org/jira/browse/FALCON-2155) | LogMover service fails to move logs in distributed mode |  Major | prism | Pragya Mittal | Praveen Adlakha |
| [FALCON-2156](https://issues.apache.org/jira/browse/FALCON-2156) | Logmover listener gets stuck while listening to WorkflowJobEndNotificationService |  Major | messaging | Pragya Mittal | Praveen Adlakha |
| [FALCON-2157](https://issues.apache.org/jira/browse/FALCON-2157) | Pending instances are not getting deleted from database even though the instance finishes |  Major | prism | Pragya Mittal | sandeep samudrala |
| [FALCON-2159](https://issues.apache.org/jira/browse/FALCON-2159) | Update document for adding BackLogEmitterService |  Major | prism | Pragya Mittal | Praveen Adlakha |
| [FALCON-2160](https://issues.apache.org/jira/browse/FALCON-2160) | Update startup.properties to contain valid application services |  Major | prism | Pragya Mittal | Praveen Adlakha |
| [FALCON-2153](https://issues.apache.org/jira/browse/FALCON-2153) | Resetting Gauge value in BacklogEmitterService |  Major | common | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2190](https://issues.apache.org/jira/browse/FALCON-2190) | Add server side checks to not let any entity mutations on entities generated by extensions |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2207](https://issues.apache.org/jira/browse/FALCON-2207) | Only the owner of the extension, should be able to unregister, disable, enable. |  Major | extensions | Pallavi Rao | Pracheer Agarwal |
| [FALCON-2223](https://issues.apache.org/jira/browse/FALCON-2223) | Distributed mode support for User Extension |  Major | extensions | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2209](https://issues.apache.org/jira/browse/FALCON-2209) | Registering user extensions in embedded/distributed mode |  Major | extensions, prism | sandeep samudrala | Praveen Adlakha |
| [FALCON-2225](https://issues.apache.org/jira/browse/FALCON-2225) | Falcon fails to  start with ExtensionService |  Major | extensions | Praveen Adlakha | Pracheer Agarwal |
| [FALCON-2227](https://issues.apache.org/jira/browse/FALCON-2227) | Intitutive error handling in Falcon Client |  Major | extensions | Praveen Adlakha | sandeep samudrala |
| [FALCON-2226](https://issues.apache.org/jira/browse/FALCON-2226) | Submit ,Schedule and submitAndSchedule API for extension in distributed mode |  Major | extensions | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2200](https://issues.apache.org/jira/browse/FALCON-2200) | Update API support for extension job (user extension) |  Major | extensions | Pallavi Rao | sandeep samudrala |
| [FALCON-2199](https://issues.apache.org/jira/browse/FALCON-2199) | Delete API support for extension job (user extension) |  Major | extensions | Pallavi Rao | sandeep samudrala |
| [FALCON-2197](https://issues.apache.org/jira/browse/FALCON-2197) | Add enable and disable option for an extension |  Major | extensions | Pallavi Rao | Pracheer Agarwal |
| [FALCON-2231](https://issues.apache.org/jira/browse/FALCON-2231) | Support Schedule for User Extensions |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2235](https://issues.apache.org/jira/browse/FALCON-2235) | Suspend/Resume API support for extension job (user extension) |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2233](https://issues.apache.org/jira/browse/FALCON-2233) | Make changes in falcon unit to enable/disable extensions |  Major | falcon-unit | Pracheer Agarwal | Pracheer Agarwal |
| [FALCON-2258](https://issues.apache.org/jira/browse/FALCON-2258) | Improve error message for definition/describe api in case extension does not exist |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2260](https://issues.apache.org/jira/browse/FALCON-2260) | Enhance extension List api to support for user extensions |  Major | extensions | sandeep samudrala | sandeep samudrala |
| [FALCON-2205](https://issues.apache.org/jira/browse/FALCON-2205) | describe for non trusted extension |  Major | extensions | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2196](https://issues.apache.org/jira/browse/FALCON-2196) | Extensions User documentation |  Major | extensions | Pallavi Rao | sandeep samudrala |
| [FALCON-2308](https://issues.apache.org/jira/browse/FALCON-2308) | Create Change log |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-2309](https://issues.apache.org/jira/browse/FALCON-2309) | Create Release Notes |  Major | . | Pallavi Rao | Pallavi Rao |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-2059](https://issues.apache.org/jira/browse/FALCON-2059) | BacklogMetricEmitter Service for Falcon |  Major | metrics | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1992](https://issues.apache.org/jira/browse/FALCON-1992) | Prepare Falcon Release v0.10 |  Major | ease | Balu Vellanki | Balu Vellanki |
| [FALCON-2142](https://issues.apache.org/jira/browse/FALCON-2142) | Close stale pull requests |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-2144](https://issues.apache.org/jira/browse/FALCON-2144) | Close stale pull requests - part 2 |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-2143](https://issues.apache.org/jira/browse/FALCON-2143) | Documentation of BacklogEmitter Service |  Major | . | Praveen Adlakha | Praveen Adlakha |
| [FALCON-2078](https://issues.apache.org/jira/browse/FALCON-2078) | Documentation for Process SLA |  Major | . | Praveen Adlakha | Praveen Adlakha |


