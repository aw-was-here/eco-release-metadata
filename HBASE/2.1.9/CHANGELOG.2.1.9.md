
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

## Release 2.1.9 - 2020-02-17



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23710](https://issues.apache.org/jira/browse/HBASE-23710) | Priority configuration for system coprocessors |  Major | Coprocessors | Geoffrey Jacoby | Geoffrey Jacoby |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23325](https://issues.apache.org/jira/browse/HBASE-23325) | [UI]rsgoup average load keep two decimals |  Minor | . | xuqinya | xuqinya |
| [HBASE-23362](https://issues.apache.org/jira/browse/HBASE-23362) | WalPrettyPrinter should include the table name |  Minor | tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23365](https://issues.apache.org/jira/browse/HBASE-23365) | Minor change MemStoreFlusher's log |  Trivial | . | Lijin Bin | Lijin Bin |
| [HBASE-23361](https://issues.apache.org/jira/browse/HBASE-23361) | [UI] Limit two decimals even for total average load |  Minor | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23303](https://issues.apache.org/jira/browse/HBASE-23303) | Add security headers to REST server/info page |  Major | REST | Andor Molnar | Andor Molnar |
| [HBASE-23373](https://issues.apache.org/jira/browse/HBASE-23373) | Log \`RetriesExhaustedException\` context with full time precision |  Minor | asyncclient, Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23379](https://issues.apache.org/jira/browse/HBASE-23379) | Clean Up FSUtil getRegionLocalityMappingFromFS |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23380](https://issues.apache.org/jira/browse/HBASE-23380) | General Cleanup of FSUtil |  Minor | Filesystem Integration | David Mollitor | David Mollitor |
| [HBASE-23549](https://issues.apache.org/jira/browse/HBASE-23549) | Document steps to disable MOB for a column family |  Minor | documentation, mob | Sean Busbey | Sean Busbey |
| [HBASE-23239](https://issues.apache.org/jira/browse/HBASE-23239) | Reporting on status of backing MOB files from client-facing cells |  Major | mapreduce, mob, Operability | Sean Busbey | Sean Busbey |
| [HBASE-23238](https://issues.apache.org/jira/browse/HBASE-23238) | Additional test and checks for null references on ScannerCallableWithReplicas |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23615](https://issues.apache.org/jira/browse/HBASE-23615) | Use a dedicated thread for executing WorkerMonitor in ProcedureExecutor. |  Major | amv2 | Lijin Bin | Lijin Bin |
| [HBASE-23629](https://issues.apache.org/jira/browse/HBASE-23629) | Addition to Supporting projects page |  Minor | . | Manu Manjunath | Manu Manjunath |
| [HBASE-23333](https://issues.apache.org/jira/browse/HBASE-23333) | Include simple Call.toShortString() in sendCall exceptions |  Minor | Client, Operability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23654](https://issues.apache.org/jira/browse/HBASE-23654) | Please add Apache Trafodion and EsgynDB to "Powered by Apache HBase" page |  Major | documentation | Dave Birdsall | Beata Sudi |
| [HBASE-23165](https://issues.apache.org/jira/browse/HBASE-23165) | [hbtop] Some modifications from HBASE-22988 |  Minor | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23619](https://issues.apache.org/jira/browse/HBASE-23619) | Use built-in formatting for logging in hbase-zookeeper |  Trivial | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-23635](https://issues.apache.org/jira/browse/HBASE-23635) | Reduce number of Checkstyle violations in hbase-mapreduce |  Minor | mapreduce | Jan Hentschel | Jan Hentschel |
| [HBASE-23626](https://issues.apache.org/jira/browse/HBASE-23626) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23622](https://issues.apache.org/jira/browse/HBASE-23622) | Reduce number of Checkstyle violations in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23646](https://issues.apache.org/jira/browse/HBASE-23646) | Fix remaining Checkstyle violations in tests of hbase-rest |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23645](https://issues.apache.org/jira/browse/HBASE-23645) | Fix remaining Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23623](https://issues.apache.org/jira/browse/HBASE-23623) | Reduce number of Checkstyle violations in hbase-rest |  Minor | REST | Jan Hentschel | Jan Hentschel |
| [HBASE-23686](https://issues.apache.org/jira/browse/HBASE-23686) | Revert binary incompatible change and remove reflection |  Major | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23621](https://issues.apache.org/jira/browse/HBASE-23621) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22607](https://issues.apache.org/jira/browse/HBASE-22607) | TestExportSnapshotNoCluster::testSnapshotWithRefsExportFileSystemState() fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [HBASE-23328](https://issues.apache.org/jira/browse/HBASE-23328) | info:regioninfo goes wrong when region replicas enabled |  Major | read replicas | Michael Stack | Michael Stack |
| [HBASE-23237](https://issues.apache.org/jira/browse/HBASE-23237) | Negative 'Requests per Second' counts in UI |  Major | UI | Michael Stack | Karthik Palanisamy |
| [HBASE-23336](https://issues.apache.org/jira/browse/HBASE-23336) | [CLI] Incorrect row(s) count  "clear\_deadservers" |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23197](https://issues.apache.org/jira/browse/HBASE-23197) | "IllegalArgumentException: Wrong FS" on edits replay when WALs on different file system and hbase.region.archive.recovered.edits is enabled. |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23312](https://issues.apache.org/jira/browse/HBASE-23312) | HBase Thrift SPNEGO configs (HBASE-19852) should be backwards compatible |  Major | Thrift | Kevin Risden | Kevin Risden |
| [HBASE-23356](https://issues.apache.org/jira/browse/HBASE-23356) | When construct StoreScanner throw exceptions it is possible to left some KeyValueScanner not closed. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23345](https://issues.apache.org/jira/browse/HBASE-23345) | Table need to replication unless all of cfs are excluded |  Minor | Replication | Sun Xin | Sun Xin |
| [HBASE-23337](https://issues.apache.org/jira/browse/HBASE-23337) | Several modules missing in nexus for Apache HBase 2.2.2 |  Blocker | build, community, scripts | Chao | Sean Busbey |
| [HBASE-22096](https://issues.apache.org/jira/browse/HBASE-22096) | /storeFile.jsp shows CorruptHFileException when the storeFile is a reference file |  Major | UI | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23360](https://issues.apache.org/jira/browse/HBASE-23360) | [CLI] Fix help command "set\_quota" to explain removing quota |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23376](https://issues.apache.org/jira/browse/HBASE-23376) | NPE happens while replica region is moving |  Minor | read replicas | Sun Xin | Sun Xin |
| [HBASE-23589](https://issues.apache.org/jira/browse/HBASE-23589) | FlushDescriptor contains non-matching family/output combinations |  Critical | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23587](https://issues.apache.org/jira/browse/HBASE-23587) | The FSYNC\_WAL flag does not work on branch-2.x |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-23663](https://issues.apache.org/jira/browse/HBASE-23663) | Allow dot and hyphen in Profiler's URL |  Minor | profiler | Peter Somogyi | Peter Somogyi |
| [HBASE-23658](https://issues.apache.org/jira/browse/HBASE-23658) | Fix flaky TestSnapshotFromMaster |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23679](https://issues.apache.org/jira/browse/HBASE-23679) | FileSystem instance leaks due to bulk loads with Kerberos enabled |  Critical | . | Josh Elser | Josh Elser |
| [HBASE-23695](https://issues.apache.org/jira/browse/HBASE-23695) | Fail more gracefully when test class is missing Category |  Minor | . | Josh Elser | Josh Elser |
| [HBASE-23701](https://issues.apache.org/jira/browse/HBASE-23701) | Make sure HBaseClassTestRule doesn't suffer same issue as HBaseClassTestRuleChecker |  Minor | . | Josh Elser | Josh Elser |
| [HBASE-23737](https://issues.apache.org/jira/browse/HBASE-23737) | [Flakey Tests] TestFavoredNodeTableImport fails 30% of the time |  Major | . | Michael Stack | Michael Stack |
| [HBASE-17115](https://issues.apache.org/jira/browse/HBASE-17115) | HMaster/HRegion Info Server does not honour admin.acl |  Major | . | Mohammad Arshad | Josh Elser |
| [HBASE-23809](https://issues.apache.org/jira/browse/HBASE-23809) | The RSGroup shell test is missing |  Major | rsgroup, test | Duo Zhang | Duo Zhang |
| [HBASE-23554](https://issues.apache.org/jira/browse/HBASE-23554) | Encoded regionname to regionname utility |  Major | shell | Michael Stack | Michael Stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23711](https://issues.apache.org/jira/browse/HBASE-23711) | Add test for MinVersions and KeepDeletedCells TTL |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-23749](https://issues.apache.org/jira/browse/HBASE-23749) | TestHFileWriterV3 should have tests for all data block encodings |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23793](https://issues.apache.org/jira/browse/HBASE-23793) | Increase maven heap allocation to 4G in Yetus personality |  Major | build, test | Nick Dimiduk | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23358](https://issues.apache.org/jira/browse/HBASE-23358) | Set version as 2.1.9-SNAPSHOT in branch-2.1 |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-20461](https://issues.apache.org/jira/browse/HBASE-20461) | Implement fsync for AsyncFSWAL |  Major | wal | Michael Stack | Duo Zhang |
| [HBASE-23320](https://issues.apache.org/jira/browse/HBASE-23320) | Upgrade surefire plugin to 3.0.0-M4 |  Major | dependencies, test | Peter Somogyi | Rabi Kumar K C |
| [HBASE-23820](https://issues.apache.org/jira/browse/HBASE-23820) | Set version as 2.1.9 in branch-2.1 in prep for first RC of 2.1.9 |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-23821](https://issues.apache.org/jira/browse/HBASE-23821) | Generate CHANGES.md and RELEASENOTES.md for 2.1.9 |  Major | documentation | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23575](https://issues.apache.org/jira/browse/HBASE-23575) | Remove dead code from AsyncRegistry interface |  Minor | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23642](https://issues.apache.org/jira/browse/HBASE-23642) | Reintroduce ReplicationUtils.contains as deprecated |  Major | Replication | Peter Somogyi | Peter Somogyi |
| [HBASE-23774](https://issues.apache.org/jira/browse/HBASE-23774) | Announce user-zh list |  Trivial | website | Josh Elser | Josh Elser |
| [HBASE-23760](https://issues.apache.org/jira/browse/HBASE-23760) | (2.1) Helper method to configure secure DFS cluster for tests |  Major | security, test | Josh Elser | Josh Elser |


