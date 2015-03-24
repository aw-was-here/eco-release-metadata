# Hadoop HDFS 2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HDFS-5921](https://issues.apache.org/jira/browse/HDFS-5921) | *Critical* | **Cannot browse file system via NN web UI if any directory has the sticky bit set**
---

* [HDFS-5876](https://issues.apache.org/jira/browse/HDFS-5876) | *Major* | **SecureDataNodeStarter does not pick up configuration in hdfs-site.xml**
---

* [HDFS-5873](https://issues.apache.org/jira/browse/HDFS-5873) | *Major* | **dfs.http.policy should have higher precedence over dfs.https.enable**
---

* [HDFS-5845](https://issues.apache.org/jira/browse/HDFS-5845) | *Blocker* | **SecondaryNameNode dies when checkpointing with cache pools**
---

* [HDFS-5844](https://issues.apache.org/jira/browse/HDFS-5844) | *Minor* | **Fix broken link in WebHDFS.apt.vm**
---

* [HDFS-5842](https://issues.apache.org/jira/browse/HDFS-5842) | *Major* | **Cannot create hftp filesystem when using a proxy user ugi and a doAs on a secure cluster**
---

* [HDFS-5841](https://issues.apache.org/jira/browse/HDFS-5841) | *Major* | **Update HDFS caching documentation with new changes**
---

* [HDFS-5837](https://issues.apache.org/jira/browse/HDFS-5837) | *Major* | **dfs.namenode.replication.considerLoad does not consider decommissioned nodes**
---

* [HDFS-5833](https://issues.apache.org/jira/browse/HDFS-5833) | *Trivial* | **SecondaryNameNode have an incorrect java doc**
---

* [HDFS-5830](https://issues.apache.org/jira/browse/HDFS-5830) | *Blocker* | **WebHdfsFileSystem.getFileBlockLocations throws IllegalArgumentException when accessing another cluster.**
---

* [HDFS-5825](https://issues.apache.org/jira/browse/HDFS-5825) | *Minor* | **Use FileUtils.copyFile() to implement DFSTestUtils.copyFile()**
---

* [HDFS-5806](https://issues.apache.org/jira/browse/HDFS-5806) | *Major* | **balancer should set SoTimeout to avoid indefinite hangs**
---

* [HDFS-5800](https://issues.apache.org/jira/browse/HDFS-5800) | *Trivial* | **Typo: soft-limit for hard-limit in DFSClient**
---

* [HDFS-5789](https://issues.apache.org/jira/browse/HDFS-5789) | *Major* | **Some of snapshot APIs missing checkOperation double check in fsn**
---

* [HDFS-5788](https://issues.apache.org/jira/browse/HDFS-5788) | *Major* | **listLocatedStatus response can be very large**
---

* [HDFS-5784](https://issues.apache.org/jira/browse/HDFS-5784) | *Major* | **reserve space in edit log header and fsimage header for feature flag section**
---

* [HDFS-5777](https://issues.apache.org/jira/browse/HDFS-5777) | *Major* | **Update LayoutVersion for the new editlog op OP\_ADD\_BLOCK**
---

* [HDFS-5766](https://issues.apache.org/jira/browse/HDFS-5766) | *Major* | **In DFSInputStream, do not add datanode to deadNodes after InvalidEncryptionKeyException in fetchBlockByteRange**
---

* [HDFS-5762](https://issues.apache.org/jira/browse/HDFS-5762) | *Major* | **BlockReaderLocal doesn't return -1 on EOF when doing zero-length reads**
---

* [HDFS-5756](https://issues.apache.org/jira/browse/HDFS-5756) | *Major* | **hadoopRzOptionsSetByteBufferPool does not accept NULL argument, contrary to docs**
---

* [HDFS-5748](https://issues.apache.org/jira/browse/HDFS-5748) | *Major* | **Too much information shown in the dfs health page.**
---

* [HDFS-5747](https://issues.apache.org/jira/browse/HDFS-5747) | *Minor* | **BlocksMap.getStoredBlock(..) and BlockInfoUnderConstruction.addReplicaIfNotPresent(..) may throw NullPointerException**
---

* [HDFS-5728](https://issues.apache.org/jira/browse/HDFS-5728) | *Critical* | **[Diskfull] Block recovery will fail if the metafile does not have crc for all chunks of the block**
---

* [HDFS-5721](https://issues.apache.org/jira/browse/HDFS-5721) | *Minor* | **sharedEditsImage in Namenode#initializeSharedEdits() should be closed before method returns**
---

* [HDFS-5719](https://issues.apache.org/jira/browse/HDFS-5719) | *Minor* | **FSImage#doRollback() should close prevState before return**
---

* [HDFS-5710](https://issues.apache.org/jira/browse/HDFS-5710) | *Major* | **FSDirectory#getFullPathName should check inodes against null**
---

* [HDFS-5708](https://issues.apache.org/jira/browse/HDFS-5708) | *Major* | **The CacheManager throws a NPE in the DataNode logs when processing cache reports that refer to a block not known to the BlockManager**
---

* [HDFS-5704](https://issues.apache.org/jira/browse/HDFS-5704) | *Major* | **Change OP\_UPDATE\_BLOCKS  with a new OP\_ADD\_BLOCK**

Add a new editlog record (OP\_ADD\_BLOCK) that only records allocation of the new block instead of the entire block list, on every block allocation.

---

* [HDFS-5703](https://issues.apache.org/jira/browse/HDFS-5703) | *Major* | **Add support for HTTPS and swebhdfs to HttpFS**
---

* [HDFS-5701](https://issues.apache.org/jira/browse/HDFS-5701) | *Minor* | **Fix the CacheAdmin -addPool -maxTtl option name**
---

* [HDFS-5695](https://issues.apache.org/jira/browse/HDFS-5695) | *Major* | **Clean up TestOfflineEditsViewer and OfflineEditsViewerHelper**
---

* [HDFS-5691](https://issues.apache.org/jira/browse/HDFS-5691) | *Minor* | **Fix typo in ShortCircuitLocalRead document**
---

* [HDFS-5690](https://issues.apache.org/jira/browse/HDFS-5690) | *Blocker* | **DataNode fails to start in secure mode when dfs.http.policy equals to HTTP\_ONLY**
---

* [HDFS-5681](https://issues.apache.org/jira/browse/HDFS-5681) | *Major* | **renewLease should not hold fsn write lock**
---

* [HDFS-5679](https://issues.apache.org/jira/browse/HDFS-5679) | *Major* | **TestCacheDirectives should handle the case where native code is not available**
---

* [HDFS-5677](https://issues.apache.org/jira/browse/HDFS-5677) | *Minor* | **Need error checking for HA cluster configuration**
---

* [HDFS-5676](https://issues.apache.org/jira/browse/HDFS-5676) | *Minor* | **fix inconsistent synchronization of CachingStrategy**
---

* [HDFS-5675](https://issues.apache.org/jira/browse/HDFS-5675) | *Minor* | **Add Mkdirs operation to NNThroughputBenchmark**
---

* [HDFS-5674](https://issues.apache.org/jira/browse/HDFS-5674) | *Minor* | **Editlog code cleanup**
---

* [HDFS-5671](https://issues.apache.org/jira/browse/HDFS-5671) | *Critical* | **Fix socket leak in DFSInputStream#getBlockReader**
---

* [HDFS-5667](https://issues.apache.org/jira/browse/HDFS-5667) | *Major* | **Include DatanodeStorage in StorageReport**
---

* [HDFS-5666](https://issues.apache.org/jira/browse/HDFS-5666) | *Minor* | **Fix inconsistent synchronization in BPOfferService**
---

* [HDFS-5665](https://issues.apache.org/jira/browse/HDFS-5665) | *Major* | **Remove the unnecessary writeLock while initializing CacheManager in FsNameSystem Ctor**
---

* [HDFS-5663](https://issues.apache.org/jira/browse/HDFS-5663) | *Major* | **make the retry time and interval value configurable in openInfo()**

Makes the retries and time between retries getting the length of the last block on file configurable.  Below are the new configurations.

dfs.client.retry.times.get-last-block-length
dfs.client.retry.interval-ms.get-last-block-length

They are set to the 3 and 4000 respectively, these being what was previously hardcoded.

---

* [HDFS-5662](https://issues.apache.org/jira/browse/HDFS-5662) | *Major* | **Can't decommission a DataNode due to file's replication factor larger than the rest of the cluster size**
---

* [HDFS-5661](https://issues.apache.org/jira/browse/HDFS-5661) | *Major* | **Browsing FileSystem via web ui, should use datanode's fqdn instead of ip address**
---

* [HDFS-5659](https://issues.apache.org/jira/browse/HDFS-5659) | *Major* | **dfsadmin -report doesn't output cache information properly**
---

* [HDFS-5657](https://issues.apache.org/jira/browse/HDFS-5657) | *Major* | **race condition causes writeback state error in NFS gateway**
---

* [HDFS-5652](https://issues.apache.org/jira/browse/HDFS-5652) | *Minor* | **refactoring/uniforming invalid block token exception handling in DFSInputStream**
---

* [HDFS-5651](https://issues.apache.org/jira/browse/HDFS-5651) | *Major* | **Remove dfs.namenode.caching.enabled and improve CRM locking**
---

* [HDFS-5649](https://issues.apache.org/jira/browse/HDFS-5649) | *Major* | **Unregister NFS and Mount service when NFS gateway is shutting down**
---

* [HDFS-5637](https://issues.apache.org/jira/browse/HDFS-5637) | *Major* | **try to refeatchToken while local read InvalidToken occurred**
---

* [HDFS-5636](https://issues.apache.org/jira/browse/HDFS-5636) | *Major* | **Enforce a max TTL per cache pool**
---

* [HDFS-5634](https://issues.apache.org/jira/browse/HDFS-5634) | *Major* | **allow BlockReaderLocal to switch between checksumming and not**
---

* [HDFS-5633](https://issues.apache.org/jira/browse/HDFS-5633) | *Minor* | **Improve OfflineImageViewer to use less memory**
---

* [HDFS-5630](https://issues.apache.org/jira/browse/HDFS-5630) | *Major* | **Hook up cache directive and pool usage statistics**
---

* [HDFS-5629](https://issues.apache.org/jira/browse/HDFS-5629) | *Major* | **Support HTTPS in JournalNode and SecondaryNameNode**
---

* [HDFS-5592](https://issues.apache.org/jira/browse/HDFS-5592) | *Major* | **"DIR* completeFile: /file is closed by DFSClient\_" should be logged only for successful closure of the file.**
---

* [HDFS-5590](https://issues.apache.org/jira/browse/HDFS-5590) | *Major* | **Block ID and generation stamp may be reused when persistBlocks is set to false**
---

* [HDFS-5589](https://issues.apache.org/jira/browse/HDFS-5589) | *Major* | **Namenode loops caching and uncaching when data should be uncached**
---

* [HDFS-5587](https://issues.apache.org/jira/browse/HDFS-5587) | *Minor* | **add debug information when NFS fails to start with duplicate user or group names**
---

* [HDFS-5582](https://issues.apache.org/jira/browse/HDFS-5582) | *Minor* | **hdfs getconf -excludeFile or -includeFile always failed**
---

* [HDFS-5581](https://issues.apache.org/jira/browse/HDFS-5581) | *Major* | **NameNodeFsck should use only one instance of BlockPlacementPolicy**
---

* [HDFS-5580](https://issues.apache.org/jira/browse/HDFS-5580) | *Major* | **Infinite loop in Balancer.waitForMoveCompletion**
---

* [HDFS-5579](https://issues.apache.org/jira/browse/HDFS-5579) | *Major* | **Under construction files make DataNode decommission take very long hours**
---

* [HDFS-5577](https://issues.apache.org/jira/browse/HDFS-5577) | *Trivial* | **NFS user guide update**
---

* [HDFS-5568](https://issues.apache.org/jira/browse/HDFS-5568) | *Major* | **Support inclusion of snapshot paths in Namenode fsck**
---

* [HDFS-5565](https://issues.apache.org/jira/browse/HDFS-5565) | *Minor* | **CacheAdmin help should match against non-dashed commands**
---

* [HDFS-5563](https://issues.apache.org/jira/browse/HDFS-5563) | *Major* | **NFS gateway should commit the buffered data when read request comes after write to the same file**
---

* [HDFS-5562](https://issues.apache.org/jira/browse/HDFS-5562) | *Major* | **TestCacheDirectives and TestFsDatasetCache should stub out native mlock**
---

* [HDFS-5561](https://issues.apache.org/jira/browse/HDFS-5561) | *Minor* | **FSNameSystem#getNameJournalStatus() in JMX should return plain text instead of HTML**
---

* [HDFS-5560](https://issues.apache.org/jira/browse/HDFS-5560) | *Major* | **Trash configuration log statements prints incorrect units**
---

* [HDFS-5558](https://issues.apache.org/jira/browse/HDFS-5558) | *Major* | **LeaseManager monitor thread can crash if the last block is complete but another block is not.**
---

* [HDFS-5557](https://issues.apache.org/jira/browse/HDFS-5557) | *Critical* | **Write pipeline recovery for the last packet in the block may cause rejection of valid replicas**
---

* [HDFS-5556](https://issues.apache.org/jira/browse/HDFS-5556) | *Major* | **add some more NameNode cache statistics, cache pool stats**
---

* [HDFS-5555](https://issues.apache.org/jira/browse/HDFS-5555) | *Major* | **CacheAdmin commands fail when first listed NameNode is in Standby**
---

* [HDFS-5552](https://issues.apache.org/jira/browse/HDFS-5552) | *Major* | **Fix wrong information of "Cluster summay" in dfshealth.html**
---

* [HDFS-5548](https://issues.apache.org/jira/browse/HDFS-5548) | *Major* | **Use ConcurrentHashMap in portmap**
---

* [HDFS-5545](https://issues.apache.org/jira/browse/HDFS-5545) | *Major* | **Allow specifying endpoints for listeners in HttpServer**
---

* [HDFS-5544](https://issues.apache.org/jira/browse/HDFS-5544) | *Minor* | **Adding Test case For Checking dfs.checksum type as NULL value**
---

* [HDFS-5543](https://issues.apache.org/jira/browse/HDFS-5543) | *Major* | **fix narrow race condition in TestPathBasedCacheRequests**
---

* [HDFS-5540](https://issues.apache.org/jira/browse/HDFS-5540) | *Minor* | **Fix intermittent failure in TestBlocksWithNotEnoughRacks**
---

* [HDFS-5538](https://issues.apache.org/jira/browse/HDFS-5538) | *Major* | **URLConnectionFactory should pick up the SSL related configuration by default**
---

* [HDFS-5536](https://issues.apache.org/jira/browse/HDFS-5536) | *Major* | **Implement HTTP policy for Namenode and DataNode**

Add new HTTP policy configuration. Users can use "dfs.http.policy" to control the HTTP endpoints for NameNode and DataNode. Specifically, The following values are supported:
- HTTP\_ONLY : Service is provided only on http
- HTTPS\_ONLY : Service is provided only on https
- HTTP\_AND\_HTTPS : Service is provided both on http and https

hadoop.ssl.enabled and dfs.https.enabled are deprecated. When the deprecated configuration properties are still configured, currently http policy is decided based on the following rules:
1. If dfs.http.policy is set to HTTPS\_ONLY or HTTP\_AND\_HTTPS. It picks the specified policy, otherwise it proceeds to 2~4.
2. It picks HTTPS\_ONLY if hadoop.ssl.enabled equals to true.
3. It picks HTTP\_AND\_HTTPS if dfs.https.enable equals to true.
4. It picks HTTP\_ONLY for other configurations.

---

* [HDFS-5533](https://issues.apache.org/jira/browse/HDFS-5533) | *Minor* | **Symlink delete/create should be treated as DELETE/CREATE in snapshot diff report**
---

* [HDFS-5532](https://issues.apache.org/jira/browse/HDFS-5532) | *Major* | **Enable the webhdfs by default to support new HDFS web UI**
---

* [HDFS-5526](https://issues.apache.org/jira/browse/HDFS-5526) | *Blocker* | **Datanode cannot roll back to previous layout version**
---

* [HDFS-5525](https://issues.apache.org/jira/browse/HDFS-5525) | *Major* | **Inline dust templates**
---

* [HDFS-5520](https://issues.apache.org/jira/browse/HDFS-5520) | *Major* | **loading cache path directives from edit log doesn't update nextEntryId**
---

* [HDFS-5519](https://issues.apache.org/jira/browse/HDFS-5519) | *Minor* | **COMMIT handler should update the commit status after sync**
---

* [HDFS-5514](https://issues.apache.org/jira/browse/HDFS-5514) | *Major* | **FSNamesystem's fsLock should allow custom implementation**
---

* [HDFS-5513](https://issues.apache.org/jira/browse/HDFS-5513) | *Minor* | **CacheAdmin commands fail when using . as the path**
---

* [HDFS-5512](https://issues.apache.org/jira/browse/HDFS-5512) | *Major* | **CacheAdmin -listPools fails with NPE when user lacks permissions to view all pools**
---

* [HDFS-5511](https://issues.apache.org/jira/browse/HDFS-5511) | *Major* | **improve CacheManipulator interface to allow better unit testing**
---

* [HDFS-5509](https://issues.apache.org/jira/browse/HDFS-5509) | *Major* | **TestPathBasedCacheRequests#testReplicationFactor is flaky**
---

* [HDFS-5506](https://issues.apache.org/jira/browse/HDFS-5506) | *Major* | **Use URLConnectionFactory in DelegationTokenFetcher**
---

* [HDFS-5504](https://issues.apache.org/jira/browse/HDFS-5504) | *Major* | **In HA mode, OP\_DELETE\_SNAPSHOT is not decrementing the safemode threshold, leads to NN safemode.**
---

* [HDFS-5502](https://issues.apache.org/jira/browse/HDFS-5502) | *Major* | **Fix HTTPS support in HsftpFileSystem**

Fix the https support in HsftpFileSystem. With the change the client now verifies the server certificate. In particular, client side will verify the Common Name of the certificate using a strategy specified by the configuration property "hadoop.ssl.hostname.verifier".

---

* [HDFS-5495](https://issues.apache.org/jira/browse/HDFS-5495) | *Major* | **Remove further JUnit3 usages from HDFS**
---

* [HDFS-5489](https://issues.apache.org/jira/browse/HDFS-5489) | *Major* | **Use TokenAspect in WebHDFSFileSystem**
---

* [HDFS-5488](https://issues.apache.org/jira/browse/HDFS-5488) | *Major* | **Clean up TestHftpURLTimeout**
---

* [HDFS-5487](https://issues.apache.org/jira/browse/HDFS-5487) | *Major* | **Introduce unit test for TokenAspect**
---

* [HDFS-5482](https://issues.apache.org/jira/browse/HDFS-5482) | *Major* | **DistributedFileSystem#listPathBasedCacheDirectives must support relative paths**
---

* [HDFS-5476](https://issues.apache.org/jira/browse/HDFS-5476) | *Major* | **Snapshot: clean the blocks/files/directories under a renamed file/directory while deletion**
---

* [HDFS-5474](https://issues.apache.org/jira/browse/HDFS-5474) | *Major* | **Deletesnapshot can make Namenode in safemode on NN restarts.**
---

* [HDFS-5473](https://issues.apache.org/jira/browse/HDFS-5473) | *Major* | **Consistent naming of user-visible caching classes and methods**
---

* [HDFS-5471](https://issues.apache.org/jira/browse/HDFS-5471) | *Major* | **CacheAdmin -listPools fails when user lacks permissions to view all pools**
---

* [HDFS-5469](https://issues.apache.org/jira/browse/HDFS-5469) | *Major* | **Add configuration property for the sub-directroy export path**
---

* [HDFS-5468](https://issues.apache.org/jira/browse/HDFS-5468) | *Minor* | **CacheAdmin help command does not recognize commands**
---

* [HDFS-5467](https://issues.apache.org/jira/browse/HDFS-5467) | *Trivial* | **Remove tab characters in hdfs-default.xml**
---

* [HDFS-5458](https://issues.apache.org/jira/browse/HDFS-5458) | *Major* | **Datanode failed volume threshold ignored if exception is thrown in getDataDirsFromURIs**
---

* [HDFS-5456](https://issues.apache.org/jira/browse/HDFS-5456) | *Critical* | **NameNode startup progress creates new steps if caller attempts to create a counter for a step that doesn't already exist.**
---

* [HDFS-5454](https://issues.apache.org/jira/browse/HDFS-5454) | *Minor* | **DataNode UUID should be assigned prior to FsDataset initialization**
---

* [HDFS-5451](https://issues.apache.org/jira/browse/HDFS-5451) | *Major* | **Add byte and file statistics to PathBasedCacheEntry**
---

* [HDFS-5450](https://issues.apache.org/jira/browse/HDFS-5450) | *Minor* | **better API for getting the cached blocks locations**
---

* [HDFS-5449](https://issues.apache.org/jira/browse/HDFS-5449) | *Blocker* | **WebHdfs compatibility broken between 2.2 and 1.x / 23.x**
---

* [HDFS-5444](https://issues.apache.org/jira/browse/HDFS-5444) | *Major* | **Choose default web UI based on browser capabilities**
---

* [HDFS-5443](https://issues.apache.org/jira/browse/HDFS-5443) | *Major* | **Delete 0-sized block when deleting an under-construction file that is included in snapshot**
---

* [HDFS-5440](https://issues.apache.org/jira/browse/HDFS-5440) | *Major* | **Extract the logic of handling delegation tokens in HftpFileSystem to the TokenAspect class**
---

* [HDFS-5438](https://issues.apache.org/jira/browse/HDFS-5438) | *Critical* | **Flaws in block report processing can cause data loss**
---

* [HDFS-5436](https://issues.apache.org/jira/browse/HDFS-5436) | *Major* | **Move HsFtpFileSystem and HFtpFileSystem into org.apache.hdfs.web**
---

* [HDFS-5434](https://issues.apache.org/jira/browse/HDFS-5434) | *Minor* | **Write resiliency for replica count 1**
---

* [HDFS-5433](https://issues.apache.org/jira/browse/HDFS-5433) | *Critical* | **When reloading fsimage during checkpointing, we should clear existing snapshottable directories**
---

* [HDFS-5432](https://issues.apache.org/jira/browse/HDFS-5432) | *Trivial* | **TestDatanodeJsp fails on Windows due to assumption that loopback address resolves to host name localhost.**
---

* [HDFS-5431](https://issues.apache.org/jira/browse/HDFS-5431) | *Major* | **support cachepool-based limit management in path-based caching**
---

* [HDFS-5430](https://issues.apache.org/jira/browse/HDFS-5430) | *Minor* | **Support TTL on CacheDirectives**
---

* [HDFS-5428](https://issues.apache.org/jira/browse/HDFS-5428) | *Major* | **under construction files deletion after snapshot+checkpoint+nn restart leads nn safemode**
---

* [HDFS-5427](https://issues.apache.org/jira/browse/HDFS-5427) | *Major* | **not able to read deleted files from snapshot directly under snapshottable dir after checkpoint and NN restart**
---

* [HDFS-5425](https://issues.apache.org/jira/browse/HDFS-5425) | *Major* | **Renaming underconstruction file with snapshots can make NN failure on restart**
---

* [HDFS-5413](https://issues.apache.org/jira/browse/HDFS-5413) | *Major* | **hdfs.cmd does not support passthrough to any arbitrary class.**
---

* [HDFS-5407](https://issues.apache.org/jira/browse/HDFS-5407) | *Trivial* | **Fix typos in DFSClientCache**
---

* [HDFS-5406](https://issues.apache.org/jira/browse/HDFS-5406) | *Major* | **Send incremental block reports for all storages in a single call**
---

* [HDFS-5403](https://issues.apache.org/jira/browse/HDFS-5403) | *Major* | **WebHdfs client cannot communicate with older WebHdfs servers post HDFS-5306**
---

* [HDFS-5400](https://issues.apache.org/jira/browse/HDFS-5400) | *Major* | **DFS\_CLIENT\_MMAP\_CACHE\_THREAD\_RUNS\_PER\_TIMEOUT constant is set to the wrong value**
---

* [HDFS-5399](https://issues.apache.org/jira/browse/HDFS-5399) | *Major* | **Revisit SafeModeException and corresponding retry policies**
---

* [HDFS-5394](https://issues.apache.org/jira/browse/HDFS-5394) | *Major* | **fix race conditions in DN caching and uncaching**
---

* [HDFS-5393](https://issues.apache.org/jira/browse/HDFS-5393) | *Minor* | **Serve bootstrap and jQuery locally**
---

* [HDFS-5386](https://issues.apache.org/jira/browse/HDFS-5386) | *Major* | **Add feature documentation for datanode caching.**
---

* [HDFS-5382](https://issues.apache.org/jira/browse/HDFS-5382) | *Major* | **Implement the UI of browsing filesystems in HTML 5 page**
---

* [HDFS-5379](https://issues.apache.org/jira/browse/HDFS-5379) | *Major* | **Update links to datanode information in dfshealth.html**
---

* [HDFS-5375](https://issues.apache.org/jira/browse/HDFS-5375) | *Minor* | **hdfs.cmd does not expose several snapshot commands.**
---

* [HDFS-5374](https://issues.apache.org/jira/browse/HDFS-5374) | *Trivial* | **Remove deadcode in DFSOutputStream**
---

* [HDFS-5372](https://issues.apache.org/jira/browse/HDFS-5372) | *Major* | **In FSNamesystem, hasReadLock() returns false if the current thread holds the write lock**
---

* [HDFS-5371](https://issues.apache.org/jira/browse/HDFS-5371) | *Minor* | **Let client retry the same NN when "dfs.client.test.drop.namenode.response.number" is enabled**
---

* [HDFS-5370](https://issues.apache.org/jira/browse/HDFS-5370) | *Trivial* | **Typo in Error Message:  different between range in condition and range in error message**
---

* [HDFS-5366](https://issues.apache.org/jira/browse/HDFS-5366) | *Major* | **recaching improvements**
---

* [HDFS-5365](https://issues.apache.org/jira/browse/HDFS-5365) | *Major* | **Fix libhdfs compile error on FreeBSD9**
---

* [HDFS-5364](https://issues.apache.org/jira/browse/HDFS-5364) | *Major* | **Add OpenFileCtx cache**
---

* [HDFS-5363](https://issues.apache.org/jira/browse/HDFS-5363) | *Major* | **Refactor WebHdfsFileSystem: move SPENGO-authenticated connection creation to URLConnectionFactory**
---

* [HDFS-5360](https://issues.apache.org/jira/browse/HDFS-5360) | *Minor* | **Improvement of usage message of renameSnapshot and deleteSnapshot**
---

* [HDFS-5353](https://issues.apache.org/jira/browse/HDFS-5353) | *Blocker* | **Short circuit reads fail when dfs.encrypt.data.transfer is enabled**
---

* [HDFS-5352](https://issues.apache.org/jira/browse/HDFS-5352) | *Minor* | **Server#initLog() doesn't close InputStream in httpfs**
---

* [HDFS-5350](https://issues.apache.org/jira/browse/HDFS-5350) | *Minor* | **Name Node should report fsimage transfer time as a metric**
---

* [HDFS-5347](https://issues.apache.org/jira/browse/HDFS-5347) | *Major* | **add HDFS NFS user guide**
---

* [HDFS-5346](https://issues.apache.org/jira/browse/HDFS-5346) | *Major* | **Avoid unnecessary call to getNumLiveDataNodes() for each block during IBR processing**
---

* [HDFS-5344](https://issues.apache.org/jira/browse/HDFS-5344) | *Minor* | **Make LsSnapshottableDir as Tool interface implementation**
---

* [HDFS-5343](https://issues.apache.org/jira/browse/HDFS-5343) | *Major* | **When cat command is issued on snapshot files getting unexpected result**
---

* [HDFS-5342](https://issues.apache.org/jira/browse/HDFS-5342) | *Major* | **Provide more information in the FSNamesystem JMX interfaces**
---

* [HDFS-5341](https://issues.apache.org/jira/browse/HDFS-5341) | *Major* | **Reduce fsdataset lock duration during directory scanning.**
---

* [HDFS-5338](https://issues.apache.org/jira/browse/HDFS-5338) | *Major* | **Add a conf to disable hostname check in DN registration**
---

* [HDFS-5337](https://issues.apache.org/jira/browse/HDFS-5337) | *Major* | **should do hsync for a commit request even there is no pending writes**
---

* [HDFS-5336](https://issues.apache.org/jira/browse/HDFS-5336) | *Minor* | **DataNode should not output 'StartupProgress' metrics**
---

* [HDFS-5335](https://issues.apache.org/jira/browse/HDFS-5335) | *Major* | **DFSOutputStream#close() keeps throwing exceptions when it is called multiple times**
---

* [HDFS-5334](https://issues.apache.org/jira/browse/HDFS-5334) | *Major* | **Implement dfshealth.jsp in HTML pages**
---

* [HDFS-5333](https://issues.apache.org/jira/browse/HDFS-5333) | *Major* | **Improvement of current HDFS Web UI**
---

* [HDFS-5331](https://issues.apache.org/jira/browse/HDFS-5331) | *Major* | **make SnapshotDiff.java to a o.a.h.util.Tool interface implementation**
---

* [HDFS-5330](https://issues.apache.org/jira/browse/HDFS-5330) | *Major* | **fix readdir and readdirplus for large directories**
---

* [HDFS-5329](https://issues.apache.org/jira/browse/HDFS-5329) | *Major* | **Update FSNamesystem#getListing() to handle inode path in startAfter token**
---

* [HDFS-5325](https://issues.apache.org/jira/browse/HDFS-5325) | *Major* | **Remove WebHdfsFileSystem#ConnRunner**
---

* [HDFS-5323](https://issues.apache.org/jira/browse/HDFS-5323) | *Minor* | **Remove some deadcode in BlockManager**
---

* [HDFS-5322](https://issues.apache.org/jira/browse/HDFS-5322) | *Major* | **HDFS delegation token not found in cache errors seen on secure HA clusters**
---

* [HDFS-5320](https://issues.apache.org/jira/browse/HDFS-5320) | *Minor* | **Add datanode caching metrics**
---

* [HDFS-5317](https://issues.apache.org/jira/browse/HDFS-5317) | *Critical* | **Go back to DFS Home link does not work on datanode webUI**
---

* [HDFS-5316](https://issues.apache.org/jira/browse/HDFS-5316) | *Critical* | **Namenode ignores the default https port**
---

* [HDFS-5312](https://issues.apache.org/jira/browse/HDFS-5312) | *Major* | **Generate HTTP / HTTPS URL in DFSUtil#getInfoServer() based on the configured http policy**
---

* [HDFS-5307](https://issues.apache.org/jira/browse/HDFS-5307) | *Major* | **Support both HTTP and HTTPS in jsp pages**
---

* [HDFS-5305](https://issues.apache.org/jira/browse/HDFS-5305) | *Major* | **Add https support in HDFS**
---

* [HDFS-5297](https://issues.apache.org/jira/browse/HDFS-5297) | *Major* | **Fix dead links in HDFS site documents**
---

* [HDFS-5291](https://issues.apache.org/jira/browse/HDFS-5291) | *Critical* | **Clients need to retry when Active NN is in SafeMode**
---

* [HDFS-5288](https://issues.apache.org/jira/browse/HDFS-5288) | *Major* | **Close idle connections in portmap**
---

* [HDFS-5283](https://issues.apache.org/jira/browse/HDFS-5283) | *Critical* | **NN not coming out of startup safemode due to under construction blocks only inside snapshots also counted in safemode threshhold**
---

* [HDFS-5281](https://issues.apache.org/jira/browse/HDFS-5281) | *Major* | **COMMIT request should not block**
---

* [HDFS-5276](https://issues.apache.org/jira/browse/HDFS-5276) | *Major* | **FileSystem.Statistics got performance issue on multi-thread read/write.**
---

* [HDFS-5267](https://issues.apache.org/jira/browse/HDFS-5267) | *Minor* | **Remove volatile from LightWeightHashSet**
---

* [HDFS-5260](https://issues.apache.org/jira/browse/HDFS-5260) | *Major* | **Merge zero-copy memory-mapped HDFS client reads to trunk and branch-2.**
---

* [HDFS-5257](https://issues.apache.org/jira/browse/HDFS-5257) | *Major* | **addBlock() retry should return LocatedBlock with locations else client will get AIOBE**
---

* [HDFS-5252](https://issues.apache.org/jira/browse/HDFS-5252) | *Major* | **Stable write is not handled correctly in someplace**
---

* [HDFS-5241](https://issues.apache.org/jira/browse/HDFS-5241) | *Major* | **Provide alternate queuing audit logger to reduce logging contention**
---

* [HDFS-5240](https://issues.apache.org/jira/browse/HDFS-5240) | *Major* | **Separate formatting from logging in the audit logger API**
---

* [HDFS-5239](https://issues.apache.org/jira/browse/HDFS-5239) | *Major* | **Allow FSNamesystem lock fairness to be configurable**
---

* [HDFS-5220](https://issues.apache.org/jira/browse/HDFS-5220) | *Major* | **Expose group resolution time as metric**
---

* [HDFS-5207](https://issues.apache.org/jira/browse/HDFS-5207) | *Major* | **In BlockPlacementPolicy, update 2 parameters of chooseTarget()**
---

* [HDFS-5188](https://issues.apache.org/jira/browse/HDFS-5188) | *Major* | **Clean up BlockPlacementPolicy and its implementations**
---

* [HDFS-5171](https://issues.apache.org/jira/browse/HDFS-5171) | *Major* | **NFS should create input stream for a file and try to share it with multiple read requests**
---

* [HDFS-5170](https://issues.apache.org/jira/browse/HDFS-5170) | *Trivial* | **BlockPlacementPolicyDefault uses the wrong classname when alerting to enable debug logging**
---

* [HDFS-5164](https://issues.apache.org/jira/browse/HDFS-5164) | *Minor* | **deleteSnapshot should check if OperationCategory.WRITE is possible before taking write lock**
---

* [HDFS-5144](https://issues.apache.org/jira/browse/HDFS-5144) | *Minor* | **Document time unit to NameNodeMetrics.java**
---

* [HDFS-5130](https://issues.apache.org/jira/browse/HDFS-5130) | *Minor* | **Add test for snapshot related FsShell and DFSAdmin commands**
---

* [HDFS-5122](https://issues.apache.org/jira/browse/HDFS-5122) | *Major* | **Support failover and retry in WebHdfsFileSystem for NN HA**
---

* [HDFS-5093](https://issues.apache.org/jira/browse/HDFS-5093) | *Minor* | **TestGlobPaths should re-use the MiniDFSCluster to avoid failure on Windows**
---

* [HDFS-5075](https://issues.apache.org/jira/browse/HDFS-5075) | *Major* | **httpfs-config.sh calls out incorrect env script name**
---

* [HDFS-5074](https://issues.apache.org/jira/browse/HDFS-5074) | *Major* | **Allow starting up from an fsimage checkpoint in the middle of a segment**
---

* [HDFS-5073](https://issues.apache.org/jira/browse/HDFS-5073) | *Minor* | **TestListCorruptFileBlocks fails intermittently**
---

* [HDFS-5068](https://issues.apache.org/jira/browse/HDFS-5068) | *Major* | **Convert NNThroughputBenchmark to a Tool to allow generic options.**
---

* [HDFS-5065](https://issues.apache.org/jira/browse/HDFS-5065) | *Major* | **TestSymlinkHdfsDisable fails on Windows**
---

* [HDFS-5037](https://issues.apache.org/jira/browse/HDFS-5037) | *Critical* | **Active NN should trigger its own edit log rolls**
---

* [HDFS-5035](https://issues.apache.org/jira/browse/HDFS-5035) | *Major* | **getFileLinkStatus and rename do not correctly check permissions of symlinks**
---

* [HDFS-5034](https://issues.apache.org/jira/browse/HDFS-5034) | *Trivial* | **Remove debug prints from getFileLinkInfo**
---

* [HDFS-5023](https://issues.apache.org/jira/browse/HDFS-5023) | *Major* | **TestSnapshotPathINodes.testAllowSnapshot is failing with jdk7**
---

* [HDFS-5014](https://issues.apache.org/jira/browse/HDFS-5014) | *Major* | **BPOfferService#processCommandFromActor() synchronization on namenode RPC call delays IBR to Active NN, if Stanby NN is unstable**
---

* [HDFS-5004](https://issues.apache.org/jira/browse/HDFS-5004) | *Major* | **Add additional JMX bean for NameNode status data**
---

* [HDFS-4997](https://issues.apache.org/jira/browse/HDFS-4997) | *Major* | **libhdfs doesn't return correct error codes in most cases**

libhdfs now returns correct codes in errno. Previously, due to a bug, many functions set errno to 255 instead of the more specific error code.

---

* [HDFS-4995](https://issues.apache.org/jira/browse/HDFS-4995) | *Major* | **Make getContentSummary() less expensive**
---

* [HDFS-4994](https://issues.apache.org/jira/browse/HDFS-4994) | *Minor* | **Audit log getContentSummary() calls**
---

* [HDFS-4983](https://issues.apache.org/jira/browse/HDFS-4983) | *Major* | **Numeric usernames do not work with WebHDFS FS**

Add a new configuration property "dfs.webhdfs.user.provider.user.pattern" for specifying user name filters for WebHDFS.

---

* [HDFS-4949](https://issues.apache.org/jira/browse/HDFS-4949) | *Major* | **Centralized cache management in HDFS**
---

* [HDFS-4885](https://issues.apache.org/jira/browse/HDFS-4885) | *Major* | **Update verifyBlockPlacement() API in BlockPlacementPolicy**
---

* [HDFS-4879](https://issues.apache.org/jira/browse/HDFS-4879) | *Major* | **Add "blocked ArrayList" collection to avoid CMS full GCs**
---

* [HDFS-4860](https://issues.apache.org/jira/browse/HDFS-4860) | *Major* | **Add additional attributes to JMX beans**
---

* [HDFS-4816](https://issues.apache.org/jira/browse/HDFS-4816) | *Major* | **transitionToActive blocks if the SBN is doing checkpoint image transfer**
---

* [HDFS-4657](https://issues.apache.org/jira/browse/HDFS-4657) | *Major* | **Limit the number of blocks logged by the NN after a block report to a configurable value.**
---

* [HDFS-4633](https://issues.apache.org/jira/browse/HDFS-4633) | *Major* | **TestDFSClientExcludedNodes fails sporadically if excluded nodes cache expires too quickly**
---

* [HDFS-4517](https://issues.apache.org/jira/browse/HDFS-4517) | *Major* | **Cover class RemoteBlockReader with unit tests**
---

* [HDFS-4516](https://issues.apache.org/jira/browse/HDFS-4516) | *Critical* | **Client crash after block allocation and NN switch before lease recovery for the same file can cause readers to fail forever**
---

* [HDFS-4512](https://issues.apache.org/jira/browse/HDFS-4512) | *Major* | **Cover package org.apache.hadoop.hdfs.server.common with tests**
---

* [HDFS-4511](https://issues.apache.org/jira/browse/HDFS-4511) | *Major* | **Cover package org.apache.hadoop.hdfs.tools with unit test**
---

* [HDFS-4510](https://issues.apache.org/jira/browse/HDFS-4510) | *Major* | **Cover classes ClusterJspHelper/NamenodeJspHelper with unit tests**
---

* [HDFS-4491](https://issues.apache.org/jira/browse/HDFS-4491) | *Major* | **Parallel testing HDFS**
---

* [HDFS-4376](https://issues.apache.org/jira/browse/HDFS-4376) | *Major* | ** Fix several race conditions in Balancer and resolve intermittent timeout of TestBalancerWithNodeGroup**
---

* [HDFS-4329](https://issues.apache.org/jira/browse/HDFS-4329) | *Major* | **DFSShell issues with directories with spaces in name**
---

* [HDFS-4278](https://issues.apache.org/jira/browse/HDFS-4278) | *Major* | **Log an ERROR when DFS\_BLOCK\_ACCESS\_TOKEN\_ENABLE config  is disabled but security is turned on.**
---

* [HDFS-4201](https://issues.apache.org/jira/browse/HDFS-4201) | *Critical* | **NPE in BPServiceActor#sendHeartBeat**
---

* [HDFS-4096](https://issues.apache.org/jira/browse/HDFS-4096) | *Major* | **Add snapshot information to namenode WebUI**
---

* [HDFS-3987](https://issues.apache.org/jira/browse/HDFS-3987) | *Major* | **Support webhdfs over HTTPS**
---

* [HDFS-3981](https://issues.apache.org/jira/browse/HDFS-3981) | *Major* | **access time is set without holding FSNamesystem write lock**
---

* [HDFS-2933](https://issues.apache.org/jira/browse/HDFS-2933) | *Major* | **Improve DataNode Web UI Index Page**
---

* [HDFS-2832](https://issues.apache.org/jira/browse/HDFS-2832) | *Major* | **Enable support for heterogeneous storages in HDFS - DN as a collection of storages**


