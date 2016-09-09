
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

## Release 0.6.1 - 2015-06-23

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-1052](https://issues.apache.org/jira/browse/FALCON-1052) | pipeline feature is not able to group by through CLI |  Major | process | Pragya Mittal | Pallavi Rao |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-263](https://issues.apache.org/jira/browse/FALCON-263) | API to get workflow parameters |  Major | . | Shwetha G S | pavan kumar kolamuri |
| [FALCON-1012](https://issues.apache.org/jira/browse/FALCON-1012) | Add support for MapR-FS |  Critical | hadoop, oozie | Roman Slysh |  |
| [FALCON-790](https://issues.apache.org/jira/browse/FALCON-790) | Falcon UI to enable entity/process/feed edits and management |  Critical | ui | kenneth ho | kenneth ho |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-877](https://issues.apache.org/jira/browse/FALCON-877) | Pagination API should have a cap on number of results returned |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-914](https://issues.apache.org/jira/browse/FALCON-914) | Add option to search for Entities |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-256](https://issues.apache.org/jira/browse/FALCON-256) | Create new API for Process dependency graph DAG which captures process connected via feeds |  Major | . | Shaik Idris Ali | Ajay Yadava |
| [FALCON-749](https://issues.apache.org/jira/browse/FALCON-749) | Improve error printed in falcon CLI |  Major | client | Suresh Srinivas | Suresh Srinivas |
| [FALCON-1057](https://issues.apache.org/jira/browse/FALCON-1057) | recipes.twiki should be renamed Recipes.twiki for consistency and to fix a dead link |  Trivial | docs | Aaron Dossett | Aaron Dossett |
| [FALCON-1037](https://issues.apache.org/jira/browse/FALCON-1037) | Reverse Lookup API should handle trailing slashes |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1042](https://issues.apache.org/jira/browse/FALCON-1042) | Misleading mesage received while performing touch operation on scheduled entity |  Minor | feed, process | Pragya Mittal | Suhas Vasu |
| [FALCON-910](https://issues.apache.org/jira/browse/FALCON-910) | Better error messages when creating cluster's directories |  Minor | client | Adam Kawa | karan kumar |
| [FALCON-1123](https://issues.apache.org/jira/browse/FALCON-1123) | Stacktrace printed by Falcon CLI is not useful to user |  Minor | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1086](https://issues.apache.org/jira/browse/FALCON-1086) | Support execution-order of a feed to be overridden for replication coord |  Major | feed, oozie | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1128](https://issues.apache.org/jira/browse/FALCON-1128) | Adding getter methods to FeedLookupResult |  Major | client, feed | Karishma Gulati | Karishma Gulati |
| [FALCON-1145](https://issues.apache.org/jira/browse/FALCON-1145) | Changing entity name if it exceeds defined length |  Major | merlin | Pragya Mittal | Pragya Mittal |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-916](https://issues.apache.org/jira/browse/FALCON-916) | Falcon idempotency is being voilated during delete |  Major | webapp | Balu Vellanki | Balu Vellanki |
| [FALCON-423](https://issues.apache.org/jira/browse/FALCON-423) | Updating falcon server endpoint in distributed setup doesn't work |  Major | . | Shwetha G S | Srikanth Sundarrajan |
| [FALCON-935](https://issues.apache.org/jira/browse/FALCON-935) | Feed and process late rerun failed in falcon trunk |  Major | feed, process | Pragya Mittal | Shaik Idris Ali |
| [FALCON-952](https://issues.apache.org/jira/browse/FALCON-952) | If hadoop home is set, use $HADOOP\_HOME to set falcon classpath |  Major | build-tools | Balu Vellanki | Balu Vellanki |
| [FALCON-969](https://issues.apache.org/jira/browse/FALCON-969) | http://falcon.incubator.apache.org/ contributions link broken |  Trivial | docs | karan kumar | karan kumar |
| [FALCON-945](https://issues.apache.org/jira/browse/FALCON-945) | Fix broken lineage feature in Web-UI |  Critical | webapp | Adam Kawa | Adam Kawa |
| [FALCON-896](https://issues.apache.org/jira/browse/FALCON-896) | Upgrade oozie to 4.1.0 and make it the default for falcon |  Major | oozie | Venkatesh Seetharam | Peeyush Bishnoi |
| [FALCON-237](https://issues.apache.org/jira/browse/FALCON-237) | falcon feed replication should honour availability flag |  Major | replication | Binish A.R | Peeyush Bishnoi |
| [FALCON-993](https://issues.apache.org/jira/browse/FALCON-993) | Falcon Oozie adaptor test case failed with umask issue |  Major | oozie | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-774](https://issues.apache.org/jira/browse/FALCON-774) | Discontinue support for JDK 1.6 and move to 1.7 |  Critical | general | Venkatesh Seetharam | Peeyush Bishnoi |
| [FALCON-1050](https://issues.apache.org/jira/browse/FALCON-1050) | Falcon rerun is broken for timed out instances |  Major | rerun | Karishma Gulati | Suhas Vasu |
| [FALCON-555](https://issues.apache.org/jira/browse/FALCON-555) | API response from instance "params" having multiple "entry" key |  Major | general | Samarth Gupta | Pallavi Rao |
| [FALCON-950](https://issues.apache.org/jira/browse/FALCON-950) | Rerun does not work on succeeded instances |  Major | process | Pragya Mittal | Suhas Vasu |
| [FALCON-1024](https://issues.apache.org/jira/browse/FALCON-1024) | Updating tags and pipeline elements of the feed/process definition resubmits a new Oozie bundle |  Minor | common | Pallavi Rao | Pallavi Rao |
| [FALCON-1063](https://issues.apache.org/jira/browse/FALCON-1063) | Falcon CLI list entities operation throws NullPointerException |  Major | client | Georgi Ivanov | Pallavi Rao |
| [FALCON-1020](https://issues.apache.org/jira/browse/FALCON-1020) | validate command produces different results when run via prism and server |  Major | client, feed | Karishma Gulati | pavan kumar kolamuri |
| [FALCON-1025](https://issues.apache.org/jira/browse/FALCON-1025) | lastWeek and CurrentWeek functions are getting evaluated incorrect |  Major | process | pavan kumar kolamuri | pavan kumar kolamuri |
| [FALCON-1074](https://issues.apache.org/jira/browse/FALCON-1074) | EntityUtil getInstanceSequence is buggy |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1064](https://issues.apache.org/jira/browse/FALCON-1064) | Build hangs at the following test: JMSMessageProducerTest |  Major | . | Mahak | Sowmya Ramesh |
| [FALCON-933](https://issues.apache.org/jira/browse/FALCON-933) | misleading error msg on cluster submit failure |  Major | client | Samarth Gupta | Sowmya Ramesh |
| [FALCON-1099](https://issues.apache.org/jira/browse/FALCON-1099) | FeedReplicator: throws NPE |  Major | replication | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1115](https://issues.apache.org/jira/browse/FALCON-1115) | Feed Lookup fails in CLI |  Major | feed | Karishma Gulati | Ajay Yadava |
| [FALCON-1100](https://issues.apache.org/jira/browse/FALCON-1100) | UI : Failed to load data. 404 not found |  Major | . | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-915](https://issues.apache.org/jira/browse/FALCON-915) | Failed to load data. Error: 400 Param user.name can't be empty - Web UI/0.6 |  Major | ui | Nigel Jones | Balu Vellanki |
| [FALCON-1119](https://issues.apache.org/jira/browse/FALCON-1119) | Instance logs option is not returning the log location |  Major | . | Suhas Vasu | Suhas Vasu |
| [FALCON-1097](https://issues.apache.org/jira/browse/FALCON-1097) | UT failure for ExpressionHelperTest |  Major | common | Sowmya Ramesh | Ajay Yadava |
| [FALCON-1132](https://issues.apache.org/jira/browse/FALCON-1132) | Falcon trunk is broken due to failure in IT test |  Blocker | webapp | Suhas Vasu | Ajay Yadava |
| [FALCON-1142](https://issues.apache.org/jira/browse/FALCON-1142) | ClusterEntityParserTest.testClusterWithOnlyStaging fails when run alone |  Minor | . | Pallavi Rao | Pallavi Rao |
| [FALCON-1144](https://issues.apache.org/jira/browse/FALCON-1144) | Dynamic partitions not getting registered in Hcat |  Critical | common | Pragya Mittal | Suhas Vasu |
| [FALCON-1143](https://issues.apache.org/jira/browse/FALCON-1143) | Correcting order of entities on reload |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1141](https://issues.apache.org/jira/browse/FALCON-1141) | Reverse Lookup for feed in prism fails with BadRequest |  Major | . | Ajay Yadava | Ajay Yadava |
| [FALCON-1129](https://issues.apache.org/jira/browse/FALCON-1129) | In a secure cluster, feed replication fails because of Authentication issues |  Critical | . | Venkat Ranganathan | Venkat Ranganathan |
| [FALCON-1146](https://issues.apache.org/jira/browse/FALCON-1146) | feed retention policy deleted everything all the way up to the root |  Critical | common, retention | Peeyush Bishnoi | Peeyush Bishnoi |
| [FALCON-1154](https://issues.apache.org/jira/browse/FALCON-1154) | Replication is broken |  Blocker | replication | Sowmya Ramesh | Sowmya Ramesh |
| [FALCON-1159](https://issues.apache.org/jira/browse/FALCON-1159) | Falcon build is broken |  Blocker | retention | Suhas Vasu | Suhas Vasu |
| [FALCON-1161](https://issues.apache.org/jira/browse/FALCON-1161) | Test case feedFeedBasePathExists fails intermittently |  Major | retention | Peeyush Bishnoi | Suhas Vasu |
| [FALCON-1162](https://issues.apache.org/jira/browse/FALCON-1162) | Cluster submit succeeds when staging HDFS dir does not have 777 (ALL) permission |  Blocker | common | Venkatesan Ramachandran | Venkat Ramachandran |
| [FALCON-1224](https://issues.apache.org/jira/browse/FALCON-1224) | cannot build falcon -  codehaus close service and repo - fail error 503 |  Critical | . | JP Bordenave | Suhas Vasu |
| [FALCON-1238](https://issues.apache.org/jira/browse/FALCON-1238) | Add apache license header to .less css in falcon-ui/app |  Major | ui | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1291](https://issues.apache.org/jira/browse/FALCON-1291) | Falcon: Error Notification  'Unexpected Error' when log in into Falcon web ui |  Major | ui | Irina Easterling |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-805](https://issues.apache.org/jira/browse/FALCON-805) | Create store to store feed properties like name against it's path |  Major | general | Ajay Yadava | Ajay Yadava |
| [FALCON-823](https://issues.apache.org/jira/browse/FALCON-823) | Add path matching ability |  Major | general | Ajay Yadava | Ajay Yadava |
| [FALCON-822](https://issues.apache.org/jira/browse/FALCON-822) | Add reverse look up API |  Major | general | Ajay Yadava | Ajay Yadava |
| [FALCON-1117](https://issues.apache.org/jira/browse/FALCON-1117) | Falcon Client throws NPE on no emtpy result in reverse lookup |  Major | feed | Ajay Yadava | Ajay Yadava |
| [FALCON-1076](https://issues.apache.org/jira/browse/FALCON-1076) | Update JIRAs fix version to 0.6.1 from 0.7 or 0.6 (if release considers) |  Major | general | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1124](https://issues.apache.org/jira/browse/FALCON-1124) | Merge pending patches and update fix version |  Major | general | Shaik Idris Ali | Suhas Vasu |
| [FALCON-1091](https://issues.apache.org/jira/browse/FALCON-1091) | Monitoring plugin that registers catalog partition - code |  Major | . | Pallavi Rao | Suhas Vasu |
| [FALCON-1134](https://issues.apache.org/jira/browse/FALCON-1134) | Create branch 0.6.1 and update version to 0.6.1 |  Major | general | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1081](https://issues.apache.org/jira/browse/FALCON-1081) | Verify source tarball for Java 1.8 Compatibility |  Major | build-tools | Shaik Idris Ali | Pragya Mittal |
| [FALCON-1158](https://issues.apache.org/jira/browse/FALCON-1158) | Rename the parameter "pattern" in LIST API to "nameseq" |  Major | . | Ying Zheng | Ying Zheng |
| [FALCON-1079](https://issues.apache.org/jira/browse/FALCON-1079) | Upgrade falcon POM for 0.6.1 cut |  Major | build-tools | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1182](https://issues.apache.org/jira/browse/FALCON-1182) | remove reference to com.google.code.findbugs:annotations |  Major | client, license | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1245](https://issues.apache.org/jira/browse/FALCON-1245) | Verify licensing and update license.txt in falcon-ui module |  Major | falcon-ui | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1276](https://issues.apache.org/jira/browse/FALCON-1276) | Verify licensing in html5-ui module |  Major | html5-ui | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1077](https://issues.apache.org/jira/browse/FALCON-1077) | Verify licensing and rat-checks for falcon-regression |  Major | build-tools | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1080](https://issues.apache.org/jira/browse/FALCON-1080) | Verify source tarball and run few Integ tests |  Major | build-tools | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-1280](https://issues.apache.org/jira/browse/FALCON-1280) | Update docs/license licenses with right copyright information |  Major | docs | Shaik Idris Ali | Shaik Idris Ali |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-977](https://issues.apache.org/jira/browse/FALCON-977) | Drop incubator/incubating from falcon codebase |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-1309](https://issues.apache.org/jira/browse/FALCON-1309) | Update website with 0.6.1 documentation |  Major | docs | Ajay Yadava | Ajay Yadava |
| [FALCON-1073](https://issues.apache.org/jira/browse/FALCON-1073) | Prepare Falcon Release v0.6.1 |  Major | ease | Srikanth Sundarrajan | Shaik Idris Ali |


