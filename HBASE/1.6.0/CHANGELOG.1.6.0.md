
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

## Release 1.6.0 - 2020-02-21



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23210](https://issues.apache.org/jira/browse/HBASE-23210) | Backport HBASE-15519 (Add per-user metrics) to branch-1 |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23073](https://issues.apache.org/jira/browse/HBASE-23073) | Add an optional costFunction to balance regions according to a capacity rule |  Minor | master | Pierre Zemb | Pierre Zemb |
| [HBASE-23710](https://issues.apache.org/jira/browse/HBASE-23710) | Priority configuration for system coprocessors |  Major | Coprocessors | Geoffrey Jacoby | Geoffrey Jacoby |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22701](https://issues.apache.org/jira/browse/HBASE-22701) | Better handle invalid local directory for DynamicClassLoader |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-23114](https://issues.apache.org/jira/browse/HBASE-23114) | Use archiveArtifacts in Jenkinsfiles |  Trivial | . | Peter Somogyi | Peter Somogyi |
| [HBASE-23174](https://issues.apache.org/jira/browse/HBASE-23174) | Upgrade jackson and jackson-databind to 2.9.10 (branch-1) |  Blocker | dependencies, REST, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20626](https://issues.apache.org/jira/browse/HBASE-20626) | Change the value of "Requests Per Second" on WEBUI |  Major | metrics, UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-23172](https://issues.apache.org/jira/browse/HBASE-23172) | HBase Canary region success count metrics reflect column family successes, not region successes |  Minor | canary | Caroline | Caroline |
| [HBASE-23207](https://issues.apache.org/jira/browse/HBASE-23207) | Log a region open journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23208](https://issues.apache.org/jira/browse/HBASE-23208) | Unit formatting in Master & RS UI |  Trivial | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23212](https://issues.apache.org/jira/browse/HBASE-23212) | Provide config reload for Auto Region Reopen based on storeFile ref count |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23228](https://issues.apache.org/jira/browse/HBASE-23228) | Allow for jdk8 specific modules on branch-1 in precommit/nightly testing |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-23245](https://issues.apache.org/jira/browse/HBASE-23245) | All MutableHistogram implementations should remove maxExpected |  Major | metrics | Viraj Jasani | Viraj Jasani |
| [HBASE-23283](https://issues.apache.org/jira/browse/HBASE-23283) | Provide clear and consistent logging about the period of enabled chores |  Minor | Operability | Sean Busbey | Mingliang Liu |
| [HBASE-23278](https://issues.apache.org/jira/browse/HBASE-23278) |  Add a table-level compaction progress display on the UI |  Minor | UI | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23362](https://issues.apache.org/jira/browse/HBASE-23362) | WalPrettyPrinter should include the table name |  Minor | tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23238](https://issues.apache.org/jira/browse/HBASE-23238) | Additional test and checks for null references on ScannerCallableWithReplicas |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23675](https://issues.apache.org/jira/browse/HBASE-23675) | Move to Apache parent POM version 22 |  Minor | dependencies | Peter Somogyi | Peter Somogyi |
| [HBASE-23626](https://issues.apache.org/jira/browse/HBASE-23626) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23622](https://issues.apache.org/jira/browse/HBASE-23622) | Reduce number of Checkstyle violations in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23646](https://issues.apache.org/jira/browse/HBASE-23646) | Fix remaining Checkstyle violations in tests of hbase-rest |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23645](https://issues.apache.org/jira/browse/HBASE-23645) | Fix remaining Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23623](https://issues.apache.org/jira/browse/HBASE-23623) | Reduce number of Checkstyle violations in hbase-rest |  Minor | REST | Jan Hentschel | Jan Hentschel |
| [HBASE-23627](https://issues.apache.org/jira/browse/HBASE-23627) | Resolve remaining Checkstyle violations in hbase-thrift |  Minor | Thrift | Jan Hentschel | Jan Hentschel |
| [HBASE-23621](https://issues.apache.org/jira/browse/HBASE-23621) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23802](https://issues.apache.org/jira/browse/HBASE-23802) | Remove unnecessary Configuration instantiation in LossyAccounting |  Minor | metrics | Nick Dimiduk | Nick Dimiduk |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22441](https://issues.apache.org/jira/browse/HBASE-22441) | BucketCache NullPointerException in cacheBlock |  Major | BucketCache | Lijin Bin | Lijin Bin |
| [HBASE-23056](https://issues.apache.org/jira/browse/HBASE-23056) | Block count is 0 when BucketCache using persistent IOEngine and retrieve from file |  Minor | BucketCache | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-19663](https://issues.apache.org/jira/browse/HBASE-19663) | javadoc creation needs jsr305 |  Major | documentation, website | Michael Stack | Sean Busbey |
| [HBASE-23177](https://issues.apache.org/jira/browse/HBASE-23177) | If fail to open reference because FNFE, make it plain it is a Reference |  Major | Operability | Michael Stack | Michael Stack |
| [HBASE-23149](https://issues.apache.org/jira/browse/HBASE-23149) | hbase shouldPerformMajorCompaction logic is not correct |  Major | Compaction | jackylau | jackylau |
| [HBASE-23185](https://issues.apache.org/jira/browse/HBASE-23185) | High cpu usage because getTable()#put() gets config value every time |  Major | Client | Shinya Yoshida | Shinya Yoshida |
| [HBASE-18439](https://issues.apache.org/jira/browse/HBASE-18439) | Subclasses of o.a.h.h.chaos.actions.Action all use the same logger |  Minor | integration tests | Mike Drob | Rabi Kumar K C |
| [HBASE-23273](https://issues.apache.org/jira/browse/HBASE-23273) | Table header is not correct on table.jsp when table name is hbase:meta |  Minor | UI | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23287](https://issues.apache.org/jira/browse/HBASE-23287) | WALs not aged off of HDFS because LogCleaner is not added to choreService |  Blocker | wal | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23261](https://issues.apache.org/jira/browse/HBASE-23261) | Region stuck in transition while splitting |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23237](https://issues.apache.org/jira/browse/HBASE-23237) | Negative 'Requests per Second' counts in UI |  Major | UI | Michael Stack | Karthik Palanisamy |
| [HBASE-23337](https://issues.apache.org/jira/browse/HBASE-23337) | Several modules missing in nexus for Apache HBase 2.2.2 |  Blocker | build, community, scripts | Chao | Sean Busbey |
| [HBASE-23364](https://issues.apache.org/jira/browse/HBASE-23364) | HRegionServer sometimes does not shut down. |  Major | metrics, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-23359](https://issues.apache.org/jira/browse/HBASE-23359) | RS going down with NPE when splitting a region with compaction disabled in branch-1 |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22096](https://issues.apache.org/jira/browse/HBASE-22096) | /storeFile.jsp shows CorruptHFileException when the storeFile is a reference file |  Major | UI | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23360](https://issues.apache.org/jira/browse/HBASE-23360) | [CLI] Fix help command "set\_quota" to explain removing quota |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23375](https://issues.apache.org/jira/browse/HBASE-23375) | Backport HBASE-22441 to branch-1 |  Major | BucketCache | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23590](https://issues.apache.org/jira/browse/HBASE-23590) | Update maxStoreFileRefCount to maxCompactedStoreFileRefCount |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23585](https://issues.apache.org/jira/browse/HBASE-23585) | MetricsRegionServerWrapperImpl.getL1CacheHitCount always returns 200 |  Major | metrics | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23205](https://issues.apache.org/jira/browse/HBASE-23205) | Correctly update the position of WALs currently being replicated. |  Major | . | Jeongdae Kim | Jeongdae Kim |
| [HBASE-23698](https://issues.apache.org/jira/browse/HBASE-23698) | Switch central repo to https on branch-1 |  Blocker | tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23254](https://issues.apache.org/jira/browse/HBASE-23254) | Release replication buffer quota correctly, when batch includes bulk loaded hfiles |  Minor | Quotas | Jeongdae Kim | Jeongdae Kim |
| [HBASE-23045](https://issues.apache.org/jira/browse/HBASE-23045) |  currentPath may be stitched in a loop in replication source code. |  Critical | Replication | kangkang.guo | kangkang.guo |
| [HBASE-23693](https://issues.apache.org/jira/browse/HBASE-23693) | Split failure may cause region hole and data loss when use zk assign |  Critical | master | tianhang tang | tianhang tang |
| [HBASE-23825](https://issues.apache.org/jira/browse/HBASE-23825) | Increment proto conversion is broken |  Blocker | Increment | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-21776](https://issues.apache.org/jira/browse/HBASE-21776) | Duplicate "Set storagePolicy" debug logging |  Trivial | Compaction | Andrew Kyle Purtell | Sandeep Pal |
| [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23259](https://issues.apache.org/jira/browse/HBASE-23259) | Ability to run mini cluster using pre-determined available random ports |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23552](https://issues.apache.org/jira/browse/HBASE-23552) | Format Javadocs on ITBLL |  Trivial | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23569](https://issues.apache.org/jira/browse/HBASE-23569) | Validate that the log cleaner actually cleans oldWALs as expected |  Major | integration tests, master, test | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-23665](https://issues.apache.org/jira/browse/HBASE-23665) | Split unit tests from TestTableName into a separate test only class |  Minor | test | Nick Dimiduk | Bharath Vissapragada |
| [HBASE-23711](https://issues.apache.org/jira/browse/HBASE-23711) | Add test for MinVersions and KeepDeletedCells TTL |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-23749](https://issues.apache.org/jira/browse/HBASE-23749) | TestHFileWriterV3 should have tests for all data block encodings |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23793](https://issues.apache.org/jira/browse/HBASE-23793) | Increase maven heap allocation to 4G in Yetus personality |  Major | build, test | Nick Dimiduk | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23151](https://issues.apache.org/jira/browse/HBASE-23151) | Backport HBASE-23083 (Collect Executor status info periodically and report to metrics system) to branch-1 |  Minor | . | Andrew Kyle Purtell | chenxu |
| [HBASE-23246](https://issues.apache.org/jira/browse/HBASE-23246) | Fix error prone warning in TestMetricsUserSourceImpl |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23288](https://issues.apache.org/jira/browse/HBASE-23288) | Backport HBASE-23251 (Add Column Family and Table Names to HFileContext) to branch-1 |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-23707](https://issues.apache.org/jira/browse/HBASE-23707) | Add IntelliJ check style plugin configuration |  Minor | build | Nick Dimiduk | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23053](https://issues.apache.org/jira/browse/HBASE-23053) | Disable concurrent nightly builds |  Minor | build | Peter Somogyi | Peter Somogyi |
| [HBASE-23213](https://issues.apache.org/jira/browse/HBASE-23213) | Backport HBASE-22460 to branch-1 |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs |  Blocker | dependencies, REST, security | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-23229](https://issues.apache.org/jira/browse/HBASE-23229) | Update branch-1 to 1.6.0-SNAPSHOT |  Major | build, community | Sean Busbey | Sean Busbey |
| [HBASE-23219](https://issues.apache.org/jira/browse/HBASE-23219) | Re-enable ZKLess tests for branch-1 (Revert HBASE-14622) |  Trivial | test | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | Log message about CleanerChore delegate initialization should be at INFO |  Minor | master, Operability | Sean Busbey | Rabi Kumar K C |
| [HBASE-23236](https://issues.apache.org/jira/browse/HBASE-23236) | Upgrade to yetus 0.11.1 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-23234](https://issues.apache.org/jira/browse/HBASE-23234) | Provide .editorconfig based on checkstyle configuration |  Major | build, tooling | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23335](https://issues.apache.org/jira/browse/HBASE-23335) | Improve cost functions array copy in StochasticLoadBalancer |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23625](https://issues.apache.org/jira/browse/HBASE-23625) | Reduce number of Checkstyle violations in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23661](https://issues.apache.org/jira/browse/HBASE-23661) | Reduce number of Checkstyle violations in hbase-rest |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23774](https://issues.apache.org/jira/browse/HBASE-23774) | Announce user-zh list |  Trivial | website | Josh Elser | Josh Elser |


