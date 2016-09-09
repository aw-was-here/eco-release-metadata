
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

## Release 0.96.1 - 2013-12-16

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9973](https://issues.apache.org/jira/browse/HBASE-9973) | [ACL]: Users with 'Admin' ACL permission will lose permissions after upgrade to 0.96.x from 0.94.x or 0.92.x |  Major | migration, security | Aleksandr Shulman | Himanshu Vashishtha |
| [HBASE-10073](https://issues.apache.org/jira/browse/HBASE-10073) | Revert HBASE-9718 (Add a test scope dependency on org.slf4j:slf4j-api to hbase-client) |  Major | Zookeeper | Aleksandr Shulman | Andrew Purtell |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7525](https://issues.apache.org/jira/browse/HBASE-7525) | A canary monitoring program specifically for regionserver |  Critical | monitoring | takeshi.miao | takeshi.miao |
| [HBASE-9985](https://issues.apache.org/jira/browse/HBASE-9985) | Add HBase shell command to start/stop tracing |  Minor | shell | Masatake Iwasaki |  |
| [HBASE-10119](https://issues.apache.org/jira/browse/HBASE-10119) | Allow HBase coprocessors to clean up when they fail |  Major | . | Benoit Sigoure | Benoit Sigoure |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9570](https://issues.apache.org/jira/browse/HBASE-9570) | With AccessDeniedException, HBase shell would be better to just display the error message to be user friendly |  Minor | shell | Yang Wang | Yang Wang |
| [HBASE-9771](https://issues.apache.org/jira/browse/HBASE-9771) | [WebUI] Humanize store and blockcache statistics on RS |  Trivial | UI | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9784](https://issues.apache.org/jira/browse/HBASE-9784) | Switch to Hadoop-2.2 |  Major | hadoop2 | Enis Soztutar | Enis Soztutar |
| [HBASE-9716](https://issues.apache.org/jira/browse/HBASE-9716) | LoadTestTool should provide default min and max settings to the data generator |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-9772](https://issues.apache.org/jira/browse/HBASE-9772) | Normalize new client default values |  Minor | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9750](https://issues.apache.org/jira/browse/HBASE-9750) | Add retries around Action server stop/start |  Major | test | stack | Enis Soztutar |
| [HBASE-9221](https://issues.apache.org/jira/browse/HBASE-9221) | Provide interface for getting a User in the client |  Major | Client, hadoop2, security | Jesse Yates | Jesse Yates |
| [HBASE-9867](https://issues.apache.org/jira/browse/HBASE-9867) | Save on array copies with a subclass of LiteralByteString |  Major | Protobufs | stack | stack |
| [HBASE-9855](https://issues.apache.org/jira/browse/HBASE-9855) | evictBlocksByHfileName improvement for bucket cache |  Major | regionserver | Liang Xie | Liang Xie |
| [HBASE-4654](https://issues.apache.org/jira/browse/HBASE-4654) | [replication] Add a check to make sure we don't replicate to ourselves |  Major | . | Jean-Daniel Cryans | Demai Ni |
| [HBASE-9963](https://issues.apache.org/jira/browse/HBASE-9963) | Remove the ReentrantReadWriteLock in the MemStore |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8438](https://issues.apache.org/jira/browse/HBASE-8438) | Extend bin/hbase to print a "mapreduce classpath" |  Major | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9831](https://issues.apache.org/jira/browse/HBASE-9831) | 'hbasefsck.numthreads' property isn't passed to hbck via cmdline -D option |  Minor | hbck | takeshi.miao | takeshi.miao |
| [HBASE-9924](https://issues.apache.org/jira/browse/HBASE-9924) | Avoid potential filename conflict in region\_mover.rb |  Major | shell | Liang Xie | Liang Xie |
| [HBASE-9998](https://issues.apache.org/jira/browse/HBASE-9998) | Fix javadoc warnings induced by commits |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10001](https://issues.apache.org/jira/browse/HBASE-10001) | Add a coprocessor to help testing the performances without taking into account the i/o |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10007](https://issues.apache.org/jira/browse/HBASE-10007) | PerformanceEvaluation: Add sampling and latency collection to randomRead test |  Minor | Performance, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-5945](https://issues.apache.org/jira/browse/HBASE-5945) | Reduce buffer copies in IPC server response path |  Major | IPC/RPC | Todd Lipcon | stack |
| [HBASE-10022](https://issues.apache.org/jira/browse/HBASE-10022) | Fix the HE\_EQUALS\_USE\_HASHCODE warning under hbase-hadoop1-compat |  Minor | . | Liang Xie | Liang Xie |
| [HBASE-8465](https://issues.apache.org/jira/browse/HBASE-8465) | Auto-drop rollback snapshot for snapshot restore |  Major | . | Ted Yu | Matteo Bertozzi |
| [HBASE-10024](https://issues.apache.org/jira/browse/HBASE-10024) | Add an interface to create put with immutable arrays |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10020](https://issues.apache.org/jira/browse/HBASE-10020) | Add maven compile-protobuf profile |  Major | build | Enis Soztutar | Enis Soztutar |
| [HBASE-9931](https://issues.apache.org/jira/browse/HBASE-9931) | Optional setBatch for CopyTable to copy large rows in batches |  Major | mapreduce | Dave Latham | Nick Dimiduk |
| [HBASE-10074](https://issues.apache.org/jira/browse/HBASE-10074) | consolidate and improve capacity/sizing documentation |  Major | documentation | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10010](https://issues.apache.org/jira/browse/HBASE-10010) | eliminate the put latency spike on the new log file beginning |  Major | regionserver | Liang Xie | Liang Xie |
| [HBASE-10048](https://issues.apache.org/jira/browse/HBASE-10048) | Add hlog number metric in regionserver |  Minor | metrics | Liu Shaohui | Liu Shaohui |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix |  Major | scripts | Aditya Kishore | Aditya Kishore |
| [HBASE-9751](https://issues.apache.org/jira/browse/HBASE-9751) | Excessive  readpoints checks in StoreFileScanner |  Major | . | Vladimir Rodionov | Lars Hofhansl |
| [HBASE-9753](https://issues.apache.org/jira/browse/HBASE-9753) | Excessive readpoint checks in MemstoreScanner |  Major | . | Lars Hofhansl | Ted Yu |
| [HBASE-9773](https://issues.apache.org/jira/browse/HBASE-9773) | Master aborted when hbck asked the master to assign a region that was already online |  Major | . | Devaraj Das | Jimmy Xiang |
| [HBASE-9791](https://issues.apache.org/jira/browse/HBASE-9791) | MR initializes scanner twice |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9776](https://issues.apache.org/jira/browse/HBASE-9776) | Test Load And Verify Fails with TableNotEnabledException |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9747](https://issues.apache.org/jira/browse/HBASE-9747) | PrefixFilter with OR condition gives wrong results |  Major | Filters | Deepa Remesh | Aditya Kishore |
| [HBASE-9788](https://issues.apache.org/jira/browse/HBASE-9788) | [WINDOWS] Update rest server class name |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9755](https://issues.apache.org/jira/browse/HBASE-9755) | Cannot run classes in hbase-server tests jar from command line |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-9796](https://issues.apache.org/jira/browse/HBASE-9796) | npe in RegionServerCallable |  Major | . | stack | stack |
| [HBASE-9798](https://issues.apache.org/jira/browse/HBASE-9798) | Include dependency hamcrest-core |  Major | build, test | Enis Soztutar | Enis Soztutar |
| [HBASE-9793](https://issues.apache.org/jira/browse/HBASE-9793) | Offline a region before it's closed could cause double assignment |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9786](https://issues.apache.org/jira/browse/HBASE-9786) | [hbck]: hbck -metaonly incorrectly reports inconsistent regions after HBASE-9698 fix |  Major | hbck | Aleksandr Shulman | Matteo Bertozzi |
| [HBASE-9727](https://issues.apache.org/jira/browse/HBASE-9727) | HBase Rest Server - DELETE scanner operation is a no-op |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-9813](https://issues.apache.org/jira/browse/HBASE-9813) | Log splitting doesn't prevent RS creating new hlog file |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9737](https://issues.apache.org/jira/browse/HBASE-9737) | Corrupt HFile cause resource leak leading to Region Server OOM |  Critical | HFile | Aditya Kishore | Aditya Kishore |
| [HBASE-9694](https://issues.apache.org/jira/browse/HBASE-9694) | HBaseTestingUtility.createTable infinite loop |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9768](https://issues.apache.org/jira/browse/HBASE-9768) | Two issues in AsyncProcess |  Major | . | Jeffrey Zhong | Nicolas Liochon |
| [HBASE-9785](https://issues.apache.org/jira/browse/HBASE-9785) | Fix heap size reporting in HRegion |  Major | . | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9821](https://issues.apache.org/jira/browse/HBASE-9821) | Scanner id could collide |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7600](https://issues.apache.org/jira/browse/HBASE-7600) | TestAdmin.testCreateBadTables is failing occasionally |  Major | . | Lars Hofhansl | Liu Shaohui |
| [HBASE-9593](https://issues.apache.org/jira/browse/HBASE-9593) | Region server left in online servers list forever if it went down after registering to master and before creating ephemeral node |  Major | master | rajeshbabu | rajeshbabu |
| [HBASE-9807](https://issues.apache.org/jira/browse/HBASE-9807) | block encoder unnecessarily copies the key for each reseek |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9748](https://issues.apache.org/jira/browse/HBASE-9748) | Address outstanding comments raised for HBASE-9696 |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9765](https://issues.apache.org/jira/browse/HBASE-9765) | TestImportTsv.testBulkOutputWithTsvImporterTextMapper() may not be working correctly |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-9848](https://issues.apache.org/jira/browse/HBASE-9848) | Make regionserver Canary exit with different exit codes |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-9759](https://issues.apache.org/jira/browse/HBASE-9759) | Prevent random number collision in IntegrationTestBulkLoad |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-9843](https://issues.apache.org/jira/browse/HBASE-9843) | Various fixes in client code |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9822](https://issues.apache.org/jira/browse/HBASE-9822) | IntegrationTestLazyCfLoading failed occasionally in a secure enviroment |  Trivial | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9659](https://issues.apache.org/jira/browse/HBASE-9659) | some integration tests can no longer be run using maven |  Major | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9862](https://issues.apache.org/jira/browse/HBASE-9862) | manage error per server and per region in the protobuffed client |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9861](https://issues.apache.org/jira/browse/HBASE-9861) | Location does not have to be refreshed on regionTooBusy |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9871](https://issues.apache.org/jira/browse/HBASE-9871) | PB issue : Increment attributes are not getting passed to server |  Major | Protobufs | Anoop Sam John | Anoop Sam John |
| [HBASE-9868](https://issues.apache.org/jira/browse/HBASE-9868) | Remove some array copy, especially around protobuf |  Major | Client, Protobufs | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9859](https://issues.apache.org/jira/browse/HBASE-9859) | Canary Shouldn't go off if the table being read from is disabled |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-9901](https://issues.apache.org/jira/browse/HBASE-9901) | Add a toString in HTable, fix a log in AssignmentManager |  Trivial | Client, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9886](https://issues.apache.org/jira/browse/HBASE-9886) | Optimize ServerName#compareTo |  Trivial | Client, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9792](https://issues.apache.org/jira/browse/HBASE-9792) | Region states should update last assignments when a region is opened. |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9909](https://issues.apache.org/jira/browse/HBASE-9909) | TestHFilePerformance should not be a unit test, but a tool |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9900](https://issues.apache.org/jira/browse/HBASE-9900) | Fix unintended byte[].toString in AccessController |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-9906](https://issues.apache.org/jira/browse/HBASE-9906) | Restore snapshot fails to restore the meta edits sporadically |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-9915](https://issues.apache.org/jira/browse/HBASE-9915) | Performance: isSeeked() in EncodedScannerV2 always returns false |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9908](https://issues.apache.org/jira/browse/HBASE-9908) | [WINDOWS] Fix filesystem / classloader related unit tests |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9890](https://issues.apache.org/jira/browse/HBASE-9890) | MR jobs are not working if started by a delegated user |  Major | mapreduce, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9926](https://issues.apache.org/jira/browse/HBASE-9926) | Scanner doesn't check if a region is available |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9952](https://issues.apache.org/jira/browse/HBASE-9952) | Snapshot restore may fail due to NullPointerException |  Major | . | Ted Yu | Enis Soztutar |
| [HBASE-9895](https://issues.apache.org/jira/browse/HBASE-9895) | 0.96 Import utility can't import an exported file from 0.94 |  Major | mapreduce | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9918](https://issues.apache.org/jira/browse/HBASE-9918) | MasterAddressTracker & ZKNamespaceManager ZK listeners are missed after master recovery |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9563](https://issues.apache.org/jira/browse/HBASE-9563) | Autorestart doesn't work if zkcleaner fails |  Critical | . | Elliott Clark | stack |
| [HBASE-9850](https://issues.apache.org/jira/browse/HBASE-9850) | Issues with UI for table compact/split operation completion. After split/compaction operation using UI, the page is not automatically redirecting back using IE8/Firefox. |  Major | UI | Kashif | Kashif |
| [HBASE-9885](https://issues.apache.org/jira/browse/HBASE-9885) | Avoid some Result creation in protobuf conversions |  Major | Client, Protobufs, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9902](https://issues.apache.org/jira/browse/HBASE-9902) | Region Server is starting normally even if clock skew is more than default 30 seconds(or any configured). -\> Regionserver node time is greater than master node time |  Major | master | Kashif | Kashif |
| [HBASE-9957](https://issues.apache.org/jira/browse/HBASE-9957) | [WINDOWS] TestNamespaceUpgrade fails on windows |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9865](https://issues.apache.org/jira/browse/HBASE-9865) | Reused WALEdits in replication may cause RegionServers to go OOM |  Major | . | churro morales | Lars Hofhansl |
| [HBASE-9956](https://issues.apache.org/jira/browse/HBASE-9956) | Remove keyLength cache from KeyValue |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9138](https://issues.apache.org/jira/browse/HBASE-9138) | getHaseIntegrationTestingUtility() is misspelled |  Trivial | test | chendihao | chendihao |
| [HBASE-9870](https://issues.apache.org/jira/browse/HBASE-9870) | HFileDataBlockEncoderImpl#diskToCacheFormat uses wrong format |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9849](https://issues.apache.org/jira/browse/HBASE-9849) | [REST] Forbidden schema delete in read only mode |  Major | REST | Julian Zhou | Julian Zhou |
| [HBASE-9958](https://issues.apache.org/jira/browse/HBASE-9958) | Remove some array copy, change lock scope in locateRegion |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9810](https://issues.apache.org/jira/browse/HBASE-9810) | Global memstore size will be calculated wrongly if replaying recovered edits throws exception |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-9710](https://issues.apache.org/jira/browse/HBASE-9710) | Use the region name, not the encoded name, when region is not on current server |  Minor | regionserver | Benoit Sigoure | Benoit Sigoure |
| [HBASE-9947](https://issues.apache.org/jira/browse/HBASE-9947) | Add CM action for online compression algorithm change |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9961](https://issues.apache.org/jira/browse/HBASE-9961) | [WINDOWS] Multicast should bind to local address |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-9970](https://issues.apache.org/jira/browse/HBASE-9970) | HBase BulkLoad, table is creating with the timestamp key also as a column to the table. |  Major | . | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-9975](https://issues.apache.org/jira/browse/HBASE-9975) | Not starting ReplicationSink when using custom implementation for the ReplicationSink. |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-9983](https://issues.apache.org/jira/browse/HBASE-9983) | Lower the memory footprint of HRegionLocation |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9869](https://issues.apache.org/jira/browse/HBASE-9869) | Optimize HConnectionManager#getCachedLocation |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9982](https://issues.apache.org/jira/browse/HBASE-9982) | TestClientNoCluster should use random numbers |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9987](https://issues.apache.org/jira/browse/HBASE-9987) | Remove some synchronisation points in HConnectionManager |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9988](https://issues.apache.org/jira/browse/HBASE-9988) | DOn't use HRI#getEncodedName in the client |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9959](https://issues.apache.org/jira/browse/HBASE-9959) | Remove some array copy - server side |  Major | Protobufs, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9995](https://issues.apache.org/jira/browse/HBASE-9995) | Not stopping ReplicationSink when using custom implementation for the ReplicationSink |  Minor | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-9989](https://issues.apache.org/jira/browse/HBASE-9989) | Add a test on get in TestClientNoCluster |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9893](https://issues.apache.org/jira/browse/HBASE-9893) | Incorrect assert condition in OrderedBytes decoding |  Minor | Client | He Liangliang | Nick Dimiduk |
| [HBASE-10012](https://issues.apache.org/jira/browse/HBASE-10012) | Hide ServerName constructor |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10014](https://issues.apache.org/jira/browse/HBASE-10014) | HRegion#doMiniBatchMutation rollbacks the memstore even if there is nothing to rollback. |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10013](https://issues.apache.org/jira/browse/HBASE-10013) | Enhance the message about ZK when there is an exception |  Trivial | Zookeeper | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9992](https://issues.apache.org/jira/browse/HBASE-9992) | [hbck] Refactor so that arbitrary -D cmdline options are included |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9976](https://issues.apache.org/jira/browse/HBASE-9976) | Don't create duplicated TableName objects |  Major | Client, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10011](https://issues.apache.org/jira/browse/HBASE-10011) | Fix some findbugs in the client |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10026](https://issues.apache.org/jira/browse/HBASE-10026) | HBaseAdmin#createTable could fail if region splits too fast |  Minor | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10015](https://issues.apache.org/jira/browse/HBASE-10015) | Replace intrinsic locking with explicit locks in StoreScanner |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8143](https://issues.apache.org/jira/browse/HBASE-8143) | HBase on Hadoop 2 with local short circuit reads (ssr) causes OOM |  Critical | hadoop2 | Enis Soztutar | stack |
| [HBASE-10045](https://issues.apache.org/jira/browse/HBASE-10045) | HMaster's clear command could conflict with JMX ports |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-10046](https://issues.apache.org/jira/browse/HBASE-10046) | Unmonitored HBase service could accumulate Status objects and OOM |  Major | monitoring | Aditya Kishore | Aditya Kishore |
| [HBASE-10050](https://issues.apache.org/jira/browse/HBASE-10050) | graceful\_stop.sh syntax error |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10051](https://issues.apache.org/jira/browse/HBASE-10051) | rolling-restart.sh have old value of "zookeeper.znode.unassiged" config causing infinite loop |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10053](https://issues.apache.org/jira/browse/HBASE-10053) | ProtobufUtil#toMutationNoData interface change causes downstream project build break |  Critical | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9718](https://issues.apache.org/jira/browse/HBASE-9718) | Add a test scope dependency on org.slf4j:slf4j-api to hbase-client |  Minor | Client | Andrew Purtell | Andrew Purtell |
| [HBASE-9978](https://issues.apache.org/jira/browse/HBASE-9978) | The client retries even if the method is not present on the server |  Trivial | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10079](https://issues.apache.org/jira/browse/HBASE-10079) | Race in TableName cache |  Blocker | regionserver | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10097](https://issues.apache.org/jira/browse/HBASE-10097) | Remove a region name string creation in HRegion#nextInternal |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10085](https://issues.apache.org/jira/browse/HBASE-10085) | Some regions aren't re-assigned after a cluster restarts |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10061](https://issues.apache.org/jira/browse/HBASE-10061) | TableMapReduceUtil.findOrCreateJar calls updateMap(null, ) resulting in thrown NPE |  Minor | mapreduce | Amit Sela | Amit Sela |
| [HBASE-10108](https://issues.apache.org/jira/browse/HBASE-10108) | NullPointerException thrown while use Canary with '-regionserver' option |  Minor | monitoring | takeshi.miao | takeshi.miao |
| [HBASE-10101](https://issues.apache.org/jira/browse/HBASE-10101) | testOfflineRegionReAssginedAfterMasterRestart times out sometimes. |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10090](https://issues.apache.org/jira/browse/HBASE-10090) | Master could hang in assigning meta |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10111](https://issues.apache.org/jira/browse/HBASE-10111) | Verify that a snapshot is not corrupted before restoring it |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10112](https://issues.apache.org/jira/browse/HBASE-10112) | Hbase rest query params for maxVersions and maxValues are not parsed |  Minor | REST | Koert Kuipers | Jean-Marc Spaggiari |
| [HBASE-10103](https://issues.apache.org/jira/browse/HBASE-10103) | TestNodeHealthCheckChore#testRSHealthChore: Stoppable must have been stopped |  Major | . | Andrew Purtell | Andrew Purtell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9692](https://issues.apache.org/jira/browse/HBASE-9692) | TestOrderedBytes doesn't display the arrays correctly |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9720](https://issues.apache.org/jira/browse/HBASE-9720) | TestSplitTransactionOnCluster#testShutdownFixupWhenDaughterHasSplit occasionally times out |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9827](https://issues.apache.org/jira/browse/HBASE-9827) | Intermittent TestLogRollingNoCluster#testContendedLogRolling failure |  Major | . | Ted Yu | Jimmy Xiang |
| [HBASE-9851](https://issues.apache.org/jira/browse/HBASE-9851) | TestHBaseFsck.testQuarantineMissingHFile is flaky |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8552](https://issues.apache.org/jira/browse/HBASE-8552) | fix coverage org.apache.hadoop.hbase.rest.filter |  Major | . | Aleksey Gorshkov | Andrey Klochkov |
| [HBASE-8556](https://issues.apache.org/jira/browse/HBASE-8556) | fix coverage  org.apache.hadoop.hbase.metrics.histogram |  Major | . | Aleksey Gorshkov | Andrey Klochkov |
| [HBASE-8543](https://issues.apache.org/jira/browse/HBASE-8543) | fix coverage org.apache.hadoop.hbase.rest.client |  Major | test | Aleksey Gorshkov | Andrey Klochkov |
| [HBASE-8559](https://issues.apache.org/jira/browse/HBASE-8559) | increase unit-test coverage of package org.apache.hadoop.hbase.coprocessor |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HBASE-9836](https://issues.apache.org/jira/browse/HBASE-9836) | Intermittent TestRegionObserverScannerOpenHook#testRegionObserverCompactionTimeStacking failure |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9880](https://issues.apache.org/jira/browse/HBASE-9880) | client.TestAsyncProcess.testWithNoClearOnFail broke on 0.96 by HBASE-9867 |  Major | . | stack | Nicolas Liochon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9562](https://issues.apache.org/jira/browse/HBASE-9562) | Make HLogPE run against configured FS |  Major | Performance, wal | stack | stack |
| [HBASE-9917](https://issues.apache.org/jira/browse/HBASE-9917) | Fix it so Default Connection Pool does not spin up max threads even when not needed |  Major | Client | stack | stack |
| [HBASE-9907](https://issues.apache.org/jira/browse/HBASE-9907) | Rig to fake a cluster so can profile client behaviors |  Major | Client | stack | stack |
| [HBASE-9165](https://issues.apache.org/jira/browse/HBASE-9165) | Improvements to addDependencyJars |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10035](https://issues.apache.org/jira/browse/HBASE-10035) | Fix Potential Resource Leak in IPCUtils |  Major | IPC/RPC | Elliott Clark | Elliott Clark |
| [HBASE-10036](https://issues.apache.org/jira/browse/HBASE-10036) | Fix Potential Resource Leak in MetaReader |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-10037](https://issues.apache.org/jira/browse/HBASE-10037) | Fix potential Resource Leak in EncodedDataBlock |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-10038](https://issues.apache.org/jira/browse/HBASE-10038) | Fix potential Resource Leak in ZNodeCleaner |  Minor | MTTR | Elliott Clark | Elliott Clark |
| [HBASE-10039](https://issues.apache.org/jira/browse/HBASE-10039) | Fix potential Resource Leak in RpcServer |  Critical | IPC/RPC, security | Elliott Clark | Elliott Clark |
| [HBASE-10094](https://issues.apache.org/jira/browse/HBASE-10094) | Add batching to HLogPerformanceEvaluation |  Major | Performance, wal | stack | Himanshu Vashishtha |
| [HBASE-9966](https://issues.apache.org/jira/browse/HBASE-9966) | Create IntegrationTest for Online Bloom Filter Change |  Major | HFile, test | Aleksandr Shulman | Aleksandr Shulman |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9758](https://issues.apache.org/jira/browse/HBASE-9758) | Log missing rows and their regions if ITBLL fails |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9837](https://issues.apache.org/jira/browse/HBASE-9837) | Forward port HBASE-9080 'Retain assignment should be used when re-enabling table(s)' |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-9757](https://issues.apache.org/jira/browse/HBASE-9757) | Reenable fast region move in SlowDeterministicMonkey |  Major | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9954](https://issues.apache.org/jira/browse/HBASE-9954) | Incorporate HTTPS support for HBase |  Major | . | Ted Yu | Ted Yu |


