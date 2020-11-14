
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

## Release 3.0.0-alpha-1 - Unreleased (as of 2020-11-14)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19848](https://issues.apache.org/jira/browse/HBASE-19848) | Zookeeper thread leaks in hbase-spark bulkLoad method |  Major | spark, Zookeeper | Key Hutu | Key Hutu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13992](https://issues.apache.org/jira/browse/HBASE-13992) | Integrate SparkOnHBase into HBase |  Major | hbase-connectors, spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14150](https://issues.apache.org/jira/browse/HBASE-14150) | Add BulkLoad functionality to HBase-Spark Module |  Major | hbase-connectors, spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14181](https://issues.apache.org/jira/browse/HBASE-14181) | Add Spark DataFrame DataSource to HBase-Spark Module |  Minor | hbase-connectors, spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14340](https://issues.apache.org/jira/browse/HBASE-14340) | Add second bulk load option to Spark Bulk Load to send puts as the value |  Minor | hbase-connectors, spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14849](https://issues.apache.org/jira/browse/HBASE-14849) | Add option to set block cache to false on SparkSQL executions |  Major | hbase-connectors, spark | Theodore michael Malaska | Zhan Zhang |
| [HBASE-15572](https://issues.apache.org/jira/browse/HBASE-15572) | Adding optional timestamp semantics to HBase-Spark |  Major | hbase-connectors, spark | Weiqing Yang | Weiqing Yang |
| [HBASE-17933](https://issues.apache.org/jira/browse/HBASE-17933) | [hbase-spark]  Support Java api for bulkload |  Major | hbase-connectors, spark | Yi Liang | Yi Liang |
| [HBASE-19397](https://issues.apache.org/jira/browse/HBASE-19397) | Design  procedures for ReplicationManager to notify peer change event from master |  Major | proc-v2, Replication | Zheng Hu | Duo Zhang |
| [HBASE-20159](https://issues.apache.org/jira/browse/HBASE-20159) | Support using separate ZK quorums for client |  Major | Client, Operability, Zookeeper | Yu Li | Yu Li |
| [HBASE-20046](https://issues.apache.org/jira/browse/HBASE-20046) | Reconsider the implementation for serial replication |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20592](https://issues.apache.org/jira/browse/HBASE-20592) | Create a tool to verify tables do not have prefix tree encoding |  Minor | Operability, tooling | Peter Somogyi | Peter Somogyi |
| [HBASE-20656](https://issues.apache.org/jira/browse/HBASE-20656) | Validate pre-2.0 coprocessors against HBase 2.0+ |  Major | tooling | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20630](https://issues.apache.org/jira/browse/HBASE-20630) | B&R: Delete command enhancements |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-19735](https://issues.apache.org/jira/browse/HBASE-19735) | Create a minimal "client" tarball installation |  Major | build, Client | Josh Elser | Josh Elser |
| [HBASE-19064](https://issues.apache.org/jira/browse/HBASE-19064) | Synchronous replication for HBase |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-15809](https://issues.apache.org/jira/browse/HBASE-15809) | Basic Replication WebUI |  Critical | Replication, UI | Matteo Bertozzi | Jingyun Tian |
| [HBASE-20833](https://issues.apache.org/jira/browse/HBASE-20833) | Modify pre-upgrade coprocessor validator to support table level coprocessors |  Major | Coprocessors | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | Validate HFiles do not have PREFIX\_TREE DataBlockEncoding |  Minor | Operability, tooling | Peter Somogyi | Balazs Meszaros |
| [HBASE-20636](https://issues.apache.org/jira/browse/HBASE-20636) | Introduce two bloom filter type : ROWPREFIX\_FIXED\_LENGTH and ROWPREFIX\_DELIMITED |  Major | HFile, regionserver, Scanners | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20727](https://issues.apache.org/jira/browse/HBASE-20727) | Persist FlushedSequenceId to speed up WAL split after cluster restart |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21753](https://issues.apache.org/jira/browse/HBASE-21753) | Support getting the locations for all the replicas of a region |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17942](https://issues.apache.org/jira/browse/HBASE-17942) | Disable region splits and merges per table |  Major | . | Vladimir Rodionov | Nihal Jain |
| [HBASE-20886](https://issues.apache.org/jira/browse/HBASE-20886) | [Auth] Support keytab login in hbase client |  Critical | asyncclient, Client, security | Reid Chan | Reid Chan |
| [HBASE-21926](https://issues.apache.org/jira/browse/HBASE-21926) | Profiler servlet |  Major | master, Operability, regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21815](https://issues.apache.org/jira/browse/HBASE-21815) | Make isTrackingMetrics and getMetrics of ScannerContext public |  Minor | . | Chen Feng | Chen Feng |
| [HBASE-22148](https://issues.apache.org/jira/browse/HBASE-22148) | Provide an alternative to CellUtil.setTimestamp |  Blocker | API, Coprocessors | Thomas D'Silva | Sean Busbey |
| [HBASE-22622](https://issues.apache.org/jira/browse/HBASE-22622) | WALKey Extended Attributes |  Major | wal | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-22648](https://issues.apache.org/jira/browse/HBASE-22648) | Snapshot TTL |  Minor | snapshots | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-22313](https://issues.apache.org/jira/browse/HBASE-22313) | Add a method to FsDelegationToken to accept token kind |  Minor | security | Venkatesh Sridharan | Venkatesh Sridharan |
| [HBASE-15666](https://issues.apache.org/jira/browse/HBASE-15666) | shaded dependencies for hbase-testing-util |  Critical | test | Sean Busbey | Balazs Meszaros |
| [HBASE-22623](https://issues.apache.org/jira/browse/HBASE-22623) | Add RegionObserver coprocessor hook for preWALAppend |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-11062](https://issues.apache.org/jira/browse/HBASE-11062) | hbtop |  Major | hbtop | Andrew Kyle Purtell | Toshihiro Suzuki |
| [HBASE-21874](https://issues.apache.org/jira/browse/HBASE-21874) | Bucket cache on Persistent memory |  Major | BucketCache | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-23223](https://issues.apache.org/jira/browse/HBASE-23223) | Support the offsetLock of bucketCache to use strong reference |  Major | BucketCache | Zheng Wang | Zheng Wang |
| [HBASE-22969](https://issues.apache.org/jira/browse/HBASE-22969) | A new binary component comparator(BinaryComponentComparator) to perform comparison of arbitrary length and position |  Minor | Filters | Udai Bhan Kashyap | Udai Bhan Kashyap |
| [HBASE-22280](https://issues.apache.org/jira/browse/HBASE-22280) | Separate read/write handler for priority request(especially for meta). |  Major | Scheduler | Lijin Bin | Lijin Bin |
| [HBASE-23073](https://issues.apache.org/jira/browse/HBASE-23073) | Add an optional costFunction to balance regions according to a capacity rule |  Minor | master | Pierre Zemb | Pierre Zemb |
| [HBASE-23653](https://issues.apache.org/jira/browse/HBASE-23653) | Expose content of meta table in web ui |  Minor | master, Operability, UI | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23710](https://issues.apache.org/jira/browse/HBASE-23710) | Priority configuration for system coprocessors |  Major | Coprocessors | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-18095](https://issues.apache.org/jira/browse/HBASE-18095) | Provide an option for clients to find the server hosting META that does not involve the ZooKeeper client |  Major | Client | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-23146](https://issues.apache.org/jira/browse/HBASE-23146) | Support CheckAndMutate with multiple conditions |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22978](https://issues.apache.org/jira/browse/HBASE-22978) | Online slow response log |  Minor | Admin, Operability, regionserver, shell | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-22285](https://issues.apache.org/jira/browse/HBASE-22285) | A normalizer which merges very small size regions with adjacent regions.(MergeToNormalize) |  Minor | master | Aman Poonia | Aman Poonia |
| [HBASE-22749](https://issues.apache.org/jira/browse/HBASE-22749) | Distributed MOB compactions |  Major | mob | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-24267](https://issues.apache.org/jira/browse/HBASE-24267) | Add limit support for scan in rest api |  Major | REST | zhuqi | zhuqi |
| [HBASE-24260](https://issues.apache.org/jira/browse/HBASE-24260) | Add a ClusterManager that issues commands via coprocessor |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-18659](https://issues.apache.org/jira/browse/HBASE-18659) | Use HDFS ACL to give user the ability to read snapshot directly on HDFS |  Major | . | Duo Zhang | Yi Mei |
| [HBASE-8458](https://issues.apache.org/jira/browse/HBASE-8458) | Support for batch version of checkAndMutate() |  Major | Client, regionserver | Hari Mankude | Toshihiro Suzuki |
| [HBASE-24038](https://issues.apache.org/jira/browse/HBASE-24038) | Add a metric to show the locality of ssd in table.jsp |  Major | metrics | Zheng Wang | Zheng Wang |
| [HBASE-24289](https://issues.apache.org/jira/browse/HBASE-24289) | Heterogeneous Storage for Date Tiered Compaction |  Major | Compaction | Mengqing Peng | Mengqing Peng |
| [HBASE-24694](https://issues.apache.org/jira/browse/HBASE-24694) | Support flush a single column family of table |  Major | . | Zheng Wang | Zheng Wang |
| [HBASE-24760](https://issues.apache.org/jira/browse/HBASE-24760) | Add a config hbase.rsgroup.fallback.enable for RSGroup fallback feature |  Major | rsgroup | Sun Xin | Sun Xin |
| [HBASE-24602](https://issues.apache.org/jira/browse/HBASE-24602) | Add Increment and Append support to CheckAndMutate |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24776](https://issues.apache.org/jira/browse/HBASE-24776) | [hbtop] Support Batch mode |  Major | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24528](https://issues.apache.org/jira/browse/HBASE-24528) | Improve balancer decision observability |  Major | Admin, Balancer, Operability, shell, UI | Andrew Kyle Purtell | Viraj Jasani |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14515](https://issues.apache.org/jira/browse/HBASE-14515) | Allow spark module unit tests to be skipped with a profile |  Minor | build, hbase-connectors, spark | Sean Busbey | Sean Busbey |
| [HBASE-14158](https://issues.apache.org/jira/browse/HBASE-14158) | Add documentation for Initial Release for HBase-Spark Module integration |  Major | documentation, hbase-connectors, spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14159](https://issues.apache.org/jira/browse/HBASE-14159) | Resolve warning introduced by HBase-Spark module |  Minor | build, hbase-connectors, spark | Theodore michael Malaska | Apekshit Sharma |
| [HBASE-15282](https://issues.apache.org/jira/browse/HBASE-15282) | Bump hbase-spark to use Spark 1.6.0 |  Major | spark | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15434](https://issues.apache.org/jira/browse/HBASE-15434) | [findbugs] Exclude scala generated source and protobuf generated code in hbase-spark module |  Major | hbase-connectors, spark | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16638](https://issues.apache.org/jira/browse/HBASE-16638) | Reduce the number of Connection's created in classes of hbase-spark module |  Critical | hbase-connectors, spark | Ted Yu | Weiqing Yang |
| [HBASE-16823](https://issues.apache.org/jira/browse/HBASE-16823) | Add examples in HBase Spark module |  Major | hbase-connectors, spark | Weiqing Yang | Weiqing Yang |
| [HBASE-17549](https://issues.apache.org/jira/browse/HBASE-17549) | HBase-Spark Module : Incorrect log at println and unwanted comment code |  Major | hbase-connectors, spark | Chetan Khatri | Chetan Khatri |
| [HBASE-18176](https://issues.apache.org/jira/browse/HBASE-18176) | add enforcer rule to make sure hbase-spark / scala aren't dependencies of unexpected modules |  Major | build, hbase-connectors, spark | Sean Busbey | Mike Drob |
| [HBASE-18327](https://issues.apache.org/jira/browse/HBASE-18327) | redo test-patch personality 'hadoopcheck' to better account for feature branches |  Minor | build, test | Sean Busbey | Sean Busbey |
| [HBASE-18646](https://issues.apache.org/jira/browse/HBASE-18646) | [Backup] LogRollMasterProcedureManager: make procedure timeout, thread pool size configurable |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-19068](https://issues.apache.org/jira/browse/HBASE-19068) | Change all url of apache.org from HTTP to HTTPS in HBase book |  Major | documentation | Yung-An He | Yung-An He |
| [HBASE-19183](https://issues.apache.org/jira/browse/HBASE-19183) | Removed redundant groupId from Maven modules |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19175](https://issues.apache.org/jira/browse/HBASE-19175) | Add linklint files to gitignore |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19174](https://issues.apache.org/jira/browse/HBASE-19174) | Update link to HBase presentations |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-19159](https://issues.apache.org/jira/browse/HBASE-19159) | Backup should check permission for snapshot copy in advance |  Minor | . | Ted Yu | Janos Gub |
| [HBASE-19469](https://issues.apache.org/jira/browse/HBASE-19469) | Review Of BackupSystemTable |  Trivial | . | David Mollitor | David Mollitor |
| [HBASE-19478](https://issues.apache.org/jira/browse/HBASE-19478) | Utilize multi-get to speed up WAL file checking in BackupLogCleaner |  Major | . | Ted Yu | Toshihiro Suzuki |
| [HBASE-17436](https://issues.apache.org/jira/browse/HBASE-17436) | Add column to master web UI for displaying region states when listing regions of a table |  Major | . | Ted Yu | Janos Gub |
| [HBASE-19674](https://issues.apache.org/jira/browse/HBASE-19674) | make\_patch.sh version increment fails |  Major | . | Niels Basjes | Niels Basjes |
| [HBASE-19157](https://issues.apache.org/jira/browse/HBASE-19157) | IntegrationTestBackupRestore should warn about missing config |  Minor | . | Ted Yu | Artem Ervits |
| [HBASE-19614](https://issues.apache.org/jira/browse/HBASE-19614) | Use ArrayDeque as Queue instead of LinkedList in CompoundBloomFilterWriter |  Trivial | . | David Mollitor | David Mollitor |
| [HBASE-17825](https://issues.apache.org/jira/browse/HBASE-17825) | Backup: further optimizations |  Critical | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18133](https://issues.apache.org/jira/browse/HBASE-18133) | Low-latency space quota size reports |  Major | . | Josh Elser | Josh Elser |
| [HBASE-18135](https://issues.apache.org/jira/browse/HBASE-18135) | Track file archival for low latency space quota with snapshots |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20120](https://issues.apache.org/jira/browse/HBASE-20120) | Remove some unused classes/ java files from hbase-server |  Minor | . | Umesh Agashe | Umesh Agashe |
| [HBASE-20133](https://issues.apache.org/jira/browse/HBASE-20133) | Calculate correct assignment and build region movement plans for mis-placed regions in one pass |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-19449](https://issues.apache.org/jira/browse/HBASE-19449) | Minor logging change in HFileArchiver |  Trivial | . | David Mollitor | David Mollitor |
| [HBASE-20181](https://issues.apache.org/jira/browse/HBASE-20181) | Logging and minor logic improvements in BackupLogCleaner |  Trivial | . | David Mollitor | David Mollitor |
| [HBASE-20186](https://issues.apache.org/jira/browse/HBASE-20186) | Improve RSGroupBasedLoadBalancer#balanceCluster() to be more efficient when calculating cluster state for each rsgroup |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-19389](https://issues.apache.org/jira/browse/HBASE-19389) | Limit concurrency of put with dense (hundreds) columns to prevent write handler exhausted |  Critical | Performance | Chance Li | Chance Li |
| [HBASE-20196](https://issues.apache.org/jira/browse/HBASE-20196) | Maintain all regions with same size in memstore flusher |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19024](https://issues.apache.org/jira/browse/HBASE-19024) | Configurable default durability for synchronous WAL |  Critical | wal | Vikas Vishwakarma | Harshal Jain |
| [HBASE-19441](https://issues.apache.org/jira/browse/HBASE-19441) | Implement retry logic around starting exclusive backup operation |  Major | backup&restore | Josh Elser | Vladimir Rodionov |
| [HBASE-20047](https://issues.apache.org/jira/browse/HBASE-20047) | AuthenticationTokenIdentifier should provide a toString |  Minor | Usability | Sean Busbey | maoling |
| [HBASE-16568](https://issues.apache.org/jira/browse/HBASE-16568) | Remove Cygwin-oriented instructions (for installing HBase in Windows OS) from official reference materials |  Minor | documentation | Daniel Vimont | Daniel Vimont |
| [HBASE-20197](https://issues.apache.org/jira/browse/HBASE-20197) | Review of ByteBufferWriterOutputStream.java |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-15466](https://issues.apache.org/jira/browse/HBASE-15466) | precommit should not run all java goals when given a docs-only patch |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-20344](https://issues.apache.org/jira/browse/HBASE-20344) | Fix asciidoc warnings |  Minor | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-20379](https://issues.apache.org/jira/browse/HBASE-20379) | shadedjars yetus plugin should add a footer link |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20389](https://issues.apache.org/jira/browse/HBASE-20389) | Move website building flags into a profile |  Minor | build, website | Sean Busbey | Sean Busbey |
| [HBASE-20409](https://issues.apache.org/jira/browse/HBASE-20409) | Set hbase.client.meta.operation.timeout in TestClientOperationTimeout |  Trivial | test | Peter Somogyi | Peter Somogyi |
| [HBASE-20449](https://issues.apache.org/jira/browse/HBASE-20449) | The minimun number of regions should be configurable in Normalizer |  Minor | . | Yu Wang | Yu Wang |
| [HBASE-20452](https://issues.apache.org/jira/browse/HBASE-20452) | Master UI: Table merge button should validate required fields before submit |  Minor | UI | Nihal Jain | Nihal Jain |
| [HBASE-20438](https://issues.apache.org/jira/browse/HBASE-20438) | Add an HBase antipattern check for reintroducing commons-logging |  Critical | dependencies, test | Sean Busbey | Nihal Jain |
| [HBASE-20406](https://issues.apache.org/jira/browse/HBASE-20406) | HBase Thrift HTTP - Shouldn't handle TRACE/OPTIONS methods |  Major | security, Thrift | Kevin Risden | Kevin Risden |
| [HBASE-20388](https://issues.apache.org/jira/browse/HBASE-20388) | nightly tests running on a feature branch should only comment on that feature branch's jira |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-20499](https://issues.apache.org/jira/browse/HBASE-20499) | Replication/Priority executors can use specific max queue length as default value instead of general maxQueueLength |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-15317](https://issues.apache.org/jira/browse/HBASE-15317) | document release announcement template |  Critical | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20327](https://issues.apache.org/jira/browse/HBASE-20327) | When qualifier is not specified, append and incr operation do not work (shell) |  Minor | shell | Nihal Jain | Nihal Jain |
| [HBASE-20484](https://issues.apache.org/jira/browse/HBASE-20484) | Remove the unnecessary autoboxing in FilterListBase |  Trivial | . | Chia-Ping Tsai | Guangxu Cheng |
| [HBASE-20507](https://issues.apache.org/jira/browse/HBASE-20507) | Do not need to call recoverLease on the broken file when we fail to create a wal writer |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-20527](https://issues.apache.org/jira/browse/HBASE-20527) | Remove unused code in MetaTableAccessor |  Trivial | . | Mingdao Yang | Mingdao Yang |
| [HBASE-20536](https://issues.apache.org/jira/browse/HBASE-20536) | Make TestRegionServerAccounting stable and it should not use absolute number |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16191](https://issues.apache.org/jira/browse/HBASE-16191) | Add stop\_regionserver and stop\_master to shell |  Major | . | Enis Soztutar | Peter Somogyi |
| [HBASE-20545](https://issues.apache.org/jira/browse/HBASE-20545) | Improve performance of BaseLoadBalancer.retainAssignment |  Major | Balancer | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20567](https://issues.apache.org/jira/browse/HBASE-20567) | Pass both old and new descriptors to pre/post hooks of modify operations for table and namespace |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-20488](https://issues.apache.org/jira/browse/HBASE-20488) | PE tool prints full name in help message |  Minor | shell | Peter Somogyi | Xu Cang |
| [HBASE-20207](https://issues.apache.org/jira/browse/HBASE-20207) | Update doc on the steps to revert RegionServer groups feature |  Minor | regionserver, rsgroup | Biju Nair | Biju Nair |
| [HBASE-20548](https://issues.apache.org/jira/browse/HBASE-20548) | Master fails to startup on large clusters, refreshing block distribution |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20652](https://issues.apache.org/jira/browse/HBASE-20652) | Remove internal uses of some deprecated MasterObserver hooks |  Minor | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-20478](https://issues.apache.org/jira/browse/HBASE-20478) | move import checks from hbaseanti to checkstyle |  Minor | test | Sean Busbey | Mike Drob |
| [HBASE-20640](https://issues.apache.org/jira/browse/HBASE-20640) | TestQuotaGlobalsSettingsBypass missing test category and ClassRule |  Critical | test | Josh Elser | Josh Elser |
| [HBASE-20594](https://issues.apache.org/jira/browse/HBASE-20594) | provide utility to compare old and new descriptors |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20444](https://issues.apache.org/jira/browse/HBASE-20444) | Improve version comparison logic for HBase specific version string and add unit tests |  Major | util | Umesh Agashe | maoling |
| [HBASE-20579](https://issues.apache.org/jira/browse/HBASE-20579) | Improve snapshot manifest copy in ExportSnapshot |  Minor | mapreduce | Jingyun Tian | Jingyun Tian |
| [HBASE-18948](https://issues.apache.org/jira/browse/HBASE-18948) | HBase tags are server side only. |  Major | API, documentation | Thiriguna Bharat Rao | Thiriguna Bharat Rao |
| [HBASE-20577](https://issues.apache.org/jira/browse/HBASE-20577) | Make Log Level page design consistent with the design of other pages in UI |  Major | UI, Usability | Nihal Jain | Nihal Jain |
| [HBASE-19852](https://issues.apache.org/jira/browse/HBASE-19852) | HBase Thrift 1 server SPNEGO Improvements |  Major | Thrift | Kevin Risden | Kevin Risden |
| [HBASE-20625](https://issues.apache.org/jira/browse/HBASE-20625) | refactor some WALCellCodec related code |  Minor | wal | Jingyun Tian | Jingyun Tian |
| [HBASE-20733](https://issues.apache.org/jira/browse/HBASE-20733) | QABot should run checkstyle tests if the checkstyle configs change |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-20737](https://issues.apache.org/jira/browse/HBASE-20737) | put collection into ArrayList instead of addAll function |  Trivial | . | taiyinglee | taiyinglee |
| [HBASE-20739](https://issues.apache.org/jira/browse/HBASE-20739) | Add priority for SCP |  Major | Recovery | Duo Zhang | Duo Zhang |
| [HBASE-20532](https://issues.apache.org/jira/browse/HBASE-20532) | Use try-with-resources in BackupSystemTable |  Trivial | . | Andy Lin | Andy Lin |
| [HBASE-20740](https://issues.apache.org/jira/browse/HBASE-20740) | StochasticLoadBalancer should consider CoprocessorService request factor when computing cost |  Major | Balancer | chenxu | chenxu |
| [HBASE-19164](https://issues.apache.org/jira/browse/HBASE-19164) | Avoid UUID.randomUUID in tests |  Major | test | Mike Drob | Sahil Aggarwal |
| [HBASE-20798](https://issues.apache.org/jira/browse/HBASE-20798) | Duplicate thread names of StoreFileOpenerThread and StoreFileCloserThread |  Minor | regionserver | Zephyr Guo | Zephyr Guo |
| [HBASE-20095](https://issues.apache.org/jira/browse/HBASE-20095) | Redesign single instance pool in CleanerChore |  Critical | . | Reid Chan | Reid Chan |
| [HBASE-20040](https://issues.apache.org/jira/browse/HBASE-20040) | Master UI should include "Cluster Key" needed to use the cluster as a replication sink |  Minor | Replication, Usability | Sean Busbey | Sakthi |
| [HBASE-20810](https://issues.apache.org/jira/browse/HBASE-20810) | Include the procedure id in the exception message in HBaseAdmin for better debugging |  Major | Admin, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20357](https://issues.apache.org/jira/browse/HBASE-20357) | AccessControlClient API Enhancement |  Major | security | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20450](https://issues.apache.org/jira/browse/HBASE-20450) | Provide metrics for number of total active, priority and replication rpc handlers |  Major | metrics | Nihal Jain | Nihal Jain |
| [HBASE-20826](https://issues.apache.org/jira/browse/HBASE-20826) | Truncate responseInfo attributes on RpcServer WARN messages |  Major | rpc | Sergey Soldatov | Josh Elser |
| [HBASE-20474](https://issues.apache.org/jira/browse/HBASE-20474) | Show non-RPC tasks on master/regionserver Web UI  by default |  Major | UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20396](https://issues.apache.org/jira/browse/HBASE-20396) | Remove redundant MBean from thrift JMX |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20806](https://issues.apache.org/jira/browse/HBASE-20806) | Split style journal for flushes and compactions |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-20617](https://issues.apache.org/jira/browse/HBASE-20617) | Upgrade/remove jetty-jsp |  Minor | . | Sakthi | Sakthi |
| [HBASE-20823](https://issues.apache.org/jira/browse/HBASE-20823) | Wrong param name in javadoc for HRegionServer#buildRegionSpaceUseReportRequest |  Trivial | . | Reid Chan | Jack Bearden |
| [HBASE-20672](https://issues.apache.org/jira/browse/HBASE-20672) | New metrics ReadRequestRate and WriteRequestRate |  Minor | metrics | Ankit Jain | Ankit Jain |
| [HBASE-20873](https://issues.apache.org/jira/browse/HBASE-20873) | Update doc for Endpoint-based Export |  Minor | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20977](https://issues.apache.org/jira/browse/HBASE-20977) | Don't use the word "Snapshot" when defining "HBase Snapshots" |  Trivial | documentation | Josh Elser | Josh Elser |
| [HBASE-20935](https://issues.apache.org/jira/browse/HBASE-20935) | HStore.removeCompactedFiles should log in case it is unable to delete a file |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-20550](https://issues.apache.org/jira/browse/HBASE-20550) | Document about MasterProcWAL |  Minor | documentation | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | PITA having to set WAL provider in two places |  Minor | Operability, wal | Michael Stack | Tak-Lon (Stephen) Wu |
| [HBASE-19036](https://issues.apache.org/jira/browse/HBASE-19036) | Add action in Chaos Monkey to restart Active Namenode |  Minor | . | Mihir Monani | Mihir Monani |
| [HBASE-20894](https://issues.apache.org/jira/browse/HBASE-20894) | Move BucketCache from java serialization to protobuf |  Major | BucketCache | Mike Drob | Mike Drob |
| [HBASE-20986](https://issues.apache.org/jira/browse/HBASE-20986) | Separate the config of block size when we do log splitting and write Hlog |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20845](https://issues.apache.org/jira/browse/HBASE-20845) | Support set the consistency for Gets and Scans in thrift2 |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20965](https://issues.apache.org/jira/browse/HBASE-20965) | Separate region server report requests to new handlers |  Major | Performance | Yi Mei | Yi Mei |
| [HBASE-20985](https://issues.apache.org/jira/browse/HBASE-20985) | add two attributes when we do normalization |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20979](https://issues.apache.org/jira/browse/HBASE-20979) | Flaky test reporting should specify what JSON it needs and handle HTTP errors |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-20469](https://issues.apache.org/jira/browse/HBASE-20469) | Directory used for sidelining old recovered edits files should be made configurable |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-20387](https://issues.apache.org/jira/browse/HBASE-20387) | flaky infrastructure should work for all branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-21071](https://issues.apache.org/jira/browse/HBASE-21071) | HBaseTestingUtility::startMiniCluster() to use builder pattern |  Major | test | Mingliang Liu | Mingliang Liu |
| [HBASE-20749](https://issues.apache.org/jira/browse/HBASE-20749) | Upgrade our use of checkstyle to 8.6+ |  Minor | build, community | Sean Busbey | Mike Drob |
| [HBASE-21126](https://issues.apache.org/jira/browse/HBASE-21126) | Add ability for HBase Canary to ignore a configurable number of ZooKeeper down nodes |  Minor | canary, Zookeeper | David Manning | David Manning |
| [HBASE-18974](https://issues.apache.org/jira/browse/HBASE-18974) | Document "Becoming a Committer" |  Major | community, documentation | Mike Drob | Mike Drob |
| [HBASE-21153](https://issues.apache.org/jira/browse/HBASE-21153) | Shaded client jars should always build in relevant phase to avoid confusion |  Major | build | Michael Stack | Sean Busbey |
| [HBASE-21107](https://issues.apache.org/jira/browse/HBASE-21107) | add a metrics for netty direct memory |  Minor | IPC/RPC | Hua Xiang | Hua Xiang |
| [HBASE-21157](https://issues.apache.org/jira/browse/HBASE-21157) | Split TableInputFormatScan to individual tests |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-21129](https://issues.apache.org/jira/browse/HBASE-21129) | Clean up duplicate codes in #equals and #hashCode methods of Filter |  Minor | Filters | Reid Chan | Reid Chan |
| [HBASE-21155](https://issues.apache.org/jira/browse/HBASE-21155) | Save on a few log strings and some churn in wal splitter by skipping out early if no logs in dir |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Minor | tooling | Mike Drob | Colin Garcia |
| [HBASE-21204](https://issues.apache.org/jira/browse/HBASE-21204) | NPE when scan raw DELETE\_FAMILY\_VERSION and codec is not set |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21164](https://issues.apache.org/jira/browse/HBASE-21164) | reportForDuty to spew less log if master is initializing |  Minor | regionserver | Michael Stack | Mingliang Liu |
| [HBASE-20857](https://issues.apache.org/jira/browse/HBASE-20857) | JMX - add Balancer status = enabled / disabled |  Major | API, master, metrics, REST, tooling, Usability | Hari Sekhon | Kiran Kumar Maturi |
| [HBASE-21207](https://issues.apache.org/jira/browse/HBASE-21207) | Add client side sorting functionality in master web UI for table and region server details. |  Minor | master, monitoring, UI, Usability | Archana Katiyar | Archana Katiyar |
| [HBASE-21103](https://issues.apache.org/jira/browse/HBASE-21103) | nightly test cache of yetus install needs to be more thorough in verification |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes |  Minor | Operability | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21289](https://issues.apache.org/jira/browse/HBASE-21289) | Remove the log "'hbase.regionserver.maxlogs' was deprecated." in AbstractFSWAL |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21299](https://issues.apache.org/jira/browse/HBASE-21299) | List counts of actual region states in master UI tables section |  Major | UI | Michael Stack | Michael Stack |
| [HBASE-21098](https://issues.apache.org/jira/browse/HBASE-21098) | Improve Snapshot Performance with Temporary Snapshot Directory when rootDir on S3 |  Major | . | Tyler Mi | Tyler Mi |
| [HBASE-21303](https://issues.apache.org/jira/browse/HBASE-21303) | [shell] clear\_deadservers with no args fails |  Major | . | Stack | Michael Stack |
| [HBASE-21251](https://issues.apache.org/jira/browse/HBASE-21251) | Refactor RegionMover |  Major | Operability | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21256](https://issues.apache.org/jira/browse/HBASE-21256) | Improve IntegrationTestBigLinkedList for testing huge data |  Major | integration tests | Zephyr Guo | Zephyr Guo |
| [HBASE-21290](https://issues.apache.org/jira/browse/HBASE-21290) | No need to instantiate BlockCache for master which not carry table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21263](https://issues.apache.org/jira/browse/HBASE-21263) | Mention compression algorithm along with other storefile details |  Minor | . | Andrew Kyle Purtell | Subrat Mishra |
| [HBASE-21318](https://issues.apache.org/jira/browse/HBASE-21318) | Make RefreshHFilesClient runnable |  Minor | HFile | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-21385](https://issues.apache.org/jira/browse/HBASE-21385) | HTable.delete request use rpc call directly instead of AsyncProcess |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21365](https://issues.apache.org/jira/browse/HBASE-21365) | Throw exception when user put data with skip wal to a table which may be replicated |  Minor | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21325](https://issues.apache.org/jira/browse/HBASE-21325) | Force to terminate regionserver when abort hang in somewhere |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-21388](https://issues.apache.org/jira/browse/HBASE-21388) | No need to instantiate MemStoreLAB for master which not carry table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19682](https://issues.apache.org/jira/browse/HBASE-19682) | Use Collections.emptyList() For Empty List Values |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-21328](https://issues.apache.org/jira/browse/HBASE-21328) | add HBASE\_DISABLE\_HADOOP\_CLASSPATH\_LOOKUP switch to hbase-env.sh |  Minor | documentation, Operability | cong.han | cong.han |
| [HBASE-21411](https://issues.apache.org/jira/browse/HBASE-21411) | Need to document the snapshot metric data that is shown in HBase Master Web UI |  Major | documentation | Roland Teague | Roland Teague |
| [HBASE-21460](https://issues.apache.org/jira/browse/HBASE-21460) | correct Document Configurable Bucket Sizes in bucketCache |  Major | documentation | Yechao Chen | Yechao Chen |
| [HBASE-21485](https://issues.apache.org/jira/browse/HBASE-21485) | Add more debug logs for remote procedure execution |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21480](https://issues.apache.org/jira/browse/HBASE-21480) | Taking snapshot when RS crashes prevent we bring the regions online |  Major | snapshots | Duo Zhang | Duo Zhang |
| [HBASE-21511](https://issues.apache.org/jira/browse/HBASE-21511) | Remove in progress snapshot check in SnapshotFileCache#getUnreferencedFiles |  Minor | snapshots | Ted Yu | Ted Yu |
| [HBASE-21154](https://issues.apache.org/jira/browse/HBASE-21154) | Remove hbase:namespace table; fold it into hbase:meta |  Major | meta | Michael Stack | Duo Zhang |
| [HBASE-21523](https://issues.apache.org/jira/browse/HBASE-21523) | Chatty DEBUG logging in Master log |  Major | backup&restore | Josh Elser | Josh Elser |
| [HBASE-21524](https://issues.apache.org/jira/browse/HBASE-21524) | Unnecessary DEBUG log in ConnectionImplementation#isTableEnabled |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-21414](https://issues.apache.org/jira/browse/HBASE-21414) | StoreFileSize growth rate metric |  Minor | metrics, monitoring | Tommy Li | Tommy Li |
| [HBASE-21413](https://issues.apache.org/jira/browse/HBASE-21413) | Empty meta log doesn't get split when restart whole cluster |  Major | . | Jingyun Tian | Allan Yang |
| [HBASE-21560](https://issues.apache.org/jira/browse/HBASE-21560) | Return a new TableDescriptor for MasterObserver#preModifyTable to allow coprocessor modify the TableDescriptor |  Major | Coprocessors | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21567](https://issues.apache.org/jira/browse/HBASE-21567) | Allow overriding configs starting up the shell |  Major | shell | Michael Stack | Michael Stack |
| [HBASE-21283](https://issues.apache.org/jira/browse/HBASE-21283) | Add new shell command 'rit' for listing regions in transition |  Minor | Operability, shell | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21549](https://issues.apache.org/jira/browse/HBASE-21549) | Add shell command for serial replication peer |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21554](https://issues.apache.org/jira/browse/HBASE-21554) | Show replication endpoint classname for replication peer on master web UI |  Minor | UI | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21520](https://issues.apache.org/jira/browse/HBASE-21520) | TestMultiColumnScanner cost long time when using ROWCOL bloom type |  Major | test | Zheng Hu | Zheng Hu |
| [HBASE-21514](https://issues.apache.org/jira/browse/HBASE-21514) | Refactor CacheConfig |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21635](https://issues.apache.org/jira/browse/HBASE-21635) | Use maven enforcer to ban imports from illegal packages |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-21631](https://issues.apache.org/jira/browse/HBASE-21631) | list\_quotas should print human readable values for LIMIT |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21640](https://issues.apache.org/jira/browse/HBASE-21640) | Remove the TODO when increment zero |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21643](https://issues.apache.org/jira/browse/HBASE-21643) | Introduce two new region coprocessor method and deprecated postMutationBeforeWAL |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21642](https://issues.apache.org/jira/browse/HBASE-21642) | CopyTable by reading snapshot and bulkloading will save a lot of time. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21659](https://issues.apache.org/jira/browse/HBASE-21659) | Avoid to load duplicate coprocessors in system config and table descriptor |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21662](https://issues.apache.org/jira/browse/HBASE-21662) | Add append\_peer\_exclude\_namespaces and remove\_peer\_exclude\_namespaces shell commands |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21360](https://issues.apache.org/jira/browse/HBASE-21360) | Disable printing of stack-trace in shell for quotas |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21645](https://issues.apache.org/jira/browse/HBASE-21645) | Perform sanity check and disallow table creation/modification with region replication \< 1 |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-21694](https://issues.apache.org/jira/browse/HBASE-21694) | Add append\_peer\_exclude\_tableCFs and remove\_peer\_exclude\_tableCFs shell commands |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21700](https://issues.apache.org/jira/browse/HBASE-21700) | Simplify the implementation of RSGroupInfoManagerImpl |  Major | rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-21297](https://issues.apache.org/jira/browse/HBASE-21297) | ModifyTableProcedure can throw TNDE instead of IOE in case of REGION\_REPLICATION change |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-21590](https://issues.apache.org/jira/browse/HBASE-21590) | Optimize trySkipToNextColumn in StoreScanner a bit |  Critical | Performance, Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-21712](https://issues.apache.org/jira/browse/HBASE-21712) | Make submit-patch.py python3 compatible |  Minor | tooling | Tommy Li | Tommy Li |
| [HBASE-20209](https://issues.apache.org/jira/browse/HBASE-20209) | Do Not Use Both Map containsKey and get Methods in Replication Sink |  Trivial | Replication | David Mollitor | David Mollitor |
| [HBASE-21595](https://issues.apache.org/jira/browse/HBASE-21595) | Print thread's information and stack traces when RS is aborting forcibly |  Minor | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21737](https://issues.apache.org/jira/browse/HBASE-21737) | Fix "Appendix A: HFile format" section in the doc |  Minor | documentation | Sakthi | Sakthi |
| [HBASE-21720](https://issues.apache.org/jira/browse/HBASE-21720) | metric to measure how actions are distributed to servers within a MultiAction |  Minor | Client, metrics, monitoring | Tommy Li | Tommy Li |
| [HBASE-20215](https://issues.apache.org/jira/browse/HBASE-20215) | Rename CollectionUtils to ConcurrentMapUtils |  Trivial | . | David Mollitor | Wellington Chevreuil |
| [HBASE-21689](https://issues.apache.org/jira/browse/HBASE-21689) | Make table/namespace specific current quota info available in shell(describe\_namespace & describe) |  Minor | . | Sakthi | Sakthi |
| [HBASE-21741](https://issues.apache.org/jira/browse/HBASE-21741) | Add a note in "HFile Tool" section regarding 'seqid=0' |  Minor | documentation | Sakthi | Sakthi |
| [HBASE-21789](https://issues.apache.org/jira/browse/HBASE-21789) | Rewrite MetaTableAccessor.multiMutate with Table.coprocessorService |  Major | Client, Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-21790](https://issues.apache.org/jira/browse/HBASE-21790) | Detail docs on ref guide for CompactionTool |  Major | documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21806](https://issues.apache.org/jira/browse/HBASE-21806) | add an option to roll WAL on very slow syncs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21634](https://issues.apache.org/jira/browse/HBASE-21634) | Print error message when user uses unacceptable values for LIMIT while setting quotas. |  Minor | . | Sakthi | Sakthi |
| [HBASE-21684](https://issues.apache.org/jira/browse/HBASE-21684) | Throw DNRIOE when connection or rpc client is closed |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21808](https://issues.apache.org/jira/browse/HBASE-21808) | Ensure we can build with JDK11 targetting JDK8 |  Major | build, community, java | Sean Busbey | Sean Busbey |
| [HBASE-21833](https://issues.apache.org/jira/browse/HBASE-21833) | Use NettyAsyncFSWALConfigHelper.setEventLoopConfig to prevent creating too many netty event loop when executing TestHRegion |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-19616](https://issues.apache.org/jira/browse/HBASE-19616) | Review of LogCleaner Class |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-21816](https://issues.apache.org/jira/browse/HBASE-21816) | Print source cluster replication config directory |  Trivial | Replication | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-21201](https://issues.apache.org/jira/browse/HBASE-21201) | Support to run VerifyReplication MR tool without peerid |  Major | hbase-operator-tools | Sujit P | Toshihiro Suzuki |
| [HBASE-21857](https://issues.apache.org/jira/browse/HBASE-21857) | Do not need to check clusterKey if replicationEndpoint is provided when adding a peer |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21636](https://issues.apache.org/jira/browse/HBASE-21636) | Enhance the shell scan command to support missing scanner specifications like ReadType, IsolationLevel etc. |  Major | shell | Nihal Jain | Nihal Jain |
| [HBASE-21780](https://issues.apache.org/jira/browse/HBASE-21780) | Avoid a wide line on the RegionServer webUI for many ZooKeeper servers |  Minor | UI, Usability | Sakthi | Sakthi |
| [HBASE-21875](https://issues.apache.org/jira/browse/HBASE-21875) | Change the retry logic in RSProcedureDispatcher to 'retry by default, only if xxx' |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21932](https://issues.apache.org/jira/browse/HBASE-21932) | Use Runtime.getRuntime().halt to terminate regionserver when abort timeout |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21867](https://issues.apache.org/jira/browse/HBASE-21867) | Support multi-threads in HFileArchiver |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21967](https://issues.apache.org/jira/browse/HBASE-21967) | Split TestServerCrashProcedure and TestServerCrashProcedureWithReplicas |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21481](https://issues.apache.org/jira/browse/HBASE-21481) | [acl] Superuser's permissions should not be granted or revoked by any non-su global admin |  Major | . | Reid Chan | Reid Chan |
| [HBASE-20401](https://issues.apache.org/jira/browse/HBASE-20401) | Make \`MAX\_WAIT\` and \`waitIfNotFinished\` in CleanerContext configurable |  Minor | master | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20734](https://issues.apache.org/jira/browse/HBASE-20734) | Colocate recovered edits directory with hbase.wal.dir |  Major | MTTR, Recovery, wal | Ted Yu | Zach York |
| [HBASE-21410](https://issues.apache.org/jira/browse/HBASE-21410) | A helper page that help find all problematic regions and procedures |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21255](https://issues.apache.org/jira/browse/HBASE-21255) | [acl] Refactor TablePermission into three classes (Global, Namespace, Table) |  Major | . | Reid Chan | Reid Chan |
| [HBASE-21871](https://issues.apache.org/jira/browse/HBASE-21871) | Support to specify a peer table name in VerifyReplication tool |  Major | . | Toshihiro Suzuki | Subrat Mishra |
| [HBASE-21987](https://issues.apache.org/jira/browse/HBASE-21987) | Simplify RSGroupInfoManagerImpl#flushConfig() for offline mode |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-21810](https://issues.apache.org/jira/browse/HBASE-21810) | bulkload  support set hfile compression on client |  Major | mapreduce | Yechao Chen | Yechao Chen |
| [HBASE-21667](https://issues.apache.org/jira/browse/HBASE-21667) | Move to latest ASF Parent POM |  Minor | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22032](https://issues.apache.org/jira/browse/HBASE-22032) | KeyValue validation should check for null byte array |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-22077](https://issues.apache.org/jira/browse/HBASE-22077) | Expose sleep time as a command line argument of IntergationTestBackupRestore |  Minor | test | Tamas Adami | Tamas Adami |
| [HBASE-22009](https://issues.apache.org/jira/browse/HBASE-22009) | Improve RSGroupInfoManagerImpl#getDefaultServers() |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-22093](https://issues.apache.org/jira/browse/HBASE-22093) | Combine TestRestoreSnapshotFromClientWithRegionReplicas to CloneSnapshotFromClientAfterSplittingRegionTestBase#testCloneSnapshotAfterSplittingRegion |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21964](https://issues.apache.org/jira/browse/HBASE-21964) | unset Quota by Throttle Type |  Major | master | yaojingyi | yaojingyi |
| [HBASE-22097](https://issues.apache.org/jira/browse/HBASE-22097) | Modify the description of split command in shell |  Trivial | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22082](https://issues.apache.org/jira/browse/HBASE-22082) | Should not use an instance to access static members, which  will increases compilation costs. |  Minor | regionserver | lixiaobao | lixiaobao |
| [HBASE-21918](https://issues.apache.org/jira/browse/HBASE-21918) | the use cases in doc should use Cell instead of KeyValue |  Trivial | documentation | Zheng Wang | Zheng Wang |
| [HBASE-21148](https://issues.apache.org/jira/browse/HBASE-21148) | [Docs] Some errors in section#Security Configuration Example of hbase book |  Minor | documentation | Reid Chan | Reid Chan |
| [HBASE-22188](https://issues.apache.org/jira/browse/HBASE-22188) | Make TestSplitMerge more stable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22193](https://issues.apache.org/jira/browse/HBASE-22193) | Add backoff when region failed open too many times |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21257](https://issues.apache.org/jira/browse/HBASE-21257) | misspelled words.[occured -\> occurred] |  Trivial | . | zhanggangxue | zhanggangxue |
| [HBASE-20586](https://issues.apache.org/jira/browse/HBASE-20586) | SyncTable tool: Add support for cross-realm remote clusters |  Major | mapreduce, Operability, Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-15560](https://issues.apache.org/jira/browse/HBASE-15560) | TinyLFU-based BlockCache |  Major | BlockCache | Ben Manes | Ben Manes |
| [HBASE-22279](https://issues.apache.org/jira/browse/HBASE-22279) | Add a getRegionLocator method in Table/AsyncTable interface |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22250](https://issues.apache.org/jira/browse/HBASE-22250) | The same constants used in many places should be placed in constant classes |  Minor | Client, conf, regionserver | lixiaobao | lixiaobao |
| [HBASE-22296](https://issues.apache.org/jira/browse/HBASE-22296) | Remove TestFromClientSide.testGetStartEndKeysWithRegionReplicas |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22283](https://issues.apache.org/jira/browse/HBASE-22283) | Print row and table information when failed to get region location |  Major | Client, logging | Yu Li | Yu Li |
| [HBASE-22291](https://issues.apache.org/jira/browse/HBASE-22291) | Fix recovery of recovered.edits files under root dir |  Major | . | Zach York | Zach York |
| [HBASE-14789](https://issues.apache.org/jira/browse/HBASE-14789) | Enhance the current spark-hbase connector |  Major | hbase-connectors, spark | Zhan Zhang | Zhan Zhang |
| [HBASE-22225](https://issues.apache.org/jira/browse/HBASE-22225) | Profiler tab on Master/RS UI not working w/o comprehensive message |  Minor | UI | Yu Li | Andrew Kyle Purtell |
| [HBASE-22341](https://issues.apache.org/jira/browse/HBASE-22341) | Add explicit guidelines for removing deprecations in book |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-21883](https://issues.apache.org/jira/browse/HBASE-21883) | Enhancements to Major Compaction tool |  Minor | Client, Compaction, tooling | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-22301](https://issues.apache.org/jira/browse/HBASE-22301) | Consider rolling the WAL if the HDFS write pipeline is slow |  Minor | wal | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22087](https://issues.apache.org/jira/browse/HBASE-22087) | Update LICENSE/shading for the dependencies from the latest Hadoop trunk |  Minor | hadoop3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22109](https://issues.apache.org/jira/browse/HBASE-22109) | Update hbase shaded content checker after guava update in hadoop branch-3.0 to 27.0-jre |  Minor | . | Gabor Bota | Gabor Bota |
| [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | Fix Markdown for "Voting on Release Candidates" in book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | Change rubocop configuration for method length |  Minor | community, shell | Jan Hentschel | Murtaza Hassan |
| [HBASE-20494](https://issues.apache.org/jira/browse/HBASE-20494) | Upgrade com.yammer.metrics dependency |  Major | dependencies | Vlad Rozov | Jan Hentschel |
| [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | Remove extra/useless + |  Trivial | . | puleya7 | puleya7 |
| [HBASE-22365](https://issues.apache.org/jira/browse/HBASE-22365) | Region may be opened on two RegionServers |  Blocker | amv2 | Guanghao Zhang | Duo Zhang |
| [HBASE-21658](https://issues.apache.org/jira/browse/HBASE-21658) | Should get the meta replica number from zk instead of config at client side |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-22377](https://issues.apache.org/jira/browse/HBASE-22377) | Provide API to check the existence of a namespace which does not require ADMIN permissions |  Major | . | Chinmay Kulkarni | Andrew Kyle Purtell |
| [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | Formatting issues in administration section of book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | Dump replication queue should show list of wal files ordered chronologically |  Major | Replication, tooling | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-20305](https://issues.apache.org/jira/browse/HBASE-20305) | Add option to SyncTable that skip deletes on target cluster |  Minor | mapreduce | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22443](https://issues.apache.org/jira/browse/HBASE-22443) | Add hbase-vote script details to documentation |  Minor | documentation | Biju Nair | Biju Nair |
| [HBASE-22474](https://issues.apache.org/jira/browse/HBASE-22474) | Add --mvn-custom-repo parameter to yetus calls |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22469](https://issues.apache.org/jira/browse/HBASE-22469) | replace md5 checksum in saveVersion script with sha512 for hbase version information |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-22467](https://issues.apache.org/jira/browse/HBASE-22467) | WebUI changes to enable Apache Knox UI proxying |  Major | UI | Josh Elser | Josh Elser |
| [HBASE-22411](https://issues.apache.org/jira/browse/HBASE-22411) | Refactor codes of moving reigons in RSGroup |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22488](https://issues.apache.org/jira/browse/HBASE-22488) | Cleanup the explicit timeout value for test methods |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22496](https://issues.apache.org/jira/browse/HBASE-22496) | UnsafeAccess.unsafeCopy should not copy more than UNSAFE\_COPY\_THRESHOLD on each iteration |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22459](https://issues.apache.org/jira/browse/HBASE-22459) | Expose store reader reference count |  Minor | HFile, metrics, regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22511](https://issues.apache.org/jira/browse/HBASE-22511) | More missing /rs-status links |  Minor | UI | Josh Elser | Josh Elser |
| [HBASE-22523](https://issues.apache.org/jira/browse/HBASE-22523) | Refactor RegionStates#getAssignmentsByTable to make it easy to understand |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21415](https://issues.apache.org/jira/browse/HBASE-21415) | Admin#snapshot method documentation is misleading. |  Trivial | documentation | Philippe Laflamme | Philippe Laflamme |
| [HBASE-22284](https://issues.apache.org/jira/browse/HBASE-22284) | optimization StringBuilder.append of AbstractMemStore.toString |  Trivial | . | wen.feiyi | wen.feiyi |
| [HBASE-22395](https://issues.apache.org/jira/browse/HBASE-22395) | Document RC voting guidelines in ref guide |  Major | community, documentation | Artem Ervits | Tak-Lon (Stephen) Wu |
| [HBASE-22160](https://issues.apache.org/jira/browse/HBASE-22160) | Add sorting functionality in regionserver web UI for user regions |  Minor | monitoring, regionserver, UI, Usability | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-22116](https://issues.apache.org/jira/browse/HBASE-22116) | HttpDoAsClient to support keytab and principal in command line argument. |  Major | . | Subrat Mishra | Subrat Mishra |
| [HBASE-19303](https://issues.apache.org/jira/browse/HBASE-19303) | Cleanup the usage of deprecated ReplicationAdmin |  Major | . | Guanghao Zhang | Jan Hentschel |
| [HBASE-22593](https://issues.apache.org/jira/browse/HBASE-22593) | Add local Jenv file to gitignore |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22344](https://issues.apache.org/jira/browse/HBASE-22344) | Document deprecated public APIs |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22561](https://issues.apache.org/jira/browse/HBASE-22561) | modify HFilePrettyPrinter to accept non-hbase.rootdir directories |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-22596](https://issues.apache.org/jira/browse/HBASE-22596) | [Chore] Separate the execution period between CompactionChecker and PeriodicMemStoreFlusher |  Minor | Compaction | Reid Chan | Reid Chan |
| [HBASE-22616](https://issues.apache.org/jira/browse/HBASE-22616) | responseTooXXX logging for Multi should characterize the component ops |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22454](https://issues.apache.org/jira/browse/HBASE-22454) | refactor WALSplitter |  Major | wal | Jingyun Tian | Jingyun Tian |
| [HBASE-22595](https://issues.apache.org/jira/browse/HBASE-22595) | Use full qualified name in Checkstyle suppressions |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22633](https://issues.apache.org/jira/browse/HBASE-22633) | Remove redundant call to substring for ZKReplicationQueueStorage |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22624](https://issues.apache.org/jira/browse/HBASE-22624) | Should sanity check table configuration when clone snapshot to a new table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22604](https://issues.apache.org/jira/browse/HBASE-22604) | fix the link in the docs to "Understanding HBase and BigTable" by Jim R. Wilson |  Trivial | documentation | David Mollitor | Murtaza Hassan |
| [HBASE-22403](https://issues.apache.org/jira/browse/HBASE-22403) | Balance in RSGroup should consider throttling and a failure affects the whole |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22669](https://issues.apache.org/jira/browse/HBASE-22669) | Add unit tests for org.apache.hadoop.hbase.util.Strings |  Major | java | Eric Hettiaratchi | Eric Hettiaratchi |
| [HBASE-7129](https://issues.apache.org/jira/browse/HBASE-7129) | Need documentation for REST atomic operations (HBASE-4720) |  Minor | documentation, REST | Joe Pallas | Dequan Chen |
| [HBASE-22638](https://issues.apache.org/jira/browse/HBASE-22638) | Zookeeper Utility enhancements |  Minor | Zookeeper | Viraj Jasani | Viraj Jasani |
| [HBASE-22689](https://issues.apache.org/jira/browse/HBASE-22689) | Line break for fix version in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22643](https://issues.apache.org/jira/browse/HBASE-22643) | Delete region without archiving only if regiondir is present |  Major | HFile | Viraj Jasani | Viraj Jasani |
| [HBASE-21462](https://issues.apache.org/jira/browse/HBASE-21462) | Add note for CopyTable section explained it does not perform a diff, but a full write from source to target |  Minor | documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22704](https://issues.apache.org/jira/browse/HBASE-22704) | Avoid NPE when access table.jsp and snapshot.jsp but master not finish initialization |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22690](https://issues.apache.org/jira/browse/HBASE-22690) | Deprecate / Remove OfflineMetaRepair in hbase-2+ |  Major | hbck2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22610](https://issues.apache.org/jira/browse/HBASE-22610) | [BucketCache] Rename "hbase.offheapcache.minblocksize" |  Trivial | . | Reid Chan | Murtaza Hassan |
| [HBASE-22692](https://issues.apache.org/jira/browse/HBASE-22692) | Rubocop definition is not used in the /bin directory |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22721](https://issues.apache.org/jira/browse/HBASE-22721) | Refactor HBaseFsck: move the inner class out |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22628](https://issues.apache.org/jira/browse/HBASE-22628) | Document the custom WAL directory (hbase.wal.dir) usage |  Major | documentation, wal | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22702](https://issues.apache.org/jira/browse/HBASE-22702) | [Log] 'Group not found for table' is chatty |  Trivial | . | Reid Chan | Murtaza Hassan |
| [HBASE-22745](https://issues.apache.org/jira/browse/HBASE-22745) | Remove deprecated methods from Append |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22743](https://issues.apache.org/jira/browse/HBASE-22743) | ClientUtils for hbase-examples |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22748](https://issues.apache.org/jira/browse/HBASE-22748) | Remove deprecated methods from Put |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22756](https://issues.apache.org/jira/browse/HBASE-22756) | Remove deprecated method from SingleColumnValueFilter |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22754](https://issues.apache.org/jira/browse/HBASE-22754) | Remove deprecated methods from Increment |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22746](https://issues.apache.org/jira/browse/HBASE-22746) | Remove deprecated methods from Delete |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22763](https://issues.apache.org/jira/browse/HBASE-22763) | Fix remaining Checkstyle issue in hbase-procedure |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22752](https://issues.apache.org/jira/browse/HBASE-22752) | Remove deprecated ImmutableHColumnDescriptor & ImmutableHTableDescriptor |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22764](https://issues.apache.org/jira/browse/HBASE-22764) | Fix remaining Checkstyle issues in hbase-rsgroup |  Trivial | rsgroup | Jan Hentschel | Jan Hentschel |
| [HBASE-22753](https://issues.apache.org/jira/browse/HBASE-22753) | Remove deprecated ImmutableHRegionInfo |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22363](https://issues.apache.org/jira/browse/HBASE-22363) | Remove hardcoded number of read cache block buckets |  Trivial | BlockCache, BucketCache | Biju Nair | Biju Nair |
| [HBASE-22707](https://issues.apache.org/jira/browse/HBASE-22707) | [HBCK2] MasterRpcServices assigns method should try to reload regions from meta if the passed regions isn't found under AssignmentManager RegionsStateStore |  Major | hbck2, master | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22787](https://issues.apache.org/jira/browse/HBASE-22787) | Clean up of tests in hbase-zookeeper |  Minor | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-22677](https://issues.apache.org/jira/browse/HBASE-22677) | Add unit tests for org.apache.hadoop.hbase.util.ByteRangeUtils and org.apache.hadoop.hbase.util.Classes |  Major | java, test | Eric Hettiaratchi | Eric Hettiaratchi |
| [HBASE-22609](https://issues.apache.org/jira/browse/HBASE-22609) | [Docs] More detail documentation about "hbase.server.thread.wakefrequency" |  Minor | documentation | Reid Chan | Reid Chan |
| [HBASE-22790](https://issues.apache.org/jira/browse/HBASE-22790) | Add deprecation version for hbase.ipc.server.reservoir.initial.buffer.size & hbase.ipc.server.reservoir.initial.max |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22788](https://issues.apache.org/jira/browse/HBASE-22788) | Remove deprecated methods from Bytes |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22786](https://issues.apache.org/jira/browse/HBASE-22786) | Fix Checkstyle issues in tests of hbase-client |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22785](https://issues.apache.org/jira/browse/HBASE-22785) | Reduce number of Checkstyle issues in client exceptions |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22789](https://issues.apache.org/jira/browse/HBASE-22789) | Remove deprecated method from ImmutableBytesWritable |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22759](https://issues.apache.org/jira/browse/HBASE-22759) | Add user info to AUDITLOG events when doing grant/revoke |  Major | logging, security | Andor Molnar | Andor Molnar |
| [HBASE-22731](https://issues.apache.org/jira/browse/HBASE-22731) | ReplicationSource and HBaseInterClusterReplicationEndpoint log messages should include a target Peer identifier |  Minor | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22800](https://issues.apache.org/jira/browse/HBASE-22800) | Add mapreduce dependencies to hbase-shaded-testing-util |  Major | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-22812](https://issues.apache.org/jira/browse/HBASE-22812) | InterfaceAudience annotation in CatalogJanitor uses fully-qualified name |  Minor | . | Peter Somogyi | Murtaza Hassan |
| [HBASE-22543](https://issues.apache.org/jira/browse/HBASE-22543) | Revisit HBASE-21207 to make all values fully sortable |  Minor | master, monitoring, Operability, UI, Usability | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-22831](https://issues.apache.org/jira/browse/HBASE-22831) | Remove deprecated constructor from TableRecordWriter |  Trivial | mapreduce | Jan Hentschel | Jan Hentschel |
| [HBASE-22832](https://issues.apache.org/jira/browse/HBASE-22832) | Remove deprecated method in HFileOutputFormat2 |  Trivial | mapreduce | Jan Hentschel | Jan Hentschel |
| [HBASE-22830](https://issues.apache.org/jira/browse/HBASE-22830) | Remove deprecated method from StoreFile |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22829](https://issues.apache.org/jira/browse/HBASE-22829) | Remove deprecated methods from SnapshotDescription |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22828](https://issues.apache.org/jira/browse/HBASE-22828) | Log a region close journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22841](https://issues.apache.org/jira/browse/HBASE-22841) | TimeRange's factory functions do not support ranges, only \`allTime\` and \`at\` |  Major | Client | Huon Wilson | Huon Wilson |
| [HBASE-22871](https://issues.apache.org/jira/browse/HBASE-22871) | Move the DirScanPool out and do not use static field |  Major | master | Duo Zhang | Duo Zhang |
| [HBASE-22844](https://issues.apache.org/jira/browse/HBASE-22844) | Fix Checkstyle issues in client snapshot exceptions |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22810](https://issues.apache.org/jira/browse/HBASE-22810) | Initialize an separate ThreadPoolExecutor for taking/restoring snapshot |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22464](https://issues.apache.org/jira/browse/HBASE-22464) | Improvements to hbase-vote script |  Trivial | scripts | Artem Ervits | Artem Ervits |
| [HBASE-22755](https://issues.apache.org/jira/browse/HBASE-22755) | Remove deprecated methods from Mutation |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-20509](https://issues.apache.org/jira/browse/HBASE-20509) | Put List in HashSet directly without using addAll function to improve performance |  Trivial | Performance | taiyinglee | taiyinglee |
| [HBASE-22744](https://issues.apache.org/jira/browse/HBASE-22744) | Remove deprecated classes around status and load |  Major | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22872](https://issues.apache.org/jira/browse/HBASE-22872) | Don't create normalization plan unnecesarily when split and merge both are disabled |  Minor | . | Aman Poonia | Aman Poonia |
| [HBASE-22883](https://issues.apache.org/jira/browse/HBASE-22883) | Duplacate codes of method Threads.newDaemonThreadFactory() and class DaemonThreadFactory |  Minor | . | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22618](https://issues.apache.org/jira/browse/HBASE-22618) | added the possibility to load custom cost functions |  Major | . | Pierre Zemb | Pierre Zemb |
| [HBASE-22933](https://issues.apache.org/jira/browse/HBASE-22933) | Do not need to kick reassign for rs group change any more |  Major | rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-22962](https://issues.apache.org/jira/browse/HBASE-22962) | Fix typo in javadoc description |  Minor | documentation | KangZhiDong | KangZhiDong |
| [HBASE-22905](https://issues.apache.org/jira/browse/HBASE-22905) | Avoid temp ByteBuffer allocation in BlockingRpcConnection#writeRequest |  Major | . | chenxu | chenxu |
| [HBASE-22954](https://issues.apache.org/jira/browse/HBASE-22954) | Whitelist net.java.dev.jna which got pulled in through Hadoop 3.3.0 |  Minor | community, hadoop3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22724](https://issues.apache.org/jira/browse/HBASE-22724) | Add a emoji on the vote table for pre commit result on github |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-21879](https://issues.apache.org/jira/browse/HBASE-21879) | Read HFile's block to ByteBuffer directly instead of to byte for reducing young gc purpose |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22802](https://issues.apache.org/jira/browse/HBASE-22802) | Avoid temp ByteBuffer allocation in FileIOEngine#read |  Major | BucketCache | chenxu | chenxu |
| [HBASE-22760](https://issues.apache.org/jira/browse/HBASE-22760) | Stop/Resume Snapshot Auto-Cleanup activity with shell command |  Major | Admin, shell, snapshots | Viraj Jasani | Viraj Jasani |
| [HBASE-22899](https://issues.apache.org/jira/browse/HBASE-22899) | logging improvements for snapshot operations w/large manifests |  Minor | snapshots | Sean Busbey | Rabi Kumar K C |
| [HBASE-22804](https://issues.apache.org/jira/browse/HBASE-22804) | Provide an API to get list of successful regions and total expected regions in Canary |  Minor | canary | Caroline | Caroline |
| [HBASE-22846](https://issues.apache.org/jira/browse/HBASE-22846) | Internal Error 500 when Using HBASE REST API to Create Namespace. |  Major | hbase-connectors | Sailesh Patel | Wellington Chevreuil |
| [HBASE-23037](https://issues.apache.org/jira/browse/HBASE-23037) | Make the split WAL related log more readable |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23044](https://issues.apache.org/jira/browse/HBASE-23044) | CatalogJanitor#cleanMergeQualifier may clean wrong parent regions |  Critical | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23041](https://issues.apache.org/jira/browse/HBASE-23041) | Should not show split parent regions in HBCK report's unknown server part |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23049](https://issues.apache.org/jira/browse/HBASE-23049) | TableDescriptors#getAll should return the tables ordering by the name which contain namespace |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22027](https://issues.apache.org/jira/browse/HBASE-22027) | Move non-MR parts of TokenUtil into hbase-client |  Major | . | Stig Rohde Døssing | Stig Rohde Døssing |
| [HBASE-23058](https://issues.apache.org/jira/browse/HBASE-23058) | Should be "Column Family Name" in table.jsp |  Minor | . | Qiongwu | Qiongwu |
| [HBASE-22975](https://issues.apache.org/jira/browse/HBASE-22975) | Add read and write QPS metrics at server level and table level |  Minor | metrics | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23075](https://issues.apache.org/jira/browse/HBASE-23075) | Upgrade jackson to version 2.9.10 due to CVE-2019-16335 and CVE-2019-14540 |  Major | dependencies, hbase-connectors, REST, security | Nicholas Jiang | Nicholas Jiang |
| [HBASE-23038](https://issues.apache.org/jira/browse/HBASE-23038) | Provide consistent and clear logging about disabling chores |  Minor | master, regionserver | Sean Busbey | Sanjeet Nishad |
| [HBASE-23035](https://issues.apache.org/jira/browse/HBASE-23035) | Retain region to the last RegionServer make the failover slower |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22930](https://issues.apache.org/jira/browse/HBASE-22930) | Set unique name to longCompactions/shortCompactions threads |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-23118](https://issues.apache.org/jira/browse/HBASE-23118) | [RELEASE SCRIPTS] Allow creating a RC from an existing tag |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | Define a public interface for Canary and move existing implementation to LimitedPrivate |  Critical | canary | Duo Zhang | Rushabh Shah |
| [HBASE-23116](https://issues.apache.org/jira/browse/HBASE-23116) | LoadBalancer should log table name when balancing per table |  Minor | . | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-23031](https://issues.apache.org/jira/browse/HBASE-23031) | Upgrade Yetus version in RM scripts |  Minor | hbase-operator-tools | Peter Somogyi | Frederick Ayala |
| [HBASE-23095](https://issues.apache.org/jira/browse/HBASE-23095) | Reuse FileStatus in StoreFileInfo |  Major | mob, snapshots | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23140](https://issues.apache.org/jira/browse/HBASE-23140) | Remove unknown table error |  Minor | . | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23114](https://issues.apache.org/jira/browse/HBASE-23114) | Use archiveArtifacts in Jenkinsfiles |  Trivial | . | Peter Somogyi | Peter Somogyi |
| [HBASE-23017](https://issues.apache.org/jira/browse/HBASE-23017) | [Forward-port] Verify the file integrity in persistent IOEngine |  Major | BucketCache | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23145](https://issues.apache.org/jira/browse/HBASE-23145) | Remove out-of-date comments in StoreFlusher.java |  Trivial | documentation | Oleg | Oleg |
| [HBASE-23083](https://issues.apache.org/jira/browse/HBASE-23083) | Collect Executor status info periodically and report to metrics system |  Major | . | chenxu | chenxu |
| [HBASE-23093](https://issues.apache.org/jira/browse/HBASE-23093) | Avoid Optional Anti-Pattern where possible |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-20626](https://issues.apache.org/jira/browse/HBASE-20626) | Change the value of "Requests Per Second" on WEBUI |  Major | metrics, UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-23107](https://issues.apache.org/jira/browse/HBASE-23107) | Avoid temp byte array creation when doing cacheDataOnWrite |  Major | BlockCache, HFile | chenxu | chenxu |
| [HBASE-23170](https://issues.apache.org/jira/browse/HBASE-23170) | Admin#getRegionServers use ClusterMetrics.Option.SERVERS\_NAME |  Major | . | Yi Mei | Yi Mei |
| [HBASE-23172](https://issues.apache.org/jira/browse/HBASE-23172) | HBase Canary region success count metrics reflect column family successes, not region successes |  Minor | canary | Caroline | Caroline |
| [HBASE-22679](https://issues.apache.org/jira/browse/HBASE-22679) | Remove all deprecated methods of CellUtil |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23207](https://issues.apache.org/jira/browse/HBASE-23207) | Log a region open journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23208](https://issues.apache.org/jira/browse/HBASE-23208) | Unit formatting in Master & RS UI |  Trivial | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23191](https://issues.apache.org/jira/browse/HBASE-23191) | Log spams on Replication |  Trivial | Replication | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23221](https://issues.apache.org/jira/browse/HBASE-23221) | Polish the WAL interface after HBASE-23181 |  Major | regionserver, wal | Duo Zhang | Michael Stack |
| [HBASE-23212](https://issues.apache.org/jira/browse/HBASE-23212) | Provide config reload for Auto Region Reopen based on storeFile ref count |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23228](https://issues.apache.org/jira/browse/HBASE-23228) | Allow for jdk8 specific modules on branch-1 in precommit/nightly testing |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-23251](https://issues.apache.org/jira/browse/HBASE-23251) | Add Column Family and Table Names to HFileContext and use in HFileWriterImpl logging |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-23245](https://issues.apache.org/jira/browse/HBASE-23245) | All MutableHistogram implementations should remove maxExpected |  Major | metrics | Viraj Jasani | Viraj Jasani |
| [HBASE-23283](https://issues.apache.org/jira/browse/HBASE-23283) | Provide clear and consistent logging about the period of enabled chores |  Minor | Operability | Sean Busbey | Mingliang Liu |
| [HBASE-19450](https://issues.apache.org/jira/browse/HBASE-19450) | Add log about average execution time for ScheduledChore |  Minor | Operability | Reid Chan | Reid Chan |
| [HBASE-23102](https://issues.apache.org/jira/browse/HBASE-23102) | Improper Usage of Map putIfAbsent |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23278](https://issues.apache.org/jira/browse/HBASE-23278) |  Add a table-level compaction progress display on the UI |  Minor | UI | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23315](https://issues.apache.org/jira/browse/HBASE-23315) | Miscellaneous HBCK Report page cleanup |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-23308](https://issues.apache.org/jira/browse/HBASE-23308) | Review of NullPointerExceptions |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23321](https://issues.apache.org/jira/browse/HBASE-23321) | [hbck2] fixHoles of fixMeta doesn't update in-memory state |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23325](https://issues.apache.org/jira/browse/HBASE-23325) | [UI]rsgoup average load keep two decimals |  Minor | . | xuqinya | xuqinya |
| [HBASE-23334](https://issues.apache.org/jira/browse/HBASE-23334) | The table-lock node of zk is not needed since HBASE-16786 |  Minor | . | Zheng Wang | Zheng Wang |
| [HBASE-23293](https://issues.apache.org/jira/browse/HBASE-23293) | [REPLICATION] make ship edits timeout configurable |  Minor | Replication | chenxu | chenxu |
| [HBASE-20395](https://issues.apache.org/jira/browse/HBASE-20395) | Displaying thrift server type on the thrift page |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-23352](https://issues.apache.org/jira/browse/HBASE-23352) | Allow chaos monkeys to access cmd line params, and improve FillDiskCommandAction |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23362](https://issues.apache.org/jira/browse/HBASE-23362) | WalPrettyPrinter should include the table name |  Minor | tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23365](https://issues.apache.org/jira/browse/HBASE-23365) | Minor change MemStoreFlusher's log |  Trivial | . | Lijin Bin | Lijin Bin |
| [HBASE-23361](https://issues.apache.org/jira/browse/HBASE-23361) | [UI] Limit two decimals even for total average load |  Minor | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23303](https://issues.apache.org/jira/browse/HBASE-23303) | Add security headers to REST server/info page |  Major | REST | Andor Molnar | Andor Molnar |
| [HBASE-18382](https://issues.apache.org/jira/browse/HBASE-18382) | [Thrift] Add transport type info to info server |  Minor | Thrift | Lars George |  |
| [HBASE-23373](https://issues.apache.org/jira/browse/HBASE-23373) | Log \`RetriesExhaustedException\` context with full time precision |  Minor | asyncclient, Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23377](https://issues.apache.org/jira/browse/HBASE-23377) | Balancer should skip disabled tables's regions |  Major | Balancer | Lijin Bin | Lijin Bin |
| [HBASE-23379](https://issues.apache.org/jira/browse/HBASE-23379) | Clean Up FSUtil getRegionLocalityMappingFromFS |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23380](https://issues.apache.org/jira/browse/HBASE-23380) | General Cleanup of FSUtil |  Minor | Filesystem Integration | David Mollitor | David Mollitor |
| [HBASE-22920](https://issues.apache.org/jira/browse/HBASE-22920) | github pr testing job should use dev-support script for gathering machine info |  Major | community, test | Sean Busbey |  |
| [HBASE-23549](https://issues.apache.org/jira/browse/HBASE-23549) | Document steps to disable MOB for a column family |  Minor | documentation, mob | Sean Busbey | Sean Busbey |
| [HBASE-23239](https://issues.apache.org/jira/browse/HBASE-23239) | Reporting on status of backing MOB files from client-facing cells |  Major | mapreduce, mob, Operability | Sean Busbey | Sean Busbey |
| [HBASE-23066](https://issues.apache.org/jira/browse/HBASE-23066) | Create a config that forces to cache blocks on compaction |  Minor | Compaction, regionserver | Jacob LeBlanc | Jacob LeBlanc |
| [HBASE-23065](https://issues.apache.org/jira/browse/HBASE-23065) | [hbtop] Top-N heavy hitter user and client drill downs |  Major | hbtop, Operability | Andrew Kyle Purtell | Ankit Singhal |
| [HBASE-23326](https://issues.apache.org/jira/browse/HBASE-23326) | Implement a ProcedureStore which stores procedures in a HRegion |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-23613](https://issues.apache.org/jira/browse/HBASE-23613) | ProcedureExecutor check StuckWorkers blocked by DeadServerMetricRegionChore |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23238](https://issues.apache.org/jira/browse/HBASE-23238) | Additional test and checks for null references on ScannerCallableWithReplicas |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23617](https://issues.apache.org/jira/browse/HBASE-23617) | Add a stress test tool for region based procedure store |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-23618](https://issues.apache.org/jira/browse/HBASE-23618) | Add a tool to dump procedure info in the WAL file |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-23615](https://issues.apache.org/jira/browse/HBASE-23615) | Use a dedicated thread for executing WorkerMonitor in ProcedureExecutor. |  Major | amv2 | Lijin Bin | Lijin Bin |
| [HBASE-23624](https://issues.apache.org/jira/browse/HBASE-23624) | Add a tool to dump the procedure info in HFile |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-23632](https://issues.apache.org/jira/browse/HBASE-23632) | DeadServer cleanup |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-23629](https://issues.apache.org/jira/browse/HBASE-23629) | Addition to Supporting projects page |  Minor | . | Manu Manjunath | Manu Manjunath |
| [HBASE-23333](https://issues.apache.org/jira/browse/HBASE-23333) | Include simple Call.toShortString() in sendCall exceptions |  Minor | Client, Operability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23651](https://issues.apache.org/jira/browse/HBASE-23651) | Region balance throttling can be disabled |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23654](https://issues.apache.org/jira/browse/HBASE-23654) | Please add Apache Trafodion and EsgynDB to "Powered by Apache HBase" page |  Major | documentation | Dave Birdsall | Beata Sudi |
| [HBASE-23378](https://issues.apache.org/jira/browse/HBASE-23378) | Clean Up FSUtil setClusterId |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23668](https://issues.apache.org/jira/browse/HBASE-23668) | Master log start filling with "Flush journal status" messages |  Major | proc-v2, RegionProcedureStore | Michael Stack | Michael Stack |
| [HBASE-23165](https://issues.apache.org/jira/browse/HBASE-23165) | [hbtop] Some modifications from HBASE-22988 |  Minor | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23619](https://issues.apache.org/jira/browse/HBASE-23619) | Use built-in formatting for logging in hbase-zookeeper |  Trivial | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-23635](https://issues.apache.org/jira/browse/HBASE-23635) | Reduce number of Checkstyle violations in hbase-mapreduce |  Minor | mapreduce | Jan Hentschel | Jan Hentschel |
| [HBASE-23286](https://issues.apache.org/jira/browse/HBASE-23286) | Improve MTTR: Split WAL to HFile |  Major | MTTR | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23383](https://issues.apache.org/jira/browse/HBASE-23383) | [hbck2] \`fixHoles\` should queue assignment procedures for any regions its fixing |  Minor | hbck2, master, Region Assignment | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23688](https://issues.apache.org/jira/browse/HBASE-23688) | Update docs for setting up IntelliJ as a development environment |  Minor | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23674](https://issues.apache.org/jira/browse/HBASE-23674) | Too many rit page Numbers show confusion |  Trivial | master | dingbaosheng | dingbaosheng |
| [HBASE-23675](https://issues.apache.org/jira/browse/HBASE-23675) | Move to Apache parent POM version 22 |  Minor | dependencies | Peter Somogyi | Peter Somogyi |
| [HBASE-23703](https://issues.apache.org/jira/browse/HBASE-23703) | Add HBase 2.2.3 documentation to website |  Major | documentation, website | Peter Somogyi | Peter Somogyi |
| [HBASE-23626](https://issues.apache.org/jira/browse/HBASE-23626) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23622](https://issues.apache.org/jira/browse/HBASE-23622) | Reduce number of Checkstyle violations in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23646](https://issues.apache.org/jira/browse/HBASE-23646) | Fix remaining Checkstyle violations in tests of hbase-rest |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23347](https://issues.apache.org/jira/browse/HBASE-23347) | Pluggable RPC authentication |  Major | rpc, security | Josh Elser | Josh Elser |
| [HBASE-23645](https://issues.apache.org/jira/browse/HBASE-23645) | Fix remaining Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23623](https://issues.apache.org/jira/browse/HBASE-23623) | Reduce number of Checkstyle violations in hbase-rest |  Minor | REST | Jan Hentschel | Jan Hentschel |
| [HBASE-21065](https://issues.apache.org/jira/browse/HBASE-21065) | Try ROW\_INDEX\_V1 encoding on meta table (fix bloomfilters on meta while we are at it) |  Major | meta, Performance | Michael Stack | Michael Stack |
| [HBASE-23627](https://issues.apache.org/jira/browse/HBASE-23627) | Resolve remaining Checkstyle violations in hbase-thrift |  Minor | Thrift | Jan Hentschel | Jan Hentschel |
| [HBASE-23683](https://issues.apache.org/jira/browse/HBASE-23683) | Make HBaseInterClusterReplicationEndpoint more extensible |  Major | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23686](https://issues.apache.org/jira/browse/HBASE-23686) | Revert binary incompatible change and remove reflection |  Major | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23069](https://issues.apache.org/jira/browse/HBASE-23069) | periodic dependency bump for Sep 2019 |  Critical | dependencies | Sean Busbey | Michael Stack |
| [HBASE-23621](https://issues.apache.org/jira/browse/HBASE-23621) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23822](https://issues.apache.org/jira/browse/HBASE-23822) | Fix typo in procedures.jsp |  Trivial | website | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-23802](https://issues.apache.org/jira/browse/HBASE-23802) | Remove unnecessary Configuration instantiation in LossyAccounting |  Minor | metrics | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23855](https://issues.apache.org/jira/browse/HBASE-23855) | Change bytes size to human readable size for Server Metrics of RegionServer Web UI |  Trivial | . | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-23859](https://issues.apache.org/jira/browse/HBASE-23859) | Modify "Block locality" of RegionServer Web UI to human readable percentage |  Trivial | . | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-22834](https://issues.apache.org/jira/browse/HBASE-22834) | Remove deprecated methods from HBaseTestingUtility |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23309](https://issues.apache.org/jira/browse/HBASE-23309) | Add support in ChainWalEntryFilter to filter Entry if all cells get filtered through WalCellFilter |  Major | . | Sandeep Pal | Sandeep Pal |
| [HBASE-23864](https://issues.apache.org/jira/browse/HBASE-23864) | No need to submit SplitTableRegionProcedure/MergeTableRegionsProcedure when split/merge is disabled |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23868](https://issues.apache.org/jira/browse/HBASE-23868) | Replace usages of HColumnDescriptor(byte [] familyName) with builder pattern |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22827](https://issues.apache.org/jira/browse/HBASE-22827) | Expose multi-region merge in shell and Admin API |  Major | Admin, shell | Michael Stack | Sakthi |
| [HBASE-23939](https://issues.apache.org/jira/browse/HBASE-23939) | Remove unused variables from HBaseSaslRpcServer |  Trivial | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23932](https://issues.apache.org/jira/browse/HBASE-23932) | Minor improvements to Region Normalizer |  Minor | hbck2, master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23929](https://issues.apache.org/jira/browse/HBASE-23929) | Shell formatter for for meta table should pretty-print values of info:merge columns |  Minor | shell, Usability | Nick Dimiduk | Michael Stack |
| [HBASE-23930](https://issues.apache.org/jira/browse/HBASE-23930) | Shell should attempt to format \`timestamp\` attributes as ISO-8601 |  Minor | shell, Usability | Nick Dimiduk | Michael Stack |
| [HBASE-23967](https://issues.apache.org/jira/browse/HBASE-23967) | Improve the accuracy of the method sizeToString |  Minor | . | xuqinya | xuqinya |
| [HBASE-24032](https://issues.apache.org/jira/browse/HBASE-24032) | [RSGroup] Assign created tables to respective rsgroup automatically instead of manual operations |  Major | master, rsgroup | Reid Chan | Reid Chan |
| [HBASE-8868](https://issues.apache.org/jira/browse/HBASE-8868) | add metric to report client shortcircuit reads |  Minor | metrics, regionserver | Viral Bajaria | Wei-Chiu Chuang |
| [HBASE-23983](https://issues.apache.org/jira/browse/HBASE-23983) | Spotbugs warning complain on master build |  Major | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23678](https://issues.apache.org/jira/browse/HBASE-23678) | Literate builder API for version management in schema |  Major | . | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24021](https://issues.apache.org/jira/browse/HBASE-24021) | Fail fast when bulkLoadHFiles method catch some IOException |  Major | HFile, regionserver | niuyulin | niuyulin |
| [HBASE-24056](https://issues.apache.org/jira/browse/HBASE-24056) | Improve the layout of our proto files in hbase-protocol-shaded module |  Major | Protobufs | Duo Zhang | Semen Komissarov |
| [HBASE-24111](https://issues.apache.org/jira/browse/HBASE-24111) | Enable CompactionTool executions on non-HDFS filesystems |  Major | Compaction, mapreduce, tooling | Peter Somogyi | Peter Somogyi |
| [HBASE-24077](https://issues.apache.org/jira/browse/HBASE-24077) | When encounter RowTooBigException, log the row info. |  Minor | . | Lijin Bin | Lijin Bin |
| [HBASE-24055](https://issues.apache.org/jira/browse/HBASE-24055) | Make AsyncFSWAL can run on EC cluster |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | Use a fair ReentrantReadWriteLock for the region close lock |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24136](https://issues.apache.org/jira/browse/HBASE-24136) | Add release branch report to git-jira-release-audit tool |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24153](https://issues.apache.org/jira/browse/HBASE-24153) | Remove unnecessary super() in MultiVersionConcurrencyControl#MultiVersionConcurrencyControl() |  Trivial | . | Lisheng Sun | Lisheng Sun |
| [HBASE-24181](https://issues.apache.org/jira/browse/HBASE-24181) | Add region info when log meessages in HRegion. |  Minor | regionserver | Lijin Bin | Lijin Bin |
| [HBASE-23994](https://issues.apache.org/jira/browse/HBASE-23994) |  Add WebUI to Canary |  Trivial | canary, UI, Usability | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-24112](https://issues.apache.org/jira/browse/HBASE-24112) | [RSGroup] Support renaming rsgroup |  Major | rsgroup | Reid Chan | Reid Chan |
| [HBASE-24195](https://issues.apache.org/jira/browse/HBASE-24195) | Admin.getRegionServers() should return live servers excluding decom RS optionally |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24148](https://issues.apache.org/jira/browse/HBASE-24148) | Upgrade Thrift to 0.13.0: 0.12.0 has outstanding CVEs. |  Major | Thrift | Tamas Penzes | Tamas Penzes |
| [HBASE-24182](https://issues.apache.org/jira/browse/HBASE-24182) | log when the region is set to closing status |  Minor | . | Junhong Xu | Junhong Xu |
| [HBASE-24166](https://issues.apache.org/jira/browse/HBASE-24166) | Duplicate implementation for acquireLock between CreateTableProcedure and its parent class |  Minor | proc-v2 | Sun Xin | Sun Xin |
| [HBASE-24196](https://issues.apache.org/jira/browse/HBASE-24196) | [Shell] Add rename rsgroup command in hbase shell |  Major | rsgroup, shell | Reid Chan | Reid Chan |
| [HBASE-24139](https://issues.apache.org/jira/browse/HBASE-24139) | Balancer should avoid leaving idle region servers |  Critical | Balancer, Operability | Sean Busbey | Beata Sudi |
| [HBASE-24222](https://issues.apache.org/jira/browse/HBASE-24222) | remove FSUtils.checkAccess and replace with FileSystem.access in HBCK |  Major | Filesystem Integration | niuyulin | niuyulin |
| [HBASE-24024](https://issues.apache.org/jira/browse/HBASE-24024) | Optionally reject multi() requests with very high no of rows |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23264](https://issues.apache.org/jira/browse/HBASE-23264) | Resolve a TODO of BucketAllocator: "Why we add the extra 1024 bytes? Slop?" |  Minor | BucketCache | Zheng Wang | Zheng Wang |
| [HBASE-24252](https://issues.apache.org/jira/browse/HBASE-24252) | Implement proxyuser/doAs mechanism for hbase-http |  Major | security, UI | Istvan Toth | Istvan Toth |
| [HBASE-24278](https://issues.apache.org/jira/browse/HBASE-24278) | The Java doc for minFilesToCompact is wrong |  Trivial | . | Junhong Xu | Junhong Xu |
| [HBASE-24199](https://issues.apache.org/jira/browse/HBASE-24199) | Procedure related metrics is not consumed in the JMX metric |  Minor | metrics | ramkrishna.s.vasudevan | Gaurav Kanade |
| [HBASE-24266](https://issues.apache.org/jira/browse/HBASE-24266) | Document of Hbase on Aarch64 |  Major | documentation | huangtianhua | huangtianhua |
| [HBASE-24302](https://issues.apache.org/jira/browse/HBASE-24302) | Add an "ignoreTimestamps" option (defaulted to false) to HashTable/SyncTable tool |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23968](https://issues.apache.org/jira/browse/HBASE-23968) | Periodically check whether a system stop is requested in compaction by time. |  Minor | Compaction | Minwoo Kang | Minwoo Kang |
| [HBASE-24317](https://issues.apache.org/jira/browse/HBASE-24317) | Remove deprecated setCacheDataInL1 in HColumnDescriptor |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-24311](https://issues.apache.org/jira/browse/HBASE-24311) | Add more details in MultiVersionConcurrencyControl STUCK log message |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-24137](https://issues.apache.org/jira/browse/HBASE-24137) | The max merge count of metafixer may be remind in hbase-site.xml |  Minor | . | Yu Wang | Yu Wang |
| [HBASE-24304](https://issues.apache.org/jira/browse/HBASE-24304) | Separate a hbase-asyncfs module |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-24334](https://issues.apache.org/jira/browse/HBASE-24334) | Remove duplicated dependency declaration in hbase-hadoop-compat |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-24335](https://issues.apache.org/jira/browse/HBASE-24335) | Support deleteall with ts but without column in shell mode |  Major | shell | Zheng Wang | Zheng Wang |
| [HBASE-24328](https://issues.apache.org/jira/browse/HBASE-24328) | skip duplicate GCMultipleMergedRegionsProcedure while previous finished |  Major | . | niuyulin | niuyulin |
| [HBASE-24345](https://issues.apache.org/jira/browse/HBASE-24345) | [ACL] renameRSGroup should require Admin level permission |  Major | acl, rsgroup | Reid Chan | Reid Chan |
| [HBASE-24321](https://issues.apache.org/jira/browse/HBASE-24321) | Add writable MinVersions and read-only Scan to coproc ScanOptions |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-24341](https://issues.apache.org/jira/browse/HBASE-24341) | The region should be removed from ConfigurationManager as a ConfigurationObserver when it is closed |  Minor | . | Junhong Xu | Junhong Xu |
| [HBASE-24355](https://issues.apache.org/jira/browse/HBASE-24355) | Fix typos in the HStore#compact annotation |  Minor | . | kangkang.guo | kangkang.guo |
| [HBASE-24256](https://issues.apache.org/jira/browse/HBASE-24256) | When fixOverlap hits the max region limit, it is possible to include the same region in multiple merge request |  Major | hbck2 | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24318](https://issues.apache.org/jira/browse/HBASE-24318) | Create-release scripts fixes and enhancements |  Major | create-release | Matthew Foley | Matthew Foley |
| [HBASE-24350](https://issues.apache.org/jira/browse/HBASE-24350) | HBase table level replication metrics for shippedBytes are always 0 |  Major | Replication | Sandeep Pal | Sandeep Pal |
| [HBASE-24313](https://issues.apache.org/jira/browse/HBASE-24313) | [DOCS] Document "ignoreTimestamps" option added to HashTable/SyncTable by HBASE-24302 to related ref-guide section |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23969](https://issues.apache.org/jira/browse/HBASE-23969) | Meta browser should show all \`info\` columns |  Minor | master, UI | Nick Dimiduk | Mingliang Liu |
| [HBASE-24164](https://issues.apache.org/jira/browse/HBASE-24164) | Retain the ReadRequests and WriteRequests of region on web UI after alter table |  Major | metrics | Zheng Wang | Zheng Wang |
| [HBASE-24386](https://issues.apache.org/jira/browse/HBASE-24386) | TableSnapshotScanner support scan limit |  Major | Scanners, snapshots | niuyulin | niuyulin |
| [HBASE-21996](https://issues.apache.org/jira/browse/HBASE-21996) | Set locale for javadoc |  Major | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-24407](https://issues.apache.org/jira/browse/HBASE-24407) | Correct the comment of clusterRegionLocationMocks in TestStochasticLoadBalancer |  Minor | Balancer | Zheng Wang | Zheng Wang |
| [HBASE-24296](https://issues.apache.org/jira/browse/HBASE-24296) | install yetus as a part of building the rm docker image. |  Major | community, scripts | Sean Busbey | Sean Busbey |
| [HBASE-24297](https://issues.apache.org/jira/browse/HBASE-24297) | release scripts should be able to use a custom git repo |  Major | community, scripts | Sean Busbey | Sean Busbey |
| [HBASE-24387](https://issues.apache.org/jira/browse/HBASE-24387) | TableSnapshotInputFormatImpl support row limit on each InputSplit |  Major | mapreduce | niuyulin | niuyulin |
| [HBASE-24427](https://issues.apache.org/jira/browse/HBASE-24427) | HStore.add log format error |  Minor | . | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24369](https://issues.apache.org/jira/browse/HBASE-24369) | Provide more information about  merged child regions in Hbck Overlaps section, which cannot be fixed immediately |  Major | master | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24423](https://issues.apache.org/jira/browse/HBASE-24423) | No need to get lock in canSplit because hasReferences will get lock too |  Minor | regionserver | Zheng Wang | Zheng Wang |
| [HBASE-24371](https://issues.apache.org/jira/browse/HBASE-24371) | Add more details when print CompactionConfiguration info |  Minor | regionserver | Lijin Bin | Lijin Bin |
| [HBASE-24428](https://issues.apache.org/jira/browse/HBASE-24428) | Priority compaction for recently split daughter regions |  Major | Compaction | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24416](https://issues.apache.org/jira/browse/HBASE-24416) | RegionNormalizer spliting region should not be limited by hbase.normalizer.min.region.count |  Major | . | Sun Xin | Sun Xin |
| [HBASE-24443](https://issues.apache.org/jira/browse/HBASE-24443) | Refactor TestCustomSaslAuthenticationProvider |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-24451](https://issues.apache.org/jira/browse/HBASE-24451) | Remove the HasThread because the related bug had been fixed since jdk7 |  Major | util | Zheng Wang | Zheng Wang |
| [HBASE-24470](https://issues.apache.org/jira/browse/HBASE-24470) | Add store file info when log meessages in HStore. |  Minor | logging, regionserver | song XinCun | song XinCun |
| [HBASE-24132](https://issues.apache.org/jira/browse/HBASE-24132) | Upgrade to Apache ZooKeeper 3.5.7 |  Major | . | Jianfei Jiang | Jianfei Jiang |
| [HBASE-24471](https://issues.apache.org/jira/browse/HBASE-24471) | The way we bootstrap meta table is confusing |  Major | master, meta, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-24475](https://issues.apache.org/jira/browse/HBASE-24475) | Clean up the master thread name getting in SplitLogManager and AssignmentManager |  Minor | . | Zheng Wang | Zheng Wang |
| [HBASE-24455](https://issues.apache.org/jira/browse/HBASE-24455) | Correct the doc of "On the number of column families" |  Minor | documentation | Zheng Wang | Zheng Wang |
| [HBASE-23841](https://issues.apache.org/jira/browse/HBASE-23841) | Remove deprecated methods from Scan |  Minor | scan | Jan Hentschel | Jan Hentschel |
| [HBASE-24474](https://issues.apache.org/jira/browse/HBASE-24474) | Rename LocalRegion to MasterRegion |  Blocker | master | Duo Zhang | Duo Zhang |
| [HBASE-24486](https://issues.apache.org/jira/browse/HBASE-24486) | Remove the unused method online in admin.rb |  Minor | . | Zheng Wang | Zheng Wang |
| [HBASE-21406](https://issues.apache.org/jira/browse/HBASE-21406) | "status 'replication'" should not show SINK if the cluster does not act as sink |  Minor | . | Daisuke Kobayashi | Wellington Chevreuil |
| [HBASE-24456](https://issues.apache.org/jira/browse/HBASE-24456) | Immutable Scan as unmodifiable subclass or wrapper of Scan |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24412](https://issues.apache.org/jira/browse/HBASE-24412) | Canary support check only one column family per RegionTask |  Major | canary | niuyulin | niuyulin |
| [HBASE-24458](https://issues.apache.org/jira/browse/HBASE-24458) | release scripts using docker should specify needed disk consistency |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-24504](https://issues.apache.org/jira/browse/HBASE-24504) | refactor call setupCluster/tearDownCluster in TestTableSnapshotInputFormat |  Minor | mapreduce, test | niuyulin | niuyulin |
| [HBASE-24359](https://issues.apache.org/jira/browse/HBASE-24359) | Optionally ignore edits for deleted CFs for replication. |  Major | Replication | Sun Xin | Sun Xin |
| [HBASE-24483](https://issues.apache.org/jira/browse/HBASE-24483) | Add repeated prefix logging for MultipleColumnPrefixFilter |  Minor | Filters | Zheng Wang | Zheng Wang |
| [HBASE-24208](https://issues.apache.org/jira/browse/HBASE-24208) | Remove RS entry from zk draining servers node after RS been stopped |  Major | . | Anoop Sam John | Gaurav Kanade |
| [HBASE-24468](https://issues.apache.org/jira/browse/HBASE-24468) | Add region info when log meessages in HStore. |  Minor | logging, regionserver | song XinCun | song XinCun |
| [HBASE-24441](https://issues.apache.org/jira/browse/HBASE-24441) | CacheConfig details logged at Store open is not really useful |  Minor | logging, regionserver | Anoop Sam John | song XinCun |
| [HBASE-24524](https://issues.apache.org/jira/browse/HBASE-24524) | SyncTable logging improvements |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24478](https://issues.apache.org/jira/browse/HBASE-24478) | The regionInfo parameter for MasterProcedureScheduler#waitRegions and MasterProcedureScheduler#wakeRegions should be plural |  Minor | proc-v2 | song XinCun | song XinCun |
| [HBASE-21405](https://issues.apache.org/jira/browse/HBASE-21405) | [DOC] Add Details about Output of "status 'replication'" |  Minor | documentation, Replication | Daisuke Kobayashi | Wellington Chevreuil |
| [HBASE-24380](https://issues.apache.org/jira/browse/HBASE-24380) | Improve WAL splitting log lines to enable sessionization |  Minor | logging, Operability, wal | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24102](https://issues.apache.org/jira/browse/HBASE-24102) | RegionMover should exclude draining/decommissioning nodes from target RSs |  Major | . | Anoop Sam John | Viraj Jasani |
| [HBASE-15161](https://issues.apache.org/jira/browse/HBASE-15161) | Umbrella: Miscellaneous improvements from production usage |  Major | . | Yu Li | Yu Li |
| [HBASE-24605](https://issues.apache.org/jira/browse/HBASE-24605) | Break long region names in the web UI |  Minor | UI | song XinCun | song XinCun |
| [HBASE-24205](https://issues.apache.org/jira/browse/HBASE-24205) | Create metric to know the number of reads that happens from memstore |  Major | metrics | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-23339](https://issues.apache.org/jira/browse/HBASE-23339) | Release scripts should not need to write out a copy of gpg key material |  Critical | community, scripts | Sean Busbey | Sean Busbey |
| [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | Zookeeper sync() call is async |  Critical | master, regionserver | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24382](https://issues.apache.org/jira/browse/HBASE-24382) | Flush partial stores of region filtered by seqId when archive wal due to too many wals |  Major | wal | Zheng Wang | Zheng Wang |
| [HBASE-24221](https://issues.apache.org/jira/browse/HBASE-24221) | Support bulkLoadHFile by family |  Major | HFile | niuyulin | niuyulin |
| [HBASE-20819](https://issues.apache.org/jira/browse/HBASE-20819) | Use TableDescriptor to replace HTableDescriptor in hbase-shell module |  Minor | shell | Xiaolin Ha | Elliot Miller |
| [HBASE-24560](https://issues.apache.org/jira/browse/HBASE-24560) | Add a new option of designatedfile in RegionMover |  Major | . | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-24562](https://issues.apache.org/jira/browse/HBASE-24562) | Stabilize master startup with meta replicas enabled |  Major | meta, read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-24671](https://issues.apache.org/jira/browse/HBASE-24671) | Add excludefile and designatedfile options to graceful\_stop.sh |  Major | . | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-24431](https://issues.apache.org/jira/browse/HBASE-24431) | RSGroupInfo add configuration map to store something extra |  Major | rsgroup | Sun Xin | Sun Xin |
| [HBASE-24653](https://issues.apache.org/jira/browse/HBASE-24653) | Show snapshot owner on Master WebUI |  Major | . | Yi Mei | niuyulin |
| [HBASE-24663](https://issues.apache.org/jira/browse/HBASE-24663) | Add procedure process time statistics UI |  Major | . | Guanghao Zhang | Junhong Xu |
| [HBASE-24586](https://issues.apache.org/jira/browse/HBASE-24586) | Add table level locality in table.jsp |  Major | UI | Zheng Wang | Zheng Wang |
| [HBASE-24578](https://issues.apache.org/jira/browse/HBASE-24578) | [WAL] Add a parameter to config RingBufferEventHandler's SyncFuture count |  Major | wal | Reid Chan | wenfeiyi666 |
| [HBASE-24747](https://issues.apache.org/jira/browse/HBASE-24747) | Log an ERROR if HBaseSaslRpcServer initialisation fails with an uncaught exception |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24740](https://issues.apache.org/jira/browse/HBASE-24740) | Enable journal logging for HBase snapshot operation |  Minor | master | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24555](https://issues.apache.org/jira/browse/HBASE-24555) | Clear the description of hbase.hregion.max.filesize |  Minor | documentation | Zheng Wang | Zheng Wang |
| [HBASE-24696](https://issues.apache.org/jira/browse/HBASE-24696) | Include JVM information on Web UI under "Software Attributes" |  Minor | UI | Nick Dimiduk | Mingliang Liu |
| [HBASE-24743](https://issues.apache.org/jira/browse/HBASE-24743) | Reject to add a peer which replicate to itself earlier |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24758](https://issues.apache.org/jira/browse/HBASE-24758) | Avoid flooding replication source RSes logs when no sinks are available |  Major | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24777](https://issues.apache.org/jira/browse/HBASE-24777) | InfoServer support ipv6 host and port |  Minor | UI | Yechao Chen | Yechao Chen |
| [HBASE-24757](https://issues.apache.org/jira/browse/HBASE-24757) | ReplicationSink should limit the batch rowcount for batch mutations based on hbase.rpc.rows.warning.threshold |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24790](https://issues.apache.org/jira/browse/HBASE-24790) | Remove unused counter from SplitLogCounters |  Minor | wal | Yechao Chen | Yechao Chen |
| [HBASE-24669](https://issues.apache.org/jira/browse/HBASE-24669) | Logging of ppid should be consistent across all occurrences |  Minor | Operability, proc-v2 | Nick Dimiduk | niuyulin |
| [HBASE-24722](https://issues.apache.org/jira/browse/HBASE-24722) | Address hbase-shell commands with unintentional return values |  Minor | shell | Elliot Miller | Elliot Miller |
| [HBASE-20226](https://issues.apache.org/jira/browse/HBASE-20226) | Performance Improvement Taking Large Snapshots In Remote Filesystems |  Minor | snapshots | Saad Mufti | Bharath Vissapragada |
| [HBASE-11686](https://issues.apache.org/jira/browse/HBASE-11686) | Shell code should create a binding / irb workspace instead of polluting the root namespace |  Minor | shell | Sean Busbey | Elliot Miller |
| [HBASE-24803](https://issues.apache.org/jira/browse/HBASE-24803) | Unify hbase-shell ::Shell::Commands::Command#help behavior |  Minor | shell | Elliot Miller | Elliot Miller |
| [HBASE-24695](https://issues.apache.org/jira/browse/HBASE-24695) | FSHLog - close the current WAL file in a background thread |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-24476](https://issues.apache.org/jira/browse/HBASE-24476) | release scripts should provide timing information |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-24704](https://issues.apache.org/jira/browse/HBASE-24704) | Make the Table Schema easier to view even there are multiple families |  Major | UI | Zheng Wang | Zheng Wang |
| [HBASE-24791](https://issues.apache.org/jira/browse/HBASE-24791) | Improve HFileOutputFormat2 to avoid always call getTableRelativePath method |  Critical | mapreduce | Yechao Chen | Yechao Chen |
| [HBASE-24821](https://issues.apache.org/jira/browse/HBASE-24821) | Simplify the logic of getRegionInfo in TestFlushFromClient to reduce redundancy code |  Minor | test | Zheng Wang | Zheng Wang |
| [HBASE-24795](https://issues.apache.org/jira/browse/HBASE-24795) | RegionMover should deal with unknown (split/merged) regions |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24823](https://issues.apache.org/jira/browse/HBASE-24823) | Port HBASE-22762 Print the delta between phases in the split/merge/compact/flush transaction journals to master branch |  Minor | . | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24827](https://issues.apache.org/jira/browse/HBASE-24827) | BackPort HBASE-11554 Remove Reusable poolmap Rpc client type. |  Major | Client | niuyulin | niuyulin |
| [HBASE-24659](https://issues.apache.org/jira/browse/HBASE-24659) | Calculate FIXED\_OVERHEAD automatically |  Major | . | Duo Zhang | niuyulin |
| [HBASE-24826](https://issues.apache.org/jira/browse/HBASE-24826) | Add some comments for processlist in hbase shell |  Minor | shell | Zheng Wang | Zheng Wang |
| [HBASE-24404](https://issues.apache.org/jira/browse/HBASE-24404) | Support flush a single column family of region |  Major | shell | Zheng Wang | Zheng Wang |
| [HBASE-21721](https://issues.apache.org/jira/browse/HBASE-21721) | FSHLog : reduce write#syncs() times |  Major | . | Bo Cui | Bo Cui |
| [HBASE-24824](https://issues.apache.org/jira/browse/HBASE-24824) | Add more stats in PE for read replica |  Minor | PE, read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24709](https://issues.apache.org/jira/browse/HBASE-24709) | Support MoveCostFunction use a lower multiplier in offpeak hours |  Major | Balancer | Zheng Wang | Zheng Wang |
| [HBASE-24750](https://issues.apache.org/jira/browse/HBASE-24750) | All executor service should start using guava ThreadFactory |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24854](https://issues.apache.org/jira/browse/HBASE-24854) | Correct the help content of assign and unassign commands in hbase shell |  Minor | shell | Zheng Wang | Zheng Wang |
| [HBASE-24872](https://issues.apache.org/jira/browse/HBASE-24872) | refactor valueOf PoolType |  Minor | Client | niuyulin | niuyulin |
| [HBASE-24627](https://issues.apache.org/jira/browse/HBASE-24627) | Normalize one table at a time |  Major | Normalizer | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24914](https://issues.apache.org/jira/browse/HBASE-24914) | Remove duplicate code appearing continuously in method ReplicationPeerManager.updatePeerConfig |  Minor | Replication | Sun Xin | Sun Xin |
| [HBASE-24912](https://issues.apache.org/jira/browse/HBASE-24912) | Enlarge MemstoreFlusherChore/CompactionChecker period for unit test |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24686](https://issues.apache.org/jira/browse/HBASE-24686) | [LOG] Log improvement in Connection#close |  Major | Client, logging | mokai | mokai |
| [HBASE-24915](https://issues.apache.org/jira/browse/HBASE-24915) | Improve BlockCache read performance by specifying BlockType |  Major | BlockCache, Performance | fanrui | fanrui |
| [HBASE-24811](https://issues.apache.org/jira/browse/HBASE-24811) | Use class access static field or method |  Minor | . | Yechao Chen | Yechao Chen |
| [HBASE-24942](https://issues.apache.org/jira/browse/HBASE-24942) | MergeTableRegionsProcedure should not call clean merge region |  Major | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-24928](https://issues.apache.org/jira/browse/HBASE-24928) | balanceRSGroup should skip generating balance plan for disabled table and splitParent region |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-24898](https://issues.apache.org/jira/browse/HBASE-24898) | Use EnvironmentEdge.currentTime() instead of System.currentTimeMillis() in CurrentHourProvider |  Major | tooling | Zheng Wang | Zheng Wang |
| [HBASE-24949](https://issues.apache.org/jira/browse/HBASE-24949) | Optimize FSTableDescriptors.get to not always go to fs when cache miss |  Major | master | Duo Zhang | Duo Zhang |
| [HBASE-24913](https://issues.apache.org/jira/browse/HBASE-24913) | Refactor TestJMXConnectorServer |  Major | test | Sun Xin | Sun Xin |
| [HBASE-24569](https://issues.apache.org/jira/browse/HBASE-24569) | Get hostAndWeights in addition using localhost if it is null in local mode |  Minor | regionserver | Zheng Wang | Zheng Wang |
| [HBASE-24973](https://issues.apache.org/jira/browse/HBASE-24973) | Remove read point parameter in method StoreFlush#performFlush and StoreFlush#createScanner |  Minor | . | yuqi | yuqi |
| [HBASE-24940](https://issues.apache.org/jira/browse/HBASE-24940) | runCatalogJanitor() API should return -1 to indicate already running status |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24937](https://issues.apache.org/jira/browse/HBASE-24937) | table.rb use LocalDateTime to replace Instant |  Minor | shell | Bo Cui | Bo Cui |
| [HBASE-24992](https://issues.apache.org/jira/browse/HBASE-24992) | log after Generator success when running ITBLL |  Trivial | . | Junhong Xu | Junhong Xu |
| [HBASE-25005](https://issues.apache.org/jira/browse/HBASE-25005) | Refactor CatalogJanitor |  Major | master, meta | Duo Zhang | Duo Zhang |
| [HBASE-24994](https://issues.apache.org/jira/browse/HBASE-24994) | Add hedgedReadOpsInCurThread metric |  Minor | metrics | Javier Akira Luca de Tena | Javier Akira Luca de Tena |
| [HBASE-24974](https://issues.apache.org/jira/browse/HBASE-24974) | Provide a flexibility to print only row key and filter for multiple tables in the WALPrettyPrinter |  Minor | wal | Sandeep Pal | Sandeep Pal |
| [HBASE-25006](https://issues.apache.org/jira/browse/HBASE-25006) | Make the cost functions optional for StochastoicBalancer |  Major | . | Clara Xiong | Clara Xiong |
| [HBASE-25022](https://issues.apache.org/jira/browse/HBASE-25022) | Remove 'hbase.testing.nocluster' config |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-25002](https://issues.apache.org/jira/browse/HBASE-25002) | Create simple pattern matching query for retrieving metrics matching the pattern |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-24831](https://issues.apache.org/jira/browse/HBASE-24831) | Avoid invoke Counter using reflection  in SnapshotInputFormat |  Major | . | Yechao Chen | Yechao Chen |
| [HBASE-25037](https://issues.apache.org/jira/browse/HBASE-25037) | Lots of thread pool are changed to non daemon after HBASE-24750 which causes trouble when shutting down |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-24764](https://issues.apache.org/jira/browse/HBASE-24764) | Add support of adding base peer configs via hbase-site.xml for all replication peers. |  Minor | Replication | Ankit Jain | Ankit Jain |
| [HBASE-25057](https://issues.apache.org/jira/browse/HBASE-25057) | Fix typo "memeber" |  Trivial | documentation | Hyeran Lee | Hyeran Lee |
| [HBASE-24991](https://issues.apache.org/jira/browse/HBASE-24991) | Replace MovedRegionsCleaner with guava cache |  Minor | . | Junhong Xu | Junhong Xu |
| [HBASE-25069](https://issues.apache.org/jira/browse/HBASE-25069) |  Display region name instead of encoded region name in HBCK report page. |  Minor | hbck | Mohammad Arshad | Mohammad Arshad |
| [HBASE-25066](https://issues.apache.org/jira/browse/HBASE-25066) | Use FutureUtils.rethrow in AsyncTableResultScanner to better catch the stack trace |  Major | Client, Scanners | Duo Zhang | Duo Zhang |
| [HBASE-24976](https://issues.apache.org/jira/browse/HBASE-24976) | REST Server failes to start without any error message |  Major | REST | lujie | lujie |
| [HBASE-25075](https://issues.apache.org/jira/browse/HBASE-25075) | Fix typo in ReplicationProtobufUtil |  Major | Replication | Duo Zhang | niuyulin |
| [HBASE-25076](https://issues.apache.org/jira/browse/HBASE-25076) | fix typo in MasterRegion java doc |  Major | . | niuyulin | niuyulin |
| [HBASE-25079](https://issues.apache.org/jira/browse/HBASE-25079) | Upgrade Bootstrap to 3.3.7 |  Major | security, UI | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-25082](https://issues.apache.org/jira/browse/HBASE-25082) | Per table WAL metrics: appendCount and appendSize |  Major | metrics | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-25086](https://issues.apache.org/jira/browse/HBASE-25086) | Refactor Replication: move the default ReplicationSinkService implementation out |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-25074](https://issues.apache.org/jira/browse/HBASE-25074) | Refactor ReplicationSinkManager: reduce code and make it easy to understand |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-25109](https://issues.apache.org/jira/browse/HBASE-25109) | Add MR Counters to WALPlayer; currently hard to tell if it is doing anything |  Major | . | Michael Stack | Michael Stack |
| [HBASE-25062](https://issues.apache.org/jira/browse/HBASE-25062) | The link of "Re:(HBASE-451) Remove HTableDescriptor from HRegionInfo" invalid |  Minor | documentation | Zheng Wang | Zheng Wang |
| [HBASE-24981](https://issues.apache.org/jira/browse/HBASE-24981) | Enable table replication fails from 1.x to 2.x if table already exist at peer. |  Major | Replication | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-25091](https://issues.apache.org/jira/browse/HBASE-25091) | Move LogComparator from ReplicationSource to AbstractFSWALProvider#.WALsStartTimeComparator |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-24054](https://issues.apache.org/jira/browse/HBASE-24054) | The Jetty's version number leak occurred while using the thrift service |  Minor | . | shenshengli | shenshengli |
| [HBASE-25146](https://issues.apache.org/jira/browse/HBASE-25146) | Add extra logging at info level to HFileCorruptionChecker in order to report progress |  Major | hbck, hbck2 | Andor Molnar | Andor Molnar |
| [HBASE-25160](https://issues.apache.org/jira/browse/HBASE-25160) | Refactor AccessController and VisibilityController |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24025](https://issues.apache.org/jira/browse/HBASE-24025) | Improve performance of move\_servers\_rsgroup and move\_tables\_rsgroup by using async region move API |  Major | rsgroup | Mohammad Arshad | Mohammad Arshad |
| [HBASE-25171](https://issues.apache.org/jira/browse/HBASE-25171) | Remove ZNodePaths.namespaceZNode |  Major | Zookeeper | Sun Xin | Sun Xin |
| [HBASE-24875](https://issues.apache.org/jira/browse/HBASE-24875) | Remove the force param for unassign since it dose not take effect any more |  Major | Client | Zheng Wang | Zheng Wang |
| [HBASE-14067](https://issues.apache.org/jira/browse/HBASE-14067) | bundle ruby files for hbase shell into a jar. |  Major | shell | Sean Busbey | Sean Busbey |
| [HBASE-25065](https://issues.apache.org/jira/browse/HBASE-25065) | WAL archival to be done by a separate thread |  Major | wal | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-25179](https://issues.apache.org/jira/browse/HBASE-25179) | Assert format is incorrect in HFilePerformanceEvaluation class. |  Minor | Performance, test | Rushabh Shah | Rushabh Shah |
| [HBASE-24628](https://issues.apache.org/jira/browse/HBASE-24628) | Region normalizer now respects a rate limit |  Major | Normalizer | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24840](https://issues.apache.org/jira/browse/HBASE-24840) | Avoid shows closing region task when create table |  Major | monitoring | Zheng Wang | Zheng Wang |
| [HBASE-25128](https://issues.apache.org/jira/browse/HBASE-25128) | RSGroupInfo's toString() and hashCode() does not take into account configuration map. |  Minor | rsgroup | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-25193](https://issues.apache.org/jira/browse/HBASE-25193) | Add support for row prefix and type in the WAL Pretty Printer and some minor fixes |  Minor | wal | Sandeep Pal | Sandeep Pal |
| [HBASE-25189](https://issues.apache.org/jira/browse/HBASE-25189) | [Metrics] Add checkAndPut and checkAndDelete latency metrics at table level |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-25201](https://issues.apache.org/jira/browse/HBASE-25201) | YouAreDeadException should be moved to hbase-server module |  Major | Client | niuyulin | niuyulin |
| [HBASE-25223](https://issues.apache.org/jira/browse/HBASE-25223) | Use try-with-resources statement in snapshot package |  Minor | . | minjikim | minjikim |
| [HBASE-25224](https://issues.apache.org/jira/browse/HBASE-25224) | Maximize sleep for checking meta and namespace regions availability |  Major | master | Peter Somogyi | Peter Somogyi |
| [HBASE-24419](https://issues.apache.org/jira/browse/HBASE-24419) | Normalizer merge plans should consider more than 2 regions when possible |  Major | master, Normalizer | Nick Dimiduk | Nick Dimiduk |
| [HBASE-25167](https://issues.apache.org/jira/browse/HBASE-25167) | Normalizer support for hot config reloading |  Major | master, Normalizer | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24967](https://issues.apache.org/jira/browse/HBASE-24967) | The table.jsp cost long time to load if the table include closed regions |  Major | UI | Zheng Wang | Zheng Wang |
| [HBASE-24859](https://issues.apache.org/jira/browse/HBASE-24859) | Optimize in-memory representation of mapreduce TableSplit objects |  Major | mapreduce | Sandeep Pal | Sandeep Pal |
| [HBASE-25212](https://issues.apache.org/jira/browse/HBASE-25212) | Optionally abort requests in progress after deciding a region should close |  Major | regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-25210](https://issues.apache.org/jira/browse/HBASE-25210) | RegionInfo.isOffline is now a duplication with RegionInfo.isSplit |  Major | meta | Duo Zhang | niuyulin |
| [HBASE-25240](https://issues.apache.org/jira/browse/HBASE-25240) | gson format of RpcServer.logResponse is abnormal |  Minor | . | wenfeiyi666 | wenfeiyi666 |
| [HBASE-25252](https://issues.apache.org/jira/browse/HBASE-25252) | Move HMaster inner classes out |  Minor | master | Duo Zhang | Duo Zhang |
| [HBASE-25254](https://issues.apache.org/jira/browse/HBASE-25254) | Rewrite TestMultiLogThreshold to remove the LogDelegate in RSRpcServices |  Major | logging, test | Duo Zhang | Duo Zhang |
| [HBASE-25181](https://issues.apache.org/jira/browse/HBASE-25181) | Add options for disabling column family encryption and choosing hash algorithm for wrapped encryption keys. |  Major | encryption | Mate Szalay-Beko | Mate Szalay-Beko |
| [HBASE-25267](https://issues.apache.org/jira/browse/HBASE-25267) | Add SSL keystore type and truststore related configs for HBase RESTServer |  Major | REST | Mate Szalay-Beko | Mate Szalay-Beko |
| [HBASE-25273](https://issues.apache.org/jira/browse/HBASE-25273) | fix typo in StripeStoreFileManager java doc |  Major | . | Hossein Zolfi |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14377](https://issues.apache.org/jira/browse/HBASE-14377) | JavaHBaseContextSuite not being run |  Critical | hbase-connectors, spark | Sean Busbey | Sean Busbey |
| [HBASE-14406](https://issues.apache.org/jira/browse/HBASE-14406) | The dataframe datasource filter is wrong, and will result in data loss or unexpected behavior |  Blocker | hbase-connectors, spark | Zhan Zhang | Theodore michael Malaska |
| [HBASE-15184](https://issues.apache.org/jira/browse/HBASE-15184) | SparkSQL Scan operation doesn't work on kerberos cluster |  Critical | hbase-connectors, spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-15310](https://issues.apache.org/jira/browse/HBASE-15310) | hbase-spark module has compilation failures with clover profile |  Major | spark, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16804](https://issues.apache.org/jira/browse/HBASE-16804) | JavaHBaseContext.streamBulkGet is void but should be JavaDStream |  Major | hbase-connectors, spark | Igor Yurinok | Igor Yurinok |
| [HBASE-17547](https://issues.apache.org/jira/browse/HBASE-17547) | HBase-Spark Module : TableCatelog doesn't support multiple columns from Single Column family |  Major | hbase-connectors, spark | Chetan Khatri | Chetan Khatri |
| [HBASE-17574](https://issues.apache.org/jira/browse/HBASE-17574) | Clean up how to run tests under hbase-spark module |  Major | hbase-connectors, spark | Yi Liang | Yi Liang |
| [HBASE-15597](https://issues.apache.org/jira/browse/HBASE-15597) | Clean up configuration keys used in hbase-spark module |  Critical | hbase-connectors, spark | Sean Busbey | Yi Liang |
| [HBASE-17909](https://issues.apache.org/jira/browse/HBASE-17909) | Redundant exclusion of jruby-complete in pom of hbase-spark |  Minor | hbase-connectors, spark | Xiang Li | Xiang Li |
| [HBASE-18179](https://issues.apache.org/jira/browse/HBASE-18179) | Add new hadoop releases to the pre commit hadoop check |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-17546](https://issues.apache.org/jira/browse/HBASE-17546) | Incorrect syntax at HBase-Spark Module Examples |  Minor | hbase-connectors, spark | Chetan Khatri | Chetan Khatri |
| [HBASE-18392](https://issues.apache.org/jira/browse/HBASE-18392) | Add default value of ----movetimeout to rolling-restart.sh |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-18545](https://issues.apache.org/jira/browse/HBASE-18545) | Fix broke site build that fails in rsgroups |  Major | website | Michael Stack | Michael Stack |
| [HBASE-18506](https://issues.apache.org/jira/browse/HBASE-18506) | java.lang.AbstractMethodError in hbase REST server |  Blocker | REST | Samir Ahmic | Samir Ahmic |
| [HBASE-19387](https://issues.apache.org/jira/browse/HBASE-19387) | HBase-spark snappy.SnappyError on Arm64 |  Minor | hbase-connectors, spark, test | Yuqi Gu | Yuqi Gu |
| [HBASE-19748](https://issues.apache.org/jira/browse/HBASE-19748) | TestRegionReplicaFailover and TestRegionReplicaReplicationEndpoint UT hangs |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19568](https://issues.apache.org/jira/browse/HBASE-19568) | Restore of HBase table using incremental backup doesn't restore rows from an earlier incremental backup |  Major | . | Romil Choksi | Vladimir Rodionov |
| [HBASE-20121](https://issues.apache.org/jira/browse/HBASE-20121) | Fix findbugs warning for RestoreTablesClient |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-19923](https://issues.apache.org/jira/browse/HBASE-19923) | Reset peer state and config when refresh replication source failed |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16179](https://issues.apache.org/jira/browse/HBASE-16179) | Fix compilation errors when building hbase-spark against Spark 2.0 |  Critical | hbase-connectors, spark | Ted Yu | Ted Yu |
| [HBASE-20124](https://issues.apache.org/jira/browse/HBASE-20124) | Make hbase-spark module work with hadoop3 |  Major | dependencies, hadoop3, hbase-connectors, spark | Ted Yu | Ted Yu |
| [HBASE-20058](https://issues.apache.org/jira/browse/HBASE-20058) | improper quoting in presplitting command docs |  Minor | documentation | Mike Drob | maoling |
| [HBASE-20177](https://issues.apache.org/jira/browse/HBASE-20177) | Fix warning: Class org.apache.hadoop.minikdc.MiniKdc not found in hbase-spark |  Minor | hbase-connectors | Artem Ervits | Artem Ervits |
| [HBASE-20210](https://issues.apache.org/jira/browse/HBASE-20210) | Note in refguide that RSGroups API is private, not for public consumption; shell is only access |  Major | documentation, rsgroup | Michael Stack | Michael Stack |
| [HBASE-13884](https://issues.apache.org/jira/browse/HBASE-13884) | Fix Compactions section in HBase book |  Trivial | documentation | Vladimir Rodionov | Michael Stack |
| [HBASE-20260](https://issues.apache.org/jira/browse/HBASE-20260) | Purge old content from the book for branch-2/master |  Critical | documentation | Mike Drob | Mike Drob |
| [HBASE-20313](https://issues.apache.org/jira/browse/HBASE-20313) | Canary documentation is incorrect in reference guide |  Major | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-19890](https://issues.apache.org/jira/browse/HBASE-19890) | Canary usage should document hbase.canary.sink.class config |  Critical | . | Ted Yu | Peter Somogyi |
| [HBASE-20328](https://issues.apache.org/jira/browse/HBASE-20328) | Fix local backup master start command in documentation |  Minor | documentation | Yuki Tawara | Yuki Tawara |
| [HBASE-20355](https://issues.apache.org/jira/browse/HBASE-20355) | upgrade section incorrectly attempts to link to sections |  Minor | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20068](https://issues.apache.org/jira/browse/HBASE-20068) | Hadoopcheck project health check uses default maven repo instead of yetus managed ones |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-15291](https://issues.apache.org/jira/browse/HBASE-15291) | FileSystem not closed in secure bulkLoad |  Major | . | Yong Zhang | Ashish Singhi |
| [HBASE-20375](https://issues.apache.org/jira/browse/HBASE-20375) | Remove use of getCurrentUserCredentials in hbase-spark module |  Major | hbase-connectors, spark | Ted Yu | Ted Yu |
| [HBASE-20376](https://issues.apache.org/jira/browse/HBASE-20376) | RowCounter and CellCounter documentations are incorrect |  Minor | documentation, mapreduce | Peter Somogyi | Peter Somogyi |
| [HBASE-20356](https://issues.apache.org/jira/browse/HBASE-20356) | make skipping protoc possible |  Critical | dependencies, thirdparty | Mike Drob | Mike Drob |
| [HBASE-20338](https://issues.apache.org/jira/browse/HBASE-20338) | WALProcedureStore#recoverLease() should have fixed sleeps for retrying rollWriter() |  Major | . | Umesh Agashe | Wei-Chiu Chuang |
| [HBASE-20410](https://issues.apache.org/jira/browse/HBASE-20410) | upgrade protoc compiler to 3.5.1-1 |  Critical | build, dependencies, Protobufs | Mike Drob | Mike Drob |
| [HBASE-20335](https://issues.apache.org/jira/browse/HBASE-20335) | nightly jobs no longer contain machine information |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20364](https://issues.apache.org/jira/browse/HBASE-20364) | nightly job gives old results or no results for stages that timeout on SCM |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20419](https://issues.apache.org/jira/browse/HBASE-20419) | Fix potential NPE in ZKUtil#listChildrenAndWatchForNewChildren callers |  Major | . | lujie | lujie |
| [HBASE-20404](https://issues.apache.org/jira/browse/HBASE-20404) | Ugly cleanerchore complaint that dir is not empty |  Major | master | Michael Stack | Sean Busbey |
| [HBASE-20421](https://issues.apache.org/jira/browse/HBASE-20421) | HBasecontext creates a connection but does not close it |  Major | . | Yu Wang | Yu Wang |
| [HBASE-18059](https://issues.apache.org/jira/browse/HBASE-18059) | The scanner order for memstore scanners are wrong |  Critical | regionserver, Scanners | Duo Zhang | Jingyun Tian |
| [HBASE-20439](https://issues.apache.org/jira/browse/HBASE-20439) | Clean up incorrect use of commons-logging in hbase-server |  Minor | dependencies, logging | Sean Busbey | Sean Busbey |
| [HBASE-20440](https://issues.apache.org/jira/browse/HBASE-20440) | Clean up incorrect use of commons-lang 2.y |  Major | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-20442](https://issues.apache.org/jira/browse/HBASE-20442) | clean up incorrect use of commons-collections 3 |  Major | dependencies, thirdparty | Sean Busbey | Sean Busbey |
| [HBASE-20006](https://issues.apache.org/jira/browse/HBASE-20006) | TestRestoreSnapshotFromClientWithRegionReplicas is flakey |  Critical | read replicas | Michael Stack | Toshihiro Suzuki |
| [HBASE-20293](https://issues.apache.org/jira/browse/HBASE-20293) | get\_splits returns duplicate split points when region replication is on |  Minor | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-19547](https://issues.apache.org/jira/browse/HBASE-19547) | HBase fails building on AArch64 due to asciidoctor-maven-plugin. |  Major | build, documentation, website | Yuqi Gu | Yuqi Gu |
| [HBASE-20427](https://issues.apache.org/jira/browse/HBASE-20427) | thrift.jsp displays "Framed transport" incorrectly |  Major | Thrift | Balazs Meszaros | Balazs Meszaros |
| [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | The hbase shell clone\_snaphost command returns bad error message |  Minor | shell | Thoralf Gutierrez | Thoralf Gutierrez |
| [HBASE-20487](https://issues.apache.org/jira/browse/HBASE-20487) | Sorting table regions by region name does not work on web UI |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20497](https://issues.apache.org/jira/browse/HBASE-20497) | The getRecoveredQueueStartPos always return 0 in RecoveredReplicationSourceShipper |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-20492](https://issues.apache.org/jira/browse/HBASE-20492) | UnassignProcedure is stuck in retry loop on region stuck in OPENING state |  Critical | amv2 | Umesh Agashe | Michael Stack |
| [HBASE-20506](https://issues.apache.org/jira/browse/HBASE-20506) | Add doc and test for unused RetryCounter, useful-looking utility |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-20476](https://issues.apache.org/jira/browse/HBASE-20476) | Open sequence number could go backwards in AssignProcedure |  Major | Region Assignment | Zheng Hu | Duo Zhang |
| [HBASE-20169](https://issues.apache.org/jira/browse/HBASE-20169) | NPE when calling HBTU.shutdownMiniCluster (TestAssignmentManagerMetrics is flakey) |  Critical | test | Duo Zhang | Chia-Ping Tsai |
| [HBASE-20524](https://issues.apache.org/jira/browse/HBASE-20524) | Need to clear metrics when ReplicationSourceManager refresh replication sources |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20517](https://issues.apache.org/jira/browse/HBASE-20517) | Fix PerformanceEvaluation 'column' parameter |  Major | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20531](https://issues.apache.org/jira/browse/HBASE-20531) | RS may throw NPE when close meta regions in shutdown procedure. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20500](https://issues.apache.org/jira/browse/HBASE-20500) | [rsgroup] should keep at least one server in default group |  Major | rsgroup | Yechao Chen | Yechao Chen |
| [HBASE-20521](https://issues.apache.org/jira/browse/HBASE-20521) | TableOutputFormat.checkOutputSpecs conf checking sequence cause pig script run fail |  Major | mapreduce | Michael Jin | Michael Jin |
| [HBASE-20543](https://issues.apache.org/jira/browse/HBASE-20543) | Fix the flaky TestThriftHttpServer |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20204](https://issues.apache.org/jira/browse/HBASE-20204) | Add locking to RefreshFileConnections in BucketCache |  Major | BucketCache | Zach York | Zach York |
| [HBASE-20554](https://issues.apache.org/jira/browse/HBASE-20554) | "WALs outstanding" message from CleanerChore is noisy |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20475](https://issues.apache.org/jira/browse/HBASE-20475) | Fix the flaky TestReplicationDroppedTables unit test. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | Client is not able to execute REST queries in a secure cluster |  Minor | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20566](https://issues.apache.org/jira/browse/HBASE-20566) | Creating a system table after enabling rsgroup feature puts region into RIT |  Major | master | Biju Nair | Nihal Jain |
| [HBASE-20544](https://issues.apache.org/jira/browse/HBASE-20544) | downstream HBaseTestingUtility fails with invalid port |  Blocker | test | Sean Busbey | Sean Busbey |
| [HBASE-20447](https://issues.apache.org/jira/browse/HBASE-20447) | Only fail cacheBlock if block collisions aren't related to next block metadata |  Major | BlockCache, BucketCache | Zach York | Zach York |
| [HBASE-20457](https://issues.apache.org/jira/browse/HBASE-20457) | Return immediately for a scan rpc call when we want to switch from pread to stream |  Major | Scanners | Duo Zhang | Duo Zhang |
| [HBASE-20585](https://issues.apache.org/jira/browse/HBASE-20585) | Need to clear peer map when clearing MasterProcedureScheduler |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20547](https://issues.apache.org/jira/browse/HBASE-20547) | Restore from backup will fail if done from a different file system |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-20571](https://issues.apache.org/jira/browse/HBASE-20571) | JMXJsonServlet generates invalid JSON if it has NaN in metrics |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20530](https://issues.apache.org/jira/browse/HBASE-20530) | Composition of backup directory containing namespace when restoring is different from the actual hfile location |  Critical | . | Ted Yu | Vladimir Rodionov |
| [HBASE-20581](https://issues.apache.org/jira/browse/HBASE-20581) | HBase book documentation wrong for REST operations on schema endpoints |  Critical | documentation | Kevin Risden | Josh Elser |
| [HBASE-20560](https://issues.apache.org/jira/browse/HBASE-20560) | Revisit the TestReplicationDroppedTables ut |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20609](https://issues.apache.org/jira/browse/HBASE-20609) | SnapshotHFileCleaner#init should check that params is not null |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-20591](https://issues.apache.org/jira/browse/HBASE-20591) | nightly job doesn't respect maven options |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20601](https://issues.apache.org/jira/browse/HBASE-20601) | Add multiPut support and other miscellaneous to PE |  Minor | tooling | Allan Yang | Allan Yang |
| [HBASE-20624](https://issues.apache.org/jira/browse/HBASE-20624) | Race in ReplicationSource which causes walEntryFilter being null when creating new shipper |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20638](https://issues.apache.org/jira/browse/HBASE-20638) | nightly source artifact testing should fail the stage if it's going to report an error on jira |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20588](https://issues.apache.org/jira/browse/HBASE-20588) | Space quota change after quota violation doesn't seem to take in effect |  Major | regionserver | Biju Nair | Nihal Jain |
| [HBASE-19718](https://issues.apache.org/jira/browse/HBASE-19718) | Remove PREFIX\_TREE from compression.adoc |  Trivial | documentation | Ted Yu | Peter Somogyi |
| [HBASE-20612](https://issues.apache.org/jira/browse/HBASE-20612) | TestReplicationKillSlaveRSWithSeparateOldWALs sometimes fail because it uses an expired cluster conn |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20645](https://issues.apache.org/jira/browse/HBASE-20645) | Fix security\_available method in security.rb |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20633](https://issues.apache.org/jira/browse/HBASE-20633) | Dropping a table containing a disable violation policy fails to remove the quota upon table delete |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-20597](https://issues.apache.org/jira/browse/HBASE-20597) | Use a lock to serialize access to a shared reference to ZooKeeperWatcher in HBaseReplicationEndpoint |  Minor | Replication | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20533](https://issues.apache.org/jira/browse/HBASE-20533) | Fix the flaky TestAssignmentManagerMetrics |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20582](https://issues.apache.org/jira/browse/HBASE-20582) | Bump up JRuby version because of some reported vulnerabilities |  Major | dependencies, shell | Ankit Singhal | Josh Elser |
| [HBASE-20659](https://issues.apache.org/jira/browse/HBASE-20659) | Implement a reopen table regions procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20653](https://issues.apache.org/jira/browse/HBASE-20653) | Add missing observer hooks for region server group to MasterObserver |  Major | . | Ted Yu | Nihal Jain |
| [HBASE-20664](https://issues.apache.org/jira/browse/HBASE-20664) | Variable shared across multiple threads |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20602](https://issues.apache.org/jira/browse/HBASE-20602) | hbase.master.quota.observer.ignore property seems to be not taking effect |  Minor | documentation | Biju Nair | Biju Nair |
| [HBASE-18116](https://issues.apache.org/jira/browse/HBASE-18116) | Replication source in-memory accounting should not include bulk transfer hfiles |  Major | Replication | Andrew Kyle Purtell | Xu Cang |
| [HBASE-12882](https://issues.apache.org/jira/browse/HBASE-12882) | Log level for org.apache.hadoop.hbase package should be configurable |  Major | . | Adrian Muraru | Jan Hentschel |
| [HBASE-20634](https://issues.apache.org/jira/browse/HBASE-20634) | Reopen region while server crash can cause the procedure to be stuck |  Critical | . | Duo Zhang | Michael Stack |
| [HBASE-20670](https://issues.apache.org/jira/browse/HBASE-20670) | NPE in HMaster#isInMaintenanceMode |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20684](https://issues.apache.org/jira/browse/HBASE-20684) | org.apache.hadoop.hbase.client.Scan#setStopRow javadoc uses incorrect method |  Trivial | Client, documentation | Evgenii | Evgenii |
| [HBASE-20683](https://issues.apache.org/jira/browse/HBASE-20683) | Incorrect return value for PreUpgradeValidator |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | REST Java client is not able to negotiate with the server in the secure mode |  Critical | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20699](https://issues.apache.org/jira/browse/HBASE-20699) | QuotaCache should cancel the QuotaRefresherChore service inside its stop() |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-20707](https://issues.apache.org/jira/browse/HBASE-20707) | Move MissingSwitchDefault check from checkstyle to error-prone |  Major | build | Mike Drob | Mike Drob |
| [HBASE-20689](https://issues.apache.org/jira/browse/HBASE-20689) | Docker fails to install rubocop for precommit |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19377](https://issues.apache.org/jira/browse/HBASE-19377) | Compatibility checker complaining about hash collisions |  Major | community | Andrew Kyle Purtell | Mike Drob |
| [HBASE-20561](https://issues.apache.org/jira/browse/HBASE-20561) | The way we stop a ReplicationSource may cause the RS down |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-20681](https://issues.apache.org/jira/browse/HBASE-20681) | IntegrationTestDriver fails after HADOOP-15406 due to missing hamcrest-core |  Major | integration tests | Romil Choksi | Josh Elser |
| [HBASE-20708](https://issues.apache.org/jira/browse/HBASE-20708) | Remove the usage of RecoverMetaProcedure in master startup |  Blocker | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20369](https://issues.apache.org/jira/browse/HBASE-20369) | Document incompatibilities between HBase 1.x and HBase 2.0 |  Critical | documentation | Thiriguna Bharat Rao | Thiriguna Bharat Rao |
| [HBASE-20742](https://issues.apache.org/jira/browse/HBASE-20742) | Always create WAL directory for region server |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-20759](https://issues.apache.org/jira/browse/HBASE-20759) | Please use HTTPS for KEYS |  Major | community, security, website | Sebb | Mike Drob |
| [HBASE-18269](https://issues.apache.org/jira/browse/HBASE-18269) | Jython docs out of date |  Major | documentation | Mike Drob | Artem Ervits |
| [HBASE-20642](https://issues.apache.org/jira/browse/HBASE-20642) | IntegrationTestDDLMasterFailover throws 'InvalidFamilyOperationException |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20767](https://issues.apache.org/jira/browse/HBASE-20767) | Always close hbaseAdmin along with connection in HBTU |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-18622](https://issues.apache.org/jira/browse/HBASE-18622) | Mitigate API compatibility concerns between branch-1 and branch-2 |  Blocker | API | Michael Stack | Michael Stack |
| [HBASE-20752](https://issues.apache.org/jira/browse/HBASE-20752) | Make sure the regions are truly reopened after ReopenTableRegionsProcedure |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20775](https://issues.apache.org/jira/browse/HBASE-20775) | TestMultiParallel is flakey |  Major | Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20778](https://issues.apache.org/jira/browse/HBASE-20778) | Make it so WALPE runs on DFS |  Major | test | Michael Stack | Michael Stack |
| [HBASE-20635](https://issues.apache.org/jira/browse/HBASE-20635) | Support to convert the shaded user permission proto to client user permission object |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-20770](https://issues.apache.org/jira/browse/HBASE-20770) | WAL cleaner logs way too much; gets clogged when lots of work to do |  Critical | logging | Michael Stack | Michael Stack |
| [HBASE-20403](https://issues.apache.org/jira/browse/HBASE-20403) | Prefetch sometimes doesn't work with encrypted file system |  Major | . | Umesh Agashe | Todd Lipcon |
| [HBASE-20777](https://issues.apache.org/jira/browse/HBASE-20777) | RpcConnection could still remain opened after we shutdown the NettyRpcServer |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-20795](https://issues.apache.org/jira/browse/HBASE-20795) | Allow option in BBKVComparator.compare to do comparison without sequence id |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20785](https://issues.apache.org/jira/browse/HBASE-20785) | NPE getting metrics in PE testing scans |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20732](https://issues.apache.org/jira/browse/HBASE-20732) | Shutdown scan pool when master is stopped. |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-20791](https://issues.apache.org/jira/browse/HBASE-20791) | RSGroupBasedLoadBalancer#setClusterMetrics should pass ClusterMetrics to its internalBalancer |  Major | Balancer, rsgroup | chenxu | chenxu |
| [HBASE-20769](https://issues.apache.org/jira/browse/HBASE-20769) | getSplits() has a out of bounds problem in TableSnapshotInputFormatImpl |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20792](https://issues.apache.org/jira/browse/HBASE-20792) | info:servername and info:sn inconsistent for OPEN region |  Blocker | Region Assignment | Josh Elser | Josh Elser |
| [HBASE-20817](https://issues.apache.org/jira/browse/HBASE-20817) | Infinite loop when executing ReopenTableRegionsProcedure |  Blocker | Region Assignment | Duo Zhang | Ankit Singhal |
| [HBASE-20812](https://issues.apache.org/jira/browse/HBASE-20812) | Add defaults to Table Interface so implementors don't have to |  Major | . | Michael Stack | Michael Stack |
| [HBASE-20825](https://issues.apache.org/jira/browse/HBASE-20825) | Fix pre and post hooks of CloneSnapshot and RestoreSnapshot for Access checks |  Major | security | Romil Choksi | Ankit Singhal |
| [HBASE-20789](https://issues.apache.org/jira/browse/HBASE-20789) | TestBucketCache#testCacheBlockNextBlockMetadataMissing is flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20808](https://issues.apache.org/jira/browse/HBASE-20808) | Wrong shutdown order between Chores and ChoreService |  Minor | . | Reid Chan | Nihal Jain |
| [HBASE-20822](https://issues.apache.org/jira/browse/HBASE-20822) | TestAsyncNonMetaRegionLocator is flakey |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-20842](https://issues.apache.org/jira/browse/HBASE-20842) | Infinite loop when replaying remote wals |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-20784](https://issues.apache.org/jira/browse/HBASE-20784) | Will lose the SNAPSHOT suffix if we get the version of RS from ServerManager |  Minor | master, UI | Duo Zhang | Duo Zhang |
| [HBASE-20859](https://issues.apache.org/jira/browse/HBASE-20859) | Backup and incremental load could fail in secure clusters |  Major | backup&restore | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-20880](https://issues.apache.org/jira/browse/HBASE-20880) | Fix for warning It would fail on the following input in hbase-spark |  Minor | hbase-connectors | Artem Ervits | Artem Ervits |
| [HBASE-19572](https://issues.apache.org/jira/browse/HBASE-19572) | RegionMover should use the configured default port number and not the one from HConstants |  Major | . | Esteban Gutierrez | Toshihiro Suzuki |
| [HBASE-20865](https://issues.apache.org/jira/browse/HBASE-20865) | CreateTableProcedure is stuck in retry loop in CREATE\_TABLE\_WRITE\_FS\_LAYOUT state |  Major | amv2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20869](https://issues.apache.org/jira/browse/HBASE-20869) | Endpoint-based Export use incorrect user to write to destination |  Major | Coprocessors | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-6028](https://issues.apache.org/jira/browse/HBASE-6028) | Implement a cancel for in-progress compactions |  Minor | regionserver | Derek Wollenstein | Mohit Goel |
| [HBASE-20901](https://issues.apache.org/jira/browse/HBASE-20901) | Reducing region replica has no effect |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20870](https://issues.apache.org/jira/browse/HBASE-20870) | Wrong HBase root dir in ITBLL's Search Tool |  Minor | integration tests | Allan Yang | Allan Yang |
| [HBASE-19893](https://issues.apache.org/jira/browse/HBASE-19893) | restore\_snapshot is broken in master branch when region splits |  Critical | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20908](https://issues.apache.org/jira/browse/HBASE-20908) | Infinite loop on regionserver if region replica are reduced |  Major | read replicas | Ankit Singhal | Ankit Singhal |
| [HBASE-20565](https://issues.apache.org/jira/browse/HBASE-20565) | ColumnRangeFilter combined with ColumnPaginationFilter can produce incorrect result since 1.4 |  Major | Filters | Jerry He | Zheng Hu |
| [HBASE-20927](https://issues.apache.org/jira/browse/HBASE-20927) | RSGroupAdminEndpoint doesn't handle clearing dead servers if they are not processed yet. |  Major | . | Sergey Soldatov | Sergey Soldatov |
| [HBASE-20966](https://issues.apache.org/jira/browse/HBASE-20966) | RestoreTool#getTableInfoPath should look for completed snapshot only |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | Upgrade our hadoop versions to 2.7.7 and 3.0.3 |  Critical | java, security | Michael Stack | Duo Zhang |
| [HBASE-20731](https://issues.apache.org/jira/browse/HBASE-20731) | Incorrect folders in documentation |  Minor | documentation | Peter Somogyi | Sahil Aggarwal |
| [HBASE-20794](https://issues.apache.org/jira/browse/HBASE-20794) | CreateTable operation does not log its landing at the master nor the initiator at INFO level |  Major | logging | Michael Stack | Xu Cang |
| [HBASE-20729](https://issues.apache.org/jira/browse/HBASE-20729) | B&R BackupLogCleaner must ignore ProcV2 WAL files |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-20829](https://issues.apache.org/jira/browse/HBASE-20829) | Remove the addFront assertion in MasterProcedureScheduler.doAdd |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-21007](https://issues.apache.org/jira/browse/HBASE-21007) | Memory leak in HBase rest server |  Critical | REST | Bosko Devetak | Bosko Devetak |
| [HBASE-21026](https://issues.apache.org/jira/browse/HBASE-21026) | Fix Backup/Restore command usage bug in book |  Minor | backup&restore, documentation | Mingliang Liu | Mingliang Liu |
| [HBASE-20753](https://issues.apache.org/jira/browse/HBASE-20753) | reference guide should direct security related issues to private@hbase.apache.org |  Critical | documentation, security | Sean Busbey | Sahil Aggarwal |
| [HBASE-21018](https://issues.apache.org/jira/browse/HBASE-21018) | RS crashed because AsyncFS was unable to update HDFS data encryption key |  Critical | wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20981](https://issues.apache.org/jira/browse/HBASE-20981) | Rollback stateCount accounting thrown-off when exception out of rollbackState |  Major | amv2 | Michael Stack | Jack Bearden |
| [HBASE-21038](https://issues.apache.org/jira/browse/HBASE-21038) | SAXParseException when hbase.spark.use.hbasecontext=false |  Major | hbase-connectors | Ajith S | Ajith S |
| [HBASE-21005](https://issues.apache.org/jira/browse/HBASE-21005) | Maven site configuration causes downstream projects to get a directory named ${project.basedir} |  Minor | build | Matt Burgess | Josh Elser |
| [HBASE-21040](https://issues.apache.org/jira/browse/HBASE-21040) | Replace call to printStackTrace() with proper logger call |  Minor | . | Ted Yu | Subrat Mishra |
| [HBASE-21047](https://issues.apache.org/jira/browse/HBASE-21047) | Object creation of StoreFileScanner thru constructor and close may leave refCount to -1 |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21062](https://issues.apache.org/jira/browse/HBASE-21062) | WALFactory has misleading notion of "default" |  Major | wal | Josh Elser | Josh Elser |
| [HBASE-21074](https://issues.apache.org/jira/browse/HBASE-21074) | JDK7 branches need to pass "-Dhttps.protocols=TLSv1.2" to maven when building |  Major | build, community, test | Sean Busbey | Sean Busbey |
| [HBASE-21058](https://issues.apache.org/jira/browse/HBASE-21058) | Nightly tests for branches 1 fail to build ref guide |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20705](https://issues.apache.org/jira/browse/HBASE-20705) | Having RPC Quota on a table prevents Space quota to be recreated/removed |  Major | . | Biju Nair | Sakthi |
| [HBASE-21032](https://issues.apache.org/jira/browse/HBASE-21032) | ScanResponses contain only one cell each |  Major | Performance, Scanners | Andrey Elenskiy | Andrey Elenskiy |
| [HBASE-21077](https://issues.apache.org/jira/browse/HBASE-21077) | MR job launched by hbase incremental backup command failed with FileNotFoundException |  Major | . | Romil Choksi | Vladimir Rodionov |
| [HBASE-20666](https://issues.apache.org/jira/browse/HBASE-20666) | Unsuccessful table creation leaves entry in hbase:rsgroup table |  Minor | . | Biju Nair | Xu Cang |
| [HBASE-21031](https://issues.apache.org/jira/browse/HBASE-21031) | Memory leak if replay edits failed during region opening |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21041](https://issues.apache.org/jira/browse/HBASE-21041) | Memstore's heap size will be decreased to minus zero after flush |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20648](https://issues.apache.org/jira/browse/HBASE-20648) | HBASE-19364 "Truncate\_preserve fails with table when replica region \> 1" for master branch |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20614](https://issues.apache.org/jira/browse/HBASE-20614) | REST scan API with incorrect filter text file throws HTTP 503 Service Unavailable error |  Minor | REST | Nihal Jain | Nihal Jain |
| [HBASE-19008](https://issues.apache.org/jira/browse/HBASE-19008) | Add missing equals or hashCode method(s) to stock Filter implementations |  Major | . | Ted Yu | liubangchen |
| [HBASE-21101](https://issues.apache.org/jira/browse/HBASE-21101) | Remove the waitUntilAllRegionsAssigned call after split in TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21113](https://issues.apache.org/jira/browse/HBASE-21113) | Apply the branch-2 version of HBASE-21095, The timeout retry logic for several procedures are broken after master restarts |  Major | amv2 | Michael Stack | Allan Yang |
| [HBASE-21078](https://issues.apache.org/jira/browse/HBASE-21078) | [amv2] CODE-BUG NPE in RTP doing Unassign |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-20978](https://issues.apache.org/jira/browse/HBASE-20978) | [amv2] Worker terminating UNNATURALLY during MoveRegionProcedure |  Critical | amv2 | Michael Stack | Allan Yang |
| [HBASE-20772](https://issues.apache.org/jira/browse/HBASE-20772) | Controlled shutdown fills Master log with the disturbing message "No matching procedure found for rit=OPEN, location=ZZZZ, table=YYYYY, region=XXXX transition to CLOSED |  Major | logging | Michael Stack | Michael Stack |
| [HBASE-20890](https://issues.apache.org/jira/browse/HBASE-20890) | PE filterScan seems to be stuck forever |  Minor | . | Vikas Vishwakarma | Abhishek Goyal |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21030](https://issues.apache.org/jira/browse/HBASE-21030) | Correct javadoc for append operation |  Minor | documentation | Nihal Jain | Subrat Mishra |
| [HBASE-20968](https://issues.apache.org/jira/browse/HBASE-20968) | list\_procedures\_test fails due to no matching regex |  Major | shell, test | Ted Yu | Duo Zhang |
| [HBASE-21084](https://issues.apache.org/jira/browse/HBASE-21084) | When cloning a snapshot including a split parent region, the split parent region of the cloned table will be online |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20940](https://issues.apache.org/jira/browse/HBASE-20940) | HStore.cansplit should not allow split to happen if it has references |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21128](https://issues.apache.org/jira/browse/HBASE-21128) | TestAsyncRegionAdminApi.testAssignRegionAndUnassignRegion is broken |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-20175](https://issues.apache.org/jira/browse/HBASE-20175) | hbase-spark needs scala dependency convergance |  Major | dependencies, hbase-connectors, spark | Mike Drob | Artem Ervits |
| [HBASE-21132](https://issues.apache.org/jira/browse/HBASE-21132) | return wrong result in rest multiget |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21136](https://issues.apache.org/jira/browse/HBASE-21136) | NPE in MetricsTableSourceImpl.updateFlushTime |  Major | metrics | Guanghao Zhang | Duo Zhang |
| [HBASE-20892](https://issues.apache.org/jira/browse/HBASE-20892) | [UI] Start / End keys are empty on table.jsp |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20741](https://issues.apache.org/jira/browse/HBASE-20741) | Split of a region with replicas creates all daughter regions and its replica in same server |  Major | read replicas | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21001](https://issues.apache.org/jira/browse/HBASE-21001) | ReplicationObserver fails to load in HBase 2.0.0 |  Major | . | Wei-Chiu Chuang | Guangxu Cheng |
| [HBASE-21052](https://issues.apache.org/jira/browse/HBASE-21052) | After restoring a snapshot, table.jsp page for the table gets stuck |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21171](https://issues.apache.org/jira/browse/HBASE-21171) | [amv2] Tool to parse a directory of MasterProcWALs standalone |  Major | amv2, test | Michael Stack | Michael Stack |
| [HBASE-21143](https://issues.apache.org/jira/browse/HBASE-21143) | Update findbugs-maven-plugin to 3.0.4 |  Major | pom | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21144](https://issues.apache.org/jira/browse/HBASE-21144) | AssignmentManager.waitForAssignment is not stable |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-21173](https://issues.apache.org/jira/browse/HBASE-21173) | Remove the duplicate HRegion#close in TestHRegion |  Minor | test | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21021](https://issues.apache.org/jira/browse/HBASE-21021) | Result returned by Append operation should be ordered |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-21181](https://issues.apache.org/jira/browse/HBASE-21181) | Use the same filesystem for wal archive directory and wal directory |  Major | . | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21179](https://issues.apache.org/jira/browse/HBASE-21179) | Fix the number of actions in responseTooSlow log |  Major | logging, rpc | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21182](https://issues.apache.org/jira/browse/HBASE-21182) | Failed to execute start-hbase.sh |  Major | . | Subrat Mishra | Toshihiro Suzuki |
| [HBASE-21206](https://issues.apache.org/jira/browse/HBASE-21206) | Scan with batch size may return incomplete cells |  Critical | Scanners | Zheng Hu | Zheng Hu |
| [HBASE-21102](https://issues.apache.org/jira/browse/HBASE-21102) | ServerCrashProcedure should select target server where no other replicas exist for the current region |  Major | Region Assignment | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21203](https://issues.apache.org/jira/browse/HBASE-21203) | TestZKMainServer#testCommandLineWorks won't pass with default 4lw whitelist |  Minor | test, Zookeeper | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20704](https://issues.apache.org/jira/browse/HBASE-20704) | Sometimes some compacted storefiles are not archived on region close |  Critical | Compaction | Francis Christopher Liu | Francis Christopher Liu |
| [HBASE-21223](https://issues.apache.org/jira/browse/HBASE-21223) | [amv2] Remove abort\_procedure from shell |  Critical | amv2, hbck2, shell | Michael Stack | Michael Stack |
| [HBASE-21212](https://issues.apache.org/jira/browse/HBASE-21212) | Wrong flush time when update flush metric |  Minor | . | Allan Yang | Allan Yang |
| [HBASE-21232](https://issues.apache.org/jira/browse/HBASE-21232) | Show table state in Tables view on Master home page |  Major | Operability, UI | Michael Stack | Michael Stack |
| [HBASE-20766](https://issues.apache.org/jira/browse/HBASE-20766) | Verify Replication Tool Has Typo "remove cluster" |  Trivial | . | Clay B. | Ferran Fernandez Garrido |
| [HBASE-21228](https://issues.apache.org/jira/browse/HBASE-21228) | Memory leak since AbstractFSWAL caches Thread object and never clean later |  Critical | wal | Allan Yang | Allan Yang |
| [HBASE-18451](https://issues.apache.org/jira/browse/HBASE-18451) | PeriodicMemstoreFlusher should inspect the queue before adding a delayed flush request |  Major | regionserver | Jean-Marc Spaggiari | Xu Cang |
| [HBASE-19418](https://issues.apache.org/jira/browse/HBASE-19418) | RANGE\_OF\_DELAY in PeriodicMemstoreFlusher should be configurable. |  Minor | . | Jean-Marc Spaggiari | Ramie Raufdeen |
| [HBASE-21196](https://issues.apache.org/jira/browse/HBASE-21196) | HTableMultiplexer clears the meta cache after every put operation |  Critical | Performance | Nihal Jain | Nihal Jain |
| [HBASE-21248](https://issues.apache.org/jira/browse/HBASE-21248) | Implement exponential backoff when retrying for ModifyPeerProcedure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-18549](https://issues.apache.org/jira/browse/HBASE-18549) | Unclaimed replication queues can go undetected |  Critical | Replication | Ashu Pachauri | Xu Cang |
| [HBASE-21219](https://issues.apache.org/jira/browse/HBASE-21219) | Hbase incremental backup fails with null pointer exception |  Major | backup&restore | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-21230](https://issues.apache.org/jira/browse/HBASE-21230) | BackupUtils#checkTargetDir doesn't compose error message correctly |  Minor | backup&restore | Ted Yu | liubangchen |
| [HBASE-20764](https://issues.apache.org/jira/browse/HBASE-20764) | build broken when latest commit is gpg signed |  Critical | build | Mike Drob | Mike Drob |
| [HBASE-21280](https://issues.apache.org/jira/browse/HBASE-21280) | Add anchors for each heading in UI |  Trivial | UI, Usability | Michael Stack | Michael Stack |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell should not be returned if it does not match QualifierFilter |  Critical | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21260](https://issues.apache.org/jira/browse/HBASE-21260) | The whole balancer plans might be aborted if there are more than one plans to move a same region |  Major | Balancer, master | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21238](https://issues.apache.org/jira/browse/HBASE-21238) | MapReduceHFileSplitterJob#run shouldn't call System.exit |  Minor | . | Ted Yu | Artem Ervits |
| [HBASE-21266](https://issues.apache.org/jira/browse/HBASE-21266) | Not running balancer because processing dead regionservers, but empty dead rs list |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21327](https://issues.apache.org/jira/browse/HBASE-21327) | Fix minor logging issue where we don't report servername if no associated SCP |  Trivial | amv2 | Michael Stack | Michael Stack |
| [HBASE-21055](https://issues.apache.org/jira/browse/HBASE-21055) | NullPointerException when balanceOverall() but server balance info is null |  Major | Balancer | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21291](https://issues.apache.org/jira/browse/HBASE-21291) | Add a test for bypassing stuck state-machine procedures |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21335](https://issues.apache.org/jira/browse/HBASE-21335) | Change the default wait time of HBCK2 tool |  Critical | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21292](https://issues.apache.org/jira/browse/HBASE-21292) | IdLock.getLockEntry() may hang if interrupted |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21200](https://issues.apache.org/jira/browse/HBASE-21200) | Memstore flush doesn't finish because of seekToPreviousRow() in memstore scanner. |  Critical | Scanners | dongjin2193.jeon | Toshihiro Suzuki |
| [HBASE-21178](https://issues.apache.org/jira/browse/HBASE-21178) | [BC break] : Get and Scan operation with a custom converter\_class not working |  Critical | shell | Subrat Mishra | Subrat Mishra |
| [HBASE-21334](https://issues.apache.org/jira/browse/HBASE-21334) | TestMergeTableRegionsProcedure is flakey |  Major | amv2, proc-v2, test | Duo Zhang | Duo Zhang |
| [HBASE-21355](https://issues.apache.org/jira/browse/HBASE-21355) | HStore's storeSize is calculated repeatedly which causing the confusing region split |  Blocker | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21356](https://issues.apache.org/jira/browse/HBASE-21356) | bulkLoadHFile API should ensure that rs has the source hfile's write permission |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21349](https://issues.apache.org/jira/browse/HBASE-21349) | Cluster is going down but CatalogJanitor and Normalizer try to run and fail noisely |  Minor | . | Michael Stack | Xu Cang |
| [HBASE-21342](https://issues.apache.org/jira/browse/HBASE-21342) | FileSystem in use may get closed by other bulk load call  in secure bulkLoad |  Major | . | mazhenlin | mazhenlin |
| [HBASE-21383](https://issues.apache.org/jira/browse/HBASE-21383) | Change refguide to point at hbck2 instead of hbck1 |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-21391](https://issues.apache.org/jira/browse/HBASE-21391) | RefreshPeerProcedure should also wait master initialized before executing |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-21371](https://issues.apache.org/jira/browse/HBASE-21371) | Hbase unable to compile against Hadoop trunk (3.3.0-SNAPSHOT) due to license error |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | Pre commit build is broken due to surefire plugin crashes |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-21424](https://issues.apache.org/jira/browse/HBASE-21424) | Change flakies and nightlies so scheduled less often |  Major | build | Michael Stack | Michael Stack |
| [HBASE-21422](https://issues.apache.org/jira/browse/HBASE-21422) | NPE in TestMergeTableRegionsProcedure.testMergeWithoutPONR |  Major | proc-v2, test | Duo Zhang | Duo Zhang |
| [HBASE-21407](https://issues.apache.org/jira/browse/HBASE-21407) | Resolve NPE in backup Master UI |  Minor | UI | Jingyun Tian | Jingyun Tian |
| [HBASE-21425](https://issues.apache.org/jira/browse/HBASE-21425) | 2.1.1 fails to start over 1.x data; namespace not assigned |  Critical | amv2 | Michael Stack | Michael Stack |
| [HBASE-21438](https://issues.apache.org/jira/browse/HBASE-21438) | TestAdmin2#testGetProcedures fails due to FailedProcedure inaccessible |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21430](https://issues.apache.org/jira/browse/HBASE-21430) | [hbase-connectors] Move hbase-spark\* modules to hbase-connectors repo |  Major | hbase-connectors, spark | Michael Stack | Michael Stack |
| [HBASE-21247](https://issues.apache.org/jira/browse/HBASE-21247) | Custom Meta WAL Provider doesn't default to custom WAL Provider whose configuration value is outside the enums in Providers |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-20604](https://issues.apache.org/jira/browse/HBASE-20604) | ProtobufLogReader#readNext can incorrectly loop to the same position in the stream until the the WAL is rolled |  Critical | Replication, wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-21439](https://issues.apache.org/jira/browse/HBASE-21439) | StochasticLoadBalancer RegionLoads aren’t being used in RegionLoad cost functions |  Major | Balancer | Ben Lau | Ben Lau |
| [HBASE-21437](https://issues.apache.org/jira/browse/HBASE-21437) | Bypassed procedure throw IllegalArgumentException when its state is WAITING\_TIMEOUT |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-13468](https://issues.apache.org/jira/browse/HBASE-13468) | hbase.zookeeper.quorum supports ipv6 address |  Major | . | Mingtao Zhang | maoling |
| [HBASE-21466](https://issues.apache.org/jira/browse/HBASE-21466) | WALProcedureStore uses wrong FileSystem if wal.dir is not under rootdir |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21452](https://issues.apache.org/jira/browse/HBASE-21452) | Illegal character in hbase counters group name |  Major | spark | Michael Stack | Michael Stack |
| [HBASE-21503](https://issues.apache.org/jira/browse/HBASE-21503) | Replication normal source can get stuck due potential race conditions between source wal reader and wal provider initialization threads. |  Blocker | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-21507](https://issues.apache.org/jira/browse/HBASE-21507) | Compaction failed when execute AbstractMultiFileWriter.beforeShipped() method |  Critical | Compaction, regionserver | lixiaobao | lixiaobao |
| [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | CellCodec Written To WAL Before It's Verified |  Critical | wal | David Mollitor | David Mollitor |
| [HBASE-21300](https://issues.apache.org/jira/browse/HBASE-21300) | Fix the wrong reference file path when restoring snapshots for tables with MOB columns |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21504](https://issues.apache.org/jira/browse/HBASE-21504) | If enable FIFOCompactionPolicy, a compaction may write a "empty" hfile whose maxTimeStamp is long max. This kind of hfile will never be archived. |  Critical | Compaction | xuming | Zheng Hu |
| [HBASE-21518](https://issues.apache.org/jira/browse/HBASE-21518) | TestMasterFailoverWithProcedures is flaky |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21479](https://issues.apache.org/jira/browse/HBASE-21479) | Individual tests in TestHRegionReplayEvents class are failing |  Major | . | Ted Yu | Peter Somogyi |
| [HBASE-21550](https://issues.apache.org/jira/browse/HBASE-21550) | Add a new method preCreateTableRegionInfos for MasterObserver which allows CPs to modify the TableDescriptor |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-21551](https://issues.apache.org/jira/browse/HBASE-21551) | Memory leak when use scan with STREAM at server side |  Blocker | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21559](https://issues.apache.org/jira/browse/HBASE-21559) | The RestoreSnapshotFromClientTestBase related UT are flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21453](https://issues.apache.org/jira/browse/HBASE-21453) | Convert ReadOnlyZKClient to DEBUG instead of INFO |  Major | logging, Zookeeper | Michael Stack | Sakthi |
| [HBASE-21568](https://issues.apache.org/jira/browse/HBASE-21568) | Disable use of BlockCache for LoadIncrementalHFiles |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-21582](https://issues.apache.org/jira/browse/HBASE-21582) | If call HBaseAdmin#snapshotAsync but forget call isSnapshotFinished, then SnapshotHFileCleaner will skip to run every time |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21575](https://issues.apache.org/jira/browse/HBASE-21575) | memstore above high watermark message is logged too much |  Minor | logging, regionserver | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21589](https://issues.apache.org/jira/browse/HBASE-21589) | TestCleanupMetaWAL fails |  Blocker | test, wal | Michael Stack | Michael Stack |
| [HBASE-21592](https://issues.apache.org/jira/browse/HBASE-21592) | quota.addGetResult(r)  throw  NPE |  Major | . | xuqinya | xuqinya |
| [HBASE-21498](https://issues.apache.org/jira/browse/HBASE-21498) | Master OOM when SplitTableRegionProcedure new CacheConfig and instantiate a new BlockCache |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21610](https://issues.apache.org/jira/browse/HBASE-21610) | numOpenConnections metric is set to -1 when zero server channel exist |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21620](https://issues.apache.org/jira/browse/HBASE-21620) | Problem in scan query when using more than one column prefix filter in some cases. |  Major | Scanners | Mohamed Mohideen Meeran | Zheng Hu |
| [HBASE-21621](https://issues.apache.org/jira/browse/HBASE-21621) | Reversed scan does not return expected  number of rows |  Critical | Scanners | Nihal Jain | Guanghao Zhang |
| [HBASE-21629](https://issues.apache.org/jira/browse/HBASE-21629) | draining\_servers.rb is broken |  Major | scripts | Nihal Jain | Nihal Jain |
| [HBASE-21545](https://issues.apache.org/jira/browse/HBASE-21545) | NEW\_VERSION\_BEHAVIOR breaks Get/Scan with specified columns |  Major | API | Andrey Elenskiy | Andrey Elenskiy |
| [HBASE-21646](https://issues.apache.org/jira/browse/HBASE-21646) | Flakey TestTableSnapshotInputFormat; DisableTable not completing... |  Major | test | Michael Stack | Michael Stack |
| [HBASE-21660](https://issues.apache.org/jira/browse/HBASE-21660) | Apply the cell to right memstore for increment/append operation |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21547](https://issues.apache.org/jira/browse/HBASE-21547) | Precommit uses master flaky list for other branches |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-21630](https://issues.apache.org/jira/browse/HBASE-21630) | [shell] Define ENDKEY == STOPROW (we have ENDROW) |  Trivial | shell | Michael Stack | Nihal Jain |
| [HBASE-21457](https://issues.apache.org/jira/browse/HBASE-21457) | BackupUtils#getWALFilesOlderThan refers to wrong FileSystem |  Major | . | Janos Gub | Ted Yu |
| [HBASE-21683](https://issues.apache.org/jira/browse/HBASE-21683) | Reset readsEnabled flag after successfully flushing the primary region |  Critical | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21618](https://issues.apache.org/jira/browse/HBASE-21618) | Scan with the same startRow(inclusive=true) and stopRow(inclusive=false) returns one result |  Critical | Client | Jermy Li | Guanghao Zhang |
| [HBASE-21614](https://issues.apache.org/jira/browse/HBASE-21614) | RIT recovery with ServerCrashProcedure doesn't account for all regions |  Critical | amv2 | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21695](https://issues.apache.org/jira/browse/HBASE-21695) | Fix flaky test TestRegionServerAbortTimeout |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21691](https://issues.apache.org/jira/browse/HBASE-21691) | Fix flaky test TestRecoveredEdits |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20220](https://issues.apache.org/jira/browse/HBASE-20220) | [RSGroup] Check if table exists in the cluster before moving it to the specified regionserver group |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21707](https://issues.apache.org/jira/browse/HBASE-21707) | Fix warnings in hbase-rsgroup module and also make the UTs more stable |  Major | Region Assignment, rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-21225](https://issues.apache.org/jira/browse/HBASE-21225) | Having RPC & Space quota on a table/Namespace doesn't allow space quota to be removed using 'NONE' |  Major | . | Sakthi | Sakthi |
| [HBASE-21639](https://issues.apache.org/jira/browse/HBASE-21639) | maxHeapUsage value not read properly from config during EntryBuffers initialization |  Minor | . | Bo Cui | Pankaj Kumar |
| [HBASE-20917](https://issues.apache.org/jira/browse/HBASE-20917) | MetaTableMetrics#stop references uninitialized requestsMap for non-meta region |  Major | meta, metrics | Ted Yu | Ted Yu |
| [HBASE-21657](https://issues.apache.org/jira/browse/HBASE-21657) | PrivateCellUtil#estimatedSerializedSizeOf has been the bottleneck in 100% scan case. |  Major | Performance | Zheng Hu | Zheng Hu |
| [HBASE-20854](https://issues.apache.org/jira/browse/HBASE-20854) | Wrong retries number in RpcRetryingCaller's log message |  Minor | Client, logging | Allan Yang | Allan Yang |
| [HBASE-21704](https://issues.apache.org/jira/browse/HBASE-21704) | The implementation of DistributedHBaseCluster.getServerHoldingRegion is incorrect |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21732](https://issues.apache.org/jira/browse/HBASE-21732) | Should call toUpperCase before using Enum.valueOf in some methods for ColumnFamilyDescriptor |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-21746](https://issues.apache.org/jira/browse/HBASE-21746) | Fix two concern cases in RegionMover |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21749](https://issues.apache.org/jira/browse/HBASE-21749) | RS UI may throw NPE and make rs-status page inaccessible with multiwal and replication |  Major | Replication, UI | Nihal Jain | Nihal Jain |
| [HBASE-21626](https://issues.apache.org/jira/browse/HBASE-21626) | log the regions blocking WAL from being archived |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21475](https://issues.apache.org/jira/browse/HBASE-21475) | Put mutation (having TTL set) added via co-processor is retrieved even after TTL expires |  Major | Coprocessors | Nihal Jain | Nihal Jain |
| [HBASE-21754](https://issues.apache.org/jira/browse/HBASE-21754) | ReportRegionStateTransitionRequest should be executed in priority executor |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21770](https://issues.apache.org/jira/browse/HBASE-21770) | Should deal with meta table in HRegionLocator.getAllRegionLocations |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21535](https://issues.apache.org/jira/browse/HBASE-21535) | Zombie Master detector is not working |  Critical | master | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21699](https://issues.apache.org/jira/browse/HBASE-21699) | Create table failed when using  SPLITS\_FILE =\> 'splits.txt' |  Blocker | Client, shell | huan | huan |
| [HBASE-21733](https://issues.apache.org/jira/browse/HBASE-21733) | SnapshotQuotaObserverChore should only fetch space quotas |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21644](https://issues.apache.org/jira/browse/HBASE-21644) | Modify table procedure runs infinitely for a table having region replication \> 1 |  Critical | Admin | Nihal Jain | Nihal Jain |
| [HBASE-21794](https://issues.apache.org/jira/browse/HBASE-21794) | Update the Coprocessor observer example given in section 111.1 of the ref guide. |  Minor | Coprocessors, documentation | Sakthi | Sakthi |
| [HBASE-21811](https://issues.apache.org/jira/browse/HBASE-21811) | region can be opened on two servers due to race condition with procedures and server reports |  Blocker | amv2 | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21765](https://issues.apache.org/jira/browse/HBASE-21765) | Website should point to lists.apache.org |  Minor | website | Sean Busbey | Surbhi Kochhar |
| [HBASE-21840](https://issues.apache.org/jira/browse/HBASE-21840) | TestHRegionWithInMemoryFlush fails with NPE |  Blocker | test | Duo Zhang | Duo Zhang |
| [HBASE-21795](https://issues.apache.org/jira/browse/HBASE-21795) | Client application may get stuck (time bound) if a table modify op is called immediately after split op |  Critical | amv2 | Nihal Jain | Nihal Jain |
| [HBASE-20485](https://issues.apache.org/jira/browse/HBASE-20485) | Copy constructor of Scan doesn't copy the readType and replicaId |  Minor | . | Chia-Ping Tsai | Nihal Jain |
| [HBASE-21843](https://issues.apache.org/jira/browse/HBASE-21843) | RegionGroupingProvider breaks the meta wal file name pattern which may cause data loss for meta region |  Blocker | wal | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21775](https://issues.apache.org/jira/browse/HBASE-21775) | The BufferedMutator doesn't ever refresh region location cache |  Major | Client | Tommy Li | Tommy Li |
| [HBASE-18484](https://issues.apache.org/jira/browse/HBASE-18484) | VerifyRep by snapshot  does not work when Yarn / SourceHBase / PeerHBase located in different HDFS clusters |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-21862](https://issues.apache.org/jira/browse/HBASE-21862) | IPCUtil.wrapException should keep the original exception types for all the connection exceptions |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21854](https://issues.apache.org/jira/browse/HBASE-21854) | Race condition in TestProcedureSkipPersistence |  Minor | proc-v2 | Peter Somogyi | Peter Somogyi |
| [HBASE-21785](https://issues.apache.org/jira/browse/HBASE-21785) | master reports open regions as RITs and also messes up rit age metric |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21889](https://issues.apache.org/jira/browse/HBASE-21889) | Use thrift 0.12.0 when build thrift by compile-thrift profile |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21890](https://issues.apache.org/jira/browse/HBASE-21890) | Use execute instead of submit to submit a task in RemoteProcedureDispatcher |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21900](https://issues.apache.org/jira/browse/HBASE-21900) | Infinite loop in AsyncMetaRegionLocator if we can not get the location for meta |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21910](https://issues.apache.org/jira/browse/HBASE-21910) | The nonce implementation is wrong for AsyncTable |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21899](https://issues.apache.org/jira/browse/HBASE-21899) | Fix missing variables in slf4j Logger |  Trivial | logging | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-21928](https://issues.apache.org/jira/browse/HBASE-21928) | Deprecated HConstants.META\_QOS |  Major | Client, rpc | Zheng Hu | Duo Zhang |
| [HBASE-21938](https://issues.apache.org/jira/browse/HBASE-21938) | Add a new ClusterMetrics.Option SERVERS\_NAME to only return the live region servers's name without metrics |  Major | . | Guanghao Zhang | Yi Mei |
| [HBASE-20587](https://issues.apache.org/jira/browse/HBASE-20587) | Replace Jackson with shaded thirdparty gson |  Major | dependencies | Josh Elser | Duo Zhang |
| [HBASE-21929](https://issues.apache.org/jira/browse/HBASE-21929) | The checks at the end of TestRpcClientLeaks are not executed |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21922](https://issues.apache.org/jira/browse/HBASE-21922) | BloomContext#sanityCheck may failed when use ROWPREFIX\_DELIMITED bloom filter |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21505](https://issues.apache.org/jira/browse/HBASE-21505) | Several inconsistencies on information reported for Replication Sources by hbase shell status 'replication' command. |  Major | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21942](https://issues.apache.org/jira/browse/HBASE-21942) | [UI] requests per second is incorrect in rsgroup page(rsgroup.jsp) |  Minor | . | xuqinya | xuqinya |
| [HBASE-21947](https://issues.apache.org/jira/browse/HBASE-21947) | TestShell is broken after we remove the jackson dependencies |  Major | dependencies, shell | Duo Zhang | Duo Zhang |
| [HBASE-21943](https://issues.apache.org/jira/browse/HBASE-21943) | The usage of RegionLocations.mergeRegionLocations is wrong for async client |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21961](https://issues.apache.org/jira/browse/HBASE-21961) | Infinite loop in AsyncNonMetaRegionLocator if there is only one region and we tried to locate before a non empty row |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-20724](https://issues.apache.org/jira/browse/HBASE-20724) | Sometimes some compacted storefiles are still opened after region failover |  Critical | . | Francis Christopher Liu | Guanghao Zhang |
| [HBASE-21450](https://issues.apache.org/jira/browse/HBASE-21450) | [documentation] Point spark doc at hbase-connectors spark |  Major | documentation, hbase-connectors, spark | Michael Stack | Michael Stack |
| [HBASE-21487](https://issues.apache.org/jira/browse/HBASE-21487) | Concurrent modify table ops can lead to unexpected results |  Major | . | Syeda Arshiya Tabreen | Syeda Arshiya Tabreen |
| [HBASE-21980](https://issues.apache.org/jira/browse/HBASE-21980) | Fix typo in AbstractTestAsyncTableRegionReplicasRead |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21983](https://issues.apache.org/jira/browse/HBASE-21983) | Should track the scan metrics in AsyncScanSingleRegionRpcRetryingCaller if scan metrics is enabled |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21866](https://issues.apache.org/jira/browse/HBASE-21866) | Do not move the table to null rsgroup when creating an existing table |  Major | proc-v2, rsgroup | Xiang Li | Xiang Li |
| [HBASE-21740](https://issues.apache.org/jira/browse/HBASE-21740) | NPE happens while shutdown the RS |  Major | . | lujie | lujie |
| [HBASE-21565](https://issues.apache.org/jira/browse/HBASE-21565) | Delete dead server from dead server list too early leads to concurrent Server Crash Procedures(SCP) for a same server |  Critical | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21915](https://issues.apache.org/jira/browse/HBASE-21915) | FileLink$FileLinkInputStream doesn't implement CanUnbuffer |  Major | Filesystem Integration | Josh Elser | Josh Elser |
| [HBASE-21960](https://issues.apache.org/jira/browse/HBASE-21960) | RESTServletContainer not configured for REST Jetty server |  Blocker | REST | Josh Elser | Josh Elser |
| [HBASE-20754](https://issues.apache.org/jira/browse/HBASE-20754) | quickstart guide should instruct folks to set JAVA\_HOME to a JDK installation. |  Major | documentation | Sean Busbey | Gokul |
| [HBASE-22006](https://issues.apache.org/jira/browse/HBASE-22006) | Fix branch-2.1 findbugs warning; causes nightly show as failed. |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22010](https://issues.apache.org/jira/browse/HBASE-22010) | docs on upgrade from 2.0,2.1 -\> 2.2 renders incorrectly |  Minor | documentation | Sean Busbey | Sean Busbey |
| [HBASE-21990](https://issues.apache.org/jira/browse/HBASE-21990) | puppycrawl checkstyle dtds 404... moved to sourceforge |  Major | build | Michael Stack | Michael Stack |
| [HBASE-21736](https://issues.apache.org/jira/browse/HBASE-21736) | Remove the server from online servers before scheduling SCP for it in hbck |  Major | hbck2, test | Duo Zhang | Duo Zhang |
| [HBASE-22045](https://issues.apache.org/jira/browse/HBASE-22045) | Mutable range histogram reports incorrect outliers |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-22061](https://issues.apache.org/jira/browse/HBASE-22061) | SplitTableRegionProcedure should hold the lock of its daughter regions |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-22095](https://issues.apache.org/jira/browse/HBASE-22095) | Taking a snapshot fails in local mode |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21619](https://issues.apache.org/jira/browse/HBASE-21619) | Fix warning message caused by incorrect ternary operator evaluation |  Trivial | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22074](https://issues.apache.org/jira/browse/HBASE-22074) | Should use procedure store to persist the state in reportRegionStateTransition |  Blocker | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-22067](https://issues.apache.org/jira/browse/HBASE-22067) | Fix log line in StochasticLoadBalancer when balancer is an ill-fit for cluster size |  Major | Balancer | Xu Cang | Xu Cang |
| [HBASE-22092](https://issues.apache.org/jira/browse/HBASE-22092) | Typo in block cache monitoring documentation |  Trivial | documentation | William Shen | William Shen |
| [HBASE-22057](https://issues.apache.org/jira/browse/HBASE-22057) | Impose upper-bound on size of ZK ops sent in a single multi() |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20662](https://issues.apache.org/jira/browse/HBASE-20662) | Increasing space quota on a violated table does not remove SpaceViolationPolicy.DISABLE enforcement |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-22100](https://issues.apache.org/jira/browse/HBASE-22100) | False positive for error prone warnings in pre commit job |  Minor | build | Duo Zhang | Duo Zhang |
| [HBASE-21781](https://issues.apache.org/jira/browse/HBASE-21781) | list\_deadservers elapsed time is incorrect |  Major | shell | xuqinya | xuqinya |
| [HBASE-20755](https://issues.apache.org/jira/browse/HBASE-20755) | quickstart note about Web UI port changes in ref guide is rendered incorrectly |  Minor | documentation | Sean Busbey | Subrat Mishra |
| [HBASE-22053](https://issues.apache.org/jira/browse/HBASE-22053) | zookeeper URL links in documentation are failing with 404 |  Minor | documentation | Subrat Mishra | Subrat Mishra |
| [HBASE-21135](https://issues.apache.org/jira/browse/HBASE-21135) | Build fails on windows as it fails to parse windows path during license check |  Major | build | Nihal Jain | Nihal Jain |
| [HBASE-22123](https://issues.apache.org/jira/browse/HBASE-22123) | REST gateway reports Insufficient permissions exceptions as 404 Not Found |  Minor | REST | Tomas Sokorai | Tomas Sokorai |
| [HBASE-22121](https://issues.apache.org/jira/browse/HBASE-22121) | AsyncAdmin can not deal with non default meta replica |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21688](https://issues.apache.org/jira/browse/HBASE-21688) | Address WAL filesystem issues |  Major | Filesystem Integration, wal | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-20911](https://issues.apache.org/jira/browse/HBASE-20911) | correct Swtich/case indentation in formatter template for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22133](https://issues.apache.org/jira/browse/HBASE-22133) | Forward port HBASE-22073 "/rits.jsp throws an exception if no procedure" to branch-2.2+ |  Major | UI | Duo Zhang | Duo Zhang |
| [HBASE-20912](https://issues.apache.org/jira/browse/HBASE-20912) | Add import order config in dev support for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22070](https://issues.apache.org/jira/browse/HBASE-22070) | Checking restoreDir in RestoreSnapshotHelper |  Minor | snapshots | Vincent Choi | Vincent Choi |
| [HBASE-22177](https://issues.apache.org/jira/browse/HBASE-22177) | Do not recreate IOException in RawAsyncHBaseAdmin.adminCall |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22179](https://issues.apache.org/jira/browse/HBASE-22179) | Fix RawAsyncHBaseAdmin.getCompactionState |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22180](https://issues.apache.org/jira/browse/HBASE-22180) | Make TestBlockEvictionFromClient.testBlockRefCountAfterSplits more stable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22178](https://issues.apache.org/jira/browse/HBASE-22178) | Introduce a createTableAsync with TableDescriptor method in Admin |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22173](https://issues.apache.org/jira/browse/HBASE-22173) | Update doc on integration tests |  Minor | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22163](https://issues.apache.org/jira/browse/HBASE-22163) | Should not archive the compacted store files when region warmup |  Blocker | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22185](https://issues.apache.org/jira/browse/HBASE-22185) | RAMQueueEntry#writeToCache should freeBlock if any exception encountered instead of the IOException catch block |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20934](https://issues.apache.org/jira/browse/HBASE-20934) | Create an hbase-connectors repository; commit new kafka connect here |  Critical | kafka, mapreduce, REST, spark, Thrift | Michael Stack | Michael Stack |
| [HBASE-22198](https://issues.apache.org/jira/browse/HBASE-22198) | Fix flakey TestAsyncTableGetMultiThreaded |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22194](https://issues.apache.org/jira/browse/HBASE-22194) | Snapshot unittests fail on Windows due to invalid file path uri |  Major | regionserver, test | Bahram Chehrazy | Bahram Chehrazy |
| [HBASE-22144](https://issues.apache.org/jira/browse/HBASE-22144) | MultiRowRangeFilter does not work with reversed scans |  Critical | Filters, Scanners | Josh Elser | Josh Elser |
| [HBASE-22202](https://issues.apache.org/jira/browse/HBASE-22202) | Fix new findbugs issues after we upgrade hbase-thirdparty dependencies |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-22207](https://issues.apache.org/jira/browse/HBASE-22207) | Fix flakey TestAssignmentManager.testAssignSocketTimeout |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22235](https://issues.apache.org/jira/browse/HBASE-22235) | OperationStatus.{SUCCESS\|FAILURE\|NOT\_RUN} are not visible to 3rd party coprocessors |  Major | Coprocessors | Lars Hofhansl | Andrew Kyle Purtell |
| [HBASE-22150](https://issues.apache.org/jira/browse/HBASE-22150) | rssStub in HRegionServer is not thread safe and should not directly be used |  Major | regionserver | Bahram Chehrazy | Bahram Chehrazy |
| [HBASE-21959](https://issues.apache.org/jira/browse/HBASE-21959) | CompactionTool should close the store it uses for compacting files, in order to properly archive compacted files. |  Major | tooling | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22222](https://issues.apache.org/jira/browse/HBASE-22222) | Site build fails after hbase-thirdparty upgrade |  Blocker | website | Peter Somogyi | Duo Zhang |
| [HBASE-22278](https://issues.apache.org/jira/browse/HBASE-22278) | RawAsyncHBaseAdmin should not use cached region location |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22282](https://issues.apache.org/jira/browse/HBASE-22282) | Should deal with error in the callback of RawAsyncHBaseAdmin.splitRegion methods |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22206](https://issues.apache.org/jira/browse/HBASE-22206) | dist.apache.org must not be used for public downloads |  Major | website | Sebb | Dima Spivak |
| [HBASE-22268](https://issues.apache.org/jira/browse/HBASE-22268) | Update shading for javax.activation |  Minor | hadoop3, java, shading | Adam Antal | Adam Antal |
| [HBASE-22286](https://issues.apache.org/jira/browse/HBASE-22286) | License handling incorrectly lists CDDL/GPLv2+CE as safe to not aggregate |  Critical | build, community | Sean Busbey | Sean Busbey |
| [HBASE-22200](https://issues.apache.org/jira/browse/HBASE-22200) | WALSplitter.hasRecoveredEdits should use same FS instance from WAL region dir |  Major | wal | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22230](https://issues.apache.org/jira/browse/HBASE-22230) | REST Server drops connection on long scans |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22292](https://issues.apache.org/jira/browse/HBASE-22292) | PreemptiveFastFailInterceptor clean repeatedFailuresMap issue |  Blocker | . | zou | zou |
| [HBASE-22298](https://issues.apache.org/jira/browse/HBASE-22298) | branch-2.2 nightly fails "[ForOverride] Method annotated @ForOverride must have protected or package-private visibility" |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22299](https://issues.apache.org/jira/browse/HBASE-22299) | Documentation has incorrect default number of versions |  Trivial | documentation | Peter Somogyi | Sayed Anisul Hoque |
| [HBASE-22086](https://issues.apache.org/jira/browse/HBASE-22086) | space quota issue: deleting snapshot doesn't update the usage of table |  Minor | . | Ajeet Rai | Sakthi |
| [HBASE-22323](https://issues.apache.org/jira/browse/HBASE-22323) | Thrift generation broken |  Major | Thrift | Jan Hentschel | Jan Hentschel |
| [HBASE-22236](https://issues.apache.org/jira/browse/HBASE-22236) | AsyncNonMetaRegionLocator should not cache HRegionLocation with null location |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22054](https://issues.apache.org/jira/browse/HBASE-22054) | Space Quota: Compaction is not working for super user in case of NO\_WRITES\_COMPACTIONS |  Minor | . | Ajeet Rai | Sakthi |
| [HBASE-22340](https://issues.apache.org/jira/browse/HBASE-22340) | Corrupt KeyValue is silently ignored |  Critical | wal | Peter Somogyi | Peter Somogyi |
| [HBASE-22350](https://issues.apache.org/jira/browse/HBASE-22350) | Rewrite TestClientOperationTimeout so we do not timeout when creating table |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22354](https://issues.apache.org/jira/browse/HBASE-22354) | master never sets abortRequested, and thus abort timeout doesn't work for it |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22190](https://issues.apache.org/jira/browse/HBASE-22190) | SnapshotFileCache may fail to load the correct snapshot file list when there is an on-going snapshot operation |  Blocker | snapshots | Duo Zhang | Duo Zhang |
| [HBASE-22343](https://issues.apache.org/jira/browse/HBASE-22343) | Make procedure retry interval configurable in test |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-22047](https://issues.apache.org/jira/browse/HBASE-22047) | LeaseException in Scan should be retired |  Major | Client, Scanners | Allan Yang | Igor Rudenko |
| [HBASE-22314](https://issues.apache.org/jira/browse/HBASE-22314) | shaded byo-hadoop client should list needed hadoop modules as provided scope to avoid inclusion of unnecessary transitive depednencies |  Major | hadoop2, hadoop3, shading | Sean Busbey | Sean Busbey |
| [HBASE-22312](https://issues.apache.org/jira/browse/HBASE-22312) | Hadoop 3 profile for hbase-shaded-mapreduce should like mapreduce as a provided dependency |  Major | mapreduce, shading | Sean Busbey | Sean Busbey |
| [HBASE-21467](https://issues.apache.org/jira/browse/HBASE-21467) | Fix flaky test TestCoprocessorClassLoader.testCleanupOldJars |  Minor | . | OrDTesters | OrDTesters |
| [HBASE-21070](https://issues.apache.org/jira/browse/HBASE-21070) | SnapshotFileCache won't update for snapshots stored in S3 |  Critical | snapshots | Zach York | Zach York |
| [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | Change rubocop config for max line length of 100 |  Minor | community, shell | Umesh Agashe | Murtaza Hassan |
| [HBASE-22360](https://issues.apache.org/jira/browse/HBASE-22360) | Abort timer doesn't set when abort is called during graceful shutdown process |  Major | regionserver | Bahram Chehrazy | Bahram Chehrazy |
| [HBASE-21777](https://issues.apache.org/jira/browse/HBASE-21777) | "Tune compaction throughput" debug messages even when nothing has changed |  Trivial | Compaction | Andrew Kyle Purtell | Tak-Lon (Stephen) Wu |
| [HBASE-22324](https://issues.apache.org/jira/browse/HBASE-22324) |  loss a mass of data when the sequenceId of cells greater than Integer.Max, because MemStoreMergerSegmentsIterator can not merge segments |  Blocker | in-memory-compaction | chenyang | ChenYang |
| [HBASE-22274](https://issues.apache.org/jira/browse/HBASE-22274) | Cell size limit check on append should consider cell's previous size. |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-22376](https://issues.apache.org/jira/browse/HBASE-22376) | master can fail to start w/NPE if lastflushedseqids file is empty |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22378](https://issues.apache.org/jira/browse/HBASE-22378) | HBase Canary fails with TableNotFoundException when table deleted during Canary run |  Minor | canary | Caroline | Caroline |
| [HBASE-21048](https://issues.apache.org/jira/browse/HBASE-21048) | Get LogLevel is not working from console in secure environment |  Major | . | Chandra Sekhar | Wei-Chiu Chuang |
| [HBASE-22404](https://issues.apache.org/jira/browse/HBASE-22404) | Open/Close region request may be executed twice when master restart |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22424](https://issues.apache.org/jira/browse/HBASE-22424) | Interactions in RSGroup test classes will cause TestRSGroupsAdmin2.testMoveServersAndTables and TestRSGroupsBalance.testGroupBalance flaky |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22425](https://issues.apache.org/jira/browse/HBASE-22425) | Balance shell command broken in HBase-3.0.0 |  Blocker | shell | Zheng Hu | Zheng Hu |
| [HBASE-20970](https://issues.apache.org/jira/browse/HBASE-20970) | Update hadoop check versions for hadoop3 in hbase-personality |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22442](https://issues.apache.org/jira/browse/HBASE-22442) | Nightly build is failing with hadoop 3.x |  Major | build, hadoop3 | Duo Zhang | Duo Zhang |
| [HBASE-22226](https://issues.apache.org/jira/browse/HBASE-22226) | Incorrect level for headings in asciidoc |  Trivial | documentation | Peter Somogyi | Murtaza Hassan |
| [HBASE-22440](https://issues.apache.org/jira/browse/HBASE-22440) | HRegionServer#getWalGroupsReplicationStatus() throws NPE |  Major | regionserver, Replication | puleya7 | puleya7 |
| [HBASE-22462](https://issues.apache.org/jira/browse/HBASE-22462) | Should run a 'mvn install' at the end of hadoop check in pre commit job |  Major | build | Duo Zhang | Guanghao Zhang |
| [HBASE-21800](https://issues.apache.org/jira/browse/HBASE-21800) | RegionServer aborted due to NPE from MetaTableMetrics coprocessor |  Critical | Coprocessors, meta, metrics, Operability | Sakthi | Sakthi |
| [HBASE-21991](https://issues.apache.org/jira/browse/HBASE-21991) | Fix MetaMetrics issues - [Race condition, Faulty remove logic], few improvements |  Major | Coprocessors, metrics | Sakthi | Sakthi |
| [HBASE-22456](https://issues.apache.org/jira/browse/HBASE-22456) | Polish TestSplitTransitionOnCluster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22473](https://issues.apache.org/jira/browse/HBASE-22473) | Split TestSCP |  Major | Recovery, test | Duo Zhang | Duo Zhang |
| [HBASE-22441](https://issues.apache.org/jira/browse/HBASE-22441) | BucketCache NullPointerException in cacheBlock |  Major | BucketCache | Lijin Bin | Lijin Bin |
| [HBASE-22003](https://issues.apache.org/jira/browse/HBASE-22003) | Fix flaky test TestVerifyReplication.testHBase14905 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22471](https://issues.apache.org/jira/browse/HBASE-22471) | Our nightly jobs for master and branch-2 are still using hadoop-2.7.1 in integration test |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22486](https://issues.apache.org/jira/browse/HBASE-22486) | Fix flaky test TestLockManager |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22485](https://issues.apache.org/jira/browse/HBASE-22485) | Fix failed ut TestClusterRestartFailover |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22487](https://issues.apache.org/jira/browse/HBASE-22487) | getMostLoadedRegions is unused |  Trivial | regionserver | Clay B. | Clay B. |
| [HBASE-22503](https://issues.apache.org/jira/browse/HBASE-22503) | Failed to upgrade to 2.2+ as the global permission which storaged in zk is not right |  Blocker | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22502](https://issues.apache.org/jira/browse/HBASE-22502) | Purge the logs when we reach the EOF for the last wal file when replication |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22490](https://issues.apache.org/jira/browse/HBASE-22490) | Nightly client integration test fails with hadoop-3 |  Major | build | Duo Zhang | Guanghao Zhang |
| [HBASE-22522](https://issues.apache.org/jira/browse/HBASE-22522) | The integration test in master branch's nightly job has error "ERROR: Only found 1050 rows." |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22513](https://issues.apache.org/jira/browse/HBASE-22513) | Admin#getQuota does not work correctly if exceedThrottleQuota is set |  Major | Quotas | Yi Mei | Yi Mei |
| [HBASE-22518](https://issues.apache.org/jira/browse/HBASE-22518) | yetus personality is treating branch-1.4 like earlier branches for hadoopcheck |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-22546](https://issues.apache.org/jira/browse/HBASE-22546) | TestRegionServerHostname#testRegionServerHostname fails reliably for me |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22549](https://issues.apache.org/jira/browse/HBASE-22549) | Document how to re-run github PR checks |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-22525](https://issues.apache.org/jira/browse/HBASE-22525) | Perf improvement for ProcedureManager over iteration |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22520](https://issues.apache.org/jira/browse/HBASE-22520) | Avoid possible NPE in HalfStoreFileReader seekBefore() |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22453](https://issues.apache.org/jira/browse/HBASE-22453) | A "NullPointerException" could be thrown; "tableDescriptor" is nullable |  Critical | backup&restore | lixiaobao | lixiaobao |
| [HBASE-22481](https://issues.apache.org/jira/browse/HBASE-22481) | Javadoc Warnings: reference not found |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22484](https://issues.apache.org/jira/browse/HBASE-22484) | Javadoc Warnings: Fix warnings coming due to @result tag in TestCoprocessorWhitelistMasterObserver |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22551](https://issues.apache.org/jira/browse/HBASE-22551) | TestMasterOperationsForRegionReplicas is flakey |  Major | read replicas, test | Duo Zhang | Duo Zhang |
| [HBASE-22552](https://issues.apache.org/jira/browse/HBASE-22552) | Rewrite TestEndToEndSplitTransaction.testCanSplitJustAfterASplit |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22563](https://issues.apache.org/jira/browse/HBASE-22563) | Reduce retained jobs for Jenkins pipelines |  Major | . | Josh Elser | Josh Elser |
| [HBASE-22530](https://issues.apache.org/jira/browse/HBASE-22530) | The metrics of store files count of region are returned to clients incorrectly |  Minor | metrics, regionserver | Eungsop Yoo | Eungsop Yoo |
| [HBASE-22562](https://issues.apache.org/jira/browse/HBASE-22562) | PressureAwareThroughputController#skipControl never invoked |  Trivial | Operability | Josh Elser | Josh Elser |
| [HBASE-22565](https://issues.apache.org/jira/browse/HBASE-22565) | Javadoc Warnings: @see cannot be used in inline documentation |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22605](https://issues.apache.org/jira/browse/HBASE-22605) | Ref guide includes dev guidance only applicable to EOM versions |  Trivial | documentation | Sean Busbey | Mingliang Liu |
| [HBASE-16002](https://issues.apache.org/jira/browse/HBASE-16002) | Many DataType constructors are not public |  Major | . | Nick Dimiduk | Jan Hentschel |
| [HBASE-22611](https://issues.apache.org/jira/browse/HBASE-22611) | hbase-common module's class "org.apache.hadoop.hbase.io.encoding.RowIndexCodecV1" DataOutputStream is not closed. |  Major | io | yuliangwan | yuliangwan |
| [HBASE-22617](https://issues.apache.org/jira/browse/HBASE-22617) | Recovered WAL directories not getting cleaned up |  Blocker | wal | Abhishek Singh Chouhan | Duo Zhang |
| [HBASE-22169](https://issues.apache.org/jira/browse/HBASE-22169) | Open region failed cause memory leak |  Critical | . | Bing Xiao | Bing Xiao |
| [HBASE-22477](https://issues.apache.org/jira/browse/HBASE-22477) | Throwing exception when meta region is not in OPEN state in client registry may crash a master |  Major | Client, master, meta | Duo Zhang | Duo Zhang |
| [HBASE-13798](https://issues.apache.org/jira/browse/HBASE-13798) | TestFromClientSide\* don't close the Table |  Trivial | test | Matteo Bertozzi | Andor Molnar |
| [HBASE-22637](https://issues.apache.org/jira/browse/HBASE-22637) | fix flaky TestMetaTableMetrics test |  Major | metrics, test | Mate Szalay-Beko | Mate Szalay-Beko |
| [HBASE-22652](https://issues.apache.org/jira/browse/HBASE-22652) | Flakey TestLockManager; test timed out after 780 seconds |  Major | proc-v2 | Michael Stack | Michael Stack |
| [HBASE-22582](https://issues.apache.org/jira/browse/HBASE-22582) | The Compaction writer may access the lastCell whose memory has been released when appending fileInfo in the final |  Major | Compaction | Zheng Hu | Zheng Hu |
| [HBASE-22656](https://issues.apache.org/jira/browse/HBASE-22656) | [Metrics]  Tabe metrics 'BatchPut' and 'BatchDelete' are never updated |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-22686](https://issues.apache.org/jira/browse/HBASE-22686) | ZkSplitLogWorkerCoordination doesn't allow a regionserver to pick up all of the split work it is capable of |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22681](https://issues.apache.org/jira/browse/HBASE-22681) | The 'assert highestUnsyncedTxid \< entry.getTxid();' in AbstractFWAL.append may fail when using AsyncFSWAL |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-22571](https://issues.apache.org/jira/browse/HBASE-22571) | Javadoc Warnings related to @return tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22586](https://issues.apache.org/jira/browse/HBASE-22586) | Javadoc Warnings related to @param tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22414](https://issues.apache.org/jira/browse/HBASE-22414) | Interruption of moving regions in RSGroup will cause regions on wrong rs |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22684](https://issues.apache.org/jira/browse/HBASE-22684) | The log rolling request maybe canceled immediately in LogRoller due to a race |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-22661](https://issues.apache.org/jira/browse/HBASE-22661) | list\_regions command in hbase shell is broken |  Major | shell | Toshihiro Suzuki | Duo Zhang |
| [HBASE-22700](https://issues.apache.org/jira/browse/HBASE-22700) | Incorrect timeout in recommended ZooKeeper configuration |  Minor | documentation | Peter Somogyi | maoling |
| [HBASE-20368](https://issues.apache.org/jira/browse/HBASE-20368) | Fix RIT stuck when a rsgroup has no online servers but AM's pendingAssginQueue is cleared |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21426](https://issues.apache.org/jira/browse/HBASE-21426) | TestEncryptionKeyRotation.testCFKeyRotation is flaky |  Major | . | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22720](https://issues.apache.org/jira/browse/HBASE-22720) | Incorrect link for hbase.unittests |  Trivial | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-22603](https://issues.apache.org/jira/browse/HBASE-22603) | Javadoc Warnings related to @link tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22722](https://issues.apache.org/jira/browse/HBASE-22722) | Upgrade jackson databind dependencies to 2.9.9.1 |  Blocker | dependencies | Duo Zhang | Duo Zhang |
| [HBASE-22715](https://issues.apache.org/jira/browse/HBASE-22715) | All scan requests should be handled by scan handler threads in RWQueueRpcExecutor |  Minor | . | Jeongdae Kim | Jeongdae Kim |
| [HBASE-22733](https://issues.apache.org/jira/browse/HBASE-22733) | TestSplitTransactionOnCluster.testMasterRestartAtRegionSplitPendingCatalogJanitor is flakey |  Major | . | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22751](https://issues.apache.org/jira/browse/HBASE-22751) | table.jsp fails if ugly regions in table |  Major | UI | Michael Stack | Michael Stack |
| [HBASE-22714](https://issues.apache.org/jira/browse/HBASE-22714) | BuffferedMutatorParams opertationTimeOut() is misspelt |  Trivial | Client | Thanh Nm | Thanh Nm |
| [HBASE-22758](https://issues.apache.org/jira/browse/HBASE-22758) | Remove the unneccesary info cf deletion in DeleteTableProcedure#deleteFromMeta |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22408](https://issues.apache.org/jira/browse/HBASE-22408) | add a metric for regions OPEN on non-live servers |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22145](https://issues.apache.org/jira/browse/HBASE-22145) | windows hbase-env causes hbase cli/etc to ignore HBASE\_OPTS |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22779](https://issues.apache.org/jira/browse/HBASE-22779) | TestTableShell is broken |  Major | Client, shell | Duo Zhang | Junhong Xu |
| [HBASE-22773](https://issues.apache.org/jira/browse/HBASE-22773) | when set blockSize option in Performance Evaluation tool, error occurs:ERROR: Unrecognized option/command: --blockSize=131072 |  Minor | mapreduce | dingwei2019 | dingwei2019 |
| [HBASE-22778](https://issues.apache.org/jira/browse/HBASE-22778) | Upgrade jasckson databind to 2.9.9.2 |  Blocker | dependencies | Duo Zhang | niuyulin |
| [HBASE-22793](https://issues.apache.org/jira/browse/HBASE-22793) | RPC server connection is logging user as NULL principal |  Minor | rpc | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-22801](https://issues.apache.org/jira/browse/HBASE-22801) | Maven build issue on Github PRs |  Major | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22539](https://issues.apache.org/jira/browse/HBASE-22539) | WAL corruption due to early DBBs re-use when Durability.ASYNC\_WAL is used |  Blocker | rpc, wal | Wellington Chevreuil | Duo Zhang |
| [HBASE-22115](https://issues.apache.org/jira/browse/HBASE-22115) | HBase RPC aspires to grow an infinite tree of trace scopes; some other places are also unsafe |  Critical | rpc, tracing | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22417](https://issues.apache.org/jira/browse/HBASE-22417) | DeleteTableProcedure.deleteFromMeta method should remove table from Master's table descriptors cache |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22838](https://issues.apache.org/jira/browse/HBASE-22838) | assembly:single failure: user id or group id 'xxxxx' is too big |  Major | build | Viraj Jasani | Viraj Jasani |
| [HBASE-22837](https://issues.apache.org/jira/browse/HBASE-22837) | Move "Custom WAL Directory" section from "Bulk Loading" to "Write Ahead Log (WAL)" chapter |  Minor | documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22632](https://issues.apache.org/jira/browse/HBASE-22632) | SplitTableRegionProcedure and MergeTableRegionsProcedure should skip store files for unknown column families |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-22856](https://issues.apache.org/jira/browse/HBASE-22856) | HBASE-Find-Flaky-Tests fails with pip error |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-22860](https://issues.apache.org/jira/browse/HBASE-22860) | Master's webui returns NPE/HTTP 500 under maintenance mode |  Major | master, UI | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-22873](https://issues.apache.org/jira/browse/HBASE-22873) | Typo in block caching docs |  Minor | documentation | Shuai Lin | Shuai Lin |
| [HBASE-22870](https://issues.apache.org/jira/browse/HBASE-22870) | reflection fails to access a private nested class |  Major | master | ranpanfeng | ranpanfeng |
| [HBASE-22875](https://issues.apache.org/jira/browse/HBASE-22875) | TestShell and TestAdminShell2 are broken |  Major | shell, test | Duo Zhang | Duo Zhang |
| [HBASE-22882](https://issues.apache.org/jira/browse/HBASE-22882) | TestFlushSnapshotFromClient#testConcurrentSnapshottingAttempts is flakey (was written flakey) |  Major | test | Michael Stack | Michael Stack |
| [HBASE-22863](https://issues.apache.org/jira/browse/HBASE-22863) | Avoid Jackson versions and dependencies with known CVEs |  Major | dependencies | Viraj Jasani | Viraj Jasani |
| [HBASE-22601](https://issues.apache.org/jira/browse/HBASE-22601) | Misconfigured addition of peers leads to cluster shutdown. |  Major | . | Rushabh Shah | Rushabh Shah |
| [HBASE-22806](https://issues.apache.org/jira/browse/HBASE-22806) | Deleted CF are not cleared if memstore contain entries |  Major | API | Chao | Pankaj Kumar |
| [HBASE-22904](https://issues.apache.org/jira/browse/HBASE-22904) | NPE occurs when RS send space quota usage report during HMaster init |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22867](https://issues.apache.org/jira/browse/HBASE-22867) | The ForkJoinPool in CleanerChore will spawn thousands of threads in our cluster with thousands table |  Critical | master | Zheng Hu | Zheng Hu |
| [HBASE-22852](https://issues.apache.org/jira/browse/HBASE-22852) | hbase nightlies leaking gpg-agents |  Minor | build | Allen Wittenauer | Rushabh Shah |
| [HBASE-22922](https://issues.apache.org/jira/browse/HBASE-22922) | Only the two first regions are locked in MergeTableRegionsProcedure |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-22935](https://issues.apache.org/jira/browse/HBASE-22935) | TaskMonitor warns MonitoredRPCHandler task may be stuck when it recently started |  Minor | logging | David Manning | David Manning |
| [HBASE-20688](https://issues.apache.org/jira/browse/HBASE-20688) | Refguide has "HBase Backup" section and a chapter named "Backup and Restore"; neither refers to the other |  Major | . | Michael Stack | Rabi Kumar K C |
| [HBASE-22928](https://issues.apache.org/jira/browse/HBASE-22928) | ScanMetrics counter update may not happen in case of exception in TableRecordReaderImpl |  Minor | mapreduce | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22893](https://issues.apache.org/jira/browse/HBASE-22893) | Change the comment in HBaseClassTestRule to reflect change in default test timeouts |  Trivial | . | Sakthi | Rabi Kumar K C |
| [HBASE-22943](https://issues.apache.org/jira/browse/HBASE-22943) | Various procedures should not cache log trace level |  Minor | proc-v2 | Sean Busbey | Sean Busbey |
| [HBASE-22896](https://issues.apache.org/jira/browse/HBASE-22896) | TestHRegion.testFlushMarkersWALFail is flaky |  Minor | . | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22961](https://issues.apache.org/jira/browse/HBASE-22961) | Deprecate hbck1 in core |  Major | hbck | Michael Stack | Michael Stack |
| [HBASE-22970](https://issues.apache.org/jira/browse/HBASE-22970) | split parents show as overlaps in the HBCK Report |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22981](https://issues.apache.org/jira/browse/HBASE-22981) | Remove unused flags for Yetus |  Critical | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22963](https://issues.apache.org/jira/browse/HBASE-22963) | Netty ByteBuf leak in rpc client implementation |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-22989](https://issues.apache.org/jira/browse/HBASE-22989) | Missing null check for item2RegionMap during bulkload phase |  Major | tooling | Viraj Jasani | Viraj Jasani |
| [HBASE-22964](https://issues.apache.org/jira/browse/HBASE-22964) | Fix flaky TestClusterRestartFailover and TestClusterRestartFailoverSplitWithoutZk |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22979](https://issues.apache.org/jira/browse/HBASE-22979) | Call ChunkCreator.initialize in TestHRegionWithInMemoryFlush |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22013](https://issues.apache.org/jira/browse/HBASE-22013) | SpaceQuotas - getNumRegions() returning wrong number of regions due to region replicas |  Major | . | Ajeet Rai | Shardul Singh |
| [HBASE-23007](https://issues.apache.org/jira/browse/HBASE-23007) | UnsatisfiedLinkError when using hbase-shaded packages under linux |  Critical | shading | Balazs Meszaros | Balazs Meszaros |
| [HBASE-23006](https://issues.apache.org/jira/browse/HBASE-23006) | RSGroupBasedLoadBalancer should also try to place replicas for the same region to different region servers |  Major | Region Assignment, rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-22929](https://issues.apache.org/jira/browse/HBASE-22929) | MemStoreLAB  ChunkCreator may memory leak |  Major | . | Yechao Chen | ramkrishna.s.vasudevan |
| [HBASE-23022](https://issues.apache.org/jira/browse/HBASE-23022) | download page should use HTTPS for links to archive.a.o |  Minor | website | Sean Busbey | Nick Dimiduk |
| [HBASE-22955](https://issues.apache.org/jira/browse/HBASE-22955) | Branches-1 precommit and nightly yetus jobs are using jdk8 for jdk7 jobs |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-23030](https://issues.apache.org/jira/browse/HBASE-23030) | Update completebulkload hadoop jar usage in related doc |  Minor | documentation | Jiayi Liu | Michael Stack |
| [HBASE-23043](https://issues.apache.org/jira/browse/HBASE-23043) | TestWALEntryStream times out |  Major | wal | Peter Somogyi | Peter Somogyi |
| [HBASE-23040](https://issues.apache.org/jira/browse/HBASE-23040) | region mover gives NullPointerException instead of saying a host isn't in the cluster |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-23005](https://issues.apache.org/jira/browse/HBASE-23005) | Table UI showed exception message when table is disabled |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23051](https://issues.apache.org/jira/browse/HBASE-23051) | Remove unneeded Mockito.mock invocations |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22941](https://issues.apache.org/jira/browse/HBASE-22941) | MetaTableAccessor.getMergeRegions() returns parent regions in random order |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-22649](https://issues.apache.org/jira/browse/HBASE-22649) | Encode StoreFile path URLs in the UI to handle scenarios where CF contains special characters (like # etc.) |  Major | UI | Ashok shetty | Y. SREENIVASULU REDDY |
| [HBASE-22142](https://issues.apache.org/jira/browse/HBASE-22142) | Space quota: If table inside namespace having space quota is dropped, data size  usage is still considered for the drop table. |  Minor | . | Shardul Singh | Shardul Singh |
| [HBASE-22944](https://issues.apache.org/jira/browse/HBASE-22944) | TableNotFoundException: hbase:quota  is thrown when region server is restarted. |  Minor | Quotas | Shardul Singh | Shardul Singh |
| [HBASE-22012](https://issues.apache.org/jira/browse/HBASE-22012) | SpaceQuota DisableTableViolationPolicy will cause cycles of enable/disable table |  Major | . | Ajeet Rai | Shardul Singh |
| [HBASE-22965](https://issues.apache.org/jira/browse/HBASE-22965) | RS Crash due to DBE reference to an reused ByteBuff |  Major | . | chenxu | chenxu |
| [HBASE-23079](https://issues.apache.org/jira/browse/HBASE-23079) | RegionRemoteProcedureBase should override setTimeoutFailure |  Blocker | amv2 | Xiaolin Ha | Duo Zhang |
| [HBASE-22380](https://issues.apache.org/jira/browse/HBASE-22380) | break circle replication when doing bulkload |  Critical | Replication | chenxu | Wellington Chevreuil |
| [HBASE-23054](https://issues.apache.org/jira/browse/HBASE-23054) | Remove synchronization block from MetaTableMetrics and fix LossyCounting algorithm |  Major | metrics | Ankit Singhal | Ankit Singhal |
| [HBASE-23119](https://issues.apache.org/jira/browse/HBASE-23119) | ArrayIndexOutOfBoundsException in PrivateCellUtil#qualifierStartsWith |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-22735](https://issues.apache.org/jira/browse/HBASE-22735) | list\_regions may throw an error if a region is RIT |  Minor | shell | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-23125](https://issues.apache.org/jira/browse/HBASE-23125) | TestRSGroupsAdmin2 is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-23094](https://issues.apache.org/jira/browse/HBASE-23094) | Wrong log message in simpleRegionNormaliser while checking if merge is enabled. |  Minor | . | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-22903](https://issues.apache.org/jira/browse/HBASE-22903) | alter\_status command is broken |  Major | metrics, shell | Viraj Jasani | Viraj Jasani |
| [HBASE-23134](https://issues.apache.org/jira/browse/HBASE-23134) | Enable\_all and Disable\_all table by Regex fail from Shell |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23137](https://issues.apache.org/jira/browse/HBASE-23137) | [create-release] Add passing of PROJECT variable for when building other than core. |  Major | create-release | Michael Stack | Michael Stack |
| [HBASE-22767](https://issues.apache.org/jira/browse/HBASE-22767) | System table RIT STUCK if their RSGroup has no highest version RSes |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22887](https://issues.apache.org/jira/browse/HBASE-22887) | HFileOutputFormat2 split a lot of HFile by roll once per rowkey |  Major | mapreduce | langdamao | langdamao |
| [HBASE-23139](https://issues.apache.org/jira/browse/HBASE-23139) | MapReduce jobs lauched from convenience distribution are nonfunctional |  Blocker | mapreduce | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23138](https://issues.apache.org/jira/browse/HBASE-23138) | Drop\_all table by regex fail from Shell -  Similar to HBASE-23134 |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23123](https://issues.apache.org/jira/browse/HBASE-23123) | Merge\_region fails from shell |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23144](https://issues.apache.org/jira/browse/HBASE-23144) | Compact\_rs throw wrong number of arguments |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23115](https://issues.apache.org/jira/browse/HBASE-23115) | Unit change for StoreFileSize and MemStoreSize |  Minor | metrics, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23150](https://issues.apache.org/jira/browse/HBASE-23150) | TestBulkLoadReplication is broken |  Major | . | Peter Somogyi | Wellington Chevreuil |
| [HBASE-23056](https://issues.apache.org/jira/browse/HBASE-23056) | Block count is 0 when BucketCache using persistent IOEngine and retrieve from file |  Minor | BucketCache | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23152](https://issues.apache.org/jira/browse/HBASE-23152) | Compaction\_switch does not work by RegionServer name |  Major | Client, Compaction | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23154](https://issues.apache.org/jira/browse/HBASE-23154) | list\_deadservers return incorrect no of rows |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23159](https://issues.apache.org/jira/browse/HBASE-23159) | HStore#getStorefilesSize may throw NPE |  Major | regionserver | Lijin Bin | Lijin Bin |
| [HBASE-21540](https://issues.apache.org/jira/browse/HBASE-21540) | when set property  "hbase.systemtables.compacting.memstore.type" to "basic" or "eager" will  cause an exception |  Major | conf | lixiaobao | lixiaobao |
| [HBASE-23155](https://issues.apache.org/jira/browse/HBASE-23155) | May NPE when concurrent AsyncNonMetaRegionLocator#updateCachedLocationOnError |  Major | asyncclient | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23078](https://issues.apache.org/jira/browse/HBASE-23078) | BaseLoadBalancer should consider region replicas when randomAssignment and roundRobinAssignment |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22370](https://issues.apache.org/jira/browse/HBASE-22370) | ByteBuf LEAK ERROR |  Major | rpc, wal | Lijin Bin | Lijin Bin |
| [HBASE-23176](https://issues.apache.org/jira/browse/HBASE-23176) | delete\_all\_snapshot does not work with regex |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-22881](https://issues.apache.org/jira/browse/HBASE-22881) | Fix non-daemon threads in hbase server implementation |  Major | master | Xiaolin Ha | Xiaolin Ha |
| [HBASE-23042](https://issues.apache.org/jira/browse/HBASE-23042) | Parameters are incorrect in procedures jsp |  Major | . | Yi Mei | Yi Mei |
| [HBASE-23177](https://issues.apache.org/jira/browse/HBASE-23177) | If fail to open reference because FNFE, make it plain it is a Reference |  Major | Operability | Michael Stack | Michael Stack |
| [HBASE-20910](https://issues.apache.org/jira/browse/HBASE-20910) | Fix dev-support/submit-patch.py by opening file with 'b' mode |  Major | scripts | Ankit Singhal | Ankit Singhal |
| [HBASE-23203](https://issues.apache.org/jira/browse/HBASE-23203) | NPE in RSGroup info |  Major | rsgroup, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23181](https://issues.apache.org/jira/browse/HBASE-23181) | Blocked WAL archive: "LogRoller: Failed to schedule flush of XXXX, because it is not online on us" |  Major | regionserver, wal | Michael Stack | Duo Zhang |
| [HBASE-23222](https://issues.apache.org/jira/browse/HBASE-23222) | Better logging and mitigation for MOB compaction failures |  Critical | mob | Sean Busbey | Sean Busbey |
| [HBASE-23199](https://issues.apache.org/jira/browse/HBASE-23199) | Error populating Table-Attribute fields |  Major | master, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23187](https://issues.apache.org/jira/browse/HBASE-23187) | Update parent region state to SPLIT in meta |  Major | master | Lijin Bin | Lijin Bin |
| [HBASE-20827](https://issues.apache.org/jira/browse/HBASE-20827) | Add pause when retrying after CallQueueTooBigException for reportRegionStateTransition |  Major | Region Assignment | Ankit Singhal | Ankit Singhal |
| [HBASE-23192](https://issues.apache.org/jira/browse/HBASE-23192) | CatalogJanitor consistencyCheck does not log problematic row on exception |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-22739](https://issues.apache.org/jira/browse/HBASE-22739) | ArrayIndexOutOfBoundsException when balance |  Major | Balancer | casuallc | Lijin Bin |
| [HBASE-23231](https://issues.apache.org/jira/browse/HBASE-23231) | ReplicationSource do not update metrics after refresh |  Major | wal | Lijin Bin | Lijin Bin |
| [HBASE-23184](https://issues.apache.org/jira/browse/HBASE-23184) | The HeapAllocation in WebUI is not accurate |  Minor | UI | chenxu | chenxu |
| [HBASE-23244](https://issues.apache.org/jira/browse/HBASE-23244) | NPEs running Canary |  Major | canary | Michael Stack | Michael Stack |
| [HBASE-23241](https://issues.apache.org/jira/browse/HBASE-23241) | TestExecutorService sometimes fail |  Major | test | Lijin Bin | Lijin Bin |
| [HBASE-23247](https://issues.apache.org/jira/browse/HBASE-23247) | [hbck2] Schedule SCPs for 'Unknown Servers' |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23243](https://issues.apache.org/jira/browse/HBASE-23243) | [pv2] Filter out SUCCESS procedures; on decent-sized cluster, plethora overwhelms problems |  Major | proc-v2, UI | Michael Stack | Michael Stack |
| [HBASE-21458](https://issues.apache.org/jira/browse/HBASE-21458) | Error: Could not find or load main class org.apache.hadoop.hbase.util.GetJavaProperty |  Minor | build, Client | Michael Stack | Michael Stack |
| [HBASE-22980](https://issues.apache.org/jira/browse/HBASE-22980) | HRegionPartioner getPartition() method incorrectly partitions the regions of the table. |  Major | mapreduce | Shardul Singh | Shardul Singh |
| [HBASE-23263](https://issues.apache.org/jira/browse/HBASE-23263) | NPE in Quotas.jsp |  Major | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23262](https://issues.apache.org/jira/browse/HBASE-23262) | Cannot load Master UI |  Major | master, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23268](https://issues.apache.org/jira/browse/HBASE-23268) | Remove disable/enable operations from doc when altering schema |  Minor | documentation | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-18439](https://issues.apache.org/jira/browse/HBASE-18439) | Subclasses of o.a.h.h.chaos.actions.Action all use the same logger |  Minor | integration tests | Mike Drob | Rabi Kumar K C |
| [HBASE-23290](https://issues.apache.org/jira/browse/HBASE-23290) | shell processlist command is broken |  Major | shell | Michael Stack | Mingliang Liu |
| [HBASE-23294](https://issues.apache.org/jira/browse/HBASE-23294) | ReplicationBarrierCleaner should delete all the barriers for a removed region which does not belong to any serial replication peer |  Major | master, Replication | Duo Zhang | Duo Zhang |
| [HBASE-23282](https://issues.apache.org/jira/browse/HBASE-23282) | HBCKServerCrashProcedure for 'Unknown Servers' |  Major | hbck2, proc-v2 | Michael Stack | Michael Stack |
| [HBASE-23182](https://issues.apache.org/jira/browse/HBASE-23182) | The create-release scripts are broken |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-23318](https://issues.apache.org/jira/browse/HBASE-23318) | LoadTestTool doesn't start |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22607](https://issues.apache.org/jira/browse/HBASE-22607) | TestExportSnapshotNoCluster::testSnapshotWithRefsExportFileSystemState() fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [HBASE-23328](https://issues.apache.org/jira/browse/HBASE-23328) | info:regioninfo goes wrong when region replicas enabled |  Major | read replicas | Michael Stack | Michael Stack |
| [HBASE-23237](https://issues.apache.org/jira/browse/HBASE-23237) | Negative 'Requests per Second' counts in UI |  Major | UI | Michael Stack | Karthik Palanisamy |
| [HBASE-23336](https://issues.apache.org/jira/browse/HBASE-23336) | [CLI] Incorrect row(s) count  "clear\_deadservers" |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23197](https://issues.apache.org/jira/browse/HBASE-23197) | "IllegalArgumentException: Wrong FS" on edits replay when WALs on different file system and hbase.region.archive.recovered.edits is enabled. |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23312](https://issues.apache.org/jira/browse/HBASE-23312) | HBase Thrift SPNEGO configs (HBASE-19852) should be backwards compatible |  Major | Thrift | Kevin Risden | Kevin Risden |
| [HBASE-23117](https://issues.apache.org/jira/browse/HBASE-23117) | Bad enum in hbase:meta info:state column can fail loadMeta and stop startup |  Minor | . | Michael Stack | Sandeep Pal |
| [HBASE-23313](https://issues.apache.org/jira/browse/HBASE-23313) | [hbck2] setRegionState should update Master in-memory state too |  Major | hbck2 | Michael Stack | Wellington Chevreuil |
| [HBASE-23342](https://issues.apache.org/jira/browse/HBASE-23342) | Handle NPE while closing compressingStream |  Trivial | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23356](https://issues.apache.org/jira/browse/HBASE-23356) | When construct StoreScanner throw exceptions it is possible to left some KeyValueScanner not closed. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23345](https://issues.apache.org/jira/browse/HBASE-23345) | Table need to replication unless all of cfs are excluded |  Minor | Replication | Sun Xin | Sun Xin |
| [HBASE-23337](https://issues.apache.org/jira/browse/HBASE-23337) | Several modules missing in nexus for Apache HBase 2.2.2 |  Blocker | build, community, scripts | Chao | Sean Busbey |
| [HBASE-22529](https://issues.apache.org/jira/browse/HBASE-22529) | Sanity check for in-memory compaction policy |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-23364](https://issues.apache.org/jira/browse/HBASE-23364) | HRegionServer sometimes does not shut down. |  Major | metrics, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-22096](https://issues.apache.org/jira/browse/HBASE-22096) | /storeFile.jsp shows CorruptHFileException when the storeFile is a reference file |  Major | UI | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23360](https://issues.apache.org/jira/browse/HBASE-23360) | [CLI] Fix help command "set\_quota" to explain removing quota |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23570](https://issues.apache.org/jira/browse/HBASE-23570) | Point users to the async-profiler home page if diagrams are coming up blank |  Trivial | profiler | Michael Stack | Michael Stack |
| [HBASE-23566](https://issues.apache.org/jira/browse/HBASE-23566) | Fix package/packet terminology problem in chaos monkeys |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23582](https://issues.apache.org/jira/browse/HBASE-23582) | Unbalanced braces in string representation of table descriptor |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-23376](https://issues.apache.org/jira/browse/HBASE-23376) | NPE happens while replica region is moving |  Minor | read replicas | Sun Xin | Sun Xin |
| [HBASE-23594](https://issues.apache.org/jira/browse/HBASE-23594) | Procedure stuck due to region happen to recorded on two servers. |  Critical | amv2, Region Assignment | Lijin Bin | Duo Zhang |
| [HBASE-23564](https://issues.apache.org/jira/browse/HBASE-23564) | RegionStates may has some expired serverinfo and make regions do not balance. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23572](https://issues.apache.org/jira/browse/HBASE-23572) | In 'HBCK Report', distinguish between live, dead, and unknown servers |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23581](https://issues.apache.org/jira/browse/HBASE-23581) | Creating table gets stuck when specifying an invalid split policy as METADATA |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23589](https://issues.apache.org/jira/browse/HBASE-23589) | FlushDescriptor contains non-matching family/output combinations |  Critical | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23590](https://issues.apache.org/jira/browse/HBASE-23590) | Update maxStoreFileRefCount to maxCompactedStoreFileRefCount |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23596](https://issues.apache.org/jira/browse/HBASE-23596) | HBCKServerCrashProcedure can double assign |  Major | proc-v2 | Michael Stack | Michael Stack |
| [HBASE-23098](https://issues.apache.org/jira/browse/HBASE-23098) | [bulkload] If one of the peers in a cluster is configured with NAMESPACE level, its hfile-refs(zk) will be backlogged |  Major | . | Yiran Wu | Yiran Wu |
| [HBASE-23587](https://issues.apache.org/jira/browse/HBASE-23587) | The FSYNC\_WAL flag does not work on branch-2.x |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-23175](https://issues.apache.org/jira/browse/HBASE-23175) | Yarn unable to acquire delegation token for HBase Spark jobs |  Major | security, spark | Ankit Singhal | Ankit Singhal |
| [HBASE-23369](https://issues.apache.org/jira/browse/HBASE-23369) | Auto-close 'unknown' Regions reported as OPEN on RegionServers |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23636](https://issues.apache.org/jira/browse/HBASE-23636) | Disable table may hang when regionserver stop or abort. |  Major | amv2 | Lijin Bin | Lijin Bin |
| [HBASE-23660](https://issues.apache.org/jira/browse/HBASE-23660) | hbase:meta's table.jsp ref to wrong rs address |  Minor | master | Lijin Bin | Lijin Bin |
| [HBASE-23663](https://issues.apache.org/jira/browse/HBASE-23663) | Allow dot and hyphen in Profiler's URL |  Minor | profiler | Peter Somogyi | Peter Somogyi |
| [HBASE-23648](https://issues.apache.org/jira/browse/HBASE-23648) | Re-use underlying connection registry in RawAsyncHBaseAdmin |  Minor | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23655](https://issues.apache.org/jira/browse/HBASE-23655) | Fix flaky TestRSGroupsKillRS: should wait the SCP to finish |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23659](https://issues.apache.org/jira/browse/HBASE-23659) | BaseLoadBalancer#wouldLowerAvailability should consider region replicas |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23658](https://issues.apache.org/jira/browse/HBASE-23658) | Fix flaky TestSnapshotFromMaster |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23679](https://issues.apache.org/jira/browse/HBASE-23679) | FileSystem instance leaks due to bulk loads with Kerberos enabled |  Critical | . | Josh Elser | Josh Elser |
| [HBASE-23677](https://issues.apache.org/jira/browse/HBASE-23677) | region.jsp returns 500/NPE when provided encoded region name is not online |  Minor | regionserver, UI | Nick Dimiduk | wenfeiyi666 |
| [HBASE-23694](https://issues.apache.org/jira/browse/HBASE-23694) | After RegionProcedureStore completes migration of WALProcedureStore, still running WALProcedureStore.syncThread keeps trying to delete now inexistent log files. |  Major | proc-v2, RegionProcedureStore | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23695](https://issues.apache.org/jira/browse/HBASE-23695) | Fail more gracefully when test class is missing Category |  Minor | . | Josh Elser | Josh Elser |
| [HBASE-23701](https://issues.apache.org/jira/browse/HBASE-23701) | Make sure HBaseClassTestRule doesn't suffer same issue as HBaseClassTestRuleChecker |  Minor | . | Josh Elser | Josh Elser |
| [HBASE-23690](https://issues.apache.org/jira/browse/HBASE-23690) | Checkstyle plugin complains about our checkstyle.xml format; doc how to resolve mismatched version |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23156](https://issues.apache.org/jira/browse/HBASE-23156) | start-hbase.sh failed with ClassNotFoundException when build with hadoop3 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23601](https://issues.apache.org/jira/browse/HBASE-23601) | OutputSink.WriterThread exception gets stuck and repeated indefinietly |  Major | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23709](https://issues.apache.org/jira/browse/HBASE-23709) | Unwrap the real user to properly dispatch proxy-user auth'n |  Major | . | Jan Hentschel | Josh Elser |
| [HBASE-23720](https://issues.apache.org/jira/browse/HBASE-23720) | [create-release] Update yetus version used from 0.11.0 to 0.11.1 |  Major | RC | Michael Stack | Michael Stack |
| [HBASE-23733](https://issues.apache.org/jira/browse/HBASE-23733) | [Flakey Tests] TestSplitTransactionOnCluster |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23737](https://issues.apache.org/jira/browse/HBASE-23737) | [Flakey Tests] TestFavoredNodeTableImport fails 30% of the time |  Major | . | Michael Stack | Michael Stack |
| [HBASE-17115](https://issues.apache.org/jira/browse/HBASE-17115) | HMaster/HRegion Info Server does not honour admin.acl |  Major | . | Mohammad Arshad | Josh Elser |
| [HBASE-23782](https://issues.apache.org/jira/browse/HBASE-23782) | We still reference the hard coded meta descriptor in some places when listing table descriptors |  Blocker | meta | Duo Zhang | Duo Zhang |
| [HBASE-23809](https://issues.apache.org/jira/browse/HBASE-23809) | The RSGroup shell test is missing |  Major | rsgroup, test | Duo Zhang | Duo Zhang |
| [HBASE-23813](https://issues.apache.org/jira/browse/HBASE-23813) | Get surefire version from parent pom rather than define it in hbase-archetypes |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23682](https://issues.apache.org/jira/browse/HBASE-23682) | Fix NPE when disable DeadServerMetricRegionChore |  Major | master | Lijin Bin | Lijin Bin |
| [HBASE-23554](https://issues.apache.org/jira/browse/HBASE-23554) | Encoded regionname to regionname utility |  Major | shell | Michael Stack | Michael Stack |
| [HBASE-23803](https://issues.apache.org/jira/browse/HBASE-23803) | [DOC] Fix the maths on the section explaining call queue tuning options |  Minor | documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23804](https://issues.apache.org/jira/browse/HBASE-23804) | Fix default master addr hostname in master registry |  Major | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23892](https://issues.apache.org/jira/browse/HBASE-23892) | SecureTestCluster should allow its subclasses to pass their Class reference on HBaseKerberosUtils.setSSLConfiguration |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23904](https://issues.apache.org/jira/browse/HBASE-23904) | Procedure updating meta and Master shutdown are incompatible: CODE-BUG |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-23920](https://issues.apache.org/jira/browse/HBASE-23920) | Pass --copy-to argument in ExportSnapshot tests |  Major | snapshots, test | Peter Somogyi | Peter Somogyi |
| [HBASE-23553](https://issues.apache.org/jira/browse/HBASE-23553) | Snapshot referenced data files are deleted in some case |  Major | snapshots | Yi Mei | Yi Mei |
| [HBASE-23909](https://issues.apache.org/jira/browse/HBASE-23909) | list\_regions fails if table is under split |  Minor | shell | Peter Somogyi | Viraj Jasani |
| [HBASE-23895](https://issues.apache.org/jira/browse/HBASE-23895) | STUCK Region-In-Transition when failed to insert procedure to procedure store |  Major | proc-v2, RegionProcedureStore | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23944](https://issues.apache.org/jira/browse/HBASE-23944) | The method setClusterLoad of SimpleLoadBalancer is incorrect when balance by table |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-23954](https://issues.apache.org/jira/browse/HBASE-23954) | SplitParent region should not be balanced |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-23953](https://issues.apache.org/jira/browse/HBASE-23953) | SimpleBalancer bug when second pass to fill up to min |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-22103](https://issues.apache.org/jira/browse/HBASE-22103) | HDFS-13209 in Hadoop 3.3.0 breaks asyncwal |  Major | hadoop3, wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24016](https://issues.apache.org/jira/browse/HBASE-24016) | Change nightly poll from cron @daily to pollSCM @daily; i.e. run nightly if a change ONLY |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24017](https://issues.apache.org/jira/browse/HBASE-24017) | Turn down flakey rerun rate on all but hot branches |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24031](https://issues.apache.org/jira/browse/HBASE-24031) | TestHRegion.testCheckAndMutate\_WithFilters is flaky |  Minor | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23633](https://issues.apache.org/jira/browse/HBASE-23633) | Find a way to handle the corrupt recovered hfiles |  Critical | MTTR, wal | Guanghao Zhang | Pankaj Kumar |
| [HBASE-23741](https://issues.apache.org/jira/browse/HBASE-23741) | Data loss when WAL split to HFile enabled |  Blocker | MTTR | Pankaj Kumar | Guanghao Zhang |
| [HBASE-24043](https://issues.apache.org/jira/browse/HBASE-24043) | [Flakey Tests] TestAsyncRegionAdminApi, TestRegionMergeTransactionOnCluster fixes and debug |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23949](https://issues.apache.org/jira/browse/HBASE-23949) | refactor  loadBalancer implements for rsgroup balance by table to  achieve overallbalanced |  Major | rsgroup | niuyulin | niuyulin |
| [HBASE-24040](https://issues.apache.org/jira/browse/HBASE-24040) | WALFactory.Providers.multiwal causes StackOverflowError |  Minor | wal | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24057](https://issues.apache.org/jira/browse/HBASE-24057) | Add modules to mapreduce job classpaths |  Major | mapreduce | Peter Somogyi | Peter Somogyi |
| [HBASE-24041](https://issues.apache.org/jira/browse/HBASE-24041) | [regression]  Increase RESTServer buffer size back to 64k |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-24001](https://issues.apache.org/jira/browse/HBASE-24001) | The "HBase Nightly" job may exhaust all executors - and create a deadlock |  Major | . | Zoltan Haindrich | Michael Stack |
| [HBASE-24096](https://issues.apache.org/jira/browse/HBASE-24096) | Fix TestRSGroupsBalance |  Major | rsgroup | Lijin Bin | Lijin Bin |
| [HBASE-23561](https://issues.apache.org/jira/browse/HBASE-23561) | Look up of Region in Master by encoded region name is O(n) |  Trivial | . | Michael Stack | Minwoo Kang |
| [HBASE-24122](https://issues.apache.org/jira/browse/HBASE-24122) | Change machine ulimit-l to ulimit-a so dumps full ulimit rather than just 'max locked memory' |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24130](https://issues.apache.org/jira/browse/HBASE-24130) | rat plugin complains about having an unlicensed file. |  Minor | . | Minwoo Kang | Minwoo Kang |
| [HBASE-24128](https://issues.apache.org/jira/browse/HBASE-24128) | [Flakey Tests] Add retry on thrift cmdline if client fails plus misc debug |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24131](https://issues.apache.org/jira/browse/HBASE-24131) | [Flakey Tests] TestExportSnapshot takes too long; up against 13min max |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24121](https://issues.apache.org/jira/browse/HBASE-24121) | [Authorization] ServiceAuthorizationManager isn't dynamically updatable. And it should be. |  Major | rpc, security | Reid Chan | Reid Chan |
| [HBASE-24074](https://issues.apache.org/jira/browse/HBASE-24074) | ConcurrentModificationException occurred in ReplicationSourceManager while refreshing the peer |  Major | Replication | Pankaj Kumar | Pankaj Kumar |
| [HBASE-24163](https://issues.apache.org/jira/browse/HBASE-24163) | MOB compactor implementations should use format specifiers when calling String.format |  Major | Compaction, mob | Sean Busbey | Sean Busbey |
| [HBASE-24160](https://issues.apache.org/jira/browse/HBASE-24160) | create-release fails to process x.y.0 version info correctly |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23998](https://issues.apache.org/jira/browse/HBASE-23998) | Update license for jetty-client |  Major | build, dependencies | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22879](https://issues.apache.org/jira/browse/HBASE-22879) | user\_permission command failed to show global permission |  Major | . | Yi Mei | Yi Mei |
| [HBASE-23881](https://issues.apache.org/jira/browse/HBASE-23881) | Netty SASL implementation does not wait for challenge response causing TestShadeSaslAuthenticationProvider failures |  Major | test | Bharath Vissapragada | Josh Elser |
| [HBASE-24167](https://issues.apache.org/jira/browse/HBASE-24167) | [Flakey Tests] TestHRegionWithInMemoryFlush#testWritesWhileScanning gets stuck MVCC |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24176](https://issues.apache.org/jira/browse/HBASE-24176) | user\_permission '.\*'  command failed to show all table permissions |  Minor | shell | song XinCun | song XinCun |
| [HBASE-24197](https://issues.apache.org/jira/browse/HBASE-24197) | TestHttpServer.testBindAddress failure with latest jetty |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-24186](https://issues.apache.org/jira/browse/HBASE-24186) | RegionMover ignores replicationId |  Minor | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-24158](https://issues.apache.org/jira/browse/HBASE-24158) | [Flakey Tests] TestAsyncTableGetMultiThreaded |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23833](https://issues.apache.org/jira/browse/HBASE-23833) | The relocated hadoop-thirdparty protobuf breaks HBase asyncwal |  Major | wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24177](https://issues.apache.org/jira/browse/HBASE-24177) | MetricsTable#updateFlushTime is wrong |  Minor | metrics | ramkrishna.s.vasudevan | Gaurav Kanade |
| [HBASE-24203](https://issues.apache.org/jira/browse/HBASE-24203) | Bump git version in Dockerfile |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-24174](https://issues.apache.org/jira/browse/HBASE-24174) | Fix findbugs warning on ServiceAuthorizationManager |  Major | . | Reid Chan | Reid Chan |
| [HBASE-24220](https://issues.apache.org/jira/browse/HBASE-24220) | Allow that zk NOTEMPTY multi exception is retryable by running in-series |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-24213](https://issues.apache.org/jira/browse/HBASE-24213) | Backport the pre commit changes for HBASE-24169 to all branches |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24253](https://issues.apache.org/jira/browse/HBASE-24253) | HBASE-Find-Flaky-Tests job is failing because of can not build docker image |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24251](https://issues.apache.org/jira/browse/HBASE-24251) | PreCommit build is failing because of can not build docker image |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24263](https://issues.apache.org/jira/browse/HBASE-24263) | TestDelegationToken is broken |  Major | security | Duo Zhang | Duo Zhang |
| [HBASE-23933](https://issues.apache.org/jira/browse/HBASE-23933) | Separate a hbase-balancer or hbase-assignment module |  Major | Balancer, build, Region Assignment | Duo Zhang | niuyulin |
| [HBASE-24281](https://issues.apache.org/jira/browse/HBASE-24281) | Remove some stale hadoop.version properties in the pom for sub modules |  Major | hadoop3, pom | Duo Zhang | Duo Zhang |
| [HBASE-24215](https://issues.apache.org/jira/browse/HBASE-24215) | [Flakey Tests] [ERROR] TestSecureRESTServer  java.lang.NoClassDefFoundError: com/sun/jersey/core/spi/factory/AbstractRuntimeDelegate |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24274](https://issues.apache.org/jira/browse/HBASE-24274) | \`RESTApiClusterManager\` attempts to deserialize response using serialization API |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24247](https://issues.apache.org/jira/browse/HBASE-24247) | Failed multi-merge because two regions not adjacent (legitimately). |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-24282](https://issues.apache.org/jira/browse/HBASE-24282) | 'scandetail' log message is missing when responseTooSlow happens on the first scan rpc call |  Major | Operability | song XinCun | song XinCun |
| [HBASE-22710](https://issues.apache.org/jira/browse/HBASE-22710) | Wrong result in one case of scan that use  raw and versions and filter together |  Major | Scanners | Zheng Wang | Zheng Wang |
| [HBASE-24294](https://issues.apache.org/jira/browse/HBASE-24294) | [Flakey Tests] TestThriftHttpServer BindException |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24288](https://issues.apache.org/jira/browse/HBASE-24288) | Allow admin user to create table and do bulkLoad |  Major | acl | song XinCun | song XinCun |
| [HBASE-24277](https://issues.apache.org/jira/browse/HBASE-24277) | TestZooKeeper is flaky |  Major | test, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-24246](https://issues.apache.org/jira/browse/HBASE-24246) | Miscellaneous hbck2 fixMeta bulk merge fixes: better logging around merges/overlap-fixing, 'HBCK Report' overlap listing, and configuration |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24314](https://issues.apache.org/jira/browse/HBASE-24314) | Some classes still use log4j logger directly |  Blocker | logging | Duo Zhang | Duo Zhang |
| [HBASE-24322](https://issues.apache.org/jira/browse/HBASE-24322) | UnsafeAvailChecker should also check that required methods are available |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24307](https://issues.apache.org/jira/browse/HBASE-24307) | [Flakey Tests] krb server for secure thrift tests throws BindException |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24336](https://issues.apache.org/jira/browse/HBASE-24336) | [Metrics] FSDataInputStream's localBytesRead is wrong |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-24316](https://issues.apache.org/jira/browse/HBASE-24316) | GCMulitpleMergedRegionsProcedure  is not idempotent |  Major | proc-v2 | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24342](https://issues.apache.org/jira/browse/HBASE-24342) | [Flakey Tests] Disable TestClusterPortAssignment.testClusterPortAssignment as it can't pass 100% of the time |  Major | flakies, test | Michael Stack | Michael Stack |
| [HBASE-24250](https://issues.apache.org/jira/browse/HBASE-24250) | CatalogJanitor resubmits GCMultipleMergedRegionsProcedure for the same region |  Major | master | Andrey Elenskiy | niuyulin |
| [HBASE-24284](https://issues.apache.org/jira/browse/HBASE-24284) | [h3/jdk11] REST server won't start |  Major | REST | Michael Stack | Michael Stack |
| [HBASE-24211](https://issues.apache.org/jira/browse/HBASE-24211) | Create table is slow in large cluster when AccessController is enabled. |  Major | Performance | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24273](https://issues.apache.org/jira/browse/HBASE-24273) | HBCK's "Orphan Regions on FileSystem" reports regions with referenced HFiles |  Critical | hbck2 | Andrey Elenskiy | Huaxiang Sun |
| [HBASE-24338](https://issues.apache.org/jira/browse/HBASE-24338) | [Flakey Tests] NPE in TestRaceBetweenSCPAndDTP |  Major | flakies, test | Michael Stack | Michael Stack |
| [HBASE-24190](https://issues.apache.org/jira/browse/HBASE-24190) | Make kerberos value of hbase.security.authentication property case insensitive |  Major | . | Yuanliang Zhang | Rushabh Shah |
| [HBASE-23832](https://issues.apache.org/jira/browse/HBASE-23832) | Old config hbase.hstore.compactionThreshold is ignored |  Critical | . | Anoop Sam John | Sambit Mohapatra |
| [HBASE-24368](https://issues.apache.org/jira/browse/HBASE-24368) | Let HBCKSCP clear 'Unknown Servers', even if RegionStateNode has RegionLocation == null |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23702](https://issues.apache.org/jira/browse/HBASE-23702) | \`hbase.hstore.flusher.count\` setting to 0 breaks HMaster |  Major | regionserver | Ctest | Ctest |
| [HBASE-24381](https://issues.apache.org/jira/browse/HBASE-24381) | The Size metrics in Master Webui is wrong if the size is 0 |  Major | UI | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-24377](https://issues.apache.org/jira/browse/HBASE-24377) | MemStoreFlusher throw NullPointerException |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-24365](https://issues.apache.org/jira/browse/HBASE-24365) | MetricsTableWrapperAggregateImpl runnable fails due to exception and never runs |  Minor | metrics | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-24393](https://issues.apache.org/jira/browse/HBASE-24393) | release scripts should allow for creation of initial CHANGES/RELEASE on new major version. |  Minor | community | Sean Busbey | Sean Busbey |
| [HBASE-20289](https://issues.apache.org/jira/browse/HBASE-20289) | Comparator for NormalizationPlan breaks comparator's convention |  Minor | master | Yuki Tawara | Yuki Tawara |
| [HBASE-24364](https://issues.apache.org/jira/browse/HBASE-24364) | [Chaos Monkey] Invalid data block encoding in ChangeEncodingAction |  Major | . | Yi Mei | Yi Mei |
| [HBASE-24413](https://issues.apache.org/jira/browse/HBASE-24413) | HBASE-22259 Removed deprecated getTimeStampOfLastShippedOp method from ReplicationLoadSource, but there were still references to this method on ruby admin.rb |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24401](https://issues.apache.org/jira/browse/HBASE-24401) | Cell size limit check on append should consider 0 or less value to disable the check |  Major | . | wenbang | wenbang |
| [HBASE-24426](https://issues.apache.org/jira/browse/HBASE-24426) | Missing regionName while logging warning in HBCKServerCrashProcedure |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24376](https://issues.apache.org/jira/browse/HBASE-24376) | MergeNormalizer is merging non-adjacent regions and causing region overlaps/holes. |  Critical | master | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24370](https://issues.apache.org/jira/browse/HBASE-24370) | Avoid aggressive MergeRegion and GCMultipleMergedRegionsProcedure |  Major | master | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24425](https://issues.apache.org/jira/browse/HBASE-24425) | Run hbck\_chore\_run and catalogjanitor\_run on draw of 'HBCK Report' page |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24437](https://issues.apache.org/jira/browse/HBASE-24437) | Flaky test, TestLocalRegionOnTwoFileSystems#testFlushAndCompact |  Major | meta, test | Huaxiang Sun | Michael Stack |
| [HBASE-24434](https://issues.apache.org/jira/browse/HBASE-24434) | fix building cpp-example DemoClient |  Major | Client | Alexander Myasnikov |  |
| [HBASE-24379](https://issues.apache.org/jira/browse/HBASE-24379) | CatalogJanitor misreports region holes when there are actually over laps. |  Major | master | Huaxiang Sun | Huaxiang Sun |
| [HBASE-22287](https://issues.apache.org/jira/browse/HBASE-22287) | inifinite retries on failed server in RSProcedureDispatcher |  Major | . | Sergey Shelukhin | Michael Stack |
| [HBASE-23715](https://issues.apache.org/jira/browse/HBASE-23715) | MasterFileSystem should not create MasterProcWALs dir on fresh installs |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24454](https://issues.apache.org/jira/browse/HBASE-24454) | BucketCache disabled instantly before error duration toleration is reached due to timing issue |  Major | BucketCache | Jacob LeBlanc | Jacob LeBlanc |
| [HBASE-24479](https://issues.apache.org/jira/browse/HBASE-24479) | Deflake TestCompaction#testStopStartCompaction |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24300](https://issues.apache.org/jira/browse/HBASE-24300) | TestRemoteBackup is broken |  Major | backup&restore | Duo Zhang | Duo Zhang |
| [HBASE-24499](https://issues.apache.org/jira/browse/HBASE-24499) | Use a client property for SaslConnection MAX\_ATTEMPTS (currently hardcoded to 5) |  Minor | Client, security | Ravi Kishore Valeti | Ravi Kishore Valeti |
| [HBASE-24496](https://issues.apache.org/jira/browse/HBASE-24496) | The tab of Base Stats not actived by default in table.jsp |  Major | UI | Zheng Wang | Zheng Wang |
| [HBASE-24513](https://issues.apache.org/jira/browse/HBASE-24513) | The default readRpcTimeout and writeRpcTimeout is incorrectly calculated in AsyncConnectionConfiguration |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-24506](https://issues.apache.org/jira/browse/HBASE-24506) | async client deadlock |  Blocker | asyncclient | Whitney Jackson | Duo Zhang |
| [HBASE-24515](https://issues.apache.org/jira/browse/HBASE-24515) | batch Increment/Append fails when retrying the RPC |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24444](https://issues.apache.org/jira/browse/HBASE-24444) | Should shutdown mini cluster after class in TestMetaAssignmentWithStopMaster |  Minor | test | Duo Zhang | wenfeiyi666 |
| [HBASE-23202](https://issues.apache.org/jira/browse/HBASE-23202) | ExportSnapshot (import) will fail if copying files to root directory takes longer than cleaner TTL |  Major | snapshots | Zach York | Guangxu Cheng |
| [HBASE-24340](https://issues.apache.org/jira/browse/HBASE-24340) | PerformanceEvaluation options should not mandate any specific order |  Minor | . | Anoop Sam John | Sambit Mohapatra |
| [HBASE-24511](https://issues.apache.org/jira/browse/HBASE-24511) | Ability to configure timeout between RPC retry to RS from master |  Major | . | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24532](https://issues.apache.org/jira/browse/HBASE-24532) | Execute region plans with throttle should return succeeded plans |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24529](https://issues.apache.org/jira/browse/HBASE-24529) | hbase.rs.evictblocksonclose is not honored when removing compacted files and closing the storefiles |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24545](https://issues.apache.org/jira/browse/HBASE-24545) | Add backoff to SCP check on WAL split completion |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23195](https://issues.apache.org/jira/browse/HBASE-23195) | FSDataInputStreamWrapper unbuffer can NOT invoke the classes that NOT implements CanUnbuffer but its parents class implements CanUnbuffer |  Critical | io | Zhao Yi Ming | Zhao Yi Ming |
| [HBASE-24189](https://issues.apache.org/jira/browse/HBASE-24189) | WALSplit recreates region dirs for deleted table with recovered edits data |  Major | regionserver, wal | Andrey Elenskiy | Anoop Sam John |
| [HBASE-24517](https://issues.apache.org/jira/browse/HBASE-24517) | AssignmentManager.start should add meta region to ServerStateNode |  Critical | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-24564](https://issues.apache.org/jira/browse/HBASE-24564) | Make RS abort call idempotent |  Major | regionserver | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24518](https://issues.apache.org/jira/browse/HBASE-24518) | waitForNamespaceOnline() should return false if any region is offline |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24550](https://issues.apache.org/jira/browse/HBASE-24550) | Passing '-h' or '--help' to bin/hbase doesn't do as expected |  Trivial | Operability, shell | Michael Stack | wenfeiyi666 |
| [HBASE-23126](https://issues.apache.org/jira/browse/HBASE-23126) | IntegrationTestRSGroup is useless now |  Major | rsgroup | Duo Zhang | Sandeep Pal |
| [HBASE-24591](https://issues.apache.org/jira/browse/HBASE-24591) | get\_table\_rsgroup ignored the existence of rsgroup config for namespace |  Major | rsgroup | Sun Xin | Sun Xin |
| [HBASE-24579](https://issues.apache.org/jira/browse/HBASE-24579) | Failed SASL authentication does not result in an exception on client side |  Major | rpc | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-21773](https://issues.apache.org/jira/browse/HBASE-21773) | rowcounter utility should respond to pleas for help |  Critical | tooling | Sean Busbey | Wellington Chevreuil |
| [HBASE-24446](https://issues.apache.org/jira/browse/HBASE-24446) | Use EnvironmentEdgeManager to compute clock skew in Master |  Minor | . | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24600](https://issues.apache.org/jira/browse/HBASE-24600) | Empty RegionAction added to MultiRequest in case of RowMutations/CheckAndMutate batch |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24616](https://issues.apache.org/jira/browse/HBASE-24616) | Remove BoundedRecoveredHFilesOutputSink  dependency on a TableDescriptor |  Major | HFile, MTTR | Michael Stack | Michael Stack |
| [HBASE-24588](https://issues.apache.org/jira/browse/HBASE-24588) | Normalizer plan execution is not consistent between plan types |  Major | master, Normalizer | Nick Dimiduk | Viraj Jasani |
| [HBASE-24117](https://issues.apache.org/jira/browse/HBASE-24117) | Shutdown AssignmentManager before ProcedureExecutor may cause SCP to accidentally skip assigning a region |  Critical | proc-v2 | Michael Stack | Duo Zhang |
| [HBASE-24552](https://issues.apache.org/jira/browse/HBASE-24552) | Replica region needs to check if primary region directory exists at file system  in TransitRegionStateProcedure |  Major | read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24651](https://issues.apache.org/jira/browse/HBASE-24651) | release script utils should set local user when GPG\_KEY is defined. |  Major | build, community | Sean Busbey | Sean Busbey |
| [HBASE-24661](https://issues.apache.org/jira/browse/HBASE-24661) | TestHeapSize.testSizes  failure |  Major | test | Huaxiang Sun | Michael Stack |
| [HBASE-24657](https://issues.apache.org/jira/browse/HBASE-24657) | JsonBean representation of metrics at /jmx endpoint now quotes all numbers |  Minor | metrics | David Manning | David Manning |
| [HBASE-24546](https://issues.apache.org/jira/browse/HBASE-24546) | CloneSnapshotProcedure unlimited retry |  Major | snapshots | wenfeiyi666 | wenfeiyi666 |
| [HBASE-22738](https://issues.apache.org/jira/browse/HBASE-22738) | Fallback to default group to choose RS when there are no RS in current group |  Major | rsgroup | Guanghao Zhang | Sun Xin |
| [HBASE-24711](https://issues.apache.org/jira/browse/HBASE-24711) | Previous RC Release notes are not removed |  Major | scripts | Peter Somogyi | Peter Somogyi |
| [HBASE-23744](https://issues.apache.org/jira/browse/HBASE-23744) | FastPathBalancedQueueRpcExecutor should enforce queue length of 0 |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-24693](https://issues.apache.org/jira/browse/HBASE-24693) | regioninfo#isLast() has a logic error |  Minor | . | Bo Cui | Bo Cui |
| [HBASE-24720](https://issues.apache.org/jira/browse/HBASE-24720) | Meta replicas not cleaned when disabled |  Minor | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-24705](https://issues.apache.org/jira/browse/HBASE-24705) | MetaFixer#fixHoles() does not include the case for read replicas (i.e, replica regions are not created) |  Major | read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24615](https://issues.apache.org/jira/browse/HBASE-24615) | MutableRangeHistogram#updateSnapshotRangeMetrics doesn't calculate the distribution for last bucket. |  Major | metrics | Rushabh Shah | wenfeiyi666 |
| [HBASE-24721](https://issues.apache.org/jira/browse/HBASE-24721) | rename\_rsgroup overwriting the existing rsgroup. |  Major | . | chiranjeevi | Mohammad Arshad |
| [HBASE-24746](https://issues.apache.org/jira/browse/HBASE-24746) | The sort icons overlap the col name in master UI |  Major | UI | Zheng Wang | Zheng Wang |
| [HBASE-24748](https://issues.apache.org/jira/browse/HBASE-24748) | Add hbase.master.balancer.stochastic.moveCost.offpeak to doc as support dynamically change |  Minor | documentation | Zheng Wang | Zheng Wang |
| [HBASE-24714](https://issues.apache.org/jira/browse/HBASE-24714) | Error message is displayed in the UI of table's compaction state if any region of that table is not open. |  Major | Compaction, UI | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-24710](https://issues.apache.org/jira/browse/HBASE-24710) | Incorrect checksum calculation in saveVersion.sh |  Major | scripts | Peter Somogyi | Peter Somogyi |
| [HBASE-24742](https://issues.apache.org/jira/browse/HBASE-24742) | Improve performance of SKIP vs SEEK logic |  Major | Performance, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-22146](https://issues.apache.org/jira/browse/HBASE-22146) | SpaceQuotaViolationPolicy Disable is not working in Namespace level |  Major | . | Uma Maheswari | Surbhi Kochhar |
| [HBASE-24675](https://issues.apache.org/jira/browse/HBASE-24675) | On Master restart all servers are assigned to default rsgroup. |  Major | rsgroup | Mohammad Arshad | Mohammad Arshad |
| [HBASE-23921](https://issues.apache.org/jira/browse/HBASE-23921) | Findbugs is OOM on master |  Critical | build, findbugs | Duo Zhang | Duo Zhang |
| [HBASE-21510](https://issues.apache.org/jira/browse/HBASE-21510) | Test TestRegisterPeerWorkerWhenRestarting is flakey |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-24775](https://issues.apache.org/jira/browse/HBASE-24775) | [hbtop] StoreFile size should be rounded off |  Minor | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24738](https://issues.apache.org/jira/browse/HBASE-24738) | [Shell] processlist command fails with ERROR: Unexpected end of file from server when SSL enabled |  Major | shell | Pankaj Kumar | Pankaj Kumar |
| [HBASE-11676](https://issues.apache.org/jira/browse/HBASE-11676) | Scan FORMATTER is not applied for columns using non-printable name in shell |  Minor | shell | t samkawa | Elliot Miller |
| [HBASE-24766](https://issues.apache.org/jira/browse/HBASE-24766) | Document Remote Procedure Execution |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-24752](https://issues.apache.org/jira/browse/HBASE-24752) | NPE/500 accessing webui on master startup |  Minor | master | Nick Dimiduk | wenfeiyi666 |
| [HBASE-24797](https://issues.apache.org/jira/browse/HBASE-24797) | Move log code out of loop |  Minor | Normalizer | Sun Xin | Sun Xin |
| [HBASE-24794](https://issues.apache.org/jira/browse/HBASE-24794) | hbase.rowlock.wait.duration should not be \<= 0 |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-24713](https://issues.apache.org/jira/browse/HBASE-24713) | RS startup with FSHLog throws NPE after HBASE-21751 |  Minor | wal | ramkrishna.s.vasudevan | Gaurav Kanade |
| [HBASE-24767](https://issues.apache.org/jira/browse/HBASE-24767) | Change default to false for HBASE-15519 per-user metrics |  Major | metrics | Michael Stack | Michael Stack |
| [HBASE-24808](https://issues.apache.org/jira/browse/HBASE-24808) | skip empty log cleaner delegate class names (WAS =\> cleaner.CleanerChore: Can NOT create CleanerDelegate= ClassNotFoundException) |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-24805](https://issues.apache.org/jira/browse/HBASE-24805) | HBaseTestingUtility.getConnection should be threadsafe |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-24788](https://issues.apache.org/jira/browse/HBASE-24788) | Fix the connection leaks on getting hbase admin from unclosed connection |  Major | mapreduce | Sandeep Pal | Sandeep Pal |
| [HBASE-24830](https://issues.apache.org/jira/browse/HBASE-24830) | Some tests involving RS crash fail with NullPointerException after HBASE-24632 in branch-2 |  Major | . | Toshihiro Suzuki | Michael Stack |
| [HBASE-24625](https://issues.apache.org/jira/browse/HBASE-24625) | AsyncFSWAL.getLogFileSizeIfBeingWritten does not return the expected synced file length. |  Critical | Replication, wal | chenglei | chenglei |
| [HBASE-23157](https://issues.apache.org/jira/browse/HBASE-23157) | WAL unflushed seqId tracking may wrong when Durability.ASYNC\_WAL is used |  Major | regionserver, wal | Lijin Bin | Duo Zhang |
| [HBASE-24838](https://issues.apache.org/jira/browse/HBASE-24838) | The pre commit job fails to archive surefire reports |  Critical | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-22740](https://issues.apache.org/jira/browse/HBASE-22740) | [RSGroup] Forward-port HBASE-22658 to master branch |  Major | rsgroup | Reid Chan | Reid Chan |
| [HBASE-24856](https://issues.apache.org/jira/browse/HBASE-24856) | Fix error prone error in FlushTableSubprocedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-24844](https://issues.apache.org/jira/browse/HBASE-24844) | Exception on standalone (master) shutdown |  Minor | Zookeeper | Nick Dimiduk | wenfeiyi666 |
| [HBASE-24583](https://issues.apache.org/jira/browse/HBASE-24583) | Normalizer can't actually merge empty regions when neighbor is larger than average size |  Major | master, Normalizer | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24568](https://issues.apache.org/jira/browse/HBASE-24568) | do-release need not wait for tag |  Major | build, community | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24874](https://issues.apache.org/jira/browse/HBASE-24874) | Fix hbase-shell access to ModifiableTableDescriptor methods |  Major | shell | Elliot Miller | Elliot Miller |
| [HBASE-24799](https://issues.apache.org/jira/browse/HBASE-24799) | Do not call make\_binary\_release for hbase-thirdparty in release scripts |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24884](https://issues.apache.org/jira/browse/HBASE-24884) | BulkLoadHFilesTool/LoadIncrementalHFiles should accept -D options from command line parameters |  Minor | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24926](https://issues.apache.org/jira/browse/HBASE-24926) | Should call setFailure in MergeTableRegionsProcedure when isMergeable returns false |  Major | master, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-24890](https://issues.apache.org/jira/browse/HBASE-24890) | The command regioninfo is not available |  Major | shell | Zheng Wang | Zheng Wang |
| [HBASE-24885](https://issues.apache.org/jira/browse/HBASE-24885) | STUCK RIT by hbck2 assigns |  Major | hbck2, Region Assignment | Bo Cui | Michael Stack |
| [HBASE-24871](https://issues.apache.org/jira/browse/HBASE-24871) | Replication may loss data when refresh recovered replication sources |  Major | Replication | Guanghao Zhang | Sun Xin |
| [HBASE-23987](https://issues.apache.org/jira/browse/HBASE-23987) | NettyRpcClientConfigHelper will not share event loop by default which is incorrect |  Major | Client, rpc | Duo Zhang | Duo Zhang |
| [HBASE-24892](https://issues.apache.org/jira/browse/HBASE-24892) | config 'hbase.hregion.memstore.mslab.indexchunksize' not be used |  Major | . | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24916](https://issues.apache.org/jira/browse/HBASE-24916) | Region hole contains wrong regions pair when hole is created by first region deletion |  Major | hbck2 | Ajeet Rai | Mohammad Arshad |
| [HBASE-24968](https://issues.apache.org/jira/browse/HBASE-24968) | One of static initializers of CellComparatorImpl referring to subclass MetaCellComparator |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24971](https://issues.apache.org/jira/browse/HBASE-24971) | Upgrade JQuery to 3.5.1 |  Major | security, UI | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19352](https://issues.apache.org/jira/browse/HBASE-19352) | Port HADOOP-10379: Protect authentication cookies with the HttpOnly and Secure flags |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-24980](https://issues.apache.org/jira/browse/HBASE-24980) | Fix dead links in HBase book |  Major | documentation | akiyamaneko | akiyamaneko |
| [HBASE-24995](https://issues.apache.org/jira/browse/HBASE-24995) | MetaFixer fails to fix overlaps when multiple tables have overlaps |  Major | hbck2 | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24990](https://issues.apache.org/jira/browse/HBASE-24990) | Fix empty value of properties 'hbase.replication.source.maxthreads' in hbase-thrift module |  Trivial | . | yuqi | yuqi |
| [HBASE-24958](https://issues.apache.org/jira/browse/HBASE-24958) | CompactingMemStore.timeOfOldestEdit error update |  Critical | regionserver | wenfeiyi666 | wenfeiyi666 |
| [HBASE-25016](https://issues.apache.org/jira/browse/HBASE-25016) | Should close ResultScanner in MetaTableAccessor.scanByRegionEncodedName |  Critical | master, meta | Duo Zhang | niuyulin |
| [HBASE-25014](https://issues.apache.org/jira/browse/HBASE-25014) | ScheduledChore is never triggered when initalDelay \> 1.5\*period |  Major | . | Sun Xin | Sun Xin |
| [HBASE-25009](https://issues.apache.org/jira/browse/HBASE-25009) | Hbck chore logs wrong message when loading regions from RS report |  Minor | . | Mohammad Arshad | Mohammad Arshad |
| [HBASE-25012](https://issues.apache.org/jira/browse/HBASE-25012) | HBASE-24359 causes replication missed log of some RemoteException |  Major | Replication | Sun Xin | Sun Xin |
| [HBASE-25021](https://issues.apache.org/jira/browse/HBASE-25021) | Nightly job should skip hadoop-2 integration test for master |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25047](https://issues.apache.org/jira/browse/HBASE-25047) | WAL split edits number is negative in RegionServerUI |  Minor | UI, wal | Yi Mei | Junhong Xu |
| [HBASE-25054](https://issues.apache.org/jira/browse/HBASE-25054) | Do not add non shaded protobuf as dependency in TableMapReduceUtil for master |  Major | mapreduce | Duo Zhang | Duo Zhang |
| [HBASE-24481](https://issues.apache.org/jira/browse/HBASE-24481) | HBase Rest: Request for region detail of a table which doesn't exits is success(200 success code) instead of 404 |  Minor | . | Ajeet Rai | Kevin Wang |
| [HBASE-24896](https://issues.apache.org/jira/browse/HBASE-24896) | 'Stuck' in static initialization creating RegionInfo instance |  Major | . | Michael Stack | Michael Stack |
| [HBASE-25081](https://issues.apache.org/jira/browse/HBASE-25081) | Up the container nproc uplimit to 30000 |  Major | test | Istvan Toth | Istvan Toth |
| [HBASE-25097](https://issues.apache.org/jira/browse/HBASE-25097) | Wrong RIT page number in Master UI |  Minor | UI | Yi Mei | Yi Mei |
| [HBASE-25098](https://issues.apache.org/jira/browse/HBASE-25098) | ReplicationStatisticsChore runs in wrong time unit |  Major | Replication | Sun Xin | Sun Xin |
| [HBASE-25088](https://issues.apache.org/jira/browse/HBASE-25088) | CatalogFamilyFormat/MetaTableAccessor.parseRegionInfoFromRegionName incorrectly setEndKey to regionId |  Critical | meta | Duo Zhang | Junhong Xu |
| [HBASE-25077](https://issues.apache.org/jira/browse/HBASE-25077) | hbck.jsp page loading fails, logs NPE in master log. |  Major | hbck | Ajeet Rai | Mohammad Arshad |
| [HBASE-25096](https://issues.apache.org/jira/browse/HBASE-25096) | WAL size in RegionServer UI is wrong |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-25100](https://issues.apache.org/jira/browse/HBASE-25100) | conf and conn are assigned twice in HBaseReplicationEndpoint and HBaseInterClusterReplicationEndpoint |  Major | Replication | Sun Xin | Sun Xin |
| [HBASE-24665](https://issues.apache.org/jira/browse/HBASE-24665) | MultiWAL :  Avoid rolling of ALL WALs when one of the WAL needs a roll |  Major | wal | wenfeiyi666 | wenfeiyi666 |
| [HBASE-25135](https://issues.apache.org/jira/browse/HBASE-25135) | Convert the internal seperator while emitting the memstore read metrics to # |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-25115](https://issues.apache.org/jira/browse/HBASE-25115) | HFilePrettyPrinter can't seek to the row which is the first row of a hfile |  Major | HFile, tooling | Chaoqiang Zhong | niuyulin |
| [HBASE-25147](https://issues.apache.org/jira/browse/HBASE-25147) | Should store the regionNames field in state data for ReopenTableRegionsProcedure |  Major | proc-v2 | Duo Zhang | Viraj Jasani |
| [HBASE-25048](https://issues.apache.org/jira/browse/HBASE-25048) | [HBCK2] Bypassed parent procedures are not updated in store |  Major | hbck2, proc-v2 | Yi Mei | Junhong Xu |
| [HBASE-25165](https://issues.apache.org/jira/browse/HBASE-25165) | Change 'State time' in UI so sorts |  Minor | UI | Michael Stack | Michael Stack |
| [HBASE-23834](https://issues.apache.org/jira/browse/HBASE-23834) | HBase fails to run on Hadoop 3.3.0/3.2.2/3.1.4 due to jetty version mismatch |  Major | dependencies | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-25168](https://issues.apache.org/jira/browse/HBASE-25168) | Unify WAL name timestamp parsers |  Major | . | Michael Stack | Michael Stack |
| [HBASE-25117](https://issues.apache.org/jira/browse/HBASE-25117) | ReplicationSourceShipper thread can not be finished |  Major | . | Sun Xin | Sun Xin |
| [HBASE-25093](https://issues.apache.org/jira/browse/HBASE-25093) | the RSGroupBasedLoadBalancer#retainAssignment throws NPE |  Major | rsgroup | Bo Cui | niuyulin |
| [HBASE-25166](https://issues.apache.org/jira/browse/HBASE-25166) | MobFileCompactionChore is closing the master's shared cluster connection |  Major | master | Ankit Singhal | Ankit Singhal |
| [HBASE-25204](https://issues.apache.org/jira/browse/HBASE-25204) | Nightly job failed as  the name of jdk and maven changed |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-25186](https://issues.apache.org/jira/browse/HBASE-25186) | TestMasterRegionOnTwoFileSystems is failing after HBASE-25065 |  Blocker | master | ramkrishna.s.vasudevan | Duo Zhang |
| [HBASE-25207](https://issues.apache.org/jira/browse/HBASE-25207) | Revisit the implementation and usage of RegionStates.include |  Major | Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-25206](https://issues.apache.org/jira/browse/HBASE-25206) | Data loss can happen if a cloned table loses original split region(delete table) |  Major | proc-v2, Region Assignment, snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-25176](https://issues.apache.org/jira/browse/HBASE-25176) | MasterStoppedException should be moved to hbase-client module |  Major | Client | Duo Zhang | niuyulin |
| [HBASE-24977](https://issues.apache.org/jira/browse/HBASE-24977) | Meta table shouldn't be modified as read only |  Major | meta | Ajeet Rai | Pankaj Kumar |
| [HBASE-25090](https://issues.apache.org/jira/browse/HBASE-25090) | CompactionConfiguration logs unrealistic store file sizes |  Minor | Compaction | Nick Dimiduk | Zhuoyue Huang |
| [HBASE-25053](https://issues.apache.org/jira/browse/HBASE-25053) | WAL replay should ignore 0-length files |  Major | master, regionserver | Nick Dimiduk | niuyulin |
| [HBASE-25234](https://issues.apache.org/jira/browse/HBASE-25234) | [Upgrade]Incompatibility in reading RS report from 2.1 RS when Master is upgraded to a version containing HBASE-21406 |  Major | . | Sanjeet Nishad | Michael Stack |
| [HBASE-25238](https://issues.apache.org/jira/browse/HBASE-25238) | Upgrading HBase from 2.2.0 to 2.3.x fails because of “Message missing required fields: state” |  Critical | . | Zhuqi Jin | Michael Stack |
| [HBASE-25216](https://issues.apache.org/jira/browse/HBASE-25216) | The client zk syncer should deal with meta replica count change |  Major | master, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-20598](https://issues.apache.org/jira/browse/HBASE-20598) | Upgrade to JRuby 9.2 |  Major | dependencies, shell | Josh Elser | Norbert Kalmár |
| [HBASE-25276](https://issues.apache.org/jira/browse/HBASE-25276) | Need to throw the original exception in HRegion#openHRegion |  Major | . | Guanghao Zhang | niuyulin |
| [HBASE-25275](https://issues.apache.org/jira/browse/HBASE-25275) | Upgrade asciidoctor |  Blocker | website | Peter Somogyi | Peter Somogyi |
| [HBASE-25255](https://issues.apache.org/jira/browse/HBASE-25255) | Master fails to initialize when creating rs group table |  Critical | master, rsgroup | Duo Zhang | Duo Zhang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18175](https://issues.apache.org/jira/browse/HBASE-18175) | Add hbase-spark integration test into hbase-spark-it |  Critical | hbase-connectors, spark | Yi Liang | Yi Liang |
| [HBASE-18760](https://issues.apache.org/jira/browse/HBASE-18760) | Make hbase-shaded-check-invariants part of precommit |  Blocker | community, test | Apekshit Sharma | Sean Busbey |
| [HBASE-20176](https://issues.apache.org/jira/browse/HBASE-20176) | Fix warnings about Logging import in hbase-spark test code |  Minor | hbase-connectors | Ted Yu | Artem Ervits |
| [HBASE-19258](https://issues.apache.org/jira/browse/HBASE-19258) | IntegrationTest for Backup and Restore |  Blocker | integration tests | Josh Elser | Vladimir Rodionov |
| [HBASE-20414](https://issues.apache.org/jira/browse/HBASE-20414) | TestLockProcedure#testMultipleLocks may fail on slow machine |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20513](https://issues.apache.org/jira/browse/HBASE-20513) | Collect and emit ScanMetrics in PerformanceEvaluation |  Minor | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20508](https://issues.apache.org/jira/browse/HBASE-20508) | TestIncrementalBackupWithBulkLoad doesn't need to be Parameterized test |  Minor | backup&restore | Ted Yu | maoling |
| [HBASE-20505](https://issues.apache.org/jira/browse/HBASE-20505) | PE should support multi column family read and write cases |  Minor | Performance | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20646](https://issues.apache.org/jira/browse/HBASE-20646) | TestWALProcedureStoreOnHDFS failing on branch-1 |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20667](https://issues.apache.org/jira/browse/HBASE-20667) | Rename TestGlobalThrottler to TestReplicationGlobalThrottler |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20838](https://issues.apache.org/jira/browse/HBASE-20838) | Include hbase-server in precommit test if CommonFSUtils is changed |  Major | . | Yu Li | Yu Li |
| [HBASE-20907](https://issues.apache.org/jira/browse/HBASE-20907) | Fix Intermittent failure on TestProcedurePriority |  Major | . | Yu Li | Yu Li |
| [HBASE-21076](https://issues.apache.org/jira/browse/HBASE-21076) | TestTableResource fails with NPE |  Major | REST, test | Ted Yu | Sean Busbey |
| [HBASE-21161](https://issues.apache.org/jira/browse/HBASE-21161) | Enable the test added in HBASE-20741 that was removed accidentally |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21138](https://issues.apache.org/jira/browse/HBASE-21138) | Close HRegion instance at the end of every test in TestHRegion |  Major | . | Ted Yu | Mingliang Liu |
| [HBASE-21097](https://issues.apache.org/jira/browse/HBASE-21097) | Flush pressure assertion may fail in testFlushThroughputTuning |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-21160](https://issues.apache.org/jira/browse/HBASE-21160) | Assertion in TestVisibilityLabelsWithDeletes#testDeleteColumnsWithoutAndWithVisibilityLabels is ignored |  Trivial | . | Ted Yu | liubangchen |
| [HBASE-21258](https://issues.apache.org/jira/browse/HBASE-21258) | Add resetting of flags for RS Group pre/post hooks in TestRSGroups |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21261](https://issues.apache.org/jira/browse/HBASE-21261) | Add log4j.properties for hbase-rsgroup tests |  Trivial | . | Ted Yu | Andrew Kyle Purtell |
| [HBASE-21221](https://issues.apache.org/jira/browse/HBASE-21221) | Ineffective assertion in TestFromClientSide3#testMultiRowMutations |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-21279](https://issues.apache.org/jira/browse/HBASE-21279) | Split TestAdminShell into several tests |  Major | . | Ted Yu | Artem Ervits |
| [HBASE-21194](https://issues.apache.org/jira/browse/HBASE-21194) | Add tests in TestCopyTable which exercise MOB feature |  Minor | . | Ted Yu | Artem Ervits |
| [HBASE-21175](https://issues.apache.org/jira/browse/HBASE-21175) | Partially initialized SnapshotHFileCleaner leads to NPE during TestHFileArchiving |  Minor | . | Ted Yu | Artem Ervits |
| [HBASE-21141](https://issues.apache.org/jira/browse/HBASE-21141) | Enable MOB in backup / restore test involving incremental backup |  Major | backup&restore | Ted Yu | Artem Ervits |
| [HBASE-20136](https://issues.apache.org/jira/browse/HBASE-20136) | TestKeyValue misses ClassRule and Category annotations |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-21952](https://issues.apache.org/jira/browse/HBASE-21952) | Test Failure: TestClientOperationInterrupt.testInterrupt50Percent |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-21416](https://issues.apache.org/jira/browse/HBASE-21416) | Intermittent TestRegionInfoDisplay failure due to shift in relTime of RegionState#toDescriptiveString |  Minor | . | Ted Yu | Norbert Kalmár |
| [HBASE-20918](https://issues.apache.org/jira/browse/HBASE-20918) | Re-enable TestRpcHandlerException |  Minor | test | Jack Bearden | Jack Bearden |
| [HBASE-21963](https://issues.apache.org/jira/browse/HBASE-21963) | Add a script for building and verifying release candidate |  Minor | community, scripts | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-22051](https://issues.apache.org/jira/browse/HBASE-22051) | Expect values are hard-coded in the verifications of TestRSGroupsBasics |  Minor | rsgroup, test | Xiang Li | Xiang Li |
| [HBASE-22455](https://issues.apache.org/jira/browse/HBASE-22455) | Split TestReplicationStatus |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-20782](https://issues.apache.org/jira/browse/HBASE-20782) | Fix duplication of TestServletFilter.access |  Minor | . | Jan Hentschel | Xu Cang |
| [HBASE-22472](https://issues.apache.org/jira/browse/HBASE-22472) | The newly split TestReplicationStatus\* tests are flaky |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-22545](https://issues.apache.org/jira/browse/HBASE-22545) | TestLogLevel broken |  Major | test | Josh Elser | Mingliang Liu |
| [HBASE-22615](https://issues.apache.org/jira/browse/HBASE-22615) | Make TestChoreService more robust to timing |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-22791](https://issues.apache.org/jira/browse/HBASE-22791) | Wrong order of asserts in TestZKMulti |  Trivial | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-22725](https://issues.apache.org/jira/browse/HBASE-22725) | Remove all remaining javadoc warnings |  Trivial | test | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22894](https://issues.apache.org/jira/browse/HBASE-22894) | Move testOpenRegionFailedMemoryLeak to dedicated class |  Major | test | Bing Xiao | Bing Xiao |
| [HBASE-22766](https://issues.apache.org/jira/browse/HBASE-22766) | Code Coverage Improvement: Create Unit Tests for ResultStatsUtil |  Trivial | test | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22886](https://issues.apache.org/jira/browse/HBASE-22886) | Code Coverage Improvement: Create Unit Tests for ConnectionId |  Trivial | test | Murtaza Hassan | Rabi Kumar K C |
| [HBASE-23259](https://issues.apache.org/jira/browse/HBASE-23259) | Ability to run mini cluster using pre-determined available random ports |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23552](https://issues.apache.org/jira/browse/HBASE-23552) | Format Javadocs on ITBLL |  Trivial | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23555](https://issues.apache.org/jira/browse/HBASE-23555) | TestQuotaThrottle is broken |  Minor | . | Yi Mei | Yi Mei |
| [HBASE-23569](https://issues.apache.org/jira/browse/HBASE-23569) | Validate that the log cleaner actually cleans oldWALs as expected |  Major | integration tests, master, test | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-23665](https://issues.apache.org/jira/browse/HBASE-23665) | Split unit tests from TestTableName into a separate test only class |  Minor | test | Nick Dimiduk | Bharath Vissapragada |
| [HBASE-23711](https://issues.apache.org/jira/browse/HBASE-23711) | Add test for MinVersions and KeepDeletedCells TTL |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-23729](https://issues.apache.org/jira/browse/HBASE-23729) | [Flakeys] TestRSGroupsBasics#testClearNotProcessedDeadServer fails most of the time |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23735](https://issues.apache.org/jira/browse/HBASE-23735) | [Flakey Tests] TestClusterRestartFailover & TestClusterRestartFailoverSplitWithoutZk |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23731](https://issues.apache.org/jira/browse/HBASE-23731) | TestFromClientSide flakey after junit upgrade |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23746](https://issues.apache.org/jira/browse/HBASE-23746) | [Flakey Tests] Caused by: org.apache.hadoop.hbase.util.CommonFSUtils$StreamLacksCapabilityException: hflush and hsync |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23749](https://issues.apache.org/jira/browse/HBASE-23749) | TestHFileWriterV3 should have tests for all data block encodings |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23770](https://issues.apache.org/jira/browse/HBASE-23770) | [Flakey Tests] TestRegionReplicasWithRestartScenarios#testWhenRestart |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23764](https://issues.apache.org/jira/browse/HBASE-23764) | Flaky tests due to ZK client name resolution delays |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23752](https://issues.apache.org/jira/browse/HBASE-23752) | Fix a couple more test failures from nightly run |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23780](https://issues.apache.org/jira/browse/HBASE-23780) | Edit of test classifications |  Major | test | Michael Stack | Michael Stack |
| [HBASE-23786](https://issues.apache.org/jira/browse/HBASE-23786) |  [Flakey Test] TestMasterNotCarryTable.testMasterMemStoreLAB |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23783](https://issues.apache.org/jira/browse/HBASE-23783) | Address tests writing and reading SSL/Security files in a common location. |  Minor | . | Mark Robert Miller | Mark Robert Miller |
| [HBASE-23789](https://issues.apache.org/jira/browse/HBASE-23789) | [Flakey Tests] ERROR [Time-limited test] balancer.HeterogeneousRegionCountCostFunction(199): cannot read rules file located at ' /tmp/hbase-balancer.rules ' |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23793](https://issues.apache.org/jira/browse/HBASE-23793) | Increase maven heap allocation to 4G in Yetus personality |  Major | build, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23805](https://issues.apache.org/jira/browse/HBASE-23805) | [Flakey Test] TestRaceBetweenSCPAndDTP |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23815](https://issues.apache.org/jira/browse/HBASE-23815) | [Flakey Test] AbstractTestAsyncTableRegionReplicasRead family of tests fails with no breadcrumbs on why |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23824](https://issues.apache.org/jira/browse/HBASE-23824) | TestSnapshotScannerHDFSAclController is flakey |  Major | . | Yi Mei | Yi Mei |
| [HBASE-23812](https://issues.apache.org/jira/browse/HBASE-23812) | [Flakey Test] TestReplicator#testReplicatorWithErrors: AssertionError: We did not replicate enough rows expected:\<10\> but was:\<7\> |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23838](https://issues.apache.org/jira/browse/HBASE-23838) | Adding debug logging to a few ExportSnapshot tests |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23808](https://issues.apache.org/jira/browse/HBASE-23808) | [Flakey Test] TestMasterShutdown#testMasterShutdownBeforeStartingAnyRegionServer |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23867](https://issues.apache.org/jira/browse/HBASE-23867) | [Flakey Test] TestStochasticLoadBalancerRegionReplicaSameHosts#testRegionReplicationOnMidClusterSameHosts |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23899](https://issues.apache.org/jira/browse/HBASE-23899) | [Flakey Test] Stabilizations and Debug |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23914](https://issues.apache.org/jira/browse/HBASE-23914) | TestThriftHBaseServiceHandler.testMetricsWithException failing |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23999](https://issues.apache.org/jira/browse/HBASE-23999) | [flakey test] TestTableOutputFormatConnectionExhaust |  Major | test | Nick Dimiduk | Huaxiang Sun |
| [HBASE-23977](https://issues.apache.org/jira/browse/HBASE-23977) | [Flakey Tests]  TestSlowLogRecorder.testOnlieSlowLogConsumption:178-\>confirmPayloadParams:97 expected:\<client\_1[0]\> but was:\<client\_1[4]\> |  Major | test | Michael Stack | Viraj Jasani |
| [HBASE-23984](https://issues.apache.org/jira/browse/HBASE-23984) | [Flakey Tests] TestMasterAbortAndRSGotKilled fails in teardown |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24035](https://issues.apache.org/jira/browse/HBASE-24035) | [Flakey Tests] Disable TestClusterScopeQuotaThrottle#testUserNamespaceClusterScopeQuota |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24034](https://issues.apache.org/jira/browse/HBASE-24034) | [Flakey Tests] A couple of fixes and cleanups |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-22555](https://issues.apache.org/jira/browse/HBASE-22555) | Re-enable TestMasterOperationsForRegionReplicas$testIncompleteMetaTableReplicaInformation |  Major | Replication, test | Peter Somogyi | Peter Somogyi |
| [HBASE-24097](https://issues.apache.org/jira/browse/HBASE-24097) | [Flakey Tests] TestSnapshotScannerHDFSAclController#testRestoreSnapshot |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-24075](https://issues.apache.org/jira/browse/HBASE-24075) | [Flakey Tests] teardown fails because JmxCacheBuster wants to read ClusterId from closed fs |  Major | flakies | Michael Stack | Bharath Vissapragada |
| [HBASE-24100](https://issues.apache.org/jira/browse/HBASE-24100) | [Flakey Tests] Add test to check we work properly when port clash setting up thriftserver |  Major | flakies, Thrift | Michael Stack | Michael Stack |
| [HBASE-24073](https://issues.apache.org/jira/browse/HBASE-24073) | [flakey test] client.TestAsyncRegionAdminApi messed up compaction state. |  Major | Compaction | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24103](https://issues.apache.org/jira/browse/HBASE-24103) | [Flakey Tests] TestSnapshotScannerHDFSAclController |  Major | . | Yi Mei | Yi Mei |
| [HBASE-24107](https://issues.apache.org/jira/browse/HBASE-24107) | [Flakey Test] TestThriftServerCmdLine.testRunThriftServer NPEs if InfoServer port clash |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-24105](https://issues.apache.org/jira/browse/HBASE-24105) | [Flakey Test] regionserver.TestRegionReplicas |  Major | read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24120](https://issues.apache.org/jira/browse/HBASE-24120) | Flakey Test: TestReplicationAdminWithClusters timeout |  Major | Replication | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24114](https://issues.apache.org/jira/browse/HBASE-24114) | [Flakey Tests] TestSnapshotScannerHDFSAclController |  Major | acl | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24161](https://issues.apache.org/jira/browse/HBASE-24161) | [flakey test] locking.TestEntityLocks.testEntityLockTimeout |  Minor | Client | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24159](https://issues.apache.org/jira/browse/HBASE-24159) | [flakey test] regionserver.TestRegionMergeTransactionOnCluster |  Major | regionserver | Huaxiang Sun | Huaxiang Sun |
| [HBASE-23853](https://issues.apache.org/jira/browse/HBASE-23853) | [Flakey Test] TestBlockEvictionFromClient#testBlockRefCountAfterSplits |  Major | flakies | Michael Stack | Huaxiang Sun |
| [HBASE-24183](https://issues.apache.org/jira/browse/HBASE-24183) | [flakey test] replication.TestAddToSerialReplicationPeer |  Major | Client | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24185](https://issues.apache.org/jira/browse/HBASE-24185) | Junit tests do not behave well with System.exit or Runtime.halt or JVM exits in general. |  Major | test | Mark Robert Miller | Mark Robert Miller |
| [HBASE-23956](https://issues.apache.org/jira/browse/HBASE-23956) | Use less resources running tests |  Major | test | Michael Stack | Michael Stack |
| [HBASE-24118](https://issues.apache.org/jira/browse/HBASE-24118) | [Flakey Tests] TestCloseRegionWhileRSCrash |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23976](https://issues.apache.org/jira/browse/HBASE-23976) | [flakey test] TestVerifyBucketCacheFile |  Major | regionserver, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23943](https://issues.apache.org/jira/browse/HBASE-23943) | Rubocop configuration needs updated |  Minor | build | Nick Dimiduk | Jan Hentschel |
| [HBASE-24080](https://issues.apache.org/jira/browse/HBASE-24080) | [flakey test] TestRegionReplicaFailover.testSecondaryRegionKill fails. |  Major | read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24327](https://issues.apache.org/jira/browse/HBASE-24327) | TestMasterShutdown#testMasterShutdownBeforeStartingAnyRegionServer can fail with retries exhausted on an admin call. |  Major | test | Mark Robert Miller | Viraj Jasani |
| [HBASE-24360](https://issues.apache.org/jira/browse/HBASE-24360) | RollingBatchRestartRsAction loses track of dead servers |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24361](https://issues.apache.org/jira/browse/HBASE-24361) | Make \`RESTApiClusterManager\` more resilient |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23957](https://issues.apache.org/jira/browse/HBASE-23957) | [flakey test] client.TestMultiParallel fails to read hbase-site.xml |  Minor | test | Nick Dimiduk | Huaxiang Sun |
| [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | Relocate test-only REST "client" from src/ to test/ and mark Private |  Major | REST, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24493](https://issues.apache.org/jira/browse/HBASE-24493) | [flakey test] TestExportSnapshot family of tests failing due to timeout in AbstractDelegationTokenSecretManager$ExpiredTokenRemover |  Major | test | Nick Dimiduk | Michael Stack |
| [HBASE-24594](https://issues.apache.org/jira/browse/HBASE-24594) | testReplicationStatusSink last applied op ts comparison failure |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23974](https://issues.apache.org/jira/browse/HBASE-23974) | [Flakey Tests] Allow that server may not yet be cleared from DeadServers in TestHBCKSCP |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21905](https://issues.apache.org/jira/browse/HBASE-21905) | TestFIFOCompactionPolicy is flaky |  Major | test | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-22524](https://issues.apache.org/jira/browse/HBASE-22524) | Refactor TestReplicationSyncUpTool |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-24079](https://issues.apache.org/jira/browse/HBASE-24079) | [Flakey Tests] Misc fixes and debug; fix BindException in Thrift tests; add waits on quota table to come online; etc. |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-22548](https://issues.apache.org/jira/browse/HBASE-22548) | Split TestAdmin1 |  Major | Admin, test | Duo Zhang | Duo Zhang |
| [HBASE-23814](https://issues.apache.org/jira/browse/HBASE-23814) | Add null checks and logging to misc set of tests |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-24894](https://issues.apache.org/jira/browse/HBASE-24894) | [Flakey Test] TestStochasticLoadBalancer.testMoveCostMultiplier |  Major | Balancer, master, test | Nick Dimiduk | Zheng Wang |
| [HBASE-24979](https://issues.apache.org/jira/browse/HBASE-24979) | Include batch mutatations in client operation timeout tests |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-25156](https://issues.apache.org/jira/browse/HBASE-25156) | TestMasterFailover.testSimpleMasterFailover is flaky |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24015](https://issues.apache.org/jira/browse/HBASE-24015) | Coverage for Assign and Unassign of Regions on RegionServer on failure |  Major | amv2 | Michael Stack | Sandeep Pal |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15336](https://issues.apache.org/jira/browse/HBASE-15336) | Support Dataframe writer to the spark connector |  Major | hbase-connectors, spark | Zhan Zhang | Zhan Zhang |
| [HBASE-15333](https://issues.apache.org/jira/browse/HBASE-15333) | [hbase-spark] Enhance dataframe filters to handle naively encoded short, integer, long, float and double |  Major | hbase-connectors, spark | Zhan Zhang | Zhan Zhang |
| [HBASE-15473](https://issues.apache.org/jira/browse/HBASE-15473) | Documentation for the usage of hbase dataframe user api (JSON, Avro, etc) |  Blocker | documentation, hbase-connectors, spark | Zhan Zhang | Weiqing Yang |
| [HBASE-18050](https://issues.apache.org/jira/browse/HBASE-18050) | Add document about the IA.Private classes which appear in IA.LimitedPrivate interfaces |  Critical | documentation | Duo Zhang | Duo Zhang |
| [HBASE-17840](https://issues.apache.org/jira/browse/HBASE-17840) | Update book |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17752](https://issues.apache.org/jira/browse/HBASE-17752) | Update reporting RPCs/Shell commands to break out space utilization by snapshot |  Major | . | Josh Elser | Josh Elser |
| [HBASE-12349](https://issues.apache.org/jira/browse/HBASE-12349) | Add Maven build support module for a custom version of error-prone |  Blocker | . | Andrew Kyle Purtell | Mike Drob |
| [HBASE-18667](https://issues.apache.org/jira/browse/HBASE-18667) | Disable error-prone for hbase-protocol-shaded |  Major | build | Mike Drob | Mike Drob |
| [HBASE-19216](https://issues.apache.org/jira/browse/HBASE-19216) | Implement a general framework to execute remote procedure on RS |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19482](https://issues.apache.org/jira/browse/HBASE-19482) | Fix Checkstyle errors in hbase-spark-it |  Minor | hbase-connectors | Jan Hentschel | Jan Hentschel |
| [HBASE-19524](https://issues.apache.org/jira/browse/HBASE-19524) | Master side changes for moving peer modification from zk watcher to procedure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19540](https://issues.apache.org/jira/browse/HBASE-19540) | Reduce number of unnecessary semicolons |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19537](https://issues.apache.org/jira/browse/HBASE-19537) | Remove unnecessary semicolons in hbase-backup |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19536](https://issues.apache.org/jira/browse/HBASE-19536) | Client side changes for moving peer modification from zk watcher to procedure |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-19564](https://issues.apache.org/jira/browse/HBASE-19564) | Procedure id is missing in the response of peer related operations |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19520](https://issues.apache.org/jira/browse/HBASE-19520) | Add UTs for the new lock type PEER |  Major | proc-v2 | Duo Zhang | Guanghao Zhang |
| [HBASE-19580](https://issues.apache.org/jira/browse/HBASE-19580) | Use slf4j instead of commons-logging in new, just-added Peer Procedure classes |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19525](https://issues.apache.org/jira/browse/HBASE-19525) | RS side changes for moving peer modification from zk watcher to procedure |  Major | proc-v2, Replication | Duo Zhang | Zheng Hu |
| [HBASE-19543](https://issues.apache.org/jira/browse/HBASE-19543) | Abstract a replication storage interface to extract the zk specific code |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19597](https://issues.apache.org/jira/browse/HBASE-19597) | Fix Checkstyle errors in hbase-spark |  Minor | hbase-connectors, spark | Jan Hentschel | Jan Hentschel |
| [HBASE-19601](https://issues.apache.org/jira/browse/HBASE-19601) | Fix Checkstyle errors in hbase-rsgroup |  Minor | rsgroup | Jan Hentschel | Jan Hentschel |
| [HBASE-19599](https://issues.apache.org/jira/browse/HBASE-19599) | Remove ReplicationQueuesClient, use ReplicationQueueStorage directly |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-19579](https://issues.apache.org/jira/browse/HBASE-19579) | Add peer lock test for shell command list\_locks |  Major | proc-v2, Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-19573](https://issues.apache.org/jira/browse/HBASE-19573) | Rewrite ReplicationPeer with the new replication storage interface |  Major | proc-v2, Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-19630](https://issues.apache.org/jira/browse/HBASE-19630) | Add peer cluster key check when add new replication peer |  Major | proc-v2, Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19592](https://issues.apache.org/jira/browse/HBASE-19592) | Add UTs to test retry on update zk failure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19642](https://issues.apache.org/jira/browse/HBASE-19642) | Fix locking for peer modification procedure |  Critical | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19610](https://issues.apache.org/jira/browse/HBASE-19610) | Fix Checkstyle errors in hbase-protocol |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19617](https://issues.apache.org/jira/browse/HBASE-19617) | Remove ReplicationQueues, use ReplicationQueueStorage directly |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-19635](https://issues.apache.org/jira/browse/HBASE-19635) | Introduce a thread at RS side to call reportProcedureDone |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-19622](https://issues.apache.org/jira/browse/HBASE-19622) | Reimplement ReplicationPeers with the new replication storage interface |  Major | proc-v2, Replication | Guanghao Zhang | Zheng Hu |
| [HBASE-19633](https://issues.apache.org/jira/browse/HBASE-19633) | Clean up the replication queues in the postPeerModification stage when removing a peer |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19623](https://issues.apache.org/jira/browse/HBASE-19623) | Create replication endpoint asynchronously when adding a replication source |  Major | proc-v2, Replication | Zheng Hu | Duo Zhang |
| [HBASE-19686](https://issues.apache.org/jira/browse/HBASE-19686) | Use KeyLocker instead of ReentrantLock in PeerProcedureHandlerImpl |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19544](https://issues.apache.org/jira/browse/HBASE-19544) | Add UTs for testing concurrent modifications on replication peer |  Major | proc-v2, Replication, test | Duo Zhang | Guanghao Zhang |
| [HBASE-19606](https://issues.apache.org/jira/browse/HBASE-19606) | Fix Checkstyle errors in hbase-hadoop-compat |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19687](https://issues.apache.org/jira/browse/HBASE-19687) | Move the logic in ReplicationZKNodeCleaner to ReplicationChecker and remove ReplicationZKNodeCleanerChore |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19661](https://issues.apache.org/jira/browse/HBASE-19661) | Replace ReplicationStateZKBase with ZKReplicationStorageBase |  Major | proc-v2, Replication | Zheng Hu | Zheng Hu |
| [HBASE-19697](https://issues.apache.org/jira/browse/HBASE-19697) | Remove TestReplicationAdminUsingProcedure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19634](https://issues.apache.org/jira/browse/HBASE-19634) | Add permission check for executeProcedures in AccessController |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19636](https://issues.apache.org/jira/browse/HBASE-19636) | All rs should already start work with the new peer change when replication peer procedure is finished |  Major | proc-v2, Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19707](https://issues.apache.org/jira/browse/HBASE-19707) | Race in start and terminate of a replication source after we async start replicatione endpoint |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19711](https://issues.apache.org/jira/browse/HBASE-19711) | TestReplicationAdmin.testConcurrentPeerOperations hangs |  Major | proc-v2 | Duo Zhang | Guanghao Zhang |
| [HBASE-19719](https://issues.apache.org/jira/browse/HBASE-19719) | Fix checkstyle issues |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19603](https://issues.apache.org/jira/browse/HBASE-19603) | Fix Checkstyle errors in hbase-replication |  Minor | Replication | Jan Hentschel | Jan Hentschel |
| [HBASE-19471](https://issues.apache.org/jira/browse/HBASE-19471) | Fix remaining Checkstyle errors in hbase-thrift |  Minor | Thrift | Jan Hentschel | Jan Hentschel |
| [HBASE-19541](https://issues.apache.org/jira/browse/HBASE-19541) | Remove unnecessary semicolons in hbase-server |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19083](https://issues.apache.org/jira/browse/HBASE-19083) | Introduce a new log writer which can write to two HDFSes |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-19078](https://issues.apache.org/jira/browse/HBASE-19078) | Add a remote peer cluster wal directory config for synchronous replication |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-19747](https://issues.apache.org/jira/browse/HBASE-19747) | Introduce a special WALProvider for synchronous replication |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-17852](https://issues.apache.org/jira/browse/HBASE-17852) | Add Fault tolerance to HBASE-14417 (Support bulk loaded files in incremental backup) |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-19781](https://issues.apache.org/jira/browse/HBASE-19781) | Add a new cluster state flag for synchronous replication |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19857](https://issues.apache.org/jira/browse/HBASE-19857) | Complete the procedure for adding a sync replication peer |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19864](https://issues.apache.org/jira/browse/HBASE-19864) | Use protobuf instead of enum.ordinal to store SyncReplicationState |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-19765](https://issues.apache.org/jira/browse/HBASE-19765) | Fix Checkstyle errors in hbase-backup |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19936](https://issues.apache.org/jira/browse/HBASE-19936) | Introduce a new base class for replication peer procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19935](https://issues.apache.org/jira/browse/HBASE-19935) | Only allow table replication for sync replication for now |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-19957](https://issues.apache.org/jira/browse/HBASE-19957) | General framework to transit sync replication state |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19990](https://issues.apache.org/jira/browse/HBASE-19990) | Create remote wal directory when transitting to state S |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20082](https://issues.apache.org/jira/browse/HBASE-20082) | Fix findbugs errors only on master which are introduced by HBASE-19397 |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-19082](https://issues.apache.org/jira/browse/HBASE-19082) | Reject read/write from client but accept write from replication in state S |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20050](https://issues.apache.org/jira/browse/HBASE-20050) | Reimplement updateReplicationPositions logic in serial replication based on the newly introduced replication storage layer |  Major | . | Duo Zhang | Zheng Hu |
| [HBASE-19943](https://issues.apache.org/jira/browse/HBASE-19943) | Only allow removing sync replication peer which is in DA state |  Major | . | Duo Zhang | Zheng Hu |
| [HBASE-20115](https://issues.apache.org/jira/browse/HBASE-20115) | Reimplement serial replication based on the new replication storage layer |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20129](https://issues.apache.org/jira/browse/HBASE-20129) | Add UT for serial replication checker |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20125](https://issues.apache.org/jira/browse/HBASE-20125) | Add UT for serial replication after region split and merge |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-19973](https://issues.apache.org/jira/browse/HBASE-19973) | Implement a procedure to replay sync replication wal for standby cluster |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17851](https://issues.apache.org/jira/browse/HBASE-17851) | [TEST]: WAL to HFile conversion phase MUST detect and handle missing WAL files |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-20148](https://issues.apache.org/jira/browse/HBASE-20148) | Make serial replication as a option for a peer instead of a table |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-19969](https://issues.apache.org/jira/browse/HBASE-19969) | Improve fault tolerance in backup merge operation |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-20167](https://issues.apache.org/jira/browse/HBASE-20167) | Optimize the implementation of ReplicationSourceWALReader |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-19999](https://issues.apache.org/jira/browse/HBASE-19999) | Remove the SYNC\_REPLICATION\_ENABLED flag |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-20117](https://issues.apache.org/jira/browse/HBASE-20117) | Cleanup the unused replication barriers in meta table |  Major | master, Replication | Duo Zhang | Duo Zhang |
| [HBASE-20206](https://issues.apache.org/jira/browse/HBASE-20206) | WALEntryStream should not switch WAL file silently |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20242](https://issues.apache.org/jira/browse/HBASE-20242) | The open sequence number will grow if we fail to open a region after writing the max sequence id file |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20116](https://issues.apache.org/jira/browse/HBASE-20116) | Optimize the region last pushed sequence id layout on zk |  Major | Replication | Duo Zhang | Zheng Hu |
| [HBASE-18391](https://issues.apache.org/jira/browse/HBASE-18391) | List the stuffs which are using the patent grant license (PATENTS file) of Facebook; And then discuss and remove them. |  Blocker | community, dependencies | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20147](https://issues.apache.org/jira/browse/HBASE-20147) | Serial replication will be stuck if we create a table with serial replication but add it to a peer after there are region moves |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19983](https://issues.apache.org/jira/browse/HBASE-19983) | Update ref guide for hadoop versions to include 2.8 and 2.9 |  Major | documentation, hadoop2 | Mike Drob | Sean Busbey |
| [HBASE-20227](https://issues.apache.org/jira/browse/HBASE-20227) | Add UT for ReplicationUtils.contains method |  Major | Replication, test | Duo Zhang | Jingyun Tian |
| [HBASE-20271](https://issues.apache.org/jira/browse/HBASE-20271) | ReplicationSourceWALReader.switched should use the file name instead of the path object directly |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20127](https://issues.apache.org/jira/browse/HBASE-20127) | Add UT for serial replication after failover |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-20138](https://issues.apache.org/jira/browse/HBASE-20138) | Find a way to deal with the conflicts when updating replication position |  Major | Replication | Duo Zhang | Zheng Hu |
| [HBASE-20288](https://issues.apache.org/jira/browse/HBASE-20288) | [DOC] upgrade section needs to call out DLR |  Blocker | documentation, wal | Sean Busbey | Sean Busbey |
| [HBASE-20285](https://issues.apache.org/jira/browse/HBASE-20285) | Delete all last pushed sequence ids when removing a peer or removing the serial flag for a peer |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20273](https://issues.apache.org/jira/browse/HBASE-20273) | [DOC] include call out of additional changed config defaults in 2.0 upgrade |  Major | documentation | Sean Busbey | Mike Drob |
| [HBASE-20296](https://issues.apache.org/jira/browse/HBASE-20296) | Remove last pushed sequence ids when removing tables from a peer |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20256](https://issues.apache.org/jira/browse/HBASE-20256) | Document commands that do not work with 1.2 shell |  Major | documentation, shell | Peter Somogyi | Peter Somogyi |
| [HBASE-20348](https://issues.apache.org/jira/browse/HBASE-20348) | [DOC] call out change to tracing in upgrade guide |  Major | documentation, tracing | Sean Busbey | Mike Drob |
| [HBASE-20346](https://issues.apache.org/jira/browse/HBASE-20346) | [DOC] document change to shell tests |  Critical | documentation, shell | Sean Busbey | Mike Drob |
| [HBASE-20287](https://issues.apache.org/jira/browse/HBASE-20287) | After cluster startup list\_regions command fails on disabled table |  Minor | shell | Peter Somogyi | Peter Somogyi |
| [HBASE-19079](https://issues.apache.org/jira/browse/HBASE-19079) | Support setting up two clusters with A and S state |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20367](https://issues.apache.org/jira/browse/HBASE-20367) | Write a replication barrier for regions when disabling a table |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20253](https://issues.apache.org/jira/browse/HBASE-20253) | Error message is missing for restore\_snapshot |  Minor | shell | Peter Somogyi | Gabor Bota |
| [HBASE-20329](https://issues.apache.org/jira/browse/HBASE-20329) | Add note for operators to refguide on AsyncFSWAL |  Critical | documentation, wal | Michael Stack | Michael Stack |
| [HBASE-20163](https://issues.apache.org/jira/browse/HBASE-20163) | Forbid major compaction when standby cluster replay the remote wals |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20377](https://issues.apache.org/jira/browse/HBASE-20377) | Deal with table in enabling and disabling state when modifying serial replication peer |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20294](https://issues.apache.org/jira/browse/HBASE-20294) | Also cleanup last pushed sequence id in ReplicationBarrierCleaner |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20417](https://issues.apache.org/jira/browse/HBASE-20417) | Do not read wal entries when peer is disabled |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20128](https://issues.apache.org/jira/browse/HBASE-20128) | Add new UTs which extends the old replication UTs but set replication scope to SERIAL |  Major | . | Duo Zhang | Zheng Hu |
| [HBASE-20370](https://issues.apache.org/jira/browse/HBASE-20370) | Also remove the wal file in remote cluster when we finish replicating a file |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20275](https://issues.apache.org/jira/browse/HBASE-20275) | [DOC] clarify impact to hfile command from HBASE-17197 |  Major | documentation, tooling | Sean Busbey | Balazs Meszaros |
| [HBASE-19782](https://issues.apache.org/jira/browse/HBASE-19782) | Reject the replication request when peer is DA or A state |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-20425](https://issues.apache.org/jira/browse/HBASE-20425) | Do not write the cluster id of the current active cluster when writing remote WAL |  Major | . | Duo Zhang | Zheng Hu |
| [HBASE-19506](https://issues.apache.org/jira/browse/HBASE-19506) | Support variable sized chunks from ChunkCreator |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-20456](https://issues.apache.org/jira/browse/HBASE-20456) | Support removing a ReplicationSourceShipper for a special wal group |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-20434](https://issues.apache.org/jira/browse/HBASE-20434) | Also remove remote wals when peer is in DA state |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20458](https://issues.apache.org/jira/browse/HBASE-20458) | Support removing a WAL from LogRoller |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-20432](https://issues.apache.org/jira/browse/HBASE-20432) | Cleanup related resources when remove a sync replication peer |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20426](https://issues.apache.org/jira/browse/HBASE-20426) | Give up replicating anything in S state |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20378](https://issues.apache.org/jira/browse/HBASE-20378) | Provide a hbck option to cleanup replication barrier for a table |  Major | . | Duo Zhang | Jingyun Tian |
| [HBASE-20481](https://issues.apache.org/jira/browse/HBASE-20481) | Replicate entries from same region serially in ReplicationEndpoint for serial replication |  Major | . | Duo Zhang | Zheng Hu |
| [HBASE-19865](https://issues.apache.org/jira/browse/HBASE-19865) | Add UT for sync replication peer in DA state |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-20576](https://issues.apache.org/jira/browse/HBASE-20576) | Check remote WAL directory when creating peer and transiting peer to A |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20424](https://issues.apache.org/jira/browse/HBASE-20424) | Allow writing WAL to local and remote cluster concurrently |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20518](https://issues.apache.org/jira/browse/HBASE-20518) | Need to serialize the enabled field for UpdatePeerConfigProcedure |  Major | Replication | Duo Zhang | Yi Mei |
| [HBASE-20660](https://issues.apache.org/jira/browse/HBASE-20660) | Reopen regions using ReopenTableRegionsProcedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19724](https://issues.apache.org/jira/browse/HBASE-19724) | Fix Checkstyle errors in hbase-hadoop2-compat |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19761](https://issues.apache.org/jira/browse/HBASE-19761) | Fix Checkstyle errors in hbase-zookeeper |  Minor | . | Jan Hentschel | maoling |
| [HBASE-20628](https://issues.apache.org/jira/browse/HBASE-20628) | SegmentScanner does over-comparing when one flushing |  Critical | Performance | Michael Stack | Michael Stack |
| [HBASE-20569](https://issues.apache.org/jira/browse/HBASE-20569) | NPE in RecoverStandbyProcedure.execute |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-20637](https://issues.apache.org/jira/browse/HBASE-20637) | Polish the WAL switching when transiting from A to S |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20700](https://issues.apache.org/jira/browse/HBASE-20700) | Move meta region when server crash can cause the procedure to be stuck |  Critical | master, proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20722](https://issues.apache.org/jira/browse/HBASE-20722) | Make RegionServerTracker only depend on children changed event |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20730](https://issues.apache.org/jira/browse/HBASE-20730) | Add pv2 and amv2 chapters to refguide |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-20332](https://issues.apache.org/jira/browse/HBASE-20332) | shaded mapreduce module shouldn't include hadoop |  Critical | mapreduce, shading | Sean Busbey | Sean Busbey |
| [HBASE-20333](https://issues.apache.org/jira/browse/HBASE-20333) | break up shaded client into one with no Hadoop and one that's standalone |  Critical | shading | Sean Busbey | Sean Busbey |
| [HBASE-20615](https://issues.apache.org/jira/browse/HBASE-20615) | emphasize use of shaded client jars when they're present in an install |  Major | build, Client, Usability | Sean Busbey | Sean Busbey |
| [HBASE-20334](https://issues.apache.org/jira/browse/HBASE-20334) | add a test that expressly uses both our shaded client and the one from hadoop 3 |  Major | hadoop3, shading | Sean Busbey | Sean Busbey |
| [HBASE-20706](https://issues.apache.org/jira/browse/HBASE-20706) | [hack] Don't add known not-OPEN regions in reopen phase of MTP |  Critical | amv2 | Josh Elser | Josh Elser |
| [HBASE-20393](https://issues.apache.org/jira/browse/HBASE-20393) | Operational documents for synchronous replication. |  Major | documentation, Replication | Zheng Hu | Zheng Hu |
| [HBASE-20710](https://issues.apache.org/jira/browse/HBASE-20710) | extra cloneFamily() in Mutation.add(Cell) |  Minor | regionserver | Hua Xiang | Hua Xiang |
| [HBASE-19764](https://issues.apache.org/jira/browse/HBASE-19764) | Fix Checkstyle errors in hbase-endpoint |  Minor | . | Jan Hentschel | Guangxu Cheng |
| [HBASE-20780](https://issues.apache.org/jira/browse/HBASE-20780) | ServerRpcConnection logging cleanup |  Major | logging, Performance | Michael Stack | Michael Stack |
| [HBASE-20751](https://issues.apache.org/jira/browse/HBASE-20751) |  Performance comparison of synchronous replication branch and master branch |  Major | Performance | Zheng Hu | Zheng Hu |
| [HBASE-20194](https://issues.apache.org/jira/browse/HBASE-20194) | Basic Replication WebUI - Master |  Critical | Replication, Usability | Jingyun Tian | Jingyun Tian |
| [HBASE-20783](https://issues.apache.org/jira/browse/HBASE-20783) | NPE encountered when rolling update from master with an async peer to branch HBASE-19064 |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20790](https://issues.apache.org/jira/browse/HBASE-20790) | Fix the style issues on branch HBASE-19064 before merging back to master |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-20788](https://issues.apache.org/jira/browse/HBASE-20788) | Write up a doc about how to rolling upgrade from 1.x to 2.x |  Blocker | documentation | Duo Zhang | Duo Zhang |
| [HBASE-20801](https://issues.apache.org/jira/browse/HBASE-20801) | Fix broken TestReplicationShell |  Major | Replication, shell, test | Duo Zhang | Duo Zhang |
| [HBASE-20781](https://issues.apache.org/jira/browse/HBASE-20781) | Save recalculating families in a WALEdit batch of Cells |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20489](https://issues.apache.org/jira/browse/HBASE-20489) | Update Reference Guide that CLUSTER\_KEY value is present on the Master UI info page. |  Minor | documentation | Sakthi | Sakthi |
| [HBASE-20830](https://issues.apache.org/jira/browse/HBASE-20830) | Document that region replica does not work well with AMv2 |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-20193](https://issues.apache.org/jira/browse/HBASE-20193) | Basic Replication Web UI - Regionserver |  Critical | Replication, Usability | Jingyun Tian | Jingyun Tian |
| [HBASE-20244](https://issues.apache.org/jira/browse/HBASE-20244) | NoSuchMethodException when retrieving private method decryptEncryptedDataEncryptionKey from DFSClient |  Blocker | wal | Ted Yu | Ted Yu |
| [HBASE-20839](https://issues.apache.org/jira/browse/HBASE-20839) | Fallback to FSHLog if we can not instantiated AsyncFSWAL when user does not specify AsyncFSWAL explicitly |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-20502](https://issues.apache.org/jira/browse/HBASE-20502) | Document HBase incompatible with Yarn 2.9.0 and 3.0.x due to YARN-7190 |  Blocker | dependencies, documentation | Mike Drob | Mike Drob |
| [HBASE-20841](https://issues.apache.org/jira/browse/HBASE-20841) | Add note about the limitations when running WAL against the recent versions of hadoop |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20843](https://issues.apache.org/jira/browse/HBASE-20843) | Add release manager for 2.1 in ref guide |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-20847](https://issues.apache.org/jira/browse/HBASE-20847) | The parent procedure of RegionTransitionProcedure may not have the table lock |  Major | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20860](https://issues.apache.org/jira/browse/HBASE-20860) | Merged region's RIT state may not be cleaned after master restart |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20875](https://issues.apache.org/jira/browse/HBASE-20875) | MemStoreLABImp::copyIntoCell uses 7% CPU when writing |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20853](https://issues.apache.org/jira/browse/HBASE-20853) | Polish "Add defaults to Table Interface so Implementors don't have to" |  Major | API | Michael Stack | Balazs Meszaros |
| [HBASE-20909](https://issues.apache.org/jira/browse/HBASE-20909) | Add 2.1.0 to the download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-20914](https://issues.apache.org/jira/browse/HBASE-20914) | Trim Master memory usage |  Major | Balancer, master | Michael Stack | Michael Stack |
| [HBASE-20846](https://issues.apache.org/jira/browse/HBASE-20846) | Restore procedure locks when master restarts |  Major | . | Allan Yang | Duo Zhang |
| [HBASE-20878](https://issues.apache.org/jira/browse/HBASE-20878) | Data loss if merging regions while ServerCrashProcedure executing |  Critical | amv2 | Allan Yang | Allan Yang |
| [HBASE-20867](https://issues.apache.org/jira/browse/HBASE-20867) | RS may get killed while master restarts |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20921](https://issues.apache.org/jira/browse/HBASE-20921) | Possible NPE in ReopenTableRegionsProcedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-20939](https://issues.apache.org/jira/browse/HBASE-20939) | There will be race when we call suspendIfNotReady and then throw ProcedureSuspendedException |  Critical | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-19369](https://issues.apache.org/jira/browse/HBASE-19369) | HBase Should use Builder Pattern to Create Log Files while using WAL on Erasure Coding |  Major | . | Alex Leblang | Mike Drob |
| [HBASE-20950](https://issues.apache.org/jira/browse/HBASE-20950) | Helper method to configure secure DFS cluster for tests |  Major | test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20893](https://issues.apache.org/jira/browse/HBASE-20893) | Data loss if splitting region while ServerCrashProcedure executing |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20885](https://issues.apache.org/jira/browse/HBASE-20885) | Remove entry for RPC quota from hbase:quota when RPC quota is removed. |  Minor | . | Sakthi | Sakthi |
| [HBASE-20813](https://issues.apache.org/jira/browse/HBASE-20813) | Remove RPC quotas when the associated table/Namespace is dropped off |  Minor | . | Sakthi | Sakthi |
| [HBASE-21012](https://issues.apache.org/jira/browse/HBASE-21012) | Revert the change of serializing TimeRangeTracker |  Critical | . | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-21025](https://issues.apache.org/jira/browse/HBASE-21025) | Add cache for TableStateManager |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20975](https://issues.apache.org/jira/browse/HBASE-20975) | Lock may not be taken or released while rolling back procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21050](https://issues.apache.org/jira/browse/HBASE-21050) | Exclusive lock may be held by a SUCCESS state procedure forever |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-20881](https://issues.apache.org/jira/browse/HBASE-20881) | Introduce a region transition procedure to handle all the state transition for a region |  Major | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21095](https://issues.apache.org/jira/browse/HBASE-21095) | The timeout retry logic for several procedures are broken after master restarts |  Critical | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | Block out HBCK1 in hbase2 |  Major | hbck | Michael Stack | Michael Stack |
| [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | Create and implement HbckService in master |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-21017](https://issues.apache.org/jira/browse/HBASE-21017) | Revisit the expected states for open/close |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21083](https://issues.apache.org/jira/browse/HBASE-21083) | Introduce a mechanism to bypass the execution of a stuck procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21189](https://issues.apache.org/jira/browse/HBASE-21189) | flaky job should gather machine stats |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-21172](https://issues.apache.org/jira/browse/HBASE-21172) | Reimplement the retry backoff logic for ReopenTableRegionsProcedure |  Major | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21169](https://issues.apache.org/jira/browse/HBASE-21169) | Initiate hbck2 tool in hbase-operator-tools repo |  Major | hbck2 | Umesh Agashe | Michael Stack |
| [HBASE-21156](https://issues.apache.org/jira/browse/HBASE-21156) | [hbck2] Queue an assign of hbase:meta and bulk assign/unassign |  Critical | hbck2 | Michael Stack | Michael Stack |
| [HBASE-21023](https://issues.apache.org/jira/browse/HBASE-21023) | Add bypassProcedureToCompletion() API to HbckService |  Major | hbck2 | Umesh Agashe | Umesh Agashe |
| [HBASE-21214](https://issues.apache.org/jira/browse/HBASE-21214) | [hbck2] setTableState just sets hbase:meta state, not in-memory state |  Major | amv2, hbck2 | Michael Stack | Michael Stack |
| [HBASE-21217](https://issues.apache.org/jira/browse/HBASE-21217) | Revisit the executeProcedure method for open/close region |  Critical | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21227](https://issues.apache.org/jira/browse/HBASE-21227) | Implement exponential retrying backoff for Assign/UnassignRegionHandler introduced in HBASE-21217 |  Major | amv2, regionserver | Duo Zhang | Duo Zhang |
| [HBASE-21233](https://issues.apache.org/jira/browse/HBASE-21233) | Allow the procedure implementation to skip persistence of the state after a execution |  Major | Performance, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21244](https://issues.apache.org/jira/browse/HBASE-21244) | Skip persistence when retrying for assignment related procedures |  Major | amv2, Performance, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21249](https://issues.apache.org/jira/browse/HBASE-21249) | Add jitter for ProcedureUtil.getBackoffTimeMs |  Major | proc-v2 | Duo Zhang | Yi Mei |
| [HBASE-21245](https://issues.apache.org/jira/browse/HBASE-21245) | Add exponential backoff when retrying for sync replication related procedures |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-19275](https://issues.apache.org/jira/browse/HBASE-19275) | TestSnapshotFileCache never worked properly |  Major | . | Andrew Kyle Purtell | Xu Cang |
| [HBASE-21250](https://issues.apache.org/jira/browse/HBASE-21250) | Refactor WALProcedureStore and add more comments for better understanding the implementation |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21277](https://issues.apache.org/jira/browse/HBASE-21277) | Prevent to add same table to two sync replication peer's config |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21254](https://issues.apache.org/jira/browse/HBASE-21254) | Need to find a way to limit the number of proc wal files |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21309](https://issues.apache.org/jira/browse/HBASE-21309) | Increase the waiting timeout for TestProcedurePriority |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21278](https://issues.apache.org/jira/browse/HBASE-21278) | Do not rollback successful sub procedures when rolling back a procedure |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21315](https://issues.apache.org/jira/browse/HBASE-21315) | The getActiveMinProcId and getActiveMaxProcId of BitSetNode are incorrect if there are no active procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21311](https://issues.apache.org/jira/browse/HBASE-21311) | Split TestRestoreSnapshotFromClient |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21310](https://issues.apache.org/jira/browse/HBASE-21310) | Split TestCloneSnapshotFromClient |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21330](https://issues.apache.org/jira/browse/HBASE-21330) | ReopenTableRegionsProcedure will enter an infinite loop if we schedule a TRSP at the same time |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-20716](https://issues.apache.org/jira/browse/HBASE-20716) | Unsafe access cleanup |  Critical | Performance | Michael Stack | Sahil Aggarwal |
| [HBASE-21269](https://issues.apache.org/jira/browse/HBASE-21269) | Forward-port to branch-2 " HBASE-21213 [hbck2] bypass leaves behind     state in RegionStates when assign/unassign" |  Major | amv2 | Michael Stack | Jingyun Tian |
| [HBASE-21323](https://issues.apache.org/jira/browse/HBASE-21323) | Should not skip force updating for a sub procedure even if it has been finished |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21336](https://issues.apache.org/jira/browse/HBASE-21336) | Simplify the implementation of WALProcedureMap |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21354](https://issues.apache.org/jira/browse/HBASE-21354) | Procedure may be deleted improperly during master restarts resulting in 'Corrupt' |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21073](https://issues.apache.org/jira/browse/HBASE-21073) | "Maintenance mode" master |  Major | amv2, hbck2, master | Michael Stack | Mike Drob |
| [HBASE-21192](https://issues.apache.org/jira/browse/HBASE-21192) | Add HOW-TO repair damaged AMv2. |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21338](https://issues.apache.org/jira/browse/HBASE-21338) | [balancer] If balancer is an ill-fit for cluster size, it gives little indication |  Major | Balancer, Operability | Michael Stack | Xu Cang |
| [HBASE-21363](https://issues.apache.org/jira/browse/HBASE-21363) | Rewrite the buildingHoldCleanupTracker method in WALProcedureStore |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21372](https://issues.apache.org/jira/browse/HBASE-21372) | Set hbase.assignment.maximum.attempts to Long.MAX |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21215](https://issues.apache.org/jira/browse/HBASE-21215) | Figure how to invoke hbck2; make it easy to find |  Major | amv2, hbck2 | Michael Stack | Michael Stack |
| [HBASE-21364](https://issues.apache.org/jira/browse/HBASE-21364) | Procedure holds the lock should put to front of the queue after restart |  Blocker | . | Allan Yang | Allan Yang |
| [HBASE-21384](https://issues.apache.org/jira/browse/HBASE-21384) | Procedure with holdlock=false should not be restored lock when restarts |  Blocker | . | Allan Yang | Allan Yang |
| [HBASE-20973](https://issues.apache.org/jira/browse/HBASE-20973) | ArrayIndexOutOfBoundsException when rolling back procedure |  Critical | amv2 | Allan Yang | Duo Zhang |
| [HBASE-21375](https://issues.apache.org/jira/browse/HBASE-21375) | Revisit the lock and queue implementation in MasterProcedureScheduler |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21322](https://issues.apache.org/jira/browse/HBASE-21322) | Add a scheduleServerCrashProcedure() API to HbckService |  Critical | hbck2 | Jingyun Tian | Jingyun Tian |
| [HBASE-21389](https://issues.apache.org/jira/browse/HBASE-21389) | Revisit the procedure lock for sync replication |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-21191](https://issues.apache.org/jira/browse/HBASE-21191) | Add a holding-pattern if no assign for meta or namespace (Can happen if masterprocwals have been cleared). |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21351](https://issues.apache.org/jira/browse/HBASE-21351) | The force update thread may have race with PE worker when the procedure is rolling back |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21420](https://issues.apache.org/jira/browse/HBASE-21420) | Use procedure event to wake up the SyncReplicationReplayWALProcedures which wait for worker |  Major | Replication | Guanghao Zhang | Duo Zhang |
| [HBASE-21314](https://issues.apache.org/jira/browse/HBASE-21314) | The implementation of BitSetNode is not efficient |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21421](https://issues.apache.org/jira/browse/HBASE-21421) | Do not kill RS if reportOnlineRegions fails |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21441](https://issues.apache.org/jira/browse/HBASE-21441) | NPE if RS restarts between REFRESH\_PEER\_SYNC\_REPLICATION\_STATE\_ON\_RS\_BEGIN and TRANSIT\_PEER\_NEW\_SYNC\_REPLICATION\_STATE |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-21443](https://issues.apache.org/jira/browse/HBASE-21443) | [hbase-connectors] Purge hbase-\* modules from core now they've been moved to hbase-connectors |  Major | hbase-connectors, spark | Michael Stack | Michael Stack |
| [HBASE-21419](https://issues.apache.org/jira/browse/HBASE-21419) | Show sync replication related field for replication peer on master web UI |  Major | Replication | Duo Zhang | Jingyun Tian |
| [HBASE-21451](https://issues.apache.org/jira/browse/HBASE-21451) | The way we maintain the lastestPaths in ReplicationSourceManager is broken when sync replication is used |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-21376](https://issues.apache.org/jira/browse/HBASE-21376) | Add some verbose log to MasterProcedureScheduler |  Major | logging, proc-v2 | Allan Yang | Duo Zhang |
| [HBASE-21463](https://issues.apache.org/jira/browse/HBASE-21463) | The checkOnlineRegionsReport can accidentally complete a TRSP |  Critical | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21473](https://issues.apache.org/jira/browse/HBASE-21473) | RowIndexSeekerV1 may return cell with extra two \\x00\\x00 bytes which has no tags |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21472](https://issues.apache.org/jira/browse/HBASE-21472) | Should not persist the dispatched field for RegionRemoteProcedureBase |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21494](https://issues.apache.org/jira/browse/HBASE-21494) | NPE when loading RecoverStandByProcedure |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-21377](https://issues.apache.org/jira/browse/HBASE-21377) | Add debug log for procedure stack id related operations |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21490](https://issues.apache.org/jira/browse/HBASE-21490) | WALProcedure may remove proc wal files still with active procedures |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21508](https://issues.apache.org/jira/browse/HBASE-21508) | Ignore the reportRegionStateTransition call from a dead server |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21465](https://issues.apache.org/jira/browse/HBASE-21465) | Retry on reportRegionStateTransition can lead to unexpected errors |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21486](https://issues.apache.org/jira/browse/HBASE-21486) | The current replication implementation for peer in STANDBY state breaks serial replication |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-21515](https://issues.apache.org/jira/browse/HBASE-21515) | Also initialize an AsyncClusterConnection in HRegionServer |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-21516](https://issues.apache.org/jira/browse/HBASE-21516) | Use AsyncConnection instead of Connection in SecureBulkLoadManager |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-21526](https://issues.apache.org/jira/browse/HBASE-21526) | Use AsyncClusterConnection in ServerManager for getRsAdmin |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21570](https://issues.apache.org/jira/browse/HBASE-21570) | Add write buffer periodic flush support for AsyncBufferedMutator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21578](https://issues.apache.org/jira/browse/HBASE-21578) | Fix wrong throttling exception for capacity unit |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21401](https://issues.apache.org/jira/browse/HBASE-21401) | Sanity check when constructing the KeyValue |  Critical | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21650](https://issues.apache.org/jira/browse/HBASE-21650) | Add DDL operation and some other miscellaneous to thrift2 |  Major | Thrift | Allan Yang | Allan Yang |
| [HBASE-21579](https://issues.apache.org/jira/browse/HBASE-21579) | Use AsyncClusterConnection for HBaseInterClusterReplicationEndpoint |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-18569](https://issues.apache.org/jira/browse/HBASE-18569) | Add prefetch support for async region locator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-17356](https://issues.apache.org/jira/browse/HBASE-17356) | Add replica get support |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21538](https://issues.apache.org/jira/browse/HBASE-21538) | Rewrite RegionReplicaFlushHandler to use AsyncClusterConnection |  Major | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21361](https://issues.apache.org/jira/browse/HBASE-21361) | Disable printing of stack-trace in shell when quotas are not enabled |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21362](https://issues.apache.org/jira/browse/HBASE-21362) | Disable printing of stack-trace in shell when quotas are violated |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21159](https://issues.apache.org/jira/browse/HBASE-21159) | Add shell command to switch throttle on or off |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21682](https://issues.apache.org/jira/browse/HBASE-21682) | Support getting from specific replica |  Major | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21661](https://issues.apache.org/jira/browse/HBASE-21661) | Provide Thrift2 implementation of Table/Admin |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21652](https://issues.apache.org/jira/browse/HBASE-21652) | Refactor ThriftServer making thrift2 server inherited from thrift1 server |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21580](https://issues.apache.org/jira/browse/HBASE-21580) | Support getting Hbck instance from AsyncConnection |  Major | asyncclient, Client, hbck2 | Duo Zhang | Duo Zhang |
| [HBASE-21663](https://issues.apache.org/jira/browse/HBASE-21663) | Add replica scan support |  Major | asyncclient, Client, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21671](https://issues.apache.org/jira/browse/HBASE-21671) | Rewrite RegionReplicaReplicationEndpoint to use AsyncClusterConnection |  Major | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21705](https://issues.apache.org/jira/browse/HBASE-21705) | Should treat meta table specially for some methods in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21537](https://issues.apache.org/jira/browse/HBASE-21537) | Rewrite ServerManager.closeRegionSilentlyAndWait to use AsyncClusterConnection |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21719](https://issues.apache.org/jira/browse/HBASE-21719) | Rewrite RegionPlacementMaintainer to use AsyncClusterConnection |  Major | Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-19722](https://issues.apache.org/jira/browse/HBASE-19722) | Meta query statistics metrics source |  Critical | Coprocessors, meta, metrics, Operability | Andrew Kyle Purtell | Xu Cang |
| [HBASE-21647](https://issues.apache.org/jira/browse/HBASE-21647) | Add status track for splitting WAL tasks |  Major | Operability | Jingyun Tian | Jingyun Tian |
| [HBASE-21711](https://issues.apache.org/jira/browse/HBASE-21711) | Remove references to git.apache.org/hbase.git |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19695](https://issues.apache.org/jira/browse/HBASE-19695) | Handle disabled table for async client |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21726](https://issues.apache.org/jira/browse/HBASE-21726) | Add getAllRegionLocations method to AsyncTableRegionLocator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21034](https://issues.apache.org/jira/browse/HBASE-21034) | Add new throttle type: read/write capacity unit |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21738](https://issues.apache.org/jira/browse/HBASE-21738) | Remove all the CSLM#size operation in our memstore because it's an quite time consuming. |  Critical | Performance | Zheng Hu | Zheng Hu |
| [HBASE-21734](https://issues.apache.org/jira/browse/HBASE-21734) | Some optimization in FilterListWithOR |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21750](https://issues.apache.org/jira/browse/HBASE-21750) | Most of KeyValueUtil#length can be replaced by cell#getSerializedSize for better performance because the latter one has been optimized |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-17370](https://issues.apache.org/jira/browse/HBASE-17370) | Fix or provide shell scripts to drain and decommission region server |  Major | . | Jerry He | Nihal Jain |
| [HBASE-21761](https://issues.apache.org/jira/browse/HBASE-21761) | Align the methods in RegionLocator and AsyncTableRegionLocator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21713](https://issues.apache.org/jira/browse/HBASE-21713) | Support set region server throttle quota |  Major | . | Yi Mei | Yi Mei |
| [HBASE-20542](https://issues.apache.org/jira/browse/HBASE-20542) | Better heap utilization for IMC with MSLABs |  Major | in-memory-compaction | Eshcar Hillel | Eshcar Hillel |
| [HBASE-21739](https://issues.apache.org/jira/browse/HBASE-21739) | Move grant/revoke from regionserver to master |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21809](https://issues.apache.org/jira/browse/HBASE-21809) | Add retry thrift client for ThriftTable/Admin |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21764](https://issues.apache.org/jira/browse/HBASE-21764) | Size of in-memory compaction thread pool should be configurable |  Major | Compaction, in-memory-compaction | Zheng Hu | Zheng Hu |
| [HBASE-21778](https://issues.apache.org/jira/browse/HBASE-21778) | Remove the usage of the locateRegion related methods in ClusterConnection |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21828](https://issues.apache.org/jira/browse/HBASE-21828) | Make sure we do not return CompletionException when locating region |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21829](https://issues.apache.org/jira/browse/HBASE-21829) | Use FutureUtils.addListener instead of calling whenComplete directly |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21727](https://issues.apache.org/jira/browse/HBASE-21727) | Simplify documentation around client timeout |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21779](https://issues.apache.org/jira/browse/HBASE-21779) | Reimplement BulkLoadHFilesTool to use AsyncClusterConnection |  Major | mapreduce | Duo Zhang | Duo Zhang |
| [HBASE-21838](https://issues.apache.org/jira/browse/HBASE-21838) | Create a special ReplicationEndpoint just for verifying the WAL entries are fine |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-21585](https://issues.apache.org/jira/browse/HBASE-21585) | Remove ClusterConnection |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21896](https://issues.apache.org/jira/browse/HBASE-21896) | Add 2.1.3 to download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-21814](https://issues.apache.org/jira/browse/HBASE-21814) | Remove the TODO in AccessControlLists#addUserPermission |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21909](https://issues.apache.org/jira/browse/HBASE-21909) | Validate the put instance before executing in AsyncTable.put method |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21907](https://issues.apache.org/jira/browse/HBASE-21907) | Should set priority for rpc request |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21930](https://issues.apache.org/jira/browse/HBASE-21930) | Deal with ScannerResetException when opening region scanner |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21783](https://issues.apache.org/jira/browse/HBASE-21783) | Support exceed user/table/ns throttle quota if region server has available quota |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21945](https://issues.apache.org/jira/browse/HBASE-21945) | Maintain the original order when sending batch request |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21944](https://issues.apache.org/jira/browse/HBASE-21944) | Validate put for batch operation |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21927](https://issues.apache.org/jira/browse/HBASE-21927) | Always fail the locate request when error occur |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21962](https://issues.apache.org/jira/browse/HBASE-21962) | Filters do not work in ThriftTable |  Major | Thrift | Allan Yang | Allan Yang |
| [HBASE-21820](https://issues.apache.org/jira/browse/HBASE-21820) | Implement CLUSTER quota scope |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21916](https://issues.apache.org/jira/browse/HBASE-21916) | Abstract an ByteBuffAllocator to allocate/free ByteBuffer in ByteBufferPool |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21082](https://issues.apache.org/jira/browse/HBASE-21082) | Reimplement assign/unassign related procedure metrics |  Critical | amv2, metrics | Duo Zhang | Duo Zhang |
| [HBASE-21976](https://issues.apache.org/jira/browse/HBASE-21976) | Deal with RetryImmediatelyException for batching request |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21974](https://issues.apache.org/jira/browse/HBASE-21974) | Change Admin#grant/revoke parameter from UserPermission to user and Permission |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21978](https://issues.apache.org/jira/browse/HBASE-21978) | Should close AsyncRegistry if we fail to get cluster id when creating AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-18201](https://issues.apache.org/jira/browse/HBASE-18201) | add UT and docs for DataBlockEncodingTool |  Minor | tooling | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-21093](https://issues.apache.org/jira/browse/HBASE-21093) | Move TestCreateTableProcedure.testMRegions to a separated file |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21094](https://issues.apache.org/jira/browse/HBASE-21094) | Remove the explicit timeout config for TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21729](https://issues.apache.org/jira/browse/HBASE-21729) | Extract ProcedureCoordinatorRpcs and ProcedureMemberRpcs from CoordinatedStateManager |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21588](https://issues.apache.org/jira/browse/HBASE-21588) | Procedure v2 wal splitting implementation |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21934](https://issues.apache.org/jira/browse/HBASE-21934) | RemoteProcedureDispatcher should track the ongoing dispatched calls |  Blocker | proc-v2 | Jingyun Tian | Jingyun Tian |
| [HBASE-15728](https://issues.apache.org/jira/browse/HBASE-15728) | Add remaining per-table region / store / flush / compaction related metrics |  Major | metrics | Enis Soztutar | Xu Cang |
| [HBASE-21992](https://issues.apache.org/jira/browse/HBASE-21992) | Add release manager for 2.2 in ref guide |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21997](https://issues.apache.org/jira/browse/HBASE-21997) | Fix hbase-rest findbugs ST\_WRITE\_TO\_STATIC\_FROM\_INSTANCE\_METHOD complaint |  Major | REST | Michael Stack | Michael Stack |
| [HBASE-21949](https://issues.apache.org/jira/browse/HBASE-21949) | Fix flaky test TestHBaseTestingUtility.testMiniZooKeeperWithMultipleClientPorts |  Major | . | Guanghao Zhang | maoling |
| [HBASE-21917](https://issues.apache.org/jira/browse/HBASE-21917) | Make the HFileBlock#validateChecksum can accept ByteBuff as an input. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22000](https://issues.apache.org/jira/browse/HBASE-22000) | Deprecated isTableAvailable with splitKeys |  Major | asyncclient, Client | Duo Zhang | Junhong Xu |
| [HBASE-21999](https://issues.apache.org/jira/browse/HBASE-21999) | [DEBUG] Exit if git returns empty revision! |  Major | build | Michael Stack | Michael Stack |
| [HBASE-22016](https://issues.apache.org/jira/browse/HBASE-22016) | Rewrite the block reading methods by using hbase.nio.ByteBuff |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21717](https://issues.apache.org/jira/browse/HBASE-21717) | Implement Connection based on AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21977](https://issues.apache.org/jira/browse/HBASE-21977) | Skip replay WAL and update seqid when open regions restored from snapshot |  Major | Region Assignment, snapshots | Yi Mei | Yi Mei |
| [HBASE-22025](https://issues.apache.org/jira/browse/HBASE-22025) | RAT check fails in nightlies; fails on (old) test data files. |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22039](https://issues.apache.org/jira/browse/HBASE-22039) | Should add the synchronous parameter for the XXXSwitch method in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22040](https://issues.apache.org/jira/browse/HBASE-22040) | Add mergeRegionsAsync with a List of region names method in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22015](https://issues.apache.org/jira/browse/HBASE-22015) | UserPermission should be annotated as InterfaceAudience.Public |  Blocker | . | Yi Mei | Yi Mei |
| [HBASE-21911](https://issues.apache.org/jira/browse/HBASE-21911) | Move getUserPermissions from regionserver to master |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22094](https://issues.apache.org/jira/browse/HBASE-22094) | Throw TableNotFoundException if table not exists in AsyncAdmin.compact |  Major | Admin | Duo Zhang | Sakthi |
| [HBASE-22101](https://issues.apache.org/jira/browse/HBASE-22101) | AsyncAdmin.isTableAvailable should not throw TableNotFoundException |  Major | Admin, asyncclient, Client | Duo Zhang | Kevin Su |
| [HBASE-22135](https://issues.apache.org/jira/browse/HBASE-22135) | AsyncAdmin will not refresh master address |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22005](https://issues.apache.org/jira/browse/HBASE-22005) | Use ByteBuff's refcnt to track the life cycle of data block |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22141](https://issues.apache.org/jira/browse/HBASE-22141) | Fix TestAsyncDecommissionAdminApi |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22157](https://issues.apache.org/jira/browse/HBASE-22157) | Include the cause when constructing RestoreSnapshotException in restoreSnapshot |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22158](https://issues.apache.org/jira/browse/HBASE-22158) | RawAsyncHBaseAdmin.getTableSplits should filter out none default replicas |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | Create a jenkins file for yetus to processing GitHub PR |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22127](https://issues.apache.org/jira/browse/HBASE-22127) | Ensure that the block cached in the LRUBlockCache offheap is allocated from heap |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22153](https://issues.apache.org/jira/browse/HBASE-22153) | Fix the flaky TestRestartCluster |  Major | test | Zheng Hu | Duo Zhang |
| [HBASE-22155](https://issues.apache.org/jira/browse/HBASE-22155) | Move 2.2.0 on to hbase-thirdparty-2.2.0 |  Major | thirdparty | Michael Stack | Michael Stack |
| [HBASE-22117](https://issues.apache.org/jira/browse/HBASE-22117) | Move hasPermission/checkPermissions from region server to master |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21965](https://issues.apache.org/jira/browse/HBASE-21965) | Fix failed split and merge transactions that have failed to roll back |  Major | hbck2 | Jingyun Tian | Jingyun Tian |
| [HBASE-22196](https://issues.apache.org/jira/browse/HBASE-22196) | Split TestRestartCluster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19762](https://issues.apache.org/jira/browse/HBASE-19762) | Fix Checkstyle errors in hbase-http |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-21718](https://issues.apache.org/jira/browse/HBASE-21718) | Implement Admin based on AsyncAdmin |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22084](https://issues.apache.org/jira/browse/HBASE-22084) | Rename AccessControlLists to PermissionStorage |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22159](https://issues.apache.org/jira/browse/HBASE-22159) | ByteBufferIOEngine should support write off-heap ByteBuff to the bufferArray |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22241](https://issues.apache.org/jira/browse/HBASE-22241) | Fix TestRegionServerCoprocessorEndpoint |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21725](https://issues.apache.org/jira/browse/HBASE-21725) | Implement BufferedMutator Based on AsyncBufferedMutator |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22238](https://issues.apache.org/jira/browse/HBASE-22238) | Fix TestRpcControllerFactory |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22249](https://issues.apache.org/jira/browse/HBASE-22249) | Rest Server throws NoClassDefFoundError with Java 11 (run-time) |  Major | . | Sakthi | Sakthi |
| [HBASE-22244](https://issues.apache.org/jira/browse/HBASE-22244) | Make use of MetricsConnection in async client |  Major | asyncclient, metrics | Duo Zhang | Duo Zhang |
| [HBASE-19763](https://issues.apache.org/jira/browse/HBASE-19763) | Fix Checkstyle errors in hbase-procedure |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22267](https://issues.apache.org/jira/browse/HBASE-22267) | Implement client push back for async client |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22223](https://issues.apache.org/jira/browse/HBASE-22223) | Implement RegionLocator based on AsyncTableRegionLocator |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22261](https://issues.apache.org/jira/browse/HBASE-22261) | Make use of ClusterStatusListener for async client |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22208](https://issues.apache.org/jira/browse/HBASE-22208) | Create access checker and expose it in RS |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21957](https://issues.apache.org/jira/browse/HBASE-21957) | Unify refCount of BucketEntry and refCount of hbase.nio.ByteBuff into one |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19222](https://issues.apache.org/jira/browse/HBASE-19222) | update jruby to 9.1.17.0 |  Major | shell | Sean Busbey | Peter Somogyi |
| [HBASE-22211](https://issues.apache.org/jira/browse/HBASE-22211) | Remove the returnBlock  method because we can just call HFileBlock#release directly |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22281](https://issues.apache.org/jira/browse/HBASE-22281) | Fix failed shell UTs |  Major | shell | Duo Zhang | Duo Zhang |
| [HBASE-21937](https://issues.apache.org/jira/browse/HBASE-21937) | Make the Compression#decompress can accept ByteBuff as input |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22218](https://issues.apache.org/jira/browse/HBASE-22218) | Shell throws "Unsupported Java version" when tried with Java 11 (run-time) |  Major | . | Sakthi | Sakthi |
| [HBASE-22122](https://issues.apache.org/jira/browse/HBASE-22122) | Change to release mob hfile's block  after rpc server shipped response to client |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22302](https://issues.apache.org/jira/browse/HBASE-22302) | Fix TestHbck |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22297](https://issues.apache.org/jira/browse/HBASE-22297) | Fix TestRegionMergeTransitionOnCluster and TestSplitTransactionOnCluster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22239](https://issues.apache.org/jira/browse/HBASE-22239) | Also catch RemoteException in SyncReplicationTestBase.verifyReplicationRequestRejection |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22036](https://issues.apache.org/jira/browse/HBASE-22036) | Rewrite TestScannerHeartbeatMessages |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22317](https://issues.apache.org/jira/browse/HBASE-22317) | Support reading from meta replicas |  Major | asyncclient, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-22322](https://issues.apache.org/jira/browse/HBASE-22322) | Use special pause for CallQueueTooBigException |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22325](https://issues.apache.org/jira/browse/HBASE-22325) | AsyncRpcRetryingCaller will not schedule retry if we hit a NotServingRegionException but there is no TableName provided |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22328](https://issues.apache.org/jira/browse/HBASE-22328) | NPE in RegionReplicaReplicationEndpoint |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-22345](https://issues.apache.org/jira/browse/HBASE-22345) | REST Server must have specific version of javax.annotations available at runtime |  Major | REST | Sakthi | Sakthi |
| [HBASE-22364](https://issues.apache.org/jira/browse/HBASE-22364) | Fix remaining Checkstyle issue in hbase-hadoop2-compat |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22295](https://issues.apache.org/jira/browse/HBASE-22295) | Fix TestClientOperationTimeout |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21921](https://issues.apache.org/jira/browse/HBASE-21921) | Notify users if the ByteBufAllocator is always allocating ByteBuffers from heap which means the increacing GC pressure |  Minor | . | Zheng Hu | Zheng Hu |
| [HBASE-22090](https://issues.apache.org/jira/browse/HBASE-22090) | The HFileBlock#CacheableDeserializer should pass ByteBuffAllocator to the newly created HFileBlock |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22405](https://issues.apache.org/jira/browse/HBASE-22405) | Update Ref Guide for EOL of Hadoop 2.7 |  Major | community, documentation | Sean Busbey | Sean Busbey |
| [HBASE-22399](https://issues.apache.org/jira/browse/HBASE-22399) | Change default hadoop-two.version to 2.8.x and remove the 2.7.x hadoop checks |  Major | build, hadoop2 | Duo Zhang | Duo Zhang |
| [HBASE-22429](https://issues.apache.org/jira/browse/HBASE-22429) | hbase-vote download step requires URL to end with '/' |  Trivial | . | Andrew Kyle Purtell | Tak-Lon (Stephen) Wu |
| [HBASE-22430](https://issues.apache.org/jira/browse/HBASE-22430) | hbase-vote should tee build and test output to console |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22400](https://issues.apache.org/jira/browse/HBASE-22400) | Remove the adapter code in async fs implementation for hadoop-2.7.x |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-22412](https://issues.apache.org/jira/browse/HBASE-22412) | Improve the metrics in ByteBuffAllocator |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22037](https://issues.apache.org/jira/browse/HBASE-22037) | Re-enable TestAvoidCellReferencesIntoShippedBlocks |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22435](https://issues.apache.org/jira/browse/HBASE-22435) | Add a UT to address the HFileBlock#heapSize() in TestHeapSize |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22447](https://issues.apache.org/jira/browse/HBASE-22447) | Check refCount before free block in BucketCache |  Major | BucketCache | Lijin Bin | Lijin Bin |
| [HBASE-22445](https://issues.apache.org/jira/browse/HBASE-22445) | Add file info when throw exceptions in HFileReaderImpl |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-22478](https://issues.apache.org/jira/browse/HBASE-22478) | Add jackson dependency for hbase-http module |  Major | build, dependencies | Duo Zhang | Duo Zhang |
| [HBASE-22327](https://issues.apache.org/jira/browse/HBASE-22327) | Fix remaining Checkstyle issues in hbase-hadoop-compat |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22326](https://issues.apache.org/jira/browse/HBASE-22326) | Fix Checkstyle errors in hbase-examples |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22422](https://issues.apache.org/jira/browse/HBASE-22422) | Retain an ByteBuff with refCnt=0 when getBlock from LRUCache |  Major | BlockCache | Zheng Hu | Zheng Hu |
| [HBASE-21723](https://issues.apache.org/jira/browse/HBASE-21723) | Remove ConnectionImplementation and related classes |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22351](https://issues.apache.org/jira/browse/HBASE-22351) | Fix creating table timeout for TestProcedurePriority |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22316](https://issues.apache.org/jira/browse/HBASE-22316) | Record the stack trace for current thread in FutureUtils.get |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22463](https://issues.apache.org/jira/browse/HBASE-22463) | Some paths in HFileScannerImpl did not consider block#release  which will exhaust the ByteBuffAllocator |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22483](https://issues.apache.org/jira/browse/HBASE-22483) | It's better to use 65KB as the default buffer size in ByteBuffAllocator |  Major | BucketCache | Zheng Hu | Zheng Hu |
| [HBASE-22500](https://issues.apache.org/jira/browse/HBASE-22500) | Modify pom and jenkins jobs for hadoop versions |  Blocker | build, hadoop2, hadoop3 | Duo Zhang | Duo Zhang |
| [HBASE-22526](https://issues.apache.org/jira/browse/HBASE-22526) | RejectedExecutionException could be thrown from TableOverAsyncTable.coprocessor service if the connection has been shutown |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-22501](https://issues.apache.org/jira/browse/HBASE-22501) | Modify the hadoop support matrix in the ref guide |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-22535](https://issues.apache.org/jira/browse/HBASE-22535) | TestShellRSGroups fails when run on JDK11 |  Minor | java, shell | Sakthi | Sakthi |
| [HBASE-22536](https://issues.apache.org/jira/browse/HBASE-22536) | TestForeignExceptionSerialization fails when run on JDK11 |  Minor | java | Sakthi | Sakthi |
| [HBASE-22534](https://issues.apache.org/jira/browse/HBASE-22534) | TestCellUtil fails when run on JDK11 |  Minor | java, test | Sakthi | Sakthi |
| [HBASE-22554](https://issues.apache.org/jira/browse/HBASE-22554) | Upgrade to surefire 2.22.2 |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22357](https://issues.apache.org/jira/browse/HBASE-22357) | Fix remaining Checkstyle issues in hbase-replication |  Trivial | Replication | Jan Hentschel | Jan Hentschel |
| [HBASE-22553](https://issues.apache.org/jira/browse/HBASE-22553) | NPE in RegionReplicaReplicationEndpoint |  Major | read replicas, Replication | Duo Zhang | Duo Zhang |
| [HBASE-21970](https://issues.apache.org/jira/browse/HBASE-21970) | Document that how to upgrade from 2.0 or 2.1 to 2.2+ |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22550](https://issues.apache.org/jira/browse/HBASE-22550) | Throw exception when creating thread pool if the connection has already been closed |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21953](https://issues.apache.org/jira/browse/HBASE-21953) | Point make\_rc.sh at ./create-release/do-release-docker.sh instead |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22569](https://issues.apache.org/jira/browse/HBASE-22569) | Should treat null consistency as Consistency.STRONG in ConnectionUtils.timelineConsistentRead |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22491](https://issues.apache.org/jira/browse/HBASE-22491) | Separate the heap HFileBlock and offheap HFileBlock because the heap block won't need refCnt and save into prevBlocks list before shipping |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22458](https://issues.apache.org/jira/browse/HBASE-22458) | TestClassFinder fails when run on JDK11 |  Minor | java, test | Sakthi | Sakthi |
| [HBASE-22531](https://issues.apache.org/jira/browse/HBASE-22531) | The HFileReaderImpl#shouldUseHeap return the incorrect true when disabled BlockCache |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22575](https://issues.apache.org/jira/browse/HBASE-22575) | Add 2.2.0 to the download page |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22264](https://issues.apache.org/jira/browse/HBASE-22264) | Separate out jars related to JDK 11 into a folder in /lib |  Minor | java | Sakthi | Sakthi |
| [HBASE-22577](https://issues.apache.org/jira/browse/HBASE-22577) | BufferedMutatorOverAsyncBufferedMutator.tryCompleteFuture consume too much CPU time |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-22598](https://issues.apache.org/jira/browse/HBASE-22598) | Deprecated the hbase.ipc.server.reservoir.initial.buffer.size & hbase.ipc.server.reservoir.initial.max for HBase2.x compatibility |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22585](https://issues.apache.org/jira/browse/HBASE-22585) | Ensure javax.annotation doesn't get include in shaded artifacts when built with Java 11 |  Major | build, java | Sakthi | Sakthi |
| [HBASE-22588](https://issues.apache.org/jira/browse/HBASE-22588) | Upgrade jaxws-ri dependency to 2.3.2 |  Major | dependencies, java | Duo Zhang | Sakthi |
| [HBASE-21284](https://issues.apache.org/jira/browse/HBASE-21284) | Forward port HBASE-21000 to branch-2 |  Major | . | Andrew Kyle Purtell | Mingliang Liu |
| [HBASE-22547](https://issues.apache.org/jira/browse/HBASE-22547) | Align the config keys and add document for offheap read in HBase Book. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22612](https://issues.apache.org/jira/browse/HBASE-22612) | Address the final overview reviewing comments of HBASE-21879 |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21995](https://issues.apache.org/jira/browse/HBASE-21995) | Add a coprocessor to set HDFS ACL for hbase granted user |  Major | Coprocessors, security | Yi Mei | Yi Mei |
| [HBASE-20060](https://issues.apache.org/jira/browse/HBASE-20060) | Add details of off heap memstore into book. |  Critical | documentation | Anoop Sam John | Zheng Hu |
| [HBASE-22664](https://issues.apache.org/jira/browse/HBASE-22664) | Move protobuf stuff in hbase-rsgroup to hbase-protocol-shaded |  Major | Protobufs, Region Assignment, rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-22662](https://issues.apache.org/jira/browse/HBASE-22662) | Move RSGroupInfoManager to hbase-server |  Major | rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-7191](https://issues.apache.org/jira/browse/HBASE-7191) | HBCK - Add offline create/fix hbase.version and hbase.id |  Major | hbck | Enis Soztutar | xufeng |
| [HBASE-22685](https://issues.apache.org/jira/browse/HBASE-22685) | Add to migration doc that meta should be healthy before upgrade |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-22673](https://issues.apache.org/jira/browse/HBASE-22673) | Avoid to expose protobuf stuff in Hbck interface |  Major | hbck2 | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22663](https://issues.apache.org/jira/browse/HBASE-22663) | The HeapAllocationRatio in WebUI is not accurate because all of the heap allocation will happen in another separated allocator named HEAP |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22719](https://issues.apache.org/jira/browse/HBASE-22719) | Add debug support for github PR pre commit job |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22676](https://issues.apache.org/jira/browse/HBASE-22676) | Move all the code in hbase-rsgroup to hbase-server and remove hbase-rsgroup module |  Major | build, pom, rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-22527](https://issues.apache.org/jira/browse/HBASE-22527) | [hbck2] Add a master web ui to show the problematic regions |  Major | hbase-operator-tools, hbck2 | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22578](https://issues.apache.org/jira/browse/HBASE-22578) | HFileCleaner should not delete empty ns/table directories used for user san snapshot feature |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22742](https://issues.apache.org/jira/browse/HBASE-22742) | [HBCK2] Add more log for hbck operations at master side |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22709](https://issues.apache.org/jira/browse/HBASE-22709) | Add a chore thread in master to do hbck checking and display results in 'HBCK Report' page |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22580](https://issues.apache.org/jira/browse/HBASE-22580) | Add a table attribute to make user scan snapshot feature configurable for table |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22723](https://issues.apache.org/jira/browse/HBASE-22723) | Have CatalogJanitor report holes and overlaps; i.e. problems it sees when doing its regular scan of hbase:meta |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22741](https://issues.apache.org/jira/browse/HBASE-22741) | Show catalogjanitor consistency complaints in new 'HBCK Report' page |  Major | hbck2, UI | Michael Stack | Michael Stack |
| [HBASE-22768](https://issues.apache.org/jira/browse/HBASE-22768) | Revert to MPIR 2.9 |  Major | website | Peter Somogyi | Peter Somogyi |
| [HBASE-22737](https://issues.apache.org/jira/browse/HBASE-22737) | Add a new admin method and shell cmd to trigger the hbck chore to run |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22695](https://issues.apache.org/jira/browse/HBASE-22695) | Store the rsgroup of a table in table configuration |  Major | rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-22783](https://issues.apache.org/jira/browse/HBASE-22783) | Remove deprecated classes(status and load) usage from hbase-shell |  Major | shell | Viraj Jasani | Viraj Jasani |
| [HBASE-22807](https://issues.apache.org/jira/browse/HBASE-22807) | HBCK Report showed wrong orphans regions on FileSystem |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22776](https://issues.apache.org/jira/browse/HBASE-22776) | Rename config names in user scan snapshot feature |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22808](https://issues.apache.org/jira/browse/HBASE-22808) | HBCK Report showed the offline regions which belong to disabled table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22809](https://issues.apache.org/jira/browse/HBASE-22809) | Allow creating table in group when rs group contains no live servers |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22824](https://issues.apache.org/jira/browse/HBASE-22824) | Show filesystem path for the orphans regions on filesystem |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22803](https://issues.apache.org/jira/browse/HBASE-22803) | Modify config value range to enable turning off of the hbck chore |  Major | . | Sakthi | Sakthi |
| [HBASE-22777](https://issues.apache.org/jira/browse/HBASE-22777) | Add a multi-region merge (for fixing overlaps, etc.) |  Major | hbck2, proc-v2 | Michael Stack | Michael Stack |
| [HBASE-22845](https://issues.apache.org/jira/browse/HBASE-22845) | Revert MetaTableAccessor#makePutFromTableState access to public |  Blocker | . | Sakthi | Sakthi |
| [HBASE-22771](https://issues.apache.org/jira/browse/HBASE-22771) | [HBCK2] fixMeta method and server-side support |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-22842](https://issues.apache.org/jira/browse/HBASE-22842) | Tmp directory should not be deleted when master restart used for user scan snapshot feature |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22891](https://issues.apache.org/jira/browse/HBASE-22891) | Use HBaseQA in HBase-PreCommit-GitHub-PR job |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-22625](https://issues.apache.org/jira/browse/HBASE-22625) | documet use scan snapshot feature |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22819](https://issues.apache.org/jira/browse/HBASE-22819) | Automatically migrate the rs group config for table after HBASE-22695 |  Major | master, rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-22820](https://issues.apache.org/jira/browse/HBASE-22820) | Do not need to persist default rs group now |  Major | . | Duo Zhang | Xiaolin Ha |
| [HBASE-22858](https://issues.apache.org/jira/browse/HBASE-22858) | Add HBCK Report to master's header.jsp |  Minor | master | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22959](https://issues.apache.org/jira/browse/HBASE-22959) | Add 2.1.6 to download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-22945](https://issues.apache.org/jira/browse/HBASE-22945) | Show quota infos in master UI |  Major | master, UI | Yi Mei | Yi Mei |
| [HBASE-22946](https://issues.apache.org/jira/browse/HBASE-22946) | Fix TableNotFound when grant/revoke if AccessController is not loaded |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22878](https://issues.apache.org/jira/browse/HBASE-22878) | Show table throttle quotas in table jsp |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22729](https://issues.apache.org/jira/browse/HBASE-22729) | Start RSGroupInfoManager as default |  Major | master, rsgroup | Guanghao Zhang | Duo Zhang |
| [HBASE-22859](https://issues.apache.org/jira/browse/HBASE-22859) | [HBCK2] Fix the orphan regions on filesystem |  Major | documentation, hbck2 | Guanghao Zhang | Michael Stack |
| [HBASE-22987](https://issues.apache.org/jira/browse/HBASE-22987) | Calculate the region servers in default group in foreground |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-23014](https://issues.apache.org/jira/browse/HBASE-23014) | Should not show split parent regions in hbck report UI |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22993](https://issues.apache.org/jira/browse/HBASE-22993) | HBCK report UI showed -1 if hbck chore not running |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22796](https://issues.apache.org/jira/browse/HBASE-22796) | [HBCK2] Add fix of overlaps to fixMeta hbck Service |  Major | . | Michael Stack | Sakthi |
| [HBASE-23028](https://issues.apache.org/jira/browse/HBASE-23028) | Add 2.2.1 to download page |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22927](https://issues.apache.org/jira/browse/HBASE-22927) | Upgrade mockito version for Java 11 compatibility |  Major | . | Sakthi | Rabi Kumar K C |
| [HBASE-22971](https://issues.apache.org/jira/browse/HBASE-22971) | Deprecated RSGroupAdminEndpoint and make RSGroup feature always enabled |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22968](https://issues.apache.org/jira/browse/HBASE-22968) | Update website for branch-2.0 EOL |  Major | website | Duo Zhang | Sean Busbey |
| [HBASE-22982](https://issues.apache.org/jira/browse/HBASE-22982) | Send SIGSTOP to hang or SIGCONT to resume rs and add graceful rolling restart |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23106](https://issues.apache.org/jira/browse/HBASE-23106) | WAL tools doc cleanup; talk of WAL Reader/Verifier; link WALPlayer |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-23081](https://issues.apache.org/jira/browse/HBASE-23081) | Add an option to enable/disable rs group feature |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22986](https://issues.apache.org/jira/browse/HBASE-22986) | Add documentation for hbtop |  Minor | documentation, hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23130](https://issues.apache.org/jira/browse/HBASE-23130) | Add 2.1.7 to download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-22992](https://issues.apache.org/jira/browse/HBASE-22992) | Blog post for hbtop on hbase.apache.org |  Major | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23163](https://issues.apache.org/jira/browse/HBASE-23163) | Refactor HStore.getStorefilesSize related methods |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-22460](https://issues.apache.org/jira/browse/HBASE-22460) | Reopen a region if store reader references may have leaked |  Minor | . | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-23216](https://issues.apache.org/jira/browse/HBASE-23216) | Add 2.2.2 to download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-23232](https://issues.apache.org/jira/browse/HBASE-23232) | Remove rsgroup profile from pom.xml of hbase-assembly |  Major | build, rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-23050](https://issues.apache.org/jira/browse/HBASE-23050) | Use RSGroupInfoManager to get rsgroups in master UI's rsgroup part |  Major | . | Guanghao Zhang | Guangxu Cheng |
| [HBASE-23136](https://issues.apache.org/jira/browse/HBASE-23136) | PartionedMobFileCompactor bulkloaded files shouldn't get replicated (addressing buklload replication related issue raised in HBASE-22380) |  Critical | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22932](https://issues.apache.org/jira/browse/HBASE-22932) | Add rs group management methods in Admin and AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Xiaolin Ha |
| [HBASE-22480](https://issues.apache.org/jira/browse/HBASE-22480) | Get block from BlockCache once and return this block to BlockCache twice make ref count error. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23257](https://issues.apache.org/jira/browse/HBASE-23257) | Track ClusterID in stand by masters |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23253](https://issues.apache.org/jira/browse/HBASE-23253) | Rewrite rsgroup related UTs with the new methods introduced in HBASE-22932 |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-23275](https://issues.apache.org/jira/browse/HBASE-23275) | Track active master server name in ActiveMasterManager |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23322](https://issues.apache.org/jira/browse/HBASE-23322) | [hbck2] Simplification on HBCKSCP scheduling |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23307](https://issues.apache.org/jira/browse/HBASE-23307) | Add running of ReplicationBarrierCleaner to hbck2 fixMeta invocation |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23281](https://issues.apache.org/jira/browse/HBASE-23281) | Track meta region changes on masters |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23357](https://issues.apache.org/jira/browse/HBASE-23357) | Add 2.1.8 to download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-23085](https://issues.apache.org/jira/browse/HBASE-23085) | Network and Data related Actions |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-20461](https://issues.apache.org/jira/browse/HBASE-20461) | Implement fsync for AsyncFSWAL |  Major | wal | Michael Stack | Duo Zhang |
| [HBASE-23320](https://issues.apache.org/jira/browse/HBASE-23320) | Upgrade surefire plugin to 3.0.0-M4 |  Major | dependencies, test | Peter Somogyi | Rabi Kumar K C |
| [HBASE-23588](https://issues.apache.org/jira/browse/HBASE-23588) | Cache index blocks and bloom blocks on write if CacheCompactedBlocksOnWrite is enabled |  Major | . | ramkrishna.s.vasudevan | Viraj Jasani |
| [HBASE-23681](https://issues.apache.org/jira/browse/HBASE-23681) | Add UT for procedure store region flusher |  Major | proc-v2, RegionProcedureStore | Duo Zhang | Duo Zhang |
| [HBASE-23305](https://issues.apache.org/jira/browse/HBASE-23305) | Master based registry implementation |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23689](https://issues.apache.org/jira/browse/HBASE-23689) |  Bookmark for github PR to jira redirection |  Minor | documentation, tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23691](https://issues.apache.org/jira/browse/HBASE-23691) | Add 2.2.3 to download page |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23612](https://issues.apache.org/jira/browse/HBASE-23612) | Update pom.xml to use another 2.5.0 protoc as external protobuf |  Major | build | zhao bo | zhao bo |
| [HBASE-18326](https://issues.apache.org/jira/browse/HBASE-18326) | Fix and reenable TestMasterProcedureWalLease |  Blocker | test | Michael Stack | Szabolcs Bukros |
| [HBASE-23680](https://issues.apache.org/jira/browse/HBASE-23680) | RegionProcedureStore missing cleaning of hfile archive |  Major | proc-v2, RegionProcedureStore | Michael Stack | Duo Zhang |
| [HBASE-23722](https://issues.apache.org/jira/browse/HBASE-23722) | TestCustomSaslAuthenticationProvider failing in nightlies |  Major | . | Josh Elser | Josh Elser |
| [HBASE-23726](https://issues.apache.org/jira/browse/HBASE-23726) | Forward-port HBASE-21345 to branch-2.2, 2.3 & master as well. |  Major | . | Sakthi | Sakthi |
| [HBASE-23330](https://issues.apache.org/jira/browse/HBASE-23330) |   Expose cluster ID for clients using it for delegation token based auth |  Major | Client, master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23707](https://issues.apache.org/jira/browse/HBASE-23707) | Add IntelliJ check style plugin configuration |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23647](https://issues.apache.org/jira/browse/HBASE-23647) | Make MasterRegistry the default registry impl |  Major | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23738](https://issues.apache.org/jira/browse/HBASE-23738) | Remove deprecated createLocalHRegion from HBaseTestingUtility |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23753](https://issues.apache.org/jira/browse/HBASE-23753) | Update of errorprone generated failures |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23705](https://issues.apache.org/jira/browse/HBASE-23705) | Add CellComparator to HFileContext |  Major | io | Michael Stack | Michael Stack |
| [HBASE-23776](https://issues.apache.org/jira/browse/HBASE-23776) | Remove deprecated createLocalHTU from HBaseTestingUtility |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23777](https://issues.apache.org/jira/browse/HBASE-23777) | Remove deprecated createTableDescriptor(String, int, int, int, KeepDeletedCells) from HBaseTestingUtility |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23235](https://issues.apache.org/jira/browse/HBASE-23235) | Re-enable TestRSGroupsKillRS.testLowerMetaGroupVersion |  Major | rsgroup, test | Duo Zhang | Duo Zhang |
| [HBASE-23350](https://issues.apache.org/jira/browse/HBASE-23350) | Make compaction files cacheonWrite configurable based on threshold |  Major | Compaction | ramkrishna.s.vasudevan | Abhinaba Sarkar |
| [HBASE-23276](https://issues.apache.org/jira/browse/HBASE-23276) | Add admin methods to get tables within a group |  Major | Admin, Client, rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-23775](https://issues.apache.org/jira/browse/HBASE-23775) | Remove deprecated createLocalHTU(Configuration) from HBaseTestingUtility |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23807](https://issues.apache.org/jira/browse/HBASE-23807) | Make rsgroup related shell command to use the new admin methods |  Major | Admin, rsgroup, shell | Duo Zhang | Duo Zhang |
| [HBASE-23818](https://issues.apache.org/jira/browse/HBASE-23818) | Cleanup the remaining RSGroupInfo.getTables call in the code base |  Major | rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-23816](https://issues.apache.org/jira/browse/HBASE-23816) | [Flakey Test] TestExportSnapshotNoCluster.testSnapshotV2WithRefsExportFileSystemState(TestExportSnapshotNoCluster.java:91) Wrong FS! |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23304](https://issues.apache.org/jira/browse/HBASE-23304) | Implement RPCs needed for master based registry |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23331](https://issues.apache.org/jira/browse/HBASE-23331) | Document HBASE-18095 |  Major | documentation | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23844](https://issues.apache.org/jira/browse/HBASE-23844) | Remove deprecated Scan(byte[], Filter) from Scan |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23857](https://issues.apache.org/jira/browse/HBASE-23857) | Add 2.1.9 to download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-23877](https://issues.apache.org/jira/browse/HBASE-23877) | [Flakey Test] TestStochasticLoadBalancerRegionReplicaHighReplication "Two or more region replicas are hosted on the same host after balance" |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23755](https://issues.apache.org/jira/browse/HBASE-23755) | [OpenTracing] Declare HTrace is unusable in the user doc |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-23781](https://issues.apache.org/jira/browse/HBASE-23781) | Remove deprecated createTableDescriptor(String) from HBaseTestingUtility |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23740](https://issues.apache.org/jira/browse/HBASE-23740) | Invalid StoreFile WARN log message printed for recovered.hfiles directory |  Minor | MTTR | Pankaj Kumar | Pankaj Kumar |
| [HBASE-23890](https://issues.apache.org/jira/browse/HBASE-23890) | Update the rsgroup section in our ref guide |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-23911](https://issues.apache.org/jira/browse/HBASE-23911) | Attach the new rsgroup implementation design doc to our code base |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-23926](https://issues.apache.org/jira/browse/HBASE-23926) | [Flakey Tests] Down the flakies re-run ferocity; it makes for too many fails. |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23198](https://issues.apache.org/jira/browse/HBASE-23198) | Documentation and release notes |  Blocker | community, documentation, mob | Vladimir Rodionov | Sean Busbey |
| [HBASE-23767](https://issues.apache.org/jira/browse/HBASE-23767) | Add JDK11 compilation and unit test support to Github precommit |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23876](https://issues.apache.org/jira/browse/HBASE-23876) | Add JDK11 compilation and unit test support to nightly job |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23788](https://issues.apache.org/jira/browse/HBASE-23788) | ROW\_INDEX\_V1 encoder should consider the secondary index size with the encoded data size tracking |  Major | . | Anoop Sam John | Abhinaba Sarkar |
| [HBASE-23912](https://issues.apache.org/jira/browse/HBASE-23912) | Resolve the TODO of FSTableDescriptor's construct method |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23739](https://issues.apache.org/jira/browse/HBASE-23739) | BoundedRecoveredHFilesOutputSink should read the table descriptor directly |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23946](https://issues.apache.org/jira/browse/HBASE-23946) | [JDK11] Yetus should vote -0 for known JDK11 issues |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23979](https://issues.apache.org/jira/browse/HBASE-23979) | Disable TestSlowLogRecorder until parent addressed |  Major | test | Michael Stack | Michael Stack |
| [HBASE-23847](https://issues.apache.org/jira/browse/HBASE-23847) | Remove deprecated setStartRow(byte[]) from Scan |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23991](https://issues.apache.org/jira/browse/HBASE-23991) | [Flakey Tests] Disable TestSecureExport.testVisibilityLabels |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23891](https://issues.apache.org/jira/browse/HBASE-23891) | Add an option to Actions to filter out meta RS |  Minor | integration tests | Tamas Adami | Szabolcs Bukros |
| [HBASE-23993](https://issues.apache.org/jira/browse/HBASE-23993) | Use loopback for zk standalone server in minizkcluster |  Major | Zookeeper | Michael Stack | Michael Stack |
| [HBASE-24023](https://issues.apache.org/jira/browse/HBASE-24023) | Add 2.2.4 to download page |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24033](https://issues.apache.org/jira/browse/HBASE-24033) | Add ut for loading the corrupt recovered hfiles |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23799](https://issues.apache.org/jira/browse/HBASE-23799) | Make our core coprocessors use shaded protobuf |  Major | Coprocessors, Protobufs | Duo Zhang | Duo Zhang |
| [HBASE-23936](https://issues.apache.org/jira/browse/HBASE-23936) | Thrift support for get and clear slow\_log APIs |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24037](https://issues.apache.org/jira/browse/HBASE-24037) | Add ut for root dir and wal root dir are different |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24045](https://issues.apache.org/jira/browse/HBASE-24045) | Support setting \`-Dhadoop.profile\` in adhoc\_run\_tests.sh |  Minor | tooling | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23845](https://issues.apache.org/jira/browse/HBASE-23845) | Remove deprecated setMaxVersions() from Scan |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-23798](https://issues.apache.org/jira/browse/HBASE-23798) | Remove hbase-prototcol module |  Major | Protobufs | Duo Zhang | Duo Zhang |
| [HBASE-24007](https://issues.apache.org/jira/browse/HBASE-24007) | Get \`-PrunLargeTests\` passing on JDK11 |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23846](https://issues.apache.org/jira/browse/HBASE-23846) | Remove deprecated setMaxVersions(int) from Scan |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23992](https://issues.apache.org/jira/browse/HBASE-23992) | Fix TestAdminShell and TestQuotasShell mistakenly broken by parent commit |  Trivial | test | Michael Stack | Michael Stack |
| [HBASE-22022](https://issues.apache.org/jira/browse/HBASE-22022) | nightly fails rat check down in the dev-support/hbase\_nightly\_source-artifact.sh check |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23842](https://issues.apache.org/jira/browse/HBASE-23842) | Remove deprecated Scan(byte[], byte[]) from Scan |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23937](https://issues.apache.org/jira/browse/HBASE-23937) | Retrieve online large RPC logs |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24071](https://issues.apache.org/jira/browse/HBASE-24071) | [JDK11] Remove \`unit\` filter from nightly and precommit jobs |  Major | build, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23843](https://issues.apache.org/jira/browse/HBASE-23843) | Remove deprecated Scan(byte[]) from Scan |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-24109](https://issues.apache.org/jira/browse/HBASE-24109) | Change fork count from 0.5C to 0.25C |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24119](https://issues.apache.org/jira/browse/HBASE-24119) | Polish the protobuf usage in hbase-examples |  Major | Protobufs | Duo Zhang | Duo Zhang |
| [HBASE-24113](https://issues.apache.org/jira/browse/HBASE-24113) | Upgrade the maven we use from 3.5.4 to 3.6.3 in nightlies |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24062](https://issues.apache.org/jira/browse/HBASE-24062) | Add 2.1.10 to download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-23723](https://issues.apache.org/jira/browse/HBASE-23723) | Ensure MOB compaction works in optimized mode after snapshot clone |  Blocker | Compaction, mob, snapshots | Vladimir Rodionov | Sean Busbey |
| [HBASE-24134](https://issues.apache.org/jira/browse/HBASE-24134) | Down forked JVM heap size from 2800m to 2200m for jdk8 and jdk11 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24180](https://issues.apache.org/jira/browse/HBASE-24180) | Edit test doc around forkcount and speeding up test runs |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-24170](https://issues.apache.org/jira/browse/HBASE-24170) | Remove hadoop-2.0 profile |  Major | hadoop2, hadoop3, pom, scripts | Duo Zhang | Duo Zhang |
| [HBASE-23697](https://issues.apache.org/jira/browse/HBASE-23697) | Document new RegionProcedureStore operation and migration |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-23800](https://issues.apache.org/jira/browse/HBASE-23800) | Add documentation about the CECPs changes |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-24175](https://issues.apache.org/jira/browse/HBASE-24175) | [Flakey Tests] TestSecureExportSnapshot FileNotFoundException |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23829](https://issues.apache.org/jira/browse/HBASE-23829) | Get \`-PrunSmallTests\` passing on JDK11 |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24218](https://issues.apache.org/jira/browse/HBASE-24218) | Add hadoop 3.2.x in hadoop check |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-23848](https://issues.apache.org/jira/browse/HBASE-23848) | Remove deprecated setStopRow(byte[]) from Scan |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-24172](https://issues.apache.org/jira/browse/HBASE-24172) | Remove 2.1 from the release managers section in ref guide |  Major | documentation | Duo Zhang | Jan Hentschel |
| [HBASE-24143](https://issues.apache.org/jira/browse/HBASE-24143) | [JDK11] Switch default garbage collector from CMS |  Major | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24228](https://issues.apache.org/jira/browse/HBASE-24228) | Merge the code in hbase-hadoop2-compat module to hbase-hadoop-compat |  Major | hadoop2, hadoop3, pom | Duo Zhang | Duo Zhang |
| [HBASE-24171](https://issues.apache.org/jira/browse/HBASE-24171) | Remove 2.1.10 from download page |  Major | website | Duo Zhang | Jan Hentschel |
| [HBASE-24303](https://issues.apache.org/jira/browse/HBASE-24303) | Undo core of parent TestSecureRESTServer change; use fix over in HBASE-24280 instead |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24315](https://issues.apache.org/jira/browse/HBASE-24315) | Remove hadoop-two-compat.xml in hbase-assembly |  Major | build, hadoop2, hadoop3 | Duo Zhang | Duo Zhang |
| [HBASE-24265](https://issues.apache.org/jira/browse/HBASE-24265) | Remove hedged rpc call support, implement the logic in MaterRegistry directly |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-24310](https://issues.apache.org/jira/browse/HBASE-24310) | Use Slf4jRequestLog for hbase-http |  Major | logging | Duo Zhang | Duo Zhang |
| [HBASE-24331](https://issues.apache.org/jira/browse/HBASE-24331) | [Flakey Test] TestJMXListener rmi port clash |  Major | flakies, test | Michael Stack | Michael Stack |
| [HBASE-24354](https://issues.apache.org/jira/browse/HBASE-24354) | Make it so can make an hbase1 schema and hbase2 schema equate |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23938](https://issues.apache.org/jira/browse/HBASE-23938) | Replicate slow/large RPC calls to HDFS |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23771](https://issues.apache.org/jira/browse/HBASE-23771) | [Flakey Tests] Test TestSplitTransactionOnCluster Again |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24405](https://issues.apache.org/jira/browse/HBASE-24405) | Document hbase:slowlog in detail |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24433](https://issues.apache.org/jira/browse/HBASE-24433) | Add 2.2.5 to download page |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24449](https://issues.apache.org/jira/browse/HBASE-24449) | Generate version.h include file during compilation |  Major | Client, native-client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24343](https://issues.apache.org/jira/browse/HBASE-24343) | Document how to configure the http request log |  Major | documentation | Duo Zhang | Nick Dimiduk |
| [HBASE-23941](https://issues.apache.org/jira/browse/HBASE-23941) | get\_slowlog\_responses filters with AND/OR operator support |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24488](https://issues.apache.org/jira/browse/HBASE-24488) | Update docs re: ZooKeeper compatibility of 2.3.x release |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24309](https://issues.apache.org/jira/browse/HBASE-24309) | Avoid introducing log4j and slf4j-log4j dependencies for modules other than hbase-assembly |  Major | logging, pom | Duo Zhang | Duo Zhang |
| [HBASE-24505](https://issues.apache.org/jira/browse/HBASE-24505) | Reimplement Hbck.setRegionStateInMeta |  Blocker | hbck2 | Duo Zhang | Duo Zhang |
| [HBASE-24491](https://issues.apache.org/jira/browse/HBASE-24491) | Remove HRegionInfo |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-23997](https://issues.apache.org/jira/browse/HBASE-23997) | Consider JDK11 in our support matrix |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24519](https://issues.apache.org/jira/browse/HBASE-24519) | Add ndimiduk as release manager for 2.3 |  Minor | community, documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24005](https://issues.apache.org/jira/browse/HBASE-24005) | Document maven invocation with JDK11 |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24577](https://issues.apache.org/jira/browse/HBASE-24577) | Doc WALSplitter classes |  Trivial | wal | Michael Stack | Michael Stack |
| [HBASE-24574](https://issues.apache.org/jira/browse/HBASE-24574) | Procedure V2 - Distributed WAL Splitting =\> LOGGING |  Major | wal | Michael Stack | Michael Stack |
| [HBASE-24231](https://issues.apache.org/jira/browse/HBASE-24231) | Add hadoop 3.2.x in our support matrix |  Major | documentation | Duo Zhang | Nick Dimiduk |
| [HBASE-24630](https://issues.apache.org/jira/browse/HBASE-24630) | Purge dev javadoc from client bin tarball |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-22504](https://issues.apache.org/jira/browse/HBASE-22504) | Optimize the MultiByteBuff#get(ByteBuffer, offset, len) |  Major | BucketCache | Zheng Hu | Zheng Hu |
| [HBASE-24638](https://issues.apache.org/jira/browse/HBASE-24638) | Edit doc on (offheap) memory management |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-24650](https://issues.apache.org/jira/browse/HBASE-24650) | Change the return types of the new checkAndMutate methods introduced in HBASE-8458 |  Major | Client | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24712](https://issues.apache.org/jira/browse/HBASE-24712) | [Flaky] TestMasterNoCluster.testStopDuringStart on master |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24487](https://issues.apache.org/jira/browse/HBASE-24487) | Add 2.3 Documentation to the website |  Major | community, documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24566](https://issues.apache.org/jira/browse/HBASE-24566) | Add 2.3.0 to the downloads page |  Major | community | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24698](https://issues.apache.org/jira/browse/HBASE-24698) | Turn OFF Canary WebUI as default |  Major | canary | Michael Stack | Michael Stack |
| [HBASE-24718](https://issues.apache.org/jira/browse/HBASE-24718) | Generic NamedQueue framework for recent in-memory history (refactor slowlog) |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24762](https://issues.apache.org/jira/browse/HBASE-24762) | Purge protobuf java 2.5.0 dependency |  Major | dependencies, Protobufs | Duo Zhang | Duo Zhang |
| [HBASE-24632](https://issues.apache.org/jira/browse/HBASE-24632) | Enable procedure-based log splitting as default in hbase3 |  Major | wal | Michael Stack | Michael Stack |
| [HBASE-24507](https://issues.apache.org/jira/browse/HBASE-24507) | Remove HTableDescriptor and HColumnDescriptor |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-24817](https://issues.apache.org/jira/browse/HBASE-24817) | Allow configuring WALEntry filters on ReplicationSource |  Major | Replication, wal | Michael Stack | Michael Stack |
| [HBASE-24680](https://issues.apache.org/jira/browse/HBASE-24680) | Refactor the checkAndMutate code on the server side |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24846](https://issues.apache.org/jira/browse/HBASE-24846) | Address compaction races in TestFIFOCompactionPolicy |  Major | Compaction, master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24841](https://issues.apache.org/jira/browse/HBASE-24841) | Change the jenkins job urls in our jenkinsfile |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-23851](https://issues.apache.org/jira/browse/HBASE-23851) | Log networks and bind addresses when multicast publisher/listener enabled |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-24876](https://issues.apache.org/jira/browse/HBASE-24876) | Fix the flaky job url in hbase-personality.sh |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24126](https://issues.apache.org/jira/browse/HBASE-24126) | Up the container nproc uplimit from 10000 to 12500 |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24150](https://issues.apache.org/jira/browse/HBASE-24150) | Allow module tests run in parallel |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24887](https://issues.apache.org/jira/browse/HBASE-24887) | Remove Row.compareTo |  Major | . | Duo Zhang | Junhong Xu |
| [HBASE-24880](https://issues.apache.org/jira/browse/HBASE-24880) | Remove ReplicationPeerConfigUpgrader |  Major | Replication | Duo Zhang | niuyulin |
| [HBASE-24806](https://issues.apache.org/jira/browse/HBASE-24806) | Small Updates to Functionality of Shell IRB Workspace |  Major | shell | Elliot Miller | Elliot Miller |
| [HBASE-24886](https://issues.apache.org/jira/browse/HBASE-24886) | Remove deprecated methods in RowMutations |  Major | Client | Duo Zhang | niuyulin |
| [HBASE-24867](https://issues.apache.org/jira/browse/HBASE-24867) | Add 2.3.1 to the downloads page |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24918](https://issues.apache.org/jira/browse/HBASE-24918) | Make RegionInfo#UNDEFINED IA.Private |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24935](https://issues.apache.org/jira/browse/HBASE-24935) | Remove 1.3.6 from download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-24052](https://issues.apache.org/jira/browse/HBASE-24052) | Add debug+fix to TestMasterShutdown |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-24944](https://issues.apache.org/jira/browse/HBASE-24944) | Remove MetaTableAccessor.getTableRegionsAndLocations in hbase-rest module |  Major | meta, REST | Duo Zhang | Duo Zhang |
| [HBASE-24945](https://issues.apache.org/jira/browse/HBASE-24945) | Remove MetaTableAccessor.getRegionCount |  Major | mapreduce, meta | Duo Zhang | Duo Zhang |
| [HBASE-24765](https://issues.apache.org/jira/browse/HBASE-24765) | Dynamic master discovery |  Major | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24964](https://issues.apache.org/jira/browse/HBASE-24964) | Remove MetaTableAccessor.tableExists |  Major | meta | Duo Zhang | Duo Zhang |
| [HBASE-24986](https://issues.apache.org/jira/browse/HBASE-24986) | Move ReplicationBarrier related methods to a separated class |  Major | meta, Replication | Duo Zhang | Duo Zhang |
| [HBASE-25000](https://issues.apache.org/jira/browse/HBASE-25000) | Move delete region info related methods to RegionStateStore |  Major | meta | Duo Zhang | Duo Zhang |
| [HBASE-24857](https://issues.apache.org/jira/browse/HBASE-24857) |  Fix several problems when starting webUI |  Minor | canary, UI | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-23643](https://issues.apache.org/jira/browse/HBASE-23643) | Add document for "HBASE-23065 [hbtop] Top-N heavy hitter user and client drill downs" |  Major | documentation, hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-25008](https://issues.apache.org/jira/browse/HBASE-25008) | Add document for "HBASE-24776 [hbtop] Support Batch mode" |  Major | documentation, hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-25067](https://issues.apache.org/jira/browse/HBASE-25067) | Edit of log messages around async WAL Replication; checkstyle fixes; and a bugfix |  Major | . | Michael Stack | Michael Stack |
| [HBASE-25045](https://issues.apache.org/jira/browse/HBASE-25045) | Add 2.3.2 to the downloads page |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-25070](https://issues.apache.org/jira/browse/HBASE-25070) | Cleanup of unused RPC APIs in the presence of generic API getLogEntries |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-25107](https://issues.apache.org/jira/browse/HBASE-25107) | Migrate flaky reporting jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25103](https://issues.apache.org/jira/browse/HBASE-25103) | Remove ZNodePaths.metaReplicaZNodes |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-25132](https://issues.apache.org/jira/browse/HBASE-25132) | Migrate flaky test jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25133](https://issues.apache.org/jira/browse/HBASE-25133) | Migrate HBase Nightly jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25121](https://issues.apache.org/jira/browse/HBASE-25121) | Refactor MetaTableAccessor.addRegionsToMeta and its usage places |  Major | meta | Duo Zhang | Duo Zhang |
| [HBASE-25154](https://issues.apache.org/jira/browse/HBASE-25154) | Set java.io.tmpdir to project build directory to avoid writing std\*deferred files to /tmp |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-23959](https://issues.apache.org/jira/browse/HBASE-23959) | Fix javadoc for JDK11 |  Major | . | Nick Dimiduk | Semen Komissarov |
| [HBASE-25124](https://issues.apache.org/jira/browse/HBASE-25124) | Support changing region replica count without disabling table |  Major | meta, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-22976](https://issues.apache.org/jira/browse/HBASE-22976) | [HBCK2] Add RecoveredEditsPlayer |  Major | hbck2, walplayer | Michael Stack | Michael Stack |
| [HBASE-25163](https://issues.apache.org/jira/browse/HBASE-25163) | Increase the timeout value for nightly jobs |  Major | jenkins, scripts, test | Duo Zhang | Duo Zhang |
| [HBASE-25162](https://issues.apache.org/jira/browse/HBASE-25162) | Make flaky tests run more aggressively |  Major | jenkins, scripts, test | Duo Zhang | yuqi |
| [HBASE-25175](https://issues.apache.org/jira/browse/HBASE-25175) | Remove the constructors of HBaseConfiguration |  Major | API | Duo Zhang | niuyulin |
| [HBASE-25164](https://issues.apache.org/jira/browse/HBASE-25164) | Make ModifyTableProcedure support changing meta replica count |  Major | meta, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-25169](https://issues.apache.org/jira/browse/HBASE-25169) | Update documentation about meta region replica |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-25194](https://issues.apache.org/jira/browse/HBASE-25194) | Do not publish workspace in flaky find job |  Major | jenkins | Duo Zhang | Duo Zhang |
| [HBASE-25203](https://issues.apache.org/jira/browse/HBASE-25203) | Change the reference url to flaky list in our jenkins jobs |  Major | flakies, jenkins | Duo Zhang | Duo Zhang |
| [HBASE-25198](https://issues.apache.org/jira/browse/HBASE-25198) | Remove RpcSchedulerFactory#create(Configuration, PriorityFunction) |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-25197](https://issues.apache.org/jira/browse/HBASE-25197) | Remove SingletonCoprocessorService |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-25173](https://issues.apache.org/jira/browse/HBASE-25173) | Remove owner related methods in TableDescriptor/TableDescriptorBuilder |  Major | API, Client | Duo Zhang | wenfeiyi666 |
| [HBASE-25235](https://issues.apache.org/jira/browse/HBASE-25235) | Cleanup the deprecated methods in TimeRange |  Major | API, Client | Duo Zhang | Duo Zhang |
| [HBASE-25257](https://issues.apache.org/jira/browse/HBASE-25257) | Remove MirroringTableStateManager |  Major | master | Duo Zhang | Duo Zhang |
| [HBASE-25253](https://issues.apache.org/jira/browse/HBASE-25253) | Deprecated master carrys regions related methods and configs |  Major | Balancer, master | Duo Zhang | wenfeiyi666 |
| [HBASE-25127](https://issues.apache.org/jira/browse/HBASE-25127) | Enhance PerformanceEvaluation to profile meta replica performance. |  Major | . | Huaxiang Sun | Clara Xiong |
| [HBASE-25284](https://issues.apache.org/jira/browse/HBASE-25284) | Check-in "Enable memstore replication..." design |  Major | . | Michael Stack | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14184](https://issues.apache.org/jira/browse/HBASE-14184) | Fix indention and typo in JavaHBaseContext |  Minor | hbase-connectors, spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14123](https://issues.apache.org/jira/browse/HBASE-14123) | HBase Backup/Restore Phase 2 |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17748](https://issues.apache.org/jira/browse/HBASE-17748) | Include HBase Snapshots in Space Quotas |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20360](https://issues.apache.org/jira/browse/HBASE-20360) | Further optimization for serial replication |  Major | Replication | Duo Zhang |  |
| [HBASE-20540](https://issues.apache.org/jira/browse/HBASE-20540) | [umbrella] Hadoop 3 compatibility |  Major | . | Duo Zhang |  |
| [HBASE-20152](https://issues.apache.org/jira/browse/HBASE-20152) | [AMv2] DisableTableProcedure versus ServerCrashProcedure |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21489](https://issues.apache.org/jira/browse/HBASE-21489) | TestShell is broken |  Major | shell | Duo Zhang | Reid Chan |
| [HBASE-18735](https://issues.apache.org/jira/browse/HBASE-18735) | Provide a fast mechanism for shutting down mini cluster |  Major | . | Samarth Jain | Artem Ervits |
| [HBASE-21612](https://issues.apache.org/jira/browse/HBASE-21612) | Add developer debug options in  HBase Config for REST server |  Minor | Operability, REST, scripts | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21512](https://issues.apache.org/jira/browse/HBASE-21512) | Reimplement sync client based on async client |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22833](https://issues.apache.org/jira/browse/HBASE-22833) | MultiRowRangeFilter should provide a method for creating a filter which is functionally equivalent to multiple prefix filters |  Minor | Client | Itsuki Toyota | Itsuki Toyota |
| [HBASE-21745](https://issues.apache.org/jira/browse/HBASE-21745) | Make HBCK2 be able to fix issues other than region assignment |  Critical | hbase-operator-tools, hbck2 | Duo Zhang | Michael Stack |
| [HBASE-22514](https://issues.apache.org/jira/browse/HBASE-22514) | Reimplement rsgroup feature and move it into core of HBase |  Major | Admin, Client, rsgroup | Yechao Chen | Duo Zhang |
| [HBASE-23797](https://issues.apache.org/jira/browse/HBASE-23797) | Let CPEPs also use our shaded protobuf |  Blocker | Coprocessors, Protobufs | Duo Zhang | Duo Zhang |
| [HBASE-24169](https://issues.apache.org/jira/browse/HBASE-24169) | Drop hadoop 2 support for hbase 3.x |  Blocker | hadoop2, hadoop3, pom | Duo Zhang | Duo Zhang |
| [HBASE-20610](https://issues.apache.org/jira/browse/HBASE-20610) | Procedure V2 - Distributed Log Splitting |  Major | proc-v2 | Guanghao Zhang | Jingyun Tian |
| [HBASE-24217](https://issues.apache.org/jira/browse/HBASE-24217) | Add hadoop 3.2.x support |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-17919](https://issues.apache.org/jira/browse/HBASE-17919) | HBase 2.x over hadoop 3.x  umbrella |  Critical | hadoop3 | Jonathan Hsieh |  |
| [HBASE-25099](https://issues.apache.org/jira/browse/HBASE-25099) | Change meta replica count by altering meta table descriptor |  Major | meta, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-14375](https://issues.apache.org/jira/browse/HBASE-14375) | Define public API for spark integration module |  Blocker | spark | Sean Busbey | Jerry He |
| [HBASE-18181](https://issues.apache.org/jira/browse/HBASE-18181) | Move master branch to version 3.0.0-SNAPSHOT post creation of branch-2 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-18202](https://issues.apache.org/jira/browse/HBASE-18202) | Trim down supplemental models file for unnecessary entries |  Major | dependencies | Mike Drob | Mike Drob |
| [HBASE-14161](https://issues.apache.org/jira/browse/HBASE-14161) | Add hbase-spark integration tests to IT jenkins job |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-18558](https://issues.apache.org/jira/browse/HBASE-18558) | clean up duplicate dependency management entries for hbase-shaded-miscellaneous |  Minor | dependencies, pom | Sean Busbey | ChunHao |
| [HBASE-18724](https://issues.apache.org/jira/browse/HBASE-18724) | Close stale github PRs |  Major | community | Sean Busbey | Sean Busbey |
| [HBASE-19271](https://issues.apache.org/jira/browse/HBASE-19271) | Update ref guide about the async client to reflect the change in HBASE-19251 |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-15124](https://issues.apache.org/jira/browse/HBASE-15124) | Document the new 'normalization' feature in refguid |  Critical | documentation | Michael Stack | Romil Choksi |
| [HBASE-17664](https://issues.apache.org/jira/browse/HBASE-17664) | Remove unnecessary semicolons throughout the code base |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-20073](https://issues.apache.org/jira/browse/HBASE-20073) | remove 1.1 references from website landing pages |  Major | website | Sean Busbey | Sean Busbey |
| [HBASE-20161](https://issues.apache.org/jira/browse/HBASE-20161) | disable HBase-Trunk\_matrix job |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-16412](https://issues.apache.org/jira/browse/HBASE-16412) | Warnings from asciidoc |  Minor | documentation | Nick Dimiduk | Michael Stack |
| [HBASE-20264](https://issues.apache.org/jira/browse/HBASE-20264) | Update Java prerequisite section with LTS rec and status of current GA JDKs |  Critical | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20323](https://issues.apache.org/jira/browse/HBASE-20323) | Clean out references to component owners |  Minor | community, documentation | Sean Busbey | Sean Busbey |
| [HBASE-20371](https://issues.apache.org/jira/browse/HBASE-20371) | website landing page should draw attention to CFP |  Minor | website | Sean Busbey | Sean Busbey |
| [HBASE-17918](https://issues.apache.org/jira/browse/HBASE-17918) | document serial replication |  Critical | documentation, Replication | Sean Busbey | Yi Mei |
| [HBASE-20372](https://issues.apache.org/jira/browse/HBASE-20372) | [website] move stuff from more than 2 years ago to old news |  Minor | website | Sean Busbey | Sean Busbey |
| [HBASE-20112](https://issues.apache.org/jira/browse/HBASE-20112) | Include test results from nightly hadoop3 tests in jenkins test results |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20391](https://issues.apache.org/jira/browse/HBASE-20391) | close out stale or finished PRs on github |  Minor | community, documentation | Sean Busbey | Sean Busbey |
| [HBASE-20443](https://issues.apache.org/jira/browse/HBASE-20443) | Use checkstyle to ban imports from commons-collections 3 |  Major | dependencies, test | Sean Busbey | Balazs Meszaros |
| [HBASE-20441](https://issues.apache.org/jira/browse/HBASE-20441) | Use checkstyle to ban imports from commons-lang 2 |  Major | dependencies, test | Sean Busbey | Balazs Meszaros |
| [HBASE-20510](https://issues.apache.org/jira/browse/HBASE-20510) | Add a downloads page to hbase.apache.org to tie mirrored artifacts to their hash and signature |  Major | website | Michael Stack | Michael Stack |
| [HBASE-20593](https://issues.apache.org/jira/browse/HBASE-20593) | HBase website landing page should link to HBaseCon Asia 2018 |  Major | website | Sean Busbey | Sean Busbey |
| [HBASE-20595](https://issues.apache.org/jira/browse/HBASE-20595) | Remove the concept of 'special tables' from rsgroups |  Major | Region Assignment, rsgroup | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20501](https://issues.apache.org/jira/browse/HBASE-20501) | Change the Hadoop minimum version to 2.7.1 |  Blocker | community, documentation | Andrew Kyle Purtell | Sean Busbey |
| [HBASE-19475](https://issues.apache.org/jira/browse/HBASE-19475) | Extend backporting strategy in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-20677](https://issues.apache.org/jira/browse/HBASE-20677) | Backport test of HBASE-20566 'Creating a system table after enabling rsgroup feature puts region into RIT' to branch-2 |  Major | . | Ted Yu | Nihal Jain |
| [HBASE-20665](https://issues.apache.org/jira/browse/HBASE-20665) | "Already cached block XXX" message should be DEBUG |  Minor | BlockCache | Sean Busbey | Eric Maynard |
| [HBASE-20270](https://issues.apache.org/jira/browse/HBASE-20270) | Turn off command help that follows all errors in shell |  Major | shell | Sean Busbey | Sakthi |
| [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | Replace usage of our Base64 implementation with java.util.Base64 |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20915](https://issues.apache.org/jira/browse/HBASE-20915) | Remove the commit column on our download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-20989](https://issues.apache.org/jira/browse/HBASE-20989) | Minor, miscellaneous logging fixes |  Trivial | logging | Michael Stack | Michael Stack |
| [HBASE-20512](https://issues.apache.org/jira/browse/HBASE-20512) | document change to running tests on secure clusters |  Critical | documentation, integration tests, Usability | Sean Busbey | Michael Stack |
| [HBASE-20257](https://issues.apache.org/jira/browse/HBASE-20257) | hbase-spark should not depend on com.google.code.findbugs.jsr305 |  Minor | build, hbase-connectors, spark | Ted Yu | Artem Ervits |
| [HBASE-21089](https://issues.apache.org/jira/browse/HBASE-21089) | clean out stale / invalid PRs |  Minor | community | Sean Busbey | Sean Busbey |
| [HBASE-20942](https://issues.apache.org/jira/browse/HBASE-20942) | Improve RpcServer TRACE logging |  Major | Operability | Esteban Gutierrez | Krish Dey |
| [HBASE-21027](https://issues.apache.org/jira/browse/HBASE-21027) | Inconsistent synchronization in CacheableDeserializerIdManager |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20482](https://issues.apache.org/jira/browse/HBASE-20482) | Print a link to the ref guide chapter for the shell during startup |  Minor | documentation, shell | Sakthi | Sakthi |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-21241](https://issues.apache.org/jira/browse/HBASE-21241) | Close stale PRs |  Major | community | Sean Busbey | Sean Busbey |
| [HBASE-21273](https://issues.apache.org/jira/browse/HBASE-21273) | Move classes out of org.apache.spark namespace |  Major | hbase-connectors, spark | Mike Drob | Mike Drob |
| [HBASE-21287](https://issues.apache.org/jira/browse/HBASE-21287) | JVMClusterUtil Master initialization wait time not configurable |  Major | test | Mike Drob | Mike Drob |
| [HBASE-21282](https://issues.apache.org/jira/browse/HBASE-21282) | Upgrade to latest jetty 9.2 and 9.3 versions |  Major | dependencies | Josh Elser | Josh Elser |
| [HBASE-21198](https://issues.apache.org/jira/browse/HBASE-21198) | Exclude dependency on net.minidev:json-smart |  Major | . | Ted Yu | Artem Ervits |
| [HBASE-21281](https://issues.apache.org/jira/browse/HBASE-21281) | Update bouncycastle dependency. |  Major | dependencies, test | Josh Elser | Josh Elser |
| [HBASE-21381](https://issues.apache.org/jira/browse/HBASE-21381) | Document the hadoop versions using which backup and restore feature works |  Major | . | Ted Yu | liubangchen |
| [HBASE-15557](https://issues.apache.org/jira/browse/HBASE-15557) | Add guidance on HashTable/SyncTable to the RefGuide |  Critical | documentation | Sean Busbey | Wellington Chevreuil |
| [HBASE-21517](https://issues.apache.org/jira/browse/HBASE-21517) | Move the getTableRegionForRow method from HMaster to TestMaster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21265](https://issues.apache.org/jira/browse/HBASE-21265) | Split up TestRSGroups |  Minor | rsgroup, test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21541](https://issues.apache.org/jira/browse/HBASE-21541) | Move MetaTableLocator.verifyRegionLocation to hbase-rsgroup module |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21534](https://issues.apache.org/jira/browse/HBASE-21534) | TestAssignmentManager is flakey |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-14939](https://issues.apache.org/jira/browse/HBASE-14939) | Document bulk loaded hfile replication |  Major | documentation | Ashish Singhi | Wei-Chiu Chuang |
| [HBASE-21091](https://issues.apache.org/jira/browse/HBASE-21091) | Update Hadoop compatibility table |  Major | documentation | Josh Elser | Josh Elser |
| [HBASE-21295](https://issues.apache.org/jira/browse/HBASE-21295) | Update compatibility matrices |  Minor | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-21685](https://issues.apache.org/jira/browse/HBASE-21685) | Change repository urls to Gitbox |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21731](https://issues.apache.org/jira/browse/HBASE-21731) | Do not need to use ClusterConnection in IntegrationTestBigLinkedListWithVisibility |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21716](https://issues.apache.org/jira/browse/HBASE-21716) | Add toStringCustomizedValues to TableDescriptor |  Major | . | Duo Zhang | Kevin Su |
| [HBASE-21715](https://issues.apache.org/jira/browse/HBASE-21715) | Do not throw UnsupportedOperationException in ProcedureFuture.get |  Major | Client | Duo Zhang | Junhong Xu |
| [HBASE-21762](https://issues.apache.org/jira/browse/HBASE-21762) | Move some methods in ClusterConnection to Connection |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21782](https://issues.apache.org/jira/browse/HBASE-21782) | LoadIncrementalHFiles should not be IA.Public |  Major | mapreduce | Duo Zhang | Duo Zhang |
| [HBASE-21792](https://issues.apache.org/jira/browse/HBASE-21792) | Mark HTableMultiplexer as deprecated and remove it in 3.0.0 |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21710](https://issues.apache.org/jira/browse/HBASE-21710) | Add quota related methods to the Admin interface |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21791](https://issues.apache.org/jira/browse/HBASE-21791) | Upgrade thrift dependency to 0.12.0 |  Blocker | Thrift | Duo Zhang | Duo Zhang |
| [HBASE-21812](https://issues.apache.org/jira/browse/HBASE-21812) | Address ruby static analysis for bin module [2nd pass] |  Minor | scripts | Sakthi | Sakthi |
| [HBASE-21853](https://issues.apache.org/jira/browse/HBASE-21853) | update copyright notices to 2019 |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-21868](https://issues.apache.org/jira/browse/HBASE-21868) | Remove legacy bulk load support |  Major | mapreduce | Duo Zhang | Duo Zhang |
| [HBASE-21859](https://issues.apache.org/jira/browse/HBASE-21859) | Add clearRegionLocationCache method for AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21884](https://issues.apache.org/jira/browse/HBASE-21884) | Fix box/unbox findbugs warning in secure bulk load |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-21888](https://issues.apache.org/jira/browse/HBASE-21888) | Add a isClosed method to AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21872](https://issues.apache.org/jira/browse/HBASE-21872) | Clean up getBytes() calls without charsets provided |  Trivial | . | Josh Elser | Josh Elser |
| [HBASE-21908](https://issues.apache.org/jira/browse/HBASE-21908) | Remove Scan.getScanMetrics |  Major | Client, Scanners | Duo Zhang | Duo Zhang |
| [HBASE-21057](https://issues.apache.org/jira/browse/HBASE-21057) | upgrade to latest spotbugs |  Minor | community, test | Sean Busbey | Kevin Su |
| [HBASE-21969](https://issues.apache.org/jira/browse/HBASE-21969) | Improve the update of destination rsgroup of RSGroupInfoManagerImpl#moveTables() |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-22001](https://issues.apache.org/jira/browse/HBASE-22001) | Polish the Admin interface |  Major | Admin, Client | Duo Zhang | Duo Zhang |
| [HBASE-22044](https://issues.apache.org/jira/browse/HBASE-22044) | ByteBufferUtils should not be IA.Public API |  Major | compatibility, util | Sean Busbey | Sean Busbey |
| [HBASE-22002](https://issues.apache.org/jira/browse/HBASE-22002) | Remove the deprecated methods in Admin interface |  Major | Admin, Client | Duo Zhang | Duo Zhang |
| [HBASE-22056](https://issues.apache.org/jira/browse/HBASE-22056) | Unexpected blank line in ClusterConnection |  Trivial | . | Kevin Su | Kevin Su |
| [HBASE-22042](https://issues.apache.org/jira/browse/HBASE-22042) | Missing @Override annotation for RawAsyncTableImpl.scan |  Major | asyncclient, Client | Duo Zhang | Rishabh Jain |
| [HBASE-22063](https://issues.apache.org/jira/browse/HBASE-22063) | Deprecated Admin.deleteSnapshot(byte[]) |  Major | Admin | Duo Zhang | Junhong Xu |
| [HBASE-22065](https://issues.apache.org/jira/browse/HBASE-22065) | Add listTableDescriptors(List\<TableName\>) method in AsyncAdmin |  Major | Admin | Duo Zhang | niuyulin |
| [HBASE-22064](https://issues.apache.org/jira/browse/HBASE-22064) | Remove Admin.deleteSnapshot(byte[]) |  Major | Admin | Duo Zhang | Kevin Su |
| [HBASE-21895](https://issues.apache.org/jira/browse/HBASE-21895) | Error prone upgrade |  Major | build | Duo Zhang | Kevin Risden |
| [HBASE-22052](https://issues.apache.org/jira/browse/HBASE-22052) | pom cleaning; filter out jersey-core in hadoop2 to match hadoop3 and remove redunant version specifications |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22102](https://issues.apache.org/jira/browse/HBASE-22102) | Remove AsyncAdmin.isTableAvailable(TableName, byte[][]) |  Major | Admin, asyncclient, Client | Duo Zhang | Kevin Su |
| [HBASE-22131](https://issues.apache.org/jira/browse/HBASE-22131) | Delete the patches in hbase-protocol-shaded module |  Major | build, Protobufs | Duo Zhang | Kevin Su |
| [HBASE-22007](https://issues.apache.org/jira/browse/HBASE-22007) | Add restoreSnapshot and cloneSnapshot with acl methods in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22108](https://issues.apache.org/jira/browse/HBASE-22108) | Avoid passing null in Admin methods |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22189](https://issues.apache.org/jira/browse/HBASE-22189) | Remove usage of StoreFile.getModificationTimeStamp |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22203](https://issues.apache.org/jira/browse/HBASE-22203) | Reformat DemoClient.java |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22187](https://issues.apache.org/jira/browse/HBASE-22187) | Remove usage of deprecated ClusterConnection.clearRegionCache |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22227](https://issues.apache.org/jira/browse/HBASE-22227) | Remove deprecated fields in ServerSideScanMetrics |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22228](https://issues.apache.org/jira/browse/HBASE-22228) | Remove deprecated ThrottlingException |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22242](https://issues.apache.org/jira/browse/HBASE-22242) | Remove deprecated method in RegionLoadStats |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22243](https://issues.apache.org/jira/browse/HBASE-22243) | Remove deprecated methods in Result |  Trivial | Client | Jan Hentschel | Sayed Anisul Hoque |
| [HBASE-22186](https://issues.apache.org/jira/browse/HBASE-22186) | Remove usage of deprecated SnapshotDescriptionUtils fields |  Trivial | snapshots | Jan Hentschel | Jan Hentschel |
| [HBASE-22248](https://issues.apache.org/jira/browse/HBASE-22248) | Remove deprecated CollectionUtils |  Minor | . | Jan Hentschel | Sayed Anisul Hoque |
| [HBASE-22246](https://issues.apache.org/jira/browse/HBASE-22246) | Remove deprecated field from MetricsReplicationSourceSource |  Trivial | . | Jan Hentschel | Sayed Anisul Hoque |
| [HBASE-22199](https://issues.apache.org/jira/browse/HBASE-22199) | Replace "UTF-8" with StandardCharsets.UTF\_8 where possible |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22259](https://issues.apache.org/jira/browse/HBASE-22259) | Removed deprecated method in ReplicationLoadSource |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22276](https://issues.apache.org/jira/browse/HBASE-22276) | Remove deprecated UnmodifyableHRegionInfo |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22260](https://issues.apache.org/jira/browse/HBASE-22260) | Remove deprecated methods in ReplicationLoadSink |  Trivial | . | Sayed Anisul Hoque | Sayed Anisul Hoque |
| [HBASE-22232](https://issues.apache.org/jira/browse/HBASE-22232) | Remove deprecated methods in CompareFilter |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22258](https://issues.apache.org/jira/browse/HBASE-22258) | Remove deprecated VisibilityClient methods |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22272](https://issues.apache.org/jira/browse/HBASE-22272) | Fix Checkstyle errors in hbase-backup |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22020](https://issues.apache.org/jira/browse/HBASE-22020) | upgrade to yetus 0.9.0 |  Major | build, community | Michael Stack | Sean Busbey |
| [HBASE-22304](https://issues.apache.org/jira/browse/HBASE-22304) | Fix remaining Checkstyle issues in hbase-endpoint |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22294](https://issues.apache.org/jira/browse/HBASE-22294) | Remove deprecated method from WALKeyImpl |  Minor | . | Sayed Anisul Hoque | Sayed Anisul Hoque |
| [HBASE-22307](https://issues.apache.org/jira/browse/HBASE-22307) | Deprecated Preemptive Fail Fast |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-22231](https://issues.apache.org/jira/browse/HBASE-22231) | Remove unused and \* imports |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-21502](https://issues.apache.org/jira/browse/HBASE-21502) | Update SyncTable section on RefGuide once HBASE-20586 is committed |  Trivial | documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22083](https://issues.apache.org/jira/browse/HBASE-22083) | move eclipse specific configs into a profile |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-22321](https://issues.apache.org/jira/browse/HBASE-22321) | Add 1.5 release line to the Hadoop supported versions table |  Minor | documentation | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22277](https://issues.apache.org/jira/browse/HBASE-22277) | Remove deprecated methods in Get |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22174](https://issues.apache.org/jira/browse/HBASE-22174) | Remove error prone from our precommit javac check |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-21714](https://issues.apache.org/jira/browse/HBASE-21714) | Deprecated isTableAvailableWithSplit method in thrift module |  Major | Thrift | Duo Zhang | niuyulin |
| [HBASE-22375](https://issues.apache.org/jira/browse/HBASE-22375) | Promote AccessChecker to LimitedPrivate(Coprocessor) |  Minor | Coprocessors, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22406](https://issues.apache.org/jira/browse/HBASE-22406) | skip generating rdoc when building gems in our docker image for running yetus |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-22449](https://issues.apache.org/jira/browse/HBASE-22449) | https everywhere in Maven metadata |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22311](https://issues.apache.org/jira/browse/HBASE-22311) | Update community docs to recommend use of "Co-authored-by" in git commits |  Minor | community, documentation | Sean Busbey | Norbert Kalmár |
| [HBASE-21536](https://issues.apache.org/jira/browse/HBASE-21536) | Fix completebulkload usage instructions |  Trivial | documentation, mapreduce | Artem Ervits | Artem Ervits |
| [HBASE-22262](https://issues.apache.org/jira/browse/HBASE-22262) | Remove deprecated methods from Filter |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22373](https://issues.apache.org/jira/browse/HBASE-22373) | maven-eclipse-plugin does not define version in every module |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22560](https://issues.apache.org/jira/browse/HBASE-22560) | Upgrade to Jetty 9.3.latest and Jackson 2.9.latest |  Major | dependencies | Josh Elser | Josh Elser |
| [HBASE-21935](https://issues.apache.org/jira/browse/HBASE-21935) | Replace make\_rc.sh with customized spark/dev/create-release |  Minor | community | Michael Stack | Michael Stack |
| [HBASE-22566](https://issues.apache.org/jira/browse/HBASE-22566) | Call out default compaction throttling for 2.x in Book |  Major | documentation | Josh Elser | Josh Elser |
| [HBASE-22275](https://issues.apache.org/jira/browse/HBASE-22275) | Remove deprecated getRegionInfo in HRegionLocation |  Major | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22590](https://issues.apache.org/jira/browse/HBASE-22590) | Remove the deprecated methods in Table interface |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-22591](https://issues.apache.org/jira/browse/HBASE-22591) | RecoverableZooKeeper remove unused reference and refactor code |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22597](https://issues.apache.org/jira/browse/HBASE-22597) | Upgrading commons-lang to 3.9 |  Major | dependencies | Viraj Jasani | Viraj Jasani |
| [HBASE-22572](https://issues.apache.org/jira/browse/HBASE-22572) | Javadoc Warnings: @link reference not found |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22651](https://issues.apache.org/jira/browse/HBASE-22651) | ErrorProne issue in TestByteBufferArray |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22606](https://issues.apache.org/jira/browse/HBASE-22606) | BucketCache improvement with additional tests |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-20405](https://issues.apache.org/jira/browse/HBASE-20405) | Update website to meet foundation recommendations |  Minor | website | Sean Busbey | Mate Szalay-Beko |
| [HBASE-19230](https://issues.apache.org/jira/browse/HBASE-19230) | Write up fixVersion policy from dev discussion in refguide |  Major | documentation | Michael Stack | Murtaza Hassan |
| [HBASE-21606](https://issues.apache.org/jira/browse/HBASE-21606) | Document use of the meta table load metrics added in HBASE-19722 |  Critical | documentation, meta, metrics, Operability | Sean Busbey | Mate Szalay-Beko |
| [HBASE-22718](https://issues.apache.org/jira/browse/HBASE-22718) | Remove org.apache.hadoop.hbase.util.Counter |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22594](https://issues.apache.org/jira/browse/HBASE-22594) | Clean up for backup examples |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22382](https://issues.apache.org/jira/browse/HBASE-22382) | Refactor tests in TestFromClientSide |  Major | test | Andor Molnar | Andor Molnar |
| [HBASE-22898](https://issues.apache.org/jira/browse/HBASE-22898) | [DOC] HBaseContext doesn't have hBaseRDD method |  Trivial | . | Itsuki Toyota | Itsuki Toyota |
| [HBASE-21400](https://issues.apache.org/jira/browse/HBASE-21400) | correct spelling error of 'initilize' in comment |  Trivial | documentation | wuguihu | wuguihu |
| [HBASE-22911](https://issues.apache.org/jira/browse/HBASE-22911) | fewer concurrent github PR builds |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-22913](https://issues.apache.org/jira/browse/HBASE-22913) | Use Hadoop label for nightly builds |  Major | build | Duo Zhang | Gavin McDonald |
| [HBASE-22910](https://issues.apache.org/jira/browse/HBASE-22910) | Enable TestMultiVersionConcurrencyControl |  Major | test | Sakthi | Sakthi |
| [HBASE-22895](https://issues.apache.org/jira/browse/HBASE-22895) | Fix the flakey TestSpaceQuotas |  Major | Quotas, test | Sakthi | Sakthi |
| [HBASE-22642](https://issues.apache.org/jira/browse/HBASE-22642) | Make move operations of RSGroup idempotent |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-23024](https://issues.apache.org/jira/browse/HBASE-23024) | Replace Exception.initCause() with Constructor args |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-21056](https://issues.apache.org/jira/browse/HBASE-21056) | Findbugs false positive: BucketCache.persistToFile may fail to clean up java.io.OutputStream |  Minor | BucketCache | Sean Busbey | Sean Busbey |
| [HBASE-23046](https://issues.apache.org/jira/browse/HBASE-23046) | Remove compatibility case from truncate command |  Minor | shell | Peter Somogyi | Peter Somogyi |
| [HBASE-23047](https://issues.apache.org/jira/browse/HBASE-23047) | ChecksumUtil.validateChecksum logs an INFO message inside a "if(LOG.isTraceEnabled())" block. |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23032](https://issues.apache.org/jira/browse/HBASE-23032) | Upgrade to Curator 4.2.0 |  Major | . | Tamas Penzes | Balazs Meszaros |
| [HBASE-23023](https://issues.apache.org/jira/browse/HBASE-23023) | upgrade shellcheck used to test in nightly and precommit |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-23087](https://issues.apache.org/jira/browse/HBASE-23087) | Remove the deprecated bulkload method in AsyncClusterConnection |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-23092](https://issues.apache.org/jira/browse/HBASE-23092) | Make the RM tooling in dev-tools/create-release generic |  Major | scripts | Michael Stack | Michael Stack |
| [HBASE-23100](https://issues.apache.org/jira/browse/HBASE-23100) | Make a 3.1.0 hbase-thirdparty release |  Major | hbase-thirdparty | Michael Stack | Michael Stack |
| [HBASE-23053](https://issues.apache.org/jira/browse/HBASE-23053) | Disable concurrent nightly builds |  Minor | build | Peter Somogyi | Peter Somogyi |
| [HBASE-23129](https://issues.apache.org/jira/browse/HBASE-23129) | Move core to use hbase-thirdparty-3.1.1 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs |  Blocker | dependencies, REST, security | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | Log message about CleanerChore delegate initialization should be at INFO |  Minor | master, Operability | Sean Busbey | Rabi Kumar K C |
| [HBASE-23272](https://issues.apache.org/jira/browse/HBASE-23272) | Fix link in Developer guide to "code review checklist" |  Minor | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23236](https://issues.apache.org/jira/browse/HBASE-23236) | Upgrade to yetus 0.11.1 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22888](https://issues.apache.org/jira/browse/HBASE-22888) | Share some stuffs with the initial reader when new stream reader created |  Major | HFile, regionserver | chenxu | chenxu |
| [HBASE-23230](https://issues.apache.org/jira/browse/HBASE-23230) | Enforce member visibility in HRegionServer |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23284](https://issues.apache.org/jira/browse/HBASE-23284) | Fix Hadoop wiki link in Developer guide to "Distributions and Commercial Support" |  Minor | documentation | Mingliang Liu | Mingliang Liu |
| [HBASE-23289](https://issues.apache.org/jira/browse/HBASE-23289) | Update links to Hadoop wiki in code and book |  Major | documentation | Nick Dimiduk | Mingliang Liu |
| [HBASE-23234](https://issues.apache.org/jira/browse/HBASE-23234) | Provide .editorconfig based on checkstyle configuration |  Major | build, tooling | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23329](https://issues.apache.org/jira/browse/HBASE-23329) | Remove unused methods from RequestConverter |  Trivial | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23298](https://issues.apache.org/jira/browse/HBASE-23298) | Refactor LogRecoveredEditsOutputSink and BoundedLogWriterCreationOutputSink |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23367](https://issues.apache.org/jira/browse/HBASE-23367) | Remove unused constructor from WALPrettyPrinter |  Trivial | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23556](https://issues.apache.org/jira/browse/HBASE-23556) | Minor ChoreService Cleanup |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23575](https://issues.apache.org/jira/browse/HBASE-23575) | Remove dead code from AsyncRegistry interface |  Minor | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23374](https://issues.apache.org/jira/browse/HBASE-23374) | ExclusiveMemHFileBlock’s allocator should not be hardcoded as ByteBuffAllocator.HEAP |  Minor | . | chenxu | chenxu |
| [HBASE-23604](https://issues.apache.org/jira/browse/HBASE-23604) | Clarify AsyncRegistry usage in the code |  Minor | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23628](https://issues.apache.org/jira/browse/HBASE-23628) | Replace Apache Commons Digest Base64 with JDK8 Base64 |  Minor | dependencies | David Mollitor | David Mollitor |
| [HBASE-23664](https://issues.apache.org/jira/browse/HBASE-23664) | Upgrade JUnit to 4.13 |  Minor | integration tests, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23687](https://issues.apache.org/jira/browse/HBASE-23687) | DEBUG logging cleanup |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23662](https://issues.apache.org/jira/browse/HBASE-23662) | Replace HColumnDescriptor(String cf) with ColumnFamilyDescriptor |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23652](https://issues.apache.org/jira/browse/HBASE-23652) | Move the unsupported procedure type check before migrating to RegionProcedureStore |  Blocker | master | Nick Dimiduk | Duo Zhang |
| [HBASE-23700](https://issues.apache.org/jira/browse/HBASE-23700) | Upgrade checkstyle and plugin versions |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23335](https://issues.apache.org/jira/browse/HBASE-23335) | Improve cost functions array copy in StochasticLoadBalancer |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23625](https://issues.apache.org/jira/browse/HBASE-23625) | Reduce number of Checkstyle violations in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-20516](https://issues.apache.org/jira/browse/HBASE-20516) | Offheap read-path needs more detail |  Major | Offheaping | Michael Stack | Michael Stack |
| [HBASE-23719](https://issues.apache.org/jira/browse/HBASE-23719) | Add 1.5.0 release to Downloads |  Major | website | Peter Somogyi | Peter Somogyi |
| [HBASE-23661](https://issues.apache.org/jira/browse/HBASE-23661) | Reduce number of Checkstyle violations in hbase-rest |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22853](https://issues.apache.org/jira/browse/HBASE-22853) | Git/Jira Release Audit Tool |  Minor | build | Michael Stack | Nick Dimiduk |
| [HBASE-23751](https://issues.apache.org/jira/browse/HBASE-23751) | Move core to hbase-thirdparty 3.2.0 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23736](https://issues.apache.org/jira/browse/HBASE-23736) | Remove deprecated getTimeStampOfLastAppliedOp from MetricsSink |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23774](https://issues.apache.org/jira/browse/HBASE-23774) | Announce user-zh list |  Trivial | website | Josh Elser | Josh Elser |
| [HBASE-23763](https://issues.apache.org/jira/browse/HBASE-23763) | Add 'new on release line report' for git/jira audit tool |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23772](https://issues.apache.org/jira/browse/HBASE-23772) | Remove deprecated getTimeStampOfLastShippedOp from MetricsSource |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-20623](https://issues.apache.org/jira/browse/HBASE-20623) | Introduce the helper method "getCellBuilder()" to Mutation |  Minor | API | Chia-Ping Tsai | maoling |
| [HBASE-23865](https://issues.apache.org/jira/browse/HBASE-23865) | Up flakey history from 5 to 10 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23872](https://issues.apache.org/jira/browse/HBASE-23872) | [Flakey Test] TestGenerateDelegationToken; Master not initialized after 200000ms |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23854](https://issues.apache.org/jira/browse/HBASE-23854) | Documentation update of external\_apis.adoc#example-scala-code |  Trivial | documentation | Michael Heil | Michael Heil |
| [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | Move Jira-attached file precommit definition from script in Jenkins config to dev-support |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-18418](https://issues.apache.org/jira/browse/HBASE-18418) | Remove apache\_hbase\_topology from dev-support |  Minor | . | Dima Spivak | Dima Spivak |
| [HBASE-23945](https://issues.apache.org/jira/browse/HBASE-23945) | Dockerfiles showing hadolint check failures |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23077](https://issues.apache.org/jira/browse/HBASE-23077) | move entirely to spotbugs |  Major | build, test | Sean Busbey | Duo Zhang |
| [HBASE-23978](https://issues.apache.org/jira/browse/HBASE-23978) | Dockerfiles reusing stale apt sources info |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23986](https://issues.apache.org/jira/browse/HBASE-23986) | Bump hadoop-two.version to 2.10.0 on master and branch-2 |  Major | build, dependencies, hadoop2 | Duo Zhang | Duo Zhang |
| [HBASE-24004](https://issues.apache.org/jira/browse/HBASE-24004) | Include hadoop version in Nightly report name |  Trivial | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23971](https://issues.apache.org/jira/browse/HBASE-23971) | protoc warns: "no protobuf syntax specified" |  Minor | Protobufs | Nick Dimiduk | wenfeiyi666 |
| [HBASE-23989](https://issues.apache.org/jira/browse/HBASE-23989) | Consider 2.10.0 in our support matrix |  Major | build, documentation | Duo Zhang | Duo Zhang |
| [HBASE-23861](https://issues.apache.org/jira/browse/HBASE-23861) | Reconcile Hadoop version |  Major | dependencies | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24030](https://issues.apache.org/jira/browse/HBASE-24030) | Add necessary validations to HRegion.checkAndMutate() and HRegion.checkAndRowMutate() |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23980](https://issues.apache.org/jira/browse/HBASE-23980) | Use enforcer plugin to print JVM info in maven output |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24002](https://issues.apache.org/jira/browse/HBASE-24002) | shadedjars check does not propagate --hadoop-profile |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23981](https://issues.apache.org/jira/browse/HBASE-23981) | PBType which is marked as IA.Public references protobuf Message |  Critical | Protobufs | Duo Zhang | Duo Zhang |
| [HBASE-24000](https://issues.apache.org/jira/browse/HBASE-24000) | Simplify CommonFSUtils after upgrading to hadoop 2.10.0 |  Major | hadoop2, wal | Duo Zhang | Duo Zhang |
| [HBASE-23975](https://issues.apache.org/jira/browse/HBASE-23975) | Make hbase-rest use our shaded protobuf |  Blocker | Protobufs, REST | Duo Zhang | Semen Komissarov |
| [HBASE-20467](https://issues.apache.org/jira/browse/HBASE-20467) | Precommit personality should only run checkstyle once if we're going to run it at the root. |  Minor | community, test | Sean Busbey | Nihal Jain |
| [HBASE-24078](https://issues.apache.org/jira/browse/HBASE-24078) | SpotBugs check automatically skip inapplicable modules |  Minor | build, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24092](https://issues.apache.org/jira/browse/HBASE-24092) | Fix links to build reports generated by nightly job |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24084](https://issues.apache.org/jira/browse/HBASE-24084) | Fix missing jdk8 dependencies in hbase-assembly/hadoop-two-compat |  Major | build, master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24049](https://issues.apache.org/jira/browse/HBASE-24049) | "Packaging and Integration" check fails |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24138](https://issues.apache.org/jira/browse/HBASE-24138) | Ensure StochasticLoadBalancer can log details of decision to not run balancer |  Major | Balancer, Operability | Sean Busbey | Sean Busbey |
| [HBASE-24140](https://issues.apache.org/jira/browse/HBASE-24140) | Move CandidateGenerator out of StochasticLoadBalancer |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23779](https://issues.apache.org/jira/browse/HBASE-23779) | Up the default fork count to make builds complete faster; make count relative to CPU count |  Major | test | Michael Stack | Michael Stack |
| [HBASE-24194](https://issues.apache.org/jira/browse/HBASE-24194) | Refactor BufferedEncodedSeeker anonymous classes to named inner class |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24072](https://issues.apache.org/jira/browse/HBASE-24072) | Nightlies reporting OutOfMemoryError: unable to create new native thread |  Major | test | Michael Stack | Michael Stack |
| [HBASE-23896](https://issues.apache.org/jira/browse/HBASE-23896) | Snapshot owner cannot delete snapshot when ACL is enabled and Kerberos is not enabled |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-24254](https://issues.apache.org/jira/browse/HBASE-24254) | Update openjdk-8-jdk version in create-release |  Major | scripts | Peter Somogyi | Peter Somogyi |
| [HBASE-24264](https://issues.apache.org/jira/browse/HBASE-24264) | Disable TestNettyIPC.testHedgedAsyncEcho |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-24249](https://issues.apache.org/jira/browse/HBASE-24249) | Move code in FSHDFSUtils to FSUtils and mark related classes as final |  Major | Filesystem Integration | Duo Zhang | Duo Zhang |
| [HBASE-24285](https://issues.apache.org/jira/browse/HBASE-24285) | Move to hbase-thirdparty-3.3.0 |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-24301](https://issues.apache.org/jira/browse/HBASE-24301) | Update Apache POM to version 23 |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-24238](https://issues.apache.org/jira/browse/HBASE-24238) | Clean up root pom after removing hadoop-2.0 profile |  Trivial | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24258](https://issues.apache.org/jira/browse/HBASE-24258) | [Hadoop3.3] Update license for org.ow2.asm:\* |  Minor | dependencies | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24261](https://issues.apache.org/jira/browse/HBASE-24261) | Redo all of our github notification integrations on new ASF infra feature |  Major | community | Sean Busbey | Bharath Vissapragada |
| [HBASE-24271](https://issues.apache.org/jira/browse/HBASE-24271) | Set values in \`conf/hbase-site.xml\` that enable running on \`LocalFileSystem\` out of the box |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24408](https://issues.apache.org/jira/browse/HBASE-24408) | Introduce a general 'local region' to store data on master |  Blocker | master | Duo Zhang | Duo Zhang |
| [HBASE-24422](https://issues.apache.org/jira/browse/HBASE-24422) | Remove hbase-native-client code from the master branch |  Minor | . | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24417](https://issues.apache.org/jira/browse/HBASE-24417) | update copyright notices year to 2020 |  Major | documentation | Guangxu Cheng | Guangxu Cheng |
| [HBASE-22033](https://issues.apache.org/jira/browse/HBASE-22033) | Update to maven-javadoc-plugin 3.2.0 and switch to non-forking aggregate goals |  Major | build, website | Sean Busbey | Sean Busbey |
| [HBASE-24477](https://issues.apache.org/jira/browse/HBASE-24477) | Move ConfigurationObserver and related classes to hbase-common |  Minor | conf | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24494](https://issues.apache.org/jira/browse/HBASE-24494) | Wrap long lines in \`\_chapters/configuration.adoc\` |  Minor | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24492](https://issues.apache.org/jira/browse/HBASE-24492) | ProtobufLogReader.readNext does not need looping |  Minor | Replication, wal | Viraj Jasani | Viraj Jasani |
| [HBASE-24418](https://issues.apache.org/jira/browse/HBASE-24418) | Consolidate Normalizer implementations |  Major | master, Normalizer | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24500](https://issues.apache.org/jira/browse/HBASE-24500) | The behavior of RegionInfoBuilder.newBuilder(RegionInfo) is strange |  Blocker | Client, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-24305](https://issues.apache.org/jira/browse/HBASE-24305) | Handle deprecations in ServerName |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-24510](https://issues.apache.org/jira/browse/HBASE-24510) | Remove HBaseTestCase and GenericTestUtils |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-24367](https://issues.apache.org/jira/browse/HBASE-24367) | ScheduledChore log elapsed timespan in a human-friendly format |  Minor | master, regionserver | Nick Dimiduk | Andrew Kyle Purtell |
| [HBASE-24534](https://issues.apache.org/jira/browse/HBASE-24534) | Delete reference off to Hadoop wiki's HBase FAQ |  Minor | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24535](https://issues.apache.org/jira/browse/HBASE-24535) | Tweak the master registry docs for branch-2 |  Major | Client, master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24547](https://issues.apache.org/jira/browse/HBASE-24547) | Thrift support for HBASE-23941 |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24611](https://issues.apache.org/jira/browse/HBASE-24611) | Bring back old constructor of SnapshotDescription |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24604](https://issues.apache.org/jira/browse/HBASE-24604) | Remove the stable-1 notice on our download page |  Major | . | Duo Zhang | niuyulin |
| [HBASE-24567](https://issues.apache.org/jira/browse/HBASE-24567) | Create release should url-encode all characters when building git uri |  Major | community | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23055](https://issues.apache.org/jira/browse/HBASE-23055) | Alter hbase:meta |  Major | meta | Michael Stack | Michael Stack |
| [HBASE-24609](https://issues.apache.org/jira/browse/HBASE-24609) | Move MetaTableAccessor out of hbase-client |  Major | amv2, Client, meta | Duo Zhang | Duo Zhang |
| [HBASE-24631](https://issues.apache.org/jira/browse/HBASE-24631) | Loosen Dockerfile pinned package versions of the "debian-revision" |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24646](https://issues.apache.org/jira/browse/HBASE-24646) | Set the log level for ScheduledChore to INFO in HBTU |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-24644](https://issues.apache.org/jira/browse/HBASE-24644) | Add a clause to the book noting that sometimes we short-circuit the deprecation cycle |  Minor | community, documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24648](https://issues.apache.org/jira/browse/HBASE-24648) | Remove the legacy 'forceSplit' related code at region server side |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-24647](https://issues.apache.org/jira/browse/HBASE-24647) | Rewrite MetaTableAccessor.multiMutate to remove the deprecated coprocessorService call |  Major | meta | Duo Zhang | Duo Zhang |
| [HBASE-24635](https://issues.apache.org/jira/browse/HBASE-24635) | Split TestMetaWithReplicas |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-24685](https://issues.apache.org/jira/browse/HBASE-24685) | MultiAction and FailureInfo should be removed |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24489](https://issues.apache.org/jira/browse/HBASE-24489) | Rewrite TestClusterRestartFailover.test since namespace table is gone on on master |  Major | test | Duo Zhang | Sun Xin |
| [HBASE-24658](https://issues.apache.org/jira/browse/HBASE-24658) | Update PolicyBasedChaosMonkey to handle uncaught exceptions |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24763](https://issues.apache.org/jira/browse/HBASE-24763) | Update 2.1 documentation to 2.1.9 and remove direct link from main page |  Major | documentation, website | Peter Somogyi | Peter Somogyi |
| [HBASE-24770](https://issues.apache.org/jira/browse/HBASE-24770) | Reimplement the Constraints API and revisit the IA annotations on related classes |  Major | Client, Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-24572](https://issues.apache.org/jira/browse/HBASE-24572) | release scripts should try to use a keyid when refering to GPG keys. |  Major | build, community | Nick Dimiduk | Sean Busbey |
| [HBASE-24295](https://issues.apache.org/jira/browse/HBASE-24295) | [Chaos Monkey] abstract logging through the class hierarchy |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24662](https://issues.apache.org/jira/browse/HBASE-24662) | Update DumpClusterStatusAction to notice changes in region server count |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24779](https://issues.apache.org/jira/browse/HBASE-24779) | Improve insight into replication WAL readers hung on checkQuota |  Minor | Replication | Josh Elser | Josh Elser |
| [HBASE-24835](https://issues.apache.org/jira/browse/HBASE-24835) | Normalizer should log a successful run at INFO level |  Minor | Normalizer | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23866](https://issues.apache.org/jira/browse/HBASE-23866) | More test classifications |  Trivial | test | Michael Stack | Michael Stack |
| [HBASE-24843](https://issues.apache.org/jira/browse/HBASE-24843) | Sort the constants in \`hbase\_constants.rb\` |  Minor | shell | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24869](https://issues.apache.org/jira/browse/HBASE-24869) | migrate website generation to new asf jenkins |  Major | build, website | Sean Busbey | Sean Busbey |
| [HBASE-14847](https://issues.apache.org/jira/browse/HBASE-14847) | Add FIFO compaction section to HBase book |  Major | documentation | Vladimir Rodionov | ethan hur |
| [HBASE-24809](https://issues.apache.org/jira/browse/HBASE-24809) | Yetus IA Javadoc links are no longer available |  Minor | . | Viraj Jasani | Abhey Rana |
| [HBASE-24993](https://issues.apache.org/jira/browse/HBASE-24993) | Remove OfflineMetaRebuildTestCore |  Major | test | Duo Zhang | niuyulin |
| [HBASE-25018](https://issues.apache.org/jira/browse/HBASE-25018) | EOM cleanup |  Major | community, website | Sean Busbey | Sean Busbey |
| [HBASE-25004](https://issues.apache.org/jira/browse/HBASE-25004) | Log RegionTooBusyException details |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-25061](https://issues.apache.org/jira/browse/HBASE-25061) | Update default URL to KEYS file in \`hbase-vote.sh\` |  Minor | community | Nick Dimiduk | Nick Dimiduk |
| [HBASE-25072](https://issues.apache.org/jira/browse/HBASE-25072) | Remove the unnecessary System.out.println in MasterRegistry |  Minor | Client | Duo Zhang | niuyulin |
| [HBASE-25073](https://issues.apache.org/jira/browse/HBASE-25073) | Should not use XXXService.Interface.class.getSimpleName as stub key prefix in AsyncConnectionImpl |  Major | Client | Duo Zhang | wangwei |
| [HBASE-25085](https://issues.apache.org/jira/browse/HBASE-25085) | Add support for java properties to hbase-vote.sh |  Minor | community | Nick Dimiduk | Nick Dimiduk |
| [HBASE-25120](https://issues.apache.org/jira/browse/HBASE-25120) | Remove the deprecated annotation for MetaTableAccessor.getScanForTableName |  Major | meta | Duo Zhang | Nicholas Jiang |
| [HBASE-25143](https://issues.apache.org/jira/browse/HBASE-25143) | Remove branch-1.3 from precommit and docs |  Minor | community | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23742](https://issues.apache.org/jira/browse/HBASE-23742) | Document that with split-to-hfile data over the MOB threshold will be treated as normal data |  Minor | documentation, MTTR, wal | Y. SREENIVASULU REDDY | Pankaj Kumar |
| [HBASE-25144](https://issues.apache.org/jira/browse/HBASE-25144) | Add Hadoop-3.3.0 to personality hadoopcheck |  Minor | build, community | Nick Dimiduk | Nick Dimiduk |
| [HBASE-25196](https://issues.apache.org/jira/browse/HBASE-25196) | Document deprecation of HConstants#REPLICATION\_DROP\_ON\_DELETED\_TABLE\_KEY |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-24845](https://issues.apache.org/jira/browse/HBASE-24845) | Git/Jira Release Audit: limit branches when building audit db |  Minor | community, tooling | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24200](https://issues.apache.org/jira/browse/HBASE-24200) | Upgrade to Yetus 0.12.0 |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-25228](https://issues.apache.org/jira/browse/HBASE-25228) | Delete dev-support/jenkins\_precommit\_jira\_yetus.sh |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-25245](https://issues.apache.org/jira/browse/HBASE-25245) | hbase\_generate\_website is failing due to incorrect jdk and maven syntax |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-25218](https://issues.apache.org/jira/browse/HBASE-25218) | Release 2.3.3 |  Major | community | Viraj Jasani | Viraj Jasani |
| [HBASE-24667](https://issues.apache.org/jira/browse/HBASE-24667) | Rename configs that support atypical DNS set ups to put them in hbase.unsafe |  Major | conf, Operability | Sean Busbey | Prathyusha |


