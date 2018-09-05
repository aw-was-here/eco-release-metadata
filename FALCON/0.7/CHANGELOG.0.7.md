
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

## Release 0.7 - 2015-09-09

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-593](https://issues.apache.org/jira/browse/FALCON-593) | Preserve data type for properties in a vertex |  Major | . | Venkatesh Seetharam | Ajay Yadava |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1039](https://issues.apache.org/jira/browse/FALCON-1039) | Add instance dependency API in falcon |  Major | feed, process | pavan kumar kolamuri | Ajay Yadava |
| [FALCON-796](https://issues.apache.org/jira/browse/FALCON-796) | Enable users to triage data processing issues through falcon |  Major | . | Srikanth Sundarrajan | Ajay Yadava |
| [FALCON-1188](https://issues.apache.org/jira/browse/FALCON-1188) | Falcon support for Hive Replication |  Major | . | Venkat Ranganathan | Venkat Ranganathan |
| [FALCON-1133](https://issues.apache.org/jira/browse/FALCON-1133) | Adding Falcon Unit |  Major | . | karan kumar | pavan kumar kolamuri |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-699](https://issues.apache.org/jira/browse/FALCON-699) | Use APIResult and other support classes from falcon-client in falcon-regression |  Critical | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-947](https://issues.apache.org/jira/browse/FALCON-947) | Ignore hadoop configs in merlin/src/test/resources/hadoop-conf |  Minor | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-953](https://issues.apache.org/jira/browse/FALCON-953) | Change wasb replication to run with single cluster |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-963](https://issues.apache.org/jira/browse/FALCON-963) | Add option to exclude tests in falcon-regression |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-942](https://issues.apache.org/jira/browse/FALCON-942) | Cleanup BaseTestClass and setUp/tearDown methods |  Minor | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1006](https://issues.apache.org/jira/browse/FALCON-1006) | Add a property for inclusion of test |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-968](https://issues.apache.org/jira/browse/FALCON-968) | Remove only entities submitted by same test and baseHDFSDir usage refactored |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1022](https://issues.apache.org/jira/browse/FALCON-1022) | Wait for RUNNING status of instances before killing them |  Minor | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1057](https://issues.apache.org/jira/browse/FALCON-1057) | recipes.twiki should be renamed Recipes.twiki for consistency and to fix a dead link |  Trivial | docs | Aaron Dossett | Aaron Dossett |
| [FALCON-1094](https://issues.apache.org/jira/browse/FALCON-1094) | getAllFilesRecursivelyHDFS without recursive call |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-75](https://issues.apache.org/jira/browse/FALCON-75) | Falcon CLI for deleting entities should inform user if entity does not exist |  Minor | . | Grant Liu | Ajay Yadava |
| [FALCON-1059](https://issues.apache.org/jira/browse/FALCON-1059) | Lineage should support bootstrapping |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1219](https://issues.apache.org/jira/browse/FALCON-1219) | Minor doc fix |  Major | docs | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1228](https://issues.apache.org/jira/browse/FALCON-1228) | testSubscriber test of JMSMessageConsumerTest fails at a particular scenario |  Minor | . | Suhas Vasu | Suhas Vasu |
| [FALCON-1211](https://issues.apache.org/jira/browse/FALCON-1211) | Source tarball are not generated in mvn assembly when profile is distributed. |  Major | build-tools | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1253](https://issues.apache.org/jira/browse/FALCON-1253) | Fortify ExternalFSTest |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1147](https://issues.apache.org/jira/browse/FALCON-1147) | Allow \_ in the names for name value pair |  Major | . | Venkat Ranganathan | Sowmya Ramesh |
| [FALCON-1207](https://issues.apache.org/jira/browse/FALCON-1207) | Falcon checkstyle allows wildcard imports |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1114](https://issues.apache.org/jira/browse/FALCON-1114) | Oozie findBundles lists a directory and tries to match with the bundle's appPath |  Minor | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1283](https://issues.apache.org/jira/browse/FALCON-1283) | Save screenshots to log.capture.location |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1287](https://issues.apache.org/jira/browse/FALCON-1287) | Use listAllEntities() instead of listEntities() |  Critical | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1186](https://issues.apache.org/jira/browse/FALCON-1186) | Add filtering capability to result of instance summary |  Minor | . | Suhas Vasu | Suhas Vasu |
| [FALCON-1306](https://issues.apache.org/jira/browse/FALCON-1306) | Custom window dimensions for UI tests |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1320](https://issues.apache.org/jira/browse/FALCON-1320) | Add equals() and hashCode() method in LineageGraphResult.Edge |  Major | client | Pragya Mittal | Pragya Mittal |
| [FALCON-668](https://issues.apache.org/jira/browse/FALCON-668) | FeedReplicator improvement to include more DistCP options |  Major | replication | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1324](https://issues.apache.org/jira/browse/FALCON-1324) | Pagination API breaks backward compatibility |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1317](https://issues.apache.org/jira/browse/FALCON-1317) | Inconsistent JSON serialization |  Major | webapp | Pragya Mittal | Ajay Yadava |
| [FALCON-1364](https://issues.apache.org/jira/browse/FALCON-1364) | Add prefix in runtime.properties |  Major | . | Ajay Yadava | sandeep samudrala |
| [FALCON-1301](https://issues.apache.org/jira/browse/FALCON-1301) | Improve documentation for Installation |  Critical | . | Janarthanan | Pragya Mittal |
| [FALCON-1360](https://issues.apache.org/jira/browse/FALCON-1360) | Size of feed should be humanized in feed instance listing |  Major | . | Ajay Yadava | sandeep samudrala |
| [FALCON-1362](https://issues.apache.org/jira/browse/FALCON-1362) | Colo option shouldn't be mandatory |  Major | . | Ajay Yadava | sandeep samudrala |
| [FALCON-1361](https://issues.apache.org/jira/browse/FALCON-1361) | Default end date should be now |  Major | . | Ajay Yadava | Pragya Mittal |
| [FALCON-1368](https://issues.apache.org/jira/browse/FALCON-1368) | Improve Falcon server restart  time |  Major | . | Ajay Yadava | sandeep samudrala |
| [FALCON-1374](https://issues.apache.org/jira/browse/FALCON-1374) | Remove the cap on numResults |  Major | . | Ajay Yadava | Pragya Mittal |
| [FALCON-1174](https://issues.apache.org/jira/browse/FALCON-1174) | Ability to disable oozie dryrun while scheduling or updating the falcon entity |  Major | oozie | Sowmya Ramesh | Balu Vellanki |
| [FALCON-318](https://issues.apache.org/jira/browse/FALCON-318) | Support copying of Hcat import/export action logs from replication |  Major | replication | Shaik Idris Ali | Peeyush Bishnoi |
| [FALCON-1378](https://issues.apache.org/jira/browse/FALCON-1378) | Falcon documentation lacks information on how to run Falcon on standalone Oozie/Hadoop setup |  Major | docs | Pallavi Rao | Pallavi Rao |
| [FALCON-1419](https://issues.apache.org/jira/browse/FALCON-1419) | Document ability to disable oozie dryRun during entity schedule actions |  Critical | docs | Balu Vellanki | Balu Vellanki |
| [FALCON-1430](https://issues.apache.org/jira/browse/FALCON-1430) | Exclude designer from source tarball |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1432](https://issues.apache.org/jira/browse/FALCON-1432) | Fix licenses in LICENSES.txt |  Major | . | Ajay Yadava | Ajay Yadava |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-916](https://issues.apache.org/jira/browse/FALCON-916) | Falcon idempotency is being voilated during delete |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-937](https://issues.apache.org/jira/browse/FALCON-937) | Fix tests that are still using hdfs root dir in feeds |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-939](https://issues.apache.org/jira/browse/FALCON-939) | Fixing few typos and removing unused stuff |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-940](https://issues.apache.org/jira/browse/FALCON-940) | Avoid NPE in getAllEntitiesOfOneType() for zero elements |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-900](https://issues.apache.org/jira/browse/FALCON-900) | Release readiness for falcon-regression aka merlin |  Critical | merlin | Venkatesh Seetharam | Raghav Kumar Gautam |
| [FALCON-955](https://issues.apache.org/jira/browse/FALCON-955) | enable and fix feedAclUpdate and processAclUpdate tests |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-952](https://issues.apache.org/jira/browse/FALCON-952) | If hadoop home is set, use $HADOOP\_HOME to set falcon classpath |  Major | build-tools | Balu Vellanki | Balu Vellanki |
| [FALCON-969](https://issues.apache.org/jira/browse/FALCON-969) | http://falcon.incubator.apache.org/ contributions link broken |  Trivial | docs | karan kumar | karan kumar |
| [FALCON-976](https://issues.apache.org/jira/browse/FALCON-976) | EntityDryRunTest failing in falcon trunk |  Major | merlin | Pragya Mittal | Pragya Mittal |
| [FALCON-945](https://issues.apache.org/jira/browse/FALCON-945) | Fix broken lineage feature in Web-UI |  Critical | webapp | Adam Kawa | Adam Kawa |
| [FALCON-979](https://issues.apache.org/jira/browse/FALCON-979) | Fix checkstyle issues introduced by falcon-976 |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-981](https://issues.apache.org/jira/browse/FALCON-981) | Download links for current releases are broken |  Blocker | . | Sebb | Srikanth Sundarrajan |
| [FALCON-896](https://issues.apache.org/jira/browse/FALCON-896) | Upgrade oozie to 4.1.0 and make it the default for falcon |  Major | oozie | Venkatesh Seetharam | Peeyush Bishnoi |
| [FALCON-984](https://issues.apache.org/jira/browse/FALCON-984) | Falcon build is broken |  Major | . | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-990](https://issues.apache.org/jira/browse/FALCON-990) | Fix and enable 3/4 tests of RescheduleProcessInFinalStatesTest |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-109](https://issues.apache.org/jira/browse/FALCON-109) | submission of clusters for non registered colos |  Major | . | Samarth Gupta | Pallavi Rao |
| [FALCON-1005](https://issues.apache.org/jira/browse/FALCON-1005) | In ProcessInstanceSuspendTest clean test dir after each method execution |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-993](https://issues.apache.org/jira/browse/FALCON-993) | Falcon Oozie adaptor test case failed with umask issue |  Major | oozie | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1009](https://issues.apache.org/jira/browse/FALCON-1009) | InstanceUtil cleanup |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1007](https://issues.apache.org/jira/browse/FALCON-1007) | Improve test output and variable names. |  Minor | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1018](https://issues.apache.org/jira/browse/FALCON-1018) | Enable and fix FalconClientTest#badClusterSubmit |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1024](https://issues.apache.org/jira/browse/FALCON-1024) | Updating tags and pipeline elements of the feed/process definition resubmits a new Oozie bundle |  Minor | common | Pallavi Rao | Pallavi Rao |
| [FALCON-417](https://issues.apache.org/jira/browse/FALCON-417) | Upgrade Hive and HCatalog to latest stable version |  Blocker | . | Venkatesh Seetharam | Peeyush Bishnoi |
| [FALCON-1072](https://issues.apache.org/jira/browse/FALCON-1072) | Dumping of Oozie info should use os specific newline |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1089](https://issues.apache.org/jira/browse/FALCON-1089) | ProcessInstanceStatusTest improvement |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1093](https://issues.apache.org/jira/browse/FALCON-1093) | Tag all new tests added to falcon-regression |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1103](https://issues.apache.org/jira/browse/FALCON-1103) | RetentionTest stabilization - remove check of all retention job actions. |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1113](https://issues.apache.org/jira/browse/FALCON-1113) | Clean up data files in merlin resource directory. Create better names for them. |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1112](https://issues.apache.org/jira/browse/FALCON-1112) | Migrate methods related to \*Merlin.java classes from Util.java to their respective \*Merlin.java |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1142](https://issues.apache.org/jira/browse/FALCON-1142) | ClusterEntityParserTest.testClusterWithOnlyStaging fails when run alone |  Minor | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1141](https://issues.apache.org/jira/browse/FALCON-1141) | Reverse Lookup for feed in prism fails with BadRequest |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1135](https://issues.apache.org/jira/browse/FALCON-1135) | Migrate methods related to \*Merlin.java classes from InstanceUtil.java and Bundle.java |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1151](https://issues.apache.org/jira/browse/FALCON-1151) | Migrate oozie related methods from InstanceUtil.java to OozieUtil.java |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1155](https://issues.apache.org/jira/browse/FALCON-1155) | Unwanted character at the end of workflow.xml |  Major | general, merlin | Karishma Gulati | Karishma Gulati |
| [FALCON-1127](https://issues.apache.org/jira/browse/FALCON-1127) | Falcon entity status is submitted when corresponding Bundle is runningwitherror |  Minor | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1153](https://issues.apache.org/jira/browse/FALCON-1153) | Instance kill fails intermittently |  Critical | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-1171](https://issues.apache.org/jira/browse/FALCON-1171) | Adding search API tests |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-954](https://issues.apache.org/jira/browse/FALCON-954) | Secure Kerberos setup : Falcon should periodically revalidate auth token. |  Critical | . | Balu Vellanki | Balu Vellanki |
| [FALCON-1177](https://issues.apache.org/jira/browse/FALCON-1177) | Changing method modifier to make it be not concerned as a test |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1183](https://issues.apache.org/jira/browse/FALCON-1183) | Fix expected response in testScheduleDeletedFeedOnBothColosUsingColoHelper |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1165](https://issues.apache.org/jira/browse/FALCON-1165) | Falcon restart failed, if defined service in cluster entity is unreachable |  Major | oozie | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1051](https://issues.apache.org/jira/browse/FALCON-1051) | Lineage apis broken for falcon setup in distributed mode. |  Major | client | Karishma Gulati | pavan kumar kolamuri |
| [FALCON-1202](https://issues.apache.org/jira/browse/FALCON-1202) | Add tests for EntityPage |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1218](https://issues.apache.org/jira/browse/FALCON-1218) | Minor fix for testFeedListingAfterFeedDataPathUpdate & testFeedListingAfterFeedAvailabilityFlagUpdate |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1221](https://issues.apache.org/jira/browse/FALCON-1221) | RescheduleProcessInFinalStatesTest.checkNotFoundDefinition() is needs to be case flexible |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1216](https://issues.apache.org/jira/browse/FALCON-1216) | Cluster setup wizard multiple tests |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1222](https://issues.apache.org/jira/browse/FALCON-1222) | Feed Wizard multiple tests |  Major | merlin | Namit Maheshwari | Namit Maheshwari |
| [FALCON-1241](https://issues.apache.org/jira/browse/FALCON-1241) | Fix SearchApiTest according to changes in API, tag ClusterSetupTest, PrismProcessScheduleTest#testScheduleDeletedProcessOnBothColos |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1244](https://issues.apache.org/jira/browse/FALCON-1244) | listInstances : numResults query param is ignored when start and end params are not specified. |  Critical | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-1252](https://issues.apache.org/jira/browse/FALCON-1252) | The parameter "tagkey" should be "tagkeys" in EntityList and FalconCLI twiki |  Major | . | Ying Zheng | Ying Zheng |
| [FALCON-1220](https://issues.apache.org/jira/browse/FALCON-1220) | Exclude downloaded directories from falcon-ui modules |  Major | ui | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1246](https://issues.apache.org/jira/browse/FALCON-1246) | Remove wrong parameter from update signature, delete related tests |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1255](https://issues.apache.org/jira/browse/FALCON-1255) | Fix list of expected statuses in drop down on Entity Page |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1249](https://issues.apache.org/jira/browse/FALCON-1249) | Tests for process setup wizard |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1257](https://issues.apache.org/jira/browse/FALCON-1257) | Fix feedAclUpdate and processAclUpdate |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1258](https://issues.apache.org/jira/browse/FALCON-1258) | Fix feed validity and fortify ELExpFutureAndLatestTest |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1256](https://issues.apache.org/jira/browse/FALCON-1256) | ListProcessInstancesTest needs to be stabilized |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1261](https://issues.apache.org/jira/browse/FALCON-1261) | ProcessSetupTest, EntitiesPatternSearchTest stabilization |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1263](https://issues.apache.org/jira/browse/FALCON-1263) | Fix waitTillInstanceReachState for EntityType.PROCESS |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1254](https://issues.apache.org/jira/browse/FALCON-1254) | ClusterSetup UI: edit xml test cases, stabilize 2 tests |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1264](https://issues.apache.org/jira/browse/FALCON-1264) | Fix validity parsing in ProcessWizardPage |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1267](https://issues.apache.org/jira/browse/FALCON-1267) | Fix Processsetuptest#testinoutstepdropdownfeeds |  Major | merlin | Namit Maheshwari | Namit Maheshwari |
| [FALCON-1265](https://issues.apache.org/jira/browse/FALCON-1265) | ListProcessInstancesTest test fixes |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1270](https://issues.apache.org/jira/browse/FALCON-1270) | SearchUI. Login screen changed to not have password field |  Major | merlin | Namit Maheshwari | Namit Maheshwari |
| [FALCON-1269](https://issues.apache.org/jira/browse/FALCON-1269) | Update InstancePageTest and other after UI changes |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1272](https://issues.apache.org/jira/browse/FALCON-1272) | InstanceParamTest still using root directory |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1273](https://issues.apache.org/jira/browse/FALCON-1273) | ProcessLateRerunTest still using root directory |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1274](https://issues.apache.org/jira/browse/FALCON-1274) | PrismProcessScheduleTest is using root directory |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1275](https://issues.apache.org/jira/browse/FALCON-1275) | PrismFeedUpdateTest is using root directory |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1277](https://issues.apache.org/jira/browse/FALCON-1277) | Fix SearchApiTest according to api changes |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-99](https://issues.apache.org/jira/browse/FALCON-99) | Adding late data to process doesn't create new coord |  Major | . | Shwetha G S | Pallavi Rao |
| [FALCON-1116](https://issues.apache.org/jira/browse/FALCON-1116) | Rule for Oozie 4+ doesn't match 5+ versions |  Major | general | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1285](https://issues.apache.org/jira/browse/FALCON-1285) | Don't reduce process name in ProcessSetupTest |  Blocker | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1288](https://issues.apache.org/jira/browse/FALCON-1288) | Fortify expressionLanguageTest |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1284](https://issues.apache.org/jira/browse/FALCON-1284) | Fix entity cleanup when is\_depracate=true |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1101](https://issues.apache.org/jira/browse/FALCON-1101) | Cluster submission in falcon does not create an owned-by edge |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1260](https://issues.apache.org/jira/browse/FALCON-1260) | Instance dependency API produces incorrect results |  Major | feed, process | Pragya Mittal | Ajay Yadava |
| [FALCON-1292](https://issues.apache.org/jira/browse/FALCON-1292) | Avoid usage of hard coded feed names in Bundle class |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1289](https://issues.apache.org/jira/browse/FALCON-1289) | Select instances again after performing action on entity page |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1290](https://issues.apache.org/jira/browse/FALCON-1290) | Push Enter in start/end filter on entity page, start instance is included |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1300](https://issues.apache.org/jira/browse/FALCON-1300) | Use xml instead of properties for log4j |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1307](https://issues.apache.org/jira/browse/FALCON-1307) | Falcon trunk build is broken |  Blocker | . | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-1311](https://issues.apache.org/jira/browse/FALCON-1311) | Instance dependency API produces inconsistent results in some scenarios |  Major | feed, process | Pragya Mittal | Pragya Mittal |
| [FALCON-1278](https://issues.apache.org/jira/browse/FALCON-1278) | Submitted entity properties must have unique names |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1282](https://issues.apache.org/jira/browse/FALCON-1282) | Incorrect hdfs servers property for feed replication in secured environment |  Critical | . | Venkat Ranganathan | Venkat Ranganathan |
| [FALCON-1314](https://issues.apache.org/jira/browse/FALCON-1314) | Unify handling of local files and directory |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1204](https://issues.apache.org/jira/browse/FALCON-1204) | Expose default configs for feed late data handling in runtime.properties |  Major | docs | Balu Vellanki | Balu Vellanki |
| [FALCON-1139](https://issues.apache.org/jira/browse/FALCON-1139) | Validation issues in Falcon UI |  Minor | ui | Pallavi Rao | Pallavi Rao |
| [FALCON-1247](https://issues.apache.org/jira/browse/FALCON-1247) | ProcessSetupTests |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1248](https://issues.apache.org/jira/browse/FALCON-1248) | ProcessSetupTests |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1237](https://issues.apache.org/jira/browse/FALCON-1237) | Fix Logout button xpath. |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1318](https://issues.apache.org/jira/browse/FALCON-1318) | Method waitForAngularToFinish() should be robust to unresponsive browser |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1329](https://issues.apache.org/jira/browse/FALCON-1329) | Falcon's idempotent behaviour breaks in some cases |  Critical | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1323](https://issues.apache.org/jira/browse/FALCON-1323) | Reverse lookup of feeds causes NPE |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1328](https://issues.apache.org/jira/browse/FALCON-1328) | Error in Triage documentation |  Minor | . | Karishma Gulati | Karishma Gulati |
| [FALCON-1327](https://issues.apache.org/jira/browse/FALCON-1327) | When using triage on a server for a process which does not exist on that server, a NullPointerException is encountered |  Major | . | Karishma Gulati | Ajay Yadava |
| [FALCON-1319](https://issues.apache.org/jira/browse/FALCON-1319) | Contribute HiveDr, Mirror tests and some test fixes |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1338](https://issues.apache.org/jira/browse/FALCON-1338) | Fortify ProcessInstanceRerunTest#testProcessInstanceRerunMultipleSucceeded |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1332](https://issues.apache.org/jira/browse/FALCON-1332) | Fortify ClusterSetupTest#testRegistryInterface - if checkbox wasn't clicked repeat an attempt |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1363](https://issues.apache.org/jira/browse/FALCON-1363) | Fix retry policy example in documentation |  Major | docs | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1369](https://issues.apache.org/jira/browse/FALCON-1369) | Trunk build is broken |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1310](https://issues.apache.org/jira/browse/FALCON-1310) | Falcon build fails with Oozie-4.2.0 |  Major | general | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1359](https://issues.apache.org/jira/browse/FALCON-1359) | Improve output format for Feed Instance Listing |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1379](https://issues.apache.org/jira/browse/FALCON-1379) | Doc describes retention incorrectly |  Major | docs | Paul Isaychuk | Ajay Yadava |
| [FALCON-1383](https://issues.apache.org/jira/browse/FALCON-1383) | MetadataMappingServiceTest#testLineageForTransactionFailure fails randomly |  Major | . | sandeep samudrala | sandeep samudrala |
| [FALCON-1251](https://issues.apache.org/jira/browse/FALCON-1251) | FeedEvictor UT fails intermittently |  Major | . | Sowmya Ramesh | sandeep samudrala |
| [FALCON-1384](https://issues.apache.org/jira/browse/FALCON-1384) | AbstractEntityHelper.java cleanup |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1388](https://issues.apache.org/jira/browse/FALCON-1388) | Fix merge conflicts produced by FALCON-1002 |  Blocker | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1002](https://issues.apache.org/jira/browse/FALCON-1002) | Disable UpdateAtSpecific time test from falcon regression |  Major | . | Samarth Gupta | Samarth Gupta |
| [FALCON-1398](https://issues.apache.org/jira/browse/FALCON-1398) | CrossEntityValidations contains incorrect validations |  Major | prism | Pragya Mittal | Pragya Mittal |
| [FALCON-1399](https://issues.apache.org/jira/browse/FALCON-1399) | Property for default number of results is not loaded dynamically |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1344](https://issues.apache.org/jira/browse/FALCON-1344) | EntityGraph returns null in list of dependent entities |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1409](https://issues.apache.org/jira/browse/FALCON-1409) | Update API throws NullPointerException |  Major | prism | Pragya Mittal | sandeep samudrala |
| [FALCON-1412](https://issues.apache.org/jira/browse/FALCON-1412) | Process waits indefinitely and finally timedout even though missing dependencies are met |  Major | build-tools | Pragya Mittal | Pallavi Rao |
| [FALCON-1382](https://issues.apache.org/jira/browse/FALCON-1382) | Add a test for feed retention to make sure that data directory is not deleted |  Major | merlin | Paul Isaychuk | Paul Isaychuk |
| [FALCON-1038](https://issues.apache.org/jira/browse/FALCON-1038) | Log mover fails for map-reduce action |  Major | common | Pragya Mittal | Peeyush Bishnoi |
| [FALCON-1008](https://issues.apache.org/jira/browse/FALCON-1008) | Deprecate V1 Log retriever |  Major | common | Srikanth Sundarrajan | Peeyush Bishnoi |
| [FALCON-1325](https://issues.apache.org/jira/browse/FALCON-1325) | Triage API on prism, for an instance at which a process does not exist sends incorrect message |  Major | . | Karishma Gulati | Ajay Yadava |
| [FALCON-1312](https://issues.apache.org/jira/browse/FALCON-1312) | Falcon post processing action should use Oozie prepared configuration |  Major | common | Venkat Ranganathan | Venkat Ranganathan |
| [FALCON-1423](https://issues.apache.org/jira/browse/FALCON-1423) | HDFS recipe broken: Unrecognized option: -counterLogDir |  Major | replication | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1203](https://issues.apache.org/jira/browse/FALCON-1203) | 2 validateACL UTs broken |  Minor | . | Pallavi Rao | Narayan Periwal |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1167](https://issues.apache.org/jira/browse/FALCON-1167) | Homepage & Login test for search-ui |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1173](https://issues.apache.org/jira/browse/FALCON-1173) | Tests for entities table of search-ui |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1187](https://issues.apache.org/jira/browse/FALCON-1187) | Test that changes made via API are reflected on UI |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1197](https://issues.apache.org/jira/browse/FALCON-1197) | Use diamond operator in merlin and merlin-core |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1198](https://issues.apache.org/jira/browse/FALCON-1198) | Test buttons available on search results page |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1226](https://issues.apache.org/jira/browse/FALCON-1226) | Stabilize testActionsPauseResume() |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-1229](https://issues.apache.org/jira/browse/FALCON-1229) | Tests for instance page on SearchUI |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-782](https://issues.apache.org/jira/browse/FALCON-782) | Update trunk version to 0.7-incubating-SNAPSHOT |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-807](https://issues.apache.org/jira/browse/FALCON-807) | Fix order of actual and expected expression in assert statements in webapp module |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-684](https://issues.apache.org/jira/browse/FALCON-684) | Fix problems found by checkstyle in non-test files in falcon-regression |  Minor | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-698](https://issues.apache.org/jira/browse/FALCON-698) | Fix checkstyle bugs in test files in falcon-regression |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-734](https://issues.apache.org/jira/browse/FALCON-734) | Document when to use Distributed Mode vs. Embedded Mode |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-926](https://issues.apache.org/jira/browse/FALCON-926) | Fix problems found by findbugs in merlin and merlin-core |  Major | merlin | Ruslan Ostafiychuk | Ruslan Ostafiychuk |
| [FALCON-928](https://issues.apache.org/jira/browse/FALCON-928) | Use falcon's checkstyle for falcon regression code |  Major | merlin | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [FALCON-1121](https://issues.apache.org/jira/browse/FALCON-1121) | Backend support for free-text entity search |  Major | . | Ying Zheng | Ying Zheng |
| [FALCON-676](https://issues.apache.org/jira/browse/FALCON-676) | Enable metrics for Titan |  Major | metrics | Venkatesh Seetharam | Ajay Yadava |
| [FALCON-1293](https://issues.apache.org/jira/browse/FALCON-1293) | Update CHANGES.txt to change 0.6.1 branch to release |  Major | ease | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1170](https://issues.apache.org/jira/browse/FALCON-1170) | Falcon Native Scheduler - Refactor existing workflow/coord/bundle builder |  Major | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1297](https://issues.apache.org/jira/browse/FALCON-1297) | Falcon Unit which supports Submit and Schedule of jobs |  Major | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1353](https://issues.apache.org/jira/browse/FALCON-1353) | Create branch 0.7 |  Major | general | Ajay Yadava | Ajay Yadava |
| [FALCON-1380](https://issues.apache.org/jira/browse/FALCON-1380) | Triage Result throws incorrect error message on prism for an invalid process instance |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1396](https://issues.apache.org/jira/browse/FALCON-1396) | Disable the faulty tests |  Blocker | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1189](https://issues.apache.org/jira/browse/FALCON-1189) | Design document for Hive replication support |  Major | . | Venkat Ranganathan | Venkat Ranganathan |
| [FALCON-1190](https://issues.apache.org/jira/browse/FALCON-1190) | Sourcing of events for Hive replication |  Major | . | Venkat Ranganathan | Sowmya Ramesh |
| [FALCON-1191](https://issues.apache.org/jira/browse/FALCON-1191) | Hive replication state managment |  Major | . | Venkat Ranganathan | Balu Vellanki |
| [FALCON-1192](https://issues.apache.org/jira/browse/FALCON-1192) | Hive Replication data movement and target application |  Major | . | Venkat Ranganathan | Peeyush Bishnoi |
| [FALCON-1194](https://issues.apache.org/jira/browse/FALCON-1194) | Hive Replication alerts and monitoring |  Major | . | Venkat Ranganathan | Peeyush Bishnoi |
| [FALCON-1294](https://issues.apache.org/jira/browse/FALCON-1294) | Move HiveDR to addons |  Major | . | Venkat Ranganathan | Peeyush Bishnoi |
| [FALCON-1295](https://issues.apache.org/jira/browse/FALCON-1295) | Changes for HiveDR in secure clusters |  Major | . | Venkat Ranganathan | Balu Vellanki |
| [FALCON-1370](https://issues.apache.org/jira/browse/FALCON-1370) | Update installation twiki for HiveDR |  Major | . | Sowmya Ramesh | Peeyush Bishnoi |
| [FALCON-1424](https://issues.apache.org/jira/browse/FALCON-1424) | Update changes.txt for 0.7 branch |  Major | ease | Ajay Yadava | Ajay Yadava |
| [FALCON-1296](https://issues.apache.org/jira/browse/FALCON-1296) | Falcon Unit Design Doc |  Major | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1346](https://issues.apache.org/jira/browse/FALCON-1346) | Update JIRA fix versions |  Major | general | Ajay Yadava | Ajay Yadava |
| [FALCON-1349](https://issues.apache.org/jira/browse/FALCON-1349) | Upgrade falcon POM for 0.7 release |  Major | build-tools | Ajay Yadava | Ajay Yadava |
| [FALCON-1352](https://issues.apache.org/jira/browse/FALCON-1352) | Merge pending patches and update fix version |  Major | general | Ajay Yadava | Ajay Yadava |
| [FALCON-1356](https://issues.apache.org/jira/browse/FALCON-1356) | Check licenses and copyright information |  Major | docs | Ajay Yadava | Ajay Yadava |
| [FALCON-1350](https://issues.apache.org/jira/browse/FALCON-1350) | Verify source tarball and run few end to end tests |  Major | build-tools | Ajay Yadava | Ajay Yadava |
| [FALCON-1348](https://issues.apache.org/jira/browse/FALCON-1348) | Document upgrade from 0.6.1 to 0.7 |  Major | docs | Ajay Yadava | Ajay Yadava |
| [FALCON-1357](https://issues.apache.org/jira/browse/FALCON-1357) | Update CHANGES.txt to change 0.7 branch to release |  Major | ease | Ajay Yadava | Ajay Yadava |
| [FALCON-1436](https://issues.apache.org/jira/browse/FALCON-1436) | Update documentation on site and announce the release |  Major | ease | Ajay Yadava | Ajay Yadava |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1048](https://issues.apache.org/jira/browse/FALCON-1048) | Incorrect documentation for feed instacnce listing api |  Minor | . | Suhas Vasu | Suhas Vasu |
| [FALCON-1427](https://issues.apache.org/jira/browse/FALCON-1427) | Migrate download link to lua |  Blocker | site | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-1345](https://issues.apache.org/jira/browse/FALCON-1345) | Prepare Falcon Release v0.7 |  Major | ease | Ajay Yadava | Ajay Yadava |


