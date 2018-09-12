
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

## Release 3.0.0 - Unreleased (as of 2018-09-12)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20148](https://issues.apache.org/jira/browse/HBASE-20148) | Make serial replication as a option for a peer instead of a table |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20159](https://issues.apache.org/jira/browse/HBASE-20159) | Support using separate ZK quorums for client |  Major | Client, Operability, Zookeeper | Yu Li | Yu Li |
| [HBASE-20406](https://issues.apache.org/jira/browse/HBASE-20406) | HBase Thrift HTTP - Shouldn't handle TRACE/OPTIONS methods |  Major | security, Thrift | Kevin Risden | Kevin Risden |
| [HBASE-20501](https://issues.apache.org/jira/browse/HBASE-20501) | Change the Hadoop minimum version to 2.7.1 |  Blocker | community, documentation | Andrew Purtell | Sean Busbey |
| [HBASE-20615](https://issues.apache.org/jira/browse/HBASE-20615) | emphasize use of shaded client jars when they're present in an install |  Major | build, Client, Usability | Sean Busbey | Sean Busbey |
| [HBASE-20270](https://issues.apache.org/jira/browse/HBASE-20270) | Turn off command help that follows all errors in shell |  Major | shell | Sean Busbey | Sakthi |
| [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | Replace usage of our Base64 implementation with java.util.Base64 |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20894](https://issues.apache.org/jira/browse/HBASE-20894) | Move BucketCache from java serialization to protobuf |  Major | BucketCache | Mike Drob | Mike Drob |
| [HBASE-20881](https://issues.apache.org/jira/browse/HBASE-20881) | Introduce a region transition procedure to handle all the state transition for a region |  Major | amv2, proc-v2 | Duo Zhang | Duo Zhang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13992](https://issues.apache.org/jira/browse/HBASE-13992) | Integrate SparkOnHBase into HBase |  Major | spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14150](https://issues.apache.org/jira/browse/HBASE-14150) | Add BulkLoad functionality to HBase-Spark Module |  Major | spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14181](https://issues.apache.org/jira/browse/HBASE-14181) | Add Spark DataFrame DataSource to HBase-Spark Module |  Minor | spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14340](https://issues.apache.org/jira/browse/HBASE-14340) | Add second bulk load option to Spark Bulk Load to send puts as the value |  Minor | spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14849](https://issues.apache.org/jira/browse/HBASE-14849) | Add option to set block cache to false on SparkSQL executions |  Major | spark | Theodore michael Malaska | Zhan Zhang |
| [HBASE-15572](https://issues.apache.org/jira/browse/HBASE-15572) | Adding optional timestamp semantics to HBase-Spark |  Major | spark | Weiqing Yang | Weiqing Yang |
| [HBASE-17933](https://issues.apache.org/jira/browse/HBASE-17933) | [hbase-spark]  Support Java api for bulkload |  Major | spark | Yi Liang | Yi Liang |
| [HBASE-19397](https://issues.apache.org/jira/browse/HBASE-19397) | Design  procedures for ReplicationManager to notify peer change event from master |  Major | proc-v2, Replication | Zheng Hu | Duo Zhang |
| [HBASE-20046](https://issues.apache.org/jira/browse/HBASE-20046) | Reconsider the implementation for serial replication |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20592](https://issues.apache.org/jira/browse/HBASE-20592) | Create a tool to verify tables do not have prefix tree encoding |  Minor | Operability, tooling | Peter Somogyi | Peter Somogyi |
| [HBASE-20656](https://issues.apache.org/jira/browse/HBASE-20656) | Validate pre-2.0 coprocessors against HBase 2.0+ |  Major | tooling | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20630](https://issues.apache.org/jira/browse/HBASE-20630) | B&R: Delete command enhancements |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-19735](https://issues.apache.org/jira/browse/HBASE-19735) | Create a minimal "client" tarball installation |  Major | build, Client | Josh Elser | Josh Elser |
| [HBASE-19064](https://issues.apache.org/jira/browse/HBASE-19064) | Synchronous replication for HBase |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-15809](https://issues.apache.org/jira/browse/HBASE-15809) | Basic Replication WebUI |  Critical | Replication, UI | Matteo Bertozzi | Jingyun Tian |
| [HBASE-20833](https://issues.apache.org/jira/browse/HBASE-20833) | Modify pre-upgrade coprocessor validator to support table level coprocessors |  Major | Coprocessors | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | Validate HFiles do not have PREFIX\_TREE DataBlockEncoding |  Minor | Operability, tooling | Peter Somogyi | Balazs Meszaros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14515](https://issues.apache.org/jira/browse/HBASE-14515) | Allow spark module unit tests to be skipped with a profile |  Minor | build, spark | Sean Busbey | Sean Busbey |
| [HBASE-14158](https://issues.apache.org/jira/browse/HBASE-14158) | Add documentation for Initial Release for HBase-Spark Module integration |  Major | documentation, spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14159](https://issues.apache.org/jira/browse/HBASE-14159) | Resolve warning introduced by HBase-Spark module |  Minor | build, spark | Theodore michael Malaska | Appy |
| [HBASE-15282](https://issues.apache.org/jira/browse/HBASE-15282) | Bump hbase-spark to use Spark 1.6.0 |  Major | spark | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15434](https://issues.apache.org/jira/browse/HBASE-15434) | [findbugs] Exclude scala generated source and protobuf generated code in hbase-spark module |  Major | spark | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16638](https://issues.apache.org/jira/browse/HBASE-16638) | Reduce the number of Connection's created in classes of hbase-spark module |  Critical | spark | Ted Yu | Weiqing Yang |
| [HBASE-16823](https://issues.apache.org/jira/browse/HBASE-16823) | Add examples in HBase Spark module |  Major | spark | Weiqing Yang | Weiqing Yang |
| [HBASE-17549](https://issues.apache.org/jira/browse/HBASE-17549) | HBase-Spark Module : Incorrect log at println and unwanted comment code |  Major | spark | Chetan Khatri | Chetan Khatri |
| [HBASE-18176](https://issues.apache.org/jira/browse/HBASE-18176) | add enforcer rule to make sure hbase-spark / scala aren't dependencies of unexpected modules |  Major | build, spark | Sean Busbey | Mike Drob |
| [HBASE-18327](https://issues.apache.org/jira/browse/HBASE-18327) | redo test-patch personality 'hadoopcheck' to better account for feature branches |  Minor | build, test | Sean Busbey | Sean Busbey |
| [HBASE-18646](https://issues.apache.org/jira/browse/HBASE-18646) | [Backup] LogRollMasterProcedureManager: make procedure timeout, thread pool size configurable |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-19068](https://issues.apache.org/jira/browse/HBASE-19068) | Change all url of apache.org from HTTP to HTTPS in HBase book |  Major | documentation | Yung-An He | Yung-An He |
| [HBASE-19183](https://issues.apache.org/jira/browse/HBASE-19183) | Removed redundant groupId from Maven modules |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19175](https://issues.apache.org/jira/browse/HBASE-19175) | Add linklint files to gitignore |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19174](https://issues.apache.org/jira/browse/HBASE-19174) | Update link to HBase presentations |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-19159](https://issues.apache.org/jira/browse/HBASE-19159) | Backup should check permission for snapshot copy in advance |  Minor | . | Ted Yu | Janos Gub |
| [HBASE-19469](https://issues.apache.org/jira/browse/HBASE-19469) | Review Of BackupSystemTable |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19478](https://issues.apache.org/jira/browse/HBASE-19478) | Utilize multi-get to speed up WAL file checking in BackupLogCleaner |  Major | . | Ted Yu | Toshihiro Suzuki |
| [HBASE-17436](https://issues.apache.org/jira/browse/HBASE-17436) | Add column to master web UI for displaying region states when listing regions of a table |  Major | . | Ted Yu | Janos Gub |
| [HBASE-19674](https://issues.apache.org/jira/browse/HBASE-19674) | make\_patch.sh version increment fails |  Major | . | Niels Basjes | Niels Basjes |
| [HBASE-19157](https://issues.apache.org/jira/browse/HBASE-19157) | IntegrationTestBackupRestore should warn about missing config |  Minor | . | Ted Yu | Artem Ervits |
| [HBASE-19614](https://issues.apache.org/jira/browse/HBASE-19614) | Use ArrayDeque as Queue instead of LinkedList in CompoundBloomFilterWriter |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-17825](https://issues.apache.org/jira/browse/HBASE-17825) | Backup: further optimizations |  Critical | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18133](https://issues.apache.org/jira/browse/HBASE-18133) | Low-latency space quota size reports |  Major | . | Josh Elser | Josh Elser |
| [HBASE-18135](https://issues.apache.org/jira/browse/HBASE-18135) | Track file archival for low latency space quota with snapshots |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20120](https://issues.apache.org/jira/browse/HBASE-20120) | Remove some unused classes/ java files from hbase-server |  Minor | . | Umesh Agashe | Umesh Agashe |
| [HBASE-20133](https://issues.apache.org/jira/browse/HBASE-20133) | Calculate correct assignment and build region movement plans for mis-placed regions in one pass |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-19449](https://issues.apache.org/jira/browse/HBASE-19449) | Minor logging change in HFileArchiver |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-20181](https://issues.apache.org/jira/browse/HBASE-20181) | Logging and minor logic improvements in BackupLogCleaner |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-20186](https://issues.apache.org/jira/browse/HBASE-20186) | Improve RSGroupBasedLoadBalancer#balanceCluster() to be more efficient when calculating cluster state for each rsgroup |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-19389](https://issues.apache.org/jira/browse/HBASE-19389) | Limit concurrency of put with dense (hundreds) columns to prevent write handler exhausted |  Critical | Performance | Chance Li | Chance Li |
| [HBASE-20196](https://issues.apache.org/jira/browse/HBASE-20196) | Maintain all regions with same size in memstore flusher |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19024](https://issues.apache.org/jira/browse/HBASE-19024) | Configurable default durability for synchronous WAL |  Critical | wal | Vikas Vishwakarma | Harshal Jain |
| [HBASE-19441](https://issues.apache.org/jira/browse/HBASE-19441) | Implement retry logic around starting exclusive backup operation |  Major | backup&restore | Josh Elser | Vladimir Rodionov |
| [HBASE-20047](https://issues.apache.org/jira/browse/HBASE-20047) | AuthenticationTokenIdentifier should provide a toString |  Minor | Usability | Sean Busbey | maoling |
| [HBASE-16568](https://issues.apache.org/jira/browse/HBASE-16568) | Remove Cygwin-oriented instructions (for installing HBase in Windows OS) from official reference materials |  Minor | documentation | Daniel Vimont | Daniel Vimont |
| [HBASE-20197](https://issues.apache.org/jira/browse/HBASE-20197) | Review of ByteBufferWriterOutputStream.java |  Minor | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-15466](https://issues.apache.org/jira/browse/HBASE-15466) | precommit should not run all java goals when given a docs-only patch |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-20344](https://issues.apache.org/jira/browse/HBASE-20344) | Fix asciidoc warnings |  Minor | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-20379](https://issues.apache.org/jira/browse/HBASE-20379) | shadedjars yetus plugin should add a footer link |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20389](https://issues.apache.org/jira/browse/HBASE-20389) | Move website building flags into a profile |  Minor | build, website | Sean Busbey | Sean Busbey |
| [HBASE-20409](https://issues.apache.org/jira/browse/HBASE-20409) | Set hbase.client.meta.operation.timeout in TestClientOperationTimeout |  Trivial | test | Peter Somogyi | Peter Somogyi |
| [HBASE-20449](https://issues.apache.org/jira/browse/HBASE-20449) | The minimun number of regions should be configurable in Normalizer |  Minor | . | Yu Wang | Yu Wang |
| [HBASE-20452](https://issues.apache.org/jira/browse/HBASE-20452) | Master UI: Table merge button should validate required fields before submit |  Minor | UI | Nihal Jain | Nihal Jain |
| [HBASE-20438](https://issues.apache.org/jira/browse/HBASE-20438) | Add an HBase antipattern check for reintroducing commons-logging |  Critical | dependencies, test | Sean Busbey | Nihal Jain |
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
| [HBASE-20567](https://issues.apache.org/jira/browse/HBASE-20567) | Pass both old and new descriptors to pre/post hooks of modify operations for table and namespace |  Major | . | Appy | Appy |
| [HBASE-20488](https://issues.apache.org/jira/browse/HBASE-20488) | PE tool prints full name in help message |  Minor | shell | Peter Somogyi | Xu Cang |
| [HBASE-20207](https://issues.apache.org/jira/browse/HBASE-20207) | Update doc on the steps to revert RegionServer groups feature |  Minor | regionserver, rsgroup | Biju Nair | Biju Nair |
| [HBASE-20548](https://issues.apache.org/jira/browse/HBASE-20548) | Master fails to startup on large clusters, refreshing block distribution |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20652](https://issues.apache.org/jira/browse/HBASE-20652) | Remove internal uses of some deprecated MasterObserver hooks |  Minor | . | Appy | Appy |
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
| [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | PITA having to set WAL provider in two places |  Minor | Operability, wal | stack | Tak Lon (Stephen) Wu |
| [HBASE-19036](https://issues.apache.org/jira/browse/HBASE-19036) | Add action in Chaos Monkey to restart Active Namenode |  Minor | . | Monani Mihir | Monani Mihir |
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
| [HBASE-21153](https://issues.apache.org/jira/browse/HBASE-21153) | Shaded client jars should always build in relevant phase to avoid confusion |  Major | build | stack | Sean Busbey |
| [HBASE-21107](https://issues.apache.org/jira/browse/HBASE-21107) | add a metrics for netty direct memory |  Minor | IPC/RPC | huaxiang sun | huaxiang sun |
| [HBASE-21157](https://issues.apache.org/jira/browse/HBASE-21157) | Split TableInputFormatScan to individual tests |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-21129](https://issues.apache.org/jira/browse/HBASE-21129) | Clean up duplicate codes in #equals and #hashCode methods of Filter |  Minor | Filters | Reid Chan | Reid Chan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14377](https://issues.apache.org/jira/browse/HBASE-14377) | JavaHBaseContextSuite not being run |  Critical | spark | Sean Busbey | Sean Busbey |
| [HBASE-14406](https://issues.apache.org/jira/browse/HBASE-14406) | The dataframe datasource filter is wrong, and will result in data loss or unexpected behavior |  Blocker | spark | Zhan Zhang | Theodore michael Malaska |
| [HBASE-15184](https://issues.apache.org/jira/browse/HBASE-15184) | SparkSQL Scan operation doesn't work on kerberos cluster |  Critical | spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-15310](https://issues.apache.org/jira/browse/HBASE-15310) | hbase-spark module has compilation failures with clover profile |  Major | spark, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16804](https://issues.apache.org/jira/browse/HBASE-16804) | JavaHBaseContext.streamBulkGet is void but should be JavaDStream |  Major | spark | Igor Yurinok | Igor Yurinok |
| [HBASE-17547](https://issues.apache.org/jira/browse/HBASE-17547) | HBase-Spark Module : TableCatelog doesn't support multiple columns from Single Column family |  Major | spark | Chetan Khatri | Chetan Khatri |
| [HBASE-17574](https://issues.apache.org/jira/browse/HBASE-17574) | Clean up how to run tests under hbase-spark module |  Major | spark | Yi Liang | Yi Liang |
| [HBASE-15597](https://issues.apache.org/jira/browse/HBASE-15597) | Clean up configuration keys used in hbase-spark module |  Critical | spark | Sean Busbey | Yi Liang |
| [HBASE-17909](https://issues.apache.org/jira/browse/HBASE-17909) | Redundant exclusion of jruby-complete in pom of hbase-spark |  Minor | spark | Xiang Li | Xiang Li |
| [HBASE-18179](https://issues.apache.org/jira/browse/HBASE-18179) | Add new hadoop releases to the pre commit hadoop check |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-17546](https://issues.apache.org/jira/browse/HBASE-17546) | Incorrect syntax at HBase-Spark Module Examples |  Minor | spark | Chetan Khatri | Chetan Khatri |
| [HBASE-18392](https://issues.apache.org/jira/browse/HBASE-18392) | Add default value of ----movetimeout to rolling-restart.sh |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-18545](https://issues.apache.org/jira/browse/HBASE-18545) | Fix broke site build that fails in rsgroups |  Major | website | stack | stack |
| [HBASE-18506](https://issues.apache.org/jira/browse/HBASE-18506) | java.lang.AbstractMethodError in hbase REST server |  Blocker | REST | Samir Ahmic | Samir Ahmic |
| [HBASE-19387](https://issues.apache.org/jira/browse/HBASE-19387) | HBase-spark snappy.SnappyError on Arm64 |  Minor | spark, test | Yuqi Gu | Yuqi Gu |
| [HBASE-19748](https://issues.apache.org/jira/browse/HBASE-19748) | TestRegionReplicaFailover and TestRegionReplicaReplicationEndpoint UT hangs |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19568](https://issues.apache.org/jira/browse/HBASE-19568) | Restore of HBase table using incremental backup doesn't restore rows from an earlier incremental backup |  Major | . | Romil Choksi | Vladimir Rodionov |
| [HBASE-20121](https://issues.apache.org/jira/browse/HBASE-20121) | Fix findbugs warning for RestoreTablesClient |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-19923](https://issues.apache.org/jira/browse/HBASE-19923) | Reset peer state and config when refresh replication source failed |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16179](https://issues.apache.org/jira/browse/HBASE-16179) | Fix compilation errors when building hbase-spark against Spark 2.0 |  Critical | spark | Ted Yu | Ted Yu |
| [HBASE-20124](https://issues.apache.org/jira/browse/HBASE-20124) | Make hbase-spark module work with hadoop3 |  Major | dependencies, hadoop3, spark | Ted Yu | Ted Yu |
| [HBASE-20058](https://issues.apache.org/jira/browse/HBASE-20058) | improper quoting in presplitting command docs |  Minor | documentation | Mike Drob | maoling |
| [HBASE-20177](https://issues.apache.org/jira/browse/HBASE-20177) | Fix warning: Class org.apache.hadoop.minikdc.MiniKdc not found in hbase-spark |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-20210](https://issues.apache.org/jira/browse/HBASE-20210) | Note in refguide that RSGroups API is private, not for public consumption; shell is only access |  Major | documentation, rsgroup | stack | stack |
| [HBASE-20220](https://issues.apache.org/jira/browse/HBASE-20220) | [RSGroup] Check if table exists in the cluster before moving it to the specified regionserver group |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20289](https://issues.apache.org/jira/browse/HBASE-20289) | Comparator for NormalizationPlan breaks comparator's convention |  Minor | master | Yuki Tawara | Yuki Tawara |
| [HBASE-13884](https://issues.apache.org/jira/browse/HBASE-13884) | Fix Compactions section in HBase book |  Trivial | documentation | Vladimir Rodionov | stack |
| [HBASE-20260](https://issues.apache.org/jira/browse/HBASE-20260) | Purge old content from the book for branch-2/master |  Critical | documentation | Mike Drob | Mike Drob |
| [HBASE-20313](https://issues.apache.org/jira/browse/HBASE-20313) | Canary documentation is incorrect in reference guide |  Major | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-19890](https://issues.apache.org/jira/browse/HBASE-19890) | Canary usage should document hbase.canary.sink.class config |  Critical | . | Ted Yu | Peter Somogyi |
| [HBASE-20328](https://issues.apache.org/jira/browse/HBASE-20328) | Fix local backup master start command in documentation |  Minor | documentation | Yuki Tawara | Yuki Tawara |
| [HBASE-20355](https://issues.apache.org/jira/browse/HBASE-20355) | upgrade section incorrectly attempts to link to sections |  Minor | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20068](https://issues.apache.org/jira/browse/HBASE-20068) | Hadoopcheck project health check uses default maven repo instead of yetus managed ones |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-15291](https://issues.apache.org/jira/browse/HBASE-15291) | FileSystem not closed in secure bulkLoad |  Major | . | Yong Zhang | Ashish Singhi |
| [HBASE-20375](https://issues.apache.org/jira/browse/HBASE-20375) | Remove use of getCurrentUserCredentials in hbase-spark module |  Major | spark | Ted Yu | Ted Yu |
| [HBASE-20376](https://issues.apache.org/jira/browse/HBASE-20376) | RowCounter and CellCounter documentations are incorrect |  Minor | documentation, mapreduce | Peter Somogyi | Peter Somogyi |
| [HBASE-20356](https://issues.apache.org/jira/browse/HBASE-20356) | make skipping protoc possible |  Critical | dependencies, thirdparty | Mike Drob | Mike Drob |
| [HBASE-20338](https://issues.apache.org/jira/browse/HBASE-20338) | WALProcedureStore#recoverLease() should have fixed sleeps for retrying rollWriter() |  Major | . | Umesh Agashe | Wei-Chiu Chuang |
| [HBASE-20410](https://issues.apache.org/jira/browse/HBASE-20410) | upgrade protoc compiler to 3.5.1-1 |  Critical | build, dependencies, Protobufs | Mike Drob | Mike Drob |
| [HBASE-20335](https://issues.apache.org/jira/browse/HBASE-20335) | nightly jobs no longer contain machine information |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20364](https://issues.apache.org/jira/browse/HBASE-20364) | nightly job gives old results or no results for stages that timeout on SCM |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20419](https://issues.apache.org/jira/browse/HBASE-20419) | Fix potential NPE in ZKUtil#listChildrenAndWatchForNewChildren callers |  Major | . | lujie | lujie |
| [HBASE-20404](https://issues.apache.org/jira/browse/HBASE-20404) | Ugly cleanerchore complaint that dir is not empty |  Major | master | stack | Sean Busbey |
| [HBASE-20421](https://issues.apache.org/jira/browse/HBASE-20421) | HBasecontext creates a connection but does not close it |  Major | . | Yu Wang | Yu Wang |
| [HBASE-18059](https://issues.apache.org/jira/browse/HBASE-18059) | The scanner order for memstore scanners are wrong |  Critical | regionserver, scan, Scanners | Duo Zhang | Jingyun Tian |
| [HBASE-20439](https://issues.apache.org/jira/browse/HBASE-20439) | Clean up incorrect use of commons-logging in hbase-server |  Minor | dependencies, logging | Sean Busbey | Sean Busbey |
| [HBASE-20440](https://issues.apache.org/jira/browse/HBASE-20440) | Clean up incorrect use of commons-lang 2.y |  Major | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-20442](https://issues.apache.org/jira/browse/HBASE-20442) | clean up incorrect use of commons-collections 3 |  Major | dependencies, thirdparty | Sean Busbey | Sean Busbey |
| [HBASE-20006](https://issues.apache.org/jira/browse/HBASE-20006) | TestRestoreSnapshotFromClientWithRegionReplicas is flakey |  Critical | read replicas | stack | Toshihiro Suzuki |
| [HBASE-20293](https://issues.apache.org/jira/browse/HBASE-20293) | get\_splits returns duplicate split points when region replication is on |  Minor | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-19547](https://issues.apache.org/jira/browse/HBASE-19547) | HBase fails building on AArch64 due to asciidoctor-maven-plugin. |  Major | build, documentation, website | Yuqi Gu | Yuqi Gu |
| [HBASE-20427](https://issues.apache.org/jira/browse/HBASE-20427) | thrift.jsp displays "Framed transport" incorrectly |  Major | Thrift | Balazs Meszaros | Balazs Meszaros |
| [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | The hbase shell clone\_snaphost command returns bad error message |  Minor | shell | Thoralf Gutierrez | Thoralf Gutierrez |
| [HBASE-20467](https://issues.apache.org/jira/browse/HBASE-20467) | Precommit personality should only run checkstyle once if we're going to run it at the root. |  Minor | community, test | Sean Busbey | Nihal Jain |
| [HBASE-20487](https://issues.apache.org/jira/browse/HBASE-20487) | Sorting table regions by region name does not work on web UI |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20497](https://issues.apache.org/jira/browse/HBASE-20497) | The getRecoveredQueueStartPos always return 0 in RecoveredReplicationSourceShipper |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-20492](https://issues.apache.org/jira/browse/HBASE-20492) | UnassignProcedure is stuck in retry loop on region stuck in OPENING state |  Critical | amv2 | Umesh Agashe | stack |
| [HBASE-20506](https://issues.apache.org/jira/browse/HBASE-20506) | Add doc and test for unused RetryCounter, useful-looking utility |  Minor | . | stack | stack |
| [HBASE-20476](https://issues.apache.org/jira/browse/HBASE-20476) | Open sequence number could go backwards in AssignProcedure |  Major | Region Assignment | Zheng Hu | Duo Zhang |
| [HBASE-20169](https://issues.apache.org/jira/browse/HBASE-20169) | NPE when calling HBTU.shutdownMiniCluster (TestAssignmentManagerMetrics is flakey) |  Critical | test | Duo Zhang | Chia-Ping Tsai |
| [HBASE-20524](https://issues.apache.org/jira/browse/HBASE-20524) | Need to clear metrics when ReplicationSourceManager refresh replication sources |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20517](https://issues.apache.org/jira/browse/HBASE-20517) | Fix PerformanceEvaluation 'column' parameter |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-20531](https://issues.apache.org/jira/browse/HBASE-20531) | RS may throw NPE when close meta regions in shutdown procedure. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20500](https://issues.apache.org/jira/browse/HBASE-20500) | [rsgroup] should keep at least one server in default group |  Major | rsgroup | Yechao Chen | Yechao Chen |
| [HBASE-20521](https://issues.apache.org/jira/browse/HBASE-20521) | TableOutputFormat.checkOutputSpecs conf checking sequence cause pig script run fail |  Major | mapreduce | Michael Jin | Michael Jin |
| [HBASE-20543](https://issues.apache.org/jira/browse/HBASE-20543) | Fix the flaky TestThriftHttpServer |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20485](https://issues.apache.org/jira/browse/HBASE-20485) | Copy constructor of Scan doesn't copy the readType and replicaId |  Minor | . | Chia-Ping Tsai | Nihal Jain |
| [HBASE-20204](https://issues.apache.org/jira/browse/HBASE-20204) | Add locking to RefreshFileConnections in BucketCache |  Major | BucketCache | Zach York | Zach York |
| [HBASE-20554](https://issues.apache.org/jira/browse/HBASE-20554) | "WALs outstanding" message from CleanerChore is noisy |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20475](https://issues.apache.org/jira/browse/HBASE-20475) | Fix the flaky TestReplicationDroppedTables unit test. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | Client is not able to execute REST queries in a secure cluster |  Minor | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20566](https://issues.apache.org/jira/browse/HBASE-20566) | Creating a system table after enabling rsgroup feature puts region into RIT |  Major | master | Biju Nair | Nihal Jain |
| [HBASE-20544](https://issues.apache.org/jira/browse/HBASE-20544) | downstream HBaseTestingUtility fails with invalid port |  Blocker | test | Sean Busbey | Sean Busbey |
| [HBASE-20447](https://issues.apache.org/jira/browse/HBASE-20447) | Only fail cacheBlock if block collisions aren't related to next block metadata |  Major | BlockCache, BucketCache | Zach York | Zach York |
| [HBASE-20457](https://issues.apache.org/jira/browse/HBASE-20457) | Return immediately for a scan rpc call when we want to switch from pread to stream |  Major | scan | Duo Zhang | Duo Zhang |
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
| [HBASE-20597](https://issues.apache.org/jira/browse/HBASE-20597) | Use a lock to serialize access to a shared reference to ZooKeeperWatcher in HBaseReplicationEndpoint |  Minor | Replication | Andrew Purtell | Andrew Purtell |
| [HBASE-20533](https://issues.apache.org/jira/browse/HBASE-20533) | Fix the flaky TestAssignmentManagerMetrics |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20582](https://issues.apache.org/jira/browse/HBASE-20582) | Bump up JRuby version because of some reported vulnerabilities |  Major | dependencies, shell | Ankit Singhal | Josh Elser |
| [HBASE-20659](https://issues.apache.org/jira/browse/HBASE-20659) | Implement a reopen table regions procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20653](https://issues.apache.org/jira/browse/HBASE-20653) | Add missing observer hooks for region server group to MasterObserver |  Major | . | Ted Yu | Nihal Jain |
| [HBASE-20664](https://issues.apache.org/jira/browse/HBASE-20664) | Variable shared across multiple threads |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20602](https://issues.apache.org/jira/browse/HBASE-20602) | hbase.master.quota.observer.ignore property seems to be not taking effect |  Minor | documentation | Biju Nair | Biju Nair |
| [HBASE-18116](https://issues.apache.org/jira/browse/HBASE-18116) | Replication source in-memory accounting should not include bulk transfer hfiles |  Major | Replication | Andrew Purtell | Xu Cang |
| [HBASE-12882](https://issues.apache.org/jira/browse/HBASE-12882) | Log level for org.apache.hadoop.hbase package should be configurable |  Major | . | Adrian Muraru | Jan Hentschel |
| [HBASE-20634](https://issues.apache.org/jira/browse/HBASE-20634) | Reopen region while server crash can cause the procedure to be stuck |  Critical | . | Duo Zhang | stack |
| [HBASE-20670](https://issues.apache.org/jira/browse/HBASE-20670) | NPE in HMaster#isInMaintenanceMode |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20684](https://issues.apache.org/jira/browse/HBASE-20684) | org.apache.hadoop.hbase.client.Scan#setStopRow javadoc uses incorrect method |  Trivial | Client, documentation | Evgenii | Evgenii |
| [HBASE-20683](https://issues.apache.org/jira/browse/HBASE-20683) | Incorrect return value for PreUpgradeValidator |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | REST Java client is not able to negotiate with the server in the secure mode |  Critical | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20699](https://issues.apache.org/jira/browse/HBASE-20699) | QuotaCache should cancel the QuotaRefresherChore service inside its stop() |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-20707](https://issues.apache.org/jira/browse/HBASE-20707) | Move MissingSwitchDefault check from checkstyle to error-prone |  Major | build | Mike Drob | Mike Drob |
| [HBASE-20689](https://issues.apache.org/jira/browse/HBASE-20689) | Docker fails to install rubocop for precommit |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19377](https://issues.apache.org/jira/browse/HBASE-19377) | Compatibility checker complaining about hash collisions |  Major | community | Andrew Purtell | Mike Drob |
| [HBASE-20561](https://issues.apache.org/jira/browse/HBASE-20561) | The way we stop a ReplicationSource may cause the RS down |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-20681](https://issues.apache.org/jira/browse/HBASE-20681) | IntegrationTestDriver fails after HADOOP-15406 due to missing hamcrest-core |  Major | integration tests | Romil Choksi | Josh Elser |
| [HBASE-20708](https://issues.apache.org/jira/browse/HBASE-20708) | Remove the usage of RecoverMetaProcedure in master startup |  Blocker | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20369](https://issues.apache.org/jira/browse/HBASE-20369) | Document incompatibilities between HBase 1.x and HBase 2.0 |  Critical | documentation | Thiriguna Bharat Rao | Thiriguna Bharat Rao |
| [HBASE-20742](https://issues.apache.org/jira/browse/HBASE-20742) | Always create WAL directory for region server |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-20759](https://issues.apache.org/jira/browse/HBASE-20759) | Please use HTTPS for KEYS |  Major | community, security, website | Sebb | Mike Drob |
| [HBASE-18269](https://issues.apache.org/jira/browse/HBASE-18269) | Jython docs out of date |  Major | documentation | Mike Drob | Artem Ervits |
| [HBASE-20642](https://issues.apache.org/jira/browse/HBASE-20642) | IntegrationTestDDLMasterFailover throws 'InvalidFamilyOperationException |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20767](https://issues.apache.org/jira/browse/HBASE-20767) | Always close hbaseAdmin along with connection in HBTU |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-18622](https://issues.apache.org/jira/browse/HBASE-18622) | Mitigate API compatibility concerns between branch-1 and branch-2 |  Blocker | API | stack | stack |
| [HBASE-20752](https://issues.apache.org/jira/browse/HBASE-20752) | Make sure the regions are truly reopened after ReopenTableRegionsProcedure |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20775](https://issues.apache.org/jira/browse/HBASE-20775) | TestMultiParallel is flakey |  Major | Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20778](https://issues.apache.org/jira/browse/HBASE-20778) | Make it so WALPE runs on DFS |  Major | test | stack | stack |
| [HBASE-20635](https://issues.apache.org/jira/browse/HBASE-20635) | Support to convert the shaded user permission proto to client user permission object |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-20403](https://issues.apache.org/jira/browse/HBASE-20403) | Prefetch sometimes doesn't work with encrypted file system |  Major | . | Umesh Agashe | Todd Lipcon |
| [HBASE-20777](https://issues.apache.org/jira/browse/HBASE-20777) | RpcConnection could still remain opened after we shutdown the NettyRpcServer |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-20795](https://issues.apache.org/jira/browse/HBASE-20795) | Allow option in BBKVComparator.compare to do comparison without sequence id |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20785](https://issues.apache.org/jira/browse/HBASE-20785) | NPE getting metrics in PE testing scans |  Major | Performance | stack | stack |
| [HBASE-20732](https://issues.apache.org/jira/browse/HBASE-20732) | Shutdown scan pool when master is stopped. |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-20791](https://issues.apache.org/jira/browse/HBASE-20791) | RSGroupBasedLoadBalancer#setClusterMetrics should pass ClusterMetrics to its internalBalancer |  Major | rsgroup | chenxu | chenxu |
| [HBASE-20769](https://issues.apache.org/jira/browse/HBASE-20769) | getSplits() has a out of bounds problem in TableSnapshotInputFormatImpl |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20792](https://issues.apache.org/jira/browse/HBASE-20792) | info:servername and info:sn inconsistent for OPEN region |  Blocker | Region Assignment | Josh Elser | Josh Elser |
| [HBASE-20817](https://issues.apache.org/jira/browse/HBASE-20817) | Infinite loop when executing ReopenTableRegionsProcedure |  Blocker | Region Assignment | Duo Zhang | Ankit Singhal |
| [HBASE-20812](https://issues.apache.org/jira/browse/HBASE-20812) | Add defaults to Table Interface so implementors don't have to |  Major | . | stack | stack |
| [HBASE-20825](https://issues.apache.org/jira/browse/HBASE-20825) | Fix pre and post hooks of CloneSnapshot and RestoreSnapshot for Access checks |  Major | security | Romil Choksi | Ankit Singhal |
| [HBASE-20789](https://issues.apache.org/jira/browse/HBASE-20789) | TestBucketCache#testCacheBlockNextBlockMetadataMissing is flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20808](https://issues.apache.org/jira/browse/HBASE-20808) | Wrong shutdown order between Chores and ChoreService |  Minor | . | Reid Chan | Nihal Jain |
| [HBASE-20822](https://issues.apache.org/jira/browse/HBASE-20822) | TestAsyncNonMetaRegionLocator is flakey |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-20842](https://issues.apache.org/jira/browse/HBASE-20842) | Infinite loop when replaying remote wals |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-20784](https://issues.apache.org/jira/browse/HBASE-20784) | Will lose the SNAPSHOT suffix if we get the version of RS from ServerManager |  Minor | master, UI | Duo Zhang | Duo Zhang |
| [HBASE-20854](https://issues.apache.org/jira/browse/HBASE-20854) | Wrong retries number in RpcRetryingCaller's log message |  Minor | Client, logging | Allan Yang | Allan Yang |
| [HBASE-20859](https://issues.apache.org/jira/browse/HBASE-20859) | Backup and incremental load could fail in secure clusters |  Major | backup&restore | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-20880](https://issues.apache.org/jira/browse/HBASE-20880) | Fix for warning It would fail on the following input in hbase-spark |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-19572](https://issues.apache.org/jira/browse/HBASE-19572) | RegionMover should use the configured default port number and not the one from HConstants |  Major | . | Esteban Gutierrez | Toshihiro Suzuki |
| [HBASE-20865](https://issues.apache.org/jira/browse/HBASE-20865) | CreateTableProcedure is stuck in retry loop in CREATE\_TABLE\_WRITE\_FS\_LAYOUT state |  Major | amv2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20869](https://issues.apache.org/jira/browse/HBASE-20869) | Endpoint-based Export use incorrect user to write to destination |  Major | Coprocessors | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-6028](https://issues.apache.org/jira/browse/HBASE-6028) | Implement a cancel for in-progress compactions |  Minor | regionserver | Derek Wollenstein | Mohit Goel |
| [HBASE-20901](https://issues.apache.org/jira/browse/HBASE-20901) | Reducing region replica has no effect |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20870](https://issues.apache.org/jira/browse/HBASE-20870) | Wrong HBase root dir in ITBLL's Search Tool |  Minor | integration tests | Allan Yang | Allan Yang |
| [HBASE-20917](https://issues.apache.org/jira/browse/HBASE-20917) | MetaTableMetrics#stop references uninitialized requestsMap for non-meta region |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20908](https://issues.apache.org/jira/browse/HBASE-20908) | Infinite loop on regionserver if region replica are reduced |  Major | read replicas | Ankit Singhal | Ankit Singhal |
| [HBASE-20565](https://issues.apache.org/jira/browse/HBASE-20565) | ColumnRangeFilter combined with ColumnPaginationFilter can produce incorrect result since 1.4 |  Major | Filters | Jerry He | Zheng Hu |
| [HBASE-20927](https://issues.apache.org/jira/browse/HBASE-20927) | RSGroupAdminEndpoint doesn't handle clearing dead servers if they are not processed yet. |  Major | . | Sergey Soldatov | Sergey Soldatov |
| [HBASE-20966](https://issues.apache.org/jira/browse/HBASE-20966) | RestoreTool#getTableInfoPath should look for completed snapshot only |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | Upgrade our hadoop versions to 2.7.7 and 3.0.3 |  Critical | java, security | stack | Duo Zhang |
| [HBASE-20731](https://issues.apache.org/jira/browse/HBASE-20731) | Incorrect folders in documentation |  Minor | documentation | Peter Somogyi | Sahil Aggarwal |
| [HBASE-20729](https://issues.apache.org/jira/browse/HBASE-20729) | B&R BackupLogCleaner must ignore ProcV2 WAL files |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-20829](https://issues.apache.org/jira/browse/HBASE-20829) | Remove the addFront assertion in MasterProcedureScheduler.doAdd |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-21007](https://issues.apache.org/jira/browse/HBASE-21007) | Memory leak in HBase rest server |  Critical | REST | Bosko Devetak | Bosko Devetak |
| [HBASE-21026](https://issues.apache.org/jira/browse/HBASE-21026) | Fix Backup/Restore command usage bug in book |  Minor | backup&restore, documentation | Mingliang Liu | Mingliang Liu |
| [HBASE-20753](https://issues.apache.org/jira/browse/HBASE-20753) | reference guide should direct security related issues to private@hbase.apache.org |  Critical | documentation, security | Sean Busbey | Sahil Aggarwal |
| [HBASE-21018](https://issues.apache.org/jira/browse/HBASE-21018) | RS crashed because AsyncFS was unable to update HDFS data encryption key |  Critical | wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20981](https://issues.apache.org/jira/browse/HBASE-20981) | Rollback stateCount accounting thrown-off when exception out of rollbackState |  Major | amv2 | stack | Jack Bearden |
| [HBASE-21038](https://issues.apache.org/jira/browse/HBASE-21038) | SAXParseException when hbase.spark.use.hbasecontext=false |  Major | . | Ajith S | Ajith S |
| [HBASE-21005](https://issues.apache.org/jira/browse/HBASE-21005) | Maven site configuration causes downstream projects to get a directory named ${project.basedir} |  Minor | build | Matt Burgess | Josh Elser |
| [HBASE-21040](https://issues.apache.org/jira/browse/HBASE-21040) | Replace call to printStackTrace() with proper logger call |  Minor | . | Ted Yu | Subrat Mishra |
| [HBASE-21047](https://issues.apache.org/jira/browse/HBASE-21047) | Object creation of StoreFileScanner thru constructor and close may leave refCount to -1 |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21062](https://issues.apache.org/jira/browse/HBASE-21062) | WALFactory has misleading notion of "default" |  Major | wal | Josh Elser | Josh Elser |
| [HBASE-21056](https://issues.apache.org/jira/browse/HBASE-21056) | Findbugs false positive: BucketCache.persistToFile may fail to clean up java.io.OutputStream |  Minor | BucketCache | Sean Busbey | Sean Busbey |
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
| [HBASE-20978](https://issues.apache.org/jira/browse/HBASE-20978) | [amv2] Worker terminating UNNATURALLY during MoveRegionProcedure |  Critical | amv2 | stack | Allan Yang |
| [HBASE-20772](https://issues.apache.org/jira/browse/HBASE-20772) | Controlled shutdown fills Master log with the disturbing message "No matching procedure found for rit=OPEN, location=ZZZZ, table=YYYYY, region=XXXX transition to CLOSED |  Major | logging | stack | stack |
| [HBASE-20890](https://issues.apache.org/jira/browse/HBASE-20890) | PE filterScan seems to be stuck forever |  Minor | . | Vikas Vishwakarma | Abhishek Goyal |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21030](https://issues.apache.org/jira/browse/HBASE-21030) | Correct javadoc for append operation |  Minor | documentation | Nihal Jain | Subrat Mishra |
| [HBASE-20968](https://issues.apache.org/jira/browse/HBASE-20968) | list\_procedures\_test fails due to no matching regex |  Major | shell, test | Ted Yu | Duo Zhang |
| [HBASE-21084](https://issues.apache.org/jira/browse/HBASE-21084) | When cloning a snapshot including a split parent region, the split parent region of the cloned table will be online |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20940](https://issues.apache.org/jira/browse/HBASE-20940) | HStore.cansplit should not allow split to happen if it has references |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21128](https://issues.apache.org/jira/browse/HBASE-21128) | TestAsyncRegionAdminApi.testAssignRegionAndUnassignRegion is broken |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-20175](https://issues.apache.org/jira/browse/HBASE-20175) | hbase-spark needs scala dependency convergance |  Major | dependencies, spark | Mike Drob | Artem Ervits |
| [HBASE-21132](https://issues.apache.org/jira/browse/HBASE-21132) | return wrong result in rest multiget |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21136](https://issues.apache.org/jira/browse/HBASE-21136) | NPE in MetricsTableSourceImpl.updateFlushTime |  Major | metrics | Guanghao Zhang | Duo Zhang |
| [HBASE-20892](https://issues.apache.org/jira/browse/HBASE-20892) | [UI] Start / End keys are empty on table.jsp |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20741](https://issues.apache.org/jira/browse/HBASE-20741) | Split of a region with replicas creates all daughter regions and its replica in same server |  Major | read replicas | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Major | tooling | Mike Drob | Colin Garcia |
| [HBASE-21001](https://issues.apache.org/jira/browse/HBASE-21001) | ReplicationObserver fails to load in HBase 2.0.0 |  Major | . | Wei-Chiu Chuang | Guangxu Cheng |
| [HBASE-21052](https://issues.apache.org/jira/browse/HBASE-21052) | After restoring a snapshot, table.jsp page for the table gets stuck |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21171](https://issues.apache.org/jira/browse/HBASE-21171) | [amv2] Tool to parse a directory of MasterProcWALs standalone |  Major | amv2, test | stack | stack |
| [HBASE-21143](https://issues.apache.org/jira/browse/HBASE-21143) | Update findbugs-maven-plugin to 3.0.4 |  Major | pom | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21144](https://issues.apache.org/jira/browse/HBASE-21144) | AssignmentManager.waitForAssignment is not stable |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell is always returned when using QualifierFilter |  Major | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21173](https://issues.apache.org/jira/browse/HBASE-21173) | Remove the duplicate HRegion#close in TestHRegion |  Minor | test | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21021](https://issues.apache.org/jira/browse/HBASE-21021) | Result returned by Append operation should be ordered |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-21181](https://issues.apache.org/jira/browse/HBASE-21181) | Use the same filesystem for wal archive directory and wal directory |  Major | . | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18175](https://issues.apache.org/jira/browse/HBASE-18175) | Add hbase-spark integration test into hbase-spark-it |  Critical | spark | Yi Liang | Yi Liang |
| [HBASE-18760](https://issues.apache.org/jira/browse/HBASE-18760) | Make hbase-shaded-check-invariants part of precommit |  Blocker | community, test | Appy | Sean Busbey |
| [HBASE-20176](https://issues.apache.org/jira/browse/HBASE-20176) | Fix warnings about Logging import in hbase-spark test code |  Minor | . | Ted Yu | Artem Ervits |
| [HBASE-19258](https://issues.apache.org/jira/browse/HBASE-19258) | IntegrationTest for Backup and Restore |  Blocker | integration tests | Josh Elser | Vladimir Rodionov |
| [HBASE-20414](https://issues.apache.org/jira/browse/HBASE-20414) | TestLockProcedure#testMultipleLocks may fail on slow machine |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20513](https://issues.apache.org/jira/browse/HBASE-20513) | Collect and emit ScanMetrics in PerformanceEvaluation |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-20508](https://issues.apache.org/jira/browse/HBASE-20508) | TestIncrementalBackupWithBulkLoad doesn't need to be Parameterized test |  Minor | backup&restore | Ted Yu | maoling |
| [HBASE-20505](https://issues.apache.org/jira/browse/HBASE-20505) | PE should support multi column family read and write cases |  Minor | Performance | Andrew Purtell | Andrew Purtell |
| [HBASE-20646](https://issues.apache.org/jira/browse/HBASE-20646) | TestWALProcedureStoreOnHDFS failing on branch-1 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20667](https://issues.apache.org/jira/browse/HBASE-20667) | Rename TestGlobalThrottler to TestReplicationGlobalThrottler |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20838](https://issues.apache.org/jira/browse/HBASE-20838) | Include hbase-server in precommit test if CommonFSUtils is changed |  Major | . | Yu Li | Yu Li |
| [HBASE-20907](https://issues.apache.org/jira/browse/HBASE-20907) | Fix Intermittent failure on TestProcedurePriority |  Major | . | Yu Li | Yu Li |
| [HBASE-21076](https://issues.apache.org/jira/browse/HBASE-21076) | TestTableResource fails with NPE |  Major | REST, test | Ted Yu | Sean Busbey |
| [HBASE-21161](https://issues.apache.org/jira/browse/HBASE-21161) | Enable the test added in HBASE-20741 that was removed accidentally |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21138](https://issues.apache.org/jira/browse/HBASE-21138) | Close HRegion instance at the end of every test in TestHRegion |  Major | . | Ted Yu | Mingliang Liu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15336](https://issues.apache.org/jira/browse/HBASE-15336) | Support Dataframe writer to the spark connector |  Major | spark | Zhan Zhang | Zhan Zhang |
| [HBASE-15333](https://issues.apache.org/jira/browse/HBASE-15333) | [hbase-spark] Enhance dataframe filters to handle naively encoded short, integer, long, float and double |  Major | spark | Zhan Zhang | Zhan Zhang |
| [HBASE-15473](https://issues.apache.org/jira/browse/HBASE-15473) | Documentation for the usage of hbase dataframe user api (JSON, Avro, etc) |  Blocker | documentation, spark | Zhan Zhang | Weiqing Yang |
| [HBASE-18050](https://issues.apache.org/jira/browse/HBASE-18050) | Add document about the IA.Private classes which appear in IA.LimitedPrivate interfaces |  Critical | documentation | Duo Zhang | Duo Zhang |
| [HBASE-17840](https://issues.apache.org/jira/browse/HBASE-17840) | Update book |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17752](https://issues.apache.org/jira/browse/HBASE-17752) | Update reporting RPCs/Shell commands to break out space utilization by snapshot |  Major | . | Josh Elser | Josh Elser |
| [HBASE-12349](https://issues.apache.org/jira/browse/HBASE-12349) | Add Maven build support module for a custom version of error-prone |  Blocker | . | Andrew Purtell | Mike Drob |
| [HBASE-18667](https://issues.apache.org/jira/browse/HBASE-18667) | Disable error-prone for hbase-protocol-shaded |  Major | build | Mike Drob | Mike Drob |
| [HBASE-19216](https://issues.apache.org/jira/browse/HBASE-19216) | Implement a general framework to execute remote procedure on RS |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19482](https://issues.apache.org/jira/browse/HBASE-19482) | Fix Checkstyle errors in hbase-spark-it |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19524](https://issues.apache.org/jira/browse/HBASE-19524) | Master side changes for moving peer modification from zk watcher to procedure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19540](https://issues.apache.org/jira/browse/HBASE-19540) | Reduce number of unnecessary semicolons |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19537](https://issues.apache.org/jira/browse/HBASE-19537) | Remove unnecessary semicolons in hbase-backup |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19536](https://issues.apache.org/jira/browse/HBASE-19536) | Client side changes for moving peer modification from zk watcher to procedure |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-19564](https://issues.apache.org/jira/browse/HBASE-19564) | Procedure id is missing in the response of peer related operations |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19520](https://issues.apache.org/jira/browse/HBASE-19520) | Add UTs for the new lock type PEER |  Major | proc-v2 | Duo Zhang | Guanghao Zhang |
| [HBASE-19580](https://issues.apache.org/jira/browse/HBASE-19580) | Use slf4j instead of commons-logging in new, just-added Peer Procedure classes |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19525](https://issues.apache.org/jira/browse/HBASE-19525) | RS side changes for moving peer modification from zk watcher to procedure |  Major | proc-v2, Replication | Duo Zhang | Zheng Hu |
| [HBASE-19543](https://issues.apache.org/jira/browse/HBASE-19543) | Abstract a replication storage interface to extract the zk specific code |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19597](https://issues.apache.org/jira/browse/HBASE-19597) | Fix Checkstyle errors in hbase-spark |  Minor | spark | Jan Hentschel | Jan Hentschel |
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
| [HBASE-20329](https://issues.apache.org/jira/browse/HBASE-20329) | Add note for operators to refguide on AsyncFSWAL |  Critical | documentation, wal | stack | stack |
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
| [HBASE-20628](https://issues.apache.org/jira/browse/HBASE-20628) | SegmentScanner does over-comparing when one flushing |  Critical | Performance | stack | stack |
| [HBASE-20569](https://issues.apache.org/jira/browse/HBASE-20569) | NPE in RecoverStandbyProcedure.execute |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-20637](https://issues.apache.org/jira/browse/HBASE-20637) | Polish the WAL switching when transiting from A to S |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20700](https://issues.apache.org/jira/browse/HBASE-20700) | Move meta region when server crash can cause the procedure to be stuck |  Critical | master, proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20722](https://issues.apache.org/jira/browse/HBASE-20722) | Make RegionServerTracker only depend on children changed event |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20730](https://issues.apache.org/jira/browse/HBASE-20730) | Add pv2 and amv2 chapters to refguide |  Major | documentation | stack | stack |
| [HBASE-20332](https://issues.apache.org/jira/browse/HBASE-20332) | shaded mapreduce module shouldn't include hadoop |  Critical | mapreduce, shading | Sean Busbey | Sean Busbey |
| [HBASE-20333](https://issues.apache.org/jira/browse/HBASE-20333) | break up shaded client into one with no Hadoop and one that's standalone |  Critical | shading | Sean Busbey | Sean Busbey |
| [HBASE-20334](https://issues.apache.org/jira/browse/HBASE-20334) | add a test that expressly uses both our shaded client and the one from hadoop 3 |  Major | hadoop3, shading | Sean Busbey | Sean Busbey |
| [HBASE-20706](https://issues.apache.org/jira/browse/HBASE-20706) | [hack] Don't add known not-OPEN regions in reopen phase of MTP |  Critical | amv2 | Josh Elser | Josh Elser |
| [HBASE-20393](https://issues.apache.org/jira/browse/HBASE-20393) | Operational documents for synchronous replication. |  Major | documentation, Replication | Zheng Hu | Zheng Hu |
| [HBASE-18569](https://issues.apache.org/jira/browse/HBASE-18569) | Add prefetch support for async region locator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-20710](https://issues.apache.org/jira/browse/HBASE-20710) | extra cloneFamily() in Mutation.add(Cell) |  Minor | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-19764](https://issues.apache.org/jira/browse/HBASE-19764) | Fix Checkstyle errors in hbase-endpoint |  Minor | . | Jan Hentschel | Guangxu Cheng |
| [HBASE-20780](https://issues.apache.org/jira/browse/HBASE-20780) | ServerRpcConnection logging cleanup |  Major | logging, Performance | stack | stack |
| [HBASE-20751](https://issues.apache.org/jira/browse/HBASE-20751) |  Performance comparison of synchronous replication branch and master branch |  Major | Performance | Zheng Hu | Zheng Hu |
| [HBASE-20194](https://issues.apache.org/jira/browse/HBASE-20194) | Basic Replication WebUI - Master |  Critical | Replication, Usability | Jingyun Tian | Jingyun Tian |
| [HBASE-20783](https://issues.apache.org/jira/browse/HBASE-20783) | NPE encountered when rolling update from master with an async peer to branch HBASE-19064 |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20790](https://issues.apache.org/jira/browse/HBASE-20790) | Fix the style issues on branch HBASE-19064 before merging back to master |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-20788](https://issues.apache.org/jira/browse/HBASE-20788) | Write up a doc about how to rolling upgrade from 1.x to 2.x |  Blocker | documentation | Duo Zhang | Duo Zhang |
| [HBASE-20801](https://issues.apache.org/jira/browse/HBASE-20801) | Fix broken TestReplicationShell |  Major | Replication, shell, test | Duo Zhang | Duo Zhang |
| [HBASE-20781](https://issues.apache.org/jira/browse/HBASE-20781) | Save recalculating families in a WALEdit batch of Cells |  Major | Performance | stack | stack |
| [HBASE-19722](https://issues.apache.org/jira/browse/HBASE-19722) | Meta query statistics metrics source |  Major | . | Andrew Purtell | Xu Cang |
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
| [HBASE-20875](https://issues.apache.org/jira/browse/HBASE-20875) | MemStoreLABImp::copyIntoCell uses 7% CPU when writing |  Major | Performance | stack | stack |
| [HBASE-20853](https://issues.apache.org/jira/browse/HBASE-20853) | Polish "Add defaults to Table Interface so Implementors don't have to" |  Major | API | stack | Balazs Meszaros |
| [HBASE-20909](https://issues.apache.org/jira/browse/HBASE-20909) | Add 2.1.0 to the download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-20914](https://issues.apache.org/jira/browse/HBASE-20914) | Trim Master memory usage |  Major | master | stack | stack |
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
| [HBASE-21016](https://issues.apache.org/jira/browse/HBASE-21016) | Find another way to test the backoff mechanism in TRSP |  Major | amv2, test | Duo Zhang |  |
| [HBASE-21094](https://issues.apache.org/jira/browse/HBASE-21094) | Remove the explicit timeout config for TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21093](https://issues.apache.org/jira/browse/HBASE-21093) | Move TestCreateTableProcedure.testMRegions to a separated file |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21095](https://issues.apache.org/jira/browse/HBASE-21095) | The timeout retry logic for several procedures are broken after master restarts |  Critical | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | Block out HBCK1 in hbase2 |  Major | hbck | stack | stack |
| [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | Create and implement HbckService in master |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-21017](https://issues.apache.org/jira/browse/HBASE-21017) | Revisit the expected states for open/close |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21083](https://issues.apache.org/jira/browse/HBASE-21083) | Introduce a mechanism to bypass the execution of a stuck procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14184](https://issues.apache.org/jira/browse/HBASE-14184) | Fix indention and typo in JavaHBaseContext |  Minor | spark | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-14123](https://issues.apache.org/jira/browse/HBASE-14123) | HBase Backup/Restore Phase 2 |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17748](https://issues.apache.org/jira/browse/HBASE-17748) | Include HBase Snapshots in Space Quotas |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20360](https://issues.apache.org/jira/browse/HBASE-20360) | Further optimization for serial replication |  Major | Replication | Duo Zhang |  |
| [HBASE-14375](https://issues.apache.org/jira/browse/HBASE-14375) | Define public API for spark integration module |  Blocker | spark | Sean Busbey | Jerry He |
| [HBASE-18181](https://issues.apache.org/jira/browse/HBASE-18181) | Move master branch to version 3.0.0-SNAPSHOT post creation of branch-2 |  Major | . | stack | stack |
| [HBASE-18202](https://issues.apache.org/jira/browse/HBASE-18202) | Trim down supplemental models file for unnecessary entries |  Major | dependencies | Mike Drob | Mike Drob |
| [HBASE-14161](https://issues.apache.org/jira/browse/HBASE-14161) | Add hbase-spark integration tests to IT jenkins job |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-18558](https://issues.apache.org/jira/browse/HBASE-18558) | clean up duplicate dependency management entries for hbase-shaded-miscellaneous |  Minor | dependencies, pom | Sean Busbey | ChunHao |
| [HBASE-18724](https://issues.apache.org/jira/browse/HBASE-18724) | Close stale github PRs |  Major | community | Sean Busbey | Sean Busbey |
| [HBASE-19271](https://issues.apache.org/jira/browse/HBASE-19271) | Update ref guide about the async client to reflect the change in HBASE-19251 |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-15124](https://issues.apache.org/jira/browse/HBASE-15124) | Document the new 'normalization' feature in refguid |  Critical | documentation | stack | Romil Choksi |
| [HBASE-17664](https://issues.apache.org/jira/browse/HBASE-17664) | Remove unnecessary semicolons throughout the code base |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-20073](https://issues.apache.org/jira/browse/HBASE-20073) | remove 1.1 references from website landing pages |  Major | website | Sean Busbey | Sean Busbey |
| [HBASE-20161](https://issues.apache.org/jira/browse/HBASE-20161) | disable HBase-Trunk\_matrix job |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-16412](https://issues.apache.org/jira/browse/HBASE-16412) | Warnings from asciidoc |  Minor | documentation | Nick Dimiduk | stack |
| [HBASE-20264](https://issues.apache.org/jira/browse/HBASE-20264) | Update Java prerequisite section with LTS rec and status of current GA JDKs |  Critical | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20323](https://issues.apache.org/jira/browse/HBASE-20323) | Clean out references to component owners |  Minor | community, documentation | Sean Busbey | Sean Busbey |
| [HBASE-20371](https://issues.apache.org/jira/browse/HBASE-20371) | website landing page should draw attention to CFP |  Minor | website | Sean Busbey | Sean Busbey |
| [HBASE-17918](https://issues.apache.org/jira/browse/HBASE-17918) | document serial replication |  Critical | documentation, Replication | Sean Busbey | Yi Mei |
| [HBASE-20372](https://issues.apache.org/jira/browse/HBASE-20372) | [website] move stuff from more than 2 years ago to old news |  Minor | website | Sean Busbey | Sean Busbey |
| [HBASE-20112](https://issues.apache.org/jira/browse/HBASE-20112) | Include test results from nightly hadoop3 tests in jenkins test results |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20391](https://issues.apache.org/jira/browse/HBASE-20391) | close out stale or finished PRs on github |  Minor | community, documentation | Sean Busbey | Sean Busbey |
| [HBASE-20443](https://issues.apache.org/jira/browse/HBASE-20443) | Use checkstyle to ban imports from commons-collections 3 |  Major | dependencies, test | Sean Busbey | Balazs Meszaros |
| [HBASE-20441](https://issues.apache.org/jira/browse/HBASE-20441) | Use checkstyle to ban imports from commons-lang 2 |  Major | dependencies, test | Sean Busbey | Balazs Meszaros |
| [HBASE-20510](https://issues.apache.org/jira/browse/HBASE-20510) | Add a downloads page to hbase.apache.org to tie mirrored artifacts to their hash and signature |  Major | website | stack | stack |
| [HBASE-20593](https://issues.apache.org/jira/browse/HBASE-20593) | HBase website landing page should link to HBaseCon Asia 2018 |  Major | website | Sean Busbey | Sean Busbey |
| [HBASE-20595](https://issues.apache.org/jira/browse/HBASE-20595) | Remove the concept of 'special tables' from rsgroups |  Major | Region Assignment, rsgroup | Andrew Purtell | Andrew Purtell |
| [HBASE-19475](https://issues.apache.org/jira/browse/HBASE-19475) | Extend backporting strategy in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-20677](https://issues.apache.org/jira/browse/HBASE-20677) | Backport test of HBASE-20566 'Creating a system table after enabling rsgroup feature puts region into RIT' to branch-2 |  Major | . | Ted Yu | Nihal Jain |
| [HBASE-20665](https://issues.apache.org/jira/browse/HBASE-20665) | "Already cached block XXX" message should be DEBUG |  Minor | BlockCache | Sean Busbey | Eric Maynard |
| [HBASE-20915](https://issues.apache.org/jira/browse/HBASE-20915) | Remove the commit column on our download page |  Major | website | Duo Zhang | Duo Zhang |
| [HBASE-20512](https://issues.apache.org/jira/browse/HBASE-20512) | document change to running tests on secure clusters |  Critical | documentation, integration tests, Usability | Sean Busbey | stack |
| [HBASE-20257](https://issues.apache.org/jira/browse/HBASE-20257) | hbase-spark should not depend on com.google.code.findbugs.jsr305 |  Minor | build, spark | Ted Yu | Artem Ervits |
| [HBASE-21089](https://issues.apache.org/jira/browse/HBASE-21089) | clean out stale / invalid PRs |  Minor | community | Sean Busbey | Sean Busbey |
| [HBASE-20942](https://issues.apache.org/jira/browse/HBASE-20942) | Improve RpcServer TRACE logging |  Major | Operability | Esteban Gutierrez | Krish Dey |
| [HBASE-21027](https://issues.apache.org/jira/browse/HBASE-21027) | Inconsistent synchronization in CacheableDeserializerIdManager |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20482](https://issues.apache.org/jira/browse/HBASE-20482) | Print a link to the ref guide chapter for the shell during startup |  Minor | documentation, shell | Sakthi | Sakthi |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Minor | . | Mike Drob | Mike Drob |


