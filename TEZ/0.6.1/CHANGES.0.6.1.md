
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
# Apache Tez Changelog

## Release 0.6.1 - 2015-05-18

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2437](https://issues.apache.org/jira/browse/TEZ-2437) | FilterLinesByWord NPEs when run in Localmode |  Major | . | Amit Tiwari |  |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2018](https://issues.apache.org/jira/browse/TEZ-2018) | App Tracking and History URL should point to the Tez UI |  Critical | UI | Rohini Palaniswamy | Prakash Ramachandran |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1917](https://issues.apache.org/jira/browse/TEZ-1917) | Examples should extend TezExampleBase |  Major | . | Siddharth Seth | Vasanth kumar RJ |
| [TEZ-2035](https://issues.apache.org/jira/browse/TEZ-2035) | Make timeline server putDomain exceptions non-fatal - work-around |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2043](https://issues.apache.org/jira/browse/TEZ-2043) | Tez UI: add progress info from am webservice to dag and vertex views |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2091](https://issues.apache.org/jira/browse/TEZ-2091) | Add support for hosting TEZ\_UI with nodejs |  Major | UI | Chang Li | Chang Li |
| [TEZ-2256](https://issues.apache.org/jira/browse/TEZ-2256) | Avoid use of BufferTooSmallException to signal end of buffer in UnorderedPartitionedKVWriter |  Critical | . | Cyrille Chépélov | Cyrille Chépélov |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1923](https://issues.apache.org/jira/browse/TEZ-1923) | FetcherOrderedGrouped gets into infinite loop due to memory pressure |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1661](https://issues.apache.org/jira/browse/TEZ-1661) | LocalTaskScheduler hangs when shutdown |  Major | . | Oleg Zhurakousky | Jeff Zhang |
| [TEZ-1949](https://issues.apache.org/jira/browse/TEZ-1949) | Whitelist TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges |  Critical | . | Gopal V | Gopal V |
| [TEZ-1983](https://issues.apache.org/jira/browse/TEZ-1983) | Tez UI swimlane task attempt link is broken |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1987](https://issues.apache.org/jira/browse/TEZ-1987) | non-standalone mode protocol correction + Row count selector in all tables + Format numbers displayed + Prettifications |  Trivial | . | Gopal V | Sreenath Somarajapuram |
| [TEZ-2010](https://issues.apache.org/jira/browse/TEZ-2010) | History payload generated from conf has ${var} placeholders |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1973](https://issues.apache.org/jira/browse/TEZ-1973) | Dag View |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2014](https://issues.apache.org/jira/browse/TEZ-2014) | TezUI - Nits : All tables, Vertices Page UI |  Critical | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2012](https://issues.apache.org/jira/browse/TEZ-2012) | TEZ UI - Show page number in all tables, and display more readable task/attempt ids |  Critical | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2013](https://issues.apache.org/jira/browse/TEZ-2013) | TEZ UI - App Details Page UI Nits |  Critical | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2017](https://issues.apache.org/jira/browse/TEZ-2017) | TEZ UI - Dag view throwing error whild re-displaying additionals in some dags |  Critical | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1929](https://issues.apache.org/jira/browse/TEZ-1929) | pre-empted tasks should be marked as killed instead of failed |  Major | . | Rajesh Balamohan | Bikas Saha |
| [TEZ-2032](https://issues.apache.org/jira/browse/TEZ-2032) | Update CHANGES.txt to show 0.6.0 is released |  Major | . | Bikas Saha | Jonathan Eagles |
| [TEZ-2052](https://issues.apache.org/jira/browse/TEZ-2052) | Tez UI: log view fixes, show version from build, better handling of ats url config |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2056](https://issues.apache.org/jira/browse/TEZ-2056) | Tez UI: fix VertexID filter,show only tez configs by default,fix appattemptid |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2062](https://issues.apache.org/jira/browse/TEZ-2062) | Tez UI: Showing 50 elements not working properly |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2069](https://issues.apache.org/jira/browse/TEZ-2069) | Tez UI: appId should link to application in dag details view |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2063](https://issues.apache.org/jira/browse/TEZ-2063) | Tez UI: Flaky log url in tasks table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2079](https://issues.apache.org/jira/browse/TEZ-2079) | Tez UI: trailing slash in timelineBaseUrl in ui should be handled |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2068](https://issues.apache.org/jira/browse/TEZ-2068) | Tez UI: Dag view should use full window height, disable webuiservice in localmode |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2065](https://issues.apache.org/jira/browse/TEZ-2065) | Setting up tez.tez-ui.history-url.base with a trailing slash can result in failures to redirect correctly |  Major | UI | Hitesh Shah | Prakash Ramachandran |
| [TEZ-2077](https://issues.apache.org/jira/browse/TEZ-2077) | Tez UI: No diagnostics on Task Attempt Details page if task attempt failed |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2078](https://issues.apache.org/jira/browse/TEZ-2078) | Tez UI: Task logs url use in-progress url causing various errors |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2073](https://issues.apache.org/jira/browse/TEZ-2073) | SimpleHistoryLoggingService cannot be read by log aggregation (umask) |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2031](https://issues.apache.org/jira/browse/TEZ-2031) | Tez UI: horizontal scrollbars do not appear in tables, causing them to look truncated |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2024](https://issues.apache.org/jira/browse/TEZ-2024) | TaskFinishedEvent may not be logged in recovery |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2098](https://issues.apache.org/jira/browse/TEZ-2098) | Tez UI: Dag details should be the default page for dag, fix invalid time entries for failed Vertices |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2101](https://issues.apache.org/jira/browse/TEZ-2101) | Tez UI: Issues on displaying a table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2092](https://issues.apache.org/jira/browse/TEZ-2092) | Tez UI history url handler injects spurious trailing slash |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2102](https://issues.apache.org/jira/browse/TEZ-2102) | Tez UI: DAG view has hidden edges, dragging DAG by holding vertex causes unintended click |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2038](https://issues.apache.org/jira/browse/TEZ-2038) | TEZ-UI DAG is always running in tez-ui when the app is failed but no DAGFinishedEvent is logged |  Major | UI | Jeff Zhang | Prakash Ramachandran |
| [TEZ-2112](https://issues.apache.org/jira/browse/TEZ-2112) | Tez UI: fix offset calculation, add home button to breadcrumbs |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2114](https://issues.apache.org/jira/browse/TEZ-2114) | Tez UI: task/task attempt status is not available when its running |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2106](https://issues.apache.org/jira/browse/TEZ-2106) | TEZ UI: Display data load time, and add a refresh button for items that can be refreshed |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2116](https://issues.apache.org/jira/browse/TEZ-2116) | Tez UI: dags page filter does not work if more than one filter is specified. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1990](https://issues.apache.org/jira/browse/TEZ-1990) | Tez UI: DAG details page shows Nan for end time when a DAG is running |  Trivial | . | Hitesh Shah | Sreenath Somarajapuram |
| [TEZ-2135](https://issues.apache.org/jira/browse/TEZ-2135) | ACL checks handled incorrectly in AMWebController |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2136](https://issues.apache.org/jira/browse/TEZ-2136) | Some enhancements to the new Tez UI |  Major | UI | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [TEZ-2134](https://issues.apache.org/jira/browse/TEZ-2134) | TEZ UI: On request failure, display request URL and server name in error bar. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2142](https://issues.apache.org/jira/browse/TEZ-2142) | TEZ UI: Breadcrumb border color looks out of place in wrapped mode. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2133](https://issues.apache.org/jira/browse/TEZ-2133) | Secured Impersonation: Failed to delete tez scratch data dir |  Major | . | Johannes Zillmann | Chang Li |
| [TEZ-2147](https://issues.apache.org/jira/browse/TEZ-2147) | Swimlanes: Improved tooltip |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2160](https://issues.apache.org/jira/browse/TEZ-2160) | Tez UI: App tracking URL should support navigation back |  Major | UI | Ram Venkatesh | Prakash Ramachandran |
| [TEZ-2158](https://issues.apache.org/jira/browse/TEZ-2158) | TEZ UI: Display dag/vertex names, and task/attempt index in breadcrumb |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2165](https://issues.apache.org/jira/browse/TEZ-2165) | Tez UI: DAG shows running status if killed by RM in some cases. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2190](https://issues.apache.org/jira/browse/TEZ-2190) | TestOrderedWordCount fails when generateSplitsInClient set to true |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2168](https://issues.apache.org/jira/browse/TEZ-2168) | Fix application dependencies on mutually exclusive artifacts: tez-yarn-timeline-history and tez-yarn-timeline-history-with-acls |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2179](https://issues.apache.org/jira/browse/TEZ-2179) | Timeline relatedentries missing cause exaggerated warning |  Major | . | Chang Li | Chang Li |
| [TEZ-2189](https://issues.apache.org/jira/browse/TEZ-2189) | Tez UI live AM tracking url only works for localhost addresses |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2199](https://issues.apache.org/jira/browse/TEZ-2199) | updateLocalResourcesForInputSplits assumes wrongly that split data is on same FS as the default FS |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2064](https://issues.apache.org/jira/browse/TEZ-2064) | SessionNotRunning Exception not thrown is all cases |  Critical | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2047](https://issues.apache.org/jira/browse/TEZ-2047) | Build fails against hadoop-2.2 post TEZ-2018 |  Blocker | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-2214](https://issues.apache.org/jira/browse/TEZ-2214) | FetcherOrderedGrouped can get stuck indefinitely when MergeManager misses memToDiskMerging |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2242](https://issues.apache.org/jira/browse/TEZ-2242) | Refactor ShuffleVertexManager code |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2061](https://issues.apache.org/jira/browse/TEZ-2061) | Tez UI: vertex id column and filter on tasks page should be changed to vertex name |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2240](https://issues.apache.org/jira/browse/TEZ-2240) | Fix toUpperCase/toLowerCase to use Locale.ENGLISH |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [TEZ-2192](https://issues.apache.org/jira/browse/TEZ-2192) | Relocalization does not check for source |  Blocker | . | Rohini Palaniswamy | Hitesh Shah |
| [TEZ-2289](https://issues.apache.org/jira/browse/TEZ-2289) | ATSHistoryLoggingService can generate ArrayOutOfBoundsException |  Major | . | Jonathan Eagles | Chang Li |
| [TEZ-2287](https://issues.apache.org/jira/browse/TEZ-2287) | Deprecate VertexManagerPluginContext.getTaskContainer() |  Blocker | . | Bikas Saha | Hitesh Shah |
| [TEZ-2326](https://issues.apache.org/jira/browse/TEZ-2326) | Update branch 0.6 version to 0.6.1-SNAPSHOT |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2334](https://issues.apache.org/jira/browse/TEZ-2334) | ContainerManagementProtocolProxy modifies IPC timeout conf without making a copy |  Major | . | Chang Li | Chang Li |
| [TEZ-2224](https://issues.apache.org/jira/browse/TEZ-2224) | EventQueue empty doesn't mean events are consumed in RecoveryService |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2365](https://issues.apache.org/jira/browse/TEZ-2365) | Update tez-ui war's license/notice to reflect OFL license correctly |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2259](https://issues.apache.org/jira/browse/TEZ-2259) | Push additional data to Timeline for Recovery for better consumption in UI |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2305](https://issues.apache.org/jira/browse/TEZ-2305) | MR compatibility sleep job fails with IOException: Undefined job output-path |  Critical | . | Tassapol Athiapinya | Jeff Zhang |
| [TEZ-2385](https://issues.apache.org/jira/browse/TEZ-2385) | branch-0.6 compile failure caused by TEZ-2226 |  Critical | . | Jeff Zhang | Hitesh Shah |
| [TEZ-2380](https://issues.apache.org/jira/browse/TEZ-2380) | Disable fall back to reading from timeline if timeline disabled |  Major | . | Hitesh Shah | Chang Li |
| [TEZ-1560](https://issues.apache.org/jira/browse/TEZ-1560) | Invalid state machine handling for V\_SOURCE\_VERTEX\_RECOVERED in recovery |  Critical | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2221](https://issues.apache.org/jira/browse/TEZ-2221) | VertexGroup name should be unqiue |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2390](https://issues.apache.org/jira/browse/TEZ-2390) | tez-tools swimlane tool fails to parse large jobs \>8K containers |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1988](https://issues.apache.org/jira/browse/TEZ-1988) | Tez UI: does not work when using file:// in a browser |  Major | UI | Hitesh Shah | Prakash Ramachandran |
| [TEZ-2397](https://issues.apache.org/jira/browse/TEZ-2397) | Translation of LocalResources via Tez plan serialization can be lossy |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2379](https://issues.apache.org/jira/browse/TEZ-2379) | org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: T\_ATTEMPT\_KILLED at KILLED |  Blocker | . | Rajesh Balamohan | Hitesh Shah |
| [TEZ-2237](https://issues.apache.org/jira/browse/TEZ-2237) | Valid events should be sent out when an Output is not started |  Critical | . | Cyrille Chépélov | Siddharth Seth |
| [TEZ-2369](https://issues.apache.org/jira/browse/TEZ-2369) | Add a few unit tests for RootInputInitializerManager |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2396](https://issues.apache.org/jira/browse/TEZ-2396) | pig-tez-tfile-parser pom is hard coded to depend on 0.6.0-SNAPSHOT version |  Major | . | Jonathan Eagles | Rajesh Balamohan |
| [TEZ-2282](https://issues.apache.org/jira/browse/TEZ-2282) | Delimit reused yarn container logs (stderr, stdout, syslog) with task attempt start/stop events |  Major | . | Jonathan Eagles | Mit Desai |
| [TEZ-2057](https://issues.apache.org/jira/browse/TEZ-2057) | tez-dag/pom.xml contains versions for dependencies |  Major | . | Hitesh Shah | Jonathan Eagles |
| [TEZ-2451](https://issues.apache.org/jira/browse/TEZ-2451) | Tez 0.6.1 Release Changes |  Major | . | Jonathan Eagles | Jonathan Eagles |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2205](https://issues.apache.org/jira/browse/TEZ-2205) | Tez still tries to post to ATS when yarn.timeline-service.enabled=false |  Major | . | Chang Li | Chang Li |
| [TEZ-1909](https://issues.apache.org/jira/browse/TEZ-1909) | Remove need to copy over all events from attempt 1 to attempt 2 dir |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-1969](https://issues.apache.org/jira/browse/TEZ-1969) | Stop the DAGAppMaster when a local mode client is stopped |  Major | . | Siddharth Seth | Prakash Ramachandran |
| [TEZ-2226](https://issues.apache.org/jira/browse/TEZ-2226) | Disable writing history to timeline if domain creation fails. |  Blocker | . | Hitesh Shah | Chang Li |
| [TEZ-1521](https://issues.apache.org/jira/browse/TEZ-1521) | VertexDataMovementEventsGeneratedEvent may be logged twice in recovery log |  Critical | . | Jeff Zhang | Jeff Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1946](https://issues.apache.org/jira/browse/TEZ-1946) | Tez UI: add source & sink views, add counters to vertices/all task views |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |


