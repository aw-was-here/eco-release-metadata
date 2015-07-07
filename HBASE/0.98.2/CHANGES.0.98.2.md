
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
# Apache HBase Changelog

## Release 0.98.2 - 2014-05-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11077](https://issues.apache.org/jira/browse/HBASE-11077) | [AccessController] Restore compatible early-out access denial |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11054](https://issues.apache.org/jira/browse/HBASE-11054) | Create new hook in StoreScanner to help user creating his own delete tracker |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | Delete mutation is not consistent with Put wrt timestamp |  Major | Client | Anoop Sam John | Anoop Sam John |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11044](https://issues.apache.org/jira/browse/HBASE-11044) | [Shell] Show groups for user in 'whoami' output |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11026](https://issues.apache.org/jira/browse/HBASE-11026) | Provide option to filter out all rows in PerformanceEvaluation tool |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | Align bulk load, flush, and compact to require Action.CREATE |  Major | security | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-11002](https://issues.apache.org/jira/browse/HBASE-11002) | Shell support for changing cell visibility for testing |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11001](https://issues.apache.org/jira/browse/HBASE-11001) | Shell support for granting cell permissions for testing |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10952](https://issues.apache.org/jira/browse/HBASE-10952) | [REST] Let the user turn off block caching if desired |  Minor | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-10951](https://issues.apache.org/jira/browse/HBASE-10951) | Use PBKDF2 to generate test encryption keys in the shell |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10950](https://issues.apache.org/jira/browse/HBASE-10950) | Add  a configuration point for MaxVersion of Column Family |  Major | Admin, Usability | Demai Ni | Enoch Hsu |
| [HBASE-10916](https://issues.apache.org/jira/browse/HBASE-10916) | [VisibilityController] Stackable ScanLabelGenerators |  Critical | . | Andrew Purtell | Anoop Sam John |
| [HBASE-10902](https://issues.apache.org/jira/browse/HBASE-10902) | Make Secure Bulk Load work across remote secure clusters |  Major | . | Jerry He | Jerry He |
| [HBASE-10892](https://issues.apache.org/jira/browse/HBASE-10892) | [Shell] Add support for globs in user\_permission |  Major | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10884](https://issues.apache.org/jira/browse/HBASE-10884) | [REST] Do not disable block caching when scanning |  Major | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-10883](https://issues.apache.org/jira/browse/HBASE-10883) | Restrict the universe of labels and authorizations |  Major | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-10823](https://issues.apache.org/jira/browse/HBASE-10823) | Resolve LATEST\_TIMESTAMP to current server time before scanning for ACLs |  Minor | . | Andrew Purtell | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11061](https://issues.apache.org/jira/browse/HBASE-11061) | Port HBASE-10948 Fix hbase table file 'x' mode to 0.96 / 0.98 |  Major | . | Ted Yu | Jerry He |
| [HBASE-11049](https://issues.apache.org/jira/browse/HBASE-11049) | HBase WALPlayer needs to add credentials to job to play to table |  Minor | mapreduce | Jerry He | Jerry He |
| [HBASE-11038](https://issues.apache.org/jira/browse/HBASE-11038) | Filtered scans can bypass metrics collection |  Minor | Scanners | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11030](https://issues.apache.org/jira/browse/HBASE-11030) | HBaseTestingUtility.getMiniHBaseCluster should be able to return null |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11011](https://issues.apache.org/jira/browse/HBASE-11011) | Avoid extra getFileStatus() calls on Region startup |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10979](https://issues.apache.org/jira/browse/HBASE-10979) | Fix AnnotationReadingPriorityFunction "scan" handling |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10970](https://issues.apache.org/jira/browse/HBASE-10970) | [AccessController] Issues with covering cell permission checks |  Major | . | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-10967](https://issues.apache.org/jira/browse/HBASE-10967) | CatalogTracker.waitForMeta should not wait indefinitely silently |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10966](https://issues.apache.org/jira/browse/HBASE-10966) | RowCounter misinterprets column names that have colons in their qualifier |  Trivial | . | Alexandre Normand | Alexandre Normand |
| [HBASE-10958](https://issues.apache.org/jira/browse/HBASE-10958) | [dataloss] Bulk loading with seqids can prevent some log entries from being replayed |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10949](https://issues.apache.org/jira/browse/HBASE-10949) | Reversed scan could hang |  Critical | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10903](https://issues.apache.org/jira/browse/HBASE-10903) | HBASE-10740 regression; cannot pass commands for zk to run |  Major | Zookeeper | stack | stack |
| [HBASE-10899](https://issues.apache.org/jira/browse/HBASE-10899) | [AccessController] Apply MAX\_VERSIONS from schema or request when scanning |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10895](https://issues.apache.org/jira/browse/HBASE-10895) | unassign a region fails due to the hosting region server is in FailedServerList |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10890](https://issues.apache.org/jira/browse/HBASE-10890) | ExportSnapshot needs to add acquired token to job |  Major | snapshots | Jerry He | Jerry He |
| [HBASE-10879](https://issues.apache.org/jira/browse/HBASE-10879) | user\_permission shell command on namespace doesn't work |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10860](https://issues.apache.org/jira/browse/HBASE-10860) | Insufficient AccessController covering permission check |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-10854](https://issues.apache.org/jira/browse/HBASE-10854) | [VisibilityController] Apply MAX\_VERSIONS from schema or request when scanning |  Major | security | Matteo Bertozzi | Anoop Sam John |
| [HBASE-10850](https://issues.apache.org/jira/browse/HBASE-10850) | essential column family optimization is broken |  Blocker | Coprocessors, Filters, Performance | Fabien Le Gallo | Ted Yu |
| [HBASE-10848](https://issues.apache.org/jira/browse/HBASE-10848) | Filter SingleColumnValueFilter combined with NullComparator does not work |  Major | Filters | Fabien Le Gallo | Fabien Le Gallo |
| [HBASE-10845](https://issues.apache.org/jira/browse/HBASE-10845) | Memstore snapshot size isn't updated in DefaultMemStore#rollback() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10830](https://issues.apache.org/jira/browse/HBASE-10830) | Integration test MR jobs attempt to load htrace jars from the wrong location |  Minor | . | Andrew Purtell | Nick Dimiduk |
| [HBASE-10705](https://issues.apache.org/jira/browse/HBASE-10705) | CompactionRequest#toString() may throw NullPointerException |  Minor | . | Ted Yu | Rekha Joshi |
| [HBASE-10611](https://issues.apache.org/jira/browse/HBASE-10611) | Description for hbase:acl table is wrong on master-status#catalogTables |  Minor | . | Ted Yu | Rekha Joshi |
| [HBASE-10533](https://issues.apache.org/jira/browse/HBASE-10533) | commands.rb is giving wrong error messages on exceptions |  Major | shell | rajeshbabu | rajeshbabu |
| [HBASE-10312](https://issues.apache.org/jira/browse/HBASE-10312) | Flooding the cluster with administrative actions leads to collapse |  Critical | . | Andrew Purtell | Jean-Daniel Cryans |
| [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | Major compact keeps deletes with future timestamps |  Minor | Compaction, Deletes, regionserver | Max Lapan | Liu Shaohui |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11037](https://issues.apache.org/jira/browse/HBASE-11037) | Race condition in TestZKBasedOpenCloseRegion |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11023](https://issues.apache.org/jira/browse/HBASE-11023) | Port HBASE-10488 "'mvn site' is broken due to org.apache.jasper.JspC not found" to 0.98 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11010](https://issues.apache.org/jira/browse/HBASE-11010) | TestChangingEncoding is unnecessarily slow |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10988](https://issues.apache.org/jira/browse/HBASE-10988) | Properly wait for server in TestThriftServerCmdLine |  Minor | test | Lars Hofhansl | Lars Hofhansl |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11053](https://issues.apache.org/jira/browse/HBASE-11053) | Change DeleteTracker APIs to work with Cell |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10972](https://issues.apache.org/jira/browse/HBASE-10972) | OOBE in prefix key encoding |  Major | Scanners | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-10963](https://issues.apache.org/jira/browse/HBASE-10963) | Refactor cell ACL tests |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10918](https://issues.apache.org/jira/browse/HBASE-10918) | [VisibilityController] System table backed ScanLabelGenerator |  Critical | . | Andrew Purtell | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10912](https://issues.apache.org/jira/browse/HBASE-10912) | setUp / tearDown in TestSCVFWithMiniCluster should be done once per run |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10906](https://issues.apache.org/jira/browse/HBASE-10906) | Change error log for NamingException in TableInputFormatBase to WARN level |  Minor | . | Ted Yu | Ted Yu |


