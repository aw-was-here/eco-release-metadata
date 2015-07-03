
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

## Release trunk - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2159](https://issues.apache.org/jira/browse/OOZIE-2159) | 'oozie validate' command should be moved server-side |  Major | . | Robert Kanter | Azrael Seoeun |
| [OOZIE-1299](https://issues.apache.org/jira/browse/OOZIE-1299) | Rerunning the main workflow to rerun sub-workflow and not create new one |  Major | workflow | PriyaSundararajan |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2271](https://issues.apache.org/jira/browse/OOZIE-2271) | Upgrade Tomcat to 6.0.44 |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-2250](https://issues.apache.org/jira/browse/OOZIE-2250) | Show log for WAITING and TIMEDOUT coord actions |  Major | . | Rohini Palaniswamy | Kailong Sheng |
| [OOZIE-2072](https://issues.apache.org/jira/browse/OOZIE-2072) | Improve the whitelist error message by showing allowed values |  Minor | core | Harsh J | Harsh J |
| [OOZIE-2024](https://issues.apache.org/jira/browse/OOZIE-2024) | Confusing message when a job can't be looked up by JavaActionExecutor |  Minor | action | Harsh J | Harsh J |
| [OOZIE-1736](https://issues.apache.org/jira/browse/OOZIE-1736) | Switch to Hadoop 2.3.0 for the hadoop-2 profile |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1551](https://issues.apache.org/jira/browse/OOZIE-1551) | Change hadoop-2 profile to use 2.2.0 |  Blocker | build | Robert Kanter | Robert Kanter |
| [OOZIE-658](https://issues.apache.org/jira/browse/OOZIE-658) | Some doc improvements for HowToContribute |  Minor | . | Harsh J | Harsh J |
| [OOZIE-44](https://issues.apache.org/jira/browse/OOZIE-44) | Oozie JIRA changes that'd be favorable |  Trivial | . | Harsh J |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2286](https://issues.apache.org/jira/browse/OOZIE-2286) | Update Log4j and Log4j-extras to latest 1.2.x release |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2284](https://issues.apache.org/jira/browse/OOZIE-2284) | HBaseCredentials should only add hbase-default.xml and hbase-site.xml to actionConf |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-2270](https://issues.apache.org/jira/browse/OOZIE-2270) | Audit log doesn't get loaded when "audit log" tab is clicked for coord job |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2268](https://issues.apache.org/jira/browse/OOZIE-2268) | Update ActiveMQ version for security and other fixes |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2266](https://issues.apache.org/jira/browse/OOZIE-2266) | Fix 'total' actions returned in coordinator job info |  Major | core | Sai Chirravuri | Sai Chirravuri |
| [OOZIE-2264](https://issues.apache.org/jira/browse/OOZIE-2264) | Fix coord:offset(n,"DAY") to resolve correct data set |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2262](https://issues.apache.org/jira/browse/OOZIE-2262) | Fix log streaming from other server with start/end filter |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2260](https://issues.apache.org/jira/browse/OOZIE-2260) | Only set "java.io.tmpdir" to "./tmp"  for the AM |  Major | . | Rohini Palaniswamy | Ryota Egashira |
| [OOZIE-2257](https://issues.apache.org/jira/browse/OOZIE-2257) | BundleStatusTransitXCommand doesn't update last modified time. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2236](https://issues.apache.org/jira/browse/OOZIE-2236) | Need to package hive-hcatalog-server-extensions.jar in the hcatalog sharelib |  Critical | . | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2215](https://issues.apache.org/jira/browse/OOZIE-2215) | Support glob in FS EL function |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2178](https://issues.apache.org/jira/browse/OOZIE-2178) | fix javadoc to compile on JDK8 |  Major | . | Ryota Egashira | Robert Kanter |
| [OOZIE-2160](https://issues.apache.org/jira/browse/OOZIE-2160) | Support attachment in email action |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2109](https://issues.apache.org/jira/browse/OOZIE-2109) | Possibly incorrect job ID may be printed for map-reduce action errors |  Major | action | Harsh J | Harsh J |
| [OOZIE-2102](https://issues.apache.org/jira/browse/OOZIE-2102) | Streaming actions are broken cause of incorrect method signature |  Blocker | action | Harsh J | Harsh J |
| [OOZIE-2079](https://issues.apache.org/jira/browse/OOZIE-2079) | Notify when a coordinator action status becomes RUNNING |  Major | core | Venkat Ramachandran | Mohammad Kamrul Islam |
| [OOZIE-2076](https://issues.apache.org/jira/browse/OOZIE-2076) | Sharelib usage improvement |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2031](https://issues.apache.org/jira/browse/OOZIE-2031) | Credentials doc uses 'hive' name for HBase Credentials example |  Trivial | docs | Harsh J | Harsh J |
| [OOZIE-1885](https://issues.apache.org/jira/browse/OOZIE-1885) | Query optimization for StatusTransitService |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1872](https://issues.apache.org/jira/browse/OOZIE-1872) | TestCoordActionInputCheckXCommand.testActionInputCheckLatestActionCreationTime is failing for past couple of builds |  Major | tests | Rohini Palaniswamy | Mona Chitnis |
| [OOZIE-1845](https://issues.apache.org/jira/browse/OOZIE-1845) | Coord submit command doesn't honor conf "materialization\_window" while calling CoordMaterializeTransitionXCommand |  Major | . | Purshotam Shah |  |
| [OOZIE-1756](https://issues.apache.org/jira/browse/OOZIE-1756) | hadoop-auth version is wrong if profile isn't selected |  Major | build | Robert Kanter | Robert Kanter |
| [OOZIE-1743](https://issues.apache.org/jira/browse/OOZIE-1743) | generateDocs is failing |  Major | . | Purshotam Shah |  |
| [OOZIE-1670](https://issues.apache.org/jira/browse/OOZIE-1670) | Workflow kill command doesn't kill child job for map-reduce action. |  Critical | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1630](https://issues.apache.org/jira/browse/OOZIE-1630) | \<prepare\> operations fail when path doesn't have scheme |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1626](https://issues.apache.org/jira/browse/OOZIE-1626) | pig action pop-up is not working properly in UI |  Major | . | Ryota Egashira | Purshotam Shah |
| [OOZIE-1582](https://issues.apache.org/jira/browse/OOZIE-1582) | Bump up Tomcat version to 6.0.37 |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-1573](https://issues.apache.org/jira/browse/OOZIE-1573) | coord:tzOffset() gives incorrect offset for daylight saving timezones |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1565](https://issues.apache.org/jira/browse/OOZIE-1565) | OOZIE-1481 should only affect v2 of the API, not v1 |  Major | coordinator | Robert Kanter | Robert Kanter |
| [OOZIE-1563](https://issues.apache.org/jira/browse/OOZIE-1563) | colt jar includes GPL licence |  Major | . | Bowen Zhang | Robert Kanter |
| [OOZIE-1542](https://issues.apache.org/jira/browse/OOZIE-1542) | When extjs isn't installed, the web UI is unhelpfully blank |  Minor | . | Robert Kanter | Robert Kanter |
| [OOZIE-1514](https://issues.apache.org/jira/browse/OOZIE-1514) | Rerunning a coordinator with no input dependencies puts actions in WAITING instead of READY and proceeding |  Blocker | . | Mona Chitnis | Bowen Zhang |
| [OOZIE-1484](https://issues.apache.org/jira/browse/OOZIE-1484) | Error in DB upgrade when error message exceeds 4K characters |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1284](https://issues.apache.org/jira/browse/OOZIE-1284) | oozie.service.SchemaService.wf.ext.schemas in oozie-site is missing some newer xsd files |  Major | core | Robert Kanter | Robert Kanter |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1836](https://issues.apache.org/jira/browse/OOZIE-1836) | Documenation is wrong for the timestamp() EL Function |  Major | docs | Robert Kanter | Meenakshi Lakshmanan |
| [OOZIE-1729](https://issues.apache.org/jira/browse/OOZIE-1729) | Add support to Hadoop-2 for AM restarts of the launcher job |  Major | . | Robert Kanter | Jaydeep Vishwakarma |
| [OOZIE-1236](https://issues.apache.org/jira/browse/OOZIE-1236) | Documentation on capture-output element for Java action has incorrect property to get the filename |  Minor | docs | Robert Kanter | Meenakshi Lakshmanan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


