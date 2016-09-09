
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

## Release 0.95.0 - 2013-04-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5190](https://issues.apache.org/jira/browse/HBASE-5190) | Limit the IPC queue size based on calls' payload size |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5688](https://issues.apache.org/jira/browse/HBASE-5688) | Convert zk root-region-server znode content to pb |  Major | . | stack | stack |
| [HBASE-5451](https://issues.apache.org/jira/browse/HBASE-5451) | Switch RPC call envelope/headers to PBs |  Major | IPC/RPC, master, migration, regionserver | Todd Lipcon | Devaraj Das |
| [HBASE-5889](https://issues.apache.org/jira/browse/HBASE-5889) | Remove HRegionInterface |  Major | Client, IPC/RPC, regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5990](https://issues.apache.org/jira/browse/HBASE-5990) | TestHCM failed with Hadoop 2.0.0 |  Major | Client, test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6170](https://issues.apache.org/jira/browse/HBASE-6170) | Timeouts for row lock and scan should be separate |  Minor | regionserver | Otis Gospodnetic | Chris Trezzo |
| [HBASE-6567](https://issues.apache.org/jira/browse/HBASE-6567) | make memory locking configuration of regioservers more flexible |  Major | scripts | Roman Shaposhnik | Matteo Bertozzi |
| [HBASE-6414](https://issues.apache.org/jira/browse/HBASE-6414) | Remove the WritableRpcEngine & associated Invocation classes |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-5449](https://issues.apache.org/jira/browse/HBASE-5449) | Support for wire-compatible security functionality |  Major | IPC/RPC, master, migration, regionserver | Todd Lipcon | Matteo Bertozzi |
| [HBASE-6477](https://issues.apache.org/jira/browse/HBASE-6477) | Use PB filter definitions in RPC |  Major | IPC/RPC, migration | Gregory Chanan | Gregory Chanan |
| [HBASE-6684](https://issues.apache.org/jira/browse/HBASE-6684) | .META. timeout value is incorrect |  Major | . | Kevin Odell | Kevin Odell |
| [HBASE-6495](https://issues.apache.org/jira/browse/HBASE-6495) | HBaseAdmin shouldn't expect HConnection to be an HConnectionImplementation |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-7024](https://issues.apache.org/jira/browse/HBASE-7024) | TableMapReduceUtil.initTableMapperJob unnecessarily limits the types of outputKeyClass and outputValueClass |  Minor | mapreduce | Dave Beech |  |
| [HBASE-6389](https://issues.apache.org/jira/browse/HBASE-6389) | Modify the conditions to ensure that Master waits for sufficient number of Region Servers before starting region assignments |  Critical | master | Aditya Kishore | Aditya Kishore |
| [HBASE-6991](https://issues.apache.org/jira/browse/HBASE-6991) | Escape "\" in Bytes.toStringBinary() and its counterpart Bytes.toBytesBinary() |  Major | util | Aditya Kishore | Aditya Kishore |
| [HBASE-7187](https://issues.apache.org/jira/browse/HBASE-7187) | Create empty hbase-client module |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-6944](https://issues.apache.org/jira/browse/HBASE-6944) | Enhance test-patch.sh to run against both jdk 1.6 and jdk 1.7 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-4072](https://issues.apache.org/jira/browse/HBASE-4072) | Deprecate/disable and remove support for reading ZooKeeper zoo.cfg files from the classpath |  Major | . | stack | Harsh J |
| [HBASE-7289](https://issues.apache.org/jira/browse/HBASE-7289) | Strip Writable from KeyValue |  Blocker | . | stack | stack |
| [HBASE-7357](https://issues.apache.org/jira/browse/HBASE-7357) | HBaseClient and HBaseServer should use hbase.security.authentication when negotiating authentication |  Major | security | Gary Helmling | Gary Helmling |
| [HBASE-6895](https://issues.apache.org/jira/browse/HBASE-6895) | Remove CoprocessorProtocol support and implementations |  Blocker | Coprocessors | Gary Helmling | stack |
| [HBASE-7479](https://issues.apache.org/jira/browse/HBASE-7479) | Remove VersionedProtocol and ProtocolSignature from RPC |  Blocker | IPC/RPC | stack | stack |
| [HBASE-7570](https://issues.apache.org/jira/browse/HBASE-7570) | rename user metadata dictionary in shell from CONFIG |  Minor | shell | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7460](https://issues.apache.org/jira/browse/HBASE-7460) | Cleanup client connection layers |  Major | Client, IPC/RPC | Gary Helmling | Gary Helmling |
| [HBASE-7315](https://issues.apache.org/jira/browse/HBASE-7315) | Remove support for client-side RowLocks |  Critical | Transactions/MVCC | Gregory Chanan | Gregory Chanan |
| [HBASE-7577](https://issues.apache.org/jira/browse/HBASE-7577) | Review names of all znodes in zk to make sure they are sensible before 0.96 |  Critical | Zookeeper | stack | Devaraj Das |
| [HBASE-7268](https://issues.apache.org/jira/browse/HBASE-7268) | correct local region location cache information can be overwritten (or deleted) w/stale information from an old server |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7712](https://issues.apache.org/jira/browse/HBASE-7712) | Pass ScanType into preCompact() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7861](https://issues.apache.org/jira/browse/HBASE-7861) | Use the ServerName in the Connection#getClient and Connection#getAdmin code |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-3171](https://issues.apache.org/jira/browse/HBASE-3171) | Drop ROOT and instead store META location(s) directly in ZooKeeper |  Major | Client, master, regionserver, Zookeeper | Jonathan Gray | Jean-Daniel Cryans |
| [HBASE-7876](https://issues.apache.org/jira/browse/HBASE-7876) | Got exception when manually triggers a split on an empty region |  Minor | regionserver | Maryann Xue | Maryann Xue |
| [HBASE-7481](https://issues.apache.org/jira/browse/HBASE-7481) | Allow IOExceptions to be thrown from Filter methods |  Major | . | Lars Hofhansl | Andrea Gazzarini |
| [HBASE-7905](https://issues.apache.org/jira/browse/HBASE-7905) | Add passing of optional cell blocks over rpc |  Major | IPC/RPC | stack | stack |
| [HBASE-8173](https://issues.apache.org/jira/browse/HBASE-8173) | HMaster#move wraps IOException in UnknownRegionException |  Minor | master | Jimmy Xiang | Jimmy Xiang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5515](https://issues.apache.org/jira/browse/HBASE-5515) | Add a processRow API that supports atomic multiple reads and writes on a row |  Major | . | Scott Chen | Scott Chen |
| [HBASE-5128](https://issues.apache.org/jira/browse/HBASE-5128) | [uber hbck] Online automated repair of table integrity and region consistency problems |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5599](https://issues.apache.org/jira/browse/HBASE-5599) | [hbck] handle NO\_VERSION\_FILE and SHOULD\_NOT\_BE\_DEPLOYED inconsistencies |  Major | hbck | fulin wang | fulin wang |
| [HBASE-5719](https://issues.apache.org/jira/browse/HBASE-5719) | Enhance hbck to sideline overlapped mega regions |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5604](https://issues.apache.org/jira/browse/HBASE-5604) | M/R tool to replay WAL files |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4393](https://issues.apache.org/jira/browse/HBASE-4393) | Implement a canary monitoring program |  Major | monitoring | Todd Lipcon | Matteo Bertozzi |
| [HBASE-5872](https://issues.apache.org/jira/browse/HBASE-5872) | Improve hadoopqa script to include checks for hadoop 0.23 build |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5886](https://issues.apache.org/jira/browse/HBASE-5886) | Add new metric for possible data loss due to puts without WAL |  Minor | metrics, regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5544](https://issues.apache.org/jira/browse/HBASE-5544) | Add metrics to HRegion.processRow() |  Major | . | Scott Chen | Scott Chen |
| [HBASE-6044](https://issues.apache.org/jira/browse/HBASE-6044) | copytable: remove rs.\* parameters |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6033](https://issues.apache.org/jira/browse/HBASE-6033) | Adding some fuction to check if a table/region is in compaction |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5539](https://issues.apache.org/jira/browse/HBASE-5539) | asynchbase PerformanceEvaluation |  Minor | Performance | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2730](https://issues.apache.org/jira/browse/HBASE-2730) | Expose RS work queue contents on web UI |  Critical | monitoring, regionserver | Todd Lipcon | Jie Huang |
| [HBASE-4956](https://issues.apache.org/jira/browse/HBASE-4956) | Control direct memory buffer consumption by HBaseClient |  Major | . | Ted Yu | Bob Copeland |
| [HBASE-6509](https://issues.apache.org/jira/browse/HBASE-6509) | Implement fast-forwarding FuzzyRowFilter to allow filtering rows e.g. by "???alex?b" |  Minor | Filters | Alex Baranau | Alex Baranau |
| [HBASE-2214](https://issues.apache.org/jira/browse/HBASE-2214) | Do HBASE-1996 -- setting size to return in scan rather than count of rows -- properly |  Major | . | stack |  |
| [HBASE-4391](https://issues.apache.org/jira/browse/HBASE-4391) | Add ability to start RS as root and call mlockall |  Major | regionserver | Todd Lipcon | Matteo Bertozzi |
| [HBASE-5335](https://issues.apache.org/jira/browse/HBASE-5335) | Dynamic Schema Configurations |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-5547](https://issues.apache.org/jira/browse/HBASE-5547) | Don't delete HFiles when in "backup mode" |  Major | . | Lars Hofhansl | Jesse Yates |
| [HBASE-6592](https://issues.apache.org/jira/browse/HBASE-6592) | [shell] Add means of custom formatting output by column |  Minor | shell | stack | Jie Huang |
| [HBASE-7162](https://issues.apache.org/jira/browse/HBASE-7162) | Prefix Compression - Trie data block encoding; hbase-common and hbase-server changes |  Major | . | stack | Matt Corgan |
| [HBASE-7253](https://issues.apache.org/jira/browse/HBASE-7253) | Compaction Tool |  Minor | Compaction | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7427](https://issues.apache.org/jira/browse/HBASE-7427) | Check line lenghts in the test-patch script |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7404](https://issues.apache.org/jira/browse/HBASE-7404) | Bucket Cache:A solution about CMS,Heap Fragment and Big Cache on HBASE |  Major | . | chunhui shen | chunhui shen |
| [HBASE-7748](https://issues.apache.org/jira/browse/HBASE-7748) | Add DelimitedKeyPrefixRegionSplitPolicy |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-4676](https://issues.apache.org/jira/browse/HBASE-4676) | Prefix Compression - Trie data block encoding |  Critical | io, Performance, regionserver | Matt Corgan | Matt Corgan |
| [HBASE-6055](https://issues.apache.org/jira/browse/HBASE-6055) | Offline Snapshots in HBase 0.96 |  Blocker | Client, master, regionserver, snapshots, Zookeeper | Jesse Yates | Jonathan Hsieh |
| [HBASE-4210](https://issues.apache.org/jira/browse/HBASE-4210) | Allow coprocessor to interact with batches per region sent from a client |  Major | . | Lars Hofhansl | Anoop Sam John |
| [HBASE-7403](https://issues.apache.org/jira/browse/HBASE-7403) | Online Merge |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-8163](https://issues.apache.org/jira/browse/HBASE-8163) | MemStoreChunkPool: An improvement for JAVA GC when using MSLAB |  Major | Performance, regionserver | chunhui shen | chunhui shen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5508](https://issues.apache.org/jira/browse/HBASE-5508) | Add an option to allow test output to show on the terminal |  Minor | test | Scott Chen | Scott Chen |
| [HBASE-5074](https://issues.apache.org/jira/browse/HBASE-5074) | support checksums in HBase block cache |  Major | regionserver | dhruba borthakur | dhruba borthakur |
| [HBASE-5555](https://issues.apache.org/jira/browse/HBASE-5555) | add a pointer to a dns verification utility in hbase book/dns |  Minor | documentation | Sujee Maniyam | Sujee Maniyam |
| [HBASE-5538](https://issues.apache.org/jira/browse/HBASE-5538) | A metric to measure the size of the response queue in the hbase rpc server |  Major | IPC/RPC | dhruba borthakur | dhruba borthakur |
| [HBASE-5314](https://issues.apache.org/jira/browse/HBASE-5314) | Gracefully rolling restart region servers in rolling-restart.sh |  Minor | scripts | Yifeng Jiang | Yifeng Jiang |
| [HBASE-5399](https://issues.apache.org/jira/browse/HBASE-5399) | Cut the link between the client and the zookeeper ensemble |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5575](https://issues.apache.org/jira/browse/HBASE-5575) | Configure Arcanist lint engine for HBase |  Major | build | Mikhail Bautin | Mikhail Bautin |
| [HBASE-5572](https://issues.apache.org/jira/browse/HBASE-5572) | KeeperException.SessionExpiredException management could be improved in Master |  Minor | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5588](https://issues.apache.org/jira/browse/HBASE-5588) | Deprecate/remove AssignmentManager#clearRegionFromTransition |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5521](https://issues.apache.org/jira/browse/HBASE-5521) | Move compression/decompression to an encoder specific encoding context |  Major | . | He Yongqiang | He Yongqiang |
| [HBASE-5520](https://issues.apache.org/jira/browse/HBASE-5520) | Support reseek() at RegionScanner |  Major | regionserver | Anoop Sam John | ramkrishna.s.vasudevan |
| [HBASE-4542](https://issues.apache.org/jira/browse/HBASE-4542) | add filter info to slow query logging |  Major | . | Kannan Muthukkaruppan | Madhuwanti Vaidya |
| [HBASE-5560](https://issues.apache.org/jira/browse/HBASE-5560) | Avoid RegionServer GC caused by timed-out calls |  Major | . | dhruba borthakur | dhruba borthakur |
| [HBASE-5589](https://issues.apache.org/jira/browse/HBASE-5589) | Add of the offline call to the Master Interface |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5433](https://issues.apache.org/jira/browse/HBASE-5433) | [REST] Add metrics to keep track of success/failure count |  Major | metrics, REST | Mubarak Seyed | Mubarak Seyed |
| [HBASE-4940](https://issues.apache.org/jira/browse/HBASE-4940) | hadoop-metrics.properties can include configuration of the "rest" context for ganglia |  Minor | metrics | Mubarak Seyed | Mubarak Seyed |
| [HBASE-5592](https://issues.apache.org/jira/browse/HBASE-5592) | Make it easier to get a table from shell |  Trivial | shell | Ben West | Ben West |
| [HBASE-5298](https://issues.apache.org/jira/browse/HBASE-5298) | Add thrift metrics to thrift2 |  Major | metrics, Thrift | Scott Chen | Scott Chen |
| [HBASE-5510](https://issues.apache.org/jira/browse/HBASE-5510) | Pass region info in LoadBalancer.randomAssignment(List\<ServerName\> servers) |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-5542](https://issues.apache.org/jira/browse/HBASE-5542) | Unify HRegion.mutateRowsWithLocks() and HRegion.processRow() |  Major | . | Scott Chen | Scott Chen |
| [HBASE-4657](https://issues.apache.org/jira/browse/HBASE-4657) | Improve the efficiency of our MR jobs with a few configurations |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-5616](https://issues.apache.org/jira/browse/HBASE-5616) | Make compaction code standalone |  Major | . | stack | stack |
| [HBASE-5434](https://issues.apache.org/jira/browse/HBASE-5434) | [REST] Include more metrics in cluster status request |  Minor | metrics, REST | Mubarak Seyed | Mubarak Seyed |
| [HBASE-4957](https://issues.apache.org/jira/browse/HBASE-4957) | Clean up some log messages, code in RecoverableZooKeeper |  Minor | Zookeeper | Todd Lipcon | Todd Lipcon |
| [HBASE-5533](https://issues.apache.org/jira/browse/HBASE-5533) | Add more metrics to HBase |  Minor | . | Shaneal Manek | Shaneal Manek |
| [HBASE-5671](https://issues.apache.org/jira/browse/HBASE-5671) | hbase.metrics.showTableName should be true by default |  Critical | metrics | Enis Soztutar | Enis Soztutar |
| [HBASE-5670](https://issues.apache.org/jira/browse/HBASE-5670) | Have Mutation implement the Row interface. |  Trivial | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5655](https://issues.apache.org/jira/browse/HBASE-5655) | Cap space usage of default log4j rolling policy |  Major | . | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-5693](https://issues.apache.org/jira/browse/HBASE-5693) | When creating a region, the master initializes it and creates a memstore within the master server |  Minor | master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5692](https://issues.apache.org/jira/browse/HBASE-5692) | Add real action time for HLogPrettyPrinter |  Minor | regionserver | ShiXing |  |
| [HBASE-5706](https://issues.apache.org/jira/browse/HBASE-5706) | "Dropping fs latency stats since buffer is full" spam |  Minor | . | Jean-Daniel Cryans | Shaneal Manek |
| [HBASE-4348](https://issues.apache.org/jira/browse/HBASE-4348) | Add metrics for regions in transition |  Minor | metrics | Todd Lipcon | Himanshu Vashishtha |
| [HBASE-5734](https://issues.apache.org/jira/browse/HBASE-5734) | Change hbck sideline root |  Trivial | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5739](https://issues.apache.org/jira/browse/HBASE-5739) | Upgrade guava to 11.0.2 |  Major | build | Todd Lipcon | Todd Lipcon |
| [HBASE-5760](https://issues.apache.org/jira/browse/HBASE-5760) | Unit tests should write only under /target |  Minor | test | Enis Soztutar | Enis Soztutar |
| [HBASE-5775](https://issues.apache.org/jira/browse/HBASE-5775) | ZKUtil doesn't handle deleteRecurisively cleanly |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-5784](https://issues.apache.org/jira/browse/HBASE-5784) | Enable mvn deploy of website |  Major | . | stack | stack |
| [HBASE-5804](https://issues.apache.org/jira/browse/HBASE-5804) | Add more to verification step in HLogPerformanceEvaluation |  Major | . | stack | stack |
| [HBASE-5788](https://issues.apache.org/jira/browse/HBASE-5788) | Move Dynamic Metrics storage off of HRegion. |  Minor | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-5814](https://issues.apache.org/jira/browse/HBASE-5814) | Make HLogPerformanceEvaluation work on top of hdfs |  Major | . | stack | stack |
| [HBASE-5818](https://issues.apache.org/jira/browse/HBASE-5818) | TestScannerSelectionUsingTTL should be in MediumTests category |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5791](https://issues.apache.org/jira/browse/HBASE-5791) | Apache project branding requirements: DOAP file [PATCH] |  Major | . | Shane Curcuru |  |
| [HBASE-5737](https://issues.apache.org/jira/browse/HBASE-5737) | Minor Improvements related to balancer. |  Minor | master | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-3614](https://issues.apache.org/jira/browse/HBASE-3614) | Expose per-region request rate metrics |  Minor | metrics, regionserver | Gary Helmling | Elliott Clark |
| [HBASE-5809](https://issues.apache.org/jira/browse/HBASE-5809) | Avoid move api to take the destination server same as the source server. |  Minor | . | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-5862](https://issues.apache.org/jira/browse/HBASE-5862) | After Region Close remove the Operation Metrics. |  Critical | . | Elliott Clark | Elliott Clark |
| [HBASE-5712](https://issues.apache.org/jira/browse/HBASE-5712) | Parallelize load of .regioninfo files in diagnostic/repair portion of hbck. |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5888](https://issues.apache.org/jira/browse/HBASE-5888) | Clover profile in build |  Major | build, test | Enis Soztutar | Enis Soztutar |
| [HBASE-5901](https://issues.apache.org/jira/browse/HBASE-5901) | Use union type protobufs instead of class/byte pairs for multi requests |  Critical | IPC/RPC, Performance | Todd Lipcon | Todd Lipcon |
| [HBASE-5879](https://issues.apache.org/jira/browse/HBASE-5879) | Enable JMX metrics collection for the Thrift proxy |  Minor | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-5625](https://issues.apache.org/jira/browse/HBASE-5625) | Avoid byte buffer allocations when reading a value from a Result object |  Major | Client | Tudor Scurtu | Tudor Scurtu |
| [HBASE-5913](https://issues.apache.org/jira/browse/HBASE-5913) | Speed up the full scan of META |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5887](https://issues.apache.org/jira/browse/HBASE-5887) | Make TestAcidGuarantees usable for system testing. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5844](https://issues.apache.org/jira/browse/HBASE-5844) | Delete the region servers znode after a regions server crash |  Major | regionserver, scripts | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5584](https://issues.apache.org/jira/browse/HBASE-5584) | Coprocessor hooks can be called in the respective handlers |  Major | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5877](https://issues.apache.org/jira/browse/HBASE-5877) | When a query fails because the region has moved, let the regionserver return the new address to the client |  Minor | Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5973](https://issues.apache.org/jira/browse/HBASE-5973) | Add ability for potentially long-running IPC calls to abort if client disconnects |  Major | IPC/RPC | Todd Lipcon | Todd Lipcon |
| [HBASE-5548](https://issues.apache.org/jira/browse/HBASE-5548) | Add ability to get a table in the shell |  Major | shell | Jesse Yates | Jesse Yates |
| [HBASE-5939](https://issues.apache.org/jira/browse/HBASE-5939) | Add an autorestart option in the start scripts |  Minor | master, regionserver, scripts | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5867](https://issues.apache.org/jira/browse/HBASE-5867) | Improve Compaction Throttle Default |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-5987](https://issues.apache.org/jira/browse/HBASE-5987) | HFileBlockIndex improvement |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-6004](https://issues.apache.org/jira/browse/HBASE-6004) | Adding more logging to help debugging MR job |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6010](https://issues.apache.org/jira/browse/HBASE-6010) | Security audit logger configuration for log4j |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-6023](https://issues.apache.org/jira/browse/HBASE-6023) | Normalize security audit logging level with Hadoop |  Minor | IPC/RPC, security | Andrew Purtell | Andrew Purtell |
| [HBASE-6013](https://issues.apache.org/jira/browse/HBASE-6013) | Polish sharp edges from CopyTable |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5926](https://issues.apache.org/jira/browse/HBASE-5926) | Delete the master znode after a master crash |  Minor | master, scripts | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5998](https://issues.apache.org/jira/browse/HBASE-5998) | Bulk assignment: regionserver optimization by using a temporary cache for table descriptors when receveing an open regions request |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5882](https://issues.apache.org/jira/browse/HBASE-5882) | Prcoess RIT on master restart can try assigning the region if the region is found on a dead server instead of waiting for Timeout Monitor |  Major | . | ramkrishna.s.vasudevan | Ashutosh Jindal |
| [HBASE-6057](https://issues.apache.org/jira/browse/HBASE-6057) | Change some tests categories to optimize build time |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5573](https://issues.apache.org/jira/browse/HBASE-5573) | Replace client ZooKeeper watchers by simple ZooKeeper reads |  Minor | Client, Zookeeper | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5903](https://issues.apache.org/jira/browse/HBASE-5903) | Detect the test classes without categories |  Minor | build, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6094](https://issues.apache.org/jira/browse/HBASE-6094) | [refGuide] Improvements to new contributor docs |  Minor | . | Ian Varley | Ian Varley |
| [HBASE-6043](https://issues.apache.org/jira/browse/HBASE-6043) | Add Increment Coalescing in thrift. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6114](https://issues.apache.org/jira/browse/HBASE-6114) | CacheControl flags should be tunable per table schema per CF |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-6083](https://issues.apache.org/jira/browse/HBASE-6083) | Modify old filter tests to use Junit4/no longer use HBaseTestCase |  Minor | . | Juhani Connolly | Juhani Connolly |
| [HBASE-4720](https://issues.apache.org/jira/browse/HBASE-4720) | Implement atomic update operations (checkAndPut, checkAndDelete) for REST client/server |  Major | . | Daniel Lord | Mubarak Seyed |
| [HBASE-6120](https://issues.apache.org/jira/browse/HBASE-6120) | Few logging improvements around enabling tables |  Trivial | master | Harsh J | Harsh J |
| [HBASE-5970](https://issues.apache.org/jira/browse/HBASE-5970) | Improve the AssignmentManager#updateTimer and speed up handling opened event |  Critical | master | chunhui shen | chunhui shen |
| [HBASE-6067](https://issues.apache.org/jira/browse/HBASE-6067) | HBase won't start when hbase.rootdir uses ViewFileSystem |  Major | regionserver | Eli Collins | Ted Yu |
| [HBASE-3537](https://issues.apache.org/jira/browse/HBASE-3537) | [site] Make it so each page of manual allows users comment like mysql's manual does |  Major | . | stack | stack |
| [HBASE-6177](https://issues.apache.org/jira/browse/HBASE-6177) | Add .idea to RAT excludes |  Trivial | . | Elliott Clark | Elliott Clark |
| [HBASE-6168](https://issues.apache.org/jira/browse/HBASE-6168) | [replication] Add replication zookeeper state documentation to replication.html |  Minor | documentation, Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-6173](https://issues.apache.org/jira/browse/HBASE-6173) | hbck check specified tables only |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5914](https://issues.apache.org/jira/browse/HBASE-5914) | Bulk assign regions in the process of ServerShutdownHandler |  Major | . | chunhui shen | chunhui shen |
| [HBASE-6134](https://issues.apache.org/jira/browse/HBASE-6134) | Improvement for split-worker to speed up distributed log splitting |  Critical | wal | chunhui shen | chunhui shen |
| [HBASE-6162](https://issues.apache.org/jira/browse/HBASE-6162) | Move KeyValue to hbase-common module |  Major | . | Matt Corgan | Matt Corgan |
| [HBASE-6135](https://issues.apache.org/jira/browse/HBASE-6135) | Style the Web UI to use Twitter's Bootstrap. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-5838](https://issues.apache.org/jira/browse/HBASE-5838) | Add an LZ4 compression option to HFile |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5360](https://issues.apache.org/jira/browse/HBASE-5360) | [uberhbck] Add options for how to handle offline split parents. |  Major | hbck | Jonathan Hsieh | Jimmy Xiang |
| [HBASE-6109](https://issues.apache.org/jira/browse/HBASE-6109) | Improve RIT performances during assignment on large clusters |  Minor | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5924](https://issues.apache.org/jira/browse/HBASE-5924) | In the client code, don't wait for all the requests to be executed before resubmitting a request in error. |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6244](https://issues.apache.org/jira/browse/HBASE-6244) | [REST] Result generators do not need to query table schema |  Minor | REST | ShiXing | Andrew Purtell |
| [HBASE-6247](https://issues.apache.org/jira/browse/HBASE-6247) | [REST] HTablePool.putTable is deprecated |  Minor | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-6242](https://issues.apache.org/jira/browse/HBASE-6242) | New UI should color task list entries |  Minor | master, regionserver | Andrew Purtell | Elliott Clark |
| [HBASE-6243](https://issues.apache.org/jira/browse/HBASE-6243) | New UI should space detailed latency columns equally |  Minor | master, regionserver | Andrew Purtell | Elliott Clark |
| [HBASE-6207](https://issues.apache.org/jira/browse/HBASE-6207) | Add jitter to client retry timer |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6255](https://issues.apache.org/jira/browse/HBASE-6255) | Right align hbase logo in web ui |  Trivial | master, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-6256](https://issues.apache.org/jira/browse/HBASE-6256) | Zk Dump was missed in the move to new UI |  Minor | master, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-5953](https://issues.apache.org/jira/browse/HBASE-5953) | Expose the current state of the balancerSwitch |  Minor | master | David S. Wang | Gregory Chanan |
| [HBASE-5527](https://issues.apache.org/jira/browse/HBASE-5527) | PerformanceEvaluation: Report aggregate timings on a single line |  Minor | Performance | Benoit Sigoure | Benoit Sigoure |
| [HBASE-5630](https://issues.apache.org/jira/browse/HBASE-5630) | hbck should disable the balancer using synchronousBalanceSwitch. |  Minor | hbck | Jonathan Hsieh | Gregory Chanan |
| [HBASE-6267](https://issues.apache.org/jira/browse/HBASE-6267) | hbase.store.delete.expired.storefile should be true by default |  Major | regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-6274](https://issues.apache.org/jira/browse/HBASE-6274) | Proto files should be in the same palce |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6226](https://issues.apache.org/jira/browse/HBASE-6226) | move DataBlockEncoding and related classes to hbase-common module |  Major | io, regionserver | Matt Corgan | Matt Corgan |
| [HBASE-6296](https://issues.apache.org/jira/browse/HBASE-6296) | Refactor EventType to track its own ExecutorService type |  Minor | master | Jesse Yates | Jesse Yates |
| [HBASE-6314](https://issues.apache.org/jira/browse/HBASE-6314) | Fast fail behavior for unauthenticated user |  Minor | IPC/RPC, security | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-6332](https://issues.apache.org/jira/browse/HBASE-6332) | Improve POM for better integration with downstream ivy projects |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-6283](https://issues.apache.org/jira/browse/HBASE-6283) | [region\_mover.rb] Add option to exclude list of hosts on unload instead of just assuming the source node. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6333](https://issues.apache.org/jira/browse/HBASE-6333) | MemStoreScanner {kvsetAtCreation,snapshotAtCreation} should be private and not volatile |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6350](https://issues.apache.org/jira/browse/HBASE-6350) | Some logging improvements for RegionServer bulk loading |  Minor | regionserver | Harsh J | Harsh J |
| [HBASE-6334](https://issues.apache.org/jira/browse/HBASE-6334) | TestImprovement for TestHRegion.testWritesWhileGetting |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6384](https://issues.apache.org/jira/browse/HBASE-6384) | hbck should group together those sidelined regions need to be bulk loaded later |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6370](https://issues.apache.org/jira/browse/HBASE-6370) | Add compression codec test at HMaster when createTable/modifyColumn/modifyTable |  Minor | . | ShiXing | ShiXing |
| [HBASE-6382](https://issues.apache.org/jira/browse/HBASE-6382) | Upgrade Jersey to 1.8 to match Hadoop 1 and 2 |  Major | REST | David S. Wang | David S. Wang |
| [HBASE-6312](https://issues.apache.org/jira/browse/HBASE-6312) | Make BlockCache eviction thresholds configurable |  Minor | io | Jie Huang | Jie Huang |
| [HBASE-4255](https://issues.apache.org/jira/browse/HBASE-4255) | Expose CatalogJanitor controls |  Major | . | Jean-Daniel Cryans | Devaraj Das |
| [HBASE-6363](https://issues.apache.org/jira/browse/HBASE-6363) | HBaseConfiguration can carry a main method that dumps XML output for debug purposes |  Trivial | util | Harsh J | Shane Huang |
| [HBASE-6433](https://issues.apache.org/jira/browse/HBASE-6433) | Improve HBaseServer#getRemoteAddress by utilizing HBaseServer.Connection.hostAddress |  Minor | . | binlijin | binlijin |
| [HBASE-6400](https://issues.apache.org/jira/browse/HBASE-6400) | Add getMasterAdmin() and getMasterMonitor() to HConnection |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-5189](https://issues.apache.org/jira/browse/HBASE-5189) | Add metrics to keep track of region-splits in RS |  Minor | metrics, regionserver | Mubarak Seyed | Matteo Bertozzi |
| [HBASE-6594](https://issues.apache.org/jira/browse/HBASE-6594) | Move tasks section above regions section in RegionServer UI |  Minor | regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-6245](https://issues.apache.org/jira/browse/HBASE-6245) | Upon page refresh new UI should return to the previously selected tab |  Minor | master, regionserver | Andrew Purtell | Jie Huang |
| [HBASE-5934](https://issues.apache.org/jira/browse/HBASE-5934) | Add the ability for Performance Evaluation to set the table compression |  Minor | . | Elliott Clark | Matteo Bertozzi |
| [HBASE-6435](https://issues.apache.org/jira/browse/HBASE-6435) | Reading WAL files after a recovery leads to time lost in HDFS timeouts when using dead datanodes |  Major | master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6502](https://issues.apache.org/jira/browse/HBASE-6502) | Typo in loaded coprocessors on master status page |  Minor | master | Konstantin Shvachko | Konstantin Shvachko |
| [HBASE-6633](https://issues.apache.org/jira/browse/HBASE-6633) | Adding new hooks to the split flow - For roll backs and one final hook after split is completed either successfully or failed |  Major | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6372](https://issues.apache.org/jira/browse/HBASE-6372) | Add scanner batching to Export job |  Minor | mapreduce | Lars George | Shane Huang |
| [HBASE-6654](https://issues.apache.org/jira/browse/HBASE-6654) | io.encoding.TestChangingEncoding could be faster |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6080](https://issues.apache.org/jira/browse/HBASE-6080) | site.xml - adding ReviewBoard to main page left-hand nav |  Trivial | . | Doug Meil | Doug Meil |
| [HBASE-2155](https://issues.apache.org/jira/browse/HBASE-2155) | Add the option to bind to a specific IP address to the Nonblocking Thrift servers |  Minor | Thrift | Lars Francke | Liang Xie |
| [HBASE-6689](https://issues.apache.org/jira/browse/HBASE-6689) | HRegion.increment comment nits |  Trivial | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6264](https://issues.apache.org/jira/browse/HBASE-6264) | Typos in the book documentation |  Minor | documentation | Jean-Marc Spaggiari |  |
| [HBASE-6231](https://issues.apache.org/jira/browse/HBASE-6231) | Minor Typos in HBase Book |  Trivial | documentation | Chad Gorshing |  |
| [HBASE-6234](https://issues.apache.org/jira/browse/HBASE-6234) | Move simple KeyValue tests to hbase-common module |  Major | . | Matt Corgan | Matt Corgan |
| [HBASE-6352](https://issues.apache.org/jira/browse/HBASE-6352) | Add copy method in Bytes |  Minor | util | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-6706](https://issues.apache.org/jira/browse/HBASE-6706) | Remove TotalOrderPartitioner |  Critical | mapreduce | Enis Soztutar | Enis Soztutar |
| [HBASE-6399](https://issues.apache.org/jira/browse/HBASE-6399) | MetricsContext should be different between RegionServerMetrics and RegionServerDynamicMetrics |  Critical | metrics | chunhui shen | chunhui shen |
| [HBASE-6742](https://issues.apache.org/jira/browse/HBASE-6742) | Change default test parallelisation level to 5 |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6419](https://issues.apache.org/jira/browse/HBASE-6419) | PersistentMetricsTimeVaryingRate gets used for non-time-based metrics (part2 of HBASE-6220) |  Major | . | stack | Paul Cavallaro |
| [HBASE-6766](https://issues.apache.org/jira/browse/HBASE-6766) | Remove the Thread Dump link on Info pages |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6730](https://issues.apache.org/jira/browse/HBASE-6730) | Enable rolling averages in  StochasticLoadBalancer |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6698](https://issues.apache.org/jira/browse/HBASE-6698) | Refactor checkAndPut and checkAndDelete to use doMiniBatchMutation |  Major | . | ramkrishna.s.vasudevan | Priyadarshini |
| [HBASE-6848](https://issues.apache.org/jira/browse/HBASE-6848) | Make hbase-hadoop-compat findbugs clean |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-6849](https://issues.apache.org/jira/browse/HBASE-6849) | Make StochasticLoadBalancer the default |  Major | master | Elliott Clark | Elliott Clark |
| [HBASE-6783](https://issues.apache.org/jira/browse/HBASE-6783) | Make read short circuit the default |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6856](https://issues.apache.org/jira/browse/HBASE-6856) | Document the LeaseException thrown in scanner next |  Major | documentation | Daniel Iancu | Daniel Iancu |
| [HBASE-5961](https://issues.apache.org/jira/browse/HBASE-5961) | New standard HBase code formatter |  Minor | build | Jesse Yates | Jesse Yates |
| [HBASE-6025](https://issues.apache.org/jira/browse/HBASE-6025) | Expose Hadoop Dynamic Metrics through JSON Rest interface |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6884](https://issues.apache.org/jira/browse/HBASE-6884) | Update documentation on unit tests |  Minor | documentation | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6702](https://issues.apache.org/jira/browse/HBASE-6702) | ResourceChecker refinement |  Critical | test | Jesse Yates | Nicolas Liochon |
| [HBASE-6885](https://issues.apache.org/jira/browse/HBASE-6885) | Typo in the Javadoc for close method of HTableInterface class |  Minor | documentation | Jingguo Yao |  |
| [HBASE-6876](https://issues.apache.org/jira/browse/HBASE-6876) | Clean up WARNs and log messages around startup |  Major | . | stack | stack |
| [HBASE-6875](https://issues.apache.org/jira/browse/HBASE-6875) | Remove commons-httpclient, -component, and up versions on other jars (remove unused repository) |  Major | build | stack | stack |
| [HBASE-5667](https://issues.apache.org/jira/browse/HBASE-5667) | RegexStringComparator supports java.util.regex.Pattern flags |  Minor | Filters | David Arthur | David Arthur |
| [HBASE-5419](https://issues.apache.org/jira/browse/HBASE-5419) | FileAlreadyExistsException has moved from mapred to fs package |  Minor | . | dhruba borthakur | dhruba borthakur |
| [HBASE-6743](https://issues.apache.org/jira/browse/HBASE-6743) | Move EnvironmentEdge classes to hbase-common |  Minor | . | Chris Trezzo | Chris Trezzo |
| [HBASE-6890](https://issues.apache.org/jira/browse/HBASE-6890) | Colorize test-patch results that goes to JIRA as a comment |  Trivial | build | Harsh J | Harsh J |
| [HBASE-5591](https://issues.apache.org/jira/browse/HBASE-5591) | ThiftServerRunner.HBaseHandler.toBytes() is identical to Bytes.getBytes() |  Trivial | . | Scott Chen | Scott Chen |
| [HBASE-6939](https://issues.apache.org/jira/browse/HBASE-6939) | Add the possibility to set the ZK port in HBaseTestingUtility |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-3661](https://issues.apache.org/jira/browse/HBASE-3661) | Handle empty qualifier better in shell for increments |  Minor | shell | Lars George | Michael Drzal |
| [HBASE-6979](https://issues.apache.org/jira/browse/HBASE-6979) | recovered.edits file should not break distributed log splitting |  Major | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6459](https://issues.apache.org/jira/browse/HBASE-6459) | improve speed of table creation |  Major | . | zhou wenjian | Zhou wenjian |
| [HBASE-6951](https://issues.apache.org/jira/browse/HBASE-6951) | Allow the master info server to be started in a read only mode. |  Critical | UI | Elliott Clark | Elliott Clark |
| [HBASE-7027](https://issues.apache.org/jira/browse/HBASE-7027) | Use the correct port of info server of region servers |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-6942](https://issues.apache.org/jira/browse/HBASE-6942) | Endpoint implementation for bulk deletion of data |  Major | Coprocessors, Performance | Anoop Sam John | Anoop Sam John |
| [HBASE-6977](https://issues.apache.org/jira/browse/HBASE-6977) | Multithread processing ZK assignment events |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5257](https://issues.apache.org/jira/browse/HBASE-5257) | Allow INCLUDE\_AND\_NEXT\_COL in filters and use it in ColumnPaginationFilter |  Major | Filters, Performance | Lars Hofhansl | Varun Sharma |
| [HBASE-7033](https://issues.apache.org/jira/browse/HBASE-7033) | Add hbase.lru.blockcache.acceptable.factor to configuration, akin to the min.factor added by HBASE-6312 |  Minor | io | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-3925](https://issues.apache.org/jira/browse/HBASE-3925) | Make Shell's -d and debug cmd behave the same |  Trivial | shell | Lars George | Liang Xie |
| [HBASE-7063](https://issues.apache.org/jira/browse/HBASE-7063) | Package name for compression should not contain hfile |  Major | HFile, io | Enis Soztutar | Enis Soztutar |
| [HBASE-7089](https://issues.apache.org/jira/browse/HBASE-7089) | Allow filter to be specified for Get from HBase shell |  Minor | shell | Aditya Kishore | Aditya Kishore |
| [HBASE-6793](https://issues.apache.org/jira/browse/HBASE-6793) | Make hbase-examples module |  Major | . | Enis Soztutar | Sergey Shelukhin |
| [HBASE-7151](https://issues.apache.org/jira/browse/HBASE-7151) | Better log message for Per-CF compactions |  Trivial | Compaction | Gregory Chanan | Gregory Chanan |
| [HBASE-5898](https://issues.apache.org/jira/browse/HBASE-5898) | Consider double-checked locking for block cache lock |  Critical | Performance | Todd Lipcon | Todd Lipcon |
| [HBASE-7156](https://issues.apache.org/jira/browse/HBASE-7156) | Add Data Block Encoding and -D opts to Performance Evaluation |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7133](https://issues.apache.org/jira/browse/HBASE-7133) | svn:ignore on module directories |  Trivial | build | Enis Soztutar | Enis Soztutar |
| [HBASE-6470](https://issues.apache.org/jira/browse/HBASE-6470) | SingleColumnValueFilter with private fields and methods |  Major | Filters | Benjamin Kim | Benjamin Kim |
| [HBASE-7128](https://issues.apache.org/jira/browse/HBASE-7128) | Reduce annoying catch clauses of UnsupportedEncodingException that is never thrown because of UTF-8 |  Trivial | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-7178](https://issues.apache.org/jira/browse/HBASE-7178) | Compression tests |  Minor | io | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7217](https://issues.apache.org/jira/browse/HBASE-7217) | Documentation: Update section 11.5.1 to recommend that hbase.regionserver.checksum.verify is set |  Minor | documentation | Neil Ferguson |  |
| [HBASE-7190](https://issues.apache.org/jira/browse/HBASE-7190) | Add an option to hbck to check only meta and assignment |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7110](https://issues.apache.org/jira/browse/HBASE-7110) | refactor the compaction selection and config code similarly to 0.89-fb changes |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-5069](https://issues.apache.org/jira/browse/HBASE-5069) | [book] Document how to count rows |  Minor | . | Jean-Daniel Cryans | Daisuke Kobayashi |
| [HBASE-7204](https://issues.apache.org/jira/browse/HBASE-7204) | Make hbck ErrorReporter pluggable |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7137](https://issues.apache.org/jira/browse/HBASE-7137) | Improve Bytes to accept byte buffers which don't allow us to directly access their backing arrays |  Minor | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-6804](https://issues.apache.org/jira/browse/HBASE-6804) | [replication] lower the amount of logging to a more human-readable level |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7249](https://issues.apache.org/jira/browse/HBASE-7249) | add test name filter to IntegrationTestsDriver |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7274](https://issues.apache.org/jira/browse/HBASE-7274) | Enable JMX metrics collection for REST Server |  Major | REST | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7284](https://issues.apache.org/jira/browse/HBASE-7284) | Rename rest server from Main to RESTServer |  Trivial | REST | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6367](https://issues.apache.org/jira/browse/HBASE-6367) | List backup masters in ui. |  Minor | . | Elliott Clark | Jeffrey Zhong |
| [HBASE-7250](https://issues.apache.org/jira/browse/HBASE-7250) | create integration test for balancing regions and killing region servers - 2 |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7328](https://issues.apache.org/jira/browse/HBASE-7328) | IntegrationTestRebalanceAndKillServersTargeted supercedes IntegrationTestRebalanceAndKillServers, remove |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7340](https://issues.apache.org/jira/browse/HBASE-7340) | Master coprocessor notification for assignmentManager.balance() is inconsistent |  Trivial | . | Ted Yu | Ted Yu |
| [HBASE-7197](https://issues.apache.org/jira/browse/HBASE-7197) | Add multi get to RemoteHTable |  Minor | Client, REST | Elliott Clark | Elliott Clark |
| [HBASE-7359](https://issues.apache.org/jira/browse/HBASE-7359) | [REST] 'accessToken' in RemoteHTable is vestigial |  Trivial | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-4791](https://issues.apache.org/jira/browse/HBASE-4791) | Allow Secure Zookeeper JAAS configuration to be programmatically set (rather than only by reading JAAS configuration file) |  Major | security, Zookeeper | Eugene Koontz | Matteo Bertozzi |
| [HBASE-7361](https://issues.apache.org/jira/browse/HBASE-7361) | Fix all javadoc warnings in hbase-server/{,mapreduce} |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7377](https://issues.apache.org/jira/browse/HBASE-7377) | Clean up TestHBase7051 |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6585](https://issues.apache.org/jira/browse/HBASE-6585) | Audit log messages should contain info about the higher level operation being executed |  Minor | security | Marcelo Vanzin | Matteo Bertozzi |
| [HBASE-7199](https://issues.apache.org/jira/browse/HBASE-7199) | hbck should check lingering reference hfile and have option to sideline them automatically |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7374](https://issues.apache.org/jira/browse/HBASE-7374) | Expose master table operations for coprocessors by way of MasterServices |  Minor | Coprocessors, master | Andrew Purtell | Andrew Purtell |
| [HBASE-5778](https://issues.apache.org/jira/browse/HBASE-5778) | Fix HLog compression's incompatibilities |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7425](https://issues.apache.org/jira/browse/HBASE-7425) | Move to the newest BootStrap css and js for the webui. |  Minor | UI | Elliott Clark | Elliott Clark |
| [HBASE-7426](https://issues.apache.org/jira/browse/HBASE-7426) | Fix PreCheckin script to error out when there are Javadoc errors. |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-6155](https://issues.apache.org/jira/browse/HBASE-6155) | [copytable] Unexpected behavior if --starttime is not specifed but --endtime is. |  Major | . | Jonathan Hsieh | Prasanna |
| [HBASE-5776](https://issues.apache.org/jira/browse/HBASE-5776) | HTableMultiplexer |  Major | . | Liyin Tang | binlijin |
| [HBASE-7428](https://issues.apache.org/jira/browse/HBASE-7428) | There are multiple HConstants for configuring Zookeeper timeout |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7469](https://issues.apache.org/jira/browse/HBASE-7469) | [REST] Share a HBaseAdmin instance |  Minor | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-7472](https://issues.apache.org/jira/browse/HBASE-7472) | [REST] Support MIME type application/protobuf |  Trivial | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-7351](https://issues.apache.org/jira/browse/HBASE-7351) | Periodic health check chore |  Minor | regionserver | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-7369](https://issues.apache.org/jira/browse/HBASE-7369) | HConnectionManager should remove aborted connections |  Minor | Client | Bryan Baugher | Bryan Baugher |
| [HBASE-6386](https://issues.apache.org/jira/browse/HBASE-6386) | Audit log messages do not include column family / qualifier information consistently |  Major | security | Marcelo Vanzin | Matteo Bertozzi |
| [HBASE-7007](https://issues.apache.org/jira/browse/HBASE-7007) | [MTTR] Study assigns to see if we can make them faster still |  Critical | . | stack |  |
| [HBASE-7526](https://issues.apache.org/jira/browse/HBASE-7526) | create table does not log the table name in audit log |  Trivial | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7318](https://issues.apache.org/jira/browse/HBASE-7318) | Add verbose logging option to HConnectionManager |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7512](https://issues.apache.org/jira/browse/HBASE-7512) | Document the findbugs library annotation |  Minor | documentation | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7441](https://issues.apache.org/jira/browse/HBASE-7441) | Make ClusterManager in IntegrationTestingUtility pluggable |  Minor | test | Liu Shaohui | Liu Shaohui |
| [HBASE-5305](https://issues.apache.org/jira/browse/HBASE-5305) | Improve cross-version compatibility & upgradeability |  Major | IPC/RPC, master, migration, regionserver | Devaraj Das |  |
| [HBASE-7540](https://issues.apache.org/jira/browse/HBASE-7540) | Make znode dump to print a dump of replication znodes |  Major | Replication, UI | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-5416](https://issues.apache.org/jira/browse/HBASE-5416) | Filter on one CF and if a match, then load and return full row (WAS: Improve performance of scans with some kind of filters) |  Major | Filters, Performance, regionserver | Max Lapan | Sergey Shelukhin |
| [HBASE-7566](https://issues.apache.org/jira/browse/HBASE-7566) | remove useless ctor from HRegion and move sporadic null checks earlier |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7569](https://issues.apache.org/jira/browse/HBASE-7569) | change HTD/HCD to use standard byte-byte pair for metadata |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-5498](https://issues.apache.org/jira/browse/HBASE-5498) | Secure Bulk Load |  Major | security | Francis Liu | Francis Liu |
| [HBASE-4451](https://issues.apache.org/jira/browse/HBASE-4451) | Improve zk node naming (/hbase/shutdown) |  Critical | master | Harsh J | Devaraj Das |
| [HBASE-7213](https://issues.apache.org/jira/browse/HBASE-7213) | Have HLog files for .META. and -ROOT- edits only |  Critical | master, regionserver | Devaraj Das | Devaraj Das |
| [HBASE-7585](https://issues.apache.org/jira/browse/HBASE-7585) | TestAccessController tests should close HTables |  Trivial | test | Andrew Purtell | Andrew Purtell |
| [HBASE-7576](https://issues.apache.org/jira/browse/HBASE-7576) | Update formatter so that all lines are wrapped when over 100 characters |  Minor | . | Chris Trezzo | Chris Trezzo |
| [HBASE-7329](https://issues.apache.org/jira/browse/HBASE-7329) | remove flush-related records from WAL and make locking more granular |  Major | wal | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7691](https://issues.apache.org/jira/browse/HBASE-7691) | A couple docbook updates |  Trivial | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7699](https://issues.apache.org/jira/browse/HBASE-7699) | Replace LOG.info() with LOG.debug() in FSUtils.listStatus() |  Trivial | util | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7695](https://issues.apache.org/jira/browse/HBASE-7695) | Remove unused member and local variables from HRegionServer |  Trivial | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7281](https://issues.apache.org/jira/browse/HBASE-7281) | Add svn and git ignore for IntelliJ Idea files |  Minor | Admin | Henry Saputra |  |
| [HBASE-7503](https://issues.apache.org/jira/browse/HBASE-7503) | Add exists(List) in HTableInterface to allow multiple parallel exists at one time |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-5664](https://issues.apache.org/jira/browse/HBASE-5664) | CP hooks in Scan flow for fast forward when filter filters out a row |  Major | Coprocessors, Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-3996](https://issues.apache.org/jira/browse/HBASE-3996) |  Support multiple tables and scanners as input to the mapper in map/reduce jobs |  Critical | mapreduce | Eran Kutner | Bryan Baugher |
| [HBASE-7758](https://issues.apache.org/jira/browse/HBASE-7758) | Update book to include documentation of CellCounter utility |  Minor | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7757](https://issues.apache.org/jira/browse/HBASE-7757) | Add web UI to REST server and Thrift server |  Minor | REST, Thrift, UI | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7773](https://issues.apache.org/jira/browse/HBASE-7773) | rename StoreConfiguration, remove unnecessary method |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7741](https://issues.apache.org/jira/browse/HBASE-7741) | Don't use bulk assigner if assigning just several regions |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7561](https://issues.apache.org/jira/browse/HBASE-7561) | Display the total number of regions for a given table on the master webUI |  Minor | UI | Ming Ma | Michael Weng |
| [HBASE-6466](https://issues.apache.org/jira/browse/HBASE-6466) | Enable multi-thread for memstore flush |  Critical | regionserver | chunhui shen | chunhui shen |
| [HBASE-7802](https://issues.apache.org/jira/browse/HBASE-7802) | Use the Store interface instead of HStore (coprocessor, compaction, ...) |  Trivial | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7822](https://issues.apache.org/jira/browse/HBASE-7822) | clean up compactionrequest and compactselection - part 1 |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7856](https://issues.apache.org/jira/browse/HBASE-7856) | HTU#waitTableAvailable should have a default value of 30s |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7495](https://issues.apache.org/jira/browse/HBASE-7495) | parallel seek in StoreScanner |  Major | Performance, Scanners | Liang Xie | Liang Xie |
| [HBASE-7660](https://issues.apache.org/jira/browse/HBASE-7660) | Remove HFileV1 code |  Major | hbck, HFile, migration | Matt Corgan | Ted Yu |
| [HBASE-7790](https://issues.apache.org/jira/browse/HBASE-7790) | Refactor OpenRegionHandler so that the cleanup happens in one place - the finally block |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-7917](https://issues.apache.org/jira/browse/HBASE-7917) | Documentation for secure bulk load |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7843](https://issues.apache.org/jira/browse/HBASE-7843) | enable encapsulating compaction policy/compactor/store file manager interaction shennanigans |  Critical | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-4284](https://issues.apache.org/jira/browse/HBASE-4284) | document permissions that need to be set on importtsv output before completebulkload |  Major | documentation, mapreduce | Wing Yew Poon | Nick Dimiduk |
| [HBASE-7721](https://issues.apache.org/jira/browse/HBASE-7721) | Atomic multi-row mutations in META |  Major | Coprocessors, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-7979](https://issues.apache.org/jira/browse/HBASE-7979) | Adding some utility methods in org.apache.hadoop.hbase.util.Bytes |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-7827](https://issues.apache.org/jira/browse/HBASE-7827) | Improve the speed of Hbase Thirft Batch mutation for deletes |  Minor | Thrift | Shivendra Pratap Singh | Shivendra Pratap Singh |
| [HBASE-7952](https://issues.apache.org/jira/browse/HBASE-7952) | Remove update() and Improve ExplicitColumnTracker performance. |  Major | regionserver | Raymond Liu | Raymond Liu |
| [HBASE-8066](https://issues.apache.org/jira/browse/HBASE-8066) | Provide Admin.isTableAvailable() for a given table along with splitkeys |  Minor | Client | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8031](https://issues.apache.org/jira/browse/HBASE-8031) | Adopt goraci as an Integration test |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-8117](https://issues.apache.org/jira/browse/HBASE-8117) | Remove redundant byte conversion methods from HConstants |  Trivial | util | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8077](https://issues.apache.org/jira/browse/HBASE-8077) | Configure the job name in ImportTsv |  Minor | mapreduce | udy brill |  |
| [HBASE-8080](https://issues.apache.org/jira/browse/HBASE-8080) | refactor default compactor to make its parts easier to reuse |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7803](https://issues.apache.org/jira/browse/HBASE-7803) | [REST] Support caching on scan |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8137](https://issues.apache.org/jira/browse/HBASE-8137) | Add failed to open/close region state |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8148](https://issues.apache.org/jira/browse/HBASE-8148) | Allow IPC to bind on a specific address |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7848](https://issues.apache.org/jira/browse/HBASE-7848) | Use ZK-based read/write lock to make flush-type snapshot robust against table enable/disable/alter |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-7845](https://issues.apache.org/jira/browse/HBASE-7845) | optimize hfile index key |  Major | HFile | Liang Xie | Liang Xie |
| [HBASE-7908](https://issues.apache.org/jira/browse/HBASE-7908) | Add jstack logs in hbase-common.sh when killing the server. |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8199](https://issues.apache.org/jira/browse/HBASE-8199) | Eliminate exception for ExportSnapshot against the null table snapshot (with no data in) |  Minor | snapshots | Julian Zhou | Julian Zhou |
| [HBASE-7977](https://issues.apache.org/jira/browse/HBASE-7977) | Online merge should acquire table lock |  Major | master, Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8209](https://issues.apache.org/jira/browse/HBASE-8209) | Improve LoadTest extensibility |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-8152](https://issues.apache.org/jira/browse/HBASE-8152) | Avoid creating empty reference file when splitkey is outside the key range of a store file |  Minor | Filesystem Integration, HFile | Sean Zhong | Sean Zhong |
| [HBASE-7930](https://issues.apache.org/jira/browse/HBASE-7930) | hbck should provide an option to fix .META. rows with empty REGIONINFO\_QUALIFIER |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8685](https://issues.apache.org/jira/browse/HBASE-8685) | [REST] Minor fix to XMLSchema.xsd and ScannerModel |  Minor | REST | Julian Zhou | Julian Zhou |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5441](https://issues.apache.org/jira/browse/HBASE-5441) | HRegionThriftServer may not start because of a race-condition |  Minor | Thrift | Scott Chen | Scott Chen |
| [HBASE-5486](https://issues.apache.org/jira/browse/HBASE-5486) | Warn message in HTable: Stringify the byte[] |  Trivial | Client | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-5531](https://issues.apache.org/jira/browse/HBASE-5531) | Maven hadoop profile (version 23) needs to be updated with latest 23 snapshot |  Major | build | Laxman | Laxman |
| [HBASE-5529](https://issues.apache.org/jira/browse/HBASE-5529) | MR test failures becuase MALLOC\_ARENA\_MAX is not set |  Minor | mapreduce, test | Gregory Chanan | Gregory Chanan |
| [HBASE-5562](https://issues.apache.org/jira/browse/HBASE-5562) | test-patch.sh reports a javadoc warning when there are no new javadoc warnings |  Trivial | scripts | David S. Wang | David S. Wang |
| [HBASE-5480](https://issues.apache.org/jira/browse/HBASE-5480) | Fixups to MultithreadedTableMapper for Hadoop 0.23.2+ |  Critical | mapreduce | Andrew Purtell | Andrew Purtell |
| [HBASE-5567](https://issues.apache.org/jira/browse/HBASE-5567) | test-patch.sh has logic error in findbugs check |  Trivial | scripts | David S. Wang | David S. Wang |
| [HBASE-5499](https://issues.apache.org/jira/browse/HBASE-5499) | dev-support/test-patch.sh does not have execute perms |  Trivial | scripts | David S. Wang | David S. Wang |
| [HBASE-5579](https://issues.apache.org/jira/browse/HBASE-5579) | A Delete Version could mask other values |  Major | . | Daniel Gómez Ferro | Daniel Gómez Ferro |
| [HBASE-5581](https://issues.apache.org/jira/browse/HBASE-5581) | Creating a table with invalid syntax does not give an error message when it fails |  Minor | shell | Binu John |  |
| [HBASE-5563](https://issues.apache.org/jira/browse/HBASE-5563) | HRegionInfo#compareTo should compare regionId as well |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5206](https://issues.apache.org/jira/browse/HBASE-5206) | Port HBASE-5155 to 0.92, 0.94, and TRUNK |  Major | . | Ted Yu | Ashutosh Jindal |
| [HBASE-5568](https://issues.apache.org/jira/browse/HBASE-5568) | Multi concurrent flushcache() for one region could cause data loss |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-5603](https://issues.apache.org/jira/browse/HBASE-5603) | rolling-restart.sh script hangs when attempting to detect expiration of /hbase/master znode. |  Blocker | Zookeeper | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5569](https://issues.apache.org/jira/browse/HBASE-5569) | Do not collect deleted KVs when they are still in use by a scanner. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5594](https://issues.apache.org/jira/browse/HBASE-5594) | Unable to stop a master that's waiting on -ROOT- during initialization |  Major | . | Jean-Daniel Cryans |  |
| [HBASE-4932](https://issues.apache.org/jira/browse/HBASE-4932) | Block cache can be mistakenly instantiated by tools |  Major | . | Prakash Khemani | Prakash Khemani |
| [HBASE-5586](https://issues.apache.org/jira/browse/HBASE-5586) | [replication] NPE in ReplicationSource when creating a stream to an inexistent cluster |  Major | Replication | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5613](https://issues.apache.org/jira/browse/HBASE-5613) | ThriftServer getTableRegions does not return serverName and port |  Minor | Thrift | Scott Chen | Scott Chen |
| [HBASE-5596](https://issues.apache.org/jira/browse/HBASE-5596) | Few minor bugs from HBASE-5209 |  Minor | master | David S. Wang | David S. Wang |
| [HBASE-5669](https://issues.apache.org/jira/browse/HBASE-5669) | AggregationClient fails validation for open stoprow scan |  Minor | Coprocessors | Brian Rogers | Mubarak Seyed |
| [HBASE-5636](https://issues.apache.org/jira/browse/HBASE-5636) | TestTableMapReduce doesn't work properly. |  Major | test | Takuya Ueshin | Takuya Ueshin |
| [HBASE-5663](https://issues.apache.org/jira/browse/HBASE-5663) | MultithreadedTableMapper doesn't work. |  Major | mapreduce | Takuya Ueshin | Takuya Ueshin |
| [HBASE-5097](https://issues.apache.org/jira/browse/HBASE-5097) | RegionObserver implementation whose preScannerOpen and postScannerOpen Impl return null can stall the system initialization through NPE |  Major | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5704](https://issues.apache.org/jira/browse/HBASE-5704) | HBASE-4398 mistakenly rolled back on trunk |  Major | . | stack | stack |
| [HBASE-5606](https://issues.apache.org/jira/browse/HBASE-5606) | SplitLogManger async delete node hangs log splitting when ZK connection is lost |  Critical | wal | Gopinathan A | Prakash Khemani |
| [HBASE-5359](https://issues.apache.org/jira/browse/HBASE-5359) | Alter in the shell can be too quick and return before the table is altered |  Major | . | Jean-Daniel Cryans | Nicolas Spiegelberg |
| [HBASE-5680](https://issues.apache.org/jira/browse/HBASE-5680) | Improve compatibility warning about HBase with Hadoop 0.23.x |  Major | master | Kristam Subba Swathi | Jonathan Hsieh |
| [HBASE-5743](https://issues.apache.org/jira/browse/HBASE-5743) | Support GIT patches |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-5656](https://issues.apache.org/jira/browse/HBASE-5656) | LoadIncrementalHFiles createTable should detect and set compression algorithm |  Major | util | Cosmin Lehene | Cosmin Lehene |
| [HBASE-5213](https://issues.apache.org/jira/browse/HBASE-5213) | "hbase master stop" does not bring down backup masters |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-5740](https://issues.apache.org/jira/browse/HBASE-5740) | Compaction interruption may be due to balacing |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5749](https://issues.apache.org/jira/browse/HBASE-5749) | "HBASE-5335 Dynamic Schema Config" broke build, missing change to HRegion heapsize |  Major | . | stack | stack |
| [HBASE-5727](https://issues.apache.org/jira/browse/HBASE-5727) | secure hbase build broke because of 'HBASE-5451 Switch RPC call envelope/headers to PBs' |  Blocker | . | stack | Devaraj Das |
| [HBASE-5759](https://issues.apache.org/jira/browse/HBASE-5759) | HBaseClient throws NullPointerException when EOFException should be used. |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5755](https://issues.apache.org/jira/browse/HBASE-5755) | Region sever looking for master forever with cached stale data. |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5736](https://issues.apache.org/jira/browse/HBASE-5736) | ThriftServerRunner.HbaseHandler.mutateRow() does not use ByteBuffer correctly |  Major | . | Scott Chen | Scott Chen |
| [HBASE-5717](https://issues.apache.org/jira/browse/HBASE-5717) | Scanner metrics are only reported if you get to the end of a scanner |  Minor | Client, metrics | Ian Varley | Ian Varley |
| [HBASE-5773](https://issues.apache.org/jira/browse/HBASE-5773) | HtablePool constructor not reading config files in certain cases |  Minor | Client | Ioan Eugen Stan | Ioan Eugen Stan |
| [HBASE-3443](https://issues.apache.org/jira/browse/HBASE-3443) | ICV optimization to look in memstore first and then store files (HBASE-3082) does not work when deletes are in the mix |  Critical | regionserver | Kannan Muthukkaruppan | Lars Hofhansl |
| [HBASE-5488](https://issues.apache.org/jira/browse/HBASE-5488) | OfflineMetaRepair doesn't support hadoop 0.20's fs.default.name property |  Minor | . | gaojinchao | gaojinchao |
| [HBASE-5772](https://issues.apache.org/jira/browse/HBASE-5772) | Unable to open the few links in http://hbase.apache.org/ |  Major | documentation | Kiran BC | stack |
| [HBASE-5781](https://issues.apache.org/jira/browse/HBASE-5781) | Zookeeper session got closed while trying to assign the region to RS using hbck -fix |  Critical | hbck | Kristam Subba Swathi | Jonathan Hsieh |
| [HBASE-5800](https://issues.apache.org/jira/browse/HBASE-5800) | Birds of a feather link on web page doesn't work. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-5795](https://issues.apache.org/jira/browse/HBASE-5795) | HServerLoad$RegionLoad breaks 0.92\<-\>0.94 compatibility |  Major | . | stack | Ted Yu |
| [HBASE-5780](https://issues.apache.org/jira/browse/HBASE-5780) | Fix race in HBase regionserver startup vs ZK SASL authentication |  Major | security | Shaneal Manek | Shaneal Manek |
| [HBASE-3585](https://issues.apache.org/jira/browse/HBASE-3585) | isLegalFamilyName() can throw ArrayOutOfBoundException |  Minor | Client | Prakash Khemani | Uma Maheswara Rao G |
| [HBASE-5817](https://issues.apache.org/jira/browse/HBASE-5817) | Fix uncategorized tests |  Major | . | stack | stack |
| [HBASE-5811](https://issues.apache.org/jira/browse/HBASE-5811) | TestLoadAndSwitchEncodeOnDisk fails sometimes |  Major | . | stack | stack |
| [HBASE-5819](https://issues.apache.org/jira/browse/HBASE-5819) | SplitLogs function could leak resources |  Trivial | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5794](https://issues.apache.org/jira/browse/HBASE-5794) | Jenkins builds timing out; undo setting hbase.client.retries.number to 100 |  Major | . | stack | stack |
| [HBASE-5787](https://issues.apache.org/jira/browse/HBASE-5787) | Table owner can't disable/delete his/her own table |  Minor | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5635](https://issues.apache.org/jira/browse/HBASE-5635) | If getTaskList() returns null, splitlogWorker would go down and it won't serve any requests |  Major | wal | Kristam Subba Swathi | Chinna Rao Lalam |
| [HBASE-5830](https://issues.apache.org/jira/browse/HBASE-5830) | Cleanup SequenceFileLogWriter to use syncFs api from SequenceFile#Writer directly in trunk. |  Major | wal | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HBASE-5857](https://issues.apache.org/jira/browse/HBASE-5857) | RIT map in RS not getting cleared while region opening |  Major | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HBASE-5866](https://issues.apache.org/jira/browse/HBASE-5866) | Canary in tool package but says its in tools. |  Major | . | stack | stack |
| [HBASE-5865](https://issues.apache.org/jira/browse/HBASE-5865) | test-util.sh broken with unittest updates |  Minor | scripts | Jesse Yates | Jesse Yates |
| [HBASE-5861](https://issues.apache.org/jira/browse/HBASE-5861) | Hadoop 23 compilation broken due to tests introduced in HBASE-5604 |  Blocker | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5848](https://issues.apache.org/jira/browse/HBASE-5848) | Create table with EMPTY\_START\_ROW passed as splitKey causes the HMaster to abort |  Minor | Client | Lars Hofhansl | ramkrishna.s.vasudevan |
| [HBASE-5871](https://issues.apache.org/jira/browse/HBASE-5871) | Usability regression, we don't parse compression algos anymore |  Critical | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-5873](https://issues.apache.org/jira/browse/HBASE-5873) | TimeOut Monitor thread should be started after atleast one region server registers. |  Minor | . | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-5870](https://issues.apache.org/jira/browse/HBASE-5870) | Hadoop 23 compilation broken because JobTrackerRunner#getJobTracker() method is not found |  Blocker | . | Jonathan Hsieh | Ted Yu |
| [HBASE-5672](https://issues.apache.org/jira/browse/HBASE-5672) | TestLruBlockCache#testBackgroundEvictionThread fails occasionally |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5829](https://issues.apache.org/jira/browse/HBASE-5829) | Inconsistency between the "regions" map and the "servers" map in AssignmentManager |  Major | master | Maryann Xue | Maryann Xue |
| [HBASE-5864](https://issues.apache.org/jira/browse/HBASE-5864) | Error while reading from hfile in 0.94 |  Blocker | regionserver | Gopinathan A | ramkrishna.s.vasudevan |
| [HBASE-5885](https://issues.apache.org/jira/browse/HBASE-5885) | Invalid HFile block magic on Local file System |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-5611](https://issues.apache.org/jira/browse/HBASE-5611) | Replayed edits from regions that failed to open during recovery aren't removed from the global MemStore size |  Critical | . | Jean-Daniel Cryans | Jieshan Bean |
| [HBASE-5884](https://issues.apache.org/jira/browse/HBASE-5884) | MapReduce package info has broken link to bulk-loads |  Trivial | mapreduce | Jesse Yates | Jesse Yates |
| [HBASE-5908](https://issues.apache.org/jira/browse/HBASE-5908) | TestHLogSplit.testTralingGarbageCorruptionFileSkipErrorsPasses should not use append to corrupt the HLog |  Minor | test, wal | Gregory Chanan | Gregory Chanan |
| [HBASE-5897](https://issues.apache.org/jira/browse/HBASE-5897) | prePut coprocessor hook causing substantial CPU usage |  Critical | . | Todd Lipcon | Todd Lipcon |
| [HBASE-5931](https://issues.apache.org/jira/browse/HBASE-5931) | HBase security profile doesn't compile |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5928](https://issues.apache.org/jira/browse/HBASE-5928) | Hbck shouldn't npe when there are no tables. |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-5902](https://issues.apache.org/jira/browse/HBASE-5902) | Some scripts are not executable |  Trivial | scripts | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5894](https://issues.apache.org/jira/browse/HBASE-5894) | Table deletion failed but HBaseAdmin#deletetable reports it as success |  Minor | . | xufeng | xufeng |
| [HBASE-5925](https://issues.apache.org/jira/browse/HBASE-5925) | Issue with only using the old config param hbase.hstore.compactionThreshold but not the corresponding new one |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-5963](https://issues.apache.org/jira/browse/HBASE-5963) | ClassCastException: FileSystem$Cache$ClientFinalizer cannot be cast to Thread |  Major | . | Andrew Purtell | Ted Yu |
| [HBASE-5964](https://issues.apache.org/jira/browse/HBASE-5964) | HFileSystem: "No FileSystem for scheme: hdfs" |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5824](https://issues.apache.org/jira/browse/HBASE-5824) | HRegion.incrementColumnValue is not used in trunk |  Major | . | Elliott Clark | Jimmy Xiang |
| [HBASE-5975](https://issues.apache.org/jira/browse/HBASE-5975) | Failed suppression of fs shutdown hook with Hadoop 2.0.0 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5922](https://issues.apache.org/jira/browse/HBASE-5922) | HalfStoreFileReader seekBefore causes StackOverflowError |  Critical | Client, io | Nate Putnam | Nate Putnam |
| [HBASE-5992](https://issues.apache.org/jira/browse/HBASE-5992) | Generalization of region move implementation + manage draining servers in bulk assign |  Minor | master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5806](https://issues.apache.org/jira/browse/HBASE-5806) | Handle split region related failures on master restart and RS restart |  Major | . | ramkrishna.s.vasudevan | Chinna Rao Lalam |
| [HBASE-5962](https://issues.apache.org/jira/browse/HBASE-5962) | interop issue: RowMutations should be added at the end in HbaseObjectWriteable class |  Major | . | Kannan Muthukkaruppan |  |
| [HBASE-6029](https://issues.apache.org/jira/browse/HBASE-6029) | HBCK doesn't recover Balance switch if exception occurs in onlineHbck() |  Major | hbck | Maryann Xue | Maryann Xue |
| [HBASE-5741](https://issues.apache.org/jira/browse/HBASE-5741) | ImportTsv does not check for table existence |  Major | mapreduce | Clint Heath | Himanshu Vashishtha |
| [HBASE-6018](https://issues.apache.org/jira/browse/HBASE-6018) | hbck fails with a RejectedExecutionException when \>50 regions present |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6021](https://issues.apache.org/jira/browse/HBASE-6021) | NullPointerException when running LoadTestTool without specifying compression type |  Minor | util | Andrew Purtell | Andrew Purtell |
| [HBASE-6011](https://issues.apache.org/jira/browse/HBASE-6011) | Unable to start master in local mode |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5546](https://issues.apache.org/jira/browse/HBASE-5546) | Master assigns region in the original region server when opening region failed |  Minor | master | gaojinchao | Ashutosh Jindal |
| [HBASE-5840](https://issues.apache.org/jira/browse/HBASE-5840) | Open Region FAILED\_OPEN doesn't clear the TaskMonitor Status, keeps showing the old status |  Major | regionserver | Gopinathan A | rajeshbabu |
| [HBASE-5757](https://issues.apache.org/jira/browse/HBASE-5757) | TableInputFormat should handle as many errors as possible |  Major | mapreduce | Jan Lukavsky | Jan Lukavsky |
| [HBASE-5927](https://issues.apache.org/jira/browse/HBASE-5927) | SSH and DisableTableHandler happening together does not clear the znode of the region and RIT map. |  Major | master | Jieshan Bean | rajeshbabu |
| [HBASE-6069](https://issues.apache.org/jira/browse/HBASE-6069) | TableInputFormatBase#createRecordReader() doesn't initialize TableRecordReader which causes NPE |  Critical | mapreduce | Jie Huang | Jie Huang |
| [HBASE-6063](https://issues.apache.org/jira/browse/HBASE-6063) | Replication related failures on trunk after HBASE-5453 |  Major | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6070](https://issues.apache.org/jira/browse/HBASE-6070) | AM.nodeDeleted and SSH races creating problems for regions under SPLIT |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5986](https://issues.apache.org/jira/browse/HBASE-5986) | Clients can see holes in the META table when regions are being split |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6050](https://issues.apache.org/jira/browse/HBASE-6050) | HLogSplitter renaming recovered.edits and CJ removing the parent directory race, making the HBCK think cluster is inconsistent. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6002](https://issues.apache.org/jira/browse/HBASE-6002) | Possible chance of resource leak in HlogSplitter |  Major | wal | Chinna Rao Lalam | Chinna Rao Lalam |
| [HBASE-6065](https://issues.apache.org/jira/browse/HBASE-6065) | Log for flush would append a non-sequential edit in the hlog, leading to possible data loss |  Critical | wal | chunhui shen | chunhui shen |
| [HBASE-6047](https://issues.apache.org/jira/browse/HBASE-6047) | Put.has() can't determine result correctly |  Major | Client | Wang Qiang | Alex Newman |
| [HBASE-6088](https://issues.apache.org/jira/browse/HBASE-6088) |  Region splitting not happened for long time due to ZK exception while creating RS\_ZK\_SPLITTING node |  Major | . | Gopinathan A | rajeshbabu |
| [HBASE-5916](https://issues.apache.org/jira/browse/HBASE-5916) | RS restart just before master intialization we make the cluster non operative |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6108](https://issues.apache.org/jira/browse/HBASE-6108) | Use HRegion.closeHRegion instead of HRegion.close() and HRegion.getLog().close() |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6084](https://issues.apache.org/jira/browse/HBASE-6084) | Server Load does not display correctly on the ui |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6113](https://issues.apache.org/jira/browse/HBASE-6113) | [eclipse] Fix eclipse import of hbase-assembly null pointer |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-6107](https://issues.apache.org/jira/browse/HBASE-6107) | Distributed log splitting hangs even there is no task under /hbase/splitlog |  Major | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5722](https://issues.apache.org/jira/browse/HBASE-5722) | NPE in ZKUtil#getChildDataAndWatchForNewChildren when ZK not available or NW down. |  Major | Zookeeper | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HBASE-5733](https://issues.apache.org/jira/browse/HBASE-5733) | AssignmentManager#processDeadServersAndRegionsInTransition can fail with NPE. |  Major | master | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HBASE-6049](https://issues.apache.org/jira/browse/HBASE-6049) | Serializing "List" containing null elements will cause NullPointerException in HbaseObjectWritable.writeObject() |  Major | io | Maryann Xue | Maryann Xue |
| [HBASE-6087](https://issues.apache.org/jira/browse/HBASE-6087) | Add hbase-common module |  Major | build | Jesse Yates | Jesse Yates |
| [HBASE-6059](https://issues.apache.org/jira/browse/HBASE-6059) | Replaying recovered edits would make deleted data exist again |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-6089](https://issues.apache.org/jira/browse/HBASE-6089) | SSH and AM.joinCluster causes Concurrent Modification exception. |  Major | . | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-6149](https://issues.apache.org/jira/browse/HBASE-6149) | Fix TestFSUtils creating dirs under top level dir |  Major | . | stack | stack |
| [HBASE-6150](https://issues.apache.org/jira/browse/HBASE-6150) | Remove empty files causing rat check fail |  Major | . | stack | stack |
| [HBASE-6138](https://issues.apache.org/jira/browse/HBASE-6138) | HadoopQA not running findbugs [Trunk] |  Major | build | Anoop Sam John | Jesse Yates |
| [HBASE-6112](https://issues.apache.org/jira/browse/HBASE-6112) | Fix hadoop-2.0 build |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-6046](https://issues.apache.org/jira/browse/HBASE-6046) | Master retry on ZK session expiry causes inconsistent region assignments. |  Major | master | Gopinathan A | ramkrishna.s.vasudevan |
| [HBASE-6167](https://issues.apache.org/jira/browse/HBASE-6167) | Fix xinclude for docs broke when we multi-moduled |  Major | . | stack | stack |
| [HBASE-6179](https://issues.apache.org/jira/browse/HBASE-6179) | Fix stylesheet broke since multimodule and address feedback gotten in new comment system |  Major | documentation | stack | stack |
| [HBASE-6146](https://issues.apache.org/jira/browse/HBASE-6146) | Disabling of Catalog tables should not be allowed |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-5726](https://issues.apache.org/jira/browse/HBASE-5726) | TestSplitTransactionOnCluster occasionally failing |  Critical | . | Uma Maheswara Rao G | Ted Yu |
| [HBASE-6197](https://issues.apache.org/jira/browse/HBASE-6197) | HRegion's append operation may lose data |  Major | regionserver | ShiXing | ShiXing |
| [HBASE-5564](https://issues.apache.org/jira/browse/HBASE-5564) | Bulkload is discarding duplicate records |  Major | mapreduce | Laxman | Laxman |
| [HBASE-6237](https://issues.apache.org/jira/browse/HBASE-6237) | Fix race on ACL table creation in TestTablePermissions |  Major | security, test | Andrew Purtell | Andrew Purtell |
| [HBASE-6012](https://issues.apache.org/jira/browse/HBASE-6012) | Handling RegionOpeningState for bulk assign |  Major | . | chunhui shen | chunhui shen |
| [HBASE-6156](https://issues.apache.org/jira/browse/HBASE-6156) | Improve multiop performances in HTable#flushCommits |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6164](https://issues.apache.org/jira/browse/HBASE-6164) | Correct the bug in block encoding usage in bulkload |  Major | mapreduce | Anoop Sam John | Anoop Sam John |
| [HBASE-5918](https://issues.apache.org/jira/browse/HBASE-5918) | Master will block forever at startup if root server dies between assigning root and assigning meta |  Major | master | chunhui shen | chunhui shen |
| [HBASE-6248](https://issues.apache.org/jira/browse/HBASE-6248) | Jetty init may fail if directory name contains "master" |  Minor | master | Dave Revell | Dave Revell |
| [HBASE-6236](https://issues.apache.org/jira/browse/HBASE-6236) | Offline meta repair fails if the HBase base mount point is on a different cluster/volume than its parent in a ViewFS or similar FS |  Major | hbck | Aditya Kishore | Aditya Kishore |
| [HBASE-5875](https://issues.apache.org/jira/browse/HBASE-5875) | Process RIT and Master restart may remove an online server considering it as a dead server |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6200](https://issues.apache.org/jira/browse/HBASE-6200) | KeyComparator.compareWithoutRow can be wrong when families have the same prefix |  Blocker | . | Jean-Daniel Cryans | Jieshan Bean |
| [HBASE-6227](https://issues.apache.org/jira/browse/HBASE-6227) | SSH and cluster startup  causes data loss |  Major | master | chunhui shen | chunhui shen |
| [HBASE-6229](https://issues.apache.org/jira/browse/HBASE-6229) | AM.assign() should not set table state to ENABLED directly. |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-6195](https://issues.apache.org/jira/browse/HBASE-6195) | Increment data will be lost when the memstore is flushed |  Major | regionserver | ShiXing | ShiXing |
| [HBASE-6265](https://issues.apache.org/jira/browse/HBASE-6265) | Calling getTimestamp() on a KV in cp.prePut() causes KV not to be flushed |  Critical | regionserver | Lars George | Lars George |
| [HBASE-6285](https://issues.apache.org/jira/browse/HBASE-6285) | HBase master should log INFO message when it attempts to assign a region |  Minor | master | Aditya Kishore | Aditya Kishore |
| [HBASE-6303](https://issues.apache.org/jira/browse/HBASE-6303) | HCD.setCompressionType should use Enum support for storing compression types as strings |  Minor | io | Gopinathan A | Andrew Purtell |
| [HBASE-6269](https://issues.apache.org/jira/browse/HBASE-6269) | Lazyseek should use the maxSequenseId StoreFile's KeyValue as the latest KeyValue |  Major | regionserver | ShiXing | ShiXing |
| [HBASE-6306](https://issues.apache.org/jira/browse/HBASE-6306) | TestFSUtils fails against hadoop 2.0 |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6281](https://issues.apache.org/jira/browse/HBASE-6281) | Assignment need not be called for disabling table regions during clean cluster start up. |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-6117](https://issues.apache.org/jira/browse/HBASE-6117) | Revisit default condition added to Switch cases in Trunk |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5876](https://issues.apache.org/jira/browse/HBASE-5876) | TestImportExport has been failing against hadoop 0.23 profile |  Major | . | Ted Yu | Jonathan Hsieh |
| [HBASE-6326](https://issues.apache.org/jira/browse/HBASE-6326) | Avoid nested retry loops in HConnectionManager |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6293](https://issues.apache.org/jira/browse/HBASE-6293) | HMaster does not go down while splitting logs even if explicit shutdown is called. |  Major | . | rajeshbabu | Lars Hofhansl |
| [HBASE-5909](https://issues.apache.org/jira/browse/HBASE-5909) | SlabStats should be a daemon thread |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-5967](https://issues.apache.org/jira/browse/HBASE-5967) | OpenDataException because HBaseProtos.ServerLoad cannot be converted to an open data type |  Minor | . | Jimmy Xiang | Gregory Chanan |
| [HBASE-6328](https://issues.apache.org/jira/browse/HBASE-6328) | FSHDFSUtils#recoverFileLease tries to rethrow InterruptedException but actually shallows it |  Minor | master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6175](https://issues.apache.org/jira/browse/HBASE-6175) | TestFSUtils flaky on hdfs getFileStatus method |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6318](https://issues.apache.org/jira/browse/HBASE-6318) | SplitLogWorker exited due to ConcurrentModificationException |  Major | regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6311](https://issues.apache.org/jira/browse/HBASE-6311) | Data error after majorCompaction caused by keeping MVCC for opened scanners |  Blocker | regionserver | chunhui shen | chunhui shen |
| [HBASE-6329](https://issues.apache.org/jira/browse/HBASE-6329) | Stopping META regionserver when splitting region could cause daughter region to be assigned twice |  Major | master | chunhui shen | chunhui shen |
| [HBASE-4379](https://issues.apache.org/jira/browse/HBASE-4379) | [hbck] Does not complain about tables with no end region [Z,] |  Major | hbck | Jonathan Hsieh | Anoop Sam John |
| [HBASE-6337](https://issues.apache.org/jira/browse/HBASE-6337) | [MTTR] Remove renaming tmp log file in SplitLogManager |  Major | . | chunhui shen | chunhui shen |
| [HBASE-6284](https://issues.apache.org/jira/browse/HBASE-6284) | Introduce HRegion#doMiniBatchMutation() |  Major | Performance, regionserver | Ted Yu | Anoop Sam John |
| [HBASE-6369](https://issues.apache.org/jira/browse/HBASE-6369) | HTable is not closed in AggregationClient |  Major | . | binlijin | binlijin |
| [HBASE-6375](https://issues.apache.org/jira/browse/HBASE-6375) | Master may be using a stale list of region servers for creating assignment plan during startup |  Major | master | Aditya Kishore | Aditya Kishore |
| [HBASE-6377](https://issues.apache.org/jira/browse/HBASE-6377) | HBASE-5533 metrics miss all operations submitted via MultiAction |  Major | metrics, regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-6380](https://issues.apache.org/jira/browse/HBASE-6380) | bulkload should update the store.storeSize |  Critical | regionserver | Jie Huang | Jie Huang |
| [HBASE-6394](https://issues.apache.org/jira/browse/HBASE-6394) | verifyrep MR job map tasks throws NullPointerException |  Minor | Replication | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6397](https://issues.apache.org/jira/browse/HBASE-6397) | [hbck] print out bulk load commands for sidelined regions if necessary |  Trivial | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5883](https://issues.apache.org/jira/browse/HBASE-5883) | Backup master is going down due to connection refused exception |  Major | master | Gopinathan A | Jieshan Bean |
| [HBASE-6336](https://issues.apache.org/jira/browse/HBASE-6336) | Split point should not be equal to start row or end row |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-6420](https://issues.apache.org/jira/browse/HBASE-6420) | Gracefully shutdown logsyncer |  Major | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6392](https://issues.apache.org/jira/browse/HBASE-6392) | UnknownRegionException blocks hbck from sideline big overlap regions |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6325](https://issues.apache.org/jira/browse/HBASE-6325) | [replication] Race in ReplicationSourceManager.init can initiate a failover even if the node is alive |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-6406](https://issues.apache.org/jira/browse/HBASE-6406) | TestReplicationPeer.testResetZooKeeperSession and TestZooKeeper.testClientSessionExpired fail frequently |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6440](https://issues.apache.org/jira/browse/HBASE-6440) | SplitLogManager - log the exception when failed to finish split log file |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-4470](https://issues.apache.org/jira/browse/HBASE-4470) | ServerNotRunningException coming out of assignRootAndMeta kills the Master |  Critical | . | Jean-Daniel Cryans | Gregory Chanan |
| [HBASE-6027](https://issues.apache.org/jira/browse/HBASE-6027) | Update the reference guide to reflect the changes in the security profile |  Major | documentation | Devaraj Das | Devaraj Das |
| [HBASE-6445](https://issues.apache.org/jira/browse/HBASE-6445) | rat check fails if hs\_err\_pid26514.log dropped in tests |  Major | . | stack | stack |
| [HBASE-6272](https://issues.apache.org/jira/browse/HBASE-6272) | In-memory region state is inconsistent |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6510](https://issues.apache.org/jira/browse/HBASE-6510) | Fix HConnection typo in TestFromClientSide |  Trivial | test | Gregory Chanan | Gregory Chanan |
| [HBASE-6489](https://issues.apache.org/jira/browse/HBASE-6489) | Incorrect TaskTracker logfile name |  Minor | documentation | Liang Xie |  |
| [HBASE-6481](https://issues.apache.org/jira/browse/HBASE-6481) | SkipFilter javadoc is incorrect |  Minor | . | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-6582](https://issues.apache.org/jira/browse/HBASE-6582) | Code generation does run under m2eclipse |  Minor | . | Michael Drzal | Michael Drzal |
| [HBASE-6604](https://issues.apache.org/jira/browse/HBASE-6604) | Bump log4j to 1.2.17 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6607](https://issues.apache.org/jira/browse/HBASE-6607) | NullPointerException when accessing master web ui while master is initializing |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6622](https://issues.apache.org/jira/browse/HBASE-6622) | TestUpgradeFromHFileV1ToEncoding#testUpgrade fails in trunk |  Major | . | Ted Yu | Ted Yu |
| [HBASE-6584](https://issues.apache.org/jira/browse/HBASE-6584) | TestAssignmentManager#testDisablingTableRegionsAssignmentDuringCleanClusterStartup fails due to port 60000 already in use. |  Critical | test | Sameer Vaishampayan | rajeshbabu |
| [HBASE-6119](https://issues.apache.org/jira/browse/HBASE-6119) | Region server logs its own address at the end of getMaster() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-6655](https://issues.apache.org/jira/browse/HBASE-6655) | thrift.TestThriftServerCmdLine takes too much time: 733.972 sec |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6692](https://issues.apache.org/jira/browse/HBASE-6692) | [shell] Cannot describe '.META.' or '-ROOT-' tables |  Major | shell | Aditya Kishore | Aditya Kishore |
| [HBASE-6693](https://issues.apache.org/jira/browse/HBASE-6693) | Typo in Javadoc of AggregationClient.rowCount() |  Trivial | Client | Hiroshi Ikeda | Jonathan Hsieh |
| [HBASE-6682](https://issues.apache.org/jira/browse/HBASE-6682) | Bad characters in logs for server names: SplitLogManager: task following PBUF |  Minor | . | Nicolas Liochon | Aleksandr Shulman |
| [HBASE-5076](https://issues.apache.org/jira/browse/HBASE-5076) | HBase shell hangs when creating some 'illegal' tables. |  Minor | shell | Jonathan Hsieh | Liang Xie |
| [HBASE-6683](https://issues.apache.org/jira/browse/HBASE-6683) | Wrong warning in logs WARN org.apache.hadoop.ipc.HBaseServer: Methods length : 5 |  Critical | . | Nicolas Liochon | Devaraj Das |
| [HBASE-6697](https://issues.apache.org/jira/browse/HBASE-6697) | regionserver.TestPriorityRpc uses a fixed port (60020) |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6691](https://issues.apache.org/jira/browse/HBASE-6691) | HFile quarantine fails with missing files in hadoop 2.0 |  Major | hadoop2, hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-3870](https://issues.apache.org/jira/browse/HBASE-3870) | Purge copyrights from src headers |  Blocker | . | stack | stack |
| [HBASE-6327](https://issues.apache.org/jira/browse/HBASE-6327) | HLog can be null when create table |  Major | . | ShiXing | ShiXing |
| [HBASE-6659](https://issues.apache.org/jira/browse/HBASE-6659) | Port HBASE-6508 Filter out edits at log split time |  Major | . | Ted Yu | Ted Yu |
| [HBASE-5412](https://issues.apache.org/jira/browse/HBASE-5412) | HBase book, section 2.6.4, has deficient list of client dependencies |  Minor | documentation | Mike Spreitzer | Ian Varley |
| [HBASE-6431](https://issues.apache.org/jira/browse/HBASE-6431) | Some FilterList Constructors break addFilter |  Minor | Filters | Alex Newman | Alex Newman |
| [HBASE-6429](https://issues.apache.org/jira/browse/HBASE-6429) | Filter with filterRow() returning true is incompatible with scan with limit |  Major | Filters | Jason Dai | Jie Huang |
| [HBASE-6455](https://issues.apache.org/jira/browse/HBASE-6455) | org.apache.hadoop.hbase.PerformanceEvaluation sets the map reduce output path as a child of input path |  Minor | Performance | Aditya Kishore | Aditya Kishore |
| [HBASE-6468](https://issues.apache.org/jira/browse/HBASE-6468) | RowCounter may return incorrect result if column name is specified in command line |  Major | . | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-6518](https://issues.apache.org/jira/browse/HBASE-6518) | Bytes.toBytesBinary() incorrect trailing backslash escape |  Trivial | util | Tudor Scurtu | Tudor Scurtu |
| [HBASE-6658](https://issues.apache.org/jira/browse/HBASE-6658) | Rename WritableByteArrayComparable to something not mentioning Writable |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6564](https://issues.apache.org/jira/browse/HBASE-6564) | HDFS space is not reclaimed when a column family is deleted |  Minor | master | J Mohamed Zahoor | J Mohamed Zahoor |
| [HBASE-6780](https://issues.apache.org/jira/browse/HBASE-6780) | On the master status page the Number of Requests per second is incorrect for RegionServer's |  Major | master | Elliott Clark | Elliott Clark |
| [HBASE-6634](https://issues.apache.org/jira/browse/HBASE-6634) | REST API ScannerModel's protobuf converter code duplicates the setBatch call |  Trivial | REST | Harsh J | Harsh J |
| [HBASE-6794](https://issues.apache.org/jira/browse/HBASE-6794) | FilterBase should provide a default implementation of toByteArray |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6795](https://issues.apache.org/jira/browse/HBASE-6795) | mvn compile fails on a fresh checkout with empty ~/.m2/repo |  Critical | build | Enis Soztutar | Enis Soztutar |
| [HBASE-6779](https://issues.apache.org/jira/browse/HBASE-6779) | Fix issues analysis.apache.org raises about StochasticLoadBalancer |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6834](https://issues.apache.org/jira/browse/HBASE-6834) | HBaseClusterManager shell code breaks hadoop-2.0 build |  Major | . | Gregory Chanan | Enis Soztutar |
| [HBASE-6835](https://issues.apache.org/jira/browse/HBASE-6835) | HBaseAdmin.flush claims to be asynchronous but appears to be synchronous |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6838](https://issues.apache.org/jira/browse/HBASE-6838) | Regionserver may generate identical scanner name |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-6528](https://issues.apache.org/jira/browse/HBASE-6528) | Raise the wait time for TestSplitLogWorker#testAcquireTaskAtStartup to reduce the failure probability |  Major | . | ShiXing | ShiXing |
| [HBASE-6178](https://issues.apache.org/jira/browse/HBASE-6178) | LoadTest tool no longer packaged after the modularization |  Major | . | Elliott Clark | Jesse Yates |
| [HBASE-6746](https://issues.apache.org/jira/browse/HBASE-6746) | Impacts of HBASE-6435 vs. HDFS 2.0 trunk |  Major | master, regionserver, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6441](https://issues.apache.org/jira/browse/HBASE-6441) | MasterFS doesn't set scheme for internal FileSystem |  Major | master | Jesse Yates | Jesse Yates |
| [HBASE-6677](https://issues.apache.org/jira/browse/HBASE-6677) | Random ZooKeeper port in test can overrun max port |  Trivial | test | Gregory Chanan | Liang Xie |
| [HBASE-6806](https://issues.apache.org/jira/browse/HBASE-6806) | HBASE-4658 breaks backward compatibility / example scripts |  Major | Thrift | Lukas |  |
| [HBASE-6869](https://issues.apache.org/jira/browse/HBASE-6869) | Update our hadoop-2 to 2.0.1-alpha |  Major | . | stack | stack |
| [HBASE-6381](https://issues.apache.org/jira/browse/HBASE-6381) | AssignmentManager should use the same logic for clean startup and failover |  Major | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6637](https://issues.apache.org/jira/browse/HBASE-6637) | Move DaemonThreadFactory into Threads and Threads to hbase-common |  Minor | . | Jesse Yates | Jesse Yates |
| [HBASE-5071](https://issues.apache.org/jira/browse/HBASE-5071) | HFile has a possible cast issue. |  Major | HFile, io | Harsh J |  |
| [HBASE-4802](https://issues.apache.org/jira/browse/HBASE-4802) | Disable show table metrics in bulk loader |  Trivial | . | Nicolas Spiegelberg | Liyin Tang |
| [HBASE-5329](https://issues.apache.org/jira/browse/HBASE-5329) | addRowLock() may allocate duplicate lock id, causing the client to be blocked |  Minor | regionserver | liaoxiangui | Ian Varley |
| [HBASE-6881](https://issues.apache.org/jira/browse/HBASE-6881) | All regionservers are marked offline even there is still one up |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6918](https://issues.apache.org/jira/browse/HBASE-6918) | Debugging to help figure what is different up on jenkins when TestHeapSize runs |  Major | test | stack | stack |
| [HBASE-6926](https://issues.apache.org/jira/browse/HBASE-6926) | Cleanup some of the javadoc warnings. |  Major | documentation | stack | stack |
| [HBASE-6479](https://issues.apache.org/jira/browse/HBASE-6479) | HFileReaderV1 caching the same parent META block could cause server abort when splitting |  Major | . | chunhui shen | chunhui shen |
| [HBASE-6738](https://issues.apache.org/jira/browse/HBASE-6738) | Too aggressive task resubmission from the distributed log manager |  Critical | master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6439](https://issues.apache.org/jira/browse/HBASE-6439) | Ignore .archive directory as a table |  Major | io, regionserver | Jesse Yates | Jesse Yates |
| [HBASE-6950](https://issues.apache.org/jira/browse/HBASE-6950) | TestAcidGuarantees system test now flushes too aggressively |  Minor | test | Gregory Chanan | Gregory Chanan |
| [HBASE-6953](https://issues.apache.org/jira/browse/HBASE-6953) | Incorrect javadoc description of HFileOutputFormat regarding multiple column families |  Minor | mapreduce | Gabriel Reid |  |
| [HBASE-6316](https://issues.apache.org/jira/browse/HBASE-6316) | Confirm can upgrade to 0.96 from 0.94 by just stopping and restarting |  Blocker | . | stack | stack |
| [HBASE-6733](https://issues.apache.org/jira/browse/HBASE-6733) | [0.92 UNIT TESTS] TestReplication.queueFailover occasionally fails [Part-2] |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-6963](https://issues.apache.org/jira/browse/HBASE-6963) | unable to run hbck on a secure cluster |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5837](https://issues.apache.org/jira/browse/HBASE-5837) | hbase shell deleteall to .META. allows insertion of malformed rowkey |  Major | master, shell | Jonathan Hsieh | Ricky Saltzer |
| [HBASE-6971](https://issues.apache.org/jira/browse/HBASE-6971) | .META. directory does not contain .tableinfo serialization |  Major | Filesystem Integration, master | Enis Soztutar |  |
| [HBASE-6978](https://issues.apache.org/jira/browse/HBASE-6978) | Minor typo in ReplicationSource SocketTimeoutException error handling |  Trivial | Replication | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-3444](https://issues.apache.org/jira/browse/HBASE-3444) | Test to prove Bytes.toBytesBinary and Bytes.toStringBinary()  is reversible |  Minor | . | Prakash Khemani | Ken Dallmeyer |
| [HBASE-6962](https://issues.apache.org/jira/browse/HBASE-6962) | Upgrade hadoop 1 dependency to hadoop 1.1 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-6858](https://issues.apache.org/jira/browse/HBASE-6858) | Fix the incorrect BADVERSION checking in the recoverable zookeeper |  Critical | Zookeeper | Liyin Tang | Liyin Tang |
| [HBASE-7002](https://issues.apache.org/jira/browse/HBASE-7002) | Fix all 4 findbug performance warnings |  Minor | . | Liang Xie | Liang Xie |
| [HBASE-7000](https://issues.apache.org/jira/browse/HBASE-7000) | Fix the "INT\_VACUOUS\_COMPARISON" WARNING in KeyValue class |  Minor | . | Liang Xie | Liang Xie |
| [HBASE-6974](https://issues.apache.org/jira/browse/HBASE-6974) | Metric for blocked updates |  Critical | . | Lars Hofhansl | Michael Drzal |
| [HBASE-6758](https://issues.apache.org/jira/browse/HBASE-6758) | [replication] The replication-executor should make sure the file that it is replicating is closed before declaring success on that file |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-6949](https://issues.apache.org/jira/browse/HBASE-6949) | Automatically delete empty directories in CleanerChore |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-7005](https://issues.apache.org/jira/browse/HBASE-7005) | Upgrade Thrift lib to 0.9.0 |  Minor | Thrift | Jake Farrell | Jake Farrell |
| [HBASE-6611](https://issues.apache.org/jira/browse/HBASE-6611) | Forcing region state offline cause double assignment |  Major | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6998](https://issues.apache.org/jira/browse/HBASE-6998) | Uncaught exception in main() makes the HMaster/HRegionServer process suspend |  Major | master, regionserver | Liang Xie | Liang Xie |
| [HBASE-7001](https://issues.apache.org/jira/browse/HBASE-7001) | Fix the RCN Correctness Warning in MemStoreFlusher class |  Minor | . | Liang Xie | Liang Xie |
| [HBASE-7019](https://issues.apache.org/jira/browse/HBASE-7019) | Can't pass SplitAlgo in hbase shell |  Major | shell | Gregory Chanan | Gregory Chanan |
| [HBASE-6583](https://issues.apache.org/jira/browse/HBASE-6583) | Enhance Hbase load test tool to automatically create column families if not present |  Major | test | Karthik Ranganathan | Sergey Shelukhin |
| [HBASE-7018](https://issues.apache.org/jira/browse/HBASE-7018) | Fix and Improve TableDescriptor caching for bulk assignment |  Major | regionserver | Gregory Chanan | Gregory Chanan |
| [HBASE-6843](https://issues.apache.org/jira/browse/HBASE-6843) | loading lzo error when using coprocessor |  Critical | Coprocessors | Zhou wenjian | Zhou wenjian |
| [HBASE-7037](https://issues.apache.org/jira/browse/HBASE-7037) | ReplicationPeer logs at WARN level aborting server instead of at FATAL |  Major | Replication | stack | Liang Xie |
| [HBASE-7048](https://issues.apache.org/jira/browse/HBASE-7048) | Regionsplitter requires the hadoop config path to be in hbase classpath |  Major | . | Ted Yu |  |
| [HBASE-5974](https://issues.apache.org/jira/browse/HBASE-5974) | Scanner retry behavior with RPC timeout on next() seems incorrect |  Critical | Client, regionserver | Todd Lipcon | Anoop Sam John |
| [HBASE-6846](https://issues.apache.org/jira/browse/HBASE-6846) | BitComparator bug - ArrayIndexOutOfBoundsException |  Major | Filters | Lucian George Iordache | Lucian George Iordache |
| [HBASE-6700](https://issues.apache.org/jira/browse/HBASE-6700) | [replication] empty znodes created during queue failovers aren't deleted |  Major | Replication | terry zhang | terry zhang |
| [HBASE-7051](https://issues.apache.org/jira/browse/HBASE-7051) | CheckAndPut should properly read MVCC |  Major | . | Gregory Chanan | Lars Hofhansl |
| [HBASE-6904](https://issues.apache.org/jira/browse/HBASE-6904) | In the HBase shell, an error is thrown that states replication-related znodes already exist |  Minor | Replication, Zookeeper | Aleksandr Shulman | Gregory Chanan |
| [HBASE-7060](https://issues.apache.org/jira/browse/HBASE-7060) | Region load balancing by table does not handle the case where a table's region count is lower than the number of the RS in the cluster |  Major | master | Tianying Chang | Ted Yu |
| [HBASE-6060](https://issues.apache.org/jira/browse/HBASE-6060) | Regions's in OPENING state from failed regionservers takes a long time to recover |  Major | master, regionserver | Enis Soztutar | Jimmy Xiang |
| [HBASE-7083](https://issues.apache.org/jira/browse/HBASE-7083) | SSH#fixupDaughter should force re-assign missing daughter |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7070](https://issues.apache.org/jira/browse/HBASE-7070) | Scanner may retry forever  after HBASE-5974 |  Major | Client | chunhui shen | chunhui shen |
| [HBASE-7086](https://issues.apache.org/jira/browse/HBASE-7086) | Enhance ResourceChecker to log stack trace for potentially hanging threads |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7095](https://issues.apache.org/jira/browse/HBASE-7095) | Cannot set 'lenAsVal' for KeyOnlyFilter from shell |  Minor | Filters | Aditya Kishore | Aditya Kishore |
| [HBASE-6958](https://issues.apache.org/jira/browse/HBASE-6958) | TestAssignmentManager sometimes fails |  Major | test | Ted Yu | Jimmy Xiang |
| [HBASE-6894](https://issues.apache.org/jira/browse/HBASE-6894) | Adding metadata to a table in the shell is both arcane and painful |  Major | shell | stack | Sergey Shelukhin |
| [HBASE-6989](https://issues.apache.org/jira/browse/HBASE-6989) | Avoid unneceseary regular expression matching in ruby code for "list" command |  Minor | shell | Aditya Kishore | Aditya Kishore |
| [HBASE-7098](https://issues.apache.org/jira/browse/HBASE-7098) | Fix minor typos and formatting issues in HFileArchiver/HFileLink |  Minor | snapshots | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-6826](https://issues.apache.org/jira/browse/HBASE-6826) | [WINDOWS] TestFromClientSide failures |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6822](https://issues.apache.org/jira/browse/HBASE-6822) | [WINDOWS] MiniZookeeperCluster multiple daemons bind to the same port |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6820](https://issues.apache.org/jira/browse/HBASE-6820) | [WINDOWS] MiniZookeeperCluster should ensure that ZKDatabase is closed upon shutdown() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6823](https://issues.apache.org/jira/browse/HBASE-6823) | [WINDOWS] TestSplitTransaction fails due to the Log handle not released by a call to DaughterOpener.start() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6827](https://issues.apache.org/jira/browse/HBASE-6827) | [WINDOWS] TestScannerTimeout fails expecting a timeout |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6828](https://issues.apache.org/jira/browse/HBASE-6828) | [WINDOWS] TestMemoryBoundedLogMessageBuffer failures |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6831](https://issues.apache.org/jira/browse/HBASE-6831) | [WINDOWS] HBaseTestingUtility.expireSession() does not expire zookeeper session |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7046](https://issues.apache.org/jira/browse/HBASE-7046) | Fix resource leak in TestHLogSplit#testOldRecoveredEditsFileSidelined |  Major | wal | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7130](https://issues.apache.org/jira/browse/HBASE-7130) | NULL qualifier is ignored |  Major | Client, Protobufs | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6665](https://issues.apache.org/jira/browse/HBASE-6665) | ROOT region should not be splitted even with META row as explicit split key |  Major | . | Y. SREENIVASULU REDDY | rajeshbabu |
| [HBASE-7143](https://issues.apache.org/jira/browse/HBASE-7143) | TestMetaMigrationRemovingHTD fails when used with Hadoop 0.23/2.x |  Major | test | Andrey Klochkov | Andrey Klochkov |
| [HBASE-7103](https://issues.apache.org/jira/browse/HBASE-7103) | Need to fail split if SPLIT znode is deleted even before the split is completed. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4583](https://issues.apache.org/jira/browse/HBASE-4583) | Integrate RWCC with Append and Increment operations |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7148](https://issues.apache.org/jira/browse/HBASE-7148) | Some files in hbase-examples module miss license header |  Major | . | Ted Yu | Enis Soztutar |
| [HBASE-7104](https://issues.apache.org/jira/browse/HBASE-7104) | HBase includes multiple versions of netty: 3.5.0; 3.2.4; 3.2.2 |  Minor | build | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7165](https://issues.apache.org/jira/browse/HBASE-7165) | TestSplitLogManager.testUnassignedTimeout is flaky |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7134](https://issues.apache.org/jira/browse/HBASE-7134) | incrementColumnValue hooks no longer called from anywhere |  Major | Coprocessors | Andrew Purtell | Andrew Purtell |
| [HBASE-7166](https://issues.apache.org/jira/browse/HBASE-7166) | TestSplitTransactionOnCluster tests are flaky |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7177](https://issues.apache.org/jira/browse/HBASE-7177) | TestZooKeeperScanPolicyObserver.testScanPolicyObserver is flaky |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-2645](https://issues.apache.org/jira/browse/HBASE-2645) | HLog writer can do 1-2 sync operations after lease has been recovered for split process. |  Blocker | Filters | Cosmin Lehene | Todd Lipcon |
| [HBASE-6830](https://issues.apache.org/jira/browse/HBASE-6830) | [WINDOWS] Tests should not rely on local temp dir to be available in DFS |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-7203](https://issues.apache.org/jira/browse/HBASE-7203) | Move example CoProcessor into hbase-examples |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-7214](https://issues.apache.org/jira/browse/HBASE-7214) | CleanerChore logs too much, so much so it obscures all else that is going on |  Major | . | stack | Jesse Yates |
| [HBASE-7159](https://issues.apache.org/jira/browse/HBASE-7159) | Upgrade zookeeper dependency to 3.4.5 |  Major | . | Ted Yu | stack |
| [HBASE-7229](https://issues.apache.org/jira/browse/HBASE-7229) | ClassFinder finds compat tests during mvn package, causing TestCheckTestClasses to fail |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7168](https://issues.apache.org/jira/browse/HBASE-7168) | [dev] in the script called 'hbase', we don't check for errors when generating the classpath with mvn |  Minor | scripts | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7172](https://issues.apache.org/jira/browse/HBASE-7172) | TestSplitLogManager.testVanishingTaskZNode() fails when run individually and is flaky |  Major | master | Enis Soztutar | Enis Soztutar |
| [HBASE-7235](https://issues.apache.org/jira/browse/HBASE-7235) | TestMasterObserver is flaky |  Major | Coprocessors, master, test | Enis Soztutar | Enis Soztutar |
| [HBASE-7215](https://issues.apache.org/jira/browse/HBASE-7215) | Put, Delete, Increment, Result, all all HBase M/R classes still implement/use Writable |  Blocker | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7232](https://issues.apache.org/jira/browse/HBASE-7232) | Remove HbaseMapWritable |  Major | . | stack | stack |
| [HBASE-7234](https://issues.apache.org/jira/browse/HBASE-7234) | Remove long-deprecated HServerAddress and HServerInfo Writables |  Blocker | . | stack | stack |
| [HBASE-1299](https://issues.apache.org/jira/browse/HBASE-1299) | JSPs don't HTML escape literals (ie: table names, region names, start & end keys) |  Major | . | Hoss Man | Nick Dimiduk |
| [HBASE-7264](https://issues.apache.org/jira/browse/HBASE-7264) | Improve Snappy installation documentation |  Minor | documentation | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7256](https://issues.apache.org/jira/browse/HBASE-7256) | Quick Start Guide shows stable version as 0.95, in the stable folder it is 0.94 |  Minor | documentation | Sumod Pawgi | stack |
| [HBASE-7265](https://issues.apache.org/jira/browse/HBASE-7265) | Make Maven skip module test properties consistent |  Minor | build | Elliott Clark | Elliott Clark |
| [HBASE-6879](https://issues.apache.org/jira/browse/HBASE-6879) | Add HBase Code Template |  Major | build, documentation | Jesse Yates | Jesse Yates |
| [HBASE-6707](https://issues.apache.org/jira/browse/HBASE-6707) | TEST org.apache.hadoop.hbase.backup.example.TestZooKeeperTableArchiveClient.testMultipleTables flaps |  Critical | test | Sameer Vaishampayan | Jesse Yates |
| [HBASE-7270](https://issues.apache.org/jira/browse/HBASE-7270) | Remove MultiPut and MultiPutResponse to satisfy rat-check |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-6423](https://issues.apache.org/jira/browse/HBASE-6423) | Writes should not block reads on blocking updates to memstores |  Major | . | Karthik Ranganathan | Jimmy Xiang |
| [HBASE-7260](https://issues.apache.org/jira/browse/HBASE-7260) | Upgrade hadoop 1 dependency to hadoop 1.1.1 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7008](https://issues.apache.org/jira/browse/HBASE-7008) | Set scanner caching to a better default, disable Nagles |  Major | Client | Liang Xie | Liang Xie |
| [HBASE-7277](https://issues.apache.org/jira/browse/HBASE-7277) | Thrift default JMX port should be 10103 instead of 8093 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7285](https://issues.apache.org/jira/browse/HBASE-7285) | HMaster fails to start with secure Hadoop |  Major | security | Gary Helmling | Gary Helmling |
| [HBASE-7279](https://issues.apache.org/jira/browse/HBASE-7279) | Avoid copying the rowkey in RegionScanner, StoreScanner, and ScanQueryMatcher |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7269](https://issues.apache.org/jira/browse/HBASE-7269) | Testing in place does not work if not building with default profile |  Major | . | Andrew Purtell | Nicolas Liochon |
| [HBASE-7300](https://issues.apache.org/jira/browse/HBASE-7300) | HbckTestingUtil needs to keep a static executor to lower the number of threads used |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7301](https://issues.apache.org/jira/browse/HBASE-7301) | Force ipv4 for unit tests |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-7309](https://issues.apache.org/jira/browse/HBASE-7309) | Metrics refresh-task is not canceled when regions are closed, leaking HRegion objects |  Critical | metrics, regionserver | Adrian Muraru | Adrian Muraru |
| [HBASE-6317](https://issues.apache.org/jira/browse/HBASE-6317) | Master clean start up and Partially enabled tables make region assignment inconsistent. |  Major | . | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-7314](https://issues.apache.org/jira/browse/HBASE-7314) | Can't start REST/Thrift server if HBASE\_JMX\_OPTS not set |  Minor | scripts | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7180](https://issues.apache.org/jira/browse/HBASE-7180) | RegionScannerImpl.next() is inefficient. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7271](https://issues.apache.org/jira/browse/HBASE-7271) | Have a single executor for all zkWorkers in the assignment manager |  Major | master, Region Assignment | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7307](https://issues.apache.org/jira/browse/HBASE-7307) | MetaReader.tableExists should not return false if the specified table regions has been split |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-7243](https://issues.apache.org/jira/browse/HBASE-7243) | Test for creating a large number of regions |  Major | Region Assignment, regionserver, test | Enis Soztutar | Nick Dimiduk |
| [HBASE-7338](https://issues.apache.org/jira/browse/HBASE-7338) | Fix flaky condition for org.apache.hadoop.hbase.TestRegionRebalancing.testRebalanceOnRegionServerNumberChange |  Minor | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7205](https://issues.apache.org/jira/browse/HBASE-7205) | Coprocessor classloader is replicated for all regions in the HRegionServer |  Critical | Coprocessors | Adrian Muraru | Ted Yu |
| [HBASE-7355](https://issues.apache.org/jira/browse/HBASE-7355) | NPE in ClusterStatus PB conversion |  Major | Coprocessors, Protobufs | Andrew Purtell | Andrew Purtell |
| [HBASE-7342](https://issues.apache.org/jira/browse/HBASE-7342) | Split operation without split key incorrectly finds the middle key in off-by-one error |  Minor | HFile, io | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-7376](https://issues.apache.org/jira/browse/HBASE-7376) | Acquiring readLock does not apply timeout in HRegion#flushcache |  Major | regionserver | binlijin | binlijin |
| [HBASE-7202](https://issues.apache.org/jira/browse/HBASE-7202) | Family Store Files are not archived on admin.deleteColumn() |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7158](https://issues.apache.org/jira/browse/HBASE-7158) | Allow CopyTable to identify the source cluster (for replication scenarios) |  Major | . | Lars Hofhansl | Jean-Daniel Cryans |
| [HBASE-7373](https://issues.apache.org/jira/browse/HBASE-7373) | table should not be required in AccessControlService |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7091](https://issues.apache.org/jira/browse/HBASE-7091) | support custom GC options in hbase-env.sh |  Major | scripts | Jesse Yates | Jesse Yates |
| [HBASE-5553](https://issues.apache.org/jira/browse/HBASE-5553) | Revisit our jmx view |  Major | . | stack | Elliott Clark |
| [HBASE-7421](https://issues.apache.org/jira/browse/HBASE-7421) | TestHFileCleaner-\>testHFileCleaning  has an aggressive timeout |  Minor | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7435](https://issues.apache.org/jira/browse/HBASE-7435) | BuiltInGzipDecompressor is only released during full GC |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7446](https://issues.apache.org/jira/browse/HBASE-7446) | Make the reference guide utf8 rather than 8859 |  Major | . | stack | stack |
| [HBASE-7443](https://issues.apache.org/jira/browse/HBASE-7443) | More findbugs fixes |  Minor | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7412](https://issues.apache.org/jira/browse/HBASE-7412) | Fix how HTableDescriptor handles default max file size and flush size |  Minor | regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7440](https://issues.apache.org/jira/browse/HBASE-7440) | ReplicationZookeeper#addPeer is racy |  Major | Replication | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7455](https://issues.apache.org/jira/browse/HBASE-7455) | Increase timeouts in TestReplication and TestSplitLogWorker |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7459](https://issues.apache.org/jira/browse/HBASE-7459) | NPE in HMaster TestlocalHBaseCluster |  Major | master, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7457](https://issues.apache.org/jira/browse/HBASE-7457) | Fix javadoc warnings in hadoopqa tool, it complains about unsafe accesses |  Major | . | stack | stack |
| [HBASE-7390](https://issues.apache.org/jira/browse/HBASE-7390) | Add extra test cases for assignement on the region server and fix the related issues |  Major | Region Assignment, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7464](https://issues.apache.org/jira/browse/HBASE-7464) | [REST] Sending HTML for errors is unhelpful |  Minor | REST | Chip Salzenberg | Andrew Purtell |
| [HBASE-6811](https://issues.apache.org/jira/browse/HBASE-6811) | TestDrainingServer#testDrainingServerWithAbort sometimes fails in trunk |  Major | . | Ted Yu | Nicolas Liochon |
| [HBASE-7467](https://issues.apache.org/jira/browse/HBASE-7467) | CleanerChore checkAndDeleteDirectory not deleting empty directories |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7485](https://issues.apache.org/jira/browse/HBASE-7485) | TestSplitLogManager is still flaky on windows |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7490](https://issues.apache.org/jira/browse/HBASE-7490) | dev-support script to generate protobuf code. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7423](https://issues.apache.org/jira/browse/HBASE-7423) | HFileArchiver should not use the configuration from the Filesystem |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7475](https://issues.apache.org/jira/browse/HBASE-7475) | TestUpgradeFromHFileV1ToEncoding.testUpgrade hangs |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7489](https://issues.apache.org/jira/browse/HBASE-7489) | TestHCM is racy |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7498](https://issues.apache.org/jira/browse/HBASE-7498) | Make REST server thread pool size configurable |  Major | REST | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7499](https://issues.apache.org/jira/browse/HBASE-7499) | TestScannerTimeout timeout is too aggressive. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7476](https://issues.apache.org/jira/browse/HBASE-7476) | HBase shell count command doesn't escape binary output |  Minor | shell | Gabriel Reid | Gabriel Reid |
| [HBASE-7513](https://issues.apache.org/jira/browse/HBASE-7513) | HDFSBlocksDistribution shouldn't send NPEs when something goes wrong |  Minor | . | Jean-Daniel Cryans | Elliott Clark |
| [HBASE-7515](https://issues.apache.org/jira/browse/HBASE-7515) | Store.loadStoreFiles should close opened files if there's an exception |  Major | . | Jean-Daniel Cryans | Ted Yu |
| [HBASE-6824](https://issues.apache.org/jira/browse/HBASE-6824) | Introduce ${hbase.local.dir} and save coprocessor jars there |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7524](https://issues.apache.org/jira/browse/HBASE-7524) | hbase-policy.xml is improperly set thus all rules in it can be by-passed |  Major | security | Kai Zheng | Kai Zheng |
| [HBASE-7505](https://issues.apache.org/jira/browse/HBASE-7505) | Server will hang when stopping cluster, caused by waiting for split threads |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-7528](https://issues.apache.org/jira/browse/HBASE-7528) | Unhelpful NPE in hbck -repair when adopting orphans if no tableinfo is found. |  Trivial | hbck | Jonathan Hsieh | Sergey Shelukhin |
| [HBASE-7530](https://issues.apache.org/jira/browse/HBASE-7530) | [replication] Work around HDFS-4380 else we get NPEs |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7531](https://issues.apache.org/jira/browse/HBASE-7531) | [replication] NPE in SequenceFileLogReader because ReplicationSource doesn't nullify the reader |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7534](https://issues.apache.org/jira/browse/HBASE-7534) | [replication] TestReplication.queueFailover can fail because HBaseTestingUtility.createMultiRegions is dangerous |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7529](https://issues.apache.org/jira/browse/HBASE-7529) | Wrong ExecutorType for EventType.M\_RS\_OPEN\_ROOT in trunk |  Critical | regionserver | chunhui shen | chunhui shen |
| [HBASE-7504](https://issues.apache.org/jira/browse/HBASE-7504) | -ROOT- may be offline forever after FullGC of  RS |  Major | . | chunhui shen | chunhui shen |
| [HBASE-7508](https://issues.apache.org/jira/browse/HBASE-7508) | Fix simple findbugs |  Trivial | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7486](https://issues.apache.org/jira/browse/HBASE-7486) | master pid file is not getting removed if we stop hbase from stop-hbase.sh |  Minor | shell | rajeshbabu | rajeshbabu |
| [HBASE-7363](https://issues.apache.org/jira/browse/HBASE-7363) | Fix javadocs warnings for hbase-server packages from master to end |  Minor | documentation | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7258](https://issues.apache.org/jira/browse/HBASE-7258) | Hbase needs to create baseZNode recursively |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-4709](https://issues.apache.org/jira/browse/HBASE-4709) | Hadoop metrics2 setup in test MiniDFSClusters spewing JMX errors |  Minor | test | Gary Helmling |  |
| [HBASE-7506](https://issues.apache.org/jira/browse/HBASE-7506) | Judgment of carrying ROOT/META will become wrong when expiring server |  Major | . | chunhui shen | chunhui shen |
| [HBASE-7450](https://issues.apache.org/jira/browse/HBASE-7450) | orphan RPC connection in HBaseClient leaves "null" out member, causing NPE in HCM |  Major | IPC/RPC | Zavier Gao | Zavier Gao |
| [HBASE-6948](https://issues.apache.org/jira/browse/HBASE-6948) | shell create table script cannot handle split key which is expressed in raw bytes |  Major | . | Ted Yu | Tianying Chang |
| [HBASE-6499](https://issues.apache.org/jira/browse/HBASE-6499) | StoreScanner's QueryMatcher not reset on store update |  Major | regionserver | Max Lapan | Max Lapan |
| [HBASE-7502](https://issues.apache.org/jira/browse/HBASE-7502) | TestScannerTimeout fails on snapshot branch |  Major | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7554](https://issues.apache.org/jira/browse/HBASE-7554) | TestZooKeeper depends on the execution order |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7553](https://issues.apache.org/jira/browse/HBASE-7553) | TestServerCustomProtocol depends on the test methods execution order |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7552](https://issues.apache.org/jira/browse/HBASE-7552) | Pass bufferSize param to FileLinkInputStream constructor within FileLink.open method, and remove unnecessary import packages. |  Minor | io | Julian Zhou | Julian Zhou |
| [HBASE-7555](https://issues.apache.org/jira/browse/HBASE-7555) | Kill the remaining processus from other builds in the precommit env |  Major | build | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7556](https://issues.apache.org/jira/browse/HBASE-7556) | TestAdmin depends on the execution order |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7537](https://issues.apache.org/jira/browse/HBASE-7537) | .regioninfo not created by createHRegion() |  Major | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7383](https://issues.apache.org/jira/browse/HBASE-7383) | create integration test for HBASE-5416 (improving scan performance for certain filters) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7551](https://issues.apache.org/jira/browse/HBASE-7551) | nodeChildrenChange event may happen after the transition to RS\_ZK\_REGION\_SPLITTING in SplitTransaction causing the SPLIT event to be missed in the master side. |  Critical | master | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-7549](https://issues.apache.org/jira/browse/HBASE-7549) | Make HTableInterface#batch() javadoc proper |  Trivial | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-7574](https://issues.apache.org/jira/browse/HBASE-7574) | Migrate to JUnit 4.11 |  Major | build, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7575](https://issues.apache.org/jira/browse/HBASE-7575) | FSUtils#getTableStoreFilePathMap should all ignore non-table folders |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7560](https://issues.apache.org/jira/browse/HBASE-7560) | TestCompactionState failures |  Major | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7581](https://issues.apache.org/jira/browse/HBASE-7581) | TestAccessController depends on the execution order |  Major | build | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7584](https://issues.apache.org/jira/browse/HBASE-7584) | Improve TestAccessController.testAppend |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-7586](https://issues.apache.org/jira/browse/HBASE-7586) | Fix two findbugs warnings to get our count down to the tolerated number again |  Major | . | stack | stack |
| [HBASE-7587](https://issues.apache.org/jira/browse/HBASE-7587) | Fix two findbugs warning in RowResource |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7578](https://issues.apache.org/jira/browse/HBASE-7578) | TestCatalogTracker hangs occasionally |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7527](https://issues.apache.org/jira/browse/HBASE-7527) | integration tests STILL won't run from tar.gz in trunk |  Major | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7595](https://issues.apache.org/jira/browse/HBASE-7595) | Fix one findbug warning in ReplicationSourceManager |  Trivial | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-7602](https://issues.apache.org/jira/browse/HBASE-7602) | TestFromClientSide.testPoolBehavior is incorrect |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7034](https://issues.apache.org/jira/browse/HBASE-7034) | Bad version, failed OPENING to OPENED but master thinks it is open anyways |  Major | Region Assignment | stack | Anoop Sam John |
| [HBASE-7596](https://issues.apache.org/jira/browse/HBASE-7596) | Redundant FSTableDescriptor update |  Trivial | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7619](https://issues.apache.org/jira/browse/HBASE-7619) | tiny correction in the book |  Trivial | documentation | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7299](https://issues.apache.org/jira/browse/HBASE-7299) | TestMultiParallel fails intermittently in trunk builds |  Critical | . | Ted Yu | chunhui shen |
| [HBASE-5458](https://issues.apache.org/jira/browse/HBASE-5458) | Thread safety issues with Compression.Algorithm.GZ and CompressionTest |  Minor | io | David McIntosh | Elliott Clark |
| [HBASE-7542](https://issues.apache.org/jira/browse/HBASE-7542) | SCVF: Avoid sending two unwanted boolean values from client to RS |  Minor | Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-7601](https://issues.apache.org/jira/browse/HBASE-7601) | Fix 8 remaining EQ findbug warnings from hbase-server. |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-3170](https://issues.apache.org/jira/browse/HBASE-3170) | RegionServer confused about empty row keys |  Critical | regionserver | Benoit Sigoure | Devaraj Das |
| [HBASE-6907](https://issues.apache.org/jira/browse/HBASE-6907) | KeyValue equals and compareTo methods should match |  Major | util | Matt Corgan | Ted Yu |
| [HBASE-7635](https://issues.apache.org/jira/browse/HBASE-7635) | Proxy created by HFileSystem#createReorderingProxy() should implement Closeable |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7642](https://issues.apache.org/jira/browse/HBASE-7642) | HBase shell cannot set Compression |  Major | shell | Enis Soztutar | Enis Soztutar |
| [HBASE-7646](https://issues.apache.org/jira/browse/HBASE-7646) | Make forkedProcessTimeoutInSeconds configurable |  Trivial | build | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7588](https://issues.apache.org/jira/browse/HBASE-7588) | Fix two findbugs warning in MemStoreFlusher |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7293](https://issues.apache.org/jira/browse/HBASE-7293) | [replication] Remove dead sinks from ReplicationSource.currentPeers and pick new ones |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-7648](https://issues.apache.org/jira/browse/HBASE-7648) | TestAcidGuarantees.testMixedAtomicity hangs sometimes |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6832](https://issues.apache.org/jira/browse/HBASE-6832) | [WINDOWS] Tests should use explicit timestamp for Puts, and not rely on implicit RS timing |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6829](https://issues.apache.org/jira/browse/HBASE-6829) | [WINDOWS] Tests should ensure that HLog is closed |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7594](https://issues.apache.org/jira/browse/HBASE-7594) | TestLocalHBaseCluster failing on ubuntu2 |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-6821](https://issues.apache.org/jira/browse/HBASE-6821) | [WINDOWS] In TestMetaMigrationConvertingToPB .META. table name causes file system problems on windows |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7637](https://issues.apache.org/jira/browse/HBASE-7637) | hbase-hadoop1-compat conflicts with -Dhadoop.profile=2.0 |  Critical | build | Nicolas Liochon | Elliott Clark |
| [HBASE-7656](https://issues.apache.org/jira/browse/HBASE-7656) | Clean up line endings to be LF in the repo |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7657](https://issues.apache.org/jira/browse/HBASE-7657) | Make ModifyTableHandler synchronous |  Major | Admin, Client | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7382](https://issues.apache.org/jira/browse/HBASE-7382) | Port ZK.multi support from HBASE-6775 to 0.96 |  Critical | Zookeeper | Gregory Chanan | Himanshu Vashishtha |
| [HBASE-7665](https://issues.apache.org/jira/browse/HBASE-7665) | retry time sequence usage in HConnectionManager has off-by-one error |  Trivial | Client | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7654](https://issues.apache.org/jira/browse/HBASE-7654) | Add List\<String\> getCoprocessors() to HTableDescriptor |  Critical | Client, Coprocessors | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7643](https://issues.apache.org/jira/browse/HBASE-7643) | HFileArchiver.resolveAndArchive() race condition may lead to snapshot data loss |  Blocker | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7682](https://issues.apache.org/jira/browse/HBASE-7682) | Replace HRegion custom File-System debug, with FSUtils.logFileSystemState() |  Trivial | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7681](https://issues.apache.org/jira/browse/HBASE-7681) | Address some recent random test failures |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7669](https://issues.apache.org/jira/browse/HBASE-7669) | ROOT region wouldn't  be handled by PRI-IPC-Handler |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-7693](https://issues.apache.org/jira/browse/HBASE-7693) | Hostname returned by TableInputFormatBase.reverseDNS contains trailing period |  Trivial | mapreduce | Robert Dyer | Robert Dyer |
| [HBASE-7676](https://issues.apache.org/jira/browse/HBASE-7676) | [WINDOWS] TestClassFinder fails on Windows |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-7673](https://issues.apache.org/jira/browse/HBASE-7673) | Incorrect error logging when a replication peer is removed |  Minor | Replication | Gabriel Reid | Gabriel Reid |
| [HBASE-7688](https://issues.apache.org/jira/browse/HBASE-7688) | Master coprocessor RPCs don't propagate exceptions |  Major | Protobufs | Mike Lewis | Mike Lewis |
| [HBASE-7545](https://issues.apache.org/jira/browse/HBASE-7545) | [replication] Break out TestReplication into manageable classes |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7702](https://issues.apache.org/jira/browse/HBASE-7702) | Adding filtering to Import jobs |  Major | mapreduce | Jesse Yates | Jesse Yates |
| [HBASE-7717](https://issues.apache.org/jira/browse/HBASE-7717) | Wait until regions are assigned in TestSplitTransactionOnCluster |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7715](https://issues.apache.org/jira/browse/HBASE-7715) | FSUtils#waitOnSafeMode can incorrectly loop on standby NN |  Major | . | Andrew Wang | Ted Yu |
| [HBASE-7711](https://issues.apache.org/jira/browse/HBASE-7711) | rowlock release problem with thread interruptions in batchMutate |  Major | . | Jonathan Hsieh | Ted Yu |
| [HBASE-7729](https://issues.apache.org/jira/browse/HBASE-7729) | TestCatalogTrackerOnCluster.testbadOriginalRootLocation fails occasionally |  Major | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-3890](https://issues.apache.org/jira/browse/HBASE-3890) | Scheduled tasks in distributed log splitting not in sync with ZK |  Critical | regionserver | Lars George | Jeffrey Zhong |
| [HBASE-7701](https://issues.apache.org/jira/browse/HBASE-7701) | Opening regions on dead server are not reassigned quickly |  Major | . | Sergey Shelukhin | Jimmy Xiang |
| [HBASE-7731](https://issues.apache.org/jira/browse/HBASE-7731) | Append/Increment methods in HRegion don't check whether the table is readonly or not |  Major | regionserver | Devaraj Das | Devaraj Das |
| [HBASE-7728](https://issues.apache.org/jira/browse/HBASE-7728) | deadlock occurs between hlog roller and hlog syncer |  Blocker | wal | Wang Qiang | Ted Yu |
| [HBASE-7740](https://issues.apache.org/jira/browse/HBASE-7740) | Recheck matching row for joined scanners |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7760](https://issues.apache.org/jira/browse/HBASE-7760) | tiny issue in ChaosMonkey - kills meta server instead of root |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7756](https://issues.apache.org/jira/browse/HBASE-7756) | Strange code in ServerCallable#shouldRetry |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7771](https://issues.apache.org/jira/browse/HBASE-7771) | Secure HBase Client in MR job causes tasks to wait forever |  Major | . | Francis Liu | Francis Liu |
| [HBASE-6513](https://issues.apache.org/jira/browse/HBASE-6513) | Test errors when building on MacOS |  Major | build | Archimedes Trajano | Lars Francke |
| [HBASE-7772](https://issues.apache.org/jira/browse/HBASE-7772) | clusterId is not set in conf properly if only TableMapReduceUtil.initCredentials() is called |  Major | . | Francis Liu | Francis Liu |
| [HBASE-7768](https://issues.apache.org/jira/browse/HBASE-7768) | zkcluster in local mode not seeing configurations in hbase-{site\|default}.xml |  Minor | . | rajeshbabu | rajeshbabu |
| [HBASE-6782](https://issues.apache.org/jira/browse/HBASE-6782) | HBase shell's 'status 'detailed'' should escape the printed keys |  Minor | shell | Viji | Viji |
| [HBASE-7698](https://issues.apache.org/jira/browse/HBASE-7698) | race between RS shutdown thread and openregionhandler causes region to get stuck |  Major | . | Sergey Shelukhin | ramkrishna.s.vasudevan |
| [HBASE-7785](https://issues.apache.org/jira/browse/HBASE-7785) | rolling-restart.sh script unable to check expiration of master znode |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-7787](https://issues.apache.org/jira/browse/HBASE-7787) | Remove HLogSplitter.RECOVERED\_EDITS duplicate of HLog.RECOVERED\_EDITS\_DIR |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7776](https://issues.apache.org/jira/browse/HBASE-7776) | Use ErrorReporter/Log instead of System.out in hbck |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7786](https://issues.apache.org/jira/browse/HBASE-7786) | Consolidate HRegion creation/opening API |  Major | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7777](https://issues.apache.org/jira/browse/HBASE-7777) | HBCK check for lingering split parents should check for child regions |  Major | hbck, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-7804](https://issues.apache.org/jira/browse/HBASE-7804) | Minor typo in Appendix B. hbck In Depth section of book |  Minor | documentation, hbck | rajeshbabu | rajeshbabu |
| [HBASE-7763](https://issues.apache.org/jira/browse/HBASE-7763) | Compactions not sorting based on size anymore. |  Critical | Compaction | Elliott Clark | Elliott Clark |
| [HBASE-6132](https://issues.apache.org/jira/browse/HBASE-6132) | ColumnCountGetFilter & PageFilter not working with FilterList |  Major | Filters | Benjamin Kim | Anoop Sam John |
| [HBASE-7761](https://issues.apache.org/jira/browse/HBASE-7761) | MemStore.USEMSLAB\_DEFAULT is false, hbase-default.xml says it's true |  Minor | . | Jean-Daniel Cryans | Anoop Sam John |
| [HBASE-7407](https://issues.apache.org/jira/browse/HBASE-7407) | TestMasterFailover under tests some cases and over tests some others |  Minor | master, Region Assignment, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7789](https://issues.apache.org/jira/browse/HBASE-7789) | Clean DeadServer.java and add a Jitter method in ConnectionUtils |  Major | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7829](https://issues.apache.org/jira/browse/HBASE-7829) | zookeeper kerberos conf keytab and principal parameters interchanged |  Minor | . | Francis Liu | Francis Liu |
| [HBASE-7830](https://issues.apache.org/jira/browse/HBASE-7830) | Disable IntegrationTestRebalanceAndKillServersTargeted temporarily |  Major | . | stack | stack |
| [HBASE-7798](https://issues.apache.org/jira/browse/HBASE-7798) | ZKAssign logs the wrong server if the transition fails |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7834](https://issues.apache.org/jira/browse/HBASE-7834) | Document Hadoop version support matrix in the book |  Major | documentation | Enis Soztutar | Enis Soztutar |
| [HBASE-7799](https://issues.apache.org/jira/browse/HBASE-7799) | reassigning region stuck in open still may not work correctly due to leftover ZK node |  Major | . | Sergey Shelukhin | Jimmy Xiang |
| [HBASE-7867](https://issues.apache.org/jira/browse/HBASE-7867) | setPreallocSize is different with COMMENT in setupTestEnv in MiniZooKeeperCluster.java |  Trivial | . | DaeMyung Kang | DaeMyung Kang |
| [HBASE-7290](https://issues.apache.org/jira/browse/HBASE-7290) | Online snapshots |  Blocker | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7800](https://issues.apache.org/jira/browse/HBASE-7800) | RegionMovedException can cause servers to play ping pong with client |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-6493](https://issues.apache.org/jira/browse/HBASE-6493) | HashSet of byte array is being used in couple of places |  Minor | . | Shrijeet Paliwal | Nick Dimiduk |
| [HBASE-7305](https://issues.apache.org/jira/browse/HBASE-7305) | ZK based Read/Write locks for table operations |  Major | Client, master, Zookeeper | Enis Soztutar | Enis Soztutar |
| [HBASE-7866](https://issues.apache.org/jira/browse/HBASE-7866) | TestSplitTransactionOnCluster.testSplitBeforeSettingSplittingInZK failed 3 times in a row |  Major | . | Lars Hofhansl | ramkrishna.s.vasudevan |
| [HBASE-7901](https://issues.apache.org/jira/browse/HBASE-7901) | TestStore::testDeleteExpiredStoreFiles has a hidden issue |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-6748](https://issues.apache.org/jira/browse/HBASE-6748) | Endless recursive of deleteNode happened in SplitLogManager#DeleteAsyncCallback |  Major | master | Jieshan Bean | Jeffrey Zhong |
| [HBASE-7520](https://issues.apache.org/jira/browse/HBASE-7520) | org.apache.hadoop.hbase.IntegrationTestRebalanceAndKillServersTargeted fails when I cd hbase-it and mvn verify |  Critical | test | stack | Sergey Shelukhin |
| [HBASE-7911](https://issues.apache.org/jira/browse/HBASE-7911) | Remove duplicated code from CreateTableHandler |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7879](https://issues.apache.org/jira/browse/HBASE-7879) | JUnit dependency in main from htrace |  Minor | build | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7926](https://issues.apache.org/jira/browse/HBASE-7926) | SmallTests pollute the META descriptor |  Critical | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5598](https://issues.apache.org/jira/browse/HBASE-5598) | Analyse and fix the findbugs reporting by QA and add invalid bugs into findbugs-excludeFilter file |  Critical | scripts | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HBASE-7507](https://issues.apache.org/jira/browse/HBASE-7507) | Make memstore flush be able to retry after exception |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-7915](https://issues.apache.org/jira/browse/HBASE-7915) | Secure ThriftServer needs to login before calling HBaseHandler |  Major | security, Thrift | Arpit Gupta | Arpit Gupta |
| [HBASE-7884](https://issues.apache.org/jira/browse/HBASE-7884) | ByteBloomFilter's performance can be improved by avoiding multiplication when generating hash |  Minor | Performance | Sean Zhong | Sean Zhong |
| [HBASE-7671](https://issues.apache.org/jira/browse/HBASE-7671) | Flushing memstore again after last failure could cause data loss |  Major | . | chunhui shen | chunhui shen |
| [HBASE-7913](https://issues.apache.org/jira/browse/HBASE-7913) | Secure Rest server should login before getting an instance of Rest servlet |  Major | REST, security | Arpit Gupta | Arpit Gupta |
| [HBASE-7719](https://issues.apache.org/jira/browse/HBASE-7719) | HTableDescriptor.setDeferredLogFlush should be synchronized |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7883](https://issues.apache.org/jira/browse/HBASE-7883) | Update memstore size when removing the entries in append operation |  Major | regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-6972](https://issues.apache.org/jira/browse/HBASE-6972) | HBase Shell deleteall should not require column to be defined |  Major | shell | Ricky Saltzer | Ricky Saltzer |
| [HBASE-7797](https://issues.apache.org/jira/browse/HBASE-7797) | Use consistent package name |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7940](https://issues.apache.org/jira/browse/HBASE-7940) | Upgrade version to 0.97-SNAPSHOT in pom.xml files |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7945](https://issues.apache.org/jira/browse/HBASE-7945) | Remove flaky TestCatalogTrackerOnCluster |  Major | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7933](https://issues.apache.org/jira/browse/HBASE-7933) | NPE in TableLockManager |  Critical | master, Zookeeper | Enis Soztutar | Enis Soztutar |
| [HBASE-7114](https://issues.apache.org/jira/browse/HBASE-7114) | Increment does not extend Mutation but probably should |  Critical | Client | Andrew Purtell | stack |
| [HBASE-7951](https://issues.apache.org/jira/browse/HBASE-7951) | TestNodeHealthCheckChore.testHealthChecker failed 0.95 build #3 |  Major | . | stack | stack |
| [HBASE-7725](https://issues.apache.org/jira/browse/HBASE-7725) | Add ability to create custom compaction request |  Major | Compaction, Coprocessors, regionserver | Jesse Yates | Jesse Yates |
| [HBASE-7956](https://issues.apache.org/jira/browse/HBASE-7956) | RegionCoprocessorRpcChannel should log rpc requests at TRACE level rather than DEBUG |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7955](https://issues.apache.org/jira/browse/HBASE-7955) | Remove log "ERROR snapshot.SnapshotFileCache: Snapshot directory doesn't exist" |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-7700](https://issues.apache.org/jira/browse/HBASE-7700) | TestColumnSeeking is mathematically bound to fail |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7869](https://issues.apache.org/jira/browse/HBASE-7869) | Provide way to not start LogSyncer thread |  Major | regionserver, wal | Anoop Sam John | Anoop Sam John |
| [HBASE-7969](https://issues.apache.org/jira/browse/HBASE-7969) | Rename HBaseAdmin#getCompletedSnapshots as HBaseAdmin#listSnapshots |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7947](https://issues.apache.org/jira/browse/HBASE-7947) | Custom compaction requests should have test for adding to wrong list |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-7968](https://issues.apache.org/jira/browse/HBASE-7968) | Packaging of Trunk and 0.95 does not create the dependent jars in the lib folder |  Critical | . | ramkrishna.s.vasudevan | Nicolas Liochon |
| [HBASE-7723](https://issues.apache.org/jira/browse/HBASE-7723) | Remove NameNode URI from ZK splitlogs |  Major | hadoop2, master | Kevin Odell | Himanshu Vashishtha |
| [HBASE-6347](https://issues.apache.org/jira/browse/HBASE-6347) | -ROOT- and .META. are stale in table.jsp if they moved |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-7111](https://issues.apache.org/jira/browse/HBASE-7111) | hbase zkcli will not start if the zookeeper server chosen to connect to is unavailable |  Major | Zookeeper | Zhou wenjian | Zhou wenjian |
| [HBASE-7986](https://issues.apache.org/jira/browse/HBASE-7986) | [REST] Make HTablePool size configurable |  Major | REST | binlijin | binlijin |
| [HBASE-8007](https://issues.apache.org/jira/browse/HBASE-8007) | Adopt TestLoadAndVerify from BigTop |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-7153](https://issues.apache.org/jira/browse/HBASE-7153) | print gc option in hbase-env.sh affects hbase zkcli |  Major | scripts | wonderyl | Dave Latham |
| [HBASE-7982](https://issues.apache.org/jira/browse/HBASE-7982) | TestReplicationQueueFailover\* runs for a minute, spews 3/4million lines complaining 'Filesystem closed', has an NPE, and still passes? |  Blocker | build | stack | Jeffrey Zhong |
| [HBASE-8002](https://issues.apache.org/jira/browse/HBASE-8002) | Make TimeOut Management for Assignment optional in master and regionservers |  Major | Client, master, Region Assignment | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8027](https://issues.apache.org/jira/browse/HBASE-8027) | hbase-7994 redux; shutdown hbase-example unit tests |  Major | test | stack | stack |
| [HBASE-8032](https://issues.apache.org/jira/browse/HBASE-8032) | TestNodeHealthCheckChore.testHealthChecker failed 0.95 build #36 |  Major | . | stack | stack |
| [HBASE-8033](https://issues.apache.org/jira/browse/HBASE-8033) | Break TestRestoreSnapshotFromClient into TestRestoreSnapshotFromClient and TestCloneSnapshotFromClient |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8022](https://issues.apache.org/jira/browse/HBASE-8022) | Site target fails |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-8004](https://issues.apache.org/jira/browse/HBASE-8004) | Creating an existing table from Shell does not throw TableExistsException |  Major | . | ramkrishna.s.vasudevan | Jeffrey Zhong |
| [HBASE-8041](https://issues.apache.org/jira/browse/HBASE-8041) | WebUI doesn't display snapshots correctly |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8043](https://issues.apache.org/jira/browse/HBASE-8043) | Fix a few javadoc warnings... |  Major | . | stack | stack |
| [HBASE-8042](https://issues.apache.org/jira/browse/HBASE-8042) | Offline Meta Repair no longer points to the correct location |  Major | documentation | Kevin Odell | Kevin Odell |
| [HBASE-8021](https://issues.apache.org/jira/browse/HBASE-8021) | TestSplitTransactionOnCluster.testShouldThrowIOExceptionIfStoreFileSizeIsEmptyAndShouldSuccessfullyExecuteRollback() fails consistently |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8050](https://issues.apache.org/jira/browse/HBASE-8050) | Small fix to book/hbase.tests.html |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8052](https://issues.apache.org/jira/browse/HBASE-8052) | TestHBaseFsck#testQuarantineMissingFamdir fails sporadically |  Major | . | stack | stack |
| [HBASE-8058](https://issues.apache.org/jira/browse/HBASE-8058) | Upgrade site plugin; fix assembly doc up on jenkins builds |  Blocker | site | stack | stack |
| [HBASE-8068](https://issues.apache.org/jira/browse/HBASE-8068) | TestMasterMetricsWrapper failed in 0.95 #60 jenkins |  Major | metrics | stack | stack |
| [HBASE-8069](https://issues.apache.org/jira/browse/HBASE-8069) | TestHLog is dependent on the execution order |  Major | test, wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8055](https://issues.apache.org/jira/browse/HBASE-8055) | Null check missing in StoreFile.Reader.getMaxTimestamp() |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8057](https://issues.apache.org/jira/browse/HBASE-8057) | RegionLoad needs a toString implementation |  Major | . | Andrew Purtell | Jean-Marc Spaggiari |
| [HBASE-7482](https://issues.apache.org/jira/browse/HBASE-7482) | Port HBASE-7442 HBase remote CopyTable not working when security enabled to trunk |  Critical | . | Ted Yu | Gary Helmling |
| [HBASE-8012](https://issues.apache.org/jira/browse/HBASE-8012) | Reseek should position to the beginning of file for the first time it is invoked with a KV smaller than the first KV in file |  Minor | regionserver | Raymond Liu | Raymond Liu |
| [HBASE-8036](https://issues.apache.org/jira/browse/HBASE-8036) | ProtobufUtil.multi behavior is inconsistent in case of errors |  Blocker | . | Sergey Shelukhin | Enis Soztutar |
| [HBASE-8099](https://issues.apache.org/jira/browse/HBASE-8099) | ReplicationZookeeper.copyQueuesFromRSUsingMulti should not return any queues if it failed to execute. |  Blocker | . | Lars Hofhansl | Himanshu Vashishtha |
| [HBASE-8025](https://issues.apache.org/jira/browse/HBASE-8025) | zkcli fails when SERVER\_GC\_OPTS is enabled |  Major | . | Dave Latham | Dave Latham |
| [HBASE-8116](https://issues.apache.org/jira/browse/HBASE-8116) | TestSnapshotCloneIndependence fails in trunk builds intermittently |  Major | . | Ted Yu | Enis Soztutar |
| [HBASE-8118](https://issues.apache.org/jira/browse/HBASE-8118) | TestTablePermission depends on the execution order |  Major | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8123](https://issues.apache.org/jira/browse/HBASE-8123) | Replace HashMap/HashSet with TreeMap/TreeSet where byte[] is used as key |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8122](https://issues.apache.org/jira/browse/HBASE-8122) | TestAccessController depends on the execution order |  Major | security, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7501](https://issues.apache.org/jira/browse/HBASE-7501) | Introduce MetaEditor method that both adds and deletes rows in .META. table |  Major | . | Ted Yu | Matteo Bertozzi |
| [HBASE-8130](https://issues.apache.org/jira/browse/HBASE-8130) | initialize TableLockManager before initializing AssignmentManager |  Major | master | rajeshbabu | rajeshbabu |
| [HBASE-8128](https://issues.apache.org/jira/browse/HBASE-8128) | HTable#put improvements |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8097](https://issues.apache.org/jira/browse/HBASE-8097) | MetaServerShutdownHandler may potentially keep bumping up DeadServer.numProcessing |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8141](https://issues.apache.org/jira/browse/HBASE-8141) | Remove accidental uses of org.mortbay.log.Log |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-8108](https://issues.apache.org/jira/browse/HBASE-8108) | Add m2eclispe lifecycle mapping to hbase-common |  Major | build | Jesse Yates | Jesse Yates |
| [HBASE-8142](https://issues.apache.org/jira/browse/HBASE-8142) | Sporadic TestZKProcedureControllers failures on trunk |  Major | . | stack | Jeffrey Zhong |
| [HBASE-7992](https://issues.apache.org/jira/browse/HBASE-7992) | provide pre/post region offline hooks for HMaster.offlineRegion() |  Major | Coprocessors | rajeshbabu | rajeshbabu |
| [HBASE-8135](https://issues.apache.org/jira/browse/HBASE-8135) | Mutation should implement HeapSize |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7590](https://issues.apache.org/jira/browse/HBASE-7590) | Add a costless notifications mechanism from master to regionservers & clients |  Major | Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8138](https://issues.apache.org/jira/browse/HBASE-8138) | Using [packed=true] for repeated field of primitive numeric types (types which use the varint, 32-bit, or 64-bit wire types) |  Trivial | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8146](https://issues.apache.org/jira/browse/HBASE-8146) | IntegrationTestBigLinkedList does not work on distributed setup |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-8140](https://issues.apache.org/jira/browse/HBASE-8140) | TableMapReduceUtils#addDependencyJar fails when nested inside another MR job |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8131](https://issues.apache.org/jira/browse/HBASE-8131) | Create table handler needs to handle failure cases. |  Major | master | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-7546](https://issues.apache.org/jira/browse/HBASE-7546) | Obtain a table read lock on region split operations |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8151](https://issues.apache.org/jira/browse/HBASE-8151) | Decode memstoreTS in HFileReaderV2 only when necessary |  Major | HFile, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8160](https://issues.apache.org/jira/browse/HBASE-8160) | HMaster#move doesn't check if master initialized |  Trivial | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8175](https://issues.apache.org/jira/browse/HBASE-8175) | Include javadoc and book when site goal invoked |  Major | documentation | stack | stack |
| [HBASE-8030](https://issues.apache.org/jira/browse/HBASE-8030) | znode  path of online region servers is hard coded in rolling\_restart.sh |  Major | shell | rajeshbabu | rajeshbabu |
| [HBASE-8051](https://issues.apache.org/jira/browse/HBASE-8051) | 0.95 build failing on site goal: 'failed to get report for org.apache.maven.plugins:maven-project-info-reports-plugin: Could not find goal 'dependency-info'' |  Blocker | build | stack | stack |
| [HBASE-7458](https://issues.apache.org/jira/browse/HBASE-7458) | TestReplicationWithCompression fails intermittently in both PreCommit and trunk builds |  Critical | . | Ted Yu | Jeffrey Zhong |
| [HBASE-8166](https://issues.apache.org/jira/browse/HBASE-8166) | Avoid writing the memstoreTS into HFiles when possible |  Major | HFile, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8178](https://issues.apache.org/jira/browse/HBASE-8178) | IPCUtil produces a LOT of WARN log spew |  Critical | IPC/RPC | Sergey Shelukhin | stack |
| [HBASE-7878](https://issues.apache.org/jira/browse/HBASE-7878) | recoverFileLease does not check return value of recoverLease |  Critical | util | Eric Newton | Ted Yu |
| [HBASE-7957](https://issues.apache.org/jira/browse/HBASE-7957) | CloneSnapshotHandler.prepare() is not called by SnapshotManager |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-8005](https://issues.apache.org/jira/browse/HBASE-8005) | DemoClient.cpp   can not be built correctly |  Major | Thrift | Ling Kun |  |
| [HBASE-8170](https://issues.apache.org/jira/browse/HBASE-8170) | HbaseAdmin.createTable cannot handle creating three regions |  Minor | Admin | Edward C. Skoviak | Jean-Marc Spaggiari |
| [HBASE-7597](https://issues.apache.org/jira/browse/HBASE-7597) | TestHBaseFsck#testRegionShouldNotBeDeployed seems to be flaky |  Major | . | Jean-Marc Spaggiari | Jimmy Xiang |
| [HBASE-8195](https://issues.apache.org/jira/browse/HBASE-8195) | hbase.table.archive.directory reference should be removed from hbase-default.xml |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8161](https://issues.apache.org/jira/browse/HBASE-8161) | setting blocking file count on table level doesn't work |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8144](https://issues.apache.org/jira/browse/HBASE-8144) | Limit number of attempts to assign a region |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8207](https://issues.apache.org/jira/browse/HBASE-8207) | Replication could have data loss when machine name contains hyphen "-" |  Critical | Replication | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8187](https://issues.apache.org/jira/browse/HBASE-8187) | trunk/0.95 tarball packaging |  Blocker | . | stack | stack |
| [HBASE-8222](https://issues.apache.org/jira/browse/HBASE-8222) | User class should implement equals() and hashCode() |  Critical | security | Gary Helmling | Ted Yu |
| [HBASE-8232](https://issues.apache.org/jira/browse/HBASE-8232) | TestAccessController occasionally fails with IndexOutOfBoundsException |  Trivial | security, test | Andrew Purtell | Andrew Purtell |
| [HBASE-8226](https://issues.apache.org/jira/browse/HBASE-8226) | HBaseTestingUtility#waitUntilAllRegionsAssigned won't return if it counts "too many" regions |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-8164](https://issues.apache.org/jira/browse/HBASE-8164) | TestTableLockManager fails intermittently in trunk builds |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8213](https://issues.apache.org/jira/browse/HBASE-8213) | global authorization may lose efficacy |  Critical | security | Jieshan Bean | Jieshan Bean |
| [HBASE-8236](https://issues.apache.org/jira/browse/HBASE-8236) | Set finalName property in hbase-assembly else basename is hbase-assembly rather than hbase. |  Major | . | stack | stack |
| [HBASE-8238](https://issues.apache.org/jira/browse/HBASE-8238) | xref docs missing from site gen |  Major | . | stack | stack |
| [HBASE-8225](https://issues.apache.org/jira/browse/HBASE-8225) | [replication] minor code bug when registering ReplicationLogCleaner |  Minor | Replication | Jerry He | Jerry He |
| [HBASE-8062](https://issues.apache.org/jira/browse/HBASE-8062) | Replace HBaseFsck.debugLsr() in TestFlushSnapshotFromClient with FSUtils.logFileSystemState() |  Trivial | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8242](https://issues.apache.org/jira/browse/HBASE-8242) | Unable to start HBase 0.95.0RC0 out of the box because of ZK trying to access /var/folders/ |  Major | . | Jean-Marc Spaggiari | stack |
| [HBASE-7966](https://issues.apache.org/jira/browse/HBASE-7966) | ACL tests fail on trunk (flaky) |  Major | security | Enis Soztutar | stack |
| [HBASE-7488](https://issues.apache.org/jira/browse/HBASE-7488) | Implement HConnectionManager.locateRegions which is currently returning null |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-6915](https://issues.apache.org/jira/browse/HBASE-6915) | String and ConcurrentHashMap sizes change on jdk7; makes TestHeapSize fail |  Major | . | stack | stack |
| [HBASE-6031](https://issues.apache.org/jira/browse/HBASE-6031) | RegionServer does not go down while aborting |  Major | . | ramkrishna.s.vasudevan |  |
| [HBASE-8278](https://issues.apache.org/jira/browse/HBASE-8278) | Log message after Memstore flush is always with sequence id -1 |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-7961](https://issues.apache.org/jira/browse/HBASE-7961) | truncate on disabled table should throw TableNotEnabledException. |  Major | Admin | rajeshbabu | rajeshbabu |
| [HBASE-8390](https://issues.apache.org/jira/browse/HBASE-8390) | Trunk/0.95 cannot simply compile against Hadoop 1.0 |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-6368](https://issues.apache.org/jira/browse/HBASE-6368) | Upgrade Guava for critical performance bug fix |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-8654](https://issues.apache.org/jira/browse/HBASE-8654) | src assembly does not include hbase-hadoop2-compat module |  Major | build | stack | stack |
| [HBASE-8956](https://issues.apache.org/jira/browse/HBASE-8956) | A couple of small misspellings thoughout the codebase. |  Trivial | . | Alex Newman | Alex Newman |
| [HBASE-9350](https://issues.apache.org/jira/browse/HBASE-9350) | In ChaosMonkey, MoveRegionsOfTableAction throws UnknownRegionException |  Major | test | chendihao |  |
| [HBASE-6201](https://issues.apache.org/jira/browse/HBASE-6201) | HBase integration/system tests |  Major | test | Enis Soztutar | Enis Soztutar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5792](https://issues.apache.org/jira/browse/HBASE-5792) | HLog Performance Evaluation Tool |  Minor | wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5506](https://issues.apache.org/jira/browse/HBASE-5506) | Add unit test for ThriftServerRunner.HbaseHandler.getRegionInfo() |  Minor | . | Scott Chen | Scott Chen |
| [HBASE-5989](https://issues.apache.org/jira/browse/HBASE-5989) | TestAdmin failed on Hadoop 2.0.0 |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5985](https://issues.apache.org/jira/browse/HBASE-5985) | TestMetaMigrationRemovingHTD failed with HADOOP 2.0.0 |  Major | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5984](https://issues.apache.org/jira/browse/HBASE-5984) | TestLogRolling.testLogRollOnPipelineRestart failed with HADOOP 2.0.0 |  Major | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6118](https://issues.apache.org/jira/browse/HBASE-6118) | Add a testcase for HBASE-6065 |  Major | . | ramkrishna.s.vasudevan | Ashutosh Jindal |
| [HBASE-7080](https://issues.apache.org/jira/browse/HBASE-7080) | TestHFileOutputFormat.testColumnFamilyCompression failing due to UnsatisfiedLinkError |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7082](https://issues.apache.org/jira/browse/HBASE-7082) | TestHFileCleaner#testHFileCleaning fails due to cleaner is reset |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7152](https://issues.apache.org/jira/browse/HBASE-7152) | testShouldCheckMasterFailOverWhenMETAIsInOpenedState times out occasionally |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7384](https://issues.apache.org/jira/browse/HBASE-7384) | Introducing waitForCondition function into test cases |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-7960](https://issues.apache.org/jira/browse/HBASE-7960) | cleanup TestDir in TestHalfStoreFileReader |  Minor | test | Liang Xie | Liang Xie |
| [HBASE-8106](https://issues.apache.org/jira/browse/HBASE-8106) | Test to check replication log znodes move is done correctly |  Major | Replication | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7718](https://issues.apache.org/jira/browse/HBASE-7718) | TestClassLoading needs to consider runtime classpath in buildCoprocessorJar |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-6715](https://issues.apache.org/jira/browse/HBASE-6715) | TestFromClientSide.testCacheOnWriteEvictOnClose is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5523](https://issues.apache.org/jira/browse/HBASE-5523) | Fix Delete Timerange logic for KEEP\_DELETED\_CELLS |  Minor | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5641](https://issues.apache.org/jira/browse/HBASE-5641) | decayingSampleTick1 prevents HBase from shutting down. |  Blocker | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5642](https://issues.apache.org/jira/browse/HBASE-5642) | [findbugs] Exclude Thrift and Protobuf warnings |  Major | build | Jonathan Hsieh | Uma Maheswara Rao G |
| [HBASE-5638](https://issues.apache.org/jira/browse/HBASE-5638) | Backport to 0.90 and 0.92 - NPE reading ZK config in HBase |  Minor | Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5619](https://issues.apache.org/jira/browse/HBASE-5619) | Create PB protocols for HRegionInterface |  Major | IPC/RPC, master, migration, regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5685](https://issues.apache.org/jira/browse/HBASE-5685) | [findbugs] Exclude Protobuf warnings from wire compat patches. |  Major | scripts | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5644](https://issues.apache.org/jira/browse/HBASE-5644) | [findbugs] Fix null pointer warnings. |  Major | scripts | Jonathan Hsieh | Uma Maheswara Rao G |
| [HBASE-5653](https://issues.apache.org/jira/browse/HBASE-5653) | [findbugs] fix perf warnings |  Major | scripts | Jonathan Hsieh | Uma Maheswara Rao G |
| [HBASE-5645](https://issues.apache.org/jira/browse/HBASE-5645) | [findbugs] Fix correctness warnings |  Major | scripts | Jonathan Hsieh | David S. Wang |
| [HBASE-5793](https://issues.apache.org/jira/browse/HBASE-5793) | TestHBaseFsck#TestNoHdfsTable test hangs after client retries increased |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5654](https://issues.apache.org/jira/browse/HBASE-5654) | [findbugs] Address dodgy bugs |  Major | scripts | Jonathan Hsieh | Ashutosh Jindal |
| [HBASE-5621](https://issues.apache.org/jira/browse/HBASE-5621) | Convert admin protocol of HRegionInterface to PB |  Major | IPC/RPC, master, migration, regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5620](https://issues.apache.org/jira/browse/HBASE-5620) | Convert the client protocol of HRegionInterface to PB |  Major | IPC/RPC, master, migration, regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5652](https://issues.apache.org/jira/browse/HBASE-5652) | [findbugs] Fix lock release on all paths |  Major | scripts | Jonathan Hsieh | Gregory Chanan |
| [HBASE-5785](https://issues.apache.org/jira/browse/HBASE-5785) | Adding unit tests for protbuf utils introduced for HRegionInterface pb conversion |  Critical | IPC/RPC, master, migration, regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-4990](https://issues.apache.org/jira/browse/HBASE-4990) | Document secure HBase setup |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5444](https://issues.apache.org/jira/browse/HBASE-5444) | Add PB-based calls to HMasterRegionInterface |  Major | IPC/RPC, master, migration, regionserver | Todd Lipcon | Gregory Chanan |
| [HBASE-5453](https://issues.apache.org/jira/browse/HBASE-5453) | Switch on-disk formats (reference files, HFile meta fields, etc) to PB |  Major | IPC/RPC, master, migration, regionserver | Todd Lipcon | stack |
| [HBASE-5446](https://issues.apache.org/jira/browse/HBASE-5446) | Replace serialization for client-facing ZK data with PBs |  Major | IPC/RPC, master, migration, regionserver | Todd Lipcon | stack |
| [HBASE-6061](https://issues.apache.org/jira/browse/HBASE-6061) | Fix ACL "Admin" Table inconsistent permission check |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5385](https://issues.apache.org/jira/browse/HBASE-5385) | Delete table/column should delete stored permissions on -acl- table |  Major | security | Enis Soztutar | Matteo Bertozzi |
| [HBASE-5342](https://issues.apache.org/jira/browse/HBASE-5342) | Grant/Revoke global permissions |  Major | . | Enis Soztutar | Matteo Bertozzi |
| [HBASE-5372](https://issues.apache.org/jira/browse/HBASE-5372) | Table mutation operations should check table level rights, not global rights |  Major | security | Enis Soztutar | Laxman |
| [HBASE-6157](https://issues.apache.org/jira/browse/HBASE-6157) | Revoke of Global permission is not taking effect without restart. |  Major | security | Laxman | Laxman |
| [HBASE-6092](https://issues.apache.org/jira/browse/HBASE-6092) | Authorize flush, split, compact operations in AccessController |  Major | security | Laxman | Laxman |
| [HBASE-6202](https://issues.apache.org/jira/browse/HBASE-6202) | Medium tests fail with jdk1.7 |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6188](https://issues.apache.org/jira/browse/HBASE-6188) | Remove the concept of table owner |  Major | security | Andrew Purtell | Laxman |
| [HBASE-6209](https://issues.apache.org/jira/browse/HBASE-6209) | ACL Corrections for AccessControllerProtocol apis |  Major | security | Laxman | Laxman |
| [HBASE-6238](https://issues.apache.org/jira/browse/HBASE-6238) | Grant on META not taking effect |  Major | security | Laxman | Laxman |
| [HBASE-6252](https://issues.apache.org/jira/browse/HBASE-6252) | TABLE ADMIN should be allowed to relocate regions |  Major | security | Laxman | Laxman |
| [HBASE-6206](https://issues.apache.org/jira/browse/HBASE-6206) | Large tests fail with jdk1.7 |  Minor | Thrift | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6224](https://issues.apache.org/jira/browse/HBASE-6224) | add Pre and Post coprocessor hooks for BulkLoad |  Major | Coprocessors | Francis Liu | Francis Liu |
| [HBASE-5732](https://issues.apache.org/jira/browse/HBASE-5732) | Remove the SecureRPCEngine and merge the security-related logic in the core engine |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-6292](https://issues.apache.org/jira/browse/HBASE-6292) | Compact can skip the security access control |  Major | security | ShiXing | ShiXing |
| [HBASE-5445](https://issues.apache.org/jira/browse/HBASE-5445) | Add PB-based calls to HMasterInterface |  Major | IPC/RPC, master, migration, regionserver | Todd Lipcon | Gregory Chanan |
| [HBASE-6253](https://issues.apache.org/jira/browse/HBASE-6253) | Do not allow user to disable or drop ACL table |  Major | security | Gopinathan A | Gopinathan A |
| [HBASE-6355](https://issues.apache.org/jira/browse/HBASE-6355) | Allow HBase to compile against JDK7 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5151](https://issues.apache.org/jira/browse/HBASE-5151) | Rename "hbase.skip.errors" in HRegion as it is too general-sounding. |  Major | documentation | Harsh J | Harsh J |
| [HBASE-6405](https://issues.apache.org/jira/browse/HBASE-6405) | Create Hadoop compatibilty modules and Metrics2 implementation of replication metrics |  Major | . | Ted Yu | Elliott Clark |
| [HBASE-6203](https://issues.apache.org/jira/browse/HBASE-6203) | Create hbase-it module |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-5659](https://issues.apache.org/jira/browse/HBASE-5659) | TestAtomicOperation.testMultiRowMutationMultiThreads is still failing occasionally |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5705](https://issues.apache.org/jira/browse/HBASE-5705) | Introduce Protocol Buffer RPC engine |  Major | IPC/RPC, master, migration, regionserver | Devaraj Das | Devaraj Das |
| [HBASE-6411](https://issues.apache.org/jira/browse/HBASE-6411) | Move Master Metrics to metrics 2 |  Major | . | Elliott Clark | Alex Baranau |
| [HBASE-6570](https://issues.apache.org/jira/browse/HBASE-6570) | Fix hfile/log cleaning delegate method naming |  Minor | . | Jesse Yates | Jesse Yates |
| [HBASE-6598](https://issues.apache.org/jira/browse/HBASE-6598) | Combine Master Metrics into a single class. |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-6052](https://issues.apache.org/jira/browse/HBASE-6052) | Convert .META. and -ROOT- content to pb |  Blocker | . | stack | Enis Soztutar |
| [HBASE-6524](https://issues.apache.org/jira/browse/HBASE-6524) | Hooks for hbase tracing |  Major | . | Jonathan Leavitt | Jonathan Leavitt |
| [HBASE-6569](https://issues.apache.org/jira/browse/HBASE-6569) | Extract HStore interface from Store |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-6568](https://issues.apache.org/jira/browse/HBASE-6568) | Extract daemon thread factory from HTable into its own class |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-6718](https://issues.apache.org/jira/browse/HBASE-6718) | Clean up BaseMetricsSourceImpl |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6630](https://issues.apache.org/jira/browse/HBASE-6630) | Port HBASE-6590 to trunk : Assign sequence number to bulk loaded files |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-5447](https://issues.apache.org/jira/browse/HBASE-5447) | Support for custom filters with PB-based RPC |  Major | IPC/RPC, master, migration, regionserver | Todd Lipcon | Gregory Chanan |
| [HBASE-6241](https://issues.apache.org/jira/browse/HBASE-6241) | HBaseCluster interface for interacting with the cluster from system tests |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-6765](https://issues.apache.org/jira/browse/HBASE-6765) | 'Take a snapshot' interface |  Major | Client, master, snapshots | Jesse Yates | Jesse Yates |
| [HBASE-6571](https://issues.apache.org/jira/browse/HBASE-6571) | Generic multi-thread/cross-process error handling framework |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-5448](https://issues.apache.org/jira/browse/HBASE-5448) | Support for dynamic coprocessor endpoints with PB-based RPC |  Major | IPC/RPC, master, migration, regionserver | Todd Lipcon | Gary Helmling |
| [HBASE-6412](https://issues.apache.org/jira/browse/HBASE-6412) | Move external servers to metrics2 (thrift,thrift2,rest) |  Blocker | metrics | Elliott Clark | Elliott Clark |
| [HBASE-6409](https://issues.apache.org/jira/browse/HBASE-6409) | Create histogram class for metrics 2 |  Blocker | metrics | Elliott Clark | Elliott Clark |
| [HBASE-6809](https://issues.apache.org/jira/browse/HBASE-6809) | Deprecate Old metrics classes. |  Blocker | metrics | Elliott Clark | Elliott Clark |
| [HBASE-6408](https://issues.apache.org/jira/browse/HBASE-6408) | Naming and documenting of the hadoop-metrics2.properties file |  Blocker | metrics | Elliott Clark | Elliott Clark |
| [HBASE-6501](https://issues.apache.org/jira/browse/HBASE-6501) | Integrate with unit-testing tools of hadoop's metrics2 framework |  Blocker | metrics | Alex Baranau | Elliott Clark |
| [HBASE-6610](https://issues.apache.org/jira/browse/HBASE-6610) | HFileLink: Hardlink alternative for snapshot restore |  Major | io | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6601](https://issues.apache.org/jira/browse/HBASE-6601) | TestImportExport on Hadoop 2 must copy YARN configuration vars |  Major | hadoop2, mapreduce | Scott Forman |  |
| [HBASE-6917](https://issues.apache.org/jira/browse/HBASE-6917) | Trunk jdk7 build broke because we moved to zk 3.4.4 |  Major | test | stack | stack |
| [HBASE-5937](https://issues.apache.org/jira/browse/HBASE-5937) | Refactor HLog into an interface. |  Minor | . | Li Pi | Flavio Junqueira |
| [HBASE-6921](https://issues.apache.org/jira/browse/HBASE-6921) | String and ConcurrentHashMap sizes change on jdk7; makes TestHeapSize fail; second attempt |  Major | test | stack | stack |
| [HBASE-6785](https://issues.apache.org/jira/browse/HBASE-6785) | Convert AggregateProtocol to protobuf defined coprocessor service |  Major | Coprocessors | Gary Helmling | Devaraj Das |
| [HBASE-6786](https://issues.apache.org/jira/browse/HBASE-6786) | Convert MultiRowMutationProtocol to protocol buffer service |  Major | Coprocessors | Gary Helmling | Devaraj Das |
| [HBASE-7077](https://issues.apache.org/jira/browse/HBASE-7077) | Test for: CheckAndPut should properly read MVCC |  Major | . | Gregory Chanan | ramkrishna.s.vasudevan |
| [HBASE-6925](https://issues.apache.org/jira/browse/HBASE-6925) | Change socket write size from 8K to 64K for HBaseServer |  Critical | IPC/RPC, Performance | Karthik Ranganathan | Karthik Ranganathan |
| [HBASE-6410](https://issues.apache.org/jira/browse/HBASE-6410) | Move RegionServer Metrics to metrics2 |  Blocker | metrics | Elliott Clark | Elliott Clark |
| [HBASE-6353](https://issues.apache.org/jira/browse/HBASE-6353) | Snapshots shell |  Major | shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7107](https://issues.apache.org/jira/browse/HBASE-7107) | Snapshot References Utils (FileSystem Visitor) |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7113](https://issues.apache.org/jira/browse/HBASE-7113) | TestGzipFilter is flaky with jdk1.7 |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6965](https://issues.apache.org/jira/browse/HBASE-6965) | Generic MXBean Utility class to support all JDK vendors |  Major | build | Kumar Ravi | Kumar Ravi |
| [HBASE-7121](https://issues.apache.org/jira/browse/HBASE-7121) | Fix TestHFileOutputFormat after moving RS to metrics2 |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-4913](https://issues.apache.org/jira/browse/HBASE-4913) | Per-CF compaction Via the Shell |  Major | Client, regionserver | Nicolas Spiegelberg | Mubarak Seyed |
| [HBASE-6863](https://issues.apache.org/jira/browse/HBASE-6863) | Offline snapshots |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-6282](https://issues.apache.org/jira/browse/HBASE-6282) | The introspection, etc. of objects in the RPC has to be handled for PB objects |  Blocker | IPC/RPC | Devaraj Das | stack |
| [HBASE-7042](https://issues.apache.org/jira/browse/HBASE-7042) | Master Coprocessor Endpoint |  Major | . | Francis Liu | Francis Liu |
| [HBASE-6865](https://issues.apache.org/jira/browse/HBASE-6865) | Snapshot File Cleaners |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-7062](https://issues.apache.org/jira/browse/HBASE-7062) | Move HLog stats to metrics 2 |  Critical | metrics | Elliott Clark | Elliott Clark |
| [HBASE-6777](https://issues.apache.org/jira/browse/HBASE-6777) | Snapshot Restore interface |  Major | Client, master, snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6230](https://issues.apache.org/jira/browse/HBASE-6230) | [brainstorm] "Restore" snapshots for HBase 0.96 |  Major | . | Jesse Yates | Matteo Bertozzi |
| [HBASE-6802](https://issues.apache.org/jira/browse/HBASE-6802) | Export Snapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7185](https://issues.apache.org/jira/browse/HBASE-7185) | Create hbase-protocol module |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-7146](https://issues.apache.org/jira/browse/HBASE-7146) | Fix the wrong reference to getReader survived in theFSHLog javadoc |  Trivial | documentation | Nicolas Liochon | Gustavo Anatoly |
| [HBASE-6787](https://issues.apache.org/jira/browse/HBASE-6787) | Convert RowProcessorProtocol to protocol buffer service |  Major | Coprocessors | Gary Helmling | Devaraj Das |
| [HBASE-7200](https://issues.apache.org/jira/browse/HBASE-7200) | create integration test for balancing regions and killing region servers |  Major | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7109](https://issues.apache.org/jira/browse/HBASE-7109) | integration tests on cluster are not getting picked up from distribution |  Major | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7225](https://issues.apache.org/jira/browse/HBASE-7225) | on trunk, integration tests are not packaged into distribution |  Major | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-6302](https://issues.apache.org/jira/browse/HBASE-6302) | Document how to run integration tests |  Blocker | documentation | stack | Enis Soztutar |
| [HBASE-7306](https://issues.apache.org/jira/browse/HBASE-7306) | [shell] Count shell command to return ruby bindable value. |  Major | Client, shell | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7262](https://issues.apache.org/jira/browse/HBASE-7262) | Move HBaseRPC metrics to metrics2 |  Blocker | metrics | Elliott Clark | Elliott Clark |
| [HBASE-6717](https://issues.apache.org/jira/browse/HBASE-6717) | Remove hadoop-metrics.properties when everything has moved over. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-7336](https://issues.apache.org/jira/browse/HBASE-7336) | HFileBlock.readAtOffset does not work well with multiple threads |  Critical | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7371](https://issues.apache.org/jira/browse/HBASE-7371) | Blocksize in TestHFileBlock is unintentionally small |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7240](https://issues.apache.org/jira/browse/HBASE-7240) | Cleanup old snapshots on start |  Major | Client, master, regionserver, snapshots, Zookeeper | Jesse Yates | Jesse Yates |
| [HBASE-7367](https://issues.apache.org/jira/browse/HBASE-7367) | Snapshot coprocessor and ACL security |  Minor | Client, master, regionserver, snapshots, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7174](https://issues.apache.org/jira/browse/HBASE-7174) | [snapshots] Refactor snapshot file cleaner cache to use the Snapshot FileVisitor |  Major | . | Jesse Yates | Matteo Bertozzi |
| [HBASE-6887](https://issues.apache.org/jira/browse/HBASE-6887) | Convert security-related shell commands to use PB-based AccessControlService |  Major | security | Gary Helmling | Jimmy Xiang |
| [HBASE-7331](https://issues.apache.org/jira/browse/HBASE-7331) | Add access control for region open and close, row locking, and stopping the regionserver |  Major | regionserver, security | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-6788](https://issues.apache.org/jira/browse/HBASE-6788) | Convert AuthenticationProtocol to protocol buffer service |  Blocker | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-7311](https://issues.apache.org/jira/browse/HBASE-7311) | Add snapshot information to hbase master webui |  Major | Client, master, regionserver, snapshots, Zookeeper | Jonathan Hsieh | Matteo Bertozzi |
| [HBASE-6789](https://issues.apache.org/jira/browse/HBASE-6789) | Convert test CoprocessorProtocol implementations to protocol buffer services |  Major | Coprocessors | Gary Helmling | stack |
| [HBASE-7420](https://issues.apache.org/jira/browse/HBASE-7420) | TestSnapshotExceptionSnare and TestWALReferenceTask missing test annotation failing TestCheckTestClasses |  Major | Client, master, regionserver, snapshots, Zookeeper | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7388](https://issues.apache.org/jira/browse/HBASE-7388) | Snapshot branch 12/18 rebase broke TestSnapshotFromMaster#testSnapshotHFileArchiving |  Major | snapshots, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7206](https://issues.apache.org/jira/browse/HBASE-7206) | Foreign Exception framework v2 (simplifies and replaces HBASE-6571) |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7431](https://issues.apache.org/jira/browse/HBASE-7431) | TestSplitTransactionOnCluster tests still flaky |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7430](https://issues.apache.org/jira/browse/HBASE-7430) | TestSnapshotDescriptionUtils break compaction/scanner tests (EnvironmentEdge issue) |  Blocker | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7436](https://issues.apache.org/jira/browse/HBASE-7436) | Improve stack trace info dumped by ForeignExceptionSnare#rethrowException |  Major | Client, master, regionserver, snapshots, Zookeeper | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7145](https://issues.apache.org/jira/browse/HBASE-7145) | ReusableStreamGzipCodec NPE upon reset with IBM JDK |  Major | . | Yu Li | Renata Ghisloti Duarte de Souza |
| [HBASE-7339](https://issues.apache.org/jira/browse/HBASE-7339) | Splitting a hfilelink causes region servers to go down. |  Blocker | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7186](https://issues.apache.org/jira/browse/HBASE-7186) | Split Classes for Client/Server module split. |  Major | Client, Protobufs | Elliott Clark | Elliott Clark |
| [HBASE-7438](https://issues.apache.org/jira/browse/HBASE-7438) | TestSplitTransactionOnCluster has too many infinite loops |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-3776](https://issues.apache.org/jira/browse/HBASE-3776) | Add Bloom Filter Support to HFileOutputFormat |  Critical | mapreduce | Nicolas Spiegelberg | Anoop Sam John |
| [HBASE-7439](https://issues.apache.org/jira/browse/HBASE-7439) | HFileLink should not use the configuration from the Filesystem |  Blocker | Client, master, regionserver, snapshots, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7452](https://issues.apache.org/jira/browse/HBASE-7452) | Change ForeignException#receive(String, FE) to only be #receive(FE) |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7208](https://issues.apache.org/jira/browse/HBASE-7208) | Transition Offline Snapshots to ForeignExceptions |  Blocker | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7454](https://issues.apache.org/jira/browse/HBASE-7454) | Move ErrorHandling protos from hbase-server to hbase-protocol |  Major | Protobufs, snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7212](https://issues.apache.org/jira/browse/HBASE-7212) | Globally Barriered Procedure mechanism |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7400](https://issues.apache.org/jira/browse/HBASE-7400) | ExportSnapshot mapper closes the FileSystem |  Blocker | Client, master, regionserver, snapshots, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7294](https://issues.apache.org/jira/browse/HBASE-7294) | Check for snapshot file cleaners on start |  Major | Client, master, regionserver, snapshots, Zookeeper | Jesse Yates | Matteo Bertozzi |
| [HBASE-7352](https://issues.apache.org/jira/browse/HBASE-7352) | clone operation from HBaseAdmin can hang forever. |  Major | Client, master, regionserver, snapshots, Zookeeper | Jonathan Hsieh | Matteo Bertozzi |
| [HBASE-7207](https://issues.apache.org/jira/browse/HBASE-7207) | Consolidate snapshot related classes into fewer packages |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7406](https://issues.apache.org/jira/browse/HBASE-7406) | Example health checker script |  Trivial | regionserver | Andrew Purtell | Vandana Ayyalasomayajula |
| [HBASE-7399](https://issues.apache.org/jira/browse/HBASE-7399) | Health check chore for HMaster |  Trivial | regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-7354](https://issues.apache.org/jira/browse/HBASE-7354) | Snapshot Info/Debug Tool |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6864](https://issues.apache.org/jira/browse/HBASE-6864) | Online snapshots scaffolding |  Major | . | Jesse Yates | Jonathan Hsieh |
| [HBASE-7321](https://issues.apache.org/jira/browse/HBASE-7321) | Simple Flush Snapshot |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7496](https://issues.apache.org/jira/browse/HBASE-7496) | TestZKProcedure fails interrmittently. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7405](https://issues.apache.org/jira/browse/HBASE-7405) | Enforce PB ser/de for Aggregate protocol and associated ColumnInterpreter user code bits |  Major | Coprocessors, Protobufs | Devaraj Das | Devaraj Das |
| [HBASE-7224](https://issues.apache.org/jira/browse/HBASE-7224) | Remove references to Writable in the ipc package |  Blocker | IPC/RPC, Protobufs | Devaraj Das | stack |
| [HBASE-7414](https://issues.apache.org/jira/browse/HBASE-7414) | Convert some HFile metadata to PB |  Critical | HFile | stack | Andrew Purtell |
| [HBASE-7419](https://issues.apache.org/jira/browse/HBASE-7419) | revisit hfilelink file name format. |  Major | Client, master, regionserver, snapshots, Zookeeper | Jonathan Hsieh | Matteo Bertozzi |
| [HBASE-7518](https://issues.apache.org/jira/browse/HBASE-7518) | Move AuthResult out of AccessController |  Minor | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7523](https://issues.apache.org/jira/browse/HBASE-7523) | Snapshot attempt with the name of a previously taken snapshots fails sometimes. |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7471](https://issues.apache.org/jira/browse/HBASE-7471) | Enable Cleaners required for Snapshots by default |  Major | Client, master, regionserver, snapshots, Zookeeper | Jonathan Hsieh | Ted Yu |
| [HBASE-7387](https://issues.apache.org/jira/browse/HBASE-7387) | StoreScanner need to be able to be subclassed |  Minor | regionserver | Raymond Liu | Raymond Liu |
| [HBASE-7480](https://issues.apache.org/jira/browse/HBASE-7480) | Explicit message for not allowed snapshot on meta tables |  Minor | Client, master, regionserver, snapshots, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7484](https://issues.apache.org/jira/browse/HBASE-7484) | Fix Restore with schema changes |  Blocker | Client, master, regionserver, snapshots, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7453](https://issues.apache.org/jira/browse/HBASE-7453) | HBASE-7423 snapshot followup |  Major | Client, master, regionserver, snapshots, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7389](https://issues.apache.org/jira/browse/HBASE-7389) | HBASE-7365 Snapshot clone/restore followup |  Major | Client, master, regionserver, snapshots, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7535](https://issues.apache.org/jira/browse/HBASE-7535) | Fix restore reference files |  Blocker | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7547](https://issues.apache.org/jira/browse/HBASE-7547) | Fix findbugs warnings in snapshot classes |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7548](https://issues.apache.org/jira/browse/HBASE-7548) | Fix javadoc warnings in snapshot classes |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-7538](https://issues.apache.org/jira/browse/HBASE-7538) | Improve snapshot related error and exception messages |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7536](https://issues.apache.org/jira/browse/HBASE-7536) | Add test that confirms that multiple concurrent snapshot requests are rejected. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7558](https://issues.apache.org/jira/browse/HBASE-7558) | Client not able to access /hbase/unassigned in secure cluster |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6066](https://issues.apache.org/jira/browse/HBASE-6066) | some low hanging read path improvement ideas |  Critical | Performance | Kannan Muthukkaruppan | Devaraj Das |
| [HBASE-7583](https://issues.apache.org/jira/browse/HBASE-7583) | Fixes and cleanups |  Blocker | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7563](https://issues.apache.org/jira/browse/HBASE-7563) | move CompoundConfiguration to common and add string map support |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7238](https://issues.apache.org/jira/browse/HBASE-7238) | Size based scan metric broken by protobufs |  Critical | . | Lars Hofhansl | Sergey Shelukhin |
| [HBASE-7604](https://issues.apache.org/jira/browse/HBASE-7604) | Remove duplicated code from HFileLink |  Blocker | Client, master, regionserver, snapshots, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7565](https://issues.apache.org/jira/browse/HBASE-7565) | [replication] Create an interface for the replication state node |  Major | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-7616](https://issues.apache.org/jira/browse/HBASE-7616) | NPE in ZKProcedureCoordinator$1.nodeCreated |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7625](https://issues.apache.org/jira/browse/HBASE-7625) | Remove duplicated logFSTree() from TestRestoreFlushSnapshotFromClient |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7559](https://issues.apache.org/jira/browse/HBASE-7559) | Add additional Snapshots Unit Test Coverage |  Major | test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-7622](https://issues.apache.org/jira/browse/HBASE-7622) | Add table descriptor verification after snapshot restore |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6816](https://issues.apache.org/jira/browse/HBASE-6816) | [WINDOWS] line endings on checkout for .sh files |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7651](https://issues.apache.org/jira/browse/HBASE-7651) | RegionServerSnapshotManager fails with CancellationException if previous snapshot fails in per region task |  Blocker | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7666](https://issues.apache.org/jira/browse/HBASE-7666) | More logging improvements in online snapshots code. |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7571](https://issues.apache.org/jira/browse/HBASE-7571) | add the notion of per-table or per-column family configuration |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-6815](https://issues.apache.org/jira/browse/HBASE-6815) | [WINDOWS] Provide hbase scripts in order to start HBASE on Windows in a single user mode |  Major | . | Enis Soztutar | Slavik Krassovsky |
| [HBASE-7687](https://issues.apache.org/jira/browse/HBASE-7687) | TestCatalogTracker.testServerNotRunningIOException fails occasionally |  Major | . | Lars Hofhansl | Ted Yu |
| [HBASE-7689](https://issues.apache.org/jira/browse/HBASE-7689) | CloneTableHandler notify completion too early |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-2611](https://issues.apache.org/jira/browse/HBASE-2611) | Handle RS that fails while processing the failure of another one |  Critical | Replication | Jean-Daniel Cryans | Himanshu Vashishtha |
| [HBASE-7674](https://issues.apache.org/jira/browse/HBASE-7674) | add shell documentation for HBASE-7571 |  Trivial | shell | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7703](https://issues.apache.org/jira/browse/HBASE-7703) | Eventually all online snapshots failing due to Timeout at same regionserver. |  Critical | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7720](https://issues.apache.org/jira/browse/HBASE-7720) | improve logging messages of failed snapshot attempts. |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6825](https://issues.apache.org/jira/browse/HBASE-6825) | [WINDOWS] Java NIO socket channels does not work with Windows ipv6 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7516](https://issues.apache.org/jira/browse/HBASE-7516) | Make compaction policy pluggable |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7733](https://issues.apache.org/jira/browse/HBASE-7733) | Fix flaky TestZKProcedure.testMultiCohortWithMemberTimeoutDuringPrepare |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7739](https://issues.apache.org/jira/browse/HBASE-7739) | [snapshot 130201 merge] Fix TestSnapshotFromMaster failure |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7742](https://issues.apache.org/jira/browse/HBASE-7742) | [snapshot 130201 merge] Fix TestHFileArchving#testArchiveOnTableDelete |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7753](https://issues.apache.org/jira/browse/HBASE-7753) | [snapshot 130201 merge] Fix unresolved merge conflicts |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7788](https://issues.apache.org/jira/browse/HBASE-7788) | [snapshot 130201 merge] Fix flakey TestRestore\*SnapshotFromClient#testCloneSnapshot |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7778](https://issues.apache.org/jira/browse/HBASE-7778) | [snapshot 130201 merge] Tests with sleep after minicluster shutdown fail due to interrupt flag. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7783](https://issues.apache.org/jira/browse/HBASE-7783) | [snapshot 130201 merge] Remove accidentally committed hbase-server/bin files |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7752](https://issues.apache.org/jira/browse/HBASE-7752) | [snapshot 130201 merge] Fix TestStoreFile failure |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7795](https://issues.apache.org/jira/browse/HBASE-7795) | Race in the Restore Archiving |  Major | Client, master, regionserver, snapshots, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7764](https://issues.apache.org/jira/browse/HBASE-7764) | [snapshot 130201 merge] Fix TestSnapshotCloneIndependence failure |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7603](https://issues.apache.org/jira/browse/HBASE-7603) | refactor storefile management in HStore in order to support things like LevelDB-style compactions |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7796](https://issues.apache.org/jira/browse/HBASE-7796) | [snapshot 130201 merge] Fix TestSnapshotFromClient and TestFlushSnapshotFromClient |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7784](https://issues.apache.org/jira/browse/HBASE-7784) | move the code related to compaction selection specific to default compaction policy, into default compaction policy (from HStore) |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7779](https://issues.apache.org/jira/browse/HBASE-7779) | [snapshot 130201 merge] Fix TestMultiParallel |  Major | . | Jonathan Hsieh | Ted Yu |
| [HBASE-7365](https://issues.apache.org/jira/browse/HBASE-7365) | Safer table creation and deletion using .tmp dir |  Major | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7858](https://issues.apache.org/jira/browse/HBASE-7858) | cleanup before merging snapshots branch to trunk |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7889](https://issues.apache.org/jira/browse/HBASE-7889) | Fix javadoc warnings in snapshot classes, part 2 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7864](https://issues.apache.org/jira/browse/HBASE-7864) | Rename HMaster#listSnapshots as getCompletedSnapshots() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7678](https://issues.apache.org/jira/browse/HBASE-7678) | make storefile management pluggable, together with compaction |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7899](https://issues.apache.org/jira/browse/HBASE-7899) | Cell block building tools: Cell codec and means of iterating an objects Cells |  Blocker | IPC/RPC | stack | stack |
| [HBASE-7188](https://issues.apache.org/jira/browse/HBASE-7188) | Move classes into hbase-client |  Critical | Admin, Client, IPC/RPC, Replication, snapshots | Elliott Clark | Elliott Clark |
| [HBASE-7900](https://issues.apache.org/jira/browse/HBASE-7900) | Have client Mutations (Put/Delete/etc.) and Result implement CellScanner Interface |  Blocker | IPC/RPC | stack | stack |
| [HBASE-7934](https://issues.apache.org/jira/browse/HBASE-7934) | TableMapReduceUtil doesn't include all dependency jars in new modular build |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7747](https://issues.apache.org/jira/browse/HBASE-7747) | Import tools should use a combiner to merge Puts |  Minor | mapreduce, Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7807](https://issues.apache.org/jira/browse/HBASE-7807) | Introduce HRegionFileSystem and move region fs related code |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7975](https://issues.apache.org/jira/browse/HBASE-7975) | ImportTsv documentation update for table creation |  Trivial | mapreduce, Usability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7808](https://issues.apache.org/jira/browse/HBASE-7808) | Refactor Store to use HRegionFileSystem |  Major | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7944](https://issues.apache.org/jira/browse/HBASE-7944) | Replication leaks file reader resource & not reset currentNbOperations |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-7996](https://issues.apache.org/jira/browse/HBASE-7996) | Clean up resource leak in MultiTableInputFormat |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8006](https://issues.apache.org/jira/browse/HBASE-8006) | use FSUtils to get/set hbase.rootdir |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8011](https://issues.apache.org/jira/browse/HBASE-8011) | Refactor ImportTsv |  Minor | mapreduce, Usability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8094](https://issues.apache.org/jira/browse/HBASE-8094) | TestTableInputFormatScan doesn't assert anything |  Major | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7938](https://issues.apache.org/jira/browse/HBASE-7938) | Add integration test for ImportTsv/LoadIncrementalHFiles workflow |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8101](https://issues.apache.org/jira/browse/HBASE-8101) | Cleanup: findbugs and javadoc warning fixes as well as making it illegal passing null row to Put/Delete, etc. |  Major | IPC/RPC | stack | stack |
| [HBASE-4285](https://issues.apache.org/jira/browse/HBASE-4285) | partitions file created in user's home directory by importtsv |  Major | mapreduce | Wing Yew Poon | Nick Dimiduk |
| [HBASE-7809](https://issues.apache.org/jira/browse/HBASE-7809) | Refactor Split/Merge to use HRegionFileSystem |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7533](https://issues.apache.org/jira/browse/HBASE-7533) | Write an RPC Specification for 0.96 |  Major | IPC/RPC | stack | stack |
| [HBASE-8189](https://issues.apache.org/jira/browse/HBASE-8189) | Shell commands of online region merge |  Major | shell | chunhui shen | chunhui shen |
| [HBASE-8156](https://issues.apache.org/jira/browse/HBASE-8156) | Support for Namenode HA for non-idempotent operations |  Major | Filesystem Integration | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-6945](https://issues.apache.org/jira/browse/HBASE-6945) | Compilation errors when using non-Sun JDKs to build HBase-0.94 |  Major | build | Kumar Ravi | Kumar Ravi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7705](https://issues.apache.org/jira/browse/HBASE-7705) | Make the method getCurrentPoolSize of HTablePool public |  Minor | Client | Jianwei Cui | Jianwei Cui |
| [HBASE-7236](https://issues.apache.org/jira/browse/HBASE-7236) | add per-table/per-cf configuration via metadata |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-4403](https://issues.apache.org/jira/browse/HBASE-4403) | Adopt interface stability/audience classifications from Hadoop |  Major | . | Todd Lipcon | Jimmy Xiang |
| [HBASE-5328](https://issues.apache.org/jira/browse/HBASE-5328) | Small changes to Master to make it more testable |  Major | . | stack | stack |
| [HBASE-5610](https://issues.apache.org/jira/browse/HBASE-5610) | Add GA to hbase.apache.org |  Major | . | stack | stack |
| [HBASE-5709](https://issues.apache.org/jira/browse/HBASE-5709) | Move active master and backup master znodes to use pbs |  Major | . | stack | stack |
| [HBASE-5707](https://issues.apache.org/jira/browse/HBASE-5707) | Move clusterid and clusterup (shutdown) znodes over to pb |  Major | . | stack | stack |
| [HBASE-5300](https://issues.apache.org/jira/browse/HBASE-5300) | Research website symolic links for renaming of "HBase book" to "HBase Reference Guide" |  Major | . | Doug Meil | stack |
| [HBASE-5747](https://issues.apache.org/jira/browse/HBASE-5747) | Forward port "hbase-5708 [89-fb] Make MiniMapRedCluster directory a subdirectory of target/test" |  Blocker | . | stack | stack |
| [HBASE-5808](https://issues.apache.org/jira/browse/HBASE-5808) | Remove TestHLogBench, HLogPerformanceEvaluation is more comprehensive |  Major | . | stack | stack |
| [HBASE-5812](https://issues.apache.org/jira/browse/HBASE-5812) | Add log rolling to HLogPerformanceEvaluation |  Major | . | stack | stack |
| [HBASE-5810](https://issues.apache.org/jira/browse/HBASE-5810) | HBASE-5620 Convert the client protocol of HRegionInterface to PB addendum |  Major | . | stack | Jimmy Xiang |
| [HBASE-5869](https://issues.apache.org/jira/browse/HBASE-5869) | Move SplitLogManager splitlog taskstate and AssignmentManager RegionTransitionData znode datas to pb |  Major | . | stack | stack |
| [HBASE-5944](https://issues.apache.org/jira/browse/HBASE-5944) | Convert rs, shutdown, and table dir content to pb |  Major | . | stack | stack |
| [HBASE-5935](https://issues.apache.org/jira/browse/HBASE-5935) | Add Region-level PB-based calls to HMasterInterface |  Major | IPC/RPC, master, migration | Gregory Chanan | Gregory Chanan |
| [HBASE-6001](https://issues.apache.org/jira/browse/HBASE-6001) | Upgrade slf4j to 1.6.1 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6005](https://issues.apache.org/jira/browse/HBASE-6005) | Broken Links on Homepages |  Minor | documentation | Elliott Clark | Elliott Clark |
| [HBASE-6077](https://issues.apache.org/jira/browse/HBASE-6077) | Document the most common secure RPC troubleshooting resolutions |  Major | documentation, security | Andrew Purtell | Andrew Purtell |
| [HBASE-6036](https://issues.apache.org/jira/browse/HBASE-6036) | Add Cluster-level PB-based calls to HMasterInterface (minus file-format related calls) |  Major | IPC/RPC, master, migration | Gregory Chanan | Gregory Chanan |
| [HBASE-5948](https://issues.apache.org/jira/browse/HBASE-5948) | Deprecate and remove the Avro gateway |  Blocker | . | Andrew Purtell | Elliott Clark |
| [HBASE-6131](https://issues.apache.org/jira/browse/HBASE-6131) | Add attribution for code added by HBASE-5533 metrics |  Blocker | . | stack | stack |
| [HBASE-5932](https://issues.apache.org/jira/browse/HBASE-5932) | Move RegionServerStatusProtocol from ipc package to top-level |  Trivial | . | Gregory Chanan | Gregory Chanan |
| [HBASE-5936](https://issues.apache.org/jira/browse/HBASE-5936) | Add Column-level PB-based calls to HMasterInterface |  Major | IPC/RPC, master, migration | Gregory Chanan | Gregory Chanan |
| [HBASE-4336](https://issues.apache.org/jira/browse/HBASE-4336) | Convert source tree into maven modules |  Critical | build | Gary Helmling | Jesse Yates |
| [HBASE-6038](https://issues.apache.org/jira/browse/HBASE-6038) | Add getClusterStatus PB-based call to HMasterInterface |  Major | IPC/RPC, master, migration, regionserver | Gregory Chanan | Gregory Chanan |
| [HBASE-5933](https://issues.apache.org/jira/browse/HBASE-5933) | Hide HBaseProtos.ServerLoad and HBaseProtos.RegionLoad from ClusterStatus |  Minor | IPC/RPC | Gregory Chanan | Gregory Chanan |
| [HBASE-6039](https://issues.apache.org/jira/browse/HBASE-6039) | Remove HMasterInterface and replace with something similar to RegionServerStatusProtocol |  Major | IPC/RPC, master | Gregory Chanan | Gregory Chanan |
| [HBASE-6145](https://issues.apache.org/jira/browse/HBASE-6145) | Fix site target post modularization |  Major | . | stack | stack |
| [HBASE-5443](https://issues.apache.org/jira/browse/HBASE-5443) | Add PB-based calls to HRegionInterface |  Major | IPC/RPC, master, migration, regionserver | Todd Lipcon | Jimmy Xiang |
| [HBASE-6599](https://issues.apache.org/jira/browse/HBASE-6599) | Rename Store (the implementations) as HStore, and HStore (the Interface) as Store |  Major | regionserver | stack | stack |
| [HBASE-6553](https://issues.apache.org/jira/browse/HBASE-6553) | Remove Avro Gateway |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6436](https://issues.apache.org/jira/browse/HBASE-6436) | Netty should be moved off of snapshots. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-6454](https://issues.apache.org/jira/browse/HBASE-6454) | Write PB definitions for filters |  Major | IPC/RPC, migration | Gregory Chanan | Gregory Chanan |
| [HBASE-6606](https://issues.apache.org/jira/browse/HBASE-6606) | Test for reconnecting with HBaseAdmin using unmanaged HConnection |  Minor | Client, test | Gregory Chanan | Gregory Chanan |
| [HBASE-5965](https://issues.apache.org/jira/browse/HBASE-5965) | Move replication znodes to pb |  Blocker | . | stack | Chris Trezzo |
| [HBASE-6759](https://issues.apache.org/jira/browse/HBASE-6759) | Forward port ZKReadOnly change from HBASE-6710 |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6591](https://issues.apache.org/jira/browse/HBASE-6591) | checkAndPut executed/not metrics |  Minor | metrics, regionserver | Gregory Chanan | Gregory Chanan |
| [HBASE-5536](https://issues.apache.org/jira/browse/HBASE-5536) | Make it clear that hbase 0.96 requires hadoop 1.0.0 at least; we will no longer work on older versions |  Blocker | . | stack | stack |
| [HBASE-6032](https://issues.apache.org/jira/browse/HBASE-6032) | Port HFileBlockIndex improvement from HBASE-5987 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-6987](https://issues.apache.org/jira/browse/HBASE-6987) | Port HBASE-6920 to trunk (?) |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-7036](https://issues.apache.org/jira/browse/HBASE-7036) | Exclude org.apache.hadoop.hbase.coprocessor.example.generated package from findbugs check |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-7032](https://issues.apache.org/jira/browse/HBASE-7032) | Remove old IncrementColumnValue code. |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-7045](https://issues.apache.org/jira/browse/HBASE-7045) | Add some comments to MVCC code |  Minor | Transactions/MVCC | Gregory Chanan | Gregory Chanan |
| [HBASE-6223](https://issues.apache.org/jira/browse/HBASE-6223) | Document  hbck improvements: HBASE-6173, HBASE-5360 |  Major | documentation, hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5119](https://issues.apache.org/jira/browse/HBASE-5119) | Set the TimeoutMonitor's timeout back down |  Blocker | . | Jean-Daniel Cryans |  |
| [HBASE-7087](https://issues.apache.org/jira/browse/HBASE-7087) | Add to NOTICE.txt a note on jamon being MPL |  Major | . | stack | stack |
| [HBASE-6182](https://issues.apache.org/jira/browse/HBASE-6182) | Make HBase works with jdk1.7 |  Critical | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5258](https://issues.apache.org/jira/browse/HBASE-5258) | Move coprocessors set out of RegionLoad |  Critical | . | Ted Yu | Sergey Shelukhin |
| [HBASE-7356](https://issues.apache.org/jira/browse/HBASE-7356) | Fix all javadoc warnings in all modules but hbase-server |  Major | . | stack | stack |
| [HBASE-7397](https://issues.apache.org/jira/browse/HBASE-7397) | HTable.coprocessorService() should allow null values in returned Map |  Major | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-6694](https://issues.apache.org/jira/browse/HBASE-6694) | Test scanner batching in export job feature HBASE-6372 AND report on improvement HBASE-6372 adds |  Major | . | stack | Alexander Alten-Lorenz |
| [HBASE-5138](https://issues.apache.org/jira/browse/HBASE-5138) | [ref manual] Add a discussion on the number of regions |  Critical | . | Jean-Daniel Cryans |  |
| [HBASE-7706](https://issues.apache.org/jira/browse/HBASE-7706) | Remove reservation blocks from region server |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7821](https://issues.apache.org/jira/browse/HBASE-7821) | Remove Duplicated code in CompactSelection |  Minor | Compaction | Elliott Clark | Elliott Clark |
| [HBASE-7823](https://issues.apache.org/jira/browse/HBASE-7823) | Add ignores to hbase-prefix-tree |  Trivial | . | Elliott Clark | Elliott Clark |
| [HBASE-7918](https://issues.apache.org/jira/browse/HBASE-7918) | Reenable IntegrationTestRebalanceAndKillServersTargeted; it works now (thanks Sergey) |  Major | . | stack | stack |
| [HBASE-7012](https://issues.apache.org/jira/browse/HBASE-7012) | Create hbase-client module |  Critical | . | Elliott Clark | Elliott Clark |
| [HBASE-7939](https://issues.apache.org/jira/browse/HBASE-7939) | Apply fixup for 'hbase-6972 HBase Shell deleteall should not require column to be defined' |  Major | . | stack |  |
| [HBASE-7641](https://issues.apache.org/jira/browse/HBASE-7641) | Port HBASE-6669 'Add BigDecimalColumnInterpreter for doing aggregations using AggregationClient' to trunk |  Major | . | Ted Yu | Julian Wissmann |
| [HBASE-7994](https://issues.apache.org/jira/browse/HBASE-7994) | Disable unit tests under hbase-examples; they fail too often up on jenkins |  Major | . | stack | stack |
| [HBASE-8054](https://issues.apache.org/jira/browse/HBASE-8054) | HBASE-7797 Use consistent package name dregs |  Major | . | stack | stack |
| [HBASE-7898](https://issues.apache.org/jira/browse/HBASE-7898) | Serializing Cells over RPC |  Blocker | IPC/RPC | stack | stack |
| [HBASE-8172](https://issues.apache.org/jira/browse/HBASE-8172) | Fix ./bin/\*.rb scripts or remove them |  Blocker | scripts | stack | rajeshbabu |
| [HBASE-8286](https://issues.apache.org/jira/browse/HBASE-8286) | Move site back up out of hbase-assembly; bad idea |  Major | . | stack | stack |


