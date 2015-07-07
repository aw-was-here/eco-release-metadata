# Apache HBase Changelog

## Release 0.99.0 - 2014-09-22

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11805](https://issues.apache.org/jira/browse/HBASE-11805) | KeyValue to Cell Convert in WALEdit APIs |  Major | wal | Anoop Sam John | Anoop Sam John |
| [HBASE-11229](https://issues.apache.org/jira/browse/HBASE-11229) | Change block cache percentage metrics to be doubles rather than ints |  Major | metrics | stack | stack |
| [HBASE-11077](https://issues.apache.org/jira/browse/HBASE-11077) | [AccessController] Restore compatible early-out access denial |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11054](https://issues.apache.org/jira/browse/HBASE-11054) | Create new hook in StoreScanner to help user creating his own delete tracker |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11016](https://issues.apache.org/jira/browse/HBASE-11016) | Remove Filter#filterRow(List) |  Minor | Filters | Ted Yu | Ted Yu |
| [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | Delete mutation is not consistent with Put wrt timestamp |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-10855](https://issues.apache.org/jira/browse/HBASE-10855) | Enable hfilev3 by default |  Major | HFile | stack | stack |
| [HBASE-10796](https://issues.apache.org/jira/browse/HBASE-10796) | Set default log level as INFO |  Major | . | stack | stack |
| [HBASE-10781](https://issues.apache.org/jira/browse/HBASE-10781) | Remove hadoop-one-compat module and all references to hadoop1 |  Major | . | stack | stack |
| [HBASE-10755](https://issues.apache.org/jira/browse/HBASE-10755) | MetricsRegionSourceImpl creates metrics that start with a lower case |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10746](https://issues.apache.org/jira/browse/HBASE-10746) | Bump the version of HTrace to 3.0 |  Minor | util | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-10690](https://issues.apache.org/jira/browse/HBASE-10690) | Drop Hadoop-1 support |  Critical | . | Enis Soztutar | stack |
| [HBASE-10422](https://issues.apache.org/jira/browse/HBASE-10422) | ZeroCopyLiteralByteString.zeroCopyGetBytes has an unusable prototype and conflicts with AsyncHBase |  Major | Client, Protobufs | Benoit Sigoure | Benoit Sigoure |
| [HBASE-10123](https://issues.apache.org/jira/browse/HBASE-10123) | Change default ports; move them out of linux ephemeral port range |  Critical | . | stack | Jonathan Hsieh |
| [HBASE-10073](https://issues.apache.org/jira/browse/HBASE-10073) | Revert HBASE-9718 (Add a test scope dependency on org.slf4j:slf4j-api to hbase-client) |  Major | Zookeeper | Aleksandr Shulman | Andrew Purtell |
| [HBASE-9426](https://issues.apache.org/jira/browse/HBASE-9426) | Make custom distributed barrier procedure pluggable |  Major | . | Richard Ding | Richard Ding |
| [HBASE-6873](https://issues.apache.org/jira/browse/HBASE-6873) | Clean up Coprocessor loading failure handling |  Blocker | Coprocessors, regionserver | David Arthur | Andrew Purtell |
| [HBASE-5697](https://issues.apache.org/jira/browse/HBASE-5697) | Audit HBase for usage of deprecated hadoop 0.20.x property names. |  Major | . | Jonathan Hsieh | Srikanth Srungarapu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11909](https://issues.apache.org/jira/browse/HBASE-11909) | Region count listed by HMaster UI and hbck are different |  Minor | documentation | Gautam Gopalakrishnan | Misty Stanley-Jones |
| [HBASE-11724](https://issues.apache.org/jira/browse/HBASE-11724) | Add to RWQueueRpcExecutor the ability to split get and scan handlers |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10935](https://issues.apache.org/jira/browse/HBASE-10935) | support snapshot policy where flush memstore can be skipped to prevent production cluster freeze |  Minor | shell, snapshots | Tianying Chang | Tianying Chang |
| [HBASE-10881](https://issues.apache.org/jira/browse/HBASE-10881) | Support reverse scan in thrift2 |  Minor | Thrift | Liu Shaohui | Liu Shaohui |
| [HBASE-10416](https://issues.apache.org/jira/browse/HBASE-10416) | Improvements to the import flow |  Major | mapreduce | Vasu Mariyala | Vasu Mariyala |
| [HBASE-8751](https://issues.apache.org/jira/browse/HBASE-8751) | Enable peer cluster to choose/change the ColumnFamilies/Tables it really want to replicate from a source cluster |  Major | Replication | Honghua Feng | Honghua Feng |
| [HBASE-7667](https://issues.apache.org/jira/browse/HBASE-7667) | Support stripe compaction |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-6104](https://issues.apache.org/jira/browse/HBASE-6104) | Require EXEC permission to call coprocessor endpoints |  Major | Coprocessors, security | Gary Helmling | Andrew Purtell |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11897](https://issues.apache.org/jira/browse/HBASE-11897) | Add append and remove peer table-cfs cmds for replication |  Minor | Operability | Liu Shaohui | Liu Shaohui |
| [HBASE-11873](https://issues.apache.org/jira/browse/HBASE-11873) | Hbase Version CLI enhancement |  Minor | build | Guo Ruijing | Ashish Singhi |
| [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | HFile tool should be able to print block headers |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11846](https://issues.apache.org/jira/browse/HBASE-11846) | HStore#assertBulkLoadHFileOk should log if a full HFile verification will be performed during a bulkload |  Trivial | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | HFile tool should implement Tool, disable blockcache by default |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11828](https://issues.apache.org/jira/browse/HBASE-11828) | callers of SeverName.valueOf should use equals and not == |  Minor | Client | Sean Busbey | Sean Busbey |
| [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | [ImportTSV] Abstract labels tags creation into pluggable Interface |  Major | mapreduce, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11810](https://issues.apache.org/jira/browse/HBASE-11810) | Access SSL Passwords through Credential Provider API |  Major | security | Larry McCay | Larry McCay |
| [HBASE-11805](https://issues.apache.org/jira/browse/HBASE-11805) | KeyValue to Cell Convert in WALEdit APIs |  Major | wal | Anoop Sam John | Anoop Sam John |
| [HBASE-11749](https://issues.apache.org/jira/browse/HBASE-11749) | Better error logging when coprocessors loading has failed. |  Trivial | Coprocessors, Usability | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11748](https://issues.apache.org/jira/browse/HBASE-11748) | Cleanup and add pool usage tracing to Compression |  Trivial | io | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11731](https://issues.apache.org/jira/browse/HBASE-11731) | Add option to only run a subset of the shell tests |  Minor | build, shell | Sean Busbey | Sean Busbey |
| [HBASE-11706](https://issues.apache.org/jira/browse/HBASE-11706) | Set versions for VerifyReplication |  Minor | mapreduce | cuijianwei | cuijianwei |
| [HBASE-11701](https://issues.apache.org/jira/browse/HBASE-11701) | Start and end of memstore flush log should be on the same level |  Trivial | Usability | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11674](https://issues.apache.org/jira/browse/HBASE-11674) | LoadIncrementalHFiles should be more verbose after unrecoverable error |  Minor | mapreduce | Jan Lukavsky | Jan Lukavsky |
| [HBASE-11623](https://issues.apache.org/jira/browse/HBASE-11623) | mutateRowsWithLocks might require updatesLock.readLock with waitTime=0 |  Minor | regionserver | cuijianwei | cuijianwei |
| [HBASE-11583](https://issues.apache.org/jira/browse/HBASE-11583) | Refactoring out the configuration changes for enabling VisibilityLabels in the unit tests. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11566](https://issues.apache.org/jira/browse/HBASE-11566) | make ExportSnapshot extendable by removing 'final' |  Minor | snapshots | Demai Ni | Andrew Purtell |
| [HBASE-11553](https://issues.apache.org/jira/browse/HBASE-11553) | Abstract visibility label related services into an interface |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11516](https://issues.apache.org/jira/browse/HBASE-11516) | Track time spent in executing coprocessors in each region. |  Minor | Coprocessors | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11513](https://issues.apache.org/jira/browse/HBASE-11513) | Combine SingleMultiple Queue RpcExecutor into a single class |  Minor | io, regionserver | Jesse Yates | Jesse Yates |
| [HBASE-11497](https://issues.apache.org/jira/browse/HBASE-11497) | Expose RpcScheduling implementations as LimitedPrivate interfaces |  Major | io, regionserver, Usability | Jesse Yates | Jesse Yates |
| [HBASE-11491](https://issues.apache.org/jira/browse/HBASE-11491) | Add an option to sleep randomly during the tests with the PE tool |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11452](https://issues.apache.org/jira/browse/HBASE-11452) | add getUserPermission feature in AccessControlClient as client API |  Major | Client, security | Demai Ni | Demai Ni |
| [HBASE-11450](https://issues.apache.org/jira/browse/HBASE-11450) | Improve file size info in SnapshotInfo tool |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11438](https://issues.apache.org/jira/browse/HBASE-11438) | [Visibility Controller] Support UTF8 character as Visibility Labels |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11436](https://issues.apache.org/jira/browse/HBASE-11436) | Support start Row and stop Row in HBase Export |  Major | mapreduce | Ward Viaene | Ward Viaene |
| [HBASE-11421](https://issues.apache.org/jira/browse/HBASE-11421) | HTableInterface javadoc correction |  Minor | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-11415](https://issues.apache.org/jira/browse/HBASE-11415) | [PE] Dump config before running test |  Trivial | Performance | stack | stack |
| [HBASE-11407](https://issues.apache.org/jira/browse/HBASE-11407) | hbase-client should not require Jackson for pure HBase queries be executed |  Minor | Client | Sergey Beryozkin | Sergey Beryozkin |
| [HBASE-11398](https://issues.apache.org/jira/browse/HBASE-11398) | Print the stripes' state with file size info |  Minor | Compaction | Victor Xu | Victor Xu |
| [HBASE-11390](https://issues.apache.org/jira/browse/HBASE-11390) | PerformanceEvaluation: add an option to use a single connection |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11355](https://issues.apache.org/jira/browse/HBASE-11355) | a couple of callQueue related improvements |  Major | IPC/RPC, Performance | Liang Xie | Matteo Bertozzi |
| [HBASE-11350](https://issues.apache.org/jira/browse/HBASE-11350) | [PE] Allow random value size |  Major | Performance | stack | stack |
| [HBASE-11349](https://issues.apache.org/jira/browse/HBASE-11349) | [Thrift] support authentication/impersonation |  Major | security, Thrift | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | [blockcache] lazy block decompression |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11326](https://issues.apache.org/jira/browse/HBASE-11326) | Use an InputFormat for ExportSnapshot |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11305](https://issues.apache.org/jira/browse/HBASE-11305) | Remove bunch of unused imports in HConnectionManager |  Trivial | Client | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11304](https://issues.apache.org/jira/browse/HBASE-11304) | Enable HBaseAdmin.execProcedure to return data from procedure execution |  Minor | Client | Jerry He | Jerry He |
| [HBASE-11240](https://issues.apache.org/jira/browse/HBASE-11240) | Print hdfs pipeline when hlog's sync is slow |  Major | Operability, wal | Liu Shaohui | Liu Shaohui |
| [HBASE-11220](https://issues.apache.org/jira/browse/HBASE-11220) | Add listeners to ServerManager and AssignmentManager |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11167](https://issues.apache.org/jira/browse/HBASE-11167) | Avoid usage of java.rmi package Exception in MemStore |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11151](https://issues.apache.org/jira/browse/HBASE-11151) | move tracing modules from hbase-server to hbase-common |  Minor | documentation, util | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-11137](https://issues.apache.org/jira/browse/HBASE-11137) | Add mapred.TableSnapshotInputFormat |  Major | mapreduce, Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11136](https://issues.apache.org/jira/browse/HBASE-11136) | Add permission check to roll WAL writer |  Minor | regionserver, security | Jerry He | Jerry He |
| [HBASE-11134](https://issues.apache.org/jira/browse/HBASE-11134) | Add a -list-snapshots option to SnapshotInfo |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11128](https://issues.apache.org/jira/browse/HBASE-11128) | Add -target option to ExportSnapshot to export with a different name |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11123](https://issues.apache.org/jira/browse/HBASE-11123) | Upgrade instructions from 0.94 to 0.98 |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11119](https://issues.apache.org/jira/browse/HBASE-11119) | Update ExportSnapShot to optionally not use a tmp file on external file system |  Minor | snapshots | Ted Malaska | Ted Malaska |
| [HBASE-11086](https://issues.apache.org/jira/browse/HBASE-11086) | Add htrace support for PerfEval |  Minor | Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11083](https://issues.apache.org/jira/browse/HBASE-11083) | ExportSnapshot should provide capability to limit bandwidth consumption |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-11074](https://issues.apache.org/jira/browse/HBASE-11074) | Have PE emit histogram stats as it runs rather than dump once at end of test |  Minor | Performance | stack | stack |
| [HBASE-11048](https://issues.apache.org/jira/browse/HBASE-11048) | Support setting custom priority per client RPC |  Major | Client | Jesse Yates | Jesse Yates |
| [HBASE-11047](https://issues.apache.org/jira/browse/HBASE-11047) | Remove TimeoutMontior |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | Align bulk load, flush, and compact to require Action.CREATE |  Major | security | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-11004](https://issues.apache.org/jira/browse/HBASE-11004) | Extend traces through FSHLog#sync |  Major | wal | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11000](https://issues.apache.org/jira/browse/HBASE-11000) | Add autoflush option to PerformanceEvaluation |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10984](https://issues.apache.org/jira/browse/HBASE-10984) | Add description about setting up htrace-zipkin to documentation |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-10960](https://issues.apache.org/jira/browse/HBASE-10960) | Enhance HBase Thrift 1 to include "append" and "checkAndPut" operations |  Major | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10952](https://issues.apache.org/jira/browse/HBASE-10952) | [REST] Let the user turn off block caching if desired |  Minor | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-10950](https://issues.apache.org/jira/browse/HBASE-10950) | Add  a configuration point for MaxVersion of Column Family |  Major | Admin, Usability | Demai Ni | Enoch Hsu |
| [HBASE-10934](https://issues.apache.org/jira/browse/HBASE-10934) | Provide Admin interface to abstract HBaseAdmin |  Blocker | Client | Carter | Carter |
| [HBASE-10926](https://issues.apache.org/jira/browse/HBASE-10926) | Use global procedure to flush table memstore cache |  Major | Admin | Jerry He | Jerry He |
| [HBASE-10925](https://issues.apache.org/jira/browse/HBASE-10925) | Do not OOME, throw RowTooBigException instead |  Major | Usability | stack | Mikhail Antonov |
| [HBASE-10911](https://issues.apache.org/jira/browse/HBASE-10911) | ServerShutdownHandler#toString shows meaningless message |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10892](https://issues.apache.org/jira/browse/HBASE-10892) | [Shell] Add support for globs in user\_permission |  Major | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10887](https://issues.apache.org/jira/browse/HBASE-10887) | tidy ThriftUtilities format |  Trivial | Thrift | Liang Xie | Liang Xie |
| [HBASE-10884](https://issues.apache.org/jira/browse/HBASE-10884) | [REST] Do not disable block caching when scanning |  Major | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-10873](https://issues.apache.org/jira/browse/HBASE-10873) | Control number of regions assigned to backup masters |  Major | Balancer | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10871](https://issues.apache.org/jira/browse/HBASE-10871) | Indefinite OPEN/CLOSE wait on busy RegionServers |  Major | Balancer, master, Region Assignment | Harsh J | Esteban Gutierrez |
| [HBASE-10813](https://issues.apache.org/jira/browse/HBASE-10813) | Possible over-catch of exceptions |  Major | regionserver, util | Ding Yuan | Ding Yuan |
| [HBASE-10797](https://issues.apache.org/jira/browse/HBASE-10797) | Add support for -h and --help to rolling\_restart.sh and fix the usage string output |  Trivial | Operability | stack | stack |
| [HBASE-10769](https://issues.apache.org/jira/browse/HBASE-10769) | hbase/bin/hbase-cleanup.sh has wrong usage string |  Trivial | Usability | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [HBASE-10746](https://issues.apache.org/jira/browse/HBASE-10746) | Bump the version of HTrace to 3.0 |  Minor | util | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-10744](https://issues.apache.org/jira/browse/HBASE-10744) | AM#CloseRegion no need to retry on FailedServerException |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10693](https://issues.apache.org/jira/browse/HBASE-10693) | Correct declarations of Atomic\* fields from 'volatile' to 'final' |  Minor | io, master | Honghua Feng | Honghua Feng |
| [HBASE-10678](https://issues.apache.org/jira/browse/HBASE-10678) | Make verifyrep tool implement toolrunner |  Minor | Replication | bharath v | bharath v |
| [HBASE-10663](https://issues.apache.org/jira/browse/HBASE-10663) | Some code cleanup of class Leases and ScannerListener.leaseExpired |  Minor | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10641](https://issues.apache.org/jira/browse/HBASE-10641) | Configurable Bucket Sizes in bucketCache |  Major | regionserver | Biju Nair | Nick Dimiduk |
| [HBASE-10592](https://issues.apache.org/jira/browse/HBASE-10592) | Refactor PerformanceEvaluation tool |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10590](https://issues.apache.org/jira/browse/HBASE-10590) | Update contents about tracing in the Reference Guide |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-10569](https://issues.apache.org/jira/browse/HBASE-10569) | Co-locate meta and master |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10511](https://issues.apache.org/jira/browse/HBASE-10511) | Add latency percentiles on PerformanceEvaluation |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10498](https://issues.apache.org/jira/browse/HBASE-10498) | Add new APIs to load balancer interface |  Major | Balancer | rajeshbabu | rajeshbabu |
| [HBASE-10487](https://issues.apache.org/jira/browse/HBASE-10487) | Avoid allocating new KeyValue and according bytes-copying for appended kvs which don't have existing values |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10430](https://issues.apache.org/jira/browse/HBASE-10430) | Support compressTags in shell for enabling tag encoding |  Minor | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10423](https://issues.apache.org/jira/browse/HBASE-10423) | Report back the message of split or rollback failure to the master |  Trivial | regionserver | Harsh J | Harsh J |
| [HBASE-10419](https://issues.apache.org/jira/browse/HBASE-10419) | Add multiget support to PerformanceEvaluation |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10395](https://issues.apache.org/jira/browse/HBASE-10395) | endTime won't be set in VerifyReplication if startTime is not set |  Minor | mapreduce, Replication | cuijianwei | cuijianwei |
| [HBASE-10389](https://issues.apache.org/jira/browse/HBASE-10389) | Add namespace help info in table related shell commands |  Major | shell | Jerry He | Jerry He |
| [HBASE-10373](https://issues.apache.org/jira/browse/HBASE-10373) | Add more details info for ACL group in HBase book |  Minor | documentation, security | takeshi.miao | takeshi.miao |
| [HBASE-10368](https://issues.apache.org/jira/browse/HBASE-10368) | Add Mutation.setWriteToWAL() back to 0.98 |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-10346](https://issues.apache.org/jira/browse/HBASE-10346) | Add Documentation for stateless scanner |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-10324](https://issues.apache.org/jira/browse/HBASE-10324) | refactor deferred-log-flush/Durability related interface/code/naming to align with changed semantic of the new write thread model |  Major | Client, regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10323](https://issues.apache.org/jira/browse/HBASE-10323) | Auto detect data block encoding in HFileOutputFormat |  Major | mapreduce | Ishan Chhabra | Ishan Chhabra |
| [HBASE-10265](https://issues.apache.org/jira/browse/HBASE-10265) | Upgrade to commons-logging 1.1.3 |  Major | build | Liang Xie | Liang Xie |
| [HBASE-10263](https://issues.apache.org/jira/browse/HBASE-10263) | make LruBlockCache single/multi/in-memory ratio user-configurable and provide preemptive mode for in-memory type block |  Major | io | Honghua Feng | Honghua Feng |
| [HBASE-10252](https://issues.apache.org/jira/browse/HBASE-10252) | Don't write back to WAL/memstore when Increment amount is zero (mostly for query rather than update intention) |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10229](https://issues.apache.org/jira/browse/HBASE-10229) | Support OperationAttributes in Increment and Append in Shell |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10213](https://issues.apache.org/jira/browse/HBASE-10213) | Add read log size per second metrics for replication source |  Minor | metrics, Replication | cuijianwei | cuijianwei |
| [HBASE-10211](https://issues.apache.org/jira/browse/HBASE-10211) | Improve AccessControl documentation in hbase book |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10202](https://issues.apache.org/jira/browse/HBASE-10202) | Documentation is lacking information about rolling-restart.sh script. |  Major | documentation | Jean-Marc Spaggiari | Misty Stanley-Jones |
| [HBASE-10175](https://issues.apache.org/jira/browse/HBASE-10175) | 2-thread ChaosMonkey steps on its own toes |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10173](https://issues.apache.org/jira/browse/HBASE-10173) | Need HFile version check in security coprocessors |  Critical | security | Anoop Sam John | Andrew Purtell |
| [HBASE-10157](https://issues.apache.org/jira/browse/HBASE-10157) | Provide CP hook post log replay |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-10141](https://issues.apache.org/jira/browse/HBASE-10141) | instead of putting expired store files thru compaction, just archive them |  Minor | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10128](https://issues.apache.org/jira/browse/HBASE-10128) | Improve the copy table doc to include information about versions |  Trivial | documentation | bharath v | bharath v |
| [HBASE-10116](https://issues.apache.org/jira/browse/HBASE-10116) | SlabCache metrics improvements |  Minor | metrics, regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10086](https://issues.apache.org/jira/browse/HBASE-10086) | [book] document the  HBase canary tool usage in the HBase Book |  Minor | documentation | takeshi.miao | takeshi.miao |
| [HBASE-10074](https://issues.apache.org/jira/browse/HBASE-10074) | consolidate and improve capacity/sizing documentation |  Major | documentation | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10048](https://issues.apache.org/jira/browse/HBASE-10048) | Add hlog number metric in regionserver |  Minor | metrics | Liu Shaohui | Liu Shaohui |
| [HBASE-10010](https://issues.apache.org/jira/browse/HBASE-10010) | eliminate the put latency spike on the new log file beginning |  Major | regionserver | Liang Xie | Liang Xie |
| [HBASE-9866](https://issues.apache.org/jira/browse/HBASE-9866) | Support the mode where REST server authorizes proxy users |  Major | REST | Devaraj Das | Devaraj Das |
| [HBASE-9829](https://issues.apache.org/jira/browse/HBASE-9829) | make the compaction logging less confusing |  Minor | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9524](https://issues.apache.org/jira/browse/HBASE-9524) | Multi row get does not return any results even if any one of the rows specified in the query is missing and improve exception handling |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9501](https://issues.apache.org/jira/browse/HBASE-9501) | Provide throttling for replication |  Major | Replication | Honghua Feng | Honghua Feng |
| [HBASE-9345](https://issues.apache.org/jira/browse/HBASE-9345) | Add support for specifying filters in scan |  Minor | REST | Vandana Ayyalasomayajula | Virag Kothari |
| [HBASE-9343](https://issues.apache.org/jira/browse/HBASE-9343) | Implement stateless scanner for Stargate |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-8970](https://issues.apache.org/jira/browse/HBASE-8970) | [book] Filter language documentation is hidden |  Minor | documentation | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-8807](https://issues.apache.org/jira/browse/HBASE-8807) | HBase MapReduce Job-Launch Documentation Misplaced |  Major | documentation | Ambud Sharma | Misty Stanley-Jones |
| [HBASE-8763](https://issues.apache.org/jira/browse/HBASE-8763) | Combine MVCC and SeqId |  Critical | regionserver | Enis Soztutar | Jeffrey Zhong |
| [HBASE-8755](https://issues.apache.org/jira/browse/HBASE-8755) | A new write thread model for HLog to improve the overall HBase write throughput |  Critical | Performance, wal | Honghua Feng | Honghua Feng |
| [HBASE-8604](https://issues.apache.org/jira/browse/HBASE-8604) | improve reporting of incorrect peer address in replication |  Minor | Replication | Roman Shaposhnik | Rekha Joshi |
| [HBASE-8495](https://issues.apache.org/jira/browse/HBASE-8495) | Change ownership of the directory to bulk load |  Trivial | mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8332](https://issues.apache.org/jira/browse/HBASE-8332) | Add truncate as HMaster method |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8315](https://issues.apache.org/jira/browse/HBASE-8315) | Documentation should have more information of LRU Stats |  Major | documentation | Daisuke Kobayashi | Misty Stanley-Jones |
| [HBASE-8298](https://issues.apache.org/jira/browse/HBASE-8298) | In shell, provide alias of 'desc' for 'describe' |  Trivial | shell | Hari Sekhon | Sean Busbey |
| [HBASE-8076](https://issues.apache.org/jira/browse/HBASE-8076) | add better doc for HBaseAdmin#offline API. |  Minor | Admin | rajeshbabu | rajeshbabu |
| [HBASE-7987](https://issues.apache.org/jira/browse/HBASE-7987) | Snapshot Manifest file instead of multiple empty files |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7849](https://issues.apache.org/jira/browse/HBASE-7849) | Provide administrative limits around bulkloads of files into a single region |  Major | regionserver | Harsh J | Jimmy Xiang |
| [HBASE-7088](https://issues.apache.org/jira/browse/HBASE-7088) | Duplicate code in RowCounter |  Minor | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-6990](https://issues.apache.org/jira/browse/HBASE-6990) | Pretty print TTL |  Minor | Usability | Jean-Daniel Cryans | Esteban Gutierrez |
| [HBASE-6626](https://issues.apache.org/jira/browse/HBASE-6626) | Add a chapter on HDFS in the troubleshooting section of the HBase reference guide. |  Blocker | documentation | Nicolas Liochon | Misty Stanley-Jones |
| [HBASE-5923](https://issues.apache.org/jira/browse/HBASE-5923) | Cleanup checkAndXXX logic |  Major | Client, regionserver | Lars Hofhansl | Honghua Feng |
| [HBASE-4163](https://issues.apache.org/jira/browse/HBASE-4163) | Create Split Strategy for YCSB Benchmark |  Minor | util | Nicolas Spiegelberg | Luke Lu |
| [HBASE-3270](https://issues.apache.org/jira/browse/HBASE-3270) | When we create the .version file, we should create it in a tmp location and then move it into place |  Minor | master | stack | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11989](https://issues.apache.org/jira/browse/HBASE-11989) | IntegrationTestLoadAndVerify cannot be configured anymore on distributed mode |  Trivial | test | Enis Soztutar | Enis Soztutar |
| [HBASE-11949](https://issues.apache.org/jira/browse/HBASE-11949) | Setting hfile.block.cache.size=0 doesn't actually disable blockcache |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11946](https://issues.apache.org/jira/browse/HBASE-11946) | Get xref and API docs to build properly again |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11936](https://issues.apache.org/jira/browse/HBASE-11936) | IsolationLevel must be attribute of a Query not a Scan |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11932](https://issues.apache.org/jira/browse/HBASE-11932) | Stop the html-single from building a html-single of every chapter and cluttering the docbkx directory |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11898](https://issues.apache.org/jira/browse/HBASE-11898) | CoprocessorHost.Environment should cache class loader instance |  Major | Coprocessors | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11893](https://issues.apache.org/jira/browse/HBASE-11893) | RowTooBigException should be in hbase-client module |  Minor | API, Client | Sean Busbey | Mikhail Antonov |
| [HBASE-11892](https://issues.apache.org/jira/browse/HBASE-11892) | configs contain stale entries |  Trivial | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11887](https://issues.apache.org/jira/browse/HBASE-11887) | Memory retention in branch-1; millions of instances of LiteralByteString for column qualifier and value |  Critical | Protobufs | stack | stack |
| [HBASE-11882](https://issues.apache.org/jira/browse/HBASE-11882) | Row level consistency may not be maintained with bulk load and compaction |  Critical | regionserver | Jerry He | Jerry He |
| [HBASE-11880](https://issues.apache.org/jira/browse/HBASE-11880) | NPE in MasterStatusServlet |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11859](https://issues.apache.org/jira/browse/HBASE-11859) | 'hadoop jar' references in documentation should mention hbase-server.jar, not hbase.jar |  Minor | documentation | Stephen Veiss | Stephen Veiss |
| [HBASE-11851](https://issues.apache.org/jira/browse/HBASE-11851) | RpcClient can try to close a connection not ready to close |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11844](https://issues.apache.org/jira/browse/HBASE-11844) | region\_mover.rb load enters an infinite loop if region already present on target server |  Minor | scripts | Stephen Veiss | Stephen Veiss |
| [HBASE-11836](https://issues.apache.org/jira/browse/HBASE-11836) | IntegrationTestTimeBoundedMultiGetRequestsWithRegionReplicas tests simple get by default |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11816](https://issues.apache.org/jira/browse/HBASE-11816) | Initializing custom Metrics implementation failed in Mapper or Reducer |  Minor | metrics | Huafeng Wang | Huafeng Wang |
| [HBASE-11794](https://issues.apache.org/jira/browse/HBASE-11794) | StripeStoreFlusher causes NullPointerException |  Critical | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-11787](https://issues.apache.org/jira/browse/HBASE-11787) | TestRegionLocations is not categorized |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11782](https://issues.apache.org/jira/browse/HBASE-11782) | Document that hbase.MetaMigrationConvertingToPB needs to be set to true for migrations pre 0.96 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11773](https://issues.apache.org/jira/browse/HBASE-11773) | Wrong field used for protobuf construction in RegionStates. |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11770](https://issues.apache.org/jira/browse/HBASE-11770) | TestBlockCacheReporting.testBucketCache is not stable |  Major | test | Sergey Soldatov | Sergey Soldatov |
| [HBASE-11755](https://issues.apache.org/jira/browse/HBASE-11755) | VisibilityController returns the wrong value for preBalanceSwitch() |  Minor | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11744](https://issues.apache.org/jira/browse/HBASE-11744) | RpcServer code should not use a collection from netty internal |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11733](https://issues.apache.org/jira/browse/HBASE-11733) | Avoid copy-paste in Master/Region CoprocessorHost |  Trivial | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11728](https://issues.apache.org/jira/browse/HBASE-11728) | Data loss while scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | Scanners | wuchengzhi | ramkrishna.s.vasudevan |
| [HBASE-11726](https://issues.apache.org/jira/browse/HBASE-11726) | Master should fail-safe if starting with a pre 0.96 layout |  Critical | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11719](https://issues.apache.org/jira/browse/HBASE-11719) | Remove some unused paths in AsyncClient |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11718](https://issues.apache.org/jira/browse/HBASE-11718) | Remove some logs in RpcClient.java |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11717](https://issues.apache.org/jira/browse/HBASE-11717) | Remove unused config 'hbase.offheapcache.percentage' from hbase-default.xml and book |  Minor | documentation | Anoop Sam John | Anoop Sam John |
| [HBASE-11708](https://issues.apache.org/jira/browse/HBASE-11708) | RegionSplitter incorrectly calculates splitcount |  Minor | Admin, util | Sean Busbey | louis hust |
| [HBASE-11705](https://issues.apache.org/jira/browse/HBASE-11705) | callQueueSize should be decremented in a fail-fast scenario |  Critical | IPC/RPC | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11687](https://issues.apache.org/jira/browse/HBASE-11687) | No need to abort on postOpenDeployTasks exception if region opening is cancelled |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11678](https://issues.apache.org/jira/browse/HBASE-11678) | BucketCache ramCache fills heap after running a few hours |  Critical | BlockCache | stack | stack |
| [HBASE-11671](https://issues.apache.org/jira/browse/HBASE-11671) | TestEndToEndSplitTransaction fails on master |  Major | Region Assignment, test | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11668](https://issues.apache.org/jira/browse/HBASE-11668) | Re-add HBASE\_LIBRARY\_PATH to bin/hbase |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11662](https://issues.apache.org/jira/browse/HBASE-11662) | Launching shell with long-form --debug fails |  Major | shell | Sean Busbey | Sean Busbey |
| [HBASE-11659](https://issues.apache.org/jira/browse/HBASE-11659) | Region state RPC call is not idempotent |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11632](https://issues.apache.org/jira/browse/HBASE-11632) | Region split needs to clear force split flag at the end of SplitRequest run |  Minor | regionserver | Jerry He | Jerry He |
| [HBASE-11627](https://issues.apache.org/jira/browse/HBASE-11627) | RegionSplitter's rollingSplit terminated with "/ by zero", and the \_balancedSplit file was not deleted properly |  Major | Admin, util | louis hust | Sean Busbey |
| [HBASE-11617](https://issues.apache.org/jira/browse/HBASE-11617) | incorrect AgeOfLastAppliedOp and AgeOfLastShippedOp in replication Metrics when no new replication OP |  Minor | Replication | Demai Ni | Demai Ni |
| [HBASE-11609](https://issues.apache.org/jira/browse/HBASE-11609) | LoadIncrementalHFiles fails if the namespace is specified |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11593](https://issues.apache.org/jira/browse/HBASE-11593) | TestCacheConfig failing consistently in precommit builds |  Major | BlockCache | Andrew Purtell | stack |
| [HBASE-11589](https://issues.apache.org/jira/browse/HBASE-11589) | AccessControlException should be a not retriable exception |  Major | IPC/RPC | Kashif | Qiang Tian |
| [HBASE-11588](https://issues.apache.org/jira/browse/HBASE-11588) | RegionServerMetricsWrapperRunnable misused the 'period' parameter |  Minor | metrics | Victor Xu | Victor Xu |
| [HBASE-11579](https://issues.apache.org/jira/browse/HBASE-11579) | CopyTable should check endtime value only if != 0 |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11565](https://issues.apache.org/jira/browse/HBASE-11565) | Stale connection could stay for a while |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11564](https://issues.apache.org/jira/browse/HBASE-11564) | Improve cancellation management in the rpc layer |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+ |  Major | mapreduce, Scanners | Ishan Chhabra | Ishan Chhabra |
| [HBASE-11555](https://issues.apache.org/jira/browse/HBASE-11555) | TableSnapshotRegionSplit should be public |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11545](https://issues.apache.org/jira/browse/HBASE-11545) | mapred.TableSnapshotInputFormat is missing InterfaceAudience annotation |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11540](https://issues.apache.org/jira/browse/HBASE-11540) | Document HBASE-11474 |  Critical | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11536](https://issues.apache.org/jira/browse/HBASE-11536) | Puts of region location to Meta may be out of order which causes inconsistent of region location |  Critical | Region Assignment | Liu Shaohui | Liu Shaohui |
| [HBASE-11535](https://issues.apache.org/jira/browse/HBASE-11535) | ReplicationPeer map is not thread safe |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11531](https://issues.apache.org/jira/browse/HBASE-11531) | RegionStates for regions under region-in-transition znode are not updated on startup |  Major | Region Assignment | Virag Kothari | Jimmy Xiang |
| [HBASE-11525](https://issues.apache.org/jira/browse/HBASE-11525) | Region server holding in region states is out of sync with meta |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11518](https://issues.apache.org/jira/browse/HBASE-11518) | doc update for how to create non-shared HConnection |  Minor | documentation | Qiang Tian | Qiang Tian |
| [HBASE-11510](https://issues.apache.org/jira/browse/HBASE-11510) | Visibility serialization format tag gets duplicated in Append/Increment'ed cells |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11505](https://issues.apache.org/jira/browse/HBASE-11505) | 'snapshot' shell command shadows 'snapshot' shell when 'help' is invoked |  Trivial | shell | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11502](https://issues.apache.org/jira/browse/HBASE-11502) | Track down broken images in Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | Hadoop configuration overrides some ipc parameters including tcpNoDelay |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11488](https://issues.apache.org/jira/browse/HBASE-11488) | cancelTasks in SubprocedurePool can hang during task error |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-11487](https://issues.apache.org/jira/browse/HBASE-11487) | ScanResponse carries non-zero cellblock for CloseScanRequest (ScanRequest with close\_scanner = true) |  Minor | IPC/RPC, regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11477](https://issues.apache.org/jira/browse/HBASE-11477) | book.xml has Docbook validity issues (again) |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11476](https://issues.apache.org/jira/browse/HBASE-11476) | Expand 'Conceptual View' section of Data Model chapter |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11465](https://issues.apache.org/jira/browse/HBASE-11465) | [VisibilityController] Reserved tags check not happening for Append/Increment |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11460](https://issues.apache.org/jira/browse/HBASE-11460) | Deadlock in HMaster on masterAndZKLock in HConnectionManager |  Critical | master | Andrey Stepachev | Ted Yu |
| [HBASE-11445](https://issues.apache.org/jira/browse/HBASE-11445) | TestZKProcedure#testMultiCohortWithMemberTimeoutDuringPrepare is flaky |  Major | snapshots | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11442](https://issues.apache.org/jira/browse/HBASE-11442) | ReplicationSourceManager doesn't cleanup the queues for recovered sources |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11439](https://issues.apache.org/jira/browse/HBASE-11439) | StripeCompaction may not obey the OffPeak rule to compaction |  Minor | Compaction | Victor Xu | Victor Xu |
| [HBASE-11435](https://issues.apache.org/jira/browse/HBASE-11435) | Visibility labelled cells fail to getting replicated |  Critical | Replication, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11433](https://issues.apache.org/jira/browse/HBASE-11433) | LruBlockCache does not respect its configurable parameters |  Major | regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11430](https://issues.apache.org/jira/browse/HBASE-11430) | lastFlushSeqId has been updated wrongly during region open |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11423](https://issues.apache.org/jira/browse/HBASE-11423) | Visibility label and per cell ACL feature not working with HTable#mutateRow() and MultiRowMutationEndpoint |  Blocker | Coprocessors, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11418](https://issues.apache.org/jira/browse/HBASE-11418) | build target "site" doesn't respect hadoop-two.version property |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HBASE-11403](https://issues.apache.org/jira/browse/HBASE-11403) | Fix race conditions around Object#notify |  Major | Client, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11399](https://issues.apache.org/jira/browse/HBASE-11399) | Improve Quickstart chapter and move Pseudo-distributed and distributed to it |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11397](https://issues.apache.org/jira/browse/HBASE-11397) | When merging expired stripes, we need to create an empty file to preserve metadata. |  Major | Compaction | Victor Xu | Victor Xu |
| [HBASE-11387](https://issues.apache.org/jira/browse/HBASE-11387) | metrics: wrong totalRequestCount |  Major | metrics, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11380](https://issues.apache.org/jira/browse/HBASE-11380) | HRegion lock object is not being released properly, leading to snapshot failure |  Blocker | regionserver | Craig Condit | Ted Yu |
| [HBASE-11374](https://issues.apache.org/jira/browse/HBASE-11374) | RpcRetryingCaller#callWithoutRetries has a timeout of zero |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11373](https://issues.apache.org/jira/browse/HBASE-11373) | hbase-protocol compile failed for name conflict of RegionTransition |  Minor | Protobufs | Liu Shaohui | Jimmy Xiang |
| [HBASE-11371](https://issues.apache.org/jira/browse/HBASE-11371) | Typo in Thrift2 docs |  Trivial | documentation | Cesar Delgado | Cesar Delgado |
| [HBASE-11353](https://issues.apache.org/jira/browse/HBASE-11353) | Wrong Write Request Count |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11347](https://issues.apache.org/jira/browse/HBASE-11347) | For some errors, the client can retry infinitely |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11342](https://issues.apache.org/jira/browse/HBASE-11342) | The method isChildReadLock in class ZKInterProcessLockBase is wrong |  Minor | Zookeeper | Qianxi Zhang | Qianxi Zhang |
| [HBASE-11340](https://issues.apache.org/jira/browse/HBASE-11340) | Remove references to xcievers in documentation |  Trivial | documentation | Dima Spivak | Dima Spivak |
| [HBASE-11338](https://issues.apache.org/jira/browse/HBASE-11338) | Expand documentation on bloom filters |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11337](https://issues.apache.org/jira/browse/HBASE-11337) | Document how to create, modify, delete a table using Java |  Major | Admin, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11327](https://issues.apache.org/jira/browse/HBASE-11327) | ExportSnapshot hit stackoverflow error when target snapshotDir doesn't contain uri |  Minor | snapshots | Demai Ni | Demai Ni |
| [HBASE-11324](https://issues.apache.org/jira/browse/HBASE-11324) | Update 2.5.2.8. Managed Compactions |  Major | Compaction, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11312](https://issues.apache.org/jira/browse/HBASE-11312) | Minor refactoring of TestVisibilityLabels class |  Trivial | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11311](https://issues.apache.org/jira/browse/HBASE-11311) | Secure Bulk Load does not execute chmod 777 on the files |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11310](https://issues.apache.org/jira/browse/HBASE-11310) | Delete's copy constructor should copy the attributes also |  Major | mapreduce | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11302](https://issues.apache.org/jira/browse/HBASE-11302) | ReplicationSourceManager#sources is not thread safe |  Major | Replication | Qianxi Zhang | Qianxi Zhang |
| [HBASE-11298](https://issues.apache.org/jira/browse/HBASE-11298) | Simplification in RpcServer code |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11297](https://issues.apache.org/jira/browse/HBASE-11297) | Remove some synchros in the rpcServer responder |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11285](https://issues.apache.org/jira/browse/HBASE-11285) | Expand coprocs info in Ref Guide |  Major | Coprocessors, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11275](https://issues.apache.org/jira/browse/HBASE-11275) | [AccessController] postCreateTable hook fails when another CP creates table on their startup |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11268](https://issues.apache.org/jira/browse/HBASE-11268) | HTablePool is now a deprecated class, should update docs to reflect this |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11253](https://issues.apache.org/jira/browse/HBASE-11253) | IntegrationTestWithCellVisibilityLoadAndVerify failing since HBASE-10326 |  Major | test | Anoop Sam John | Anoop Sam John |
| [HBASE-11239](https://issues.apache.org/jira/browse/HBASE-11239) | Forgot to svn add test that was part of HBASE-11171, TestCacheConfig |  Major | test | stack | stack |
| [HBASE-11238](https://issues.apache.org/jira/browse/HBASE-11238) | Add info about SlabCache and BucketCache to Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11226](https://issues.apache.org/jira/browse/HBASE-11226) | Document and increase the default value for hbase.hstore.flusher.count |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11215](https://issues.apache.org/jira/browse/HBASE-11215) | Deprecate void setAutoFlush(boolean autoFlush, boolean clearBufferOnFail) |  Minor | Client | Carter | Carter |
| [HBASE-11202](https://issues.apache.org/jira/browse/HBASE-11202) | Cleanup on HRegion class |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11196](https://issues.apache.org/jira/browse/HBASE-11196) | Update description of -ROOT- in ref guide |  Major | documentation | Dima Spivak | Misty Stanley-Jones |
| [HBASE-11194](https://issues.apache.org/jira/browse/HBASE-11194) | [AccessController] issue with covering permission check in case of concurrent op on same row |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11190](https://issues.apache.org/jira/browse/HBASE-11190) | Fix easy typos in documentation |  Trivial | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11186](https://issues.apache.org/jira/browse/HBASE-11186) | Improve TestExportSnapshot verifications |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11185](https://issues.apache.org/jira/browse/HBASE-11185) | Parallelize Snapshot operations |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11176](https://issues.apache.org/jira/browse/HBASE-11176) | Make /src/main/xslt/configuration\_to\_docbook\_section.xsl produce better Docbook |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11169](https://issues.apache.org/jira/browse/HBASE-11169) | nit: fix incorrect javadoc in OrderedBytes about BlobVar and BlobCopy |  Trivial | util | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11168](https://issues.apache.org/jira/browse/HBASE-11168) | [docs] Remove references to RowLocks in post 0.96 docs. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11162](https://issues.apache.org/jira/browse/HBASE-11162) | RegionServer webui uses the default master info port irrespective of the user configuration. |  Minor | UI | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11155](https://issues.apache.org/jira/browse/HBASE-11155) | Fix Validation Errors in Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11149](https://issues.apache.org/jira/browse/HBASE-11149) | Wire encryption is broken |  Major | IPC/RPC | Devaraj Das | Devaraj Das |
| [HBASE-11143](https://issues.apache.org/jira/browse/HBASE-11143) | Improve replication metrics |  Major | Replication | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11133](https://issues.apache.org/jira/browse/HBASE-11133) | Add an option to skip snapshot verification after Export |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11120](https://issues.apache.org/jira/browse/HBASE-11120) | Update documentation about major compaction algorithm |  Major | Compaction, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString" |  Blocker | mapreduce | André Kelpe | stack |
| [HBASE-11117](https://issues.apache.org/jira/browse/HBASE-11117) | [AccessController] checkAndPut/Delete hook should check only Read permission |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11112](https://issues.apache.org/jira/browse/HBASE-11112) | PerformanceEvaluation should document --multiGet option on its printUsage. |  Major | documentation, Performance | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11055](https://issues.apache.org/jira/browse/HBASE-11055) | Extends the sampling size |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11052](https://issues.apache.org/jira/browse/HBASE-11052) | Sending random data crashes thrift service |  Major | Thrift | Adrian Muraru | Adrian Muraru |
| [HBASE-11049](https://issues.apache.org/jira/browse/HBASE-11049) | HBase WALPlayer needs to add credentials to job to play to table |  Minor | mapreduce | Jerry He | Jerry He |
| [HBASE-11038](https://issues.apache.org/jira/browse/HBASE-11038) | Filtered scans can bypass metrics collection |  Minor | Scanners | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11028](https://issues.apache.org/jira/browse/HBASE-11028) | FSLog: Avoid an extra sync if the current transaction is already sync'd |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11018](https://issues.apache.org/jira/browse/HBASE-11018) | ZKUtil.getChildDataAndWatchForNewChildren() will not return null as indicated |  Minor | Zookeeper | Jerry He | Jerry He |
| [HBASE-11011](https://issues.apache.org/jira/browse/HBASE-11011) | Avoid extra getFileStatus() calls on Region startup |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11009](https://issues.apache.org/jira/browse/HBASE-11009) | We sync every hbase:meta table write twice |  Major | wal | stack | stack |
| [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | Delete mutation is not consistent with Put wrt timestamp |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-10954](https://issues.apache.org/jira/browse/HBASE-10954) | Fix TestCloseRegionHandler.testFailedFlushAborts |  Major | regionserver | Mikhail Antonov | Mikhail Antonov |
| [HBASE-10948](https://issues.apache.org/jira/browse/HBASE-10948) | Fix hbase table file 'x' mode |  Major | Filesystem Integration | Jerry He | Jerry He |
| [HBASE-10941](https://issues.apache.org/jira/browse/HBASE-10941) | default for max version isn't updated in doc after change on 0.96 |  Minor | documentation | Demai Ni | Demai Ni |
| [HBASE-10922](https://issues.apache.org/jira/browse/HBASE-10922) | Log splitting status should always be closed |  Minor | wal | Jimmy Xiang | Jeffrey Zhong |
| [HBASE-10917](https://issues.apache.org/jira/browse/HBASE-10917) | Fix hbase book "Tests" page |  Trivial | documentation | bharath v | bharath v |
| [HBASE-10903](https://issues.apache.org/jira/browse/HBASE-10903) | HBASE-10740 regression; cannot pass commands for zk to run |  Major | Zookeeper | stack | stack |
| [HBASE-10895](https://issues.apache.org/jira/browse/HBASE-10895) | unassign a region fails due to the hosting region server is in FailedServerList |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10890](https://issues.apache.org/jira/browse/HBASE-10890) | ExportSnapshot needs to add acquired token to job |  Major | snapshots | Jerry He | Jerry He |
| [HBASE-10863](https://issues.apache.org/jira/browse/HBASE-10863) | Scan doesn't return rows for user who has authorization by visibility label in secure deployment |  Major | security | Ted Yu | Ted Yu |
| [HBASE-10862](https://issues.apache.org/jira/browse/HBASE-10862) | Update config field names in hbase-default.xml description for hbase.hregion.memstore.block.multiplier |  Trivial | documentation | Albert Chu | Albert Chu |
| [HBASE-10860](https://issues.apache.org/jira/browse/HBASE-10860) | Insufficient AccessController covering permission check |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-10854](https://issues.apache.org/jira/browse/HBASE-10854) | [VisibilityController] Apply MAX\_VERSIONS from schema or request when scanning |  Major | security | Matteo Bertozzi | Anoop Sam John |
| [HBASE-10853](https://issues.apache.org/jira/browse/HBASE-10853) | NPE in RSRpcServices.get on trunk |  Major | IPC/RPC | stack | stack |
| [HBASE-10850](https://issues.apache.org/jira/browse/HBASE-10850) | essential column family optimization is broken |  Blocker | Coprocessors, Filters, Performance | Fabien Le Gallo | Ted Yu |
| [HBASE-10848](https://issues.apache.org/jira/browse/HBASE-10848) | Filter SingleColumnValueFilter combined with NullComparator does not work |  Major | Filters | Fabien Le Gallo | Fabien Le Gallo |
| [HBASE-10839](https://issues.apache.org/jira/browse/HBASE-10839) | NullPointerException in construction of RegionServer in Security Cluster |  Critical | regionserver | Liu Shaohui | Jimmy Xiang |
| [HBASE-10838](https://issues.apache.org/jira/browse/HBASE-10838) | Insufficient AccessController covering permission check |  Critical | security | Anoop Sam John | Anoop Sam John |
| [HBASE-10833](https://issues.apache.org/jira/browse/HBASE-10833) | Region assignment may fail during cluster start up |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10825](https://issues.apache.org/jira/browse/HBASE-10825) | Add copy-from option to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10814](https://issues.apache.org/jira/browse/HBASE-10814) | RpcClient: some calls can get stuck when connection is closing |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10804](https://issues.apache.org/jira/browse/HBASE-10804) | Add a validations step to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10793](https://issues.apache.org/jira/browse/HBASE-10793) | AuthFailed as a valid zookeeper state |  Major | Zookeeper | Demai Ni | Demai Ni |
| [HBASE-10792](https://issues.apache.org/jira/browse/HBASE-10792) | RingBufferTruck does not release its payload |  Major | Performance, wal | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10766](https://issues.apache.org/jira/browse/HBASE-10766) | SnapshotCleaner allows to delete referenced files |  Major | snapshots | Matteo Bertozzi | bharath v |
| [HBASE-10762](https://issues.apache.org/jira/browse/HBASE-10762) | clone\_snapshot doesn't check for missing namespace |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10760](https://issues.apache.org/jira/browse/HBASE-10760) | Wrong methods' names in ClusterLoadState class |  Minor | Balancer | Victor Xu | Victor Xu |
| [HBASE-10737](https://issues.apache.org/jira/browse/HBASE-10737) | HConnectionImplementation should stop RpcClient on close |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10731](https://issues.apache.org/jira/browse/HBASE-10731) | Fix environment variables typos in scripts |  Trivial | scripts | Albert Chu | Albert Chu |
| [HBASE-10720](https://issues.apache.org/jira/browse/HBASE-10720) | rpcClient: Wrong log level when closing the connection |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10718](https://issues.apache.org/jira/browse/HBASE-10718) | TestHLogSplit fails when it sets a KV size to be negative |  Major | wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10714](https://issues.apache.org/jira/browse/HBASE-10714) | SyncFuture hangs when sequence is 0 |  Major | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10692](https://issues.apache.org/jira/browse/HBASE-10692) | The Multi TableMap job don't support the security HBase cluster |  Minor | mapreduce | Liu Shaohui | Liu Shaohui |
| [HBASE-10687](https://issues.apache.org/jira/browse/HBASE-10687) | Fix description about HBaseLocalFileSpanReceiver in reference manual |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-10686](https://issues.apache.org/jira/browse/HBASE-10686) | [WINDOWS] TestStripeStoreFileManager fails on windows |  Minor | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10685](https://issues.apache.org/jira/browse/HBASE-10685) | [WINDOWS] TestKeyStoreKeyProvider fails on windows |  Minor | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10682](https://issues.apache.org/jira/browse/HBASE-10682) | region\_mover.rb throws "can't convert nil into String" for regions moved |  Major | scripts | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10679](https://issues.apache.org/jira/browse/HBASE-10679) | Both clients get wrong scan results if the first scanner expires and the second scanner is created with the same scannerId on the same region |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10677](https://issues.apache.org/jira/browse/HBASE-10677) | boundaries check in hbck throwing IllegalArgumentException |  Major | hbck | rajeshbabu | rajeshbabu |
| [HBASE-10669](https://issues.apache.org/jira/browse/HBASE-10669) | [hbck tool] Usage is wrong for hbck tool for -sidelineCorruptHfiles option |  Minor | hbck | Deepak Sharma | Deepak Sharma |
| [HBASE-10662](https://issues.apache.org/jira/browse/HBASE-10662) | RegionScanner is never closed if the region has been moved-out or re-opened when performing scan request |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10660](https://issues.apache.org/jira/browse/HBASE-10660) | MR over snapshots can OOM when alternative blockcache is enabled |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10639](https://issues.apache.org/jira/browse/HBASE-10639) | Unload script displays wrong counts (off by one) when unloading regions |  Trivial | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10637](https://issues.apache.org/jira/browse/HBASE-10637) | rpcClient: Setup the iostreams when writing |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10632](https://issues.apache.org/jira/browse/HBASE-10632) | Region lost in limbo after ArrayIndexOutOfBoundsException during assignment |  Major | Region Assignment | Nick Dimiduk | Enis Soztutar |
| [HBASE-10622](https://issues.apache.org/jira/browse/HBASE-10622) | Improve log and Exceptions in Export Snapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10614](https://issues.apache.org/jira/browse/HBASE-10614) | Master could not be stopped |  Major | master | Jingcheng Du | Jingcheng Du |
| [HBASE-10608](https://issues.apache.org/jira/browse/HBASE-10608) | Acquire the FS Delegation Token for Secure ExportSnapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10606](https://issues.apache.org/jira/browse/HBASE-10606) | Bad timeout in RpcRetryingCaller#callWithRetries w/o parameters |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10598](https://issues.apache.org/jira/browse/HBASE-10598) | Written data can not be read out because MemStore#timeRangeTracker might be updated concurrently |  Critical | regionserver | cuijianwei | cuijianwei |
| [HBASE-10587](https://issues.apache.org/jira/browse/HBASE-10587) | Master metrics clusterRequests is wrong |  Minor | master, metrics | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10586](https://issues.apache.org/jira/browse/HBASE-10586) | hadoop2-compat IPC metric registred twice |  Major | metrics | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10580](https://issues.apache.org/jira/browse/HBASE-10580) | IntegrationTestingUtility#restoreCluster leak resource when running in a mini cluster mode |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10579](https://issues.apache.org/jira/browse/HBASE-10579) | [Documentation]: ExportSnapshot tool package incorrectly documented |  Minor | documentation, snapshots | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10575](https://issues.apache.org/jira/browse/HBASE-10575) | ReplicationSource thread can't be terminated if it runs into the loop to contact peer's zk ensemble and fails continuously |  Critical | Replication | Honghua Feng | Honghua Feng |
| [HBASE-10567](https://issues.apache.org/jira/browse/HBASE-10567) | Add overwrite manifest option to ExportSnapshot |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10566](https://issues.apache.org/jira/browse/HBASE-10566) | cleanup rpcTimeout in the client |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10564](https://issues.apache.org/jira/browse/HBASE-10564) | HRegionServer.nextLong should be removed since it's not used anywhere, or should be used somewhere it meant to |  Minor | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10563](https://issues.apache.org/jira/browse/HBASE-10563) | Set name for FlushHandler thread |  Major | regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-10556](https://issues.apache.org/jira/browse/HBASE-10556) | Possible data loss due to non-handled DroppedSnapshotException for user-triggered flush from client/shell |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10549](https://issues.apache.org/jira/browse/HBASE-10549) | When there is a hole, LoadIncrementalHFiles will hang in an infinite loop. |  Major | HFile | yuanxinen | yuanxinen |
| [HBASE-10548](https://issues.apache.org/jira/browse/HBASE-10548) | Correct commons-math dependency version |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10539](https://issues.apache.org/jira/browse/HBASE-10539) | HRegion.addAndGetGlobalMemstoreSize returns previous size |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10537](https://issues.apache.org/jira/browse/HBASE-10537) | Let the ExportSnapshot mapper fail and retry on error |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10534](https://issues.apache.org/jira/browse/HBASE-10534) | Rowkey in TsvImporterTextMapper initializing with wrong length |  Major | mapreduce | rajeshbabu | rajeshbabu |
| [HBASE-10533](https://issues.apache.org/jira/browse/HBASE-10533) | commands.rb is giving wrong error messages on exceptions |  Major | shell | rajeshbabu | rajeshbabu |
| [HBASE-10525](https://issues.apache.org/jira/browse/HBASE-10525) | Allow the client to use a different thread for writing to ease interrupt |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10516](https://issues.apache.org/jira/browse/HBASE-10516) | Refactor code where Threads.sleep is called within a while/for loop |  Major | Client, master, regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10506](https://issues.apache.org/jira/browse/HBASE-10506) | Fail-fast if client connection is lost before the real call be executed in RPC layer |  Major | IPC/RPC | Liang Xie | Liang Xie |
| [HBASE-10500](https://issues.apache.org/jira/browse/HBASE-10500) | Some tools OOM when BucketCache is enabled |  Major | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10495](https://issues.apache.org/jira/browse/HBASE-10495) | upgrade script is printing usage two times with help option. |  Minor | Usability | rajeshbabu | rajeshbabu |
| [HBASE-10490](https://issues.apache.org/jira/browse/HBASE-10490) | Simplify RpcClient code |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10482](https://issues.apache.org/jira/browse/HBASE-10482) | ReplicationSyncUp doesn't clean up its ZK, needed for tests |  Major | Replication | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10481](https://issues.apache.org/jira/browse/HBASE-10481) | API Compatibility JDiff script does not properly handle arguments in reverse order |  Minor | test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10478](https://issues.apache.org/jira/browse/HBASE-10478) | Hbase book presentations page has broken link |  Minor | documentation | Vivek Ganesan | Vivek Ganesan |
| [HBASE-10477](https://issues.apache.org/jira/browse/HBASE-10477) | Regression from HBASE-10337 |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10472](https://issues.apache.org/jira/browse/HBASE-10472) | Manage the interruption in ZKUtil#getData |  Major | Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10469](https://issues.apache.org/jira/browse/HBASE-10469) | Hbase book client.html has a broken link |  Minor | documentation | Vivek Ganesan | Vivek Ganesan |
| [HBASE-10459](https://issues.apache.org/jira/browse/HBASE-10459) | Broken link F.1. HBase Videos |  Trivial | documentation | Richard Shaw | Richard Shaw |
| [HBASE-10458](https://issues.apache.org/jira/browse/HBASE-10458) | Typo in book chapter 9 architecture.html |  Trivial | documentation | Richard Shaw | Richard Shaw |
| [HBASE-10456](https://issues.apache.org/jira/browse/HBASE-10456) | Balancer should not run if it's just turned off. |  Minor | Balancer, hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10455](https://issues.apache.org/jira/browse/HBASE-10455) | cleanup InterruptedException management |  Major | Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10452](https://issues.apache.org/jira/browse/HBASE-10452) | Fix potential bugs in exception handlers |  Major | Client, master, regionserver, util | Ding Yuan | Ding Yuan |
| [HBASE-10449](https://issues.apache.org/jira/browse/HBASE-10449) | Wrong execution pool configuration in HConnectionManager |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10448](https://issues.apache.org/jira/browse/HBASE-10448) | ZKUtil create and watch methods don't set watch in some cases |  Major | Zookeeper | Jerry He | Jerry He |
| [HBASE-10446](https://issues.apache.org/jira/browse/HBASE-10446) | Backup master gives Error 500 for debug dump |  Minor | UI | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10442](https://issues.apache.org/jira/browse/HBASE-10442) | prepareDelete() isn't called before doPreMutationHook for a row deletion case |  Critical | Coprocessors | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10436](https://issues.apache.org/jira/browse/HBASE-10436) | restore regionserver lists removed from hbase 0.96+ jmx |  Critical | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10432](https://issues.apache.org/jira/browse/HBASE-10432) | Rpc retries non-recoverable error |  Minor | IPC/RPC | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10429](https://issues.apache.org/jira/browse/HBASE-10429) | Make Visibility Controller to throw a better msg if it is of type RegionServerCoprocessor |  Minor | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10428](https://issues.apache.org/jira/browse/HBASE-10428) | Test jars should have scope test |  Minor | build | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10422](https://issues.apache.org/jira/browse/HBASE-10422) | ZeroCopyLiteralByteString.zeroCopyGetBytes has an unusable prototype and conflicts with AsyncHBase |  Major | Client, Protobufs | Benoit Sigoure | Benoit Sigoure |
| [HBASE-10413](https://issues.apache.org/jira/browse/HBASE-10413) | Tablesplit.getLength returns 0 |  Major | Client, mapreduce | Lukas Nalezenec | Lukas Nalezenec |
| [HBASE-10401](https://issues.apache.org/jira/browse/HBASE-10401) | [hbck] perform overlap group merges in parallel |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10400](https://issues.apache.org/jira/browse/HBASE-10400) | [hbck] Continue if region dir missing on region merge attempt |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10392](https://issues.apache.org/jira/browse/HBASE-10392) | Correct references to hbase.regionserver.global.memstore.upperLimit |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10370](https://issues.apache.org/jira/browse/HBASE-10370) | Compaction in out-of-date Store causes region split failure |  Critical | Compaction | Liu Shaohui | Liu Shaohui |
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
| [HBASE-10251](https://issues.apache.org/jira/browse/HBASE-10251) | Restore API Compat for PerformanceEvaluation.generateValue() |  Major | Client | Aleksandr Shulman | Dima Spivak |
| [HBASE-10232](https://issues.apache.org/jira/browse/HBASE-10232) | Remove native profile from hbase-shell |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-10226](https://issues.apache.org/jira/browse/HBASE-10226) | [AccessController] Namespace grants not always checked |  Critical | security | Andrew Purtell | Andrew Purtell |
| [HBASE-10225](https://issues.apache.org/jira/browse/HBASE-10225) | Bug in calls to RegionObsever.postScannerFilterRow |  Major | Coprocessors | Lars Hofhansl | Anoop Sam John |
| [HBASE-10215](https://issues.apache.org/jira/browse/HBASE-10215) | TableNotFoundException should be thrown after removing stale znode in ETH |  Minor | master | rajeshbabu | rajeshbabu |
| [HBASE-10205](https://issues.apache.org/jira/browse/HBASE-10205) | ConcurrentModificationException in BucketAllocator |  Minor | regionserver | Arjen Roodselaar | Arjen Roodselaar |
| [HBASE-10194](https://issues.apache.org/jira/browse/HBASE-10194) | [Usability]: Instructions in CompactionTool no longer accurate because of namespaces |  Minor | Compaction, util | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10193](https://issues.apache.org/jira/browse/HBASE-10193) | Cleanup HRegion if one of the store fails to open at region initialization |  Critical | regionserver | Aditya Kishore | Aditya Kishore |
| [HBASE-10186](https://issues.apache.org/jira/browse/HBASE-10186) | region\_mover.rb broken because ServerName constructor is changed to private |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10179](https://issues.apache.org/jira/browse/HBASE-10179) | HRegionServer underreports readRequestCounts by 1 under certain conditions |  Minor | metrics | Perry Trolard | Perry Trolard |
| [HBASE-10163](https://issues.apache.org/jira/browse/HBASE-10163) | Example Thrift DemoClient is flaky |  Trivial | Thrift | Enis Soztutar | Enis Soztutar |
| [HBASE-10155](https://issues.apache.org/jira/browse/HBASE-10155) | HRegion isRecovering state is wrongly coming in postOpen hook |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-10137](https://issues.apache.org/jira/browse/HBASE-10137) | GeneralBulkAssigner with retain assignment plan can be used in EnableTableHandler to bulk assign the regions |  Major | Region Assignment | rajeshbabu | rajeshbabu |
| [HBASE-10120](https://issues.apache.org/jira/browse/HBASE-10120) | start-hbase.sh doesn't respect --config in non-distributed mode |  Trivial | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | Major compact keeps deletes with future timestamps |  Minor | Compaction, Deletes, regionserver | Max Lapan | Liu Shaohui |
| [HBASE-10117](https://issues.apache.org/jira/browse/HBASE-10117) | Avoid synchronization in HRegionScannerImpl.isFilterDone |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10112](https://issues.apache.org/jira/browse/HBASE-10112) | Hbase rest query params for maxVersions and maxValues are not parsed |  Minor | REST | Koert Kuipers | Jean-Marc Spaggiari |
| [HBASE-10108](https://issues.apache.org/jira/browse/HBASE-10108) | NullPointerException thrown while use Canary with '-regionserver' option |  Minor | monitoring | takeshi.miao | takeshi.miao |
| [HBASE-10098](https://issues.apache.org/jira/browse/HBASE-10098) | [WINDOWS] pass in native library directory from hadoop for unit tests |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10097](https://issues.apache.org/jira/browse/HBASE-10097) | Remove a region name string creation in HRegion#nextInternal |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10087](https://issues.apache.org/jira/browse/HBASE-10087) | Store should be locked during a memstore snapshot |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10084](https://issues.apache.org/jira/browse/HBASE-10084) | [WINDOWS] bin\hbase.cmd should allow whitespaces in java.library.path and classpath |  Major | scripts | Enis Soztutar | Enis Soztutar |
| [HBASE-10080](https://issues.apache.org/jira/browse/HBASE-10080) | Unnecessary call to locateRegion when creating an HTable instance |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10079](https://issues.apache.org/jira/browse/HBASE-10079) | Race in TableName cache |  Blocker | regionserver | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10073](https://issues.apache.org/jira/browse/HBASE-10073) | Revert HBASE-9718 (Add a test scope dependency on org.slf4j:slf4j-api to hbase-client) |  Major | Zookeeper | Aleksandr Shulman | Andrew Purtell |
| [HBASE-10061](https://issues.apache.org/jira/browse/HBASE-10061) | TableMapReduceUtil.findOrCreateJar calls updateMap(null, ) resulting in thrown NPE |  Minor | mapreduce | Amit Sela | Amit Sela |
| [HBASE-9990](https://issues.apache.org/jira/browse/HBASE-9990) | HTable uses the conf for each "newCaller" |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix |  Major | scripts | Aditya Kishore | Aditya Kishore |
| [HBASE-9708](https://issues.apache.org/jira/browse/HBASE-9708) | Improve Snapshot Name Error Message |  Minor | snapshots | Jesse Anderson | Matteo Bertozzi |
| [HBASE-9485](https://issues.apache.org/jira/browse/HBASE-9485) | TableOutputCommitter should implement recovery if we don't want jobs to start from 0 on RM restart |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-9473](https://issues.apache.org/jira/browse/HBASE-9473) | Change UI to list 'system tables' rather than 'catalog tables'. |  Major | UI | stack | stack |
| [HBASE-9445](https://issues.apache.org/jira/browse/HBASE-9445) | Snapshots should create column family dirs for empty regions |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-9346](https://issues.apache.org/jira/browse/HBASE-9346) | HBCK should provide an option to check if regions boundaries are the same in META and in stores. |  Major | hbck, Operability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9294](https://issues.apache.org/jira/browse/HBASE-9294) | NPE in /rs-status during RS shutdown |  Minor | regionserver | Steve Loughran | Rekha Joshi |
| [HBASE-9151](https://issues.apache.org/jira/browse/HBASE-9151) | HBCK cannot fix when meta server znode deleted, this can happen if all region servers stopped and there are no logs to split. |  Major | hbck | rajeshbabu | rajeshbabu |
| [HBASE-8817](https://issues.apache.org/jira/browse/HBASE-8817) | Enhance The Apache HBase Reference Guide |  Critical | documentation | Thomas Pan | Misty Stanley-Jones |
| [HBASE-8803](https://issues.apache.org/jira/browse/HBASE-8803) | region\_mover.rb should move multiple regions at a time |  Major | Usability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8701](https://issues.apache.org/jira/browse/HBASE-8701) | distributedLogReplay need to apply wal edits in the receiving order of those edits |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8304](https://issues.apache.org/jira/browse/HBASE-8304) | Bulkload fails to remove files if fs.default.name / fs.defaultFS is configured without default port |  Major | HFile, regionserver | Raymond Liu | haosdent |
| [HBASE-8269](https://issues.apache.org/jira/browse/HBASE-8269) | Fix data locallity documentation. |  Minor | documentation | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7963](https://issues.apache.org/jira/browse/HBASE-7963) | HBase VerifyReplication not working when security enabled |  Major | Replication, security | Water Chow | Matteo Bertozzi |
| [HBASE-7226](https://issues.apache.org/jira/browse/HBASE-7226) | HRegion.checkAndMutate uses incorrect comparison result for \<, \<=, \> and \>= |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-6701](https://issues.apache.org/jira/browse/HBASE-6701) | Revisit thrust of paragraph on splitting |  Major | documentation | stack | Misty Stanley-Jones |
| [HBASE-6642](https://issues.apache.org/jira/browse/HBASE-6642) | enable\_all,disable\_all,drop\_all can call "list" command with regex directly. |  Major | shell | Y. SREENIVASULU REDDY | Matteo Bertozzi |
| [HBASE-6506](https://issues.apache.org/jira/browse/HBASE-6506) | Setting CACHE\_BLOCKS to false in an hbase shell scan doesn't work |  Minor | shell | Josh Wymer | stack |
| [HBASE-4931](https://issues.apache.org/jira/browse/HBASE-4931) | CopyTable instructions could be improved. |  Major | documentation, mapreduce | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-3787](https://issues.apache.org/jira/browse/HBASE-3787) | Increment is non-idempotent but client retries RPC |  Blocker | Client | dhruba borthakur | Sergey Shelukhin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11966](https://issues.apache.org/jira/browse/HBASE-11966) | Minor error in TestHRegion.testCheckAndMutate\_WithCorrectValue() |  Minor | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11713](https://issues.apache.org/jira/browse/HBASE-11713) | Adding hbase shell unit test coverage for visibility labels. |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11615](https://issues.apache.org/jira/browse/HBASE-11615) | TestZKLessAMOnCluster.testForceAssignWhileClosing failed on Jenkins |  Major | master | Mike Drob | Jimmy Xiang |
| [HBASE-11010](https://issues.apache.org/jira/browse/HBASE-11010) | TestChangingEncoding is unnecessarily slow |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10988](https://issues.apache.org/jira/browse/HBASE-10988) | Properly wait for server in TestThriftServerCmdLine |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10764](https://issues.apache.org/jira/browse/HBASE-10764) | TestLoadIncrementalHFilesSplitRecovery#testBulkLoadPhaseFailure takes too long |  Minor | test | rajeshbabu | rajeshbabu |
| [HBASE-10480](https://issues.apache.org/jira/browse/HBASE-10480) | TestLogRollPeriod#testWithEdits may fail due to insufficient waiting |  Minor | test | Ted Yu | Matteo Bertozzi |
| [HBASE-9953](https://issues.apache.org/jira/browse/HBASE-9953) | PerformanceEvaluation: Decouple data size from client concurrency |  Minor | Performance | Nick Dimiduk | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11941](https://issues.apache.org/jira/browse/HBASE-11941) | Rebuild site because of major structural changes to HTML |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11934](https://issues.apache.org/jira/browse/HBASE-11934) | Support KeyValueCodec to encode non KeyValue cells. |  Critical | Performance, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-11919](https://issues.apache.org/jira/browse/HBASE-11919) | Remove the deprecated pre/postGet CP hook |  Major | Coprocessors, regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11784](https://issues.apache.org/jira/browse/HBASE-11784) | Document global configuration for maxVersion |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11781](https://issues.apache.org/jira/browse/HBASE-11781) | Document new TableMapReduceUtil scanning options |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11753](https://issues.apache.org/jira/browse/HBASE-11753) | Document HBASE\_SHELL\_OPTS environment variable |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11752](https://issues.apache.org/jira/browse/HBASE-11752) | Document blockcache prefetch option |  Major | BlockCache, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11740](https://issues.apache.org/jira/browse/HBASE-11740) | RegionStates.getRegionAssignments() gets stuck on clone |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11739](https://issues.apache.org/jira/browse/HBASE-11739) | Document blockCache contents report in the UI |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11737](https://issues.apache.org/jira/browse/HBASE-11737) | Document callQueue improvements from HBASE-11355 and HBASE-11724 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11736](https://issues.apache.org/jira/browse/HBASE-11736) | Document SKIP\_FLUSH snapshot option |  Major | documentation, snapshots | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11734](https://issues.apache.org/jira/browse/HBASE-11734) | Document changed behavior of hbase.hstore.time.to.purge.deletes |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11651](https://issues.apache.org/jira/browse/HBASE-11651) | Add conf which disables MetaMigrationConvertingToPB check (for experts only) |  Major | master | stack | stack |
| [HBASE-11573](https://issues.apache.org/jira/browse/HBASE-11573) | Report age on eviction |  Major | BlockCache | stack | stack |
| [HBASE-11559](https://issues.apache.org/jira/browse/HBASE-11559) | Add dumping of DATA block usage to the BlockCache JSON report. |  Major | metrics | stack | stack |
| [HBASE-11520](https://issues.apache.org/jira/browse/HBASE-11520) | Simplify offheap cache config by removing the confusing "hbase.bucketcache.percentage.in.combinedcache" |  Major | io | stack | stack |
| [HBASE-11508](https://issues.apache.org/jira/browse/HBASE-11508) | Document changes to IPC config parameters from HBASE-11492 |  Major | regionserver | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11483](https://issues.apache.org/jira/browse/HBASE-11483) | Check the rest of the book for new XML validity errors and fix |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11471](https://issues.apache.org/jira/browse/HBASE-11471) | Move TableStateManager and ZkTableStateManager and Server to hbase-server |  Major | Client, Consensus, Zookeeper | Mikhail Antonov | Alex Newman |
| [HBASE-11372](https://issues.apache.org/jira/browse/HBASE-11372) | Remove SlabCache |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11318](https://issues.apache.org/jira/browse/HBASE-11318) | Classes in security subpackages missing @InterfaceAudience annotations. |  Major | security | Jonathan Hsieh | Andrew Purtell |
| [HBASE-11307](https://issues.apache.org/jira/browse/HBASE-11307) | Deprecate SlabCache |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11280](https://issues.apache.org/jira/browse/HBASE-11280) | Document distributed log replay and distributed log splitting |  Major | documentation, MTTR, wal | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11229](https://issues.apache.org/jira/browse/HBASE-11229) | Change block cache percentage metrics to be doubles rather than ints |  Major | metrics | stack | stack |
| [HBASE-11171](https://issues.apache.org/jira/browse/HBASE-11171) | More doc improvements on block cache options |  Major | documentation | stack | stack |
| [HBASE-11161](https://issues.apache.org/jira/browse/HBASE-11161) | Provide example of POJO encoding with protobuf |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11140](https://issues.apache.org/jira/browse/HBASE-11140) | LocalHBaseCluster should create ConsensusProvider per each server |  Major | Consensus | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11135](https://issues.apache.org/jira/browse/HBASE-11135) | Change region sequenceid generation so happens earlier in the append cycle rather than just before added to file |  Major | wal | stack | stack |
| [HBASE-11108](https://issues.apache.org/jira/browse/HBASE-11108) | Split ZKTable into interface and implementation |  Major | Consensus, Zookeeper | Konstantin Boudnik | Mikhail Antonov |
| [HBASE-11102](https://issues.apache.org/jira/browse/HBASE-11102) | Document JDK versions supported by each release |  Major | documentation | Enis Soztutar | Misty Stanley-Jones |
| [HBASE-11098](https://issues.apache.org/jira/browse/HBASE-11098) | Improve documentation around our blockcache options |  Major | documentation | stack | stack |
| [HBASE-11092](https://issues.apache.org/jira/browse/HBASE-11092) | Server interface should have method getConsensusProvider() |  Major | Consensus | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11072](https://issues.apache.org/jira/browse/HBASE-11072) | Abstract WAL splitting from ZK |  Major | Consensus, Zookeeper | Mikhail Antonov | Sergey Soldatov |
| [HBASE-11069](https://issues.apache.org/jira/browse/HBASE-11069) | Decouple region merging from ZooKeeper |  Major | Consensus, Zookeeper | Sergey Soldatov | Sergey Soldatov |
| [HBASE-11059](https://issues.apache.org/jira/browse/HBASE-11059) | ZK-less region assignment |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11025](https://issues.apache.org/jira/browse/HBASE-11025) | Infrastructure for pluggable consensus service |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-10985](https://issues.apache.org/jira/browse/HBASE-10985) | Decouple Split Transaction from Zookeeper |  Major | Consensus, Zookeeper | Sergey Soldatov | Sergey Soldatov |
| [HBASE-10972](https://issues.apache.org/jira/browse/HBASE-10972) | OOBE in prefix key encoding |  Major | Scanners | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-10962](https://issues.apache.org/jira/browse/HBASE-10962) | Decouple region opening (HM and HRS) from ZK |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-10957](https://issues.apache.org/jira/browse/HBASE-10957) | HBASE-10070: HMaster can abort with NPE in #rebuildUserRegions |  Major | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10915](https://issues.apache.org/jira/browse/HBASE-10915) | Decouple region closing (HM and HRS) from ZK |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-10888](https://issues.apache.org/jira/browse/HBASE-10888) | Enable distributed log replay as default |  Major | MTTR, wal | stack | stack |
| [HBASE-10855](https://issues.apache.org/jira/browse/HBASE-10855) | Enable hfilev3 by default |  Major | HFile | stack | stack |
| [HBASE-10841](https://issues.apache.org/jira/browse/HBASE-10841) | Scan,Get,Put,Delete,etc setters should consistently return this |  Minor | Client, Usability | Nick Dimiduk | Enis Soztutar |
| [HBASE-10817](https://issues.apache.org/jira/browse/HBASE-10817) | Add some tests on a real cluster for replica: multi master, replication |  Minor | master, regionserver, Replication | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10815](https://issues.apache.org/jira/browse/HBASE-10815) | Master regionserver should be rolling-upgradable |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10791](https://issues.apache.org/jira/browse/HBASE-10791) | Add integration test to demonstrate performance improvement |  Major | Performance, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10750](https://issues.apache.org/jira/browse/HBASE-10750) | Pluggable MemStoreLAB |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-10741](https://issues.apache.org/jira/browse/HBASE-10741) | Deprecate HTablePool and HTableFactory |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10688](https://issues.apache.org/jira/browse/HBASE-10688) | Add a draining\_node script to manage nodes in draining mode |  Major | scripts | Enis Soztutar | Enis Soztutar |
| [HBASE-10652](https://issues.apache.org/jira/browse/HBASE-10652) | Fix incorrect handling of IE that restores current thread's interrupt status within while/for loops in rpc |  Minor | regionserver, Replication | Honghua Feng | Honghua Feng |
| [HBASE-10651](https://issues.apache.org/jira/browse/HBASE-10651) | Fix incorrect handling of IE that restores current thread's interrupt status within while/for loops in Replication |  Major | regionserver, Replication | Honghua Feng | Honghua Feng |
| [HBASE-10650](https://issues.apache.org/jira/browse/HBASE-10650) | Fix incorrect handling of IE that restores current thread's interrupt status within while/for loops in RegionServer |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10561](https://issues.apache.org/jira/browse/HBASE-10561) | Forward port: HBASE-10212 New rpc metric: number of active handler |  Major | IPC/RPC | Lars Hofhansl | Liang Xie |
| [HBASE-10526](https://issues.apache.org/jira/browse/HBASE-10526) | Using Cell instead of KeyValue in HFileOutputFormat |  Major | mapreduce | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10524](https://issues.apache.org/jira/browse/HBASE-10524) | Correct wrong handling and add proper handling for swallowed InterruptedException thrown by Thread.sleep in regionserver |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10523](https://issues.apache.org/jira/browse/HBASE-10523) | Correct wrong handling and add proper handling for swallowed InterruptedException thrown by Thread.sleep in util |  Major | util | Honghua Feng | Honghua Feng |
| [HBASE-10522](https://issues.apache.org/jira/browse/HBASE-10522) | Correct wrong handling and add proper handling for swallowed InterruptedException thrown by Thread.sleep in client |  Major | Client | Honghua Feng | Honghua Feng |
| [HBASE-10521](https://issues.apache.org/jira/browse/HBASE-10521) | Add handling for swallowed InterruptedException thrown by Thread.sleep in RpcServer |  Minor | IPC/RPC | Honghua Feng | Honghua Feng |
| [HBASE-10520](https://issues.apache.org/jira/browse/HBASE-10520) | Add handling for swallowed InterruptedException thrown by Thread.sleep in MiniZooKeeperCluster |  Minor | Zookeeper | Honghua Feng | Honghua Feng |
| [HBASE-10519](https://issues.apache.org/jira/browse/HBASE-10519) | Add handling for swallowed InterruptedException thrown by Thread.sleep in rest related files |  Minor | REST | Honghua Feng | Honghua Feng |
| [HBASE-10362](https://issues.apache.org/jira/browse/HBASE-10362) | HBCK changes for supporting region replicas |  Major | hbck | Enis Soztutar | Devaraj Das |
| [HBASE-10361](https://issues.apache.org/jira/browse/HBASE-10361) | Enable/AlterTable support for region replicas |  Major | master | Enis Soztutar | Devaraj Das |
| [HBASE-10357](https://issues.apache.org/jira/browse/HBASE-10357) | Failover RPC's for scans |  Major | Client | Enis Soztutar | Devaraj Das |
| [HBASE-10356](https://issues.apache.org/jira/browse/HBASE-10356) | Failover RPC's for multi-get |  Major | Client | Enis Soztutar | Sergey Shelukhin |
| [HBASE-10355](https://issues.apache.org/jira/browse/HBASE-10355) | Failover RPC's from client using region replicas |  Major | Client | Enis Soztutar | Nicolas Liochon |
| [HBASE-10354](https://issues.apache.org/jira/browse/HBASE-10354) | Add an API for defining consistency per request |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-10352](https://issues.apache.org/jira/browse/HBASE-10352) | Region and RegionServer changes for opening region replicas, and refreshing store files |  Major | Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-10351](https://issues.apache.org/jira/browse/HBASE-10351) | LoadBalancer changes for supporting region replicas |  Major | master | Enis Soztutar | Enis Soztutar |
| [HBASE-10347](https://issues.apache.org/jira/browse/HBASE-10347) | HRegionInfo changes for adding replicaId and MetaEditor/MetaReader changes for region replicas |  Major | Region Assignment | Enis Soztutar | Enis Soztutar |
| [HBASE-10297](https://issues.apache.org/jira/browse/HBASE-10297) | LoadAndVerify Integration Test for cell visibility |  Major | test | Anoop Sam John | Anoop Sam John |
| [HBASE-10169](https://issues.apache.org/jira/browse/HBASE-10169) | Batch coprocessor |  Major | Coprocessors | Jingcheng Du | Jingcheng Du |
| [HBASE-10156](https://issues.apache.org/jira/browse/HBASE-10156) | FSHLog Refactor (WAS -\> Fix up the HBASE-8755 slowdown when low contention) |  Major | wal | stack | stack |
| [HBASE-10094](https://issues.apache.org/jira/browse/HBASE-10094) | Add batching to HLogPerformanceEvaluation |  Major | Performance, wal | stack | Himanshu Vashishtha |
| [HBASE-10043](https://issues.apache.org/jira/browse/HBASE-10043) | Fix Potential Resouce Leak in MultiTableInputFormatBase |  Major | mapreduce | Elliott Clark | Elliott Clark |
| [HBASE-9977](https://issues.apache.org/jira/browse/HBASE-9977) | Define C interface of HBase Client Asynchronous APIs |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-9966](https://issues.apache.org/jira/browse/HBASE-9966) | Create IntegrationTest for Online Bloom Filter Change |  Major | HFile, test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-9941](https://issues.apache.org/jira/browse/HBASE-9941) | The context ClassLoader isn't set while calling into a coprocessor |  Major | Coprocessors | Benoit Sigoure | Andrew Purtell |
| [HBASE-9858](https://issues.apache.org/jira/browse/HBASE-9858) | Integration test and LoadTestTool support for cell Visibility |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-9149](https://issues.apache.org/jira/browse/HBASE-9149) | javadoc cleanup of to reflect .META. rename to hbase:meta |  Critical | documentation | Francis Liu | Misty Stanley-Jones |
| [HBASE-6873](https://issues.apache.org/jira/browse/HBASE-6873) | Clean up Coprocessor loading failure handling |  Blocker | Coprocessors, regionserver | David Arthur | Andrew Purtell |
| [HBASE-2251](https://issues.apache.org/jira/browse/HBASE-2251) | PE defaults to 1k rows - uncommon use case, and easy to hit benchmarks |  Major | Performance | ryan rawson | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11209](https://issues.apache.org/jira/browse/HBASE-11209) | Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10909](https://issues.apache.org/jira/browse/HBASE-10909) | Abstract out ZooKeeper usage in HBase - phase 1 |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-7319](https://issues.apache.org/jira/browse/HBASE-7319) | Extend Cell usage through read path |  Major | Compaction, Performance, regionserver, Scanners | Matt Corgan | ramkrishna.s.vasudevan |
| [HBASE-11858](https://issues.apache.org/jira/browse/HBASE-11858) | Audit regionserver classes that are missing InterfaceAudience |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-11800](https://issues.apache.org/jira/browse/HBASE-11800) | Coprocessor service methods in HTableInterface should be annotated public |  Major | Client | Gary Helmling | Gary Helmling |
| [HBASE-11762](https://issues.apache.org/jira/browse/HBASE-11762) | Record the class name of Codec in WAL header |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-11735](https://issues.apache.org/jira/browse/HBASE-11735) | Document Configurable Bucket Sizes in bucketCache |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11723](https://issues.apache.org/jira/browse/HBASE-11723) | Document all options of bin/hbase command |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11682](https://issues.apache.org/jira/browse/HBASE-11682) | Explain hotspotting |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11666](https://issues.apache.org/jira/browse/HBASE-11666) | Enforce JDK7 javac for builds on branch-1 and master |  Minor | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-11600](https://issues.apache.org/jira/browse/HBASE-11600) | DataInputputStream and DoubleOutputStream are no longer being used |  Trivial | io | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11317](https://issues.apache.org/jira/browse/HBASE-11317) | Expand unit testing to cover Mockito and MRUnit and give more examples |  Trivial | documentation | Mike Drob | Misty Stanley-Jones |
| [HBASE-11227](https://issues.apache.org/jira/browse/HBASE-11227) | Mention 8- and 16-bit fixed-with encodings in OrderedBytes docstring |  Trivial | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11204](https://issues.apache.org/jira/browse/HBASE-11204) | Document bandwidth consumption limit feature for ExportSnapshot |  Minor | snapshots | Ted Yu | Misty Stanley-Jones |
| [HBASE-11199](https://issues.apache.org/jira/browse/HBASE-11199) | One-time effort to pretty-print the Docbook XML, to make further patch review easier |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11154](https://issues.apache.org/jira/browse/HBASE-11154) | Document how to use Reverse Scan API |  Major | documentation, Scanners | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11016](https://issues.apache.org/jira/browse/HBASE-11016) | Remove Filter#filterRow(List) |  Minor | Filters | Ted Yu | Ted Yu |
| [HBASE-10473](https://issues.apache.org/jira/browse/HBASE-10473) | Add utility for adorning http Context |  Major | UI | stack | stack |
| [HBASE-10439](https://issues.apache.org/jira/browse/HBASE-10439) | Document how to configure REST server impersonation |  Minor | documentation | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10206](https://issues.apache.org/jira/browse/HBASE-10206) | Explain tags in the hbase book |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-9733](https://issues.apache.org/jira/browse/HBASE-9733) | Book should have individual Disqus comment per page |  Major | documentation | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-9580](https://issues.apache.org/jira/browse/HBASE-9580) | Document the meaning of @InterfaceAudience in hbase ref guide |  Major | documentation | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-8844](https://issues.apache.org/jira/browse/HBASE-8844) | Document the removal of replication state AKA start/stop\_replication |  Minor | documentation | Patrick | Misty Stanley-Jones |
| [HBASE-7394](https://issues.apache.org/jira/browse/HBASE-7394) | Document security config requirements from HBASE-7357 |  Major | documentation | Gary Helmling | Misty Stanley-Jones |
| [HBASE-6192](https://issues.apache.org/jira/browse/HBASE-6192) | Document ACL matrix in the book |  Major | documentation, security | Enis Soztutar | Misty Stanley-Jones |
| [HBASE-6139](https://issues.apache.org/jira/browse/HBASE-6139) | Add troubleshooting section for CentOS 6.2 page allocation failure issue |  Major | documentation | Andrew Purtell | Misty Stanley-Jones |
| [HBASE-4456](https://issues.apache.org/jira/browse/HBASE-4456) | [doc] Add a section about RS failover |  Major | documentation | Jean-Daniel Cryans | Misty Stanley-Jones |


