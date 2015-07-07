# Apache HBase Changelog

## Release 0.98.4 - 2014-07-21

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10935](https://issues.apache.org/jira/browse/HBASE-10935) | support snapshot policy where flush memstore can be skipped to prevent production cluster freeze |  Minor | shell, snapshots | Tianying Chang | Tianying Chang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11513](https://issues.apache.org/jira/browse/HBASE-11513) | Combine SingleMultiple Queue RpcExecutor into a single class |  Minor | io, regionserver | Jesse Yates | Jesse Yates |
| [HBASE-11497](https://issues.apache.org/jira/browse/HBASE-11497) | Expose RpcScheduling implementations as LimitedPrivate interfaces |  Major | io, regionserver, Usability | Jesse Yates | Jesse Yates |
| [HBASE-11452](https://issues.apache.org/jira/browse/HBASE-11452) | add getUserPermission feature in AccessControlClient as client API |  Major | Client, security | Demai Ni | Demai Ni |
| [HBASE-11450](https://issues.apache.org/jira/browse/HBASE-11450) | Improve file size info in SnapshotInfo tool |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11436](https://issues.apache.org/jira/browse/HBASE-11436) | Support start Row and stop Row in HBase Export |  Major | mapreduce | Ward Viaene | Ward Viaene |
| [HBASE-11407](https://issues.apache.org/jira/browse/HBASE-11407) | hbase-client should not require Jackson for pure HBase queries be executed |  Minor | Client | Sergey Beryozkin | Sergey Beryozkin |
| [HBASE-11398](https://issues.apache.org/jira/browse/HBASE-11398) | Print the stripes' state with file size info |  Minor | Compaction | Victor Xu | Victor Xu |
| [HBASE-11355](https://issues.apache.org/jira/browse/HBASE-11355) | a couple of callQueue related improvements |  Major | IPC/RPC, Performance | Liang Xie | Matteo Bertozzi |
| [HBASE-11349](https://issues.apache.org/jira/browse/HBASE-11349) | [Thrift] support authentication/impersonation |  Major | security, Thrift | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10871](https://issues.apache.org/jira/browse/HBASE-10871) | Indefinite OPEN/CLOSE wait on busy RegionServers |  Major | Balancer, master, Region Assignment | Harsh J | Esteban Gutierrez |
| [HBASE-10641](https://issues.apache.org/jira/browse/HBASE-10641) | Configurable Bucket Sizes in bucketCache |  Major | regionserver | Biju Nair | Nick Dimiduk |
| [HBASE-8495](https://issues.apache.org/jira/browse/HBASE-8495) | Change ownership of the directory to bulk load |  Trivial | mapreduce | Matteo Bertozzi | Matteo Bertozzi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11510](https://issues.apache.org/jira/browse/HBASE-11510) | Visibility serialization format tag gets duplicated in Append/Increment'ed cells |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11505](https://issues.apache.org/jira/browse/HBASE-11505) | 'snapshot' shell command shadows 'snapshot' shell when 'help' is invoked |  Trivial | shell | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | Hadoop configuration overrides some ipc parameters including tcpNoDelay |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11488](https://issues.apache.org/jira/browse/HBASE-11488) | cancelTasks in SubprocedurePool can hang during task error |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-11487](https://issues.apache.org/jira/browse/HBASE-11487) | ScanResponse carries non-zero cellblock for CloseScanRequest (ScanRequest with close\_scanner = true) |  Minor | IPC/RPC, regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11465](https://issues.apache.org/jira/browse/HBASE-11465) | [VisibilityController] Reserved tags check not happening for Append/Increment |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11460](https://issues.apache.org/jira/browse/HBASE-11460) | Deadlock in HMaster on masterAndZKLock in HConnectionManager |  Critical | master | Andrey Stepachev | Ted Yu |
| [HBASE-11442](https://issues.apache.org/jira/browse/HBASE-11442) | ReplicationSourceManager doesn't cleanup the queues for recovered sources |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11439](https://issues.apache.org/jira/browse/HBASE-11439) | StripeCompaction may not obey the OffPeak rule to compaction |  Minor | Compaction | Victor Xu | Victor Xu |
| [HBASE-11435](https://issues.apache.org/jira/browse/HBASE-11435) | Visibility labelled cells fail to getting replicated |  Critical | Replication, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11433](https://issues.apache.org/jira/browse/HBASE-11433) | LruBlockCache does not respect its configurable parameters |  Major | regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11430](https://issues.apache.org/jira/browse/HBASE-11430) | lastFlushSeqId has been updated wrongly during region open |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11423](https://issues.apache.org/jira/browse/HBASE-11423) | Visibility label and per cell ACL feature not working with HTable#mutateRow() and MultiRowMutationEndpoint |  Blocker | Coprocessors, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11418](https://issues.apache.org/jira/browse/HBASE-11418) | build target "site" doesn't respect hadoop-two.version property |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HBASE-11403](https://issues.apache.org/jira/browse/HBASE-11403) | Fix race conditions around Object#notify |  Major | Client, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11397](https://issues.apache.org/jira/browse/HBASE-11397) | When merging expired stripes, we need to create an empty file to preserve metadata. |  Major | Compaction | Victor Xu | Victor Xu |
| [HBASE-11387](https://issues.apache.org/jira/browse/HBASE-11387) | metrics: wrong totalRequestCount |  Major | metrics, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11380](https://issues.apache.org/jira/browse/HBASE-11380) | HRegion lock object is not being released properly, leading to snapshot failure |  Blocker | regionserver | Craig Condit | Ted Yu |
| [HBASE-11374](https://issues.apache.org/jira/browse/HBASE-11374) | RpcRetryingCaller#callWithoutRetries has a timeout of zero |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11371](https://issues.apache.org/jira/browse/HBASE-11371) | Typo in Thrift2 docs |  Trivial | documentation | Cesar Delgado | Cesar Delgado |
| [HBASE-11353](https://issues.apache.org/jira/browse/HBASE-11353) | Wrong Write Request Count |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11347](https://issues.apache.org/jira/browse/HBASE-11347) | For some errors, the client can retry infinitely |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11342](https://issues.apache.org/jira/browse/HBASE-11342) | The method isChildReadLock in class ZKInterProcessLockBase is wrong |  Minor | Zookeeper | Qianxi Zhang | Qianxi Zhang |
| [HBASE-11327](https://issues.apache.org/jira/browse/HBASE-11327) | ExportSnapshot hit stackoverflow error when target snapshotDir doesn't contain uri |  Minor | snapshots | Demai Ni | Demai Ni |
| [HBASE-11312](https://issues.apache.org/jira/browse/HBASE-11312) | Minor refactoring of TestVisibilityLabels class |  Trivial | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11311](https://issues.apache.org/jira/browse/HBASE-11311) | Secure Bulk Load does not execute chmod 777 on the files |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11310](https://issues.apache.org/jira/browse/HBASE-11310) | Delete's copy constructor should copy the attributes also |  Major | mapreduce | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11302](https://issues.apache.org/jira/browse/HBASE-11302) | ReplicationSourceManager#sources is not thread safe |  Major | Replication | Qianxi Zhang | Qianxi Zhang |
| [HBASE-11194](https://issues.apache.org/jira/browse/HBASE-11194) | [AccessController] issue with covering permission check in case of concurrent op on same row |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11162](https://issues.apache.org/jira/browse/HBASE-11162) | RegionServer webui uses the default master info port irrespective of the user configuration. |  Minor | UI | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString" |  Blocker | mapreduce | André Kelpe | stack |
| [HBASE-11052](https://issues.apache.org/jira/browse/HBASE-11052) | Sending random data crashes thrift service |  Major | Thrift | Adrian Muraru | Adrian Muraru |
| [HBASE-10922](https://issues.apache.org/jira/browse/HBASE-10922) | Log splitting status should always be closed |  Minor | wal | Jimmy Xiang | Jeffrey Zhong |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11307](https://issues.apache.org/jira/browse/HBASE-11307) | Deprecate SlabCache |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


