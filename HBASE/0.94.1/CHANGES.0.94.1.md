
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

## Release 0.94.1 - 2012-08-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5802](https://issues.apache.org/jira/browse/HBASE-5802) | Change the default metrics class to NullContextWithUpdateThread |  Minor | . | Elliott Clark | Elliott Clark |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5886](https://issues.apache.org/jira/browse/HBASE-5886) | Add new metric for possible data loss due to puts without WAL |  Minor | metrics, regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6044](https://issues.apache.org/jira/browse/HBASE-6044) | copytable: remove rs.\* parameters |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5609](https://issues.apache.org/jira/browse/HBASE-5609) | Add the ability to pass additional information for slow query logging |  Minor | Client, IPC/RPC | Michael Drzal | Michael Drzal |
| [HBASE-2730](https://issues.apache.org/jira/browse/HBASE-2730) | Expose RS work queue contents on web UI |  Critical | monitoring, regionserver | Todd Lipcon | Jie Huang |
| [HBASE-4956](https://issues.apache.org/jira/browse/HBASE-4956) | Control direct memory buffer consumption by HBaseClient |  Major | . | Ted Yu | Bob Copeland |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5913](https://issues.apache.org/jira/browse/HBASE-5913) | Speed up the full scan of META |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5887](https://issues.apache.org/jira/browse/HBASE-5887) | Make TestAcidGuarantees usable for system testing. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5973](https://issues.apache.org/jira/browse/HBASE-5973) | Add ability for potentially long-running IPC calls to abort if client disconnects |  Major | IPC/RPC | Todd Lipcon | Todd Lipcon |
| [HBASE-6010](https://issues.apache.org/jira/browse/HBASE-6010) | Security audit logger configuration for log4j |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-6022](https://issues.apache.org/jira/browse/HBASE-6022) | Include Junit in the libs when packaging so that TestAcidGaurntee can run |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6023](https://issues.apache.org/jira/browse/HBASE-6023) | Normalize security audit logging level with Hadoop |  Minor | IPC/RPC, security | Andrew Purtell | Andrew Purtell |
| [HBASE-6013](https://issues.apache.org/jira/browse/HBASE-6013) | Polish sharp edges from CopyTable |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6114](https://issues.apache.org/jira/browse/HBASE-6114) | CacheControl flags should be tunable per table schema per CF |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-4720](https://issues.apache.org/jira/browse/HBASE-4720) | Implement atomic update operations (checkAndPut, checkAndDelete) for REST client/server |  Major | . | Daniel Lord | Mubarak Seyed |
| [HBASE-6124](https://issues.apache.org/jira/browse/HBASE-6124) | Backport HBASE-6033 to 0.90, 0.92 and 0.94 |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6040](https://issues.apache.org/jira/browse/HBASE-6040) | Use block encoding and HBase handled checksum verification in bulk loading using HFileOutputFormat |  Major | mapreduce | Anoop Sam John | Anoop Sam John |
| [HBASE-5892](https://issues.apache.org/jira/browse/HBASE-5892) | [hbck] Refactor parallel WorkItem\* to Futures. |  Major | hbck | Jonathan Hsieh | Andrew Wang |
| [HBASE-6067](https://issues.apache.org/jira/browse/HBASE-6067) | HBase won't start when hbase.rootdir uses ViewFileSystem |  Major | regionserver | Eli Collins | Ted Yu |
| [HBASE-6161](https://issues.apache.org/jira/browse/HBASE-6161) | Log Error when thrift server fails to start up. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6173](https://issues.apache.org/jira/browse/HBASE-6173) | hbck check specified tables only |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5838](https://issues.apache.org/jira/browse/HBASE-5838) | Add an LZ4 compression option to HFile |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-6214](https://issues.apache.org/jira/browse/HBASE-6214) | Backport HBASE-5998 to 94.1 |  Major | . | Anoop Sam John | rajeshbabu |
| [HBASE-5360](https://issues.apache.org/jira/browse/HBASE-5360) | [uberhbck] Add options for how to handle offline split parents. |  Major | hbck | Jonathan Hsieh | Jimmy Xiang |
| [HBASE-6244](https://issues.apache.org/jira/browse/HBASE-6244) | [REST] Result generators do not need to query table schema |  Minor | REST | ShiXing | Andrew Purtell |
| [HBASE-6247](https://issues.apache.org/jira/browse/HBASE-6247) | [REST] HTablePool.putTable is deprecated |  Minor | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-6207](https://issues.apache.org/jira/browse/HBASE-6207) | Add jitter to client retry timer |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-5630](https://issues.apache.org/jira/browse/HBASE-5630) | hbck should disable the balancer using synchronousBalanceSwitch. |  Minor | hbck | Jonathan Hsieh | Gregory Chanan |
| [HBASE-6267](https://issues.apache.org/jira/browse/HBASE-6267) | hbase.store.delete.expired.storefile should be true by default |  Major | regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-6314](https://issues.apache.org/jira/browse/HBASE-6314) | Fast fail behavior for unauthenticated user |  Minor | IPC/RPC, security | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-6332](https://issues.apache.org/jira/browse/HBASE-6332) | Improve POM for better integration with downstream ivy projects |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-6341](https://issues.apache.org/jira/browse/HBASE-6341) | Publicly expose HConnectionKey |  Trivial | Client | Micah Whitacre |  |
| [HBASE-6283](https://issues.apache.org/jira/browse/HBASE-6283) | [region\_mover.rb] Add option to exclude list of hosts on unload instead of just assuming the source node. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6334](https://issues.apache.org/jira/browse/HBASE-6334) | TestImprovement for TestHRegion.testWritesWhileGetting |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6384](https://issues.apache.org/jira/browse/HBASE-6384) | hbck should group together those sidelined regions need to be bulk loaded later |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6382](https://issues.apache.org/jira/browse/HBASE-6382) | Upgrade Jersey to 1.8 to match Hadoop 1 and 2 |  Major | REST | David S. Wang | David S. Wang |
| [HBASE-6363](https://issues.apache.org/jira/browse/HBASE-6363) | HBaseConfiguration can carry a main method that dumps XML output for debug purposes |  Trivial | util | Harsh J | Shane Huang |
| [HBASE-6433](https://issues.apache.org/jira/browse/HBASE-6433) | Improve HBaseServer#getRemoteAddress by utilizing HBaseServer.Connection.hostAddress |  Minor | . | binlijin | binlijin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5928](https://issues.apache.org/jira/browse/HBASE-5928) | Hbck shouldn't npe when there are no tables. |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-5902](https://issues.apache.org/jira/browse/HBASE-5902) | Some scripts are not executable |  Trivial | scripts | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5894](https://issues.apache.org/jira/browse/HBASE-5894) | Table deletion failed but HBaseAdmin#deletetable reports it as success |  Minor | . | xufeng | xufeng |
| [HBASE-5963](https://issues.apache.org/jira/browse/HBASE-5963) | ClassCastException: FileSystem$Cache$ClientFinalizer cannot be cast to Thread |  Major | . | Andrew Purtell | Ted Yu |
| [HBASE-5964](https://issues.apache.org/jira/browse/HBASE-5964) | HFileSystem: "No FileSystem for scheme: hdfs" |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5975](https://issues.apache.org/jira/browse/HBASE-5975) | Failed suppression of fs shutdown hook with Hadoop 2.0.0 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5922](https://issues.apache.org/jira/browse/HBASE-5922) | HalfStoreFileReader seekBefore causes StackOverflowError |  Critical | Client, io | Nate Putnam | Nate Putnam |
| [HBASE-5806](https://issues.apache.org/jira/browse/HBASE-5806) | Handle split region related failures on master restart and RS restart |  Major | . | ramkrishna.s.vasudevan | Chinna Rao Lalam |
| [HBASE-6029](https://issues.apache.org/jira/browse/HBASE-6029) | HBCK doesn't recover Balance switch if exception occurs in onlineHbck() |  Major | hbck | Maryann Xue | Maryann Xue |
| [HBASE-5741](https://issues.apache.org/jira/browse/HBASE-5741) | ImportTsv does not check for table existence |  Major | mapreduce | Clint Heath | Himanshu Vashishtha |
| [HBASE-6018](https://issues.apache.org/jira/browse/HBASE-6018) | hbck fails with a RejectedExecutionException when \>50 regions present |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6021](https://issues.apache.org/jira/browse/HBASE-6021) | NullPointerException when running LoadTestTool without specifying compression type |  Minor | util | Andrew Purtell | Andrew Purtell |
| [HBASE-6011](https://issues.apache.org/jira/browse/HBASE-6011) | Unable to start master in local mode |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5546](https://issues.apache.org/jira/browse/HBASE-5546) | Master assigns region in the original region server when opening region failed |  Minor | master | gaojinchao | Ashutosh Jindal |
| [HBASE-6056](https://issues.apache.org/jira/browse/HBASE-6056) | Restore hbase-default version check |  Major | . | stack | stack |
| [HBASE-5840](https://issues.apache.org/jira/browse/HBASE-5840) | Open Region FAILED\_OPEN doesn't clear the TaskMonitor Status, keeps showing the old status |  Major | regionserver | Gopinathan A | rajeshbabu |
| [HBASE-5757](https://issues.apache.org/jira/browse/HBASE-5757) | TableInputFormat should handle as many errors as possible |  Major | mapreduce | Jan Lukavsky | Jan Lukavsky |
| [HBASE-5927](https://issues.apache.org/jira/browse/HBASE-5927) | SSH and DisableTableHandler happening together does not clear the znode of the region and RIT map. |  Major | master | Jieshan Bean | rajeshbabu |
| [HBASE-6069](https://issues.apache.org/jira/browse/HBASE-6069) | TableInputFormatBase#createRecordReader() doesn't initialize TableRecordReader which causes NPE |  Critical | mapreduce | Jie Huang | Jie Huang |
| [HBASE-6070](https://issues.apache.org/jira/browse/HBASE-6070) | AM.nodeDeleted and SSH races creating problems for regions under SPLIT |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5986](https://issues.apache.org/jira/browse/HBASE-5986) | Clients can see holes in the META table when regions are being split |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6050](https://issues.apache.org/jira/browse/HBASE-6050) | HLogSplitter renaming recovered.edits and CJ removing the parent directory race, making the HBCK think cluster is inconsistent. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6002](https://issues.apache.org/jira/browse/HBASE-6002) | Possible chance of resource leak in HlogSplitter |  Major | wal | Chinna Rao Lalam | Chinna Rao Lalam |
| [HBASE-6065](https://issues.apache.org/jira/browse/HBASE-6065) | Log for flush would append a non-sequential edit in the hlog, leading to possible data loss |  Critical | wal | chunhui shen | chunhui shen |
| [HBASE-6047](https://issues.apache.org/jira/browse/HBASE-6047) | Put.has() can't determine result correctly |  Major | Client | Wang Qiang | Alex Newman |
| [HBASE-6088](https://issues.apache.org/jira/browse/HBASE-6088) |  Region splitting not happened for long time due to ZK exception while creating RS\_ZK\_SPLITTING node |  Major | . | Gopinathan A | rajeshbabu |
| [HBASE-6115](https://issues.apache.org/jira/browse/HBASE-6115) | NullPointerException is thrown when root and meta table regions are assigning to another RS. |  Minor | . | rajeshbabu | ramkrishna.s.vasudevan |
| [HBASE-5916](https://issues.apache.org/jira/browse/HBASE-5916) | RS restart just before master intialization we make the cluster non operative |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6095](https://issues.apache.org/jira/browse/HBASE-6095) | ActiveMasterManager NullPointerException |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6126](https://issues.apache.org/jira/browse/HBASE-6126) | Fix broke TestLocalHBaseCluster in 0.92/0.94 |  Major | . | stack | stack |
| [HBASE-6133](https://issues.apache.org/jira/browse/HBASE-6133) | TestRestartCluster failing in 0.92 |  Major | . | stack | stack |
| [HBASE-5722](https://issues.apache.org/jira/browse/HBASE-5722) | NPE in ZKUtil#getChildDataAndWatchForNewChildren when ZK not available or NW down. |  Major | Zookeeper | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HBASE-5733](https://issues.apache.org/jira/browse/HBASE-5733) | AssignmentManager#processDeadServersAndRegionsInTransition can fail with NPE. |  Major | master | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HBASE-6049](https://issues.apache.org/jira/browse/HBASE-6049) | Serializing "List" containing null elements will cause NullPointerException in HbaseObjectWritable.writeObject() |  Major | io | Maryann Xue | Maryann Xue |
| [HBASE-6068](https://issues.apache.org/jira/browse/HBASE-6068) | Secure HBase cluster : Client not able to call some admin APIs |  Major | security | Anoop Sam John | Matteo Bertozzi |
| [HBASE-6016](https://issues.apache.org/jira/browse/HBASE-6016) | ServerShutdownHandler#processDeadRegion could return false for disabling table regions |  Major | master | chunhui shen | chunhui shen |
| [HBASE-6122](https://issues.apache.org/jira/browse/HBASE-6122) | Backup master does not become Active master after ZK exception |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6089](https://issues.apache.org/jira/browse/HBASE-6089) | SSH and AM.joinCluster causes Concurrent Modification exception. |  Major | . | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-6141](https://issues.apache.org/jira/browse/HBASE-6141) | InterfaceAudience breaks 0.94 on older versions of hadoop |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-5874](https://issues.apache.org/jira/browse/HBASE-5874) | When 'fs.default.name' not configured, the hbck tool and Merge tool throw IllegalArgumentException. |  Major | hbck | fulin wang | fulin wang |
| [HBASE-6158](https://issues.apache.org/jira/browse/HBASE-6158) | Data loss if the words 'merges' or 'splits' are used as Column Family name |  Major | master, regionserver | Aditya Kishore | Aditya Kishore |
| [HBASE-6046](https://issues.apache.org/jira/browse/HBASE-6046) | Master retry on ZK session expiry causes inconsistent region assignments. |  Major | master | Gopinathan A | ramkrishna.s.vasudevan |
| [HBASE-6160](https://issues.apache.org/jira/browse/HBASE-6160) | META entries from daughters can be deleted before parent entries |  Major | Client, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-6146](https://issues.apache.org/jira/browse/HBASE-6146) | Disabling of Catalog tables should not be allowed |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-6185](https://issues.apache.org/jira/browse/HBASE-6185) | Update javadoc for ConstantSizeRegionSplitPolicy class |  Major | documentation | nneverwei |  |
| [HBASE-6237](https://issues.apache.org/jira/browse/HBASE-6237) | Fix race on ACL table creation in TestTablePermissions |  Major | security, test | Andrew Purtell | Andrew Purtell |
| [HBASE-6164](https://issues.apache.org/jira/browse/HBASE-6164) | Correct the bug in block encoding usage in bulkload |  Major | mapreduce | Anoop Sam John | Anoop Sam John |
| [HBASE-5918](https://issues.apache.org/jira/browse/HBASE-5918) | Master will block forever at startup if root server dies between assigning root and assigning meta |  Major | master | chunhui shen | chunhui shen |
| [HBASE-6248](https://issues.apache.org/jira/browse/HBASE-6248) | Jetty init may fail if directory name contains "master" |  Minor | master | Dave Revell | Dave Revell |
| [HBASE-6246](https://issues.apache.org/jira/browse/HBASE-6246) | Admin.move without specifying destination does not go through AccessController |  Major | Coprocessors, security | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-6236](https://issues.apache.org/jira/browse/HBASE-6236) | Offline meta repair fails if the HBase base mount point is on a different cluster/volume than its parent in a ViewFS or similar FS |  Major | hbck | Aditya Kishore | Aditya Kishore |
| [HBASE-5875](https://issues.apache.org/jira/browse/HBASE-5875) | Process RIT and Master restart may remove an online server considering it as a dead server |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6240](https://issues.apache.org/jira/browse/HBASE-6240) | Race in HCM.getMaster stalls clients |  Critical | . | Jean-Daniel Cryans | ramkrishna.s.vasudevan |
| [HBASE-6200](https://issues.apache.org/jira/browse/HBASE-6200) | KeyComparator.compareWithoutRow can be wrong when families have the same prefix |  Blocker | . | Jean-Daniel Cryans | Jieshan Bean |
| [HBASE-6227](https://issues.apache.org/jira/browse/HBASE-6227) | SSH and cluster startup  causes data loss |  Major | master | chunhui shen | chunhui shen |
| [HBASE-6229](https://issues.apache.org/jira/browse/HBASE-6229) | AM.assign() should not set table state to ENABLED directly. |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-6195](https://issues.apache.org/jira/browse/HBASE-6195) | Increment data will be lost when the memstore is flushed |  Major | regionserver | ShiXing | ShiXing |
| [HBASE-6265](https://issues.apache.org/jira/browse/HBASE-6265) | Calling getTimestamp() on a KV in cp.prePut() causes KV not to be flushed |  Critical | regionserver | Lars George | Lars George |
| [HBASE-6210](https://issues.apache.org/jira/browse/HBASE-6210) | Backport HBASE-6197 to 0.94 |  Blocker | . | stack | ramkrishna.s.vasudevan |
| [HBASE-5955](https://issues.apache.org/jira/browse/HBASE-5955) | Guava 11 drops MapEvictionListener and Hadoop 2.0.0-alpha requires it |  Major | . | Andrew Purtell | Lars Hofhansl |
| [HBASE-6303](https://issues.apache.org/jira/browse/HBASE-6303) | HCD.setCompressionType should use Enum support for storing compression types as strings |  Minor | io | Gopinathan A | Andrew Purtell |
| [HBASE-6269](https://issues.apache.org/jira/browse/HBASE-6269) | Lazyseek should use the maxSequenseId StoreFile's KeyValue as the latest KeyValue |  Major | regionserver | ShiXing | ShiXing |
| [HBASE-6281](https://issues.apache.org/jira/browse/HBASE-6281) | Assignment need not be called for disabling table regions during clean cluster start up. |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-5876](https://issues.apache.org/jira/browse/HBASE-5876) | TestImportExport has been failing against hadoop 0.23 profile |  Major | . | Ted Yu | Jonathan Hsieh |
| [HBASE-6326](https://issues.apache.org/jira/browse/HBASE-6326) | Avoid nested retry loops in HConnectionManager |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6293](https://issues.apache.org/jira/browse/HBASE-6293) | HMaster does not go down while splitting logs even if explicit shutdown is called. |  Major | . | rajeshbabu | Lars Hofhansl |
| [HBASE-5909](https://issues.apache.org/jira/browse/HBASE-5909) | SlabStats should be a daemon thread |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-6328](https://issues.apache.org/jira/browse/HBASE-6328) | FSHDFSUtils#recoverFileLease tries to rethrow InterruptedException but actually shallows it |  Minor | master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6311](https://issues.apache.org/jira/browse/HBASE-6311) | Data error after majorCompaction caused by keeping MVCC for opened scanners |  Blocker | regionserver | chunhui shen | chunhui shen |
| [HBASE-6313](https://issues.apache.org/jira/browse/HBASE-6313) | Client hangs because the client is not notified |  Major | . | binlijin | binlijin |
| [HBASE-6329](https://issues.apache.org/jira/browse/HBASE-6329) | Stopping META regionserver when splitting region could cause daughter region to be assigned twice |  Major | master | chunhui shen | chunhui shen |
| [HBASE-4379](https://issues.apache.org/jira/browse/HBASE-4379) | [hbck] Does not complain about tables with no end region [Z,] |  Major | hbck | Jonathan Hsieh | Anoop Sam John |
| [HBASE-6357](https://issues.apache.org/jira/browse/HBASE-6357) | Failed distributed log splitting stuck on master web UI |  Major | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6337](https://issues.apache.org/jira/browse/HBASE-6337) | [MTTR] Remove renaming tmp log file in SplitLogManager |  Major | . | chunhui shen | chunhui shen |
| [HBASE-6284](https://issues.apache.org/jira/browse/HBASE-6284) | Introduce HRegion#doMiniBatchMutation() |  Major | Performance, regionserver | Ted Yu | Anoop Sam John |
| [HBASE-6369](https://issues.apache.org/jira/browse/HBASE-6369) | HTable is not closed in AggregationClient |  Major | . | binlijin | binlijin |
| [HBASE-6375](https://issues.apache.org/jira/browse/HBASE-6375) | Master may be using a stale list of region servers for creating assignment plan during startup |  Major | master | Aditya Kishore | Aditya Kishore |
| [HBASE-6377](https://issues.apache.org/jira/browse/HBASE-6377) | HBASE-5533 metrics miss all operations submitted via MultiAction |  Major | metrics, regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-6380](https://issues.apache.org/jira/browse/HBASE-6380) | bulkload should update the store.storeSize |  Critical | regionserver | Jie Huang | Jie Huang |
| [HBASE-6394](https://issues.apache.org/jira/browse/HBASE-6394) | verifyrep MR job map tasks throws NullPointerException |  Minor | Replication | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6397](https://issues.apache.org/jira/browse/HBASE-6397) | [hbck] print out bulk load commands for sidelined regions if necessary |  Trivial | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5883](https://issues.apache.org/jira/browse/HBASE-5883) | Backup master is going down due to connection refused exception |  Major | master | Gopinathan A | Jieshan Bean |
| [HBASE-6420](https://issues.apache.org/jira/browse/HBASE-6420) | Gracefully shutdown logsyncer |  Major | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6392](https://issues.apache.org/jira/browse/HBASE-6392) | UnknownRegionException blocks hbck from sideline big overlap regions |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6426](https://issues.apache.org/jira/browse/HBASE-6426) | Add Hadoop 2.0.x profile to 0.92+ |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6325](https://issues.apache.org/jira/browse/HBASE-6325) | [replication] Race in ReplicationSourceManager.init can initiate a failover even if the node is alive |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-6319](https://issues.apache.org/jira/browse/HBASE-6319) | ReplicationSource can call terminate on itself and deadlock |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5966](https://issues.apache.org/jira/browse/HBASE-5966) | MapReduce based tests broken on Hadoop 2.0.0-alpha |  Major | mapreduce, test | Andrew Purtell | Jimmy Xiang |
| [HBASE-6406](https://issues.apache.org/jira/browse/HBASE-6406) | TestReplicationPeer.testResetZooKeeperSession and TestZooKeeper.testClientSessionExpired fail frequently |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6440](https://issues.apache.org/jira/browse/HBASE-6440) | SplitLogManager - log the exception when failed to finish split log file |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-4470](https://issues.apache.org/jira/browse/HBASE-4470) | ServerNotRunningException coming out of assignRootAndMeta kills the Master |  Critical | . | Jean-Daniel Cryans | Gregory Chanan |
| [HBASE-6445](https://issues.apache.org/jira/browse/HBASE-6445) | rat check fails if hs\_err\_pid26514.log dropped in tests |  Major | . | stack | stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5985](https://issues.apache.org/jira/browse/HBASE-5985) | TestMetaMigrationRemovingHTD failed with HADOOP 2.0.0 |  Major | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6118](https://issues.apache.org/jira/browse/HBASE-6118) | Add a testcase for HBASE-6065 |  Major | . | ramkrishna.s.vasudevan | Ashutosh Jindal |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6061](https://issues.apache.org/jira/browse/HBASE-6061) | Fix ACL "Admin" Table inconsistent permission check |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5385](https://issues.apache.org/jira/browse/HBASE-5385) | Delete table/column should delete stored permissions on -acl- table |  Major | security | Enis Soztutar | Matteo Bertozzi |
| [HBASE-5342](https://issues.apache.org/jira/browse/HBASE-5342) | Grant/Revoke global permissions |  Major | . | Enis Soztutar | Matteo Bertozzi |
| [HBASE-6062](https://issues.apache.org/jira/browse/HBASE-6062) | preCheckAndPut/Delete() checks for READ when also a WRITE is performed |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6181](https://issues.apache.org/jira/browse/HBASE-6181) | TestStoreFile fails with jdk1.7 |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5372](https://issues.apache.org/jira/browse/HBASE-5372) | Table mutation operations should check table level rights, not global rights |  Major | security | Enis Soztutar | Laxman |
| [HBASE-6157](https://issues.apache.org/jira/browse/HBASE-6157) | Revoke of Global permission is not taking effect without restart. |  Major | security | Laxman | Laxman |
| [HBASE-6092](https://issues.apache.org/jira/browse/HBASE-6092) | Authorize flush, split, compact operations in AccessController |  Major | security | Laxman | Laxman |
| [HBASE-6188](https://issues.apache.org/jira/browse/HBASE-6188) | Remove the concept of table owner |  Major | security | Andrew Purtell | Laxman |
| [HBASE-6209](https://issues.apache.org/jira/browse/HBASE-6209) | ACL Corrections for AccessControllerProtocol apis |  Major | security | Laxman | Laxman |
| [HBASE-6238](https://issues.apache.org/jira/browse/HBASE-6238) | Grant on META not taking effect |  Major | security | Laxman | Laxman |
| [HBASE-6252](https://issues.apache.org/jira/browse/HBASE-6252) | TABLE ADMIN should be allowed to relocate regions |  Major | security | Laxman | Laxman |
| [HBASE-6224](https://issues.apache.org/jira/browse/HBASE-6224) | add Pre and Post coprocessor hooks for BulkLoad |  Major | Coprocessors | Francis Liu | Francis Liu |
| [HBASE-6292](https://issues.apache.org/jira/browse/HBASE-6292) | Compact can skip the security access control |  Major | security | ShiXing | ShiXing |
| [HBASE-6253](https://issues.apache.org/jira/browse/HBASE-6253) | Do not allow user to disable or drop ACL table |  Major | security | Gopinathan A | Gopinathan A |
| [HBASE-6355](https://issues.apache.org/jira/browse/HBASE-6355) | Allow HBase to compile against JDK7 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5659](https://issues.apache.org/jira/browse/HBASE-5659) | TestAtomicOperation.testMultiRowMutationMultiThreads is still failing occasionally |  Minor | . | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6001](https://issues.apache.org/jira/browse/HBASE-6001) | Upgrade slf4j to 1.6.1 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6034](https://issues.apache.org/jira/browse/HBASE-6034) | Upgrade Hadoop dependencies |  Minor | . | Andrew Purtell | stack |
| [HBASE-6077](https://issues.apache.org/jira/browse/HBASE-6077) | Document the most common secure RPC troubleshooting resolutions |  Major | documentation, security | Andrew Purtell | Andrew Purtell |
| [HBASE-6131](https://issues.apache.org/jira/browse/HBASE-6131) | Add attribution for code added by HBASE-5533 metrics |  Blocker | . | stack | stack |
| [HBASE-6129](https://issues.apache.org/jira/browse/HBASE-6129) | Backport of Add Increment Coalescing in thrift. |  Major | . | Elliott Clark | Elliott Clark |


