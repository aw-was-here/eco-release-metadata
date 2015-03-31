# Hadoop Changelog

## Release 2.3.0 - 2014-02-20

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4997](https://issues.apache.org/jira/browse/HDFS-4997) | libhdfs doesn't return correct error codes in most cases |  Major | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5703](https://issues.apache.org/jira/browse/HDFS-5703) | Add support for HTTPS and swebhdfs to HttpFS |  Major | webhdfs | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-5260](https://issues.apache.org/jira/browse/HDFS-5260) | Merge zero-copy memory-mapped HDFS client reads to trunk and branch-2. |  Major | hdfs-client, libhdfs | Chris Nauroth | Chris Nauroth |
| [HDFS-4949](https://issues.apache.org/jira/browse/HDFS-4949) | Centralized cache management in HDFS |  Major | datanode, namenode | Andrew Wang | Andrew Wang |
| [HDFS-2832](https://issues.apache.org/jira/browse/HDFS-2832) | Enable support for heterogeneous storages in HDFS - DN as a collection of storages |  Major | datanode, namenode | Suresh Srinivas | Arpit Agarwal |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5841](https://issues.apache.org/jira/browse/HDFS-5841) | Update HDFS caching documentation with new changes |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-5833](https://issues.apache.org/jira/browse/HDFS-5833) | SecondaryNameNode have an incorrect java doc |  Trivial | namenode | Bangtao Zhou |  |
| [HDFS-5825](https://issues.apache.org/jira/browse/HDFS-5825) | Use FileUtils.copyFile() to implement DFSTestUtils.copyFile() |  Minor | . | Haohui Mai | Haohui Mai |
| [HDFS-5788](https://issues.apache.org/jira/browse/HDFS-5788) | listLocatedStatus response can be very large |  Major | namenode | Nathan Roberts | Nathan Roberts |
| [HDFS-5748](https://issues.apache.org/jira/browse/HDFS-5748) | Too much information shown in the dfs health page. |  Major | . | Kihwal Lee | Haohui Mai |
| [HDFS-5721](https://issues.apache.org/jira/browse/HDFS-5721) | sharedEditsImage in Namenode#initializeSharedEdits() should be closed before method returns |  Minor | . | Ted Yu | Ted Yu |
| [HDFS-5695](https://issues.apache.org/jira/browse/HDFS-5695) | Clean up TestOfflineEditsViewer and OfflineEditsViewerHelper |  Major | test | Haohui Mai | Haohui Mai |
| [HDFS-5677](https://issues.apache.org/jira/browse/HDFS-5677) | Need error checking for HA cluster configuration |  Minor | datanode, ha | Vincent Sheffer | Vincent Sheffer |
| [HDFS-5676](https://issues.apache.org/jira/browse/HDFS-5676) | fix inconsistent synchronization of CachingStrategy |  Minor | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5674](https://issues.apache.org/jira/browse/HDFS-5674) | Editlog code cleanup |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-5665](https://issues.apache.org/jira/browse/HDFS-5665) | Remove the unnecessary writeLock while initializing CacheManager in FsNameSystem Ctor |  Major | namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-5663](https://issues.apache.org/jira/browse/HDFS-5663) | make the retry time and interval value configurable in openInfo() |  Major | hdfs-client | Liang Xie | Liang Xie |
| [HDFS-5662](https://issues.apache.org/jira/browse/HDFS-5662) | Can't decommission a DataNode due to file's replication factor larger than the rest of the cluster size |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-5652](https://issues.apache.org/jira/browse/HDFS-5652) | refactoring/uniforming invalid block token exception handling in DFSInputStream |  Minor | hdfs-client | Liang Xie | Liang Xie |
| [HDFS-5637](https://issues.apache.org/jira/browse/HDFS-5637) | try to refeatchToken while local read InvalidToken occurred |  Major | hdfs-client, security | Liang Xie | Liang Xie |
| [HDFS-5633](https://issues.apache.org/jira/browse/HDFS-5633) | Improve OfflineImageViewer to use less memory |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-5587](https://issues.apache.org/jira/browse/HDFS-5587) | add debug information when NFS fails to start with duplicate user or group names |  Minor | nfs | Brandon Li | Brandon Li |
| [HDFS-5577](https://issues.apache.org/jira/browse/HDFS-5577) | NFS user guide update |  Trivial | documentation | Brandon Li | Brandon Li |
| [HDFS-5568](https://issues.apache.org/jira/browse/HDFS-5568) | Support inclusion of snapshot paths in Namenode fsck |  Major | snapshots | Vinayakumar B | Vinayakumar B |
| [HDFS-5563](https://issues.apache.org/jira/browse/HDFS-5563) | NFS gateway should commit the buffered data when read request comes after write to the same file |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5561](https://issues.apache.org/jira/browse/HDFS-5561) | FSNameSystem#getNameJournalStatus() in JMX should return plain text instead of HTML |  Minor | namenode | Fengdong Yu | Haohui Mai |
| [HDFS-5548](https://issues.apache.org/jira/browse/HDFS-5548) | Use ConcurrentHashMap in portmap |  Major | nfs | Haohui Mai | Haohui Mai |
| [HDFS-5532](https://issues.apache.org/jira/browse/HDFS-5532) | Enable the webhdfs by default to support new HDFS web UI |  Major | webhdfs | Vinayakumar B | Vinayakumar B |
| [HDFS-5495](https://issues.apache.org/jira/browse/HDFS-5495) | Remove further JUnit3 usages from HDFS |  Major | . | Andrew Wang | Jarek Jarcec Cecho |
| [HDFS-5467](https://issues.apache.org/jira/browse/HDFS-5467) | Remove tab characters in hdfs-default.xml |  Trivial | . | Andrew Wang | Shinichi Yamashita |
| [HDFS-5399](https://issues.apache.org/jira/browse/HDFS-5399) | Revisit SafeModeException and corresponding retry policies |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-5371](https://issues.apache.org/jira/browse/HDFS-5371) | Let client retry the same NN when "dfs.client.test.drop.namenode.response.number" is enabled |  Minor | ha, test | Jing Zhao | Jing Zhao |
| [HDFS-5360](https://issues.apache.org/jira/browse/HDFS-5360) | Improvement of usage message of renameSnapshot and deleteSnapshot |  Minor | snapshots | Shinichi Yamashita | Shinichi Yamashita |
| [HDFS-5350](https://issues.apache.org/jira/browse/HDFS-5350) | Name Node should report fsimage transfer time as a metric |  Minor | namenode | Rob Weltman | Jimmy Xiang |
| [HDFS-5344](https://issues.apache.org/jira/browse/HDFS-5344) | Make LsSnapshottableDir as Tool interface implementation |  Minor | snapshots, tools | sathish | sathish |
| [HDFS-5338](https://issues.apache.org/jira/browse/HDFS-5338) | Add a conf to disable hostname check in DN registration |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-5333](https://issues.apache.org/jira/browse/HDFS-5333) | Improvement of current HDFS Web UI |  Major | . | Jing Zhao | Haohui Mai |
| [HDFS-5331](https://issues.apache.org/jira/browse/HDFS-5331) | make SnapshotDiff.java to a o.a.h.util.Tool interface implementation |  Major | snapshots | Vinayakumar B | Vinayakumar B |
| [HDFS-5323](https://issues.apache.org/jira/browse/HDFS-5323) | Remove some deadcode in BlockManager |  Minor | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5267](https://issues.apache.org/jira/browse/HDFS-5267) | Remove volatile from LightWeightHashSet |  Minor | . | Junping Du | Junping Du |
| [HDFS-5220](https://issues.apache.org/jira/browse/HDFS-5220) | Expose group resolution time as metric |  Major | namenode | Rob Weltman | Jimmy Xiang |
| [HDFS-5207](https://issues.apache.org/jira/browse/HDFS-5207) | In BlockPlacementPolicy, update 2 parameters of chooseTarget() |  Major | namenode | Junping Du | Junping Du |
| [HDFS-5188](https://issues.apache.org/jira/browse/HDFS-5188) | Clean up BlockPlacementPolicy and its implementations |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-5144](https://issues.apache.org/jira/browse/HDFS-5144) | Document time unit to NameNodeMetrics.java |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5068](https://issues.apache.org/jira/browse/HDFS-5068) | Convert NNThroughputBenchmark to a Tool to allow generic options. |  Major | benchmarks | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-5037](https://issues.apache.org/jira/browse/HDFS-5037) | Active NN should trigger its own edit log rolls |  Critical | ha, namenode | Todd Lipcon | Andrew Wang |
| [HDFS-5034](https://issues.apache.org/jira/browse/HDFS-5034) | Remove debug prints from getFileLinkInfo |  Trivial | namenode | Andrew Wang | Andrew Wang |
| [HDFS-5004](https://issues.apache.org/jira/browse/HDFS-5004) | Add additional JMX bean for NameNode status data |  Major | namenode | Trevor Lorimer | Trevor Lorimer |
| [HDFS-4983](https://issues.apache.org/jira/browse/HDFS-4983) | Numeric usernames do not work with WebHDFS FS |  Major | webhdfs | Harsh J | Yongjun Zhang |
| [HDFS-4879](https://issues.apache.org/jira/browse/HDFS-4879) | Add "blocked ArrayList" collection to avoid CMS full GCs |  Major | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-4860](https://issues.apache.org/jira/browse/HDFS-4860) | Add additional attributes to JMX beans |  Major | namenode | Trevor Lorimer | Trevor Lorimer |
| [HDFS-4278](https://issues.apache.org/jira/browse/HDFS-4278) | Log an ERROR when DFS\_BLOCK\_ACCESS\_TOKEN\_ENABLE config  is disabled but security is turned on. |  Major | datanode, namenode | Harsh J | Kousuke Saruta |
| [HDFS-2933](https://issues.apache.org/jira/browse/HDFS-2933) | Improve DataNode Web UI Index Page |  Major | datanode | Philip Zeyliger | Vivek Ganesan |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5921](https://issues.apache.org/jira/browse/HDFS-5921) | Cannot browse file system via NN web UI if any directory has the sticky bit set |  Critical | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-5876](https://issues.apache.org/jira/browse/HDFS-5876) | SecureDataNodeStarter does not pick up configuration in hdfs-site.xml |  Major | datanode | Haohui Mai | Haohui Mai |
| [HDFS-5873](https://issues.apache.org/jira/browse/HDFS-5873) | dfs.http.policy should have higher precedence over dfs.https.enable |  Major | . | Yesha Vora | Haohui Mai |
| [HDFS-5845](https://issues.apache.org/jira/browse/HDFS-5845) | SecondaryNameNode dies when checkpointing with cache pools |  Blocker | namenode | Andrew Wang | Andrew Wang |
| [HDFS-5844](https://issues.apache.org/jira/browse/HDFS-5844) | Fix broken link in WebHDFS.apt.vm |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5842](https://issues.apache.org/jira/browse/HDFS-5842) | Cannot create hftp filesystem when using a proxy user ugi and a doAs on a secure cluster |  Major | security | Arpit Gupta | Jing Zhao |
| [HDFS-5837](https://issues.apache.org/jira/browse/HDFS-5837) | dfs.namenode.replication.considerLoad does not consider decommissioned nodes |  Major | namenode | Bryan Beaudreault | Tao Luo |
| [HDFS-5830](https://issues.apache.org/jira/browse/HDFS-5830) | WebHdfsFileSystem.getFileBlockLocations throws IllegalArgumentException when accessing another cluster. |  Blocker | caching, hdfs-client | Yongjun Zhang | Yongjun Zhang |
| [HDFS-5806](https://issues.apache.org/jira/browse/HDFS-5806) | balancer should set SoTimeout to avoid indefinite hangs |  Major | balancer & mover | Nathan Roberts | Nathan Roberts |
| [HDFS-5800](https://issues.apache.org/jira/browse/HDFS-5800) | Typo: soft-limit for hard-limit in DFSClient |  Trivial | hdfs-client | Kousuke Saruta | Kousuke Saruta |
| [HDFS-5789](https://issues.apache.org/jira/browse/HDFS-5789) | Some of snapshot APIs missing checkOperation double check in fsn |  Major | namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-5777](https://issues.apache.org/jira/browse/HDFS-5777) | Update LayoutVersion for the new editlog op OP\_ADD\_BLOCK |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-5766](https://issues.apache.org/jira/browse/HDFS-5766) | In DFSInputStream, do not add datanode to deadNodes after InvalidEncryptionKeyException in fetchBlockByteRange |  Major | hdfs-client | Liang Xie | Liang Xie |
| [HDFS-5762](https://issues.apache.org/jira/browse/HDFS-5762) | BlockReaderLocal doesn't return -1 on EOF when doing zero-length reads |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5756](https://issues.apache.org/jira/browse/HDFS-5756) | hadoopRzOptionsSetByteBufferPool does not accept NULL argument, contrary to docs |  Major | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5747](https://issues.apache.org/jira/browse/HDFS-5747) | BlocksMap.getStoredBlock(..) and BlockInfoUnderConstruction.addReplicaIfNotPresent(..) may throw NullPointerException |  Minor | namenode | Tsz Wo Nicholas Sze | Arpit Agarwal |
| [HDFS-5728](https://issues.apache.org/jira/browse/HDFS-5728) | [Diskfull] Block recovery will fail if the metafile does not have crc for all chunks of the block |  Critical | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-5719](https://issues.apache.org/jira/browse/HDFS-5719) | FSImage#doRollback() should close prevState before return |  Minor | namenode | Ted Yu | Ted Yu |
| [HDFS-5710](https://issues.apache.org/jira/browse/HDFS-5710) | FSDirectory#getFullPathName should check inodes against null |  Major | . | Ted Yu | Uma Maheswara Rao G |
| [HDFS-5704](https://issues.apache.org/jira/browse/HDFS-5704) | Change OP\_UPDATE\_BLOCKS  with a new OP\_ADD\_BLOCK |  Major | namenode | Suresh Srinivas | Jing Zhao |
| [HDFS-5701](https://issues.apache.org/jira/browse/HDFS-5701) | Fix the CacheAdmin -addPool -maxTtl option name |  Minor | caching, tools | Stephen Chu | Stephen Chu |
| [HDFS-5691](https://issues.apache.org/jira/browse/HDFS-5691) | Fix typo in ShortCircuitLocalRead document |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5690](https://issues.apache.org/jira/browse/HDFS-5690) | DataNode fails to start in secure mode when dfs.http.policy equals to HTTP\_ONLY |  Blocker | . | Haohui Mai | Haohui Mai |
| [HDFS-5681](https://issues.apache.org/jira/browse/HDFS-5681) | renewLease should not hold fsn write lock |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-5675](https://issues.apache.org/jira/browse/HDFS-5675) | Add Mkdirs operation to NNThroughputBenchmark |  Minor | benchmarks | Plamen Jeliazkov | Plamen Jeliazkov |
| [HDFS-5671](https://issues.apache.org/jira/browse/HDFS-5671) | Fix socket leak in DFSInputStream#getBlockReader |  Critical | hdfs-client | JamesLi | JamesLi |
| [HDFS-5666](https://issues.apache.org/jira/browse/HDFS-5666) | Fix inconsistent synchronization in BPOfferService |  Minor | namenode | Colin Patrick McCabe | Jimmy Xiang |
| [HDFS-5661](https://issues.apache.org/jira/browse/HDFS-5661) | Browsing FileSystem via web ui, should use datanode's fqdn instead of ip address |  Major | security | Benoy Antony | Benoy Antony |
| [HDFS-5659](https://issues.apache.org/jira/browse/HDFS-5659) | dfsadmin -report doesn't output cache information properly |  Major | caching | Akira AJISAKA | Andrew Wang |
| [HDFS-5657](https://issues.apache.org/jira/browse/HDFS-5657) | race condition causes writeback state error in NFS gateway |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5649](https://issues.apache.org/jira/browse/HDFS-5649) | Unregister NFS and Mount service when NFS gateway is shutting down |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5592](https://issues.apache.org/jira/browse/HDFS-5592) | "DIR* completeFile: /file is closed by DFSClient\_" should be logged only for successful closure of the file. |  Major | . | Vinayakumar B | Vinayakumar B |
| [HDFS-5590](https://issues.apache.org/jira/browse/HDFS-5590) | Block ID and generation stamp may be reused when persistBlocks is set to false |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-5582](https://issues.apache.org/jira/browse/HDFS-5582) | hdfs getconf -excludeFile or -includeFile always failed |  Minor | . | Henry Hung | sathish |
| [HDFS-5581](https://issues.apache.org/jira/browse/HDFS-5581) | NameNodeFsck should use only one instance of BlockPlacementPolicy |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-5580](https://issues.apache.org/jira/browse/HDFS-5580) | Infinite loop in Balancer.waitForMoveCompletion |  Major | . | Binglin Chang | Binglin Chang |
| [HDFS-5579](https://issues.apache.org/jira/browse/HDFS-5579) | Under construction files make DataNode decommission take very long hours |  Major | namenode | zhaoyunjiong | zhaoyunjiong |
| [HDFS-5562](https://issues.apache.org/jira/browse/HDFS-5562) | TestCacheDirectives and TestFsDatasetCache should stub out native mlock |  Major | test | Akira AJISAKA | Colin Patrick McCabe |
| [HDFS-5560](https://issues.apache.org/jira/browse/HDFS-5560) | Trash configuration log statements prints incorrect units |  Major | . | Josh Elser | Josh Elser |
| [HDFS-5558](https://issues.apache.org/jira/browse/HDFS-5558) | LeaseManager monitor thread can crash if the last block is complete but another block is not. |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-5557](https://issues.apache.org/jira/browse/HDFS-5557) | Write pipeline recovery for the last packet in the block may cause rejection of valid replicas |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-5555](https://issues.apache.org/jira/browse/HDFS-5555) | CacheAdmin commands fail when first listed NameNode is in Standby |  Major | caching | Stephen Chu | Jimmy Xiang |
| [HDFS-5552](https://issues.apache.org/jira/browse/HDFS-5552) | Fix wrong information of "Cluster summay" in dfshealth.html |  Major | namenode | Shinichi Yamashita | Haohui Mai |
| [HDFS-5544](https://issues.apache.org/jira/browse/HDFS-5544) | Adding Test case For Checking dfs.checksum type as NULL value |  Minor | hdfs-client | sathish | sathish |
| [HDFS-5540](https://issues.apache.org/jira/browse/HDFS-5540) | Fix intermittent failure in TestBlocksWithNotEnoughRacks |  Minor | . | Binglin Chang | Binglin Chang |
| [HDFS-5533](https://issues.apache.org/jira/browse/HDFS-5533) | Symlink delete/create should be treated as DELETE/CREATE in snapshot diff report |  Minor | snapshots | Binglin Chang | Binglin Chang |
| [HDFS-5526](https://issues.apache.org/jira/browse/HDFS-5526) | Datanode cannot roll back to previous layout version |  Blocker | datanode | Tsz Wo Nicholas Sze | Kihwal Lee |
| [HDFS-5513](https://issues.apache.org/jira/browse/HDFS-5513) | CacheAdmin commands fail when using . as the path |  Minor | caching, tools | Stephen Chu | Andrew Wang |
| [HDFS-5512](https://issues.apache.org/jira/browse/HDFS-5512) | CacheAdmin -listPools fails with NPE when user lacks permissions to view all pools |  Major | caching, tools | Stephen Chu | Andrew Wang |
| [HDFS-5504](https://issues.apache.org/jira/browse/HDFS-5504) | In HA mode, OP\_DELETE\_SNAPSHOT is not decrementing the safemode threshold, leads to NN safemode. |  Major | snapshots | Vinayakumar B | Vinayakumar B |
| [HDFS-5482](https://issues.apache.org/jira/browse/HDFS-5482) | DistributedFileSystem#listPathBasedCacheDirectives must support relative paths |  Major | tools | Stephen Chu | Colin Patrick McCabe |
| [HDFS-5476](https://issues.apache.org/jira/browse/HDFS-5476) | Snapshot: clean the blocks/files/directories under a renamed file/directory while deletion |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-5474](https://issues.apache.org/jira/browse/HDFS-5474) | Deletesnapshot can make Namenode in safemode on NN restarts. |  Major | snapshots | Uma Maheswara Rao G | sathish |
| [HDFS-5471](https://issues.apache.org/jira/browse/HDFS-5471) | CacheAdmin -listPools fails when user lacks permissions to view all pools |  Major | tools | Stephen Chu | Andrew Wang |
| [HDFS-5468](https://issues.apache.org/jira/browse/HDFS-5468) | CacheAdmin help command does not recognize commands |  Minor | tools | Stephen Chu | Stephen Chu |
| [HDFS-5458](https://issues.apache.org/jira/browse/HDFS-5458) | Datanode failed volume threshold ignored if exception is thrown in getDataDirsFromURIs |  Major | datanode | Andrew Wang | Mike Mellenthin |
| [HDFS-5456](https://issues.apache.org/jira/browse/HDFS-5456) | NameNode startup progress creates new steps if caller attempts to create a counter for a step that doesn't already exist. |  Critical | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-5449](https://issues.apache.org/jira/browse/HDFS-5449) | WebHdfs compatibility broken between 2.2 and 1.x / 23.x |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-5443](https://issues.apache.org/jira/browse/HDFS-5443) | Delete 0-sized block when deleting an under-construction file that is included in snapshot |  Major | snapshots | Uma Maheswara Rao G | Jing Zhao |
| [HDFS-5438](https://issues.apache.org/jira/browse/HDFS-5438) | Flaws in block report processing can cause data loss |  Critical | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-5434](https://issues.apache.org/jira/browse/HDFS-5434) | Write resiliency for replica count 1 |  Minor | namenode | Taylor, Buddy |  |
| [HDFS-5433](https://issues.apache.org/jira/browse/HDFS-5433) | When reloading fsimage during checkpointing, we should clear existing snapshottable directories |  Critical | snapshots | Aaron T. Myers | Aaron T. Myers |
| [HDFS-5432](https://issues.apache.org/jira/browse/HDFS-5432) | TestDatanodeJsp fails on Windows due to assumption that loopback address resolves to host name localhost. |  Trivial | datanode, test | Chris Nauroth | Chris Nauroth |
| [HDFS-5428](https://issues.apache.org/jira/browse/HDFS-5428) | under construction files deletion after snapshot+checkpoint+nn restart leads nn safemode |  Major | snapshots | Vinayakumar B | Jing Zhao |
| [HDFS-5427](https://issues.apache.org/jira/browse/HDFS-5427) | not able to read deleted files from snapshot directly under snapshottable dir after checkpoint and NN restart |  Major | snapshots | Vinayakumar B | Vinayakumar B |
| [HDFS-5425](https://issues.apache.org/jira/browse/HDFS-5425) | Renaming underconstruction file with snapshots can make NN failure on restart |  Major | namenode, snapshots | sathish | Jing Zhao |
| [HDFS-5413](https://issues.apache.org/jira/browse/HDFS-5413) | hdfs.cmd does not support passthrough to any arbitrary class. |  Major | scripts | Chris Nauroth | Chris Nauroth |
| [HDFS-5407](https://issues.apache.org/jira/browse/HDFS-5407) | Fix typos in DFSClientCache |  Trivial | . | Haohui Mai | Haohui Mai |
| [HDFS-5403](https://issues.apache.org/jira/browse/HDFS-5403) | WebHdfs client cannot communicate with older WebHdfs servers post HDFS-5306 |  Major | webhdfs | Aaron T. Myers | Aaron T. Myers |
| [HDFS-5400](https://issues.apache.org/jira/browse/HDFS-5400) | DFS\_CLIENT\_MMAP\_CACHE\_THREAD\_RUNS\_PER\_TIMEOUT constant is set to the wrong value |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5375](https://issues.apache.org/jira/browse/HDFS-5375) | hdfs.cmd does not expose several snapshot commands. |  Minor | tools | Chris Nauroth | Chris Nauroth |
| [HDFS-5374](https://issues.apache.org/jira/browse/HDFS-5374) | Remove deadcode in DFSOutputStream |  Trivial | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-5372](https://issues.apache.org/jira/browse/HDFS-5372) | In FSNamesystem, hasReadLock() returns false if the current thread holds the write lock |  Major | namenode | Tsz Wo Nicholas Sze | Vinayakumar B |
| [HDFS-5370](https://issues.apache.org/jira/browse/HDFS-5370) | Typo in Error Message:  different between range in condition and range in error message |  Trivial | hdfs-client | Kousuke Saruta | Kousuke Saruta |
| [HDFS-5365](https://issues.apache.org/jira/browse/HDFS-5365) | Fix libhdfs compile error on FreeBSD9 |  Major | build, libhdfs | Radim Kolar | Radim Kolar |
| [HDFS-5353](https://issues.apache.org/jira/browse/HDFS-5353) | Short circuit reads fail when dfs.encrypt.data.transfer is enabled |  Blocker | . | Haohui Mai | Colin Patrick McCabe |
| [HDFS-5352](https://issues.apache.org/jira/browse/HDFS-5352) | Server#initLog() doesn't close InputStream in httpfs |  Minor | . | Ted Yu | Ted Yu |
| [HDFS-5346](https://issues.apache.org/jira/browse/HDFS-5346) | Avoid unnecessary call to getNumLiveDataNodes() for each block during IBR processing |  Major | namenode, performance | Kihwal Lee | Ravi Prakash |
| [HDFS-5343](https://issues.apache.org/jira/browse/HDFS-5343) | When cat command is issued on snapshot files getting unexpected result |  Major | hdfs-client | sathish | sathish |
| [HDFS-5341](https://issues.apache.org/jira/browse/HDFS-5341) | Reduce fsdataset lock duration during directory scanning. |  Major | datanode | qus-jiawei | qus-jiawei |
| [HDFS-5336](https://issues.apache.org/jira/browse/HDFS-5336) | DataNode should not output 'StartupProgress' metrics |  Minor | namenode | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5335](https://issues.apache.org/jira/browse/HDFS-5335) | DFSOutputStream#close() keeps throwing exceptions when it is called multiple times |  Major | . | Arpit Gupta | Haohui Mai |
| [HDFS-5329](https://issues.apache.org/jira/browse/HDFS-5329) | Update FSNamesystem#getListing() to handle inode path in startAfter token |  Major | namenode, nfs | Brandon Li | Brandon Li |
| [HDFS-5322](https://issues.apache.org/jira/browse/HDFS-5322) | HDFS delegation token not found in cache errors seen on secure HA clusters |  Major | ha | Arpit Gupta | Jing Zhao |
| [HDFS-5305](https://issues.apache.org/jira/browse/HDFS-5305) | Add https support in HDFS |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-5297](https://issues.apache.org/jira/browse/HDFS-5297) | Fix dead links in HDFS site documents |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5291](https://issues.apache.org/jira/browse/HDFS-5291) | Clients need to retry when Active NN is in SafeMode |  Critical | ha | Arpit Gupta | Jing Zhao |
| [HDFS-5283](https://issues.apache.org/jira/browse/HDFS-5283) | NN not coming out of startup safemode due to under construction blocks only inside snapshots also counted in safemode threshhold |  Critical | snapshots | Vinayakumar B | Vinayakumar B |
| [HDFS-5276](https://issues.apache.org/jira/browse/HDFS-5276) | FileSystem.Statistics got performance issue on multi-thread read/write. |  Major | . | Chengxiang Li | Colin Patrick McCabe |
| [HDFS-5257](https://issues.apache.org/jira/browse/HDFS-5257) | addBlock() retry should return LocatedBlock with locations else client will get AIOBE |  Major | hdfs-client, namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-5170](https://issues.apache.org/jira/browse/HDFS-5170) | BlockPlacementPolicyDefault uses the wrong classname when alerting to enable debug logging |  Trivial | . | Andrew Wang | Andrew Wang |
| [HDFS-5164](https://issues.apache.org/jira/browse/HDFS-5164) | deleteSnapshot should check if OperationCategory.WRITE is possible before taking write lock |  Minor | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5122](https://issues.apache.org/jira/browse/HDFS-5122) | Support failover and retry in WebHdfsFileSystem for NN HA |  Major | ha, webhdfs | Arpit Gupta | Haohui Mai |
| [HDFS-5093](https://issues.apache.org/jira/browse/HDFS-5093) | TestGlobPaths should re-use the MiniDFSCluster to avoid failure on Windows |  Minor | test | Chuan Liu | Chuan Liu |
| [HDFS-5075](https://issues.apache.org/jira/browse/HDFS-5075) | httpfs-config.sh calls out incorrect env script name |  Major | . | Timothy St. Clair | Timothy St. Clair |
| [HDFS-5074](https://issues.apache.org/jira/browse/HDFS-5074) | Allow starting up from an fsimage checkpoint in the middle of a segment |  Major | ha, namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-5073](https://issues.apache.org/jira/browse/HDFS-5073) | TestListCorruptFileBlocks fails intermittently |  Minor | test | Kihwal Lee | Arpit Agarwal |
| [HDFS-5065](https://issues.apache.org/jira/browse/HDFS-5065) | TestSymlinkHdfsDisable fails on Windows |  Major | hdfs-client, test | Ivan Mitic | Ivan Mitic |
| [HDFS-5035](https://issues.apache.org/jira/browse/HDFS-5035) | getFileLinkStatus and rename do not correctly check permissions of symlinks |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-5023](https://issues.apache.org/jira/browse/HDFS-5023) | TestSnapshotPathINodes.testAllowSnapshot is failing with jdk7 |  Major | snapshots, test | Ravi Prakash | Mit Desai |
| [HDFS-5014](https://issues.apache.org/jira/browse/HDFS-5014) | BPOfferService#processCommandFromActor() synchronization on namenode RPC call delays IBR to Active NN, if Stanby NN is unstable |  Major | datanode, ha | Vinayakumar B | Vinayakumar B |
| [HDFS-4995](https://issues.apache.org/jira/browse/HDFS-4995) | Make getContentSummary() less expensive |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-4994](https://issues.apache.org/jira/browse/HDFS-4994) | Audit log getContentSummary() calls |  Minor | namenode | Kihwal Lee | Robert Parker |
| [HDFS-4816](https://issues.apache.org/jira/browse/HDFS-4816) | transitionToActive blocks if the SBN is doing checkpoint image transfer |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-4657](https://issues.apache.org/jira/browse/HDFS-4657) | Limit the number of blocks logged by the NN after a block report to a configurable value. |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4633](https://issues.apache.org/jira/browse/HDFS-4633) | TestDFSClientExcludedNodes fails sporadically if excluded nodes cache expires too quickly |  Major | hdfs-client, test | Chris Nauroth | Chris Nauroth |
| [HDFS-4516](https://issues.apache.org/jira/browse/HDFS-4516) | Client crash after block allocation and NN switch before lease recovery for the same file can cause readers to fail forever |  Critical | namenode | Uma Maheswara Rao G | Vinayakumar B |
| [HDFS-4376](https://issues.apache.org/jira/browse/HDFS-4376) |  Fix several race conditions in Balancer and resolve intermittent timeout of TestBalancerWithNodeGroup |  Major | balancer & mover | Aaron T. Myers | Junping Du |
| [HDFS-4329](https://issues.apache.org/jira/browse/HDFS-4329) | DFSShell issues with directories with spaces in name |  Major | hdfs-client | Andy Isaacson | Cristina L. Abad |
| [HDFS-4201](https://issues.apache.org/jira/browse/HDFS-4201) | NPE in BPServiceActor#sendHeartBeat |  Critical | namenode | Eli Collins | Jimmy Xiang |
| [HDFS-3981](https://issues.apache.org/jira/browse/HDFS-3981) | access time is set without holding FSNamesystem write lock |  Major | namenode | Xiaobo Peng | Xiaobo Peng |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5679](https://issues.apache.org/jira/browse/HDFS-5679) | TestCacheDirectives should handle the case where native code is not available |  Major | . | Ted Yu | Andrew Wang |
| [HDFS-5130](https://issues.apache.org/jira/browse/HDFS-5130) | Add test for snapshot related FsShell and DFSAdmin commands |  Minor | test | Binglin Chang | Binglin Chang |
| [HDFS-4517](https://issues.apache.org/jira/browse/HDFS-4517) | Cover class RemoteBlockReader with unit tests |  Major | . | Vadim Bondarev | Ivan A. Veselovsky |
| [HDFS-4512](https://issues.apache.org/jira/browse/HDFS-4512) | Cover package org.apache.hadoop.hdfs.server.common with tests |  Major | . | Vadim Bondarev | Vadim Bondarev |
| [HDFS-4511](https://issues.apache.org/jira/browse/HDFS-4511) | Cover package org.apache.hadoop.hdfs.tools with unit test |  Major | . | Vadim Bondarev | Andrey Klochkov |
| [HDFS-4510](https://issues.apache.org/jira/browse/HDFS-4510) | Cover classes ClusterJspHelper/NamenodeJspHelper with unit tests |  Major | . | Vadim Bondarev | Andrey Klochkov |
| [HDFS-4491](https://issues.apache.org/jira/browse/HDFS-4491) | Parallel testing HDFS |  Major | test | Tsuyoshi Ozawa | Andrey Klochkov |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5784](https://issues.apache.org/jira/browse/HDFS-5784) | reserve space in edit log header and fsimage header for feature flag section |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5708](https://issues.apache.org/jira/browse/HDFS-5708) | The CacheManager throws a NPE in the DataNode logs when processing cache reports that refer to a block not known to the BlockManager |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5667](https://issues.apache.org/jira/browse/HDFS-5667) | Include DatanodeStorage in StorageReport |  Major | datanode | Eric Sirianni | Arpit Agarwal |
| [HDFS-5651](https://issues.apache.org/jira/browse/HDFS-5651) | Remove dfs.namenode.caching.enabled and improve CRM locking |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5636](https://issues.apache.org/jira/browse/HDFS-5636) | Enforce a max TTL per cache pool |  Major | caching, namenode | Andrew Wang | Andrew Wang |
| [HDFS-5634](https://issues.apache.org/jira/browse/HDFS-5634) | allow BlockReaderLocal to switch between checksumming and not |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5630](https://issues.apache.org/jira/browse/HDFS-5630) | Hook up cache directive and pool usage statistics |  Major | caching, namenode | Andrew Wang | Andrew Wang |
| [HDFS-5629](https://issues.apache.org/jira/browse/HDFS-5629) | Support HTTPS in JournalNode and SecondaryNameNode |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5589](https://issues.apache.org/jira/browse/HDFS-5589) | Namenode loops caching and uncaching when data should be uncached |  Major | caching, namenode | Andrew Wang | Andrew Wang |
| [HDFS-5565](https://issues.apache.org/jira/browse/HDFS-5565) | CacheAdmin help should match against non-dashed commands |  Minor | caching | Andrew Wang | Andrew Wang |
| [HDFS-5556](https://issues.apache.org/jira/browse/HDFS-5556) | add some more NameNode cache statistics, cache pool stats |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5545](https://issues.apache.org/jira/browse/HDFS-5545) | Allow specifying endpoints for listeners in HttpServer |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5543](https://issues.apache.org/jira/browse/HDFS-5543) | fix narrow race condition in TestPathBasedCacheRequests |  Major | test | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5538](https://issues.apache.org/jira/browse/HDFS-5538) | URLConnectionFactory should pick up the SSL related configuration by default |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5536](https://issues.apache.org/jira/browse/HDFS-5536) | Implement HTTP policy for Namenode and DataNode |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5525](https://issues.apache.org/jira/browse/HDFS-5525) | Inline dust templates |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5520](https://issues.apache.org/jira/browse/HDFS-5520) | loading cache path directives from edit log doesn't update nextEntryId |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5519](https://issues.apache.org/jira/browse/HDFS-5519) | COMMIT handler should update the commit status after sync |  Minor | nfs | Brandon Li | Brandon Li |
| [HDFS-5514](https://issues.apache.org/jira/browse/HDFS-5514) | FSNamesystem's fsLock should allow custom implementation |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-5511](https://issues.apache.org/jira/browse/HDFS-5511) | improve CacheManipulator interface to allow better unit testing |  Major | datanode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5509](https://issues.apache.org/jira/browse/HDFS-5509) | TestPathBasedCacheRequests#testReplicationFactor is flaky |  Major | datanode, namenode | Andrew Wang | Andrew Wang |
| [HDFS-5506](https://issues.apache.org/jira/browse/HDFS-5506) | Use URLConnectionFactory in DelegationTokenFetcher |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5502](https://issues.apache.org/jira/browse/HDFS-5502) | Fix HTTPS support in HsftpFileSystem |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5489](https://issues.apache.org/jira/browse/HDFS-5489) | Use TokenAspect in WebHDFSFileSystem |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5488](https://issues.apache.org/jira/browse/HDFS-5488) | Clean up TestHftpURLTimeout |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5487](https://issues.apache.org/jira/browse/HDFS-5487) | Introduce unit test for TokenAspect |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5473](https://issues.apache.org/jira/browse/HDFS-5473) | Consistent naming of user-visible caching classes and methods |  Major | datanode, namenode | Andrew Wang | Colin Patrick McCabe |
| [HDFS-5469](https://issues.apache.org/jira/browse/HDFS-5469) | Add configuration property for the sub-directroy export path |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5454](https://issues.apache.org/jira/browse/HDFS-5454) | DataNode UUID should be assigned prior to FsDataset initialization |  Minor | datanode | Eric Sirianni | Arpit Agarwal |
| [HDFS-5451](https://issues.apache.org/jira/browse/HDFS-5451) | Add byte and file statistics to PathBasedCacheEntry |  Major | datanode, namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5450](https://issues.apache.org/jira/browse/HDFS-5450) | better API for getting the cached blocks locations |  Minor | hdfs-client | Colin Patrick McCabe | Andrew Wang |
| [HDFS-5444](https://issues.apache.org/jira/browse/HDFS-5444) | Choose default web UI based on browser capabilities |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5440](https://issues.apache.org/jira/browse/HDFS-5440) | Extract the logic of handling delegation tokens in HftpFileSystem to the TokenAspect class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5436](https://issues.apache.org/jira/browse/HDFS-5436) | Move HsFtpFileSystem and HFtpFileSystem into org.apache.hdfs.web |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5431](https://issues.apache.org/jira/browse/HDFS-5431) | support cachepool-based limit management in path-based caching |  Major | datanode, namenode | Colin Patrick McCabe | Andrew Wang |
| [HDFS-5430](https://issues.apache.org/jira/browse/HDFS-5430) | Support TTL on CacheDirectives |  Minor | datanode, namenode | Colin Patrick McCabe | Andrew Wang |
| [HDFS-5406](https://issues.apache.org/jira/browse/HDFS-5406) | Send incremental block reports for all storages in a single call |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-5394](https://issues.apache.org/jira/browse/HDFS-5394) | fix race conditions in DN caching and uncaching |  Major | datanode, namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5393](https://issues.apache.org/jira/browse/HDFS-5393) | Serve bootstrap and jQuery locally |  Minor | . | Haohui Mai | Haohui Mai |
| [HDFS-5386](https://issues.apache.org/jira/browse/HDFS-5386) | Add feature documentation for datanode caching. |  Major | documentation | Chris Nauroth | Colin Patrick McCabe |
| [HDFS-5382](https://issues.apache.org/jira/browse/HDFS-5382) | Implement the UI of browsing filesystems in HTML 5 page |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5379](https://issues.apache.org/jira/browse/HDFS-5379) | Update links to datanode information in dfshealth.html |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5366](https://issues.apache.org/jira/browse/HDFS-5366) | recaching improvements |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5364](https://issues.apache.org/jira/browse/HDFS-5364) | Add OpenFileCtx cache |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5363](https://issues.apache.org/jira/browse/HDFS-5363) | Refactor WebHdfsFileSystem: move SPENGO-authenticated connection creation to URLConnectionFactory |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5347](https://issues.apache.org/jira/browse/HDFS-5347) | add HDFS NFS user guide |  Major | documentation | Brandon Li | Brandon Li |
| [HDFS-5342](https://issues.apache.org/jira/browse/HDFS-5342) | Provide more information in the FSNamesystem JMX interfaces |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5337](https://issues.apache.org/jira/browse/HDFS-5337) | should do hsync for a commit request even there is no pending writes |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5334](https://issues.apache.org/jira/browse/HDFS-5334) | Implement dfshealth.jsp in HTML pages |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5330](https://issues.apache.org/jira/browse/HDFS-5330) | fix readdir and readdirplus for large directories |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5325](https://issues.apache.org/jira/browse/HDFS-5325) | Remove WebHdfsFileSystem#ConnRunner |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5320](https://issues.apache.org/jira/browse/HDFS-5320) | Add datanode caching metrics |  Minor | datanode | Andrew Wang | Andrew Wang |
| [HDFS-5317](https://issues.apache.org/jira/browse/HDFS-5317) | Go back to DFS Home link does not work on datanode webUI |  Critical | . | Suresh Srinivas | Haohui Mai |
| [HDFS-5316](https://issues.apache.org/jira/browse/HDFS-5316) | Namenode ignores the default https port |  Critical | . | Suresh Srinivas | Haohui Mai |
| [HDFS-5312](https://issues.apache.org/jira/browse/HDFS-5312) | Generate HTTP / HTTPS URL in DFSUtil#getInfoServer() based on the configured http policy |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5307](https://issues.apache.org/jira/browse/HDFS-5307) | Support both HTTP and HTTPS in jsp pages |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5288](https://issues.apache.org/jira/browse/HDFS-5288) | Close idle connections in portmap |  Major | nfs | Haohui Mai | Haohui Mai |
| [HDFS-5281](https://issues.apache.org/jira/browse/HDFS-5281) | COMMIT request should not block |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5252](https://issues.apache.org/jira/browse/HDFS-5252) | Stable write is not handled correctly in someplace |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5241](https://issues.apache.org/jira/browse/HDFS-5241) | Provide alternate queuing audit logger to reduce logging contention |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-5240](https://issues.apache.org/jira/browse/HDFS-5240) | Separate formatting from logging in the audit logger API |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-5239](https://issues.apache.org/jira/browse/HDFS-5239) | Allow FSNamesystem lock fairness to be configurable |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-5171](https://issues.apache.org/jira/browse/HDFS-5171) | NFS should create input stream for a file and try to share it with multiple read requests |  Major | nfs | Brandon Li | Haohui Mai |
| [HDFS-4885](https://issues.apache.org/jira/browse/HDFS-4885) | Update verifyBlockPlacement() API in BlockPlacementPolicy |  Major | . | Junping Du | Junping Du |
| [HDFS-4096](https://issues.apache.org/jira/browse/HDFS-4096) | Add snapshot information to namenode WebUI |  Major | datanode, namenode | Jing Zhao | Haohui Mai |
| [HDFS-3987](https://issues.apache.org/jira/browse/HDFS-3987) | Support webhdfs over HTTPS |  Major | . | Alejandro Abdelnur | Haohui Mai |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


