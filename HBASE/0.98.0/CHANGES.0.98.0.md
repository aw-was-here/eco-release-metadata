# Apache HBase Changelog

## Release 0.98.0 - 2014-02-16

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10422](https://issues.apache.org/jira/browse/HBASE-10422) | ZeroCopyLiteralByteString.zeroCopyGetBytes has an unusable prototype and conflicts with AsyncHBase |  Major | Client, Protobufs | Benoit Sigoure | Benoit Sigoure |
| [HBASE-10073](https://issues.apache.org/jira/browse/HBASE-10073) | Revert HBASE-9718 (Add a test scope dependency on org.slf4j:slf4j-api to hbase-client) |  Major | Zookeeper | Aleksandr Shulman | Andrew Purtell |
| [HBASE-9973](https://issues.apache.org/jira/browse/HBASE-9973) | [ACL]: Users with 'Admin' ACL permission will lose permissions after upgrade to 0.96.x from 0.94.x or 0.92.x |  Major | migration, security | Aleksandr Shulman | Himanshu Vashishtha |
| [HBASE-9684](https://issues.apache.org/jira/browse/HBASE-9684) | Remove MultiRowMutationProcessorMessages.proto |  Major | Protobufs | stack | Dan Burkert |
| [HBASE-9677](https://issues.apache.org/jira/browse/HBASE-9677) | Remove MasterAdmin and MasterMonitor protos; have MasterService provide these functions |  Major | Protobufs | stack | stack |
| [HBASE-9612](https://issues.apache.org/jira/browse/HBASE-9612) | Ability to batch edits destined to different regions |  Blocker | . | Benoit Sigoure | stack |
| [HBASE-9549](https://issues.apache.org/jira/browse/HBASE-9549) | KeyValue#parseColumn(byte[]) does not handle empty qualifier |  Major | mapreduce, REST, Thrift, util | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9369](https://issues.apache.org/jira/browse/HBASE-9369) | Add support for 1- and 2-byte integers in OrderedBytes and provide types |  Major | . | Nick Dimiduk | He Liangliang |
| [HBASE-8877](https://issues.apache.org/jira/browse/HBASE-8877) | Reentrant row locks |  Major | Coprocessors, regionserver | Dave Latham | Dave Latham |
| [HBASE-8861](https://issues.apache.org/jira/browse/HBASE-8861) | Remove ReplicationState completely |  Major | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-8496](https://issues.apache.org/jira/browse/HBASE-8496) | Implement tags and the internals of how a tag should look like |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8352](https://issues.apache.org/jira/browse/HBASE-8352) | Rename '.snapshot' directory |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-8173](https://issues.apache.org/jira/browse/HBASE-8173) | HMaster#move wraps IOException in UnknownRegionException |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7905](https://issues.apache.org/jira/browse/HBASE-7905) | Add passing of optional cell blocks over rpc |  Major | IPC/RPC | stack | stack |
| [HBASE-7876](https://issues.apache.org/jira/browse/HBASE-7876) | Got exception when manually triggers a split on an empty region |  Minor | regionserver | Maryann Xue | Maryann Xue |
| [HBASE-7662](https://issues.apache.org/jira/browse/HBASE-7662) | [Per-KV security] Per cell ACLs stored in tags |  Major | Coprocessors, security | Andrew Purtell | Andrew Purtell |
| [HBASE-7481](https://issues.apache.org/jira/browse/HBASE-7481) | Allow IOExceptions to be thrown from Filter methods |  Major | . | Lars Hofhansl | Andrea Gazzarini |
| [HBASE-6873](https://issues.apache.org/jira/browse/HBASE-6873) | Clean up Coprocessor loading failure handling |  Blocker | Coprocessors, regionserver | David Arthur | Andrew Purtell |
| [HBASE-3171](https://issues.apache.org/jira/browse/HBASE-3171) | Drop ROOT and instead store META location(s) directly in ZooKeeper |  Major | Client, master, regionserver, Zookeeper | Jonathan Gray | Jean-Daniel Cryans |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10416](https://issues.apache.org/jira/browse/HBASE-10416) | Improvements to the import flow |  Major | mapreduce | Vasu Mariyala | Vasu Mariyala |
| [HBASE-9631](https://issues.apache.org/jira/browse/HBASE-9631) | add murmur3 hash |  Major | util | Liang Xie | Liang Xie |
| [HBASE-9630](https://issues.apache.org/jira/browse/HBASE-9630) | Add thread which detects JVM pauses like HADOOP's |  Major | regionserver | Liang Xie | Liang Xie |
| [HBASE-8753](https://issues.apache.org/jira/browse/HBASE-8753) | Provide new delete flag which can delete all cells under a column-family which have designated timestamp |  Major | Deletes, Scanners | Honghua Feng | Honghua Feng |
| [HBASE-8663](https://issues.apache.org/jira/browse/HBASE-8663) | a HBase Shell command to list the tables replicated from current cluster |  Critical | Replication, shell | Demai Ni | Demai Ni |
| [HBASE-8504](https://issues.apache.org/jira/browse/HBASE-8504) | HTable.getRegionsInRange() should provide a non-cached API |  Major | Client | Alan Choi | Matteo Bertozzi |
| [HBASE-8415](https://issues.apache.org/jira/browse/HBASE-8415) | DisabledRegionSplitPolicy |  Major | regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8369](https://issues.apache.org/jira/browse/HBASE-8369) | MapReduce over snapshot files |  Major | mapreduce, snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-8163](https://issues.apache.org/jira/browse/HBASE-8163) | MemStoreChunkPool: An improvement for JAVA GC when using MSLAB |  Major | Performance, regionserver | chunhui shen | chunhui shen |
| [HBASE-7875](https://issues.apache.org/jira/browse/HBASE-7875) | introduce a compaction switch in HBase Shell |  Trivial | shell | Liang Xie | Liang Xie |
| [HBASE-7842](https://issues.apache.org/jira/browse/HBASE-7842) | Add compaction policy that explores more storefile groups |  Major | Compaction | Elliott Clark | Elliott Clark |
| [HBASE-7826](https://issues.apache.org/jira/browse/HBASE-7826) | Improve Hbase Thrift v1 to return results in sorted order |  Minor | Thrift | Shivendra Pratap Singh | Shivendra Pratap Singh |
| [HBASE-7667](https://issues.apache.org/jira/browse/HBASE-7667) | Support stripe compaction |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7544](https://issues.apache.org/jira/browse/HBASE-7544) | Transparent table/CF encryption |  Major | HFile, io | Andrew Purtell | Andrew Purtell |
| [HBASE-7525](https://issues.apache.org/jira/browse/HBASE-7525) | A canary monitoring program specifically for regionserver |  Critical | monitoring | takeshi.miao | takeshi.miao |
| [HBASE-7415](https://issues.apache.org/jira/browse/HBASE-7415) | [snapshots] Add task information to snapshot operation |  Major | Client, master, regionserver, snapshots, Zookeeper | Jesse Yates | Jesse Yates |
| [HBASE-7244](https://issues.apache.org/jira/browse/HBASE-7244) | Provide a command or argument to startup, that formats znodes if provided |  Critical | Zookeeper | Harsh J | rajeshbabu |
| [HBASE-7006](https://issues.apache.org/jira/browse/HBASE-7006) | [MTTR] Improve Region Server Recovery Time - Distributed Log Replay |  Critical | MTTR | stack | Jeffrey Zhong |
| [HBASE-6104](https://issues.apache.org/jira/browse/HBASE-6104) | Require EXEC permission to call coprocessor endpoints |  Major | Coprocessors, security | Gary Helmling | Andrew Purtell |
| [HBASE-4811](https://issues.apache.org/jira/browse/HBASE-4811) | Support reverse Scan |  Major | Client | John Carrino | chunhui shen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10457](https://issues.apache.org/jira/browse/HBASE-10457) | Print corrupted file information in SnapshotInfo tool without -file option |  Minor | snapshots | bharath v | bharath v |
| [HBASE-10430](https://issues.apache.org/jira/browse/HBASE-10430) | Support compressTags in shell for enabling tag encoding |  Minor | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10423](https://issues.apache.org/jira/browse/HBASE-10423) | Report back the message of split or rollback failure to the master |  Trivial | regionserver | Harsh J | Harsh J |
| [HBASE-10395](https://issues.apache.org/jira/browse/HBASE-10395) | endTime won't be set in VerifyReplication if startTime is not set |  Minor | mapreduce, Replication | cuijianwei | cuijianwei |
| [HBASE-10368](https://issues.apache.org/jira/browse/HBASE-10368) | Add Mutation.setWriteToWAL() back to 0.98 |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-10346](https://issues.apache.org/jira/browse/HBASE-10346) | Add Documentation for stateless scanner |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-10324](https://issues.apache.org/jira/browse/HBASE-10324) | refactor deferred-log-flush/Durability related interface/code/naming to align with changed semantic of the new write thread model |  Major | Client, regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10323](https://issues.apache.org/jira/browse/HBASE-10323) | Auto detect data block encoding in HFileOutputFormat |  Major | mapreduce | Ishan Chhabra | Ishan Chhabra |
| [HBASE-10263](https://issues.apache.org/jira/browse/HBASE-10263) | make LruBlockCache single/multi/in-memory ratio user-configurable and provide preemptive mode for in-memory type block |  Major | io | Honghua Feng | Honghua Feng |
| [HBASE-10252](https://issues.apache.org/jira/browse/HBASE-10252) | Don't write back to WAL/memstore when Increment amount is zero (mostly for query rather than update intention) |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10229](https://issues.apache.org/jira/browse/HBASE-10229) | Support OperationAttributes in Increment and Append in Shell |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10213](https://issues.apache.org/jira/browse/HBASE-10213) | Add read log size per second metrics for replication source |  Minor | metrics, Replication | cuijianwei | cuijianwei |
| [HBASE-10175](https://issues.apache.org/jira/browse/HBASE-10175) | 2-thread ChaosMonkey steps on its own toes |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10173](https://issues.apache.org/jira/browse/HBASE-10173) | Need HFile version check in security coprocessors |  Critical | security | Anoop Sam John | Andrew Purtell |
| [HBASE-10157](https://issues.apache.org/jira/browse/HBASE-10157) | Provide CP hook post log replay |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-10116](https://issues.apache.org/jira/browse/HBASE-10116) | SlabCache metrics improvements |  Minor | metrics, regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10048](https://issues.apache.org/jira/browse/HBASE-10048) | Add hlog number metric in regionserver |  Minor | metrics | Liu Shaohui | Liu Shaohui |
| [HBASE-10024](https://issues.apache.org/jira/browse/HBASE-10024) | Add an interface to create put with immutable arrays |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10020](https://issues.apache.org/jira/browse/HBASE-10020) | Add maven compile-protobuf profile |  Major | build | Enis Soztutar | Enis Soztutar |
| [HBASE-10010](https://issues.apache.org/jira/browse/HBASE-10010) | eliminate the put latency spike on the new log file beginning |  Major | regionserver | Liang Xie | Liang Xie |
| [HBASE-10007](https://issues.apache.org/jira/browse/HBASE-10007) | PerformanceEvaluation: Add sampling and latency collection to randomRead test |  Minor | Performance, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10001](https://issues.apache.org/jira/browse/HBASE-10001) | Add a coprocessor to help testing the performances without taking into account the i/o |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9963](https://issues.apache.org/jira/browse/HBASE-9963) | Remove the ReentrantReadWriteLock in the MemStore |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9931](https://issues.apache.org/jira/browse/HBASE-9931) | Optional setBatch for CopyTable to copy large rows in batches |  Major | mapreduce | Dave Latham | Nick Dimiduk |
| [HBASE-9924](https://issues.apache.org/jira/browse/HBASE-9924) | Avoid potential filename conflict in region\_mover.rb |  Major | shell | Liang Xie | Liang Xie |
| [HBASE-9884](https://issues.apache.org/jira/browse/HBASE-9884) | Add Thrift and REST support for Visibility Labels |  Major | Client | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-9882](https://issues.apache.org/jira/browse/HBASE-9882) | Support Append Operation with thrift |  Major | Thrift | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-9867](https://issues.apache.org/jira/browse/HBASE-9867) | Save on array copies with a subclass of LiteralByteString |  Major | Protobufs | stack | stack |
| [HBASE-9866](https://issues.apache.org/jira/browse/HBASE-9866) | Support the mode where REST server authorizes proxy users |  Major | REST | Devaraj Das | Devaraj Das |
| [HBASE-9855](https://issues.apache.org/jira/browse/HBASE-9855) | evictBlocksByHfileName improvement for bucket cache |  Major | regionserver | Liang Xie | Liang Xie |
| [HBASE-9832](https://issues.apache.org/jira/browse/HBASE-9832) | Add MR support for Visibility labels |  Major | mapreduce | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-9831](https://issues.apache.org/jira/browse/HBASE-9831) | 'hbasefsck.numthreads' property isn't passed to hbck via cmdline -D option |  Minor | hbck | takeshi.miao | takeshi.miao |
| [HBASE-9784](https://issues.apache.org/jira/browse/HBASE-9784) | Switch to Hadoop-2.2 |  Major | hadoop2 | Enis Soztutar | Enis Soztutar |
| [HBASE-9772](https://issues.apache.org/jira/browse/HBASE-9772) | Normalize new client default values |  Minor | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9771](https://issues.apache.org/jira/browse/HBASE-9771) | [WebUI] Humanize store and blockcache statistics on RS |  Trivial | UI | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9750](https://issues.apache.org/jira/browse/HBASE-9750) | Add retries around Action server stop/start |  Major | test | stack | Enis Soztutar |
| [HBASE-9749](https://issues.apache.org/jira/browse/HBASE-9749) | Custom threadpool for Coprocessor obtained HTables |  Major | Coprocessors | Jesse Yates | Jesse Yates |
| [HBASE-9716](https://issues.apache.org/jira/browse/HBASE-9716) | LoadTestTool should provide default min and max settings to the data generator |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-9701](https://issues.apache.org/jira/browse/HBASE-9701) | Make SLEEP\_TIME in IntegrationTestMTTR configurable |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9656](https://issues.apache.org/jira/browse/HBASE-9656) | Remove decimal places from Requests Per Second stats |  Trivial | UI | James Kinley | James Kinley |
| [HBASE-9594](https://issues.apache.org/jira/browse/HBASE-9594) | Add reference documentation on changes made by HBASE-7634 (Replication handling of peer cluster changes) |  Minor | documentation | Gabriel Reid | Gabriel Reid |
| [HBASE-9570](https://issues.apache.org/jira/browse/HBASE-9570) | With AccessDeniedException, HBase shell would be better to just display the error message to be user friendly |  Minor | shell | Yang Wang | Yang Wang |
| [HBASE-9560](https://issues.apache.org/jira/browse/HBASE-9560) | bin/hbase clean --cleanAll should not skip data cleaning if in local mode |  Major | scripts | Enis Soztutar | Enis Soztutar |
| [HBASE-9524](https://issues.apache.org/jira/browse/HBASE-9524) | Multi row get does not return any results even if any one of the rows specified in the query is missing and improve exception handling |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9520](https://issues.apache.org/jira/browse/HBASE-9520) | shortcut split asap while requested splitPoint equals with region's startKey |  Minor | Client | Liang Xie | Liang Xie |
| [HBASE-9518](https://issues.apache.org/jira/browse/HBASE-9518) | getFakedKey() improvement |  Major | regionserver | Liang Xie | Liang Xie |
| [HBASE-9488](https://issues.apache.org/jira/browse/HBASE-9488) | Improve performance for small scan |  Major | Client, Performance, Scanners | chunhui shen | chunhui shen |
| [HBASE-9443](https://issues.apache.org/jira/browse/HBASE-9443) | ReplicationProtbufUtil.toHLogEntries needs to be either removed or deprecated |  Major | Replication | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-9438](https://issues.apache.org/jira/browse/HBASE-9438) | Enhance hbase shell un/assign to take encoded region name |  Minor | shell | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9385](https://issues.apache.org/jira/browse/HBASE-9385) | Log HBase Master command line arguments on startup |  Minor | master | Aditya Kishore | Aditya Kishore |
| [HBASE-9347](https://issues.apache.org/jira/browse/HBASE-9347) | Support for enabling servlet filters for REST service |  Major | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9343](https://issues.apache.org/jira/browse/HBASE-9343) | Implement stateless scanner for Stargate |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9243](https://issues.apache.org/jira/browse/HBASE-9243) | Add more useful statistics in the HFile tool |  Minor | HFile | Alexandre Normand | Alexandre Normand |
| [HBASE-9221](https://issues.apache.org/jira/browse/HBASE-9221) | Provide interface for getting a User in the client |  Major | Client, hadoop2, security | Jesse Yates | Jesse Yates |
| [HBASE-9208](https://issues.apache.org/jira/browse/HBASE-9208) | ReplicationLogCleaner slow at large scale |  Major | Replication | Dave Latham | Dave Latham |
| [HBASE-9101](https://issues.apache.org/jira/browse/HBASE-9101) | Addendum to pluggable RpcScheduler |  Major | IPC/RPC | Chao Shi | Chao Shi |
| [HBASE-9077](https://issues.apache.org/jira/browse/HBASE-9077) | Make Web ui Fluid width |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-8921](https://issues.apache.org/jira/browse/HBASE-8921) | [thrift2] Add GenericOptionsParser to Thrift 2 server |  Major | Thrift | Lars George | Lars George |
| [HBASE-8884](https://issues.apache.org/jira/browse/HBASE-8884) | Pluggable RpcScheduler |  Major | IPC/RPC | Chao Shi | Chao Shi |
| [HBASE-8861](https://issues.apache.org/jira/browse/HBASE-8861) | Remove ReplicationState completely |  Major | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-8847](https://issues.apache.org/jira/browse/HBASE-8847) | Filter.transform() always applies unconditionally, even when combined in a FilterList |  Minor | Filters | Christophe Taton | Christophe Taton |
| [HBASE-8812](https://issues.apache.org/jira/browse/HBASE-8812) | Avoid a wide line on the HMaster webUI if we have many ZooKeeper servers |  Minor | master | Fengdong Yu | Fengdong Yu |
| [HBASE-8809](https://issues.apache.org/jira/browse/HBASE-8809) | Include deletes in the scan (setRaw) method does not respect the time range or the filter |  Major | Scanners | Vasu Mariyala | Lars Hofhansl |
| [HBASE-8768](https://issues.apache.org/jira/browse/HBASE-8768) | Improve bulk load performance by moving key value construction from map phase to reduce phase. |  Major | mapreduce, Performance | rajeshbabu | rajeshbabu |
| [HBASE-8755](https://issues.apache.org/jira/browse/HBASE-8755) | A new write thread model for HLog to improve the overall HBase write throughput |  Critical | Performance, wal | Honghua Feng | Honghua Feng |
| [HBASE-8754](https://issues.apache.org/jira/browse/HBASE-8754) | Log the client IP/port of the balancer invoker |  Major | master, Usability | Harsh J | stack |
| [HBASE-8737](https://issues.apache.org/jira/browse/HBASE-8737) | [replication] Change replication RPC to use cell blocks |  Critical | Replication | Chris Trezzo | stack |
| [HBASE-8702](https://issues.apache.org/jira/browse/HBASE-8702) | Make WALEditCodec pluggable |  Major | Replication, wal | Jesse Yates | Jesse Yates |
| [HBASE-8692](https://issues.apache.org/jira/browse/HBASE-8692) | [AccessController] Restrict HTableDescriptor enumeration |  Major | Coprocessors, security | Andrew Purtell | Andrew Purtell |
| [HBASE-8690](https://issues.apache.org/jira/browse/HBASE-8690) | Reduce unnecessary getFileStatus hdfs calls in TTL hfile and hlog cleanners |  Minor | master | Liu Shaohui | Liu Shaohui |
| [HBASE-8685](https://issues.apache.org/jira/browse/HBASE-8685) | [REST] Minor fix to XMLSchema.xsd and ScannerModel |  Minor | REST | Julian Zhou | Julian Zhou |
| [HBASE-8617](https://issues.apache.org/jira/browse/HBASE-8617) | Introducing a new config to disable writes during recovering |  Major | regionserver | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8609](https://issues.apache.org/jira/browse/HBASE-8609) | Make the CopyTable support startRow, stopRow options |  Minor | mapreduce | Liu Shaohui | Liu Shaohui |
| [HBASE-8599](https://issues.apache.org/jira/browse/HBASE-8599) | HLogs in ZK are not cleaned up when replication lag is minimal |  Major | Replication | Varun Sharma | Varun Sharma |
| [HBASE-8573](https://issues.apache.org/jira/browse/HBASE-8573) | Store last flushed sequence id for each store of region for Distributed Log Replay |  Major | MTTR | Ted Yu | Jeffrey Zhong |
| [HBASE-8471](https://issues.apache.org/jira/browse/HBASE-8471) | Server-side, remove convertion from pb type to client type before we call method |  Critical | IPC/RPC, regionserver | stack | Anoop Sam John |
| [HBASE-8439](https://issues.apache.org/jira/browse/HBASE-8439) | [replication] Remove ReplicationZookeeper class |  Blocker | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-8438](https://issues.apache.org/jira/browse/HBASE-8438) | Extend bin/hbase to print a "mapreduce classpath" |  Major | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8383](https://issues.apache.org/jira/browse/HBASE-8383) | Support lib/\*jar inside coprocessor jar |  Minor | Coprocessors | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8367](https://issues.apache.org/jira/browse/HBASE-8367) | LoadIncrementalHFiles does not return an error code nor throw Exception when failures occur due to timeouts |  Minor | mapreduce | Brian Dougan | Brian Dougan |
| [HBASE-8345](https://issues.apache.org/jira/browse/HBASE-8345) | Add all available resources in o.a.h.h.rest.RootResource and VersionResource to o.a.h.h.rest.client.RemoteAdmin |  Minor | Client, REST | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-8322](https://issues.apache.org/jira/browse/HBASE-8322) | Re-enable hbase checksums by default |  Critical | Filesystem Integration | Enis Soztutar | Jean-Daniel Cryans |
| [HBASE-8301](https://issues.apache.org/jira/browse/HBASE-8301) | Document for hbase.rpc.timeout |  Minor | documentation | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-8284](https://issues.apache.org/jira/browse/HBASE-8284) | Allow String Offset(s) in ColumnPaginationFilter for bookmark based pagination |  Minor | Filters | Varun Sharma | Varun Sharma |
| [HBASE-8218](https://issues.apache.org/jira/browse/HBASE-8218) | Pass HTable as parameter to methods of AggregationClient |  Major | Client, Coprocessors | cuijianwei | Anoop Sam John |
| [HBASE-8205](https://issues.apache.org/jira/browse/HBASE-8205) | HBCK support for table locks |  Major | hbck, master, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8152](https://issues.apache.org/jira/browse/HBASE-8152) | Avoid creating empty reference file when splitkey is outside the key range of a store file |  Minor | Filesystem Integration, HFile | Sean Zhong | Sean Zhong |
| [HBASE-8137](https://issues.apache.org/jira/browse/HBASE-8137) | Add failed to open/close region state |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8117](https://issues.apache.org/jira/browse/HBASE-8117) | Remove redundant byte conversion methods from HConstants |  Trivial | util | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8066](https://issues.apache.org/jira/browse/HBASE-8066) | Provide Admin.isTableAvailable() for a given table along with splitkeys |  Minor | Client | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8063](https://issues.apache.org/jira/browse/HBASE-8063) | Filter HFiles based on first/last key |  Major | Scanners | Liang Xie | Liang Xie |
| [HBASE-8031](https://issues.apache.org/jira/browse/HBASE-8031) | Adopt goraci as an Integration test |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-8001](https://issues.apache.org/jira/browse/HBASE-8001) | Avoid unnecessary lazy seek |  Major | regionserver | Raymond Liu | Raymond Liu |
| [HBASE-7977](https://issues.apache.org/jira/browse/HBASE-7977) | Online merge should acquire table lock |  Major | master, Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-7952](https://issues.apache.org/jira/browse/HBASE-7952) | Remove update() and Improve ExplicitColumnTracker performance. |  Major | regionserver | Raymond Liu | Raymond Liu |
| [HBASE-7902](https://issues.apache.org/jira/browse/HBASE-7902) | deletes may be removed during minor compaction,  in non-standard compaction schemes [rename enums] |  Minor | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7849](https://issues.apache.org/jira/browse/HBASE-7849) | Provide administrative limits around bulkloads of files into a single region |  Major | regionserver | Harsh J | Jimmy Xiang |
| [HBASE-7848](https://issues.apache.org/jira/browse/HBASE-7848) | Use ZK-based read/write lock to make flush-type snapshot robust against table enable/disable/alter |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-7845](https://issues.apache.org/jira/browse/HBASE-7845) | optimize hfile index key |  Major | HFile | Liang Xie | Liang Xie |
| [HBASE-7843](https://issues.apache.org/jira/browse/HBASE-7843) | enable encapsulating compaction policy/compactor/store file manager interaction shennanigans |  Critical | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7827](https://issues.apache.org/jira/browse/HBASE-7827) | Improve the speed of Hbase Thirft Batch mutation for deletes |  Minor | Thrift | Shivendra Pratap Singh | Shivendra Pratap Singh |
| [HBASE-7745](https://issues.apache.org/jira/browse/HBASE-7745) | Import uses System.out.println instead of logging |  Trivial | mapreduce | Nick Dimiduk | Gustavo Anatoly |
| [HBASE-7721](https://issues.apache.org/jira/browse/HBASE-7721) | Atomic multi-row mutations in META |  Major | Coprocessors, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-7567](https://issues.apache.org/jira/browse/HBASE-7567) | [replication] Create an interface for replication peers |  Major | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-7410](https://issues.apache.org/jira/browse/HBASE-7410) | [snapshots] add snapshot/clone/restore/export docs to ref guide |  Blocker | documentation, snapshots | Jonathan Hsieh | Matteo Bertozzi |
| [HBASE-7247](https://issues.apache.org/jira/browse/HBASE-7247) | Assignment performances decreased by 50% because of regionserver.OpenRegionHandler#tickleOpening |  Major | master, Region Assignment, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7183](https://issues.apache.org/jira/browse/HBASE-7183) | print WARN message if hbase.replication.sizeOfLogQueue is too big |  Major | Replication | Sho Shimauchi | Michael Webster |
| [HBASE-7181](https://issues.apache.org/jira/browse/HBASE-7181) | Merge documentation improvement |  Minor | documentation | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-6870](https://issues.apache.org/jira/browse/HBASE-6870) | HTable#coprocessorExec always scan the whole table |  Critical | Coprocessors | chunhui shen | chunhui shen |
| [HBASE-6295](https://issues.apache.org/jira/browse/HBASE-6295) | Possible performance improvement in client batch operations: presplit and send in background |  Major | Client, Performance | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5945](https://issues.apache.org/jira/browse/HBASE-5945) | Reduce buffer copies in IPC server response path |  Major | IPC/RPC | Todd Lipcon | stack |
| [HBASE-5577](https://issues.apache.org/jira/browse/HBASE-5577) | improve 'patch submission' section in HBase book |  Major | documentation | Sujee Maniyam | Sujee Maniyam |
| [HBASE-5044](https://issues.apache.org/jira/browse/HBASE-5044) | Clarify solution for problem described on http://hbase.apache.org/book/trouble.mapreduce.html |  Trivial | documentation | Eugene Koontz | Eugene Koontz |
| [HBASE-4360](https://issues.apache.org/jira/browse/HBASE-4360) | Maintain information on the time a RS went dead |  Minor | master | Harsh J | samar |
| [HBASE-4284](https://issues.apache.org/jira/browse/HBASE-4284) | document permissions that need to be set on importtsv output before completebulkload |  Major | documentation, mapreduce | Wing Yew Poon | Nick Dimiduk |
| [HBASE-3171](https://issues.apache.org/jira/browse/HBASE-3171) | Drop ROOT and instead store META location(s) directly in ZooKeeper |  Major | Client, master, regionserver, Zookeeper | Jonathan Gray | Jean-Daniel Cryans |
| [HBASE-2231](https://issues.apache.org/jira/browse/HBASE-2231) | Compaction events should be written to HLog |  Blocker | regionserver | Todd Lipcon | stack |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10506](https://issues.apache.org/jira/browse/HBASE-10506) | Fail-fast if client connection is lost before the real call be executed in RPC layer |  Major | IPC/RPC | Liang Xie | Liang Xie |
| [HBASE-10477](https://issues.apache.org/jira/browse/HBASE-10477) | Regression from HBASE-10337 |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10456](https://issues.apache.org/jira/browse/HBASE-10456) | Balancer should not run if it's just turned off. |  Minor | Balancer, hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10455](https://issues.apache.org/jira/browse/HBASE-10455) | cleanup InterruptedException management |  Major | Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10449](https://issues.apache.org/jira/browse/HBASE-10449) | Wrong execution pool configuration in HConnectionManager |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10448](https://issues.apache.org/jira/browse/HBASE-10448) | ZKUtil create and watch methods don't set watch in some cases |  Major | Zookeeper | Jerry He | Jerry He |
| [HBASE-10442](https://issues.apache.org/jira/browse/HBASE-10442) | prepareDelete() isn't called before doPreMutationHook for a row deletion case |  Critical | Coprocessors | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10429](https://issues.apache.org/jira/browse/HBASE-10429) | Make Visibility Controller to throw a better msg if it is of type RegionServerCoprocessor |  Minor | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10422](https://issues.apache.org/jira/browse/HBASE-10422) | ZeroCopyLiteralByteString.zeroCopyGetBytes has an unusable prototype and conflicts with AsyncHBase |  Major | Client, Protobufs | Benoit Sigoure | Benoit Sigoure |
| [HBASE-10401](https://issues.apache.org/jira/browse/HBASE-10401) | [hbck] perform overlap group merges in parallel |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10400](https://issues.apache.org/jira/browse/HBASE-10400) | [hbck] Continue if region dir missing on region merge attempt |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10370](https://issues.apache.org/jira/browse/HBASE-10370) | Compaction in out-of-date Store causes region split failure |  Critical | Compaction | Liu Shaohui | Liu Shaohui |
| [HBASE-10366](https://issues.apache.org/jira/browse/HBASE-10366) | 0.94 filterRow() may be skipped in 0.96(or onwards) code |  Critical | Filters | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10338](https://issues.apache.org/jira/browse/HBASE-10338) | Region server fails to start with AccessController coprocessor if installed into RegionServerCoprocessorHost |  Minor | Coprocessors, regionserver | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-10337](https://issues.apache.org/jira/browse/HBASE-10337) | HTable.get() uninteruptible |  Major | Client | Jonathan Leech | Nicolas Liochon |
| [HBASE-10335](https://issues.apache.org/jira/browse/HBASE-10335) | AuthFailedException in zookeeper may block replication forever |  Blocker | Replication, security | Liu Shaohui | Liu Shaohui |
| [HBASE-10329](https://issues.apache.org/jira/browse/HBASE-10329) | Fail the writes rather than proceeding silently to prevent data loss when AsyncSyncer encounters null writer and its writes aren't synced by other Asyncer |  Critical | regionserver, wal | Honghua Feng | Honghua Feng |
| [HBASE-10326](https://issues.apache.org/jira/browse/HBASE-10326) | Super user should be able scan all the cells irrespective of the visibility labels |  Critical | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10320](https://issues.apache.org/jira/browse/HBASE-10320) | Avoid ArrayList.iterator() ExplicitColumnTracker |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10318](https://issues.apache.org/jira/browse/HBASE-10318) | generate-hadoopX-poms.sh expects the version to have one extra '-' |  Major | build | Raja Aluri | Raja Aluri |
| [HBASE-10315](https://issues.apache.org/jira/browse/HBASE-10315) | Canary shouldn't exit with 3 if there is no master running. |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-10310](https://issues.apache.org/jira/browse/HBASE-10310) | ZNodeCleaner session expired for /hbase/master |  Major | master | Samir Ahmic | Samir Ahmic |
| [HBASE-10304](https://issues.apache.org/jira/browse/HBASE-10304) | Running an hbase job jar: IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString |  Blocker | documentation, mapreduce | stack | Nick Dimiduk |
| [HBASE-10272](https://issues.apache.org/jira/browse/HBASE-10272) | Cluster becomes nonoperational if the node hosting the active Master AND ROOT/META table goes offline |  Critical | IPC/RPC | Aditya Kishore | Aditya Kishore |
| [HBASE-10264](https://issues.apache.org/jira/browse/HBASE-10264) | [MapReduce]: CompactionTool in mapred mode is missing classes in its classpath |  Major | Compaction, mapreduce | Aleksandr Shulman | Himanshu Vashishtha |
| [HBASE-10260](https://issues.apache.org/jira/browse/HBASE-10260) | Canary Doesn't pick up Configuration properly. |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-10232](https://issues.apache.org/jira/browse/HBASE-10232) | Remove native profile from hbase-shell |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-10226](https://issues.apache.org/jira/browse/HBASE-10226) | [AccessController] Namespace grants not always checked |  Critical | security | Andrew Purtell | Andrew Purtell |
| [HBASE-10225](https://issues.apache.org/jira/browse/HBASE-10225) | Bug in calls to RegionObsever.postScannerFilterRow |  Major | Coprocessors | Lars Hofhansl | Anoop Sam John |
| [HBASE-10215](https://issues.apache.org/jira/browse/HBASE-10215) | TableNotFoundException should be thrown after removing stale znode in ETH |  Minor | master | rajeshbabu | rajeshbabu |
| [HBASE-10198](https://issues.apache.org/jira/browse/HBASE-10198) | Add a note on how to Import 0.94 exported file to a 0.96 cluster or onwards |  Minor | documentation | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10194](https://issues.apache.org/jira/browse/HBASE-10194) | [Usability]: Instructions in CompactionTool no longer accurate because of namespaces |  Minor | Compaction, util | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10193](https://issues.apache.org/jira/browse/HBASE-10193) | Cleanup HRegion if one of the store fails to open at region initialization |  Critical | regionserver | Aditya Kishore | Aditya Kishore |
| [HBASE-10186](https://issues.apache.org/jira/browse/HBASE-10186) | region\_mover.rb broken because ServerName constructor is changed to private |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10179](https://issues.apache.org/jira/browse/HBASE-10179) | HRegionServer underreports readRequestCounts by 1 under certain conditions |  Minor | metrics | Perry Trolard | Perry Trolard |
| [HBASE-10163](https://issues.apache.org/jira/browse/HBASE-10163) | Example Thrift DemoClient is flaky |  Trivial | Thrift | Enis Soztutar | Enis Soztutar |
| [HBASE-10155](https://issues.apache.org/jira/browse/HBASE-10155) | HRegion isRecovering state is wrongly coming in postOpen hook |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-10137](https://issues.apache.org/jira/browse/HBASE-10137) | GeneralBulkAssigner with retain assignment plan can be used in EnableTableHandler to bulk assign the regions |  Major | Region Assignment | rajeshbabu | rajeshbabu |
| [HBASE-10120](https://issues.apache.org/jira/browse/HBASE-10120) | start-hbase.sh doesn't respect --config in non-distributed mode |  Trivial | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10112](https://issues.apache.org/jira/browse/HBASE-10112) | Hbase rest query params for maxVersions and maxValues are not parsed |  Minor | REST | Koert Kuipers | Jean-Marc Spaggiari |
| [HBASE-10111](https://issues.apache.org/jira/browse/HBASE-10111) | Verify that a snapshot is not corrupted before restoring it |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10108](https://issues.apache.org/jira/browse/HBASE-10108) | NullPointerException thrown while use Canary with '-regionserver' option |  Minor | monitoring | takeshi.miao | takeshi.miao |
| [HBASE-10098](https://issues.apache.org/jira/browse/HBASE-10098) | [WINDOWS] pass in native library directory from hadoop for unit tests |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10087](https://issues.apache.org/jira/browse/HBASE-10087) | Store should be locked during a memstore snapshot |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10085](https://issues.apache.org/jira/browse/HBASE-10085) | Some regions aren't re-assigned after a cluster restarts |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10084](https://issues.apache.org/jira/browse/HBASE-10084) | [WINDOWS] bin\hbase.cmd should allow whitespaces in java.library.path and classpath |  Major | scripts | Enis Soztutar | Enis Soztutar |
| [HBASE-10079](https://issues.apache.org/jira/browse/HBASE-10079) | Race in TableName cache |  Blocker | regionserver | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10073](https://issues.apache.org/jira/browse/HBASE-10073) | Revert HBASE-9718 (Add a test scope dependency on org.slf4j:slf4j-api to hbase-client) |  Major | Zookeeper | Aleksandr Shulman | Andrew Purtell |
| [HBASE-10061](https://issues.apache.org/jira/browse/HBASE-10061) | TableMapReduceUtil.findOrCreateJar calls updateMap(null, ) resulting in thrown NPE |  Minor | mapreduce | Amit Sela | Amit Sela |
| [HBASE-10056](https://issues.apache.org/jira/browse/HBASE-10056) | region\_status.rb not adopted to 0.96 api |  Minor | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10051](https://issues.apache.org/jira/browse/HBASE-10051) | rolling-restart.sh have old value of "zookeeper.znode.unassiged" config causing infinite loop |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10050](https://issues.apache.org/jira/browse/HBASE-10050) | graceful\_stop.sh syntax error |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10046](https://issues.apache.org/jira/browse/HBASE-10046) | Unmonitored HBase service could accumulate Status objects and OOM |  Major | monitoring | Aditya Kishore | Aditya Kishore |
| [HBASE-10029](https://issues.apache.org/jira/browse/HBASE-10029) | Proxy created by HFileSystem#createReorderingProxy() should properly close when connecting to HA namenode |  Major | hadoop2 | Henry Hung | Ted Yu |
| [HBASE-10026](https://issues.apache.org/jira/browse/HBASE-10026) | HBaseAdmin#createTable could fail if region splits too fast |  Minor | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10014](https://issues.apache.org/jira/browse/HBASE-10014) | HRegion#doMiniBatchMutation rollbacks the memstore even if there is nothing to rollback. |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10013](https://issues.apache.org/jira/browse/HBASE-10013) | Enhance the message about ZK when there is an exception |  Trivial | Zookeeper | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10012](https://issues.apache.org/jira/browse/HBASE-10012) | Hide ServerName constructor |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10011](https://issues.apache.org/jira/browse/HBASE-10011) | Fix some findbugs in the client |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10004](https://issues.apache.org/jira/browse/HBASE-10004) | Some fixes for scoping sequence Ids to region level |  Major | wal | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9995](https://issues.apache.org/jira/browse/HBASE-9995) | Not stopping ReplicationSink when using custom implementation for the ReplicationSink |  Minor | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-9992](https://issues.apache.org/jira/browse/HBASE-9992) | [hbck] Refactor so that arbitrary -D cmdline options are included |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9989](https://issues.apache.org/jira/browse/HBASE-9989) | Add a test on get in TestClientNoCluster |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9988](https://issues.apache.org/jira/browse/HBASE-9988) | DOn't use HRI#getEncodedName in the client |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9987](https://issues.apache.org/jira/browse/HBASE-9987) | Remove some synchronisation points in HConnectionManager |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9983](https://issues.apache.org/jira/browse/HBASE-9983) | Lower the memory footprint of HRegionLocation |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9982](https://issues.apache.org/jira/browse/HBASE-9982) | TestClientNoCluster should use random numbers |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9978](https://issues.apache.org/jira/browse/HBASE-9978) | The client retries even if the method is not present on the server |  Trivial | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9976](https://issues.apache.org/jira/browse/HBASE-9976) | Don't create duplicated TableName objects |  Major | Client, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9975](https://issues.apache.org/jira/browse/HBASE-9975) | Not starting ReplicationSink when using custom implementation for the ReplicationSink. |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-9973](https://issues.apache.org/jira/browse/HBASE-9973) | [ACL]: Users with 'Admin' ACL permission will lose permissions after upgrade to 0.96.x from 0.94.x or 0.92.x |  Major | migration, security | Aleksandr Shulman | Himanshu Vashishtha |
| [HBASE-9961](https://issues.apache.org/jira/browse/HBASE-9961) | [WINDOWS] Multicast should bind to local address |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-9959](https://issues.apache.org/jira/browse/HBASE-9959) | Remove some array copy - server side |  Major | Protobufs, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9958](https://issues.apache.org/jira/browse/HBASE-9958) | Remove some array copy, change lock scope in locateRegion |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9949](https://issues.apache.org/jira/browse/HBASE-9949) | Fix the race condition between Compaction and StoreScanner.init |  Minor | Scanners | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-9915](https://issues.apache.org/jira/browse/HBASE-9915) | Performance: isSeeked() in EncodedScannerV2 always returns false |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9906](https://issues.apache.org/jira/browse/HBASE-9906) | Restore snapshot fails to restore the meta edits sporadically |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-9903](https://issues.apache.org/jira/browse/HBASE-9903) | Remove the jamon generated classes from the findbugs analysis |  Major | build | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9902](https://issues.apache.org/jira/browse/HBASE-9902) | Region Server is starting normally even if clock skew is more than default 30 seconds(or any configured). -\> Regionserver node time is greater than master node time |  Major | master | Kashif | Kashif |
| [HBASE-9901](https://issues.apache.org/jira/browse/HBASE-9901) | Add a toString in HTable, fix a log in AssignmentManager |  Trivial | Client, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9895](https://issues.apache.org/jira/browse/HBASE-9895) | 0.96 Import utility can't import an exported file from 0.94 |  Major | mapreduce | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9893](https://issues.apache.org/jira/browse/HBASE-9893) | Incorrect assert condition in OrderedBytes decoding |  Minor | Client | He Liangliang | Nick Dimiduk |
| [HBASE-9890](https://issues.apache.org/jira/browse/HBASE-9890) | MR jobs are not working if started by a delegated user |  Major | mapreduce, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9886](https://issues.apache.org/jira/browse/HBASE-9886) | Optimize ServerName#compareTo |  Trivial | Client, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9885](https://issues.apache.org/jira/browse/HBASE-9885) | Avoid some Result creation in protobuf conversions |  Major | Client, Protobufs, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9874](https://issues.apache.org/jira/browse/HBASE-9874) | Append and Increment operation drops Tags |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-9871](https://issues.apache.org/jira/browse/HBASE-9871) | PB issue : Increment attributes are not getting passed to server |  Major | Protobufs | Anoop Sam John | Anoop Sam John |
| [HBASE-9869](https://issues.apache.org/jira/browse/HBASE-9869) | Optimize HConnectionManager#getCachedLocation |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9868](https://issues.apache.org/jira/browse/HBASE-9868) | Remove some array copy, especially around protobuf |  Major | Client, Protobufs | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9862](https://issues.apache.org/jira/browse/HBASE-9862) | manage error per server and per region in the protobuffed client |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9859](https://issues.apache.org/jira/browse/HBASE-9859) | Canary Shouldn't go off if the table being read from is disabled |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-9850](https://issues.apache.org/jira/browse/HBASE-9850) | Issues with UI for table compact/split operation completion. After split/compaction operation using UI, the page is not automatically redirecting back using IE8/Firefox. |  Major | UI | Kashif | Kashif |
| [HBASE-9849](https://issues.apache.org/jira/browse/HBASE-9849) | [REST] Forbidden schema delete in read only mode |  Major | REST | Julian Zhou | Julian Zhou |
| [HBASE-9848](https://issues.apache.org/jira/browse/HBASE-9848) | Make regionserver Canary exit with different exit codes |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-9843](https://issues.apache.org/jira/browse/HBASE-9843) | Various fixes in client code |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9822](https://issues.apache.org/jira/browse/HBASE-9822) | IntegrationTestLazyCfLoading failed occasionally in a secure enviroment |  Trivial | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9798](https://issues.apache.org/jira/browse/HBASE-9798) | Include dependency hamcrest-core |  Major | build, test | Enis Soztutar | Enis Soztutar |
| [HBASE-9786](https://issues.apache.org/jira/browse/HBASE-9786) | [hbck]: hbck -metaonly incorrectly reports inconsistent regions after HBASE-9698 fix |  Major | hbck | Aleksandr Shulman | Matteo Bertozzi |
| [HBASE-9776](https://issues.apache.org/jira/browse/HBASE-9776) | Test Load And Verify Fails with TableNotEnabledException |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9770](https://issues.apache.org/jira/browse/HBASE-9770) | HFilePerformanceEvaluation is using the wrong Comparator |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9761](https://issues.apache.org/jira/browse/HBASE-9761) | Put copy constructor should clone the operation attributes also |  Minor | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-9759](https://issues.apache.org/jira/browse/HBASE-9759) | Prevent random number collision in IntegrationTestBulkLoad |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-9755](https://issues.apache.org/jira/browse/HBASE-9755) | Cannot run classes in hbase-server tests jar from command line |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-9747](https://issues.apache.org/jira/browse/HBASE-9747) | PrefixFilter with OR condition gives wrong results |  Major | Filters | Deepa Remesh | Aditya Kishore |
| [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix |  Major | scripts | Aditya Kishore | Aditya Kishore |
| [HBASE-9743](https://issues.apache.org/jira/browse/HBASE-9743) | RollingBatchRestartRsAction aborts if timeout |  Major | test | stack | stack |
| [HBASE-9737](https://issues.apache.org/jira/browse/HBASE-9737) | Corrupt HFile cause resource leak leading to Region Server OOM |  Critical | HFile | Aditya Kishore | Aditya Kishore |
| [HBASE-9735](https://issues.apache.org/jira/browse/HBASE-9735) | region\_mover.rb uses the removed HConnection.getZooKeeperWatcher() method |  Major | scripts | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9728](https://issues.apache.org/jira/browse/HBASE-9728) | generate-hadoopX-poms.sh examples is wrong. |  Trivial | build | Elliott Clark | Elliott Clark |
| [HBASE-9727](https://issues.apache.org/jira/browse/HBASE-9727) | HBase Rest Server - DELETE scanner operation is a no-op |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-9723](https://issues.apache.org/jira/browse/HBASE-9723) | TestAsyncProcess#testFailAndSuccess & testThreadCreation are flaky on SUSE |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9718](https://issues.apache.org/jira/browse/HBASE-9718) | Add a test scope dependency on org.slf4j:slf4j-api to hbase-client |  Minor | Client | Andrew Purtell | Andrew Purtell |
| [HBASE-9710](https://issues.apache.org/jira/browse/HBASE-9710) | Use the region name, not the encoded name, when region is not on current server |  Minor | regionserver | Benoit Sigoure | Benoit Sigoure |
| [HBASE-9706](https://issues.apache.org/jira/browse/HBASE-9706) | Improve detection of secure ZooKeeper |  Major | Client | Eric Yang | Eric Yang |
| [HBASE-9700](https://issues.apache.org/jira/browse/HBASE-9700) | remove htrace-zipkin from the runtime dependencies |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-9699](https://issues.apache.org/jira/browse/HBASE-9699) | For Downstreamers using HBaseTestingUtility is hard. |  Major | build, test | Elliott Clark | Elliott Clark |
| [HBASE-9696](https://issues.apache.org/jira/browse/HBASE-9696) | Master recovery ignores online merge znode |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9685](https://issues.apache.org/jira/browse/HBASE-9685) | IntegrationTestMTTR should stop on RetriesExhaustedException |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9676](https://issues.apache.org/jira/browse/HBASE-9676) | AsyncProcess can create more tasks than hbase.client.max.total.tasks |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9663](https://issues.apache.org/jira/browse/HBASE-9663) | PerformanceEvaluation does not properly honor specified table name parameter |  Major | Client, test | Aleksandr Shulman | Matteo Bertozzi |
| [HBASE-9662](https://issues.apache.org/jira/browse/HBASE-9662) | PerformanceEvaluation input do not handle tags properties |  Major | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9660](https://issues.apache.org/jira/browse/HBASE-9660) | Release source tarball should contain ./dev-support contents. |  Critical | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9659](https://issues.apache.org/jira/browse/HBASE-9659) | some integration tests can no longer be run using maven |  Major | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9653](https://issues.apache.org/jira/browse/HBASE-9653) | Add compaction metrics to trunk |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-9650](https://issues.apache.org/jira/browse/HBASE-9650) | Per region metrics are not showing up for system tables. |  Critical | metrics | Elliott Clark | Elliott Clark |
| [HBASE-9649](https://issues.apache.org/jira/browse/HBASE-9649) | HFilePrettyPrinter should not throw a NPE if FirstKey or LastKey is null. |  Major | util | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9647](https://issues.apache.org/jira/browse/HBASE-9647) | Add a test in TestAsyncProcess to check the number of threads created |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9639](https://issues.apache.org/jira/browse/HBASE-9639) | SecureBulkLoad dispatches file load requests to all Regions |  Major | Client, Coprocessors | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9633](https://issues.apache.org/jira/browse/HBASE-9633) | Partial reverse of HBASE-9533 |  Major | build, Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9632](https://issues.apache.org/jira/browse/HBASE-9632) | Put the shell in a maven sub module (hbase-shell) instead of hbase-server |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9609](https://issues.apache.org/jira/browse/HBASE-9609) | AsyncProcess doesn't increase all the counters when trying to limit the per region flow. |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9603](https://issues.apache.org/jira/browse/HBASE-9603) | IsRestoreSnapshotDoneResponse has wrong default causing restoreSnapshot() to be async |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9597](https://issues.apache.org/jira/browse/HBASE-9597) | Create hbase-thrift module |  Major | build, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-9579](https://issues.apache.org/jira/browse/HBASE-9579) | Sanity check visiblity and audience for server-side modules. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9569](https://issues.apache.org/jira/browse/HBASE-9569) | TestHLog is broken |  Major | test | stack | stack |
| [HBASE-9565](https://issues.apache.org/jira/browse/HBASE-9565) | LocalityRegionPicker was mistakenly commented out |  Major | Balancer | Elliott Clark | Elliott Clark |
| [HBASE-9561](https://issues.apache.org/jira/browse/HBASE-9561) | hbase-server-tests.jar contains a test mapred-site.xml |  Blocker | build, mapreduce | Elliott Clark | Elliott Clark |
| [HBASE-9555](https://issues.apache.org/jira/browse/HBASE-9555) | Reset loadbalancer back to StochasticLoadBalancer |  Critical | Balancer | Elliott Clark | stack |
| [HBASE-9550](https://issues.apache.org/jira/browse/HBASE-9550) | IntegrationTestBigLinkedList used to be able to run on pseudo-distributed clusters |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-9549](https://issues.apache.org/jira/browse/HBASE-9549) | KeyValue#parseColumn(byte[]) does not handle empty qualifier |  Major | mapreduce, REST, Thrift, util | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9548](https://issues.apache.org/jira/browse/HBASE-9548) | Cleanup SnapshotTestingUtils |  Trivial | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9539](https://issues.apache.org/jira/browse/HBASE-9539) | Handle post namespace snapshot files  when checking for HFile V1 |  Major | migration | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9536](https://issues.apache.org/jira/browse/HBASE-9536) | Fix minor javadoc warnings |  Major | documentation | stack | stack |
| [HBASE-9533](https://issues.apache.org/jira/browse/HBASE-9533) | List of dependency jars for MR jobs is hard-coded and does not include netty, breaking MRv1 jobs |  Blocker | mapreduce | Aleksandr Shulman | Matteo Bertozzi |
| [HBASE-9521](https://issues.apache.org/jira/browse/HBASE-9521) | clean clearBufferOnFail behavior and deprecate it |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9519](https://issues.apache.org/jira/browse/HBASE-9519) | fix NPE in EncodedScannerV2.getFirstKeyInBlock() |  Major | HFile | Liang Xie | Liang Xie |
| [HBASE-9514](https://issues.apache.org/jira/browse/HBASE-9514) | Prevent region from assigning before log splitting is done |  Blocker | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9512](https://issues.apache.org/jira/browse/HBASE-9512) | Regions can't get out InRecovery state sometimes when turn off distributeLogReplay and restart a cluster |  Minor | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9510](https://issues.apache.org/jira/browse/HBASE-9510) | Namespace operations should throw clean exceptions |  Major | master | Enis Soztutar | Enis Soztutar |
| [HBASE-9508](https://issues.apache.org/jira/browse/HBASE-9508) | Restore some API mistakenly removed in client, mapred\*, and common |  Critical | Usability | stack | stack |
| [HBASE-9502](https://issues.apache.org/jira/browse/HBASE-9502) | HStore.seekToScanner should handle magic value |  Major | regionserver, Scanners | Liang Xie | Liang Xie |
| [HBASE-9498](https://issues.apache.org/jira/browse/HBASE-9498) | NPE in HBaseAdmin if master not running |  Major | Admin | stack | stack |
| [HBASE-9497](https://issues.apache.org/jira/browse/HBASE-9497) | Old .META. .tableinfo file kills HMaster |  Major | master, migration | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9492](https://issues.apache.org/jira/browse/HBASE-9492) | hdfs-site.xml is not excluded from the it-test jar |  Major | build | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9486](https://issues.apache.org/jira/browse/HBASE-9486) | NPE in HTable.close() with AsyncProcess |  Critical | Client | Enis Soztutar | Nicolas Liochon |
| [HBASE-9485](https://issues.apache.org/jira/browse/HBASE-9485) | TableOutputCommitter should implement recovery if we don't want jobs to start from 0 on RM restart |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-9482](https://issues.apache.org/jira/browse/HBASE-9482) | Do not enforce secure Hadoop for secure HBase |  Major | security | Aditya Kishore | Aditya Kishore |
| [HBASE-9476](https://issues.apache.org/jira/browse/HBASE-9476) | Yet more master log cleanup |  Major | Usability | stack | stack |
| [HBASE-9475](https://issues.apache.org/jira/browse/HBASE-9475) | Fix pom warnings found by new m2eclipse |  Major | build | stack | stack |
| [HBASE-9474](https://issues.apache.org/jira/browse/HBASE-9474) | Cleanup of hbase script usage |  Major | scripts | stack | stack |
| [HBASE-9471](https://issues.apache.org/jira/browse/HBASE-9471) | htrace synchronized on getInstance |  Minor | regionserver | Nicolas Liochon | Elliott Clark |
| [HBASE-9457](https://issues.apache.org/jira/browse/HBASE-9457) | Master could fail start if region server with system table is down |  Critical | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9453](https://issues.apache.org/jira/browse/HBASE-9453) | make dev-support/generate-hadoopX-poms.sh have exec perms. |  Minor | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9452](https://issues.apache.org/jira/browse/HBASE-9452) | Simplify the configuration of the multicast notifier |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9446](https://issues.apache.org/jira/browse/HBASE-9446) | saveVersion.sh spit pushd: not found popd: not found |  Minor | build | Jimmy Xiang | Elliott Clark |
| [HBASE-9439](https://issues.apache.org/jira/browse/HBASE-9439) | shell command list shows something not meaningful |  Minor | shell | Jimmy Xiang | Jonathan Hsieh |
| [HBASE-9435](https://issues.apache.org/jira/browse/HBASE-9435) | Fix jersey serialization/deserialization of json objects |  Blocker | REST | Francis Liu | Francis Liu |
| [HBASE-9434](https://issues.apache.org/jira/browse/HBASE-9434) | hbck tries to sideline file to root dir |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9433](https://issues.apache.org/jira/browse/HBASE-9433) | OpenRegionHandler uses different assignment timeout |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9423](https://issues.apache.org/jira/browse/HBASE-9423) | Log splitting should not start till HDFS out of safe mode |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9419](https://issues.apache.org/jira/browse/HBASE-9419) | Add more informative client column to Integration Test Linked List |  Minor | test | Elliott Clark | Elliott Clark |
| [HBASE-9413](https://issues.apache.org/jira/browse/HBASE-9413) | WebUI says ".META." table but table got renames to "hbase:meta". Meed to update the UI. |  Critical | UI | Jean-Marc Spaggiari | stack |
| [HBASE-9412](https://issues.apache.org/jira/browse/HBASE-9412) | Startup scripts create 2 .out files. |  Minor | scripts | Jean-Marc Spaggiari | stack |
| [HBASE-9400](https://issues.apache.org/jira/browse/HBASE-9400) | [UI] Catalog tables section isn't aligned |  Minor | UI | Jimmy Xiang | Elliott Clark |
| [HBASE-9390](https://issues.apache.org/jira/browse/HBASE-9390) | coprocessors observers are not called during a recovery with the new log replay algorithm |  Major | Coprocessors, MTTR | Nicolas Liochon | Jeffrey Zhong |
| [HBASE-9387](https://issues.apache.org/jira/browse/HBASE-9387) | Region could get lost during assignment |  Critical | Region Assignment | Ted Yu | Ted Yu |
| [HBASE-9380](https://issues.apache.org/jira/browse/HBASE-9380) | StoreFile.Reader is not being closed on memstore flush |  Major | regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-9375](https://issues.apache.org/jira/browse/HBASE-9375) | [REST] Querying row data gives all the available versions of a column |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9364](https://issues.apache.org/jira/browse/HBASE-9364) | Get request with multiple columns returns partial results |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9346](https://issues.apache.org/jira/browse/HBASE-9346) | HBCK should provide an option to check if regions boundaries are the same in META and in stores. |  Major | hbck, Operability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9340](https://issues.apache.org/jira/browse/HBASE-9340) | revoke 'user' throws ArrayIndexOutOfBoundsException |  Major | security, shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9338](https://issues.apache.org/jira/browse/HBASE-9338) | Test Big Linked List fails on Hadoop 2.1.0 |  Blocker | test | Elliott Clark | Elliott Clark |
| [HBASE-9337](https://issues.apache.org/jira/browse/HBASE-9337) | shell 'user\_permission' throws no method 'toStringBinary' for (o.a.h.h.TableName) |  Major | security, shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9329](https://issues.apache.org/jira/browse/HBASE-9329) | SnapshotManager should check for directory existance before throwing a warning. |  Trivial | snapshots | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9323](https://issues.apache.org/jira/browse/HBASE-9323) | TestHRegionOnCluster fails |  Major | test | stack | stack |
| [HBASE-9320](https://issues.apache.org/jira/browse/HBASE-9320) | Up timeouts on NamespaceUpgrades timeouts |  Major | test | stack | stack |
| [HBASE-9310](https://issues.apache.org/jira/browse/HBASE-9310) | Remove slop for Stochastic load balancer |  Major | Balancer | Elliott Clark | Elliott Clark |
| [HBASE-9296](https://issues.apache.org/jira/browse/HBASE-9296) | Update to bootstrap 3.0 |  Minor | UI | Elliott Clark | Elliott Clark |
| [HBASE-9290](https://issues.apache.org/jira/browse/HBASE-9290) | Add logging in IntegrationTestBigLinkedList Verify reduce phase |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-9289](https://issues.apache.org/jira/browse/HBASE-9289) | hbase-assembly pom should use project.parent.basedir |  Minor | build | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9278](https://issues.apache.org/jira/browse/HBASE-9278) | Reading Pre-namespace meta table edits kills the reader |  Critical | migration, wal | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9274](https://issues.apache.org/jira/browse/HBASE-9274) | After HBASE-8408 applied, temporary test files are being left in /tmp/hbase-\<user\> |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9271](https://issues.apache.org/jira/browse/HBASE-9271) | Doc the major differences between 0.94 and 0.96; a distillation of release notes for those w/ limited attention |  Major | documentation | stack | stack |
| [HBASE-9255](https://issues.apache.org/jira/browse/HBASE-9255) | TestAsyncProcess#testErrorsServers is flaky on suse linux |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9253](https://issues.apache.org/jira/browse/HBASE-9253) | Clean up IT test code |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-9237](https://issues.apache.org/jira/browse/HBASE-9237) | Integration test cleanup after ChaosMonkey refactor |  Critical | test | Elliott Clark | Elliott Clark |
| [HBASE-9233](https://issues.apache.org/jira/browse/HBASE-9233) | isTableAvailable() may be stuck if an offline parent was never assigned |  Critical | Client, Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9232](https://issues.apache.org/jira/browse/HBASE-9232) | Fix javadoc warning and a few findbugs items. |  Major | test | stack | stack |
| [HBASE-9224](https://issues.apache.org/jira/browse/HBASE-9224) | Print out name of the method we do not support rather than throw NPE |  Major | IPC/RPC | stack | stack |
| [HBASE-9211](https://issues.apache.org/jira/browse/HBASE-9211) | "ERROR: undefined method `message' for nil:NilClass" in the shell on error |  Major | shell | Jean-Daniel Cryans | Ted Yu |
| [HBASE-9204](https://issues.apache.org/jira/browse/HBASE-9204) | An Offline SplitParent Region can be assigned breaking split references |  Major | Region Assignment | Matteo Bertozzi | Jimmy Xiang |
| [HBASE-9197](https://issues.apache.org/jira/browse/HBASE-9197) | TestAdmin#testShouldCloseTheRegionBasedOnTheEncodedRegionName shuts down the namespaces table and never starts it up again |  Major | test | stack | stack |
| [HBASE-9195](https://issues.apache.org/jira/browse/HBASE-9195) | Fix TestFSHDFSUtils against java7 test re-ordering |  Minor | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9192](https://issues.apache.org/jira/browse/HBASE-9192) | IntegrationTestBigLinkedListWithChaosMonkey never exits if there is an error |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-9185](https://issues.apache.org/jira/browse/HBASE-9185) | mvn site target fails when building with Maven 3.1 |  Minor | build | Steve Loughran | stack |
| [HBASE-9184](https://issues.apache.org/jira/browse/HBASE-9184) | Ignore zk assign event if region is not known in transition |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9181](https://issues.apache.org/jira/browse/HBASE-9181) | Fix javadoc warnings introduce by namespaces |  Major | documentation | stack | stack |
| [HBASE-9174](https://issues.apache.org/jira/browse/HBASE-9174) | javac hangs compiling hbase-example module since namespaces went in |  Major | build | stack | stack |
| [HBASE-9173](https://issues.apache.org/jira/browse/HBASE-9173) | replication\_admin#get\_peer\_state(id) in ruby script pointing to undefined method `getPeerState' |  Critical | scripts | rajeshbabu | Jean-Daniel Cryans |
| [HBASE-9156](https://issues.apache.org/jira/browse/HBASE-9156) | 2000ms timeout for some client calls |  Blocker | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9152](https://issues.apache.org/jira/browse/HBASE-9152) | Not able to find HMaster and HRegionServer processes with grep by process name on ps result because of large classpath as argument. |  Critical | scripts | rajeshbabu | rajeshbabu |
| [HBASE-9151](https://issues.apache.org/jira/browse/HBASE-9151) | HBCK cannot fix when meta server znode deleted, this can happen if all region servers stopped and there are no logs to split. |  Major | hbck | rajeshbabu | rajeshbabu |
| [HBASE-9146](https://issues.apache.org/jira/browse/HBASE-9146) | TestHTablePool hangs when run as part of runMediumTests profile |  Major | test | Rajesh Venkatachalam | Rajesh Venkatachalam |
| [HBASE-9144](https://issues.apache.org/jira/browse/HBASE-9144) | Leases class has contention that's not needed |  Critical | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-9138](https://issues.apache.org/jira/browse/HBASE-9138) | getHaseIntegrationTestingUtility() is misspelled |  Trivial | test | chendihao | chendihao |
| [HBASE-9120](https://issues.apache.org/jira/browse/HBASE-9120) | ClassFinder logs errors that are not |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9097](https://issues.apache.org/jira/browse/HBASE-9097) | Set HBASE\_CLASSPATH before rest of the classpath |  Major | scripts | Jesse Yates | Jesse Yates |
| [HBASE-9092](https://issues.apache.org/jira/browse/HBASE-9092) | OpenRegion could be ignored by mistake |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9087](https://issues.apache.org/jira/browse/HBASE-9087) | Handlers being blocked during reads |  Major | Performance | Pablo Medina | Elliott Clark |
| [HBASE-9085](https://issues.apache.org/jira/browse/HBASE-9085) | Integration Tests fails because of bug in teardown phase where the cluster state is not being restored properly. |  Major | test | gautam | gautam |
| [HBASE-9079](https://issues.apache.org/jira/browse/HBASE-9079) | FilterList getNextKeyHint skips rows that should be included in the results |  Major | Filters | Viral Bajaria | Viral Bajaria |
| [HBASE-9060](https://issues.apache.org/jira/browse/HBASE-9060) | ExportSnapshot job fails if target path contains percentage character |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-9052](https://issues.apache.org/jira/browse/HBASE-9052) | Prevent split/merged region from assigning again |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9048](https://issues.apache.org/jira/browse/HBASE-9048) | HCM throws NullPointerException under load |  Minor | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9034](https://issues.apache.org/jira/browse/HBASE-9034) | hbase-daemon.sh swallows start up errors |  Major | scripts | Elliott Clark | Elliott Clark |
| [HBASE-9031](https://issues.apache.org/jira/browse/HBASE-9031) | ImmutableBytesWritable.toString() should downcast the bytes before converting to hex string |  Minor | io | Aditya Kishore | Aditya Kishore |
| [HBASE-9008](https://issues.apache.org/jira/browse/HBASE-9008) | Reenable TestReplicationKillSlaveRS.killOneSlaveRS |  Major | test | stack | Jean-Daniel Cryans |
| [HBASE-9006](https://issues.apache.org/jira/browse/HBASE-9006) | RPC code requires cellBlockCodecClass even though one is defined by default |  Minor | IPC/RPC | Benoit Sigoure | Benoit Sigoure |
| [HBASE-8998](https://issues.apache.org/jira/browse/HBASE-8998) | TestSnapshotCloneIndependence.testOnlineSnapshotMetadataChangesIndependent fails |  Major | test | stack | Matteo Bertozzi |
| [HBASE-8985](https://issues.apache.org/jira/browse/HBASE-8985) | Not enough logging in SplitLogManager |  Major | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8983](https://issues.apache.org/jira/browse/HBASE-8983) | HBaseConnection#deleteAllConnections does not always delete |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8982](https://issues.apache.org/jira/browse/HBASE-8982) | Useless logs in  ipc.RpcClient$Connection(584): Not able to close an output stream |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8981](https://issues.apache.org/jira/browse/HBASE-8981) | add a check on the ServerName parse |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8972](https://issues.apache.org/jira/browse/HBASE-8972) | TestCreateTableHandler.testMasterRestartAfterEnablingNodeIsCreated failed |  Major | test | stack | stack |
| [HBASE-8967](https://issues.apache.org/jira/browse/HBASE-8967) | Duplicate call to snapshotManager.stop() in HRegionServer |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-8955](https://issues.apache.org/jira/browse/HBASE-8955) | TestStochasticLoadBalancer timedout |  Major | test | stack | stack |
| [HBASE-8952](https://issues.apache.org/jira/browse/HBASE-8952) | Missing error handling can cause RegionServer RPC thread to busy loop forever |  Major | IPC/RPC | Benoit Sigoure | Benoit Sigoure |
| [HBASE-8933](https://issues.apache.org/jira/browse/HBASE-8933) | TestSplitTransactionOnCluster fails because "Region not moved off .META. server" |  Major | test | stack | stack |
| [HBASE-8930](https://issues.apache.org/jira/browse/HBASE-8930) | Filter evaluates KVs outside requested columns |  Critical | Filters | Federico Gaule | Vasu Mariyala |
| [HBASE-8924](https://issues.apache.org/jira/browse/HBASE-8924) | Master Can fail to come up after chaos monkey if the sleep time is too short. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8913](https://issues.apache.org/jira/browse/HBASE-8913) | Remove ".replogs" reference as we no longer use it |  Minor | master | Harsh J | Harsh J |
| [HBASE-8904](https://issues.apache.org/jira/browse/HBASE-8904) | Clean up IntegrationTestMTTR and add small features. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8902](https://issues.apache.org/jira/browse/HBASE-8902) | IntegrationTestBulkLoad takes way too long |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8899](https://issues.apache.org/jira/browse/HBASE-8899) | Could not open a region on a server where it is being closed |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8882](https://issues.apache.org/jira/browse/HBASE-8882) | Create an Integration Test to Test MTTR |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8880](https://issues.apache.org/jira/browse/HBASE-8880) | Integration Tests shouldn't set the number or reties. |  Major | Client, test | Elliott Clark | Elliott Clark |
| [HBASE-8879](https://issues.apache.org/jira/browse/HBASE-8879) | Client Scanner spams the logs if there are lots of scanners. |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-8877](https://issues.apache.org/jira/browse/HBASE-8877) | Reentrant row locks |  Major | Coprocessors, regionserver | Dave Latham | Dave Latham |
| [HBASE-8875](https://issues.apache.org/jira/browse/HBASE-8875) | incorrect javadoc for EXCLUDE\_FROM\_MINOR\_COMPACTION |  Trivial | Compaction | Liang Xie | Liang Xie |
| [HBASE-8874](https://issues.apache.org/jira/browse/HBASE-8874) | PutCombiner is skipping KeyValues while combining puts of same row during bulkload |  Critical | mapreduce | rajeshbabu | rajeshbabu |
| [HBASE-8871](https://issues.apache.org/jira/browse/HBASE-8871) | The region server can crash at startup |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8870](https://issues.apache.org/jira/browse/HBASE-8870) | Store.needsCompaction() should include minFilesToCompact |  Minor | Compaction | Liang Xie | Liang Xie |
| [HBASE-8869](https://issues.apache.org/jira/browse/HBASE-8869) | incorrect javadoc for CompactionRequest.compareTo() |  Trivial | Compaction, documentation | Liang Xie | Liang Xie |
| [HBASE-8867](https://issues.apache.org/jira/browse/HBASE-8867) | HLogUtils#getServerNameFromHLogDirectoryName does not take into account the -splitting extension |  Major | MTTR | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8854](https://issues.apache.org/jira/browse/HBASE-8854) | TestScannersFromClientSide.testScanBatch failed with 'There should have room before prefetching is submitted' |  Major | test | stack | stack |
| [HBASE-8853](https://issues.apache.org/jira/browse/HBASE-8853) | The client connection is not cut when receiving the failure notification |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8814](https://issues.apache.org/jira/browse/HBASE-8814) | Possible NPE in split if a region has empty store files. |  Major | regionserver | rajeshbabu | rajeshbabu |
| [HBASE-8811](https://issues.apache.org/jira/browse/HBASE-8811) | REST service ignores misspelled "check=" parameter, causing unexpected mutations |  Critical | REST | Chip Salzenberg | Chip Salzenberg |
| [HBASE-8799](https://issues.apache.org/jira/browse/HBASE-8799) | TestAccessController#testBulkLoad failing on trunk/0.95 |  Major | Coprocessors, security, test | Andrew Purtell | Andrew Purtell |
| [HBASE-8798](https://issues.apache.org/jira/browse/HBASE-8798) | Fix a minor bug in shell command with clone\_snapshot table error |  Minor | shell, snapshots | Jerry He | Ted Yu |
| [HBASE-8797](https://issues.apache.org/jira/browse/HBASE-8797) | Prevent merging regions from moving during online merge |  Major | regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8795](https://issues.apache.org/jira/browse/HBASE-8795) | bin/hbase zkcli cannot take arguments anymore |  Critical | scripts | Nicolas Liochon | Enis Soztutar |
| [HBASE-8794](https://issues.apache.org/jira/browse/HBASE-8794) | DependentColumnFilter.toString() throws NullPointerException |  Minor | Filters | Stefan Seelmann | Stefan Seelmann |
| [HBASE-8790](https://issues.apache.org/jira/browse/HBASE-8790) | NullPointerException thrown when stopping regionserver |  Major | regionserver | Xiong LIU | Liang Xie |
| [HBASE-8789](https://issues.apache.org/jira/browse/HBASE-8789) | Add max RPC version to meta-region-server zk node. |  Major | IPC/RPC, Zookeeper | Elliott Clark | Elliott Clark |
| [HBASE-8786](https://issues.apache.org/jira/browse/HBASE-8786) | Creating a table with a Bloom filter on the shell is broken. |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-8783](https://issues.apache.org/jira/browse/HBASE-8783) | RSSnapshotManager.ZKProcedureMemberRpcs may be initialized with the wrong server name |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8782](https://issues.apache.org/jira/browse/HBASE-8782) | Thrift2 can not parse values when using framed transport |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8780](https://issues.apache.org/jira/browse/HBASE-8780) | A column Family can have VERSIONS less than zero |  Trivial | Client | Demai Ni | Demai Ni |
| [HBASE-8760](https://issues.apache.org/jira/browse/HBASE-8760) | possible loss of data in snapshot taken after region split |  Major | snapshots | Jerry He | Matteo Bertozzi |
| [HBASE-8757](https://issues.apache.org/jira/browse/HBASE-8757) | ZK throws IllegalStateException |  Major | Zookeeper | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8750](https://issues.apache.org/jira/browse/HBASE-8750) | MetaServerShutdownHandler stucks if .META. assignment fails in previous attempt |  Major | MTTR | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8745](https://issues.apache.org/jira/browse/HBASE-8745) | Fix src assembly so includes top-level src dir |  Major | build | stack | stack |
| [HBASE-8742](https://issues.apache.org/jira/browse/HBASE-8742) | HTableDescriptor Properties not preserved when cloning |  Minor | snapshots | Micah Whitacre | Matteo Bertozzi |
| [HBASE-8741](https://issues.apache.org/jira/browse/HBASE-8741) | Scope sequenceid to the region rather than regionserver (WAS: Mutations on Regions in recovery mode might have same sequenceIDs) |  Major | MTTR | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8732](https://issues.apache.org/jira/browse/HBASE-8732) | HFileBlockDefaultEncodingContext isn't thread-safe but is used by all readers, breaks column encoding |  Critical | regionserver | Elliott Clark | Jean-Daniel Cryans |
| [HBASE-8729](https://issues.apache.org/jira/browse/HBASE-8729) | distributedLogReplay may hang during chained region server failure |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8711](https://issues.apache.org/jira/browse/HBASE-8711) | Requests count is completely off |  Major | UI | Jean-Daniel Cryans | James Kinley |
| [HBASE-8706](https://issues.apache.org/jira/browse/HBASE-8706) | Some improvement in snapshot |  Major | snapshots | binlijin | Matteo Bertozzi |
| [HBASE-8701](https://issues.apache.org/jira/browse/HBASE-8701) | distributedLogReplay need to apply wal edits in the receiving order of those edits |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8699](https://issues.apache.org/jira/browse/HBASE-8699) | Parameter to DistributedFileSystem#isFileClosed should be of type Path |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-8698](https://issues.apache.org/jira/browse/HBASE-8698) | potential thread creation in MetaScanner.metaScan |  Major | Client | Kireet Reddy | Lars Hofhansl |
| [HBASE-8695](https://issues.apache.org/jira/browse/HBASE-8695) | The HBase thrift service ignores XML configuration |  Major | Thrift | Brandon Forehand | Lars George |
| [HBASE-8689](https://issues.apache.org/jira/browse/HBASE-8689) | Cover all mutations rather than only Put while reporting for mutations not writing to WAL |  Major | metrics, regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8680](https://issues.apache.org/jira/browse/HBASE-8680) | distributedLogReplay performance regression |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8678](https://issues.apache.org/jira/browse/HBASE-8678) | Wrongly delete cells in some case which can not be deleted |  Major | REST | Eric Huang | Jean-Marc Spaggiari |
| [HBASE-8672](https://issues.apache.org/jira/browse/HBASE-8672) | Create an Integration test for Bulk Loads |  Major | regionserver, test | Elliott Clark | Elliott Clark |
| [HBASE-8667](https://issues.apache.org/jira/browse/HBASE-8667) | Master and Regionserver not able to communicate if both bound to different network interfaces on the same machine. |  Critical | IPC/RPC | rajeshbabu | rajeshbabu |
| [HBASE-8666](https://issues.apache.org/jira/browse/HBASE-8666) | META region isn't fully recovered during master initialization when META region recovery had chained failures |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8664](https://issues.apache.org/jira/browse/HBASE-8664) | Small fix ups for memory size outputs in UI |  Major | UI | stack | stack |
| [HBASE-8654](https://issues.apache.org/jira/browse/HBASE-8654) | src assembly does not include hbase-hadoop2-compat module |  Major | build | stack | stack |
| [HBASE-8652](https://issues.apache.org/jira/browse/HBASE-8652) | Number of compacting KVs is not reset at the end of compaction |  Minor | Compaction | Ted Yu | Gustavo Anatoly |
| [HBASE-8640](https://issues.apache.org/jira/browse/HBASE-8640) | ServerName in master may not initialize with the configured ipc address of hbase.master.ipc.address |  Major | master | rajeshbabu | rajeshbabu |
| [HBASE-8637](https://issues.apache.org/jira/browse/HBASE-8637) | IntegrationTestBigLinkedListWithChaosMonkey uses the wrong table name |  Major | test | Elliott Clark | Jeffrey Zhong |
| [HBASE-8631](https://issues.apache.org/jira/browse/HBASE-8631) | Meta Region First Recovery |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8627](https://issues.apache.org/jira/browse/HBASE-8627) | HBCK can not fix meta not assigned issue |  Major | hbck | Anoop Sam John | Anoop Sam John |
| [HBASE-8624](https://issues.apache.org/jira/browse/HBASE-8624) | bin/local-{master-backup\|regionservers}.sh doesn't take --config arg |  Major | Usability | stack | rajeshbabu |
| [HBASE-8615](https://issues.apache.org/jira/browse/HBASE-8615) | HLog Compression may fail due to Hadoop fs input stream returning partial bytes |  Critical | Replication | Ted Yu | Ted Yu |
| [HBASE-8606](https://issues.apache.org/jira/browse/HBASE-8606) | Meta scanner is not closed |  Trivial | Scanners | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8596](https://issues.apache.org/jira/browse/HBASE-8596) | [docs] Add docs about Region server "draining" mode |  Major | documentation, regionserver | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8570](https://issues.apache.org/jira/browse/HBASE-8570) | CompactSplitThread logs a CompactSplitThread$CompactionRunner but it does not have a toString |  Trivial | regionserver | Nicolas Liochon | samar |
| [HBASE-8568](https://issues.apache.org/jira/browse/HBASE-8568) | Test case TestDistributedLogSplitting#testWorkerAbort failed intermittently |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8567](https://issues.apache.org/jira/browse/HBASE-8567) | TestDistributedLogSplitting#testLogReplayForDisablingTable fails on hadoop 2.0 |  Major | MTTR | Ted Yu | Jeffrey Zhong |
| [HBASE-8565](https://issues.apache.org/jira/browse/HBASE-8565) | stop-hbase.sh clean up: backup master |  Minor | master, scripts | Jerry He | Jerry He |
| [HBASE-8555](https://issues.apache.org/jira/browse/HBASE-8555) | FilterList correctness may be affected by random ordering of sub-filter(list) |  Critical | Filters | Liang Xie | Liang Xie |
| [HBASE-8548](https://issues.apache.org/jira/browse/HBASE-8548) | postOpen hook called twice |  Major | regionserver | Roger Ruiz-Carrillo | Nicolas Liochon |
| [HBASE-8547](https://issues.apache.org/jira/browse/HBASE-8547) | Fix java.lang.RuntimeException: Cached an already cached block |  Major | io, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8545](https://issues.apache.org/jira/browse/HBASE-8545) | Meta stuck in transition when it is assigned to a just restarted dead region sever |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8540](https://issues.apache.org/jira/browse/HBASE-8540) | SnapshotFileCache logs too many times if snapshot dir doesn't exists |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8539](https://issues.apache.org/jira/browse/HBASE-8539) | Double(or tripple ...) ZooKeeper listeners of the same type when Master recovers from ZK SessionExpiredException |  Major | master | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8537](https://issues.apache.org/jira/browse/HBASE-8537) | Dead region server pulled in from ZK |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8532](https://issues.apache.org/jira/browse/HBASE-8532) | [Webui] Bootstrap based webui compatibility for IE and also fix some page format issues. |  Minor | UI | Julian Zhou | Julian Zhou |
| [HBASE-8531](https://issues.apache.org/jira/browse/HBASE-8531) | TestZooKeeper fails in trunk/0.95 builds |  Major | Zookeeper | stack | stack |
| [HBASE-8519](https://issues.apache.org/jira/browse/HBASE-8519) | Backup master will never come up if primary master dies during initialization |  Minor | master | Jerry He | Jerry He |
| [HBASE-8509](https://issues.apache.org/jira/browse/HBASE-8509) | ZKUtil#createWithParents won't set data during znode creation when parent folder doesn't exit |  Major | Zookeeper | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8505](https://issues.apache.org/jira/browse/HBASE-8505) | References to split daughters should not be deleted separately from parent META entry |  Major | regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8494](https://issues.apache.org/jira/browse/HBASE-8494) | TestRemoteAdmin#testClusterStatus should not assume 'requests' does not change |  Major | REST, test | Andrew Purtell | Andrew Purtell |
| [HBASE-8488](https://issues.apache.org/jira/browse/HBASE-8488) | HBase transitive dependencies not being pulled in when building apps like Flume which depend on HBase |  Blocker | build | Roshan Naik | stack |
| [HBASE-8472](https://issues.apache.org/jira/browse/HBASE-8472) | mvn -Dhadoop.profile=2.0 -Dhadoop-two.version=2.0.5-SNAPSHOT fails because of Undef Class error wrt o.a.h.IdGenerator |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8468](https://issues.apache.org/jira/browse/HBASE-8468) | IntegrationTestImportTsv fails on a cluster |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8466](https://issues.apache.org/jira/browse/HBASE-8466) | Netty messages in the logs |  Minor | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8462](https://issues.apache.org/jira/browse/HBASE-8462) | Custom timestamps should not be allowed to be negative |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-8451](https://issues.apache.org/jira/browse/HBASE-8451) | MetricsMBeanBase has concurrency issues in init |  Critical | metrics | Liang Xie | Liang Xie |
| [HBASE-8449](https://issues.apache.org/jira/browse/HBASE-8449) | Refactor recoverLease retries and pauses informed by findings over in hbase-8389 |  Critical | Filesystem Integration | stack | stack |
| [HBASE-8437](https://issues.apache.org/jira/browse/HBASE-8437) | Clean up tmp coprocessor jars |  Minor | Coprocessors | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8427](https://issues.apache.org/jira/browse/HBASE-8427) | Apache Rat is incorrectly excluding test source files |  Blocker | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8421](https://issues.apache.org/jira/browse/HBASE-8421) | hbase-0.95.0 tgz does not include lib/junit\*.jar |  Major | build | Jonathan Hsieh | stack |
| [HBASE-8413](https://issues.apache.org/jira/browse/HBASE-8413) | Snapshot verify region will always fail if the HFile has been archived |  Major | snapshots | Jerry He | Jerry He |
| [HBASE-8407](https://issues.apache.org/jira/browse/HBASE-8407) | Remove Async HBase from 0.95 and trunk. |  Major | Performance | Elliott Clark | Elliott Clark |
| [HBASE-8406](https://issues.apache.org/jira/browse/HBASE-8406) | Fix rat check and rat warning in trunk |  Major | build | stack | stack |
| [HBASE-8402](https://issues.apache.org/jira/browse/HBASE-8402) | ScanMetrics depends on number of rpc calls to the server. |  Minor | Client, metrics | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8396](https://issues.apache.org/jira/browse/HBASE-8396) | balancerSwitch making two zookeeper calls everytime. |  Major | Balancer | rajeshbabu | rajeshbabu |
| [HBASE-8393](https://issues.apache.org/jira/browse/HBASE-8393) | Testcase TestHeapSize#testMutations is wrong |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8380](https://issues.apache.org/jira/browse/HBASE-8380) | NPE in HBaseClient$Connection.readResponse |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8379](https://issues.apache.org/jira/browse/HBASE-8379) | bin/graceful\_stop.sh does not return the balancer to original state |  Major | scripts | Nick Dimiduk | Jean-Marc Spaggiari |
| [HBASE-8374](https://issues.apache.org/jira/browse/HBASE-8374) | NullPointerException when launching the balancer due to unknown region location |  Major | Balancer | Nicolas Liochon | Ted Yu |
| [HBASE-8373](https://issues.apache.org/jira/browse/HBASE-8373) | Update Rolling Restart documentation |  Minor | documentation | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8366](https://issues.apache.org/jira/browse/HBASE-8366) | HBaseServer logs the full query. |  Critical | regionserver | Nicolas Liochon | stack |
| [HBASE-8360](https://issues.apache.org/jira/browse/HBASE-8360) | In HBaseClient#cancelConnections we should close fully the connection |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8359](https://issues.apache.org/jira/browse/HBASE-8359) | Too much logs on HConnectionManager |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8355](https://issues.apache.org/jira/browse/HBASE-8355) | BaseRegionObserver#pre(Compact\|Flush\|Store)ScannerOpen returns null |  Major | Coprocessors | Andrew Purtell | Jesse Yates |
| [HBASE-8351](https://issues.apache.org/jira/browse/HBASE-8351) | Minor typo in Bytes IllegalArgumentException throw |  Trivial | util | Raymond Liu | Raymond Liu |
| [HBASE-8346](https://issues.apache.org/jira/browse/HBASE-8346) | Prefetching .META. rows in case only when useCache is set to true |  Minor | Client | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8336](https://issues.apache.org/jira/browse/HBASE-8336) | PooledHTable may be returned multiple times to the same pool |  Minor | Client | Nikolai Grigoriev | samar |
| [HBASE-8326](https://issues.apache.org/jira/browse/HBASE-8326) | mapreduce.TestTableInputFormatScan times out frequently |  Major | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8321](https://issues.apache.org/jira/browse/HBASE-8321) | Log split worker should heartbeat to avoid timeout when the hlog is under recovery |  Major | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8312](https://issues.apache.org/jira/browse/HBASE-8312) | TestCompactionState - still timeouting |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8305](https://issues.apache.org/jira/browse/HBASE-8305) | Too much logs in the some tests |  Major | build, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8293](https://issues.apache.org/jira/browse/HBASE-8293) | Move BigDecimalColumnInterpreter into hbase-client |  Major | Client, Coprocessors | Elliott Clark | Elliott Clark |
| [HBASE-8290](https://issues.apache.org/jira/browse/HBASE-8290) | TestHTableMultiplexer is flaky |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8289](https://issues.apache.org/jira/browse/HBASE-8289) | TestThreads#testSleepWithoutInterrupt should not expect a bounded wait time |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8287](https://issues.apache.org/jira/browse/HBASE-8287) | TestRegionMergeTransactionOnCluster failed in trunk build #4010 |  Minor | master | chunhui shen | chunhui shen |
| [HBASE-8285](https://issues.apache.org/jira/browse/HBASE-8285) | HBaseClient never recovers for single HTable.get() calls with no retries when regions move |  Critical | Client | Varun Sharma | Varun Sharma |
| [HBASE-8254](https://issues.apache.org/jira/browse/HBASE-8254) | Add lz4 to test compression util usage string |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-8252](https://issues.apache.org/jira/browse/HBASE-8252) | Regions by Region Server table in Master's table view needs styling |  Trivial | UI | Elliott Clark | Elliott Clark |
| [HBASE-8231](https://issues.apache.org/jira/browse/HBASE-8231) | delete tests in table\_tests.rb(TestShell) always running on empty table. |  Major | scripts | rajeshbabu | rajeshbabu |
| [HBASE-8229](https://issues.apache.org/jira/browse/HBASE-8229) | Replication code logs like crazy if a target table cannot be found. |  Major | Replication | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8222](https://issues.apache.org/jira/browse/HBASE-8222) | User class should implement equals() and hashCode() |  Critical | security | Gary Helmling | Ted Yu |
| [HBASE-8213](https://issues.apache.org/jira/browse/HBASE-8213) | global authorization may lose efficacy |  Critical | security | Jieshan Bean | Jieshan Bean |
| [HBASE-8207](https://issues.apache.org/jira/browse/HBASE-8207) | Replication could have data loss when machine name contains hyphen "-" |  Critical | Replication | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8203](https://issues.apache.org/jira/browse/HBASE-8203) | master ui should display region servers with host, port plus startcode |  Minor | UI | rajeshbabu | rajeshbabu |
| [HBASE-8200](https://issues.apache.org/jira/browse/HBASE-8200) | Integration Test classes are not part of the default HBase classpath |  Major | test | Aleksandr Shulman | Enis Soztutar |
| [HBASE-8192](https://issues.apache.org/jira/browse/HBASE-8192) | Logic errror causes infinite loop in HRegion.bulkLoadHFiles(List) |  Major | regionserver | Chenghao Jiang | Chenghao Jiang |
| [HBASE-8191](https://issues.apache.org/jira/browse/HBASE-8191) | Documentation is not giving the right class name for offline merges. |  Minor | documentation | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8179](https://issues.apache.org/jira/browse/HBASE-8179) | JSON formatting for cluster status is sort of broken |  Major | REST, Usability | Devaraj Das | Devaraj Das |
| [HBASE-8178](https://issues.apache.org/jira/browse/HBASE-8178) | IPCUtil produces a LOT of WARN log spew |  Critical | IPC/RPC | Sergey Shelukhin | stack |
| [HBASE-8175](https://issues.apache.org/jira/browse/HBASE-8175) | Include javadoc and book when site goal invoked |  Major | documentation | stack | stack |
| [HBASE-8173](https://issues.apache.org/jira/browse/HBASE-8173) | HMaster#move wraps IOException in UnknownRegionException |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8170](https://issues.apache.org/jira/browse/HBASE-8170) | HbaseAdmin.createTable cannot handle creating three regions |  Minor | Admin | Edward C. Skoviak | Jean-Marc Spaggiari |
| [HBASE-8169](https://issues.apache.org/jira/browse/HBASE-8169) | TestMasterFailover#testMasterFailoverWithMockedRITOnDeadRS may fail due to regions randomly assigned to a RS |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8166](https://issues.apache.org/jira/browse/HBASE-8166) | Avoid writing the memstoreTS into HFiles when possible |  Major | HFile, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8160](https://issues.apache.org/jira/browse/HBASE-8160) | HMaster#move doesn't check if master initialized |  Trivial | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8158](https://issues.apache.org/jira/browse/HBASE-8158) | Backport HBASE-8140 "TableMapReduceUtils#addDependencyJar fails when nested inside another MR job" |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8151](https://issues.apache.org/jira/browse/HBASE-8151) | Decode memstoreTS in HFileReaderV2 only when necessary |  Major | HFile, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8146](https://issues.apache.org/jira/browse/HBASE-8146) | IntegrationTestBigLinkedList does not work on distributed setup |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-8144](https://issues.apache.org/jira/browse/HBASE-8144) | Limit number of attempts to assign a region |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8143](https://issues.apache.org/jira/browse/HBASE-8143) | HBase on Hadoop 2 with local short circuit reads (ssr) causes OOM |  Critical | hadoop2 | Enis Soztutar | stack |
| [HBASE-8140](https://issues.apache.org/jira/browse/HBASE-8140) | TableMapReduceUtils#addDependencyJar fails when nested inside another MR job |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8135](https://issues.apache.org/jira/browse/HBASE-8135) | Mutation should implement HeapSize |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8133](https://issues.apache.org/jira/browse/HBASE-8133) | avoid assign for disabling table regions(OPENING/PENDING\_OPEN) in SSH |  Major | Region Assignment | rajeshbabu | rajeshbabu |
| [HBASE-8131](https://issues.apache.org/jira/browse/HBASE-8131) | Create table handler needs to handle failure cases. |  Major | master | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8130](https://issues.apache.org/jira/browse/HBASE-8130) | initialize TableLockManager before initializing AssignmentManager |  Major | master | rajeshbabu | rajeshbabu |
| [HBASE-8122](https://issues.apache.org/jira/browse/HBASE-8122) | TestAccessController depends on the execution order |  Major | security, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8119](https://issues.apache.org/jira/browse/HBASE-8119) | Optimize StochasticLoadBalancer |  Critical | Region Assignment | Enis Soztutar | Enis Soztutar |
| [HBASE-8118](https://issues.apache.org/jira/browse/HBASE-8118) | TestTablePermission depends on the execution order |  Major | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8108](https://issues.apache.org/jira/browse/HBASE-8108) | Add m2eclispe lifecycle mapping to hbase-common |  Major | build | Jesse Yates | Jesse Yates |
| [HBASE-8069](https://issues.apache.org/jira/browse/HBASE-8069) | TestHLog is dependent on the execution order |  Major | test, wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8068](https://issues.apache.org/jira/browse/HBASE-8068) | TestMasterMetricsWrapper failed in 0.95 #60 jenkins |  Major | metrics | stack | stack |
| [HBASE-8067](https://issues.apache.org/jira/browse/HBASE-8067) | TestHFileArchiving.testArchiveOnTableDelete sometimes fails |  Major | Admin, master, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8062](https://issues.apache.org/jira/browse/HBASE-8062) | Replace HBaseFsck.debugLsr() in TestFlushSnapshotFromClient with FSUtils.logFileSystemState() |  Trivial | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8060](https://issues.apache.org/jira/browse/HBASE-8060) | "Num compacting KVs" diverges from "num compacted KVs" over time |  Major | Compaction, UI | Andrew Purtell | Sergey Shelukhin |
| [HBASE-8058](https://issues.apache.org/jira/browse/HBASE-8058) | Upgrade site plugin; fix assembly doc up on jenkins builds |  Blocker | site | stack | stack |
| [HBASE-8051](https://issues.apache.org/jira/browse/HBASE-8051) | 0.95 build failing on site goal: 'failed to get report for org.apache.maven.plugins:maven-project-info-reports-plugin: Could not find goal 'dependency-info'' |  Blocker | build | stack | stack |
| [HBASE-8050](https://issues.apache.org/jira/browse/HBASE-8050) | Small fix to book/hbase.tests.html |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8042](https://issues.apache.org/jira/browse/HBASE-8042) | Offline Meta Repair no longer points to the correct location |  Major | documentation | Kevin Odell | Kevin Odell |
| [HBASE-8041](https://issues.apache.org/jira/browse/HBASE-8041) | WebUI doesn't display snapshots correctly |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8030](https://issues.apache.org/jira/browse/HBASE-8030) | znode  path of online region servers is hard coded in rolling\_restart.sh |  Major | shell | rajeshbabu | rajeshbabu |
| [HBASE-8027](https://issues.apache.org/jira/browse/HBASE-8027) | hbase-7994 redux; shutdown hbase-example unit tests |  Major | test | stack | stack |
| [HBASE-8018](https://issues.apache.org/jira/browse/HBASE-8018) | Add "Flaky Testcase Detector" tool into dev-tools |  Major | util | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8012](https://issues.apache.org/jira/browse/HBASE-8012) | Reseek should position to the beginning of file for the first time it is invoked with a KV smaller than the first KV in file |  Minor | regionserver | Raymond Liu | Raymond Liu |
| [HBASE-8007](https://issues.apache.org/jira/browse/HBASE-8007) | Adopt TestLoadAndVerify from BigTop |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-8002](https://issues.apache.org/jira/browse/HBASE-8002) | Make TimeOut Management for Assignment optional in master and regionservers |  Major | Client, master, Region Assignment | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7992](https://issues.apache.org/jira/browse/HBASE-7992) | provide pre/post region offline hooks for HMaster.offlineRegion() |  Major | Coprocessors | rajeshbabu | rajeshbabu |
| [HBASE-7986](https://issues.apache.org/jira/browse/HBASE-7986) | [REST] Make HTablePool size configurable |  Major | REST | binlijin | binlijin |
| [HBASE-7982](https://issues.apache.org/jira/browse/HBASE-7982) | TestReplicationQueueFailover\* runs for a minute, spews 3/4million lines complaining 'Filesystem closed', has an NPE, and still passes? |  Blocker | build | stack | Jeffrey Zhong |
| [HBASE-7980](https://issues.apache.org/jira/browse/HBASE-7980) | TestZKInterProcessReadWriteLock fails occasionally in QA test run |  Trivial | test | Ted Yu | Enis Soztutar |
| [HBASE-7966](https://issues.apache.org/jira/browse/HBASE-7966) | ACL tests fail on trunk (flaky) |  Major | security | Enis Soztutar | stack |
| [HBASE-7963](https://issues.apache.org/jira/browse/HBASE-7963) | HBase VerifyReplication not working when security enabled |  Major | Replication, security | Water Chow | Matteo Bertozzi |
| [HBASE-7961](https://issues.apache.org/jira/browse/HBASE-7961) | truncate on disabled table should throw TableNotEnabledException. |  Major | Admin | rajeshbabu | rajeshbabu |
| [HBASE-7957](https://issues.apache.org/jira/browse/HBASE-7957) | CloneSnapshotHandler.prepare() is not called by SnapshotManager |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-7955](https://issues.apache.org/jira/browse/HBASE-7955) | Remove log "ERROR snapshot.SnapshotFileCache: Snapshot directory doesn't exist" |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-7954](https://issues.apache.org/jira/browse/HBASE-7954) | Fix the retrying logic of memstore flushes to avoid extra sleep |  Minor | regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7945](https://issues.apache.org/jira/browse/HBASE-7945) | Remove flaky TestCatalogTrackerOnCluster |  Major | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7933](https://issues.apache.org/jira/browse/HBASE-7933) | NPE in TableLockManager |  Critical | master, Zookeeper | Enis Soztutar | Enis Soztutar |
| [HBASE-7921](https://issues.apache.org/jira/browse/HBASE-7921) | TestHFileBlock.testGzipCompression should ignore the block checksum |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-7878](https://issues.apache.org/jira/browse/HBASE-7878) | recoverFileLease does not check return value of recoverLease |  Critical | util | Eric Newton | Ted Yu |
| [HBASE-7876](https://issues.apache.org/jira/browse/HBASE-7876) | Got exception when manually triggers a split on an empty region |  Minor | regionserver | Maryann Xue | Maryann Xue |
| [HBASE-7871](https://issues.apache.org/jira/browse/HBASE-7871) | HBase can be stuck when closing regions concurrently |  Critical | master | Nicolas Liochon | Ted Yu |
| [HBASE-7869](https://issues.apache.org/jira/browse/HBASE-7869) | Provide way to not start LogSyncer thread |  Major | regionserver, wal | Anoop Sam John | Anoop Sam John |
| [HBASE-7723](https://issues.apache.org/jira/browse/HBASE-7723) | Remove NameNode URI from ZK splitlogs |  Major | hadoop2, master | Kevin Odell | Himanshu Vashishtha |
| [HBASE-7709](https://issues.apache.org/jira/browse/HBASE-7709) | Infinite loop possible in Master/Master replication |  Major | Replication | Lars Hofhansl | Vasu Mariyala |
| [HBASE-7634](https://issues.apache.org/jira/browse/HBASE-7634) | Replication handling of changes to peer clusters is inefficient |  Major | Replication | Gabriel Reid | Gabriel Reid |
| [HBASE-7590](https://issues.apache.org/jira/browse/HBASE-7590) | Add a costless notifications mechanism from master to regionservers & clients |  Major | Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7401](https://issues.apache.org/jira/browse/HBASE-7401) | Remove warning message about running 'hbase migrate' |  Major | Usability | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7380](https://issues.apache.org/jira/browse/HBASE-7380) | [replication] When transferring queues, check if the peer still exists before copying the znodes |  Major | Replication, Usability | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7325](https://issues.apache.org/jira/browse/HBASE-7325) | Replication reacts slowly on a lightly-loaded cluster |  Minor | Replication | Gabriel Reid | Gabriel Reid |
| [HBASE-7296](https://issues.apache.org/jira/browse/HBASE-7296) | Add hbase.master.loadbalancer.class in the documentation |  Minor | documentation | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7226](https://issues.apache.org/jira/browse/HBASE-7226) | HRegion.checkAndMutate uses incorrect comparison result for \<, \<=, \> and \>= |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-7192](https://issues.apache.org/jira/browse/HBASE-7192) | Move TestHBase7051.java into TestAtomicOperation.java |  Minor | test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-7153](https://issues.apache.org/jira/browse/HBASE-7153) | print gc option in hbase-env.sh affects hbase zkcli |  Major | scripts | wonderyl | Dave Latham |
| [HBASE-7122](https://issues.apache.org/jira/browse/HBASE-7122) | Proper warning message when opening a log file with no entries (idle cluster) |  Major | Replication | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7114](https://issues.apache.org/jira/browse/HBASE-7114) | Increment does not extend Mutation but probably should |  Critical | Client | Andrew Purtell | stack |
| [HBASE-7111](https://issues.apache.org/jira/browse/HBASE-7111) | hbase zkcli will not start if the zookeeper server chosen to connect to is unavailable |  Major | Zookeeper | Zhou wenjian | Zhou wenjian |
| [HBASE-5946](https://issues.apache.org/jira/browse/HBASE-5946) | Thrift Filter Language documentation is inconsistent |  Minor | Filters, Thrift | Alexander | Jesse Anderson |
| [HBASE-5472](https://issues.apache.org/jira/browse/HBASE-5472) | LoadIncrementalHFiles loops forever if the target table misses a CF |  Minor | mapreduce | Lars Hofhansl | Yu Li |
| [HBASE-3787](https://issues.apache.org/jira/browse/HBASE-3787) | Increment is non-idempotent but client retries RPC |  Blocker | Client | dhruba borthakur | Sergey Shelukhin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10480](https://issues.apache.org/jira/browse/HBASE-10480) | TestLogRollPeriod#testWithEdits may fail due to insufficient waiting |  Minor | test | Ted Yu | Matteo Bertozzi |
| [HBASE-10008](https://issues.apache.org/jira/browse/HBASE-10008) | TestNamespaceCommands is flakey on jenkins |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9851](https://issues.apache.org/jira/browse/HBASE-9851) | TestHBaseFsck.testQuarantineMissingHFile is flaky |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9655](https://issues.apache.org/jira/browse/HBASE-9655) | IntegrationTestMTTR can loop forever on improperly configured clusters |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9447](https://issues.apache.org/jira/browse/HBASE-9447) | TestHBaseFsck could hang sometime |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9376](https://issues.apache.org/jira/browse/HBASE-9376) | TestDistributedLogSplitting creates a MiniCluster rooted at ~/hbase |  Minor | test | Nick Dimiduk | Jeffrey Zhong |
| [HBASE-9287](https://issues.apache.org/jira/browse/HBASE-9287) | TestCatalogTracker depends on the execution order |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9161](https://issues.apache.org/jira/browse/HBASE-9161) | TestAssignmentManagerOnCluster.testSSHWhenDisablingTableRegionsInOpeningOrPendingOpenState could hang |  Minor | Region Assignment, test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9160](https://issues.apache.org/jira/browse/HBASE-9160) | TestNamespaceUpgrade fails on hadoop 2.1 due to existence of .snapshot directory in tar ball |  Critical | test | Ted Yu | Francis Liu |
| [HBASE-9090](https://issues.apache.org/jira/browse/HBASE-9090) | cleanup snapshot tests setup/teardown code |  Major | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8984](https://issues.apache.org/jira/browse/HBASE-8984) | Test online snapshots with online merge |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8928](https://issues.apache.org/jira/browse/HBASE-8928) | Make ChaosMonkey & LoadTest tools extensible, to allow addition of more actions and policies. |  Major | test | gautam | gautam |
| [HBASE-8816](https://issues.apache.org/jira/browse/HBASE-8816) | Add support of loading multiple tables into LoadTestTool |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8543](https://issues.apache.org/jira/browse/HBASE-8543) | fix coverage org.apache.hadoop.hbase.rest.client |  Major | test | Aleksey Gorshkov | Andrey Klochkov |
| [HBASE-8535](https://issues.apache.org/jira/browse/HBASE-8535) | Test for zk leak does not account for unsynchronized access to zk watcher |  Major | Client | Eric Yu | stack |
| [HBASE-8534](https://issues.apache.org/jira/browse/HBASE-8534) | Fix coverage for org.apache.hadoop.hbase.mapreduce |  Major | mapreduce, test | Aleksey Gorshkov | Aleksey Gorshkov |
| [HBASE-8106](https://issues.apache.org/jira/browse/HBASE-8106) | Test to check replication log znodes move is done correctly |  Major | Replication | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7960](https://issues.apache.org/jira/browse/HBASE-7960) | cleanup TestDir in TestHalfStoreFileReader |  Minor | test | Liang Xie | Liang Xie |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10297](https://issues.apache.org/jira/browse/HBASE-10297) | LoadAndVerify Integration Test for cell visibility |  Major | test | Anoop Sam John | Anoop Sam John |
| [HBASE-10094](https://issues.apache.org/jira/browse/HBASE-10094) | Add batching to HLogPerformanceEvaluation |  Major | Performance, wal | stack | Himanshu Vashishtha |
| [HBASE-10043](https://issues.apache.org/jira/browse/HBASE-10043) | Fix Potential Resouce Leak in MultiTableInputFormatBase |  Major | mapreduce | Elliott Clark | Elliott Clark |
| [HBASE-10039](https://issues.apache.org/jira/browse/HBASE-10039) | Fix potential Resource Leak in RpcServer |  Critical | IPC/RPC, security | Elliott Clark | Elliott Clark |
| [HBASE-10038](https://issues.apache.org/jira/browse/HBASE-10038) | Fix potential Resource Leak in ZNodeCleaner |  Minor | MTTR | Elliott Clark | Elliott Clark |
| [HBASE-10035](https://issues.apache.org/jira/browse/HBASE-10035) | Fix Potential Resource Leak in IPCUtils |  Major | IPC/RPC | Elliott Clark | Elliott Clark |
| [HBASE-9997](https://issues.apache.org/jira/browse/HBASE-9997) | Add per KV security details to HBase book |  Blocker | security | Anoop Sam John | Anoop Sam John |
| [HBASE-9941](https://issues.apache.org/jira/browse/HBASE-9941) | The context ClassLoader isn't set while calling into a coprocessor |  Major | Coprocessors | Benoit Sigoure | Andrew Purtell |
| [HBASE-9917](https://issues.apache.org/jira/browse/HBASE-9917) | Fix it so Default Connection Pool does not spin up max threads even when not needed |  Major | Client | stack | stack |
| [HBASE-9907](https://issues.apache.org/jira/browse/HBASE-9907) | Rig to fake a cluster so can profile client behaviors |  Major | Client | stack | stack |
| [HBASE-9858](https://issues.apache.org/jira/browse/HBASE-9858) | Integration test and LoadTestTool support for cell Visibility |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-9854](https://issues.apache.org/jira/browse/HBASE-9854) | initial documentation for stripe compactions |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9684](https://issues.apache.org/jira/browse/HBASE-9684) | Remove MultiRowMutationProcessorMessages.proto |  Major | Protobufs | stack | Dan Burkert |
| [HBASE-9677](https://issues.apache.org/jira/browse/HBASE-9677) | Remove MasterAdmin and MasterMonitor protos; have MasterService provide these functions |  Major | Protobufs | stack | stack |
| [HBASE-9586](https://issues.apache.org/jira/browse/HBASE-9586) | Deprecate remove o.a.h.h.util.Keying class. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9585](https://issues.apache.org/jira/browse/HBASE-9585) | Update javadoc builder in pom to exclude empty packages in user api javadoc |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9523](https://issues.apache.org/jira/browse/HBASE-9523) | Audit of hbase-common @InterfaceAudience.Public apis. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9517](https://issues.apache.org/jira/browse/HBASE-9517) | Include only InterfaceAudiencePublic elements in generated Javadoc |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9379](https://issues.apache.org/jira/browse/HBASE-9379) | Doc that localfs is not durable |  Major | documentation | stack | Harsh J |
| [HBASE-9359](https://issues.apache.org/jira/browse/HBASE-9359) | Convert KeyValue to Cell in hbase-client module - Result/Put/Delete, ColumnInterpreter |  Major | Client | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9279](https://issues.apache.org/jira/browse/HBASE-9279) | Thrift should use listTableNames to list tables |  Major | Thrift | Andrew Purtell | Andrew Purtell |
| [HBASE-9277](https://issues.apache.org/jira/browse/HBASE-9277) | REST should use listTableNames to list tables |  Major | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-9276](https://issues.apache.org/jira/browse/HBASE-9276) | List tables API should filter with isSystemTable |  Major | shell | Andrew Purtell | Nick Dimiduk |
| [HBASE-9259](https://issues.apache.org/jira/browse/HBASE-9259) | Update hadoop versions grid in refguide adding hadoop-2.1.x and a note on hadoop-2.0.x versions |  Major | documentation | stack | stack |
| [HBASE-9241](https://issues.apache.org/jira/browse/HBASE-9241) | Add cp hook before initialize variable set to true in master intialization |  Major | master | rajeshbabu | rajeshbabu |
| [HBASE-9187](https://issues.apache.org/jira/browse/HBASE-9187) | HBaseAdmin#testTableExists can go zombie |  Critical | test | stack | stack |
| [HBASE-9179](https://issues.apache.org/jira/browse/HBASE-9179) | TestSecureLoadIncrementalHFilesSplitRecovery hangs |  Major | test | stack | stack |
| [HBASE-9165](https://issues.apache.org/jira/browse/HBASE-9165) | Improvements to addDependencyJars |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9110](https://issues.apache.org/jira/browse/HBASE-9110) | Meta region edits not recovered while migrating to 0.96.0 |  Critical | migration | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9091](https://issues.apache.org/jira/browse/HBASE-9091) | Update ByteRange to maintain consumer's position |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9078](https://issues.apache.org/jira/browse/HBASE-9078) | Downstream build including hbase-client fails because can't find com.sun.jdmk:jmxtools |  Major | build | stack | stack |
| [HBASE-8948](https://issues.apache.org/jira/browse/HBASE-8948) | Bound table pool size in Thrift 2 server |  Major | Thrift | Lars George | Lars George |
| [HBASE-8947](https://issues.apache.org/jira/browse/HBASE-8947) | Thrift 2 : Replace "bool writeToWAL" with "TDurability durability" |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8946](https://issues.apache.org/jira/browse/HBASE-8946) | Add a new function to Thrift 2 to open scanner, get results and close scanner |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8938](https://issues.apache.org/jira/browse/HBASE-8938) | Thrift2 does not close scanner instance |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8890](https://issues.apache.org/jira/browse/HBASE-8890) | Fix Thrift 2 example class location |  Major | Thrift | Lars George | Lars George |
| [HBASE-8876](https://issues.apache.org/jira/browse/HBASE-8876) | Addendum to HBASE-8774 Add BatchSize and Filter to Thrift2 - Add BatchSize Test |  Major | Thrift | Lars George | Lars George |
| [HBASE-8832](https://issues.apache.org/jira/browse/HBASE-8832) | Ensure HBASE-4658  is supported by Thrift 2 |  Major | Thrift | Lars George | Hamed Madani |
| [HBASE-8826](https://issues.apache.org/jira/browse/HBASE-8826) | Ensure HBASE-8695 is covered in Thrift 2 |  Major | Thrift | Lars George | Lars George |
| [HBASE-8819](https://issues.apache.org/jira/browse/HBASE-8819) | Port HBASE-5428 to Thrift 2 |  Major | Thrift | Lars George | Lars George |
| [HBASE-8779](https://issues.apache.org/jira/browse/HBASE-8779) | Add mutateRow method support to Thrift2 |  Major | Thrift | duanhongyi | Hamed Madani |
| [HBASE-8774](https://issues.apache.org/jira/browse/HBASE-8774) | Add BatchSize and Filter to Thrift2 |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8693](https://issues.apache.org/jira/browse/HBASE-8693) | DataType: provide extensible type API |  Blocker | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8662](https://issues.apache.org/jira/browse/HBASE-8662) | [rest] support impersonation |  Major | REST, security | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8583](https://issues.apache.org/jira/browse/HBASE-8583) | Create a new IntegrationTestBigLinkedListWithChaosMonkey |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8528](https://issues.apache.org/jira/browse/HBASE-8528) | [hadoop2] TestMultiTableInputFormat always fails on hadoop with YARN-129 applied |  Major | hadoop2, mapreduce, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8497](https://issues.apache.org/jira/browse/HBASE-8497) | Protobuf WAL also needs a trailer |  Major | Protobufs, wal | Enis Soztutar | Himanshu Vashishtha |
| [HBASE-8478](https://issues.apache.org/jira/browse/HBASE-8478) | HBASE-2231 breaks TestHRegion#testRecoveredEditsReplayCompaction under hadoop2 profile |  Major | Compaction, hadoop2, Protobufs | Jonathan Hsieh | Enis Soztutar |
| [HBASE-8477](https://issues.apache.org/jira/browse/HBASE-8477) | [hadoop2] TestTableInputFormatScan\* fails intermittently with PrivilegedActionException |  Major | hadoop2, mapreduce, security | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8469](https://issues.apache.org/jira/browse/HBASE-8469) | [hadoop2] Several tests break because of HDFS-4305 |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8429](https://issues.apache.org/jira/browse/HBASE-8429) | TestMetricsWALSourceImpl from hbase-hadoop2-compat module missing Apache license. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8424](https://issues.apache.org/jira/browse/HBASE-8424) | IntegrationTestImportTsv missing Apache License |  Blocker | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8392](https://issues.apache.org/jira/browse/HBASE-8392) | TestMetricMBeanBase#testGetAttribute is flakey under hadoop2 profile |  Major | hadoop2, metrics, test | Jonathan Hsieh | Elliott Clark |
| [HBASE-8349](https://issues.apache.org/jira/browse/HBASE-8349) | TestLogRolling#TestLogRollOnDatanodeDeath hangs under hadoop2 profile |  Major | hadoop2 | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8342](https://issues.apache.org/jira/browse/HBASE-8342) | TestTableInputFormatScan#testScanFromConfiguration fails on hadoop2 profile |  Major | hadoop2, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8324](https://issues.apache.org/jira/browse/HBASE-8324) | TestHFileOutputFormat.testMRIncremental\* fails against hadoop2 profile |  Major | hadoop2, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8316](https://issues.apache.org/jira/browse/HBASE-8316) | JoinedHeap for non essential column families should reseek instead of seek |  Major | Filters, Performance, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8201](https://issues.apache.org/jira/browse/HBASE-8201) | OrderedBytes: an ordered encoding strategy |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8190](https://issues.apache.org/jira/browse/HBASE-8190) | Add documentation of region merges to the book |  Major | documentation | chunhui shen | chunhui shen |
| [HBASE-8189](https://issues.apache.org/jira/browse/HBASE-8189) | Shell commands of online region merge |  Major | shell | chunhui shen | chunhui shen |
| [HBASE-8156](https://issues.apache.org/jira/browse/HBASE-8156) | Support for Namenode HA for non-idempotent operations |  Major | Filesystem Integration | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8101](https://issues.apache.org/jira/browse/HBASE-8101) | Cleanup: findbugs and javadoc warning fixes as well as making it illegal passing null row to Put/Delete, etc. |  Major | IPC/RPC | stack | stack |
| [HBASE-8094](https://issues.apache.org/jira/browse/HBASE-8094) | TestTableInputFormatScan doesn't assert anything |  Major | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8011](https://issues.apache.org/jira/browse/HBASE-8011) | Refactor ImportTsv |  Minor | mapreduce, Usability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8006](https://issues.apache.org/jira/browse/HBASE-8006) | use FSUtils to get/set hbase.rootdir |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8000](https://issues.apache.org/jira/browse/HBASE-8000) | create integration/perf tests for stripe compactions |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7996](https://issues.apache.org/jira/browse/HBASE-7996) | Clean up resource leak in MultiTableInputFormat |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7995](https://issues.apache.org/jira/browse/HBASE-7995) | Export$Exporter could be replaced with IdentityTableMapper |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7975](https://issues.apache.org/jira/browse/HBASE-7975) | ImportTsv documentation update for table creation |  Trivial | mapreduce, Usability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7967](https://issues.apache.org/jira/browse/HBASE-7967) | implement compactor for stripe compactions |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7938](https://issues.apache.org/jira/browse/HBASE-7938) | Add integration test for ImportTsv/LoadIncrementalHFiles workflow |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7934](https://issues.apache.org/jira/browse/HBASE-7934) | TableMapReduceUtil doesn't include all dependency jars in new modular build |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7905](https://issues.apache.org/jira/browse/HBASE-7905) | Add passing of optional cell blocks over rpc |  Major | IPC/RPC | stack | stack |
| [HBASE-7809](https://issues.apache.org/jira/browse/HBASE-7809) | Refactor Split/Merge to use HRegionFileSystem |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7808](https://issues.apache.org/jira/browse/HBASE-7808) | Refactor Store to use HRegionFileSystem |  Major | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7807](https://issues.apache.org/jira/browse/HBASE-7807) | Introduce HRegionFileSystem and move region fs related code |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7747](https://issues.apache.org/jira/browse/HBASE-7747) | Import tools should use a combiner to merge Puts |  Minor | mapreduce, Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7663](https://issues.apache.org/jira/browse/HBASE-7663) | [Per-KV security] Visibility labels |  Major | Coprocessors, security | Andrew Purtell | Anoop Sam John |
| [HBASE-7662](https://issues.apache.org/jira/browse/HBASE-7662) | [Per-KV security] Per cell ACLs stored in tags |  Major | Coprocessors, security | Andrew Purtell | Andrew Purtell |
| [HBASE-7636](https://issues.apache.org/jira/browse/HBASE-7636) | TestDistributedLogSplitting#testThreeRSAbort fails against hadoop 2.0 |  Major | hadoop2, test | Ted Yu | Jonathan Hsieh |
| [HBASE-7606](https://issues.apache.org/jira/browse/HBASE-7606) | TestJoinedScanners fails in trunk build on hadoop 2.0 |  Major | hadoop2, test | Ted Yu | Jonathan Hsieh |
| [HBASE-7605](https://issues.apache.org/jira/browse/HBASE-7605) | TestMiniClusterLoadSequential fails in trunk build on hadoop 2 |  Critical | hadoop2, test | Ted Yu | Jonathan Hsieh |
| [HBASE-7533](https://issues.apache.org/jira/browse/HBASE-7533) | Write an RPC Specification for 0.96 |  Major | IPC/RPC | stack | stack |
| [HBASE-6945](https://issues.apache.org/jira/browse/HBASE-6945) | Compilation errors when using non-Sun JDKs to build HBase-0.94 |  Major | build | Kumar Ravi | Kumar Ravi |
| [HBASE-6873](https://issues.apache.org/jira/browse/HBASE-6873) | Clean up Coprocessor loading failure handling |  Blocker | Coprocessors, regionserver | David Arthur | Andrew Purtell |
| [HBASE-6330](https://issues.apache.org/jira/browse/HBASE-6330) | TestImportExport has been failing against hadoop 0.23/2.0 profile |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5995](https://issues.apache.org/jira/browse/HBASE-5995) | Fix and reenable TestLogRolling.testLogRollOnPipelineRestart |  Blocker | test | stack | Enis Soztutar |
| [HBASE-5050](https://issues.apache.org/jira/browse/HBASE-5050) | [rest] SPNEGO-based authentication |  Major | REST, security | Andrew Purtell | Jimmy Xiang |
| [HBASE-4285](https://issues.apache.org/jira/browse/HBASE-4285) | partitions file created in user's home directory by importtsv |  Major | mapreduce | Wing Yew Poon | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7462](https://issues.apache.org/jira/browse/HBASE-7462) | TestDrainingServer is an integration test. It should be a unit test instead |  Trivial | test | Nicolas Liochon | Gustavo Anatoly |
| [HBASE-10473](https://issues.apache.org/jira/browse/HBASE-10473) | Add utility for adorning http Context |  Major | UI | stack | stack |
| [HBASE-9757](https://issues.apache.org/jira/browse/HBASE-9757) | Reenable fast region move in SlowDeterministicMonkey |  Major | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9583](https://issues.apache.org/jira/browse/HBASE-9583) | add document for getShortMidpointKey |  Major | HFile | Liang Xie | Liang Xie |
| [HBASE-9575](https://issues.apache.org/jira/browse/HBASE-9575) | Add script to automate much of the rc-making process |  Major | build | stack | stack |
| [HBASE-9401](https://issues.apache.org/jira/browse/HBASE-9401) | Add getQualifierBufferShallowCopy to Cell Utility. |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-9370](https://issues.apache.org/jira/browse/HBASE-9370) | Add logging to Schema change Chaos actions. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-9342](https://issues.apache.org/jira/browse/HBASE-9342) | WebUI fixes after bootstrap 3.0 update |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-9341](https://issues.apache.org/jira/browse/HBASE-9341) | Document hbase.hstore.compaction.kv.max |  Critical | documentation | Adrien Mogenet | stack |
| [HBASE-9229](https://issues.apache.org/jira/browse/HBASE-9229) | Fix release warning |  Critical | build | Elliott Clark | Elliott Clark |
| [HBASE-9194](https://issues.apache.org/jira/browse/HBASE-9194) | Break HMaster metrics into multiple contexts |  Major | metrics, Usability | Ted Yu | Elliott Clark |
| [HBASE-8978](https://issues.apache.org/jira/browse/HBASE-8978) | Restore TestLogRollAbort upon review |  Major | test | stack | Gary Helmling |
| [HBASE-8962](https://issues.apache.org/jira/browse/HBASE-8962) | Clean up code and remove regular log splitting |  Minor | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8960](https://issues.apache.org/jira/browse/HBASE-8960) | TestDistributedLogSplitting.testLogReplayForDisablingTable fails sometimes |  Minor | test | Jimmy Xiang | Jeffrey Zhong |
| [HBASE-8796](https://issues.apache.org/jira/browse/HBASE-8796) | Add mention of new builds mailing list to site |  Major | site | stack | stack |
| [HBASE-8591](https://issues.apache.org/jira/browse/HBASE-8591) | Doc Improvement: Replication blog |  Major | documentation, Replication | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8574](https://issues.apache.org/jira/browse/HBASE-8574) | Add how to rename a table in the docbook |  Major | documentation | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8395](https://issues.apache.org/jira/browse/HBASE-8395) | Remove TestFromClientSide.testPoolBehavior |  Trivial | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8296](https://issues.apache.org/jira/browse/HBASE-8296) | Add svn ignores to hbase-assembly |  Minor | build | Elliott Clark | Elliott Clark |
| [HBASE-8219](https://issues.apache.org/jira/browse/HBASE-8219) | Align Offline Merge with Online Merge |  Major | regionserver | Matteo Bertozzi | chunhui shen |
| [HBASE-8172](https://issues.apache.org/jira/browse/HBASE-8172) | Fix ./bin/\*.rb scripts or remove them |  Blocker | scripts | stack | rajeshbabu |
| [HBASE-7898](https://issues.apache.org/jira/browse/HBASE-7898) | Serializing Cells over RPC |  Blocker | IPC/RPC | stack | stack |


