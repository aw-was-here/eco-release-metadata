# Apache HBase Changelog

## Release 0.98.1 - 2014-04-06

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8751](https://issues.apache.org/jira/browse/HBASE-8751) | Enable peer cluster to choose/change the ColumnFamilies/Tables it really want to replicate from a source cluster |  Major | Replication | Honghua Feng | Honghua Feng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10887](https://issues.apache.org/jira/browse/HBASE-10887) | tidy ThriftUtilities format |  Trivial | Thrift | Liang Xie | Liang Xie |
| [HBASE-10797](https://issues.apache.org/jira/browse/HBASE-10797) | Add support for -h and --help to rolling\_restart.sh and fix the usage string output |  Trivial | Operability | stack | stack |
| [HBASE-10769](https://issues.apache.org/jira/browse/HBASE-10769) | hbase/bin/hbase-cleanup.sh has wrong usage string |  Trivial | Usability | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [HBASE-10744](https://issues.apache.org/jira/browse/HBASE-10744) | AM#CloseRegion no need to retry on FailedServerException |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10693](https://issues.apache.org/jira/browse/HBASE-10693) | Correct declarations of Atomic\* fields from 'volatile' to 'final' |  Minor | io, master | Honghua Feng | Honghua Feng |
| [HBASE-10678](https://issues.apache.org/jira/browse/HBASE-10678) | Make verifyrep tool implement toolrunner |  Minor | Replication | bharath v | bharath v |
| [HBASE-10592](https://issues.apache.org/jira/browse/HBASE-10592) | Refactor PerformanceEvaluation tool |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10511](https://issues.apache.org/jira/browse/HBASE-10511) | Add latency percentiles on PerformanceEvaluation |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10498](https://issues.apache.org/jira/browse/HBASE-10498) | Add new APIs to load balancer interface |  Major | Balancer | rajeshbabu | rajeshbabu |
| [HBASE-10487](https://issues.apache.org/jira/browse/HBASE-10487) | Avoid allocating new KeyValue and according bytes-copying for appended kvs which don't have existing values |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10419](https://issues.apache.org/jira/browse/HBASE-10419) | Add multiget support to PerformanceEvaluation |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10389](https://issues.apache.org/jira/browse/HBASE-10389) | Add namespace help info in table related shell commands |  Major | shell | Jerry He | Jerry He |
| [HBASE-9501](https://issues.apache.org/jira/browse/HBASE-9501) | Provide throttling for replication |  Major | Replication | Honghua Feng | Honghua Feng |
| [HBASE-8604](https://issues.apache.org/jira/browse/HBASE-8604) | improve reporting of incorrect peer address in replication |  Minor | Replication | Roman Shaposhnik | Rekha Joshi |
| [HBASE-8076](https://issues.apache.org/jira/browse/HBASE-8076) | add better doc for HBaseAdmin#offline API. |  Minor | Admin | rajeshbabu | rajeshbabu |
| [HBASE-7849](https://issues.apache.org/jira/browse/HBASE-7849) | Provide administrative limits around bulkloads of files into a single region |  Major | regionserver | Harsh J | Jimmy Xiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10863](https://issues.apache.org/jira/browse/HBASE-10863) | Scan doesn't return rows for user who has authorization by visibility label in secure deployment |  Major | security | Ted Yu | Ted Yu |
| [HBASE-10862](https://issues.apache.org/jira/browse/HBASE-10862) | Update config field names in hbase-default.xml description for hbase.hregion.memstore.block.multiplier |  Trivial | documentation | Albert Chu | Albert Chu |
| [HBASE-10838](https://issues.apache.org/jira/browse/HBASE-10838) | Insufficient AccessController covering permission check |  Critical | security | Anoop Sam John | Anoop Sam John |
| [HBASE-10833](https://issues.apache.org/jira/browse/HBASE-10833) | Region assignment may fail during cluster start up |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10825](https://issues.apache.org/jira/browse/HBASE-10825) | Add copy-from option to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10804](https://issues.apache.org/jira/browse/HBASE-10804) | Add a validations step to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10793](https://issues.apache.org/jira/browse/HBASE-10793) | AuthFailed as a valid zookeeper state |  Major | Zookeeper | Demai Ni | Demai Ni |
| [HBASE-10766](https://issues.apache.org/jira/browse/HBASE-10766) | SnapshotCleaner allows to delete referenced files |  Major | snapshots | Matteo Bertozzi | bharath v |
| [HBASE-10763](https://issues.apache.org/jira/browse/HBASE-10763) | Backport HBASE-10549(When there is a hole, LoadIncrementalHFiles will hang in an infinite loop.) to 0.98 |  Major | HFile | rajeshbabu | rajeshbabu |
| [HBASE-10762](https://issues.apache.org/jira/browse/HBASE-10762) | clone\_snapshot doesn't check for missing namespace |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10760](https://issues.apache.org/jira/browse/HBASE-10760) | Wrong methods' names in ClusterLoadState class |  Minor | Balancer | Victor Xu | Victor Xu |
| [HBASE-10737](https://issues.apache.org/jira/browse/HBASE-10737) | HConnectionImplementation should stop RpcClient on close |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10731](https://issues.apache.org/jira/browse/HBASE-10731) | Fix environment variables typos in scripts |  Trivial | scripts | Albert Chu | Albert Chu |
| [HBASE-10718](https://issues.apache.org/jira/browse/HBASE-10718) | TestHLogSplit fails when it sets a KV size to be negative |  Major | wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10686](https://issues.apache.org/jira/browse/HBASE-10686) | [WINDOWS] TestStripeStoreFileManager fails on windows |  Minor | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10685](https://issues.apache.org/jira/browse/HBASE-10685) | [WINDOWS] TestKeyStoreKeyProvider fails on windows |  Minor | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10682](https://issues.apache.org/jira/browse/HBASE-10682) | region\_mover.rb throws "can't convert nil into String" for regions moved |  Major | scripts | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10679](https://issues.apache.org/jira/browse/HBASE-10679) | Both clients get wrong scan results if the first scanner expires and the second scanner is created with the same scannerId on the same region |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10677](https://issues.apache.org/jira/browse/HBASE-10677) | boundaries check in hbck throwing IllegalArgumentException |  Major | hbck | rajeshbabu | rajeshbabu |
| [HBASE-10669](https://issues.apache.org/jira/browse/HBASE-10669) | [hbck tool] Usage is wrong for hbck tool for -sidelineCorruptHfiles option |  Minor | hbck | Deepak Sharma | Deepak Sharma |
| [HBASE-10662](https://issues.apache.org/jira/browse/HBASE-10662) | RegionScanner is never closed if the region has been moved-out or re-opened when performing scan request |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10660](https://issues.apache.org/jira/browse/HBASE-10660) | MR over snapshots can OOM when alternative blockcache is enabled |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10639](https://issues.apache.org/jira/browse/HBASE-10639) | Unload script displays wrong counts (off by one) when unloading regions |  Trivial | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10632](https://issues.apache.org/jira/browse/HBASE-10632) | Region lost in limbo after ArrayIndexOutOfBoundsException during assignment |  Major | Region Assignment | Nick Dimiduk | Enis Soztutar |
| [HBASE-10622](https://issues.apache.org/jira/browse/HBASE-10622) | Improve log and Exceptions in Export Snapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10614](https://issues.apache.org/jira/browse/HBASE-10614) | Master could not be stopped |  Major | master | Jingcheng Du | Jingcheng Du |
| [HBASE-10608](https://issues.apache.org/jira/browse/HBASE-10608) | Acquire the FS Delegation Token for Secure ExportSnapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10598](https://issues.apache.org/jira/browse/HBASE-10598) | Written data can not be read out because MemStore#timeRangeTracker might be updated concurrently |  Critical | regionserver | cuijianwei | cuijianwei |
| [HBASE-10587](https://issues.apache.org/jira/browse/HBASE-10587) | Master metrics clusterRequests is wrong |  Minor | master, metrics | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10586](https://issues.apache.org/jira/browse/HBASE-10586) | hadoop2-compat IPC metric registred twice |  Major | metrics | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10580](https://issues.apache.org/jira/browse/HBASE-10580) | IntegrationTestingUtility#restoreCluster leak resource when running in a mini cluster mode |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10579](https://issues.apache.org/jira/browse/HBASE-10579) | [Documentation]: ExportSnapshot tool package incorrectly documented |  Minor | documentation, snapshots | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10575](https://issues.apache.org/jira/browse/HBASE-10575) | ReplicationSource thread can't be terminated if it runs into the loop to contact peer's zk ensemble and fails continuously |  Critical | Replication | Honghua Feng | Honghua Feng |
| [HBASE-10567](https://issues.apache.org/jira/browse/HBASE-10567) | Add overwrite manifest option to ExportSnapshot |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10564](https://issues.apache.org/jira/browse/HBASE-10564) | HRegionServer.nextLong should be removed since it's not used anywhere, or should be used somewhere it meant to |  Minor | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10563](https://issues.apache.org/jira/browse/HBASE-10563) | Set name for FlushHandler thread |  Major | regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-10556](https://issues.apache.org/jira/browse/HBASE-10556) | Possible data loss due to non-handled DroppedSnapshotException for user-triggered flush from client/shell |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10548](https://issues.apache.org/jira/browse/HBASE-10548) | Correct commons-math dependency version |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10539](https://issues.apache.org/jira/browse/HBASE-10539) | HRegion.addAndGetGlobalMemstoreSize returns previous size |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10537](https://issues.apache.org/jira/browse/HBASE-10537) | Let the ExportSnapshot mapper fail and retry on error |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10534](https://issues.apache.org/jira/browse/HBASE-10534) | Rowkey in TsvImporterTextMapper initializing with wrong length |  Major | mapreduce | rajeshbabu | rajeshbabu |
| [HBASE-10500](https://issues.apache.org/jira/browse/HBASE-10500) | Some tools OOM when BucketCache is enabled |  Major | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10495](https://issues.apache.org/jira/browse/HBASE-10495) | upgrade script is printing usage two times with help option. |  Minor | Usability | rajeshbabu | rajeshbabu |
| [HBASE-10482](https://issues.apache.org/jira/browse/HBASE-10482) | ReplicationSyncUp doesn't clean up its ZK, needed for tests |  Major | Replication | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10481](https://issues.apache.org/jira/browse/HBASE-10481) | API Compatibility JDiff script does not properly handle arguments in reverse order |  Minor | test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10452](https://issues.apache.org/jira/browse/HBASE-10452) | Fix potential bugs in exception handlers |  Major | Client, master, regionserver, util | Ding Yuan | Ding Yuan |
| [HBASE-10436](https://issues.apache.org/jira/browse/HBASE-10436) | restore regionserver lists removed from hbase 0.96+ jmx |  Critical | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10432](https://issues.apache.org/jira/browse/HBASE-10432) | Rpc retries non-recoverable error |  Minor | IPC/RPC | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10413](https://issues.apache.org/jira/browse/HBASE-10413) | Tablesplit.getLength returns 0 |  Major | Client, mapreduce | Lukas Nalezenec | Lukas Nalezenec |
| [HBASE-10117](https://issues.apache.org/jira/browse/HBASE-10117) | Avoid synchronization in HRegionScannerImpl.isFilterDone |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10097](https://issues.apache.org/jira/browse/HBASE-10097) | Remove a region name string creation in HRegion#nextInternal |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10080](https://issues.apache.org/jira/browse/HBASE-10080) | Unnecessary call to locateRegion when creating an HTable instance |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9990](https://issues.apache.org/jira/browse/HBASE-9990) | HTable uses the conf for each "newCaller" |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9708](https://issues.apache.org/jira/browse/HBASE-9708) | Improve Snapshot Name Error Message |  Minor | snapshots | Jesse Anderson | Matteo Bertozzi |
| [HBASE-9294](https://issues.apache.org/jira/browse/HBASE-9294) | NPE in /rs-status during RS shutdown |  Minor | regionserver | Steve Loughran | Rekha Joshi |
| [HBASE-8803](https://issues.apache.org/jira/browse/HBASE-8803) | region\_mover.rb should move multiple regions at a time |  Major | Usability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8304](https://issues.apache.org/jira/browse/HBASE-8304) | Bulkload fails to remove files if fs.default.name / fs.defaultFS is configured without default port |  Major | HFile, regionserver | Raymond Liu | haosdent |
| [HBASE-6642](https://issues.apache.org/jira/browse/HBASE-6642) | enable\_all,disable\_all,drop\_all can call "list" command with regex directly. |  Major | shell | Y. SREENIVASULU REDDY | Matteo Bertozzi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10764](https://issues.apache.org/jira/browse/HBASE-10764) | TestLoadIncrementalHFilesSplitRecovery#testBulkLoadPhaseFailure takes too long |  Minor | test | rajeshbabu | rajeshbabu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10741](https://issues.apache.org/jira/browse/HBASE-10741) | Deprecate HTablePool and HTableFactory |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10651](https://issues.apache.org/jira/browse/HBASE-10651) | Fix incorrect handling of IE that restores current thread's interrupt status within while/for loops in Replication |  Major | regionserver, Replication | Honghua Feng | Honghua Feng |
| [HBASE-10526](https://issues.apache.org/jira/browse/HBASE-10526) | Using Cell instead of KeyValue in HFileOutputFormat |  Major | mapreduce | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10169](https://issues.apache.org/jira/browse/HBASE-10169) | Batch coprocessor |  Major | Coprocessors | Jingcheng Du | Jingcheng Du |
| [HBASE-9966](https://issues.apache.org/jira/browse/HBASE-9966) | Create IntegrationTest for Online Bloom Filter Change |  Major | HFile, test | Aleksandr Shulman | Aleksandr Shulman |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


