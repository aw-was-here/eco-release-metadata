
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

## Release 0.99.0 - 2014-09-22

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10073](https://issues.apache.org/jira/browse/HBASE-10073) | Revert HBASE-9718 (Add a test scope dependency on org.slf4j:slf4j-api to hbase-client) |  Major | Zookeeper | Aleksandr Shulman | Andrew Purtell |
| [HBASE-6873](https://issues.apache.org/jira/browse/HBASE-6873) | Clean up Coprocessor loading failure handling |  Blocker | Coprocessors, regionserver | David Arthur | Andrew Purtell |
| [HBASE-10123](https://issues.apache.org/jira/browse/HBASE-10123) | Change default ports; move them out of linux ephemeral port range |  Critical | . | stack | Jonathan Hsieh |
| [HBASE-9426](https://issues.apache.org/jira/browse/HBASE-9426) | Make custom distributed barrier procedure pluggable |  Major | . | Richard Ding | Richard Ding |
| [HBASE-10422](https://issues.apache.org/jira/browse/HBASE-10422) | ZeroCopyLiteralByteString.zeroCopyGetBytes has an unusable prototype and conflicts with AsyncHBase |  Major | Client, Protobufs | Benoit Sigoure | Benoit Sigoure |
| [HBASE-10755](https://issues.apache.org/jira/browse/HBASE-10755) | MetricsRegionSourceImpl creates metrics that start with a lower case |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10781](https://issues.apache.org/jira/browse/HBASE-10781) | Remove hadoop-one-compat module and all references to hadoop1 |  Major | . | stack | stack |
| [HBASE-10690](https://issues.apache.org/jira/browse/HBASE-10690) | Drop Hadoop-1 support |  Critical | . | Enis Soztutar | stack |
| [HBASE-10746](https://issues.apache.org/jira/browse/HBASE-10746) | Bump the version of HTrace to 3.0 |  Minor | util | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-10796](https://issues.apache.org/jira/browse/HBASE-10796) | Set default log level as INFO |  Major | . | stack | stack |
| [HBASE-10855](https://issues.apache.org/jira/browse/HBASE-10855) | Enable hfilev3 by default |  Major | HFile | stack | stack |
| [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | Delete mutation is not consistent with Put wrt timestamp |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-11054](https://issues.apache.org/jira/browse/HBASE-11054) | Create new hook in StoreScanner to help user creating his own delete tracker |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5697](https://issues.apache.org/jira/browse/HBASE-5697) | Audit HBase for usage of deprecated hadoop 0.20.x property names. |  Major | . | Jonathan Hsieh | Srikanth Srungarapu |
| [HBASE-11077](https://issues.apache.org/jira/browse/HBASE-11077) | [AccessController] Restore compatible early-out access denial |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11016](https://issues.apache.org/jira/browse/HBASE-11016) | Remove Filter#filterRow(List) |  Minor | Filters | Ted Yu | Ted Yu |
| [HBASE-11229](https://issues.apache.org/jira/browse/HBASE-11229) | Change block cache percentage metrics to be doubles rather than ints |  Major | metrics | stack | stack |
| [HBASE-11805](https://issues.apache.org/jira/browse/HBASE-11805) | KeyValue to Cell Convert in WALEdit APIs |  Major | wal | Anoop Sam John | Anoop Sam John |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7667](https://issues.apache.org/jira/browse/HBASE-7667) | Support stripe compaction |  Major | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10119](https://issues.apache.org/jira/browse/HBASE-10119) | Allow HBase coprocessors to clean up when they fail |  Major | . | Benoit Sigoure | Benoit Sigoure |
| [HBASE-10151](https://issues.apache.org/jira/browse/HBASE-10151) | No-op HeapMemoryTuner |  Major | . | Andrew Purtell | Anoop Sam John |
| [HBASE-9047](https://issues.apache.org/jira/browse/HBASE-9047) | Tool to handle finishing replication when the cluster is offline |  Major | . | Jean-Daniel Cryans | Demai Ni |
| [HBASE-6104](https://issues.apache.org/jira/browse/HBASE-6104) | Require EXEC permission to call coprocessor endpoints |  Major | Coprocessors, security | Gary Helmling | Andrew Purtell |
| [HBASE-10416](https://issues.apache.org/jira/browse/HBASE-10416) | Improvements to the import flow |  Major | mapreduce | Vasu Mariyala | Vasu Mariyala |
| [HBASE-8751](https://issues.apache.org/jira/browse/HBASE-8751) | Enable peer cluster to choose/change the ColumnFamilies/Tables it really want to replicate from a source cluster |  Major | Replication | Honghua Feng | Honghua Feng |
| [HBASE-10881](https://issues.apache.org/jira/browse/HBASE-10881) | Support reverse scan in thrift2 |  Minor | Thrift | Liu Shaohui | Liu Shaohui |
| [HBASE-10935](https://issues.apache.org/jira/browse/HBASE-10935) | support snapshot policy where flush memstore can be skipped to prevent production cluster freeze |  Minor | shell, snapshots | Tianying Chang | Tianying Chang |
| [HBASE-4089](https://issues.apache.org/jira/browse/HBASE-4089) | blockCache contents report |  Major | . | Doug Meil | stack |
| [HBASE-11724](https://issues.apache.org/jira/browse/HBASE-11724) | Add to RWQueueRpcExecutor the ability to split get and scan handlers |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11885](https://issues.apache.org/jira/browse/HBASE-11885) | Provide a Dockerfile to easily build and run HBase from source |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-11909](https://issues.apache.org/jira/browse/HBASE-11909) | Region count listed by HMaster UI and hbck are different |  Minor | documentation | Gautam Gopalakrishnan | Misty Stanley-Jones |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10074](https://issues.apache.org/jira/browse/HBASE-10074) | consolidate and improve capacity/sizing documentation |  Major | documentation | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-4163](https://issues.apache.org/jira/browse/HBASE-4163) | Create Split Strategy for YCSB Benchmark |  Minor | util | Nicolas Spiegelberg | Luke Lu |
| [HBASE-10010](https://issues.apache.org/jira/browse/HBASE-10010) | eliminate the put latency spike on the new log file beginning |  Major | regionserver | Liang Xie | Liang Xie |
| [HBASE-5349](https://issues.apache.org/jira/browse/HBASE-5349) | Automagically tweak global memstore and block cache sizes based on workload |  Major | . | Jean-Daniel Cryans | Anoop Sam John |
| [HBASE-10048](https://issues.apache.org/jira/browse/HBASE-10048) | Add hlog number metric in regionserver |  Minor | metrics | Liu Shaohui | Liu Shaohui |
| [HBASE-10086](https://issues.apache.org/jira/browse/HBASE-10086) | [book] document the  HBase canary tool usage in the HBase Book |  Minor | documentation | takeshi.miao | takeshi.miao |
| [HBASE-10128](https://issues.apache.org/jira/browse/HBASE-10128) | Improve the copy table doc to include information about versions |  Trivial | documentation | bharath v | bharath v |
| [HBASE-10116](https://issues.apache.org/jira/browse/HBASE-10116) | SlabCache metrics improvements |  Minor | metrics, regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8755](https://issues.apache.org/jira/browse/HBASE-8755) | A new write thread model for HLog to improve the overall HBase write throughput |  Critical | Performance, wal | Honghua Feng | Honghua Feng |
| [HBASE-9829](https://issues.apache.org/jira/browse/HBASE-9829) | make the compaction logging less confusing |  Minor | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10164](https://issues.apache.org/jira/browse/HBASE-10164) | Allow heapsize of different units to be passed as HBASE\_HEAPSIZE |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10157](https://issues.apache.org/jira/browse/HBASE-10157) | Provide CP hook post log replay |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-7088](https://issues.apache.org/jira/browse/HBASE-7088) | Duplicate code in RowCounter |  Minor | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9892](https://issues.apache.org/jira/browse/HBASE-9892) | Add info port to ServerName to support multi instances in a node |  Critical | . | Liu Shaohui | Liu Shaohui |
| [HBASE-9524](https://issues.apache.org/jira/browse/HBASE-9524) | Multi row get does not return any results even if any one of the rows specified in the query is missing and improve exception handling |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9866](https://issues.apache.org/jira/browse/HBASE-9866) | Support the mode where REST server authorizes proxy users |  Major | REST | Devaraj Das | Devaraj Das |
| [HBASE-10173](https://issues.apache.org/jira/browse/HBASE-10173) | Need HFile version check in security coprocessors |  Critical | security | Anoop Sam John | Andrew Purtell |
| [HBASE-10211](https://issues.apache.org/jira/browse/HBASE-10211) | Improve AccessControl documentation in hbase book |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10175](https://issues.apache.org/jira/browse/HBASE-10175) | 2-thread ChaosMonkey steps on its own toes |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10229](https://issues.apache.org/jira/browse/HBASE-10229) | Support OperationAttributes in Increment and Append in Shell |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10239](https://issues.apache.org/jira/browse/HBASE-10239) | Improve determinism and debugability of TestAccessController |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10228](https://issues.apache.org/jira/browse/HBASE-10228) | Support setCellVisibility and setAuthorizations in Shell |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10252](https://issues.apache.org/jira/browse/HBASE-10252) | Don't write back to WAL/memstore when Increment amount is zero (mostly for query rather than update intention) |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-5923](https://issues.apache.org/jira/browse/HBASE-5923) | Cleanup checkAndXXX logic |  Major | Client, regionserver | Lars Hofhansl | Honghua Feng |
| [HBASE-10213](https://issues.apache.org/jira/browse/HBASE-10213) | Add read log size per second metrics for replication source |  Minor | metrics, Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-10263](https://issues.apache.org/jira/browse/HBASE-10263) | make LruBlockCache single/multi/in-memory ratio user-configurable and provide preemptive mode for in-memory type block |  Major | io | Honghua Feng | Honghua Feng |
| [HBASE-10265](https://issues.apache.org/jira/browse/HBASE-10265) | Upgrade to commons-logging 1.1.3 |  Major | build | Liang Xie | Liang Xie |
| [HBASE-10331](https://issues.apache.org/jira/browse/HBASE-10331) | Insure security tests use SecureTestUtil methods for grants |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10324](https://issues.apache.org/jira/browse/HBASE-10324) | refactor deferred-log-flush/Durability related interface/code/naming to align with changed semantic of the new write thread model |  Major | Client, regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10344](https://issues.apache.org/jira/browse/HBASE-10344) | Improve write performance by ignoring sync to hdfs when an asyncer's writes have been synced by other asyncer |  Major | . | Honghua Feng | Honghua Feng |
| [HBASE-10368](https://issues.apache.org/jira/browse/HBASE-10368) | Add Mutation.setWriteToWAL() back to 0.98 |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-9343](https://issues.apache.org/jira/browse/HBASE-9343) | Implement stateless scanner for Stargate |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-10346](https://issues.apache.org/jira/browse/HBASE-10346) | Add Documentation for stateless scanner |  Minor | REST | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-10373](https://issues.apache.org/jira/browse/HBASE-10373) | Add more details info for ACL group in HBase book |  Minor | documentation, security | takeshi.miao | takeshi.miao |
| [HBASE-10323](https://issues.apache.org/jira/browse/HBASE-10323) | Auto detect data block encoding in HFileOutputFormat |  Major | mapreduce | Ishan Chhabra | Ishan Chhabra |
| [HBASE-10423](https://issues.apache.org/jira/browse/HBASE-10423) | Report back the message of split or rollback failure to the master |  Trivial | regionserver | Harsh J | Harsh J |
| [HBASE-10430](https://issues.apache.org/jira/browse/HBASE-10430) | Support compressTags in shell for enabling tag encoding |  Minor | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10427](https://issues.apache.org/jira/browse/HBASE-10427) | clean up HRegionLocation/ServerName usage |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10395](https://issues.apache.org/jira/browse/HBASE-10395) | endTime won't be set in VerifyReplication if startTime is not set |  Minor | mapreduce, Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-10471](https://issues.apache.org/jira/browse/HBASE-10471) | Remove HTD.isAsyncLogFlush() from trunk |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10277](https://issues.apache.org/jira/browse/HBASE-10277) | refactor AsyncProcess |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10479](https://issues.apache.org/jira/browse/HBASE-10479) | HConnection interface is public but is used internally, and contains a bunch of methods |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10389](https://issues.apache.org/jira/browse/HBASE-10389) | Add namespace help info in table related shell commands |  Major | shell | Jerry He | Jerry He |
| [HBASE-9501](https://issues.apache.org/jira/browse/HBASE-9501) | Provide throttling for replication |  Major | Replication | Honghua Feng | Honghua Feng |
| [HBASE-10487](https://issues.apache.org/jira/browse/HBASE-10487) | Avoid allocating new KeyValue and according bytes-copying for appended kvs which don't have existing values |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-7849](https://issues.apache.org/jira/browse/HBASE-7849) | Provide administrative limits around bulkloads of files into a single region |  Major | regionserver | Harsh J | Jimmy Xiang |
| [HBASE-10511](https://issues.apache.org/jira/browse/HBASE-10511) | Add latency percentiles on PerformanceEvaluation |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10498](https://issues.apache.org/jira/browse/HBASE-10498) | Add new APIs to load balancer interface |  Major | Balancer | rajeshbabu | rajeshbabu |
| [HBASE-10518](https://issues.apache.org/jira/browse/HBASE-10518) | DirectMemoryUtils.getDirectMemoryUsage spams when none is configured |  Major | . | Jean-Daniel Cryans | Nick Dimiduk |
| [HBASE-10419](https://issues.apache.org/jira/browse/HBASE-10419) | Add multiget support to PerformanceEvaluation |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10570](https://issues.apache.org/jira/browse/HBASE-10570) | Allow overrides of Surefire secondPartForkMode and testFailureIgnore |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10589](https://issues.apache.org/jira/browse/HBASE-10589) | Reduce unnecessary TestRowProcessorEndpoint resource usage |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10590](https://issues.apache.org/jira/browse/HBASE-10590) | Update contents about tracing in the Reference Guide |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-10597](https://issues.apache.org/jira/browse/HBASE-10597) | IOEngine#read() should return the number of bytes transferred |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10592](https://issues.apache.org/jira/browse/HBASE-10592) | Refactor PerformanceEvaluation tool |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10591](https://issues.apache.org/jira/browse/HBASE-10591) | Sanity check table configuration in createTable |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9999](https://issues.apache.org/jira/browse/HBASE-9999) | Add support for small reverse scan |  Major | . | Ted Yu | Nicolas Liochon |
| [HBASE-10638](https://issues.apache.org/jira/browse/HBASE-10638) | Improve error message when there is no region server available for move |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10678](https://issues.apache.org/jira/browse/HBASE-10678) | Make verifyrep tool implement toolrunner |  Minor | Replication | bharath v | bharath v |
| [HBASE-10693](https://issues.apache.org/jira/browse/HBASE-10693) | Correct declarations of Atomic\* fields from 'volatile' to 'final' |  Minor | io, master | Honghua Feng | Honghua Feng |
| [HBASE-10663](https://issues.apache.org/jira/browse/HBASE-10663) | Some code cleanup of class Leases and ScannerListener.leaseExpired |  Minor | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-8604](https://issues.apache.org/jira/browse/HBASE-8604) | improve reporting of incorrect peer address in replication |  Minor | Replication | Roman Shaposhnik | Rekha Joshi |
| [HBASE-8076](https://issues.apache.org/jira/browse/HBASE-8076) | add better doc for HBaseAdmin#offline API. |  Minor | Admin | rajeshbabu | rajeshbabu |
| [HBASE-10615](https://issues.apache.org/jira/browse/HBASE-10615) | Make LoadIncrementalHFiles skip reference files |  Minor | . | Jerry He | Jerry He |
| [HBASE-10744](https://issues.apache.org/jira/browse/HBASE-10744) | AM#CloseRegion no need to retry on FailedServerException |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10599](https://issues.apache.org/jira/browse/HBASE-10599) | Replace System.currentMillis() with EnvironmentEdge.currentTimeMillis in memstore flusher and related places |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10769](https://issues.apache.org/jira/browse/HBASE-10769) | hbase/bin/hbase-cleanup.sh has wrong usage string |  Trivial | Usability | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [HBASE-10797](https://issues.apache.org/jira/browse/HBASE-10797) | Add support for -h and --help to rolling\_restart.sh and fix the usage string output |  Trivial | Operability | stack | stack |
| [HBASE-10752](https://issues.apache.org/jira/browse/HBASE-10752) | Port HBASE-10270 'Remove DataBlockEncoding from BlockCacheKey' to trunk |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10569](https://issues.apache.org/jira/browse/HBASE-10569) | Co-locate meta and master |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10842](https://issues.apache.org/jira/browse/HBASE-10842) | Some loggers not declared static final |  Minor | . | Richard Ding | Richard Ding |
| [HBASE-10788](https://issues.apache.org/jira/browse/HBASE-10788) | Add 99th percentile of latency in PE |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10887](https://issues.apache.org/jira/browse/HBASE-10887) | tidy ThriftUtilities format |  Trivial | Thrift | Liang Xie | Liang Xie |
| [HBASE-10911](https://issues.apache.org/jira/browse/HBASE-10911) | ServerShutdownHandler#toString shows meaningless message |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10813](https://issues.apache.org/jira/browse/HBASE-10813) | Possible over-catch of exceptions |  Major | regionserver, util | Ding Yuan | Ding Yuan |
| [HBASE-10785](https://issues.apache.org/jira/browse/HBASE-10785) | Metas own location should be cached |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10951](https://issues.apache.org/jira/browse/HBASE-10951) | Use PBKDF2 to generate test encryption keys in the shell |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10902](https://issues.apache.org/jira/browse/HBASE-10902) | Make Secure Bulk Load work across remote secure clusters |  Major | . | Jerry He | Jerry He |
| [HBASE-10823](https://issues.apache.org/jira/browse/HBASE-10823) | Resolve LATEST\_TIMESTAMP to current server time before scanning for ACLs |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10984](https://issues.apache.org/jira/browse/HBASE-10984) | Add description about setting up htrace-zipkin to documentation |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-10934](https://issues.apache.org/jira/browse/HBASE-10934) | Provide Admin interface to abstract HBaseAdmin |  Blocker | Client | Carter | Carter |
| [HBASE-11044](https://issues.apache.org/jira/browse/HBASE-11044) | [Shell] Show groups for user in 'whoami' output |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11000](https://issues.apache.org/jira/browse/HBASE-11000) | Add autoflush option to PerformanceEvaluation |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11001](https://issues.apache.org/jira/browse/HBASE-11001) | Shell support for granting cell permissions for testing |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10884](https://issues.apache.org/jira/browse/HBASE-10884) | [REST] Do not disable block caching when scanning |  Major | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-10952](https://issues.apache.org/jira/browse/HBASE-10952) | [REST] Let the user turn off block caching if desired |  Minor | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-10141](https://issues.apache.org/jira/browse/HBASE-10141) | instead of putting expired store files thru compaction, just archive them |  Minor | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10950](https://issues.apache.org/jira/browse/HBASE-10950) | Add  a configuration point for MaxVersion of Column Family |  Major | Admin, Usability | Demai Ni | Enoch Hsu |
| [HBASE-11047](https://issues.apache.org/jira/browse/HBASE-11047) | Remove TimeoutMontior |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11026](https://issues.apache.org/jira/browse/HBASE-11026) | Provide option to filter out all rows in PerformanceEvaluation tool |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10916](https://issues.apache.org/jira/browse/HBASE-10916) | [VisibilityController] Stackable ScanLabelGenerators |  Critical | . | Andrew Purtell | Anoop Sam John |
| [HBASE-11004](https://issues.apache.org/jira/browse/HBASE-11004) | Extend traces through FSHLog#sync |  Major | wal | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11002](https://issues.apache.org/jira/browse/HBASE-11002) | Shell support for changing cell visibility for testing |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10873](https://issues.apache.org/jira/browse/HBASE-10873) | Control number of regions assigned to backup masters |  Major | Balancer | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11074](https://issues.apache.org/jira/browse/HBASE-11074) | Have PE emit histogram stats as it runs rather than dump once at end of test |  Minor | Performance | stack | stack |
| [HBASE-10892](https://issues.apache.org/jira/browse/HBASE-10892) | [Shell] Add support for globs in user\_permission |  Major | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10960](https://issues.apache.org/jira/browse/HBASE-10960) | Enhance HBase Thrift 1 to include "append" and "checkAndPut" operations |  Major | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11083](https://issues.apache.org/jira/browse/HBASE-11083) | ExportSnapshot should provide capability to limit bandwidth consumption |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-11086](https://issues.apache.org/jira/browse/HBASE-11086) | Add htrace support for PerfEval |  Minor | Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10925](https://issues.apache.org/jira/browse/HBASE-10925) | Do not OOME, throw RowTooBigException instead |  Major | Usability | stack | Mikhail Antonov |
| [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | Align bulk load, flush, and compact to require Action.CREATE |  Major | security | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10883](https://issues.apache.org/jira/browse/HBASE-10883) | Restrict the universe of labels and authorizations |  Major | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-10926](https://issues.apache.org/jira/browse/HBASE-10926) | Use global procedure to flush table memstore cache |  Major | Admin | Jerry He | Jerry He |
| [HBASE-7987](https://issues.apache.org/jira/browse/HBASE-7987) | Snapshot Manifest file instead of multiple empty files |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11119](https://issues.apache.org/jira/browse/HBASE-11119) | Update ExportSnapShot to optionally not use a tmp file on external file system |  Minor | snapshots | Ted Malaska | Ted Malaska |
| [HBASE-8332](https://issues.apache.org/jira/browse/HBASE-8332) | Add truncate as HMaster method |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11128](https://issues.apache.org/jira/browse/HBASE-11128) | Add -target option to ExportSnapshot to export with a different name |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11151](https://issues.apache.org/jira/browse/HBASE-11151) | move tracing modules from hbase-server to hbase-common |  Minor | documentation, util | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-11123](https://issues.apache.org/jira/browse/HBASE-11123) | Upgrade instructions from 0.94 to 0.98 |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11134](https://issues.apache.org/jira/browse/HBASE-11134) | Add a -list-snapshots option to SnapshotInfo |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11137](https://issues.apache.org/jira/browse/HBASE-11137) | Add mapred.TableSnapshotInputFormat |  Major | mapreduce, Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11167](https://issues.apache.org/jira/browse/HBASE-11167) | Avoid usage of java.rmi package Exception in MemStore |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-6990](https://issues.apache.org/jira/browse/HBASE-6990) | Pretty print TTL |  Minor | Usability | Jean-Daniel Cryans | Esteban Gutierrez |
| [HBASE-11007](https://issues.apache.org/jira/browse/HBASE-11007) | BLOCKCACHE in schema descriptor seems not aptly named |  Minor | . | Varun Sharma | Varun Sharma |
| [HBASE-11219](https://issues.apache.org/jira/browse/HBASE-11219) | HRegionServer#createRegionLoad() should reuse RegionLoad.Builder instance when called in a loop |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10835](https://issues.apache.org/jira/browse/HBASE-10835) | DBE encode path improvements |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-9857](https://issues.apache.org/jira/browse/HBASE-9857) | Blockcache prefetch option |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11211](https://issues.apache.org/jira/browse/HBASE-11211) | LoadTestTool option for specifying number of regions per server |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11048](https://issues.apache.org/jira/browse/HBASE-11048) | Support setting custom priority per client RPC |  Major | Client | Jesse Yates | Jesse Yates |
| [HBASE-8970](https://issues.apache.org/jira/browse/HBASE-8970) | [book] Filter language documentation is hidden |  Minor | documentation | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-8807](https://issues.apache.org/jira/browse/HBASE-8807) | HBase MapReduce Job-Launch Documentation Misplaced |  Major | documentation | Ambud Sharma | Misty Stanley-Jones |
| [HBASE-11220](https://issues.apache.org/jira/browse/HBASE-11220) | Add listeners to ServerManager and AssignmentManager |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11201](https://issues.apache.org/jira/browse/HBASE-11201) | Enable global procedure members to return values to procedure master |  Major | . | Jerry He | Jerry He |
| [HBASE-11259](https://issues.apache.org/jira/browse/HBASE-11259) | Compression.java different compressions load system classpath differently causing errors |  Minor | . | Enoch Hsu | Enoch Hsu |
| [HBASE-11126](https://issues.apache.org/jira/browse/HBASE-11126) | Add RegionObserver pre hooks that operate under row lock |  Major | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-10641](https://issues.apache.org/jira/browse/HBASE-10641) | Configurable Bucket Sizes in bucketCache |  Major | regionserver | Biju Nair | Nick Dimiduk |
| [HBASE-11305](https://issues.apache.org/jira/browse/HBASE-11305) | Remove bunch of unused imports in HConnectionManager |  Trivial | Client | Mikhail Antonov | Mikhail Antonov |
| [HBASE-8763](https://issues.apache.org/jira/browse/HBASE-8763) | Combine MVCC and SeqId |  Critical | regionserver | Enis Soztutar | Jeffrey Zhong |
| [HBASE-11304](https://issues.apache.org/jira/browse/HBASE-11304) | Enable HBaseAdmin.execProcedure to return data from procedure execution |  Minor | Client | Jerry He | Jerry He |
| [HBASE-8495](https://issues.apache.org/jira/browse/HBASE-8495) | Change ownership of the directory to bulk load |  Trivial | mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11326](https://issues.apache.org/jira/browse/HBASE-11326) | Use an InputFormat for ExportSnapshot |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10923](https://issues.apache.org/jira/browse/HBASE-10923) | Control where to put meta region |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10871](https://issues.apache.org/jira/browse/HBASE-10871) | Indefinite OPEN/CLOSE wait on busy RegionServers |  Major | Balancer, master, Region Assignment | Harsh J | Esteban Gutierrez |
| [HBASE-8315](https://issues.apache.org/jira/browse/HBASE-8315) | Documentation should have more information of LRU Stats |  Major | documentation | Daisuke Kobayashi | Misty Stanley-Jones |
| [HBASE-11350](https://issues.apache.org/jira/browse/HBASE-11350) | [PE] Allow random value size |  Major | Performance | stack | stack |
| [HBASE-10771](https://issues.apache.org/jira/browse/HBASE-10771) | Primitive type put/get APIs in ByteRange |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11319](https://issues.apache.org/jira/browse/HBASE-11319) | No need to use favored node mapping initialization to find all regions |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11348](https://issues.apache.org/jira/browse/HBASE-11348) | Make frequency and sleep times of  chaos monkeys configurable |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-9345](https://issues.apache.org/jira/browse/HBASE-9345) | Add support for specifying filters in scan |  Minor | REST | Vandana Ayyalasomayajula | Virag Kothari |
| [HBASE-10289](https://issues.apache.org/jira/browse/HBASE-10289) | Avoid random port usage by default JMX Server. Create Custome JMX server |  Minor | . | nijel | Qiang Tian |
| [HBASE-11398](https://issues.apache.org/jira/browse/HBASE-11398) | Print the stripes' state with file size info |  Minor | Compaction | Victor Xu | Victor Xu |
| [HBASE-11390](https://issues.apache.org/jira/browse/HBASE-11390) | PerformanceEvaluation: add an option to use a single connection |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11376](https://issues.apache.org/jira/browse/HBASE-11376) | Presplit table in IntegrationTestBigLinkedList's Generator tool |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-11370](https://issues.apache.org/jira/browse/HBASE-11370) | SSH doesn't need to scan meta if not using ZK for assignment |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11407](https://issues.apache.org/jira/browse/HBASE-11407) | hbase-client should not require Jackson for pure HBase queries be executed |  Minor | Client | Sergey Beryozkin | Sergey Beryozkin |
| [HBASE-10861](https://issues.apache.org/jira/browse/HBASE-10861) | Extend ByteRange to create Mutable and Immutable ByteRange |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11415](https://issues.apache.org/jira/browse/HBASE-11415) | [PE] Dump config before running test |  Trivial | Performance | stack | stack |
| [HBASE-11421](https://issues.apache.org/jira/browse/HBASE-11421) | HTableInterface javadoc correction |  Minor | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-11362](https://issues.apache.org/jira/browse/HBASE-11362) | Minor improvements to LoadTestTool and PerformanceEvaluation |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-11436](https://issues.apache.org/jira/browse/HBASE-11436) | Support start Row and stop Row in HBase Export |  Major | mapreduce | Ward Viaene | Ward Viaene |
| [HBASE-11355](https://issues.apache.org/jira/browse/HBASE-11355) | a couple of callQueue related improvements |  Major | IPC/RPC, Performance | Liang Xie | Matteo Bertozzi |
| [HBASE-11344](https://issues.apache.org/jira/browse/HBASE-11344) | Hide row keys and such from the web UIs |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-4495](https://issues.apache.org/jira/browse/HBASE-4495) | CatalogTracker has an identity crisis; needs to be cut-back in scope |  Major | . | stack | Mikhail Antonov |
| [HBASE-11450](https://issues.apache.org/jira/browse/HBASE-11450) | Improve file size info in SnapshotInfo tool |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11434](https://issues.apache.org/jira/browse/HBASE-11434) | [AccessController] Disallow inbound cells with reserved tags |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11446](https://issues.apache.org/jira/browse/HBASE-11446) | Reduce the frequency of RNG calls in SecureWALCellCodec#EncryptedKvEncoder |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10885](https://issues.apache.org/jira/browse/HBASE-10885) | Support visibility expressions on Deletes |  Blocker | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-11452](https://issues.apache.org/jira/browse/HBASE-11452) | add getUserPermission feature in AccessControlClient as client API |  Major | Client, security | Demai Ni | Demai Ni |
| [HBASE-11315](https://issues.apache.org/jira/browse/HBASE-11315) | Keeping MVCC for configurable longer time |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11240](https://issues.apache.org/jira/browse/HBASE-11240) | Print hdfs pipeline when hlog's sync is slow |  Major | Operability, wal | Liu Shaohui | Liu Shaohui |
| [HBASE-11473](https://issues.apache.org/jira/browse/HBASE-11473) | Add BaseWALObserver class |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11349](https://issues.apache.org/jira/browse/HBASE-11349) | [Thrift] support authentication/impersonation |  Major | security, Thrift | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11444](https://issues.apache.org/jira/browse/HBASE-11444) | Remove use of reflection for User#getShortName |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11491](https://issues.apache.org/jira/browse/HBASE-11491) | Add an option to sleep randomly during the tests with the PE tool |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11437](https://issues.apache.org/jira/browse/HBASE-11437) | Modify cell tag handling code to treat the length as unsigned |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11474](https://issues.apache.org/jira/browse/HBASE-11474) | [Thrift2] support authentication/impersonation |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11497](https://issues.apache.org/jira/browse/HBASE-11497) | Expose RpcScheduling implementations as LimitedPrivate interfaces |  Major | io, regionserver, Usability | Jesse Yates | Jesse Yates |
| [HBASE-11513](https://issues.apache.org/jira/browse/HBASE-11513) | Combine SingleMultiple Queue RpcExecutor into a single class |  Minor | io, regionserver | Jesse Yates | Jesse Yates |
| [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | VM OPTS for shell only |  Major | . | stack | Andrew Purtell |
| [HBASE-7910](https://issues.apache.org/jira/browse/HBASE-7910) | Dont use reflection for security |  Major | . | Enis Soztutar | Mike Drob |
| [HBASE-11566](https://issues.apache.org/jira/browse/HBASE-11566) | make ExportSnapshot extendable by removing 'final' |  Minor | snapshots | Demai Ni | Andrew Purtell |
| [HBASE-11623](https://issues.apache.org/jira/browse/HBASE-11623) | mutateRowsWithLocks might require updatesLock.readLock with waitTime=0 |  Minor | regionserver | Jianwei Cui | Jianwei Cui |
| [HBASE-11516](https://issues.apache.org/jira/browse/HBASE-11516) | Track time spent in executing coprocessors in each region. |  Minor | Coprocessors | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11583](https://issues.apache.org/jira/browse/HBASE-11583) | Refactoring out the configuration changes for enabling VisibilityLabels in the unit tests. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11630](https://issues.apache.org/jira/browse/HBASE-11630) | Refactor TestAdmin to use Admin interface instead of HBaseAdmin |  Major | . | Carter | Carter |
| [HBASE-3270](https://issues.apache.org/jira/browse/HBASE-3270) | When we create the .version file, we should create it in a tmp location and then move it into place |  Minor | master | stack | Andrew Purtell |
| [HBASE-11649](https://issues.apache.org/jira/browse/HBASE-11649) | Add shortcut commands to bin/hbase for test tools |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11631](https://issues.apache.org/jira/browse/HBASE-11631) | Wait a little till server is online in assigning meta |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11650](https://issues.apache.org/jira/browse/HBASE-11650) | Write hbase.id to a temporary location and move into place |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11664](https://issues.apache.org/jira/browse/HBASE-11664) | Build broken - TestVisibilityWithCheckAuths |  Blocker | . | Carter | Carter |
| [HBASE-11068](https://issues.apache.org/jira/browse/HBASE-11068) | Update code to use Admin factory method instead of constructor |  Major | . | Carter | Carter |
| [HBASE-11674](https://issues.apache.org/jira/browse/HBASE-11674) | LoadIncrementalHFiles should be more verbose after unrecoverable error |  Minor | mapreduce | Jan Lukavsky | Jan Lukavsky |
| [HBASE-11667](https://issues.apache.org/jira/browse/HBASE-11667) | Comment ClientScanner logic for NSREs. |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6626](https://issues.apache.org/jira/browse/HBASE-6626) | Add a chapter on HDFS in the troubleshooting section of the HBase reference guide. |  Blocker | documentation | Nicolas Liochon | Misty Stanley-Jones |
| [HBASE-11697](https://issues.apache.org/jira/browse/HBASE-11697) | Improve the 'Too many blocks' message on UI blockcache status page |  Minor | . | Andrew Purtell | Mikhail Antonov |
| [HBASE-11701](https://issues.apache.org/jira/browse/HBASE-11701) | Start and end of memstore flush log should be on the same level |  Trivial | Usability | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11706](https://issues.apache.org/jira/browse/HBASE-11706) | Set versions for VerifyReplication |  Minor | mapreduce | Jianwei Cui | Jianwei Cui |
| [HBASE-11702](https://issues.apache.org/jira/browse/HBASE-11702) | Better introspection of long running compactions |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11438](https://issues.apache.org/jira/browse/HBASE-11438) | [Visibility Controller] Support UTF8 character as Visibility Labels |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11731](https://issues.apache.org/jira/browse/HBASE-11731) | Add option to only run a subset of the shell tests |  Minor | build, shell | Sean Busbey | Sean Busbey |
| [HBASE-11748](https://issues.apache.org/jira/browse/HBASE-11748) | Cleanup and add pool usage tracing to Compression |  Trivial | io | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11749](https://issues.apache.org/jira/browse/HBASE-11749) | Better error logging when coprocessors loading has failed. |  Trivial | Coprocessors, Usability | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11757](https://issues.apache.org/jira/browse/HBASE-11757) | Provide a common base abstract class for both RegionObserver and MasterObserver |  Major | . | Andrew Purtell | Matteo Bertozzi |
| [HBASE-11754](https://issues.apache.org/jira/browse/HBASE-11754) | [Shell] Record table property SPLITS\_FILE in descriptor |  Trivial | . | chendihao | chendihao |
| [HBASE-10202](https://issues.apache.org/jira/browse/HBASE-10202) | Documentation is lacking information about rolling-restart.sh script. |  Major | documentation | Jean-Marc Spaggiari | Misty Stanley-Jones |
| [HBASE-11696](https://issues.apache.org/jira/browse/HBASE-11696) | Make CombinedBlockCache resizable. |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11774](https://issues.apache.org/jira/browse/HBASE-11774) | Avoid allocating unnecessary tag iterators |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11657](https://issues.apache.org/jira/browse/HBASE-11657) | Put HTable region methods in an interface |  Major | . | Carter | Carter |
| [HBASE-11553](https://issues.apache.org/jira/browse/HBASE-11553) | Abstract visibility label related services into an interface |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-8298](https://issues.apache.org/jira/browse/HBASE-8298) | In shell, provide alias of 'desc' for 'describe' |  Trivial | shell | Hari Sekhon | Sean Busbey |
| [HBASE-11828](https://issues.apache.org/jira/browse/HBASE-11828) | callers of SeverName.valueOf should use equals and not == |  Minor | Client | Sean Busbey | Sean Busbey |
| [HBASE-11846](https://issues.apache.org/jira/browse/HBASE-11846) | HStore#assertBulkLoadHFileOk should log if a full HFile verification will be performed during a bulkload |  Trivial | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11810](https://issues.apache.org/jira/browse/HBASE-11810) | Access SSL Passwords through Credential Provider API |  Major | security | Larry McCay | Larry McCay |
| [HBASE-11865](https://issues.apache.org/jira/browse/HBASE-11865) | Result implements CellScannable; rather it should BE a CellScanner |  Major | . | stack | stack |
| [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | [ImportTSV] Abstract labels tags creation into pluggable Interface |  Major | mapreduce, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11826](https://issues.apache.org/jira/browse/HBASE-11826) | Split each tableOrRegionName admin methods into two targetted methods |  Major | . | Carter | Carter |
| [HBASE-11777](https://issues.apache.org/jira/browse/HBASE-11777) | Find a way to set sequenceId on Cells on the server |  Major | . | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-11877](https://issues.apache.org/jira/browse/HBASE-11877) | Make TableSplit more readable |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11440](https://issues.apache.org/jira/browse/HBASE-11440) | Make KeyValueCodecWithTags as the default codec for replication in trunk |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11891](https://issues.apache.org/jira/browse/HBASE-11891) | Introduce HBaseInterfaceAudience level to denote class names that appear in configs. |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-11679](https://issues.apache.org/jira/browse/HBASE-11679) | Replace "HTable" with "HTableInterface" where backwards-compatible |  Major | . | Carter | Carter |
| [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | [blockcache] lazy block decompression |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | HFile tool should implement Tool, disable blockcache by default |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11897](https://issues.apache.org/jira/browse/HBASE-11897) | Add append and remove peer table-cfs cmds for replication |  Minor | Operability | Liu Shaohui | Liu Shaohui |
| [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | HFile tool should be able to print block headers |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11136](https://issues.apache.org/jira/browse/HBASE-11136) | Add permission check to roll WAL writer |  Minor | regionserver, security | Jerry He | Jerry He |
| [HBASE-11873](https://issues.apache.org/jira/browse/HBASE-11873) | Hbase Version CLI enhancement |  Minor | build | Guo Ruijing | Ashish Singhi |
| [HBASE-11825](https://issues.apache.org/jira/browse/HBASE-11825) | Create Connection and ConnectionManager |  Critical | . | Carter | Solomon Duskis |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix |  Major | scripts | Aditya Kishore | Aditya Kishore |
| [HBASE-9754](https://issues.apache.org/jira/browse/HBASE-9754) | Eliminate threadlocal from MVCC code |  Major | . | Lars Hofhansl | Ted Yu |
| [HBASE-10079](https://issues.apache.org/jira/browse/HBASE-10079) | Race in TableName cache |  Blocker | regionserver | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9485](https://issues.apache.org/jira/browse/HBASE-9485) | TableOutputCommitter should implement recovery if we don't want jobs to start from 0 on RM restart |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-10097](https://issues.apache.org/jira/browse/HBASE-10097) | Remove a region name string creation in HRegion#nextInternal |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-3787](https://issues.apache.org/jira/browse/HBASE-3787) | Increment is non-idempotent but client retries RPC |  Blocker | Client | dhruba borthakur | Sergey Shelukhin |
| [HBASE-10061](https://issues.apache.org/jira/browse/HBASE-10061) | TableMapReduceUtil.findOrCreateJar calls updateMap(null, ) resulting in thrown NPE |  Minor | mapreduce | Amit Sela | Amit Sela |
| [HBASE-10099](https://issues.apache.org/jira/browse/HBASE-10099) | javadoc warning introduced by LabelExpander 188: warning - @return tag has no arguments |  Trivial | . | Demai Ni | Demai Ni |
| [HBASE-10108](https://issues.apache.org/jira/browse/HBASE-10108) | NullPointerException thrown while use Canary with '-regionserver' option |  Minor | monitoring | takeshi.miao | takeshi.miao |
| [HBASE-10101](https://issues.apache.org/jira/browse/HBASE-10101) | testOfflineRegionReAssginedAfterMasterRestart times out sometimes. |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10090](https://issues.apache.org/jira/browse/HBASE-10090) | Master could hang in assigning meta |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10112](https://issues.apache.org/jira/browse/HBASE-10112) | Hbase rest query params for maxVersions and maxValues are not parsed |  Minor | REST | Koert Kuipers | Jean-Marc Spaggiari |
| [HBASE-10117](https://issues.apache.org/jira/browse/HBASE-10117) | Avoid synchronization in HRegionScannerImpl.isFilterDone |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10103](https://issues.apache.org/jira/browse/HBASE-10103) | TestNodeHealthCheckChore#testRSHealthChore: Stoppable must have been stopped |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10114](https://issues.apache.org/jira/browse/HBASE-10114) | \_scan\_internal() in table.rb should accept argument that specifies reverse scan |  Major | . | Ted Yu | chunhui shen |
| [HBASE-10120](https://issues.apache.org/jira/browse/HBASE-10120) | start-hbase.sh doesn't respect --config in non-distributed mode |  Trivial | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10069](https://issues.apache.org/jira/browse/HBASE-10069) | Potential duplicate calls to log#appendNoSync() in HRegion#doMiniBatchMutation() |  Minor | . | Ted Yu | Sergey Shelukhin |
| [HBASE-10132](https://issues.apache.org/jira/browse/HBASE-10132) | sun.security.pkcs11.wrapper.PKCS11Exception: CKR\_ARGUMENTS\_BAD |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10135](https://issues.apache.org/jira/browse/HBASE-10135) | Remove ? extends from HLogSplitter#getOutputCounts |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-10107](https://issues.apache.org/jira/browse/HBASE-10107) | [JDK7] TestHBaseSaslRpcClient.testHBaseSaslRpcClientCreation failing on Jenkins |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10149](https://issues.apache.org/jira/browse/HBASE-10149) | TestZKPermissionsWatcher.testPermissionsWatcher test failure |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10155](https://issues.apache.org/jira/browse/HBASE-10155) | HRegion isRecovering state is wrongly coming in postOpen hook |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-10146](https://issues.apache.org/jira/browse/HBASE-10146) | Bump HTrace version to 2.04 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-10163](https://issues.apache.org/jira/browse/HBASE-10163) | Example Thrift DemoClient is flaky |  Trivial | Thrift | Enis Soztutar | Enis Soztutar |
| [HBASE-10098](https://issues.apache.org/jira/browse/HBASE-10098) | [WINDOWS] pass in native library directory from hadoop for unit tests |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10084](https://issues.apache.org/jira/browse/HBASE-10084) | [WINDOWS] bin\hbase.cmd should allow whitespaces in java.library.path and classpath |  Major | scripts | Enis Soztutar | Enis Soztutar |
| [HBASE-10186](https://issues.apache.org/jira/browse/HBASE-10186) | region\_mover.rb broken because ServerName constructor is changed to private |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-10178](https://issues.apache.org/jira/browse/HBASE-10178) | Potential null object dereference in TablePermission#equals() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10182](https://issues.apache.org/jira/browse/HBASE-10182) | Potential null object deference in AssignmentManager#handleRegion() |  Trivial | . | Ted Yu | Jimmy Xiang |
| [HBASE-10179](https://issues.apache.org/jira/browse/HBASE-10179) | HRegionServer underreports readRequestCounts by 1 under certain conditions |  Minor | metrics | Perry Trolard | Perry Trolard |
| [HBASE-10137](https://issues.apache.org/jira/browse/HBASE-10137) | GeneralBulkAssigner with retain assignment plan can be used in EnableTableHandler to bulk assign the regions |  Major | Region Assignment | rajeshbabu | rajeshbabu |
| [HBASE-10187](https://issues.apache.org/jira/browse/HBASE-10187) | AccessController#preOpen - Include 'labels' table also into special tables list. |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10148](https://issues.apache.org/jira/browse/HBASE-10148) | [VisibilityController] Tolerate regions in recovery |  Blocker | . | Andrew Purtell | Anoop Sam John |
| [HBASE-8269](https://issues.apache.org/jira/browse/HBASE-8269) | Fix data locallity documentation. |  Minor | documentation | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8112](https://issues.apache.org/jira/browse/HBASE-8112) | Deprecate HTable#batch(final List\<? extends Row\>) |  Minor | . | Ted Yu | Jean-Marc Spaggiari |
| [HBASE-10142](https://issues.apache.org/jira/browse/HBASE-10142) | TestLogRolling#testLogRollOnDatanodeDeath test failure |  Major | . | Andrew Purtell | Ted Yu |
| [HBASE-10194](https://issues.apache.org/jira/browse/HBASE-10194) | [Usability]: Instructions in CompactionTool no longer accurate because of namespaces |  Minor | Compaction, util | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10196](https://issues.apache.org/jira/browse/HBASE-10196) | Enhance HBCK to understand the case after online region merge |  Major | . | chunhui shen | chunhui shen |
| [HBASE-10207](https://issues.apache.org/jira/browse/HBASE-10207) | ZKVisibilityLabelWatcher : Populate the labels cache on startup |  Blocker | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10138](https://issues.apache.org/jira/browse/HBASE-10138) | incorrect or confusing test value is used in block caches |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10193](https://issues.apache.org/jira/browse/HBASE-10193) | Cleanup HRegion if one of the store fails to open at region initialization |  Critical | regionserver | Aditya Kishore | Aditya Kishore |
| [HBASE-8529](https://issues.apache.org/jira/browse/HBASE-8529) | checkOpen is missing from multi, mutate, get and multiGet etc. |  Minor | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8701](https://issues.apache.org/jira/browse/HBASE-8701) | distributedLogReplay need to apply wal edits in the receiving order of those edits |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10161](https://issues.apache.org/jira/browse/HBASE-10161) | [AccessController] Tolerate regions in recovery |  Blocker | . | Andrew Purtell | Anoop Sam John |
| [HBASE-10219](https://issues.apache.org/jira/browse/HBASE-10219) | HTTPS support for HBase in RegionServerListTmpl.jamon |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10220](https://issues.apache.org/jira/browse/HBASE-10220) | Put all test service principals into the superusers list |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10221](https://issues.apache.org/jira/browse/HBASE-10221) | Region from coprocessor invocations can be null on failure |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10223](https://issues.apache.org/jira/browse/HBASE-10223) | [VisibilityController] cellVisibility presence check on Delete mutation is wrong |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-9151](https://issues.apache.org/jira/browse/HBASE-9151) | HBCK cannot fix when meta server znode deleted, this can happen if all region servers stopped and there are no logs to split. |  Major | hbck | rajeshbabu | rajeshbabu |
| [HBASE-10225](https://issues.apache.org/jira/browse/HBASE-10225) | Bug in calls to RegionObsever.postScannerFilterRow |  Major | Coprocessors | Lars Hofhansl | Anoop Sam John |
| [HBASE-10232](https://issues.apache.org/jira/browse/HBASE-10232) | Remove native profile from hbase-shell |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-10215](https://issues.apache.org/jira/browse/HBASE-10215) | TableNotFoundException should be thrown after removing stale znode in ETH |  Minor | master | rajeshbabu | rajeshbabu |
| [HBASE-10233](https://issues.apache.org/jira/browse/HBASE-10233) | VisibilityController is too chatty at DEBUG level |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10226](https://issues.apache.org/jira/browse/HBASE-10226) | [AccessController] Namespace grants not always checked |  Critical | security | Andrew Purtell | Andrew Purtell |
| [HBASE-10231](https://issues.apache.org/jira/browse/HBASE-10231) | Potential NPE in HBaseFsck#checkMetaRegion() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-9346](https://issues.apache.org/jira/browse/HBASE-9346) | HBCK should provide an option to check if regions boundaries are the same in META and in stores. |  Major | hbck, Operability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7226](https://issues.apache.org/jira/browse/HBASE-7226) | HRegion.checkAndMutate uses incorrect comparison result for \<, \<=, \> and \>= |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10176](https://issues.apache.org/jira/browse/HBASE-10176) | Canary#sniff() should close the HTable instance |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10260](https://issues.apache.org/jira/browse/HBASE-10260) | Canary Doesn't pick up Configuration properly. |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-10267](https://issues.apache.org/jira/browse/HBASE-10267) | TestNamespaceCommands occasionally fails |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10264](https://issues.apache.org/jira/browse/HBASE-10264) | [MapReduce]: CompactionTool in mapred mode is missing classes in its classpath |  Major | Compaction, mapreduce | Aleksandr Shulman | Himanshu Vashishtha |
| [HBASE-10284](https://issues.apache.org/jira/browse/HBASE-10284) | Build broken with svn 1.8 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10272](https://issues.apache.org/jira/browse/HBASE-10272) | Cluster becomes nonoperational if the node hosting the active Master AND ROOT/META table goes offline |  Critical | IPC/RPC | Aditya Kishore | Aditya Kishore |
| [HBASE-10210](https://issues.apache.org/jira/browse/HBASE-10210) | during master startup, RS can be you-are-dead-ed by master in error |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10298](https://issues.apache.org/jira/browse/HBASE-10298) | TestIOFencing occasionally fails |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10268](https://issues.apache.org/jira/browse/HBASE-10268) | TestSplitLogWorker occasionally fails |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10302](https://issues.apache.org/jira/browse/HBASE-10302) | Fix rat check issues in hbase-native-client. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-10307](https://issues.apache.org/jira/browse/HBASE-10307) | IntegrationTestIngestWithEncryption assumes localhost cluster |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10310](https://issues.apache.org/jira/browse/HBASE-10310) | ZNodeCleaner session expired for /hbase/master |  Major | master | Samir Ahmic | Samir Ahmic |
| [HBASE-10318](https://issues.apache.org/jira/browse/HBASE-10318) | generate-hadoopX-poms.sh expects the version to have one extra '-' |  Major | build | Raja Aluri | Raja Aluri |
| [HBASE-10292](https://issues.apache.org/jira/browse/HBASE-10292) | TestRegionServerCoprocessorExceptionWithAbort fails occasionally |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10321](https://issues.apache.org/jira/browse/HBASE-10321) | CellCodec has broken the 96 client to 98 server compatibility |  Blocker | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10326](https://issues.apache.org/jira/browse/HBASE-10326) | Super user should be able scan all the cells irrespective of the visibility labels |  Critical | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10315](https://issues.apache.org/jira/browse/HBASE-10315) | Canary shouldn't exit with 3 if there is no master running. |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-10329](https://issues.apache.org/jira/browse/HBASE-10329) | Fail the writes rather than proceeding silently to prevent data loss when AsyncSyncer encounters null writer and its writes aren't synced by other Asyncer |  Critical | regionserver, wal | Honghua Feng | Honghua Feng |
| [HBASE-10274](https://issues.apache.org/jira/browse/HBASE-10274) | MiniZookeeperCluster should close ZKDatabase when shutdown ZooKeeperServers |  Minor | . | chendihao | chendihao |
| [HBASE-10320](https://issues.apache.org/jira/browse/HBASE-10320) | Avoid ArrayList.iterator() ExplicitColumnTracker |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10332](https://issues.apache.org/jira/browse/HBASE-10332) | Missing .regioninfo file during daughter open processing |  Major | . | Andrew Purtell | Matteo Bertozzi |
| [HBASE-10334](https://issues.apache.org/jira/browse/HBASE-10334) | RegionServer links in table.jsp is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10338](https://issues.apache.org/jira/browse/HBASE-10338) | Region server fails to start with AccessController coprocessor if installed into RegionServerCoprocessorHost |  Minor | Coprocessors, regionserver | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-10339](https://issues.apache.org/jira/browse/HBASE-10339) | Mutation::getFamilyMap method was lost in 98 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10316](https://issues.apache.org/jira/browse/HBASE-10316) | Canary#RegionServerMonitor#monitorRegionServers() should close the scanner returned by table.getScanner() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10335](https://issues.apache.org/jira/browse/HBASE-10335) | AuthFailedException in zookeeper may block replication forever |  Blocker | Replication, security | Liu Shaohui | Liu Shaohui |
| [HBASE-10304](https://issues.apache.org/jira/browse/HBASE-10304) | Running an hbase job jar: IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString |  Blocker | documentation, mapreduce | stack | Nick Dimiduk |
| [HBASE-10333](https://issues.apache.org/jira/browse/HBASE-10333) | Assignments are not retained on a cluster start |  Major | . | Devaraj Das | Jimmy Xiang |
| [HBASE-10327](https://issues.apache.org/jira/browse/HBASE-10327) | Remove remove(K, V) from type PoolMap\<K,V\> |  Major | . | Eric Charles | Eric Charles |
| [HBASE-10370](https://issues.apache.org/jira/browse/HBASE-10370) | Compaction in out-of-date Store causes region split failure |  Critical | Compaction | Liu Shaohui | Liu Shaohui |
| [HBASE-10349](https://issues.apache.org/jira/browse/HBASE-10349) | Table became unusable when master balanced its region after table was dropped |  Major | . | Ted Yu | Jimmy Xiang |
| [HBASE-10384](https://issues.apache.org/jira/browse/HBASE-10384) | Failed to increment serveral columns in one Increment |  Blocker | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10087](https://issues.apache.org/jira/browse/HBASE-10087) | Store should be locked during a memstore snapshot |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10249](https://issues.apache.org/jira/browse/HBASE-10249) | TestReplicationSyncUpTool fails because failover takes too long |  Major | . | Lars Hofhansl | Jean-Daniel Cryans |
| [HBASE-10322](https://issues.apache.org/jira/browse/HBASE-10322) | Strip tags from KV while sending back to client on reads |  Blocker | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10375](https://issues.apache.org/jira/browse/HBASE-10375) | hbase-default.xml hbase.status.multicast.address.port does not match code |  Major | . | Jonathan Hsieh | Nicolas Liochon |
| [HBASE-10397](https://issues.apache.org/jira/browse/HBASE-10397) | Fix findbugs introduced from HBASE-9426 |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10400](https://issues.apache.org/jira/browse/HBASE-10400) | [hbck] Continue if region dir missing on region merge attempt |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10365](https://issues.apache.org/jira/browse/HBASE-10365) | HBaseFsck should clean up connection properly when repair is completed |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10401](https://issues.apache.org/jira/browse/HBASE-10401) | [hbck] perform overlap group merges in parallel |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10412](https://issues.apache.org/jira/browse/HBASE-10412) | Distributed log replay : Cell tags getting missed |  Blocker | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10317](https://issues.apache.org/jira/browse/HBASE-10317) | getClientPort method of MiniZooKeeperCluster does not always return the correct value |  Minor | . | Vasu Mariyala | Vasu Mariyala |
| [HBASE-10371](https://issues.apache.org/jira/browse/HBASE-10371) | Compaction creates empty hfile, then selects this file for compaction and creates empty hfile and over again |  Major | . | binlijin | binlijin |
| [HBASE-10426](https://issues.apache.org/jira/browse/HBASE-10426) | user\_permission in security.rb calls non-existent UserPermission#getTable method |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10429](https://issues.apache.org/jira/browse/HBASE-10429) | Make Visibility Controller to throw a better msg if it is of type RegionServerCoprocessor |  Minor | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10407](https://issues.apache.org/jira/browse/HBASE-10407) | String Format Exception |  Trivial | hadoop2 | Siwakorn Srisakaokul |  |
| [HBASE-10435](https://issues.apache.org/jira/browse/HBASE-10435) | Lower the log level of Canary region server match |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10428](https://issues.apache.org/jira/browse/HBASE-10428) | Test jars should have scope test |  Minor | build | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10433](https://issues.apache.org/jira/browse/HBASE-10433) | SecureProtobufWALReader does not handle unencrypted WALs if configured to encrypt |  Major | . | Andrew Purtell | Anoop Sam John |
| [HBASE-10434](https://issues.apache.org/jira/browse/HBASE-10434) | Store Tag compression information for a WAL in its header |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10438](https://issues.apache.org/jira/browse/HBASE-10438) | NPE from LRUDictionary when size reaches the max init value |  Blocker | . | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-10431](https://issues.apache.org/jira/browse/HBASE-10431) | Rename com.google.protobuf.ZeroCopyLiteralByteString |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10441](https://issues.apache.org/jira/browse/HBASE-10441) | [docs] nit default max versions is now 1 instead of 3 after HBASE-8450 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10446](https://issues.apache.org/jira/browse/HBASE-10446) | Backup master gives Error 500 for debug dump |  Minor | UI | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10448](https://issues.apache.org/jira/browse/HBASE-10448) | ZKUtil create and watch methods don't set watch in some cases |  Major | Zookeeper | Jerry He | Jerry He |
| [HBASE-10443](https://issues.apache.org/jira/browse/HBASE-10443) | IndexOutOfBoundExceptions when processing compressed tags in HFile |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10449](https://issues.apache.org/jira/browse/HBASE-10449) | Wrong execution pool configuration in HConnectionManager |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10442](https://issues.apache.org/jira/browse/HBASE-10442) | prepareDelete() isn't called before doPreMutationHook for a row deletion case |  Critical | Coprocessors | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10456](https://issues.apache.org/jira/browse/HBASE-10456) | Balancer should not run if it's just turned off. |  Minor | Balancer, hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10458](https://issues.apache.org/jira/browse/HBASE-10458) | Typo in book chapter 9 architecture.html |  Trivial | documentation | Richard Shaw | Richard Shaw |
| [HBASE-7963](https://issues.apache.org/jira/browse/HBASE-7963) | HBase VerifyReplication not working when security enabled |  Major | Replication, security | Water Chow | Matteo Bertozzi |
| [HBASE-10461](https://issues.apache.org/jira/browse/HBASE-10461) | table.close() in TableEventHandler#reOpenAllRegions() should be enclosed in finally block |  Minor | . | Ted Yu |  |
| [HBASE-10455](https://issues.apache.org/jira/browse/HBASE-10455) | cleanup InterruptedException management |  Major | Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10447](https://issues.apache.org/jira/browse/HBASE-10447) | Memstore flusher scans storefiles also when the scanner heap gets reset |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10454](https://issues.apache.org/jira/browse/HBASE-10454) | Tags presence file info can be wrong in HFiles when PrefixTree encoding is used |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10459](https://issues.apache.org/jira/browse/HBASE-10459) | Broken link F.1. HBase Videos |  Trivial | documentation | Richard Shaw | Richard Shaw |
| [HBASE-10460](https://issues.apache.org/jira/browse/HBASE-10460) | Return value of Scan#setSmall() should be void |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10469](https://issues.apache.org/jira/browse/HBASE-10469) | Hbase book client.html has a broken link |  Minor | documentation | Vivek Ganesan | Vivek Ganesan |
| [HBASE-10337](https://issues.apache.org/jira/browse/HBASE-10337) | HTable.get() uninteruptible |  Major | Client | Jonathan Leech | Nicolas Liochon |
| [HBASE-10470](https://issues.apache.org/jira/browse/HBASE-10470) | Import generates huge log file while importing large amounts of data |  Critical | . | Vasu Mariyala | Vasu Mariyala |
| [HBASE-10477](https://issues.apache.org/jira/browse/HBASE-10477) | Regression from HBASE-10337 |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10478](https://issues.apache.org/jira/browse/HBASE-10478) | Hbase book presentations page has broken link |  Minor | documentation | Vivek Ganesan | Vivek Ganesan |
| [HBASE-10313](https://issues.apache.org/jira/browse/HBASE-10313) | Duplicate servlet-api jars in hbase 0.96.0 |  Critical | . | stack | stack |
| [HBASE-5356](https://issues.apache.org/jira/browse/HBASE-5356) | region\_mover.rb can hang if table region it belongs to is deleted. |  Minor | . | Jonathan Hsieh | Jimmy Xiang |
| [HBASE-10472](https://issues.apache.org/jira/browse/HBASE-10472) | Manage the interruption in ZKUtil#getData |  Major | Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10486](https://issues.apache.org/jira/browse/HBASE-10486) | ProtobufUtil Append & Increment deserialization lost cell level timestamp |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10413](https://issues.apache.org/jira/browse/HBASE-10413) | Tablesplit.getLength returns 0 |  Major | Client, mapreduce | Lukas Nalezenec | Lukas Nalezenec |
| [HBASE-10493](https://issues.apache.org/jira/browse/HBASE-10493) | InclusiveStopFilter#filterKeyValue() should perform filtering on row key |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10485](https://issues.apache.org/jira/browse/HBASE-10485) | PrefixFilter#filterKeyValue() should perform filtering on row key |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10481](https://issues.apache.org/jira/browse/HBASE-10481) | API Compatibility JDiff script does not properly handle arguments in reverse order |  Minor | test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10495](https://issues.apache.org/jira/browse/HBASE-10495) | upgrade script is printing usage two times with help option. |  Minor | Usability | rajeshbabu | rajeshbabu |
| [HBASE-10500](https://issues.apache.org/jira/browse/HBASE-10500) | Some tools OOM when BucketCache is enabled |  Major | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10482](https://issues.apache.org/jira/browse/HBASE-10482) | ReplicationSyncUp doesn't clean up its ZK, needed for tests |  Major | Replication | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10506](https://issues.apache.org/jira/browse/HBASE-10506) | Fail-fast if client connection is lost before the real call be executed in RPC layer |  Major | IPC/RPC | Liang Xie | Liang Xie |
| [HBASE-10490](https://issues.apache.org/jira/browse/HBASE-10490) | Simplify RpcClient code |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10510](https://issues.apache.org/jira/browse/HBASE-10510) | HTable is not closed in LoadTestTool#loadTable() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10452](https://issues.apache.org/jira/browse/HBASE-10452) | Fix potential bugs in exception handlers |  Major | Client, master, regionserver, util | Ding Yuan | Ding Yuan |
| [HBASE-10545](https://issues.apache.org/jira/browse/HBASE-10545) | RS Hangs waiting on region to close on shutdown; has to timeout before can go down |  Major | . | stack | stack |
| [HBASE-10488](https://issues.apache.org/jira/browse/HBASE-10488) | 'mvn site' is broken due to org.apache.jasper.JspC not found |  Major | . | Ted Yu | Andrew Purtell |
| [HBASE-10552](https://issues.apache.org/jira/browse/HBASE-10552) | HFilePerformanceEvaluation.GaussianRandomReadBenchmark fails sometimes. |  Minor | . | Lars Hofhansl |  |
| [HBASE-10563](https://issues.apache.org/jira/browse/HBASE-10563) | Set name for FlushHandler thread |  Major | regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-10564](https://issues.apache.org/jira/browse/HBASE-10564) | HRegionServer.nextLong should be removed since it's not used anywhere, or should be used somewhere it meant to |  Minor | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10539](https://issues.apache.org/jira/browse/HBASE-10539) | HRegion.addAndGetGlobalMemstoreSize returns previous size |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10546](https://issues.apache.org/jira/browse/HBASE-10546) | Two scanner objects are open for each hbase map task but only one scanner object is closed |  Major | . | Vasu Mariyala | Vasu Mariyala |
| [HBASE-10501](https://issues.apache.org/jira/browse/HBASE-10501) | Improve IncreasingToUpperBoundRegionSplitPolicy to avoid too many regions |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10548](https://issues.apache.org/jira/browse/HBASE-10548) | Correct commons-math dependency version |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10565](https://issues.apache.org/jira/browse/HBASE-10565) | FavoredNodesPlan accidentally uses an internal Netty type |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10537](https://issues.apache.org/jira/browse/HBASE-10537) | Let the ExportSnapshot mapper fail and retry on error |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10534](https://issues.apache.org/jira/browse/HBASE-10534) | Rowkey in TsvImporterTextMapper initializing with wrong length |  Major | mapreduce | rajeshbabu | rajeshbabu |
| [HBASE-6642](https://issues.apache.org/jira/browse/HBASE-6642) | enable\_all,disable\_all,drop\_all can call "list" command with regex directly. |  Major | shell | Y. SREENIVASULU REDDY | Matteo Bertozzi |
| [HBASE-10567](https://issues.apache.org/jira/browse/HBASE-10567) | Add overwrite manifest option to ExportSnapshot |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10516](https://issues.apache.org/jira/browse/HBASE-10516) | Refactor code where Threads.sleep is called within a while/for loop |  Major | Client, master, regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10585](https://issues.apache.org/jira/browse/HBASE-10585) | Avoid early creation of Node objects in LRUDictionary.BidirectionalLRUMap |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10392](https://issues.apache.org/jira/browse/HBASE-10392) | Correct references to hbase.regionserver.global.memstore.upperLimit |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10586](https://issues.apache.org/jira/browse/HBASE-10586) | hadoop2-compat IPC metric registred twice |  Major | metrics | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10547](https://issues.apache.org/jira/browse/HBASE-10547) | TestFixedLengthWrapper#testReadWrite occasionally fails with the IBM JDK |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10580](https://issues.apache.org/jira/browse/HBASE-10580) | IntegrationTestingUtility#restoreCluster leak resource when running in a mini cluster mode |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10579](https://issues.apache.org/jira/browse/HBASE-10579) | [Documentation]: ExportSnapshot tool package incorrectly documented |  Minor | documentation, snapshots | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10525](https://issues.apache.org/jira/browse/HBASE-10525) | Allow the client to use a different thread for writing to ease interrupt |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10587](https://issues.apache.org/jira/browse/HBASE-10587) | Master metrics clusterRequests is wrong |  Minor | master, metrics | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10556](https://issues.apache.org/jira/browse/HBASE-10556) | Possible data loss due to non-handled DroppedSnapshotException for user-triggered flush from client/shell |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10581](https://issues.apache.org/jira/browse/HBASE-10581) | ACL znode are left without PBed during upgrading hbase0.94\* to hbase0.96+ |  Critical | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10582](https://issues.apache.org/jira/browse/HBASE-10582) | 0.94-\>0.96 Upgrade: ACL can't be repopulated when ACL table contains row for table '-ROOT' or '.META.' |  Critical | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10575](https://issues.apache.org/jira/browse/HBASE-10575) | ReplicationSource thread can't be terminated if it runs into the loop to contact peer's zk ensemble and fails continuously |  Critical | Replication | Honghua Feng | Honghua Feng |
| [HBASE-10566](https://issues.apache.org/jira/browse/HBASE-10566) | cleanup rpcTimeout in the client |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10604](https://issues.apache.org/jira/browse/HBASE-10604) | Fix parseArgs javadoc |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-10436](https://issues.apache.org/jira/browse/HBASE-10436) | restore regionserver lists removed from hbase 0.96+ jmx |  Critical | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10600](https://issues.apache.org/jira/browse/HBASE-10600) | HTable#batch() should perform validation on empty Put |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10614](https://issues.apache.org/jira/browse/HBASE-10614) | Master could not be stopped |  Major | master | Jingcheng Du | Jingcheng Du |
| [HBASE-10606](https://issues.apache.org/jira/browse/HBASE-10606) | Bad timeout in RpcRetryingCaller#callWithRetries w/o parameters |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10608](https://issues.apache.org/jira/browse/HBASE-10608) | Acquire the FS Delegation Token for Secure ExportSnapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10598](https://issues.apache.org/jira/browse/HBASE-10598) | Written data can not be read out because MemStore#timeRangeTracker might be updated concurrently |  Critical | regionserver | Jianwei Cui | Jianwei Cui |
| [HBASE-10618](https://issues.apache.org/jira/browse/HBASE-10618) | User should not be allowed to disable/drop visibility labels table |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-9990](https://issues.apache.org/jira/browse/HBASE-9990) | HTable uses the conf for each "newCaller" |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10080](https://issues.apache.org/jira/browse/HBASE-10080) | Unnecessary call to locateRegion when creating an HTable instance |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8803](https://issues.apache.org/jira/browse/HBASE-8803) | region\_mover.rb should move multiple regions at a time |  Major | Usability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-10621](https://issues.apache.org/jira/browse/HBASE-10621) | Unable to grant user permission to namespace |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10631](https://issues.apache.org/jira/browse/HBASE-10631) | Avoid extra seek on FileLink open |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10627](https://issues.apache.org/jira/browse/HBASE-10627) | A logic mistake in HRegionServer isHealthy |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10644](https://issues.apache.org/jira/browse/HBASE-10644) | TestSecureExportSnapshot#testExportFileSystemState fails on hadoop-1 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10451](https://issues.apache.org/jira/browse/HBASE-10451) | Enable back Tag compression on HFiles |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10639](https://issues.apache.org/jira/browse/HBASE-10639) | Unload script displays wrong counts (off by one) when unloading regions |  Trivial | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10632](https://issues.apache.org/jira/browse/HBASE-10632) | Region lost in limbo after ArrayIndexOutOfBoundsException during assignment |  Major | Region Assignment | Nick Dimiduk | Enis Soztutar |
| [HBASE-9708](https://issues.apache.org/jira/browse/HBASE-9708) | Improve Snapshot Name Error Message |  Minor | snapshots | Jesse Anderson | Matteo Bertozzi |
| [HBASE-10622](https://issues.apache.org/jira/browse/HBASE-10622) | Improve log and Exceptions in Export Snapshot |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10637](https://issues.apache.org/jira/browse/HBASE-10637) | rpcClient: Setup the iostreams when writing |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10624](https://issues.apache.org/jira/browse/HBASE-10624) | Fix 2 new findbugs warnings introduced by HBASE-10598 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10677](https://issues.apache.org/jira/browse/HBASE-10677) | boundaries check in hbck throwing IllegalArgumentException |  Major | hbck | rajeshbabu | rajeshbabu |
| [HBASE-10594](https://issues.apache.org/jira/browse/HBASE-10594) | Speed up TestRestoreSnapshotFromClient |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10669](https://issues.apache.org/jira/browse/HBASE-10669) | [hbck tool] Usage is wrong for hbck tool for -sidelineCorruptHfiles option |  Minor | hbck | Deepak Sharma | Deepak Sharma |
| [HBASE-10662](https://issues.apache.org/jira/browse/HBASE-10662) | RegionScanner is never closed if the region has been moved-out or re-opened when performing scan request |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10666](https://issues.apache.org/jira/browse/HBASE-10666) | TestMasterCoprocessorExceptionWithAbort hangs at shutdown |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10665](https://issues.apache.org/jira/browse/HBASE-10665) | TestCompaction and TestCompactionWithCoprocessor run too long |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10682](https://issues.apache.org/jira/browse/HBASE-10682) | region\_mover.rb throws "can't convert nil into String" for regions moved |  Major | scripts | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10432](https://issues.apache.org/jira/browse/HBASE-10432) | Rpc retries non-recoverable error |  Minor | IPC/RPC | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10686](https://issues.apache.org/jira/browse/HBASE-10686) | [WINDOWS] TestStripeStoreFileManager fails on windows |  Minor | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10685](https://issues.apache.org/jira/browse/HBASE-10685) | [WINDOWS] TestKeyStoreKeyProvider fails on windows |  Minor | test | Enis Soztutar | Enis Soztutar |
| [HBASE-10694](https://issues.apache.org/jira/browse/HBASE-10694) | TableSkewCostFunction#cost() casts integral division result to double |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10687](https://issues.apache.org/jira/browse/HBASE-10687) | Fix description about HBaseLocalFileSpanReceiver in reference manual |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HBASE-10660](https://issues.apache.org/jira/browse/HBASE-10660) | MR over snapshots can OOM when alternative blockcache is enabled |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8304](https://issues.apache.org/jira/browse/HBASE-8304) | Bulkload fails to remove files if fs.default.name / fs.defaultFS is configured without default port |  Major | HFile, regionserver | Raymond Liu | haosdent |
| [HBASE-10675](https://issues.apache.org/jira/browse/HBASE-10675) | IntegrationTestIngestWithACL should allow User to be passed as Parameter |  Major | . | Ted Yu | ramkrishna.s.vasudevan |
| [HBASE-10715](https://issues.apache.org/jira/browse/HBASE-10715) | TimeRange has a poorly formatted error message |  Minor | . | Alex Newman | Alex Newman |
| [HBASE-10714](https://issues.apache.org/jira/browse/HBASE-10714) | SyncFuture hangs when sequence is 0 |  Major | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10716](https://issues.apache.org/jira/browse/HBASE-10716) | [Configuration]: hbase.regionserver.region.split.policy should be part of hbase-default.xml |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-9778](https://issues.apache.org/jira/browse/HBASE-9778) | Add hint to ExplicitColumnTracker to avoid seeking |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10720](https://issues.apache.org/jira/browse/HBASE-10720) | rpcClient: Wrong log level when closing the connection |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10718](https://issues.apache.org/jira/browse/HBASE-10718) | TestHLogSplit fails when it sets a KV size to be negative |  Major | wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10726](https://issues.apache.org/jira/browse/HBASE-10726) | Fix java.lang.ArrayIndexOutOfBoundsException in StochasticLoadBalancer$LocalityBasedCandidateGenerator |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10679](https://issues.apache.org/jira/browse/HBASE-10679) | Both clients get wrong scan results if the first scanner expires and the second scanner is created with the same scannerId on the same region |  Critical | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-9294](https://issues.apache.org/jira/browse/HBASE-9294) | NPE in /rs-status during RS shutdown |  Minor | regionserver | Steve Loughran | Rekha Joshi |
| [HBASE-10731](https://issues.apache.org/jira/browse/HBASE-10731) | Fix environment variables typos in scripts |  Trivial | scripts | Albert Chu | Albert Chu |
| [HBASE-10736](https://issues.apache.org/jira/browse/HBASE-10736) | Fix Javadoc warnings introduced in HBASE-10169 |  Trivial | . | rajeshbabu | Andrew Purtell |
| [HBASE-10737](https://issues.apache.org/jira/browse/HBASE-10737) | HConnectionImplementation should stop RpcClient on close |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10476](https://issues.apache.org/jira/browse/HBASE-10476) | HBase Master log grows very fast after stopped hadoop (due to connection exception) |  Major | . | Demai Ni | Demai Ni |
| [HBASE-10738](https://issues.apache.org/jira/browse/HBASE-10738) | AssignmentManager should shut down executors on stop |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10739](https://issues.apache.org/jira/browse/HBASE-10739) | RS web UI NPE if master shuts down sooner |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10745](https://issues.apache.org/jira/browse/HBASE-10745) | Access ShutdownHook#fsShutdownHooks should be synchronized |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10751](https://issues.apache.org/jira/browse/HBASE-10751) | TestHRegion testWritesWhileScanning occasional fail since HBASE-10514 went in |  Major | . | stack | stack |
| [HBASE-10514](https://issues.apache.org/jira/browse/HBASE-10514) | Forward port HBASE-10466, possible data loss when failed flushes |  Critical | . | stack | stack |
| [HBASE-10656](https://issues.apache.org/jira/browse/HBASE-10656) |  high-scale-lib's Counter depends on Oracle (Sun) JRE, and also has some bug |  Minor | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-10749](https://issues.apache.org/jira/browse/HBASE-10749) | CellComparator.compareStatic() compares type wrongly |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10706](https://issues.apache.org/jira/browse/HBASE-10706) | Disable writeToWal in tests where possible |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10549](https://issues.apache.org/jira/browse/HBASE-10549) | When there is a hole, LoadIncrementalHFiles will hang in an infinite loop. |  Major | HFile | yuanxinen | yuanxinen |
| [HBASE-10760](https://issues.apache.org/jira/browse/HBASE-10760) | Wrong methods' names in ClusterLoadState class |  Minor | Balancer | Victor Xu | Victor Xu |
| [HBASE-9721](https://issues.apache.org/jira/browse/HBASE-9721) | RegionServer should not accept regionOpen RPC intended for another(previous) server |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10762](https://issues.apache.org/jira/browse/HBASE-10762) | clone\_snapshot doesn't check for missing namespace |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10766](https://issues.apache.org/jira/browse/HBASE-10766) | SnapshotCleaner allows to delete referenced files |  Major | snapshots | Matteo Bertozzi | bharath v |
| [HBASE-10770](https://issues.apache.org/jira/browse/HBASE-10770) | Don't exit from the Canary daemon mode if no regions are present |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10735](https://issues.apache.org/jira/browse/HBASE-10735) | [WINDOWS] Set -XX:MaxPermSize for unit tests |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10793](https://issues.apache.org/jira/browse/HBASE-10793) | AuthFailed as a valid zookeeper state |  Major | Zookeeper | Demai Ni | Demai Ni |
| [HBASE-10792](https://issues.apache.org/jira/browse/HBASE-10792) | RingBufferTruck does not release its payload |  Major | Performance, wal | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10799](https://issues.apache.org/jira/browse/HBASE-10799) | [WINDOWS] TestImportTSVWithVisibilityLabels.testBulkOutputWithTsvImporterTextMapper  fails on windows |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10806](https://issues.apache.org/jira/browse/HBASE-10806) | Two protos missing in hbase-protocol/pom.xml |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10805](https://issues.apache.org/jira/browse/HBASE-10805) | Speed up KeyValueHeap.next() a bit |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10802](https://issues.apache.org/jira/browse/HBASE-10802) | CellComparator.compareStaticIgnoreMvccVersion compares type wrongly |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10804](https://issues.apache.org/jira/browse/HBASE-10804) | Add a validations step to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10814](https://issues.apache.org/jira/browse/HBASE-10814) | RpcClient: some calls can get stuck when connection is closing |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10825](https://issues.apache.org/jira/browse/HBASE-10825) | Add copy-from option to ExportSnapshot |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10838](https://issues.apache.org/jira/browse/HBASE-10838) | Insufficient AccessController covering permission check |  Critical | security | Anoop Sam John | Anoop Sam John |
| [HBASE-10829](https://issues.apache.org/jira/browse/HBASE-10829) | Flush is skipped after log replay if the last recovered edits file is skipped |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10833](https://issues.apache.org/jira/browse/HBASE-10833) | Region assignment may fail during cluster start up |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10839](https://issues.apache.org/jira/browse/HBASE-10839) | NullPointerException in construction of RegionServer in Security Cluster |  Critical | regionserver | Liu Shaohui | Jimmy Xiang |
| [HBASE-10840](https://issues.apache.org/jira/browse/HBASE-10840) | Fix findbug warn induced by HBASE-10569 |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10853](https://issues.apache.org/jira/browse/HBASE-10853) | NPE in RSRpcServices.get on trunk |  Major | IPC/RPC | stack | stack |
| [HBASE-10849](https://issues.apache.org/jira/browse/HBASE-10849) | Fix increased javadoc warns |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10809](https://issues.apache.org/jira/browse/HBASE-10809) | HBaseAdmin#deleteTable fails when META region happen to move around same time |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10864](https://issues.apache.org/jira/browse/HBASE-10864) | Spelling nit |  Trivial | . | Alex Newman | Alex Newman |
| [HBASE-10862](https://issues.apache.org/jira/browse/HBASE-10862) | Update config field names in hbase-default.xml description for hbase.hregion.memstore.block.multiplier |  Trivial | documentation | Albert Chu | Albert Chu |
| [HBASE-10860](https://issues.apache.org/jira/browse/HBASE-10860) | Insufficient AccessController covering permission check |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-10863](https://issues.apache.org/jira/browse/HBASE-10863) | Scan doesn't return rows for user who has authorization by visibility label in secure deployment |  Major | security | Ted Yu | Ted Yu |
| [HBASE-10848](https://issues.apache.org/jira/browse/HBASE-10848) | Filter SingleColumnValueFilter combined with NullComparator does not work |  Major | Filters | Fabien Le Gallo | Fabien Le Gallo |
| [HBASE-10851](https://issues.apache.org/jira/browse/HBASE-10851) | Wait for regionservers to join the cluster |  Critical | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10830](https://issues.apache.org/jira/browse/HBASE-10830) | Integration test MR jobs attempt to load htrace jars from the wrong location |  Minor | . | Andrew Purtell | Nick Dimiduk |
| [HBASE-10854](https://issues.apache.org/jira/browse/HBASE-10854) | [VisibilityController] Apply MAX\_VERSIONS from schema or request when scanning |  Major | security | Matteo Bertozzi | Anoop Sam John |
| [HBASE-10850](https://issues.apache.org/jira/browse/HBASE-10850) | essential column family optimization is broken |  Blocker | Coprocessors, Filters, Performance | Fabien Le Gallo | Ted Yu |
| [HBASE-10903](https://issues.apache.org/jira/browse/HBASE-10903) | HBASE-10740 regression; cannot pass commands for zk to run |  Major | Zookeeper | stack | stack |
| [HBASE-10705](https://issues.apache.org/jira/browse/HBASE-10705) | CompactionRequest#toString() may throw NullPointerException |  Minor | . | Ted Yu | Rekha Joshi |
| [HBASE-10890](https://issues.apache.org/jira/browse/HBASE-10890) | ExportSnapshot needs to add acquired token to job |  Major | snapshots | Jerry He | Jerry He |
| [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | Major compact keeps deletes with future timestamps |  Minor | Compaction, Deletes, regionserver | Max Lapan | Liu Shaohui |
| [HBASE-10895](https://issues.apache.org/jira/browse/HBASE-10895) | unassign a region fails due to the hosting region server is in FailedServerList |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10899](https://issues.apache.org/jira/browse/HBASE-10899) | [AccessController] Apply MAX\_VERSIONS from schema or request when scanning |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10917](https://issues.apache.org/jira/browse/HBASE-10917) | Fix hbase book "Tests" page |  Trivial | documentation | bharath v | bharath v |
| [HBASE-10018](https://issues.apache.org/jira/browse/HBASE-10018) | Remove region location prefetching |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10941](https://issues.apache.org/jira/browse/HBASE-10941) | default for max version isn't updated in doc after change on 0.96 |  Minor | documentation | Demai Ni | Demai Ni |
| [HBASE-10931](https://issues.apache.org/jira/browse/HBASE-10931) | Enhance logs |  Trivial | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10954](https://issues.apache.org/jira/browse/HBASE-10954) | Fix TestCloseRegionHandler.testFailedFlushAborts |  Major | regionserver | Mikhail Antonov | Mikhail Antonov |
| [HBASE-10897](https://issues.apache.org/jira/browse/HBASE-10897) | On master start, deadlock if refresh UI |  Major | . | stack | Jimmy Xiang |
| [HBASE-10968](https://issues.apache.org/jira/browse/HBASE-10968) | Null check in TableSnapshotInputFormat#TableSnapshotRegionRecordReader#initialize() is redundant |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10949](https://issues.apache.org/jira/browse/HBASE-10949) | Reversed scan could hang |  Critical | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10967](https://issues.apache.org/jira/browse/HBASE-10967) | CatalogTracker.waitForMeta should not wait indefinitely silently |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10533](https://issues.apache.org/jira/browse/HBASE-10533) | commands.rb is giving wrong error messages on exceptions |  Major | shell | rajeshbabu | rajeshbabu |
| [HBASE-10966](https://issues.apache.org/jira/browse/HBASE-10966) | RowCounter misinterprets column names that have colons in their qualifier |  Trivial | . | Alexandre Normand | Alexandre Normand |
| [HBASE-10845](https://issues.apache.org/jira/browse/HBASE-10845) | Memstore snapshot size isn't updated in DefaultMemStore#rollback() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10979](https://issues.apache.org/jira/browse/HBASE-10979) | Fix AnnotationReadingPriorityFunction "scan" handling |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10976](https://issues.apache.org/jira/browse/HBASE-10976) | Start CatalogTracker after cluster ID is available |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10312](https://issues.apache.org/jira/browse/HBASE-10312) | Flooding the cluster with administrative actions leads to collapse |  Critical | . | Andrew Purtell | Jean-Daniel Cryans |
| [HBASE-10955](https://issues.apache.org/jira/browse/HBASE-10955) | HBCK leaves the region in masters in-memory RegionStates if region hdfs dir is lost |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10995](https://issues.apache.org/jira/browse/HBASE-10995) | Fix resource leak related to unclosed HBaseAdmin |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11009](https://issues.apache.org/jira/browse/HBASE-11009) | We sync every hbase:meta table write twice |  Major | wal | stack | stack |
| [HBASE-11005](https://issues.apache.org/jira/browse/HBASE-11005) | Remove dead code in HalfStoreFileReader#getScanner#seekBefore() |  Trivial | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11012](https://issues.apache.org/jira/browse/HBASE-11012) | InputStream is not properly closed in two methods of JarFinder |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11011](https://issues.apache.org/jira/browse/HBASE-11011) | Avoid extra getFileStatus() calls on Region startup |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11030](https://issues.apache.org/jira/browse/HBASE-11030) | HBaseTestingUtility.getMiniHBaseCluster should be able to return null |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10948](https://issues.apache.org/jira/browse/HBASE-10948) | Fix hbase table file 'x' mode |  Major | Filesystem Integration | Jerry He | Jerry He |
| [HBASE-11018](https://issues.apache.org/jira/browse/HBASE-11018) | ZKUtil.getChildDataAndWatchForNewChildren() will not return null as indicated |  Minor | Zookeeper | Jerry He | Jerry He |
| [HBASE-11028](https://issues.apache.org/jira/browse/HBASE-11028) | FSLog: Avoid an extra sync if the current transaction is already sync'd |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10970](https://issues.apache.org/jira/browse/HBASE-10970) | [AccessController] Issues with covering cell permission checks |  Major | . | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-11049](https://issues.apache.org/jira/browse/HBASE-11049) | HBase WALPlayer needs to add credentials to job to play to table |  Minor | mapreduce | Jerry He | Jerry He |
| [HBASE-11055](https://issues.apache.org/jira/browse/HBASE-11055) | Extends the sampling size |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11038](https://issues.apache.org/jira/browse/HBASE-11038) | Filtered scans can bypass metrics collection |  Minor | Scanners | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11082](https://issues.apache.org/jira/browse/HBASE-11082) | Potential unclosed TraceScope in FSHLog#replaceWriter() |  Minor | . | Ted Yu | Nick Dimiduk |
| [HBASE-10611](https://issues.apache.org/jira/browse/HBASE-10611) | Description for hbase:acl table is wrong on master-status#catalogTables |  Minor | . | Ted Yu | Rekha Joshi |
| [HBASE-10958](https://issues.apache.org/jira/browse/HBASE-10958) | [dataloss] Bulk loading with seqids can prevent some log entries from being replayed |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9445](https://issues.apache.org/jira/browse/HBASE-9445) | Snapshots should create column family dirs for empty regions |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-11117](https://issues.apache.org/jira/browse/HBASE-11117) | [AccessController] checkAndPut/Delete hook should check only Read permission |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11150](https://issues.apache.org/jira/browse/HBASE-11150) | Images in website are broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11133](https://issues.apache.org/jira/browse/HBASE-11133) | Add an option to skip snapshot verification after Export |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11139](https://issues.apache.org/jira/browse/HBASE-11139) | BoundedPriorityBlockingQueue#poll() should check the return value from awaitNanos() |  Minor | . | Ted Yu | Shengzhe Yao |
| [HBASE-11143](https://issues.apache.org/jira/browse/HBASE-11143) | Improve replication metrics |  Major | Replication | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10251](https://issues.apache.org/jira/browse/HBASE-10251) | Restore API Compat for PerformanceEvaluation.generateValue() |  Major | Client | Aleksandr Shulman | Dima Spivak |
| [HBASE-11112](https://issues.apache.org/jira/browse/HBASE-11112) | PerformanceEvaluation should document --multiGet option on its printUsage. |  Major | documentation, Performance | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11177](https://issues.apache.org/jira/browse/HBASE-11177) | 'hbase.rest.filter.classes' exists in hbase-default.xml twice |  Major | . | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11176](https://issues.apache.org/jira/browse/HBASE-11176) | Make /src/main/xslt/configuration\_to\_docbook\_section.xsl produce better Docbook |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11190](https://issues.apache.org/jira/browse/HBASE-11190) | Fix easy typos in documentation |  Trivial | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11169](https://issues.apache.org/jira/browse/HBASE-11169) | nit: fix incorrect javadoc in OrderedBytes about BlobVar and BlobCopy |  Trivial | util | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11168](https://issues.apache.org/jira/browse/HBASE-11168) | [docs] Remove references to RowLocks in post 0.96 docs. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11189](https://issues.apache.org/jira/browse/HBASE-11189) | Subprocedure should be marked as complete upon failure |  Major | . | Ted Yu | Ted Yu |
| [HBASE-6506](https://issues.apache.org/jira/browse/HBASE-6506) | Setting CACHE\_BLOCKS to false in an hbase shell scan doesn't work |  Minor | shell | Josh Wymer | stack |
| [HBASE-11155](https://issues.apache.org/jira/browse/HBASE-11155) | Fix Validation Errors in Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11185](https://issues.apache.org/jira/browse/HBASE-11185) | Parallelize Snapshot operations |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11186](https://issues.apache.org/jira/browse/HBASE-11186) | Improve TestExportSnapshot verifications |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10417](https://issues.apache.org/jira/browse/HBASE-10417) | index is not incremented in PutSortReducer#reduce() |  Minor | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11217](https://issues.apache.org/jira/browse/HBASE-11217) | Race between SplitLogManager task creation + TimeoutMonitor |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11212](https://issues.apache.org/jira/browse/HBASE-11212) | Fix increment index in KeyValueSortReducer |  Minor | . | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-11237](https://issues.apache.org/jira/browse/HBASE-11237) | Bulk load initiated by user other than hbase fails |  Critical | . | Dima Spivak | Jimmy Xiang |
| [HBASE-11149](https://issues.apache.org/jira/browse/HBASE-11149) | Wire encryption is broken |  Major | IPC/RPC | Devaraj Das | Devaraj Das |
| [HBASE-10831](https://issues.apache.org/jira/browse/HBASE-10831) | IntegrationTestIngestWithACL is not setting up LoadTestTool correctly |  Major | . | Andrew Purtell | Vandana Ayyalasomayajula |
| [HBASE-11239](https://issues.apache.org/jira/browse/HBASE-11239) | Forgot to svn add test that was part of HBASE-11171, TestCacheConfig |  Major | test | stack | stack |
| [HBASE-11202](https://issues.apache.org/jira/browse/HBASE-11202) | Cleanup on HRegion class |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11226](https://issues.apache.org/jira/browse/HBASE-11226) | Document and increase the default value for hbase.hstore.flusher.count |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11251](https://issues.apache.org/jira/browse/HBASE-11251) | LoadTestTool should grant READ permission for the users that are given READ access for specific cells |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11096](https://issues.apache.org/jira/browse/HBASE-11096) | stop method of Master and RegionServer coprocessor  is not invoked |  Major | . | Qiang Tian | Qiang Tian |
| [HBASE-11253](https://issues.apache.org/jira/browse/HBASE-11253) | IntegrationTestWithCellVisibilityLoadAndVerify failing since HBASE-10326 |  Major | test | Anoop Sam John | Anoop Sam John |
| [HBASE-11252](https://issues.apache.org/jira/browse/HBASE-11252) | Fixing new javadoc warnings in master branch |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11215](https://issues.apache.org/jira/browse/HBASE-11215) | Deprecate void setAutoFlush(boolean autoFlush, boolean clearBufferOnFail) |  Minor | Client | Carter | Carter |
| [HBASE-11234](https://issues.apache.org/jira/browse/HBASE-11234) | FastDiffDeltaEncoder#getFirstKeyInBlock returns wrong result |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-11255](https://issues.apache.org/jira/browse/HBASE-11255) | Negative request num in region load |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-8817](https://issues.apache.org/jira/browse/HBASE-8817) | Enhance The Apache HBase Reference Guide |  Critical | documentation | Thomas Pan | Misty Stanley-Jones |
| [HBASE-10692](https://issues.apache.org/jira/browse/HBASE-10692) | The Multi TableMap job don't support the security HBase cluster |  Minor | mapreduce | Liu Shaohui | Liu Shaohui |
| [HBASE-11248](https://issues.apache.org/jira/browse/HBASE-11248) | KeyOnlyKeyValue#toString() passes wrong offset to keyToString() |  Minor | . | Ted Yu | ramkrishna.s.vasudevan |
| [HBASE-11218](https://issues.apache.org/jira/browse/HBASE-11218) | Data loss in HBase standalone mode |  Major | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11196](https://issues.apache.org/jira/browse/HBASE-11196) | Update description of -ROOT- in ref guide |  Major | documentation | Dima Spivak | Misty Stanley-Jones |
| [HBASE-11268](https://issues.apache.org/jira/browse/HBASE-11268) | HTablePool is now a deprecated class, should update docs to reflect this |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11267](https://issues.apache.org/jira/browse/HBASE-11267) | Dynamic metrics2 metrics may consume large amount of heap memory |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11275](https://issues.apache.org/jira/browse/HBASE-11275) | [AccessController] postCreateTable hook fails when another CP creates table on their startup |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11277](https://issues.apache.org/jira/browse/HBASE-11277) | RPCServer threads can wedge under high load |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11238](https://issues.apache.org/jira/browse/HBASE-11238) | Add info about SlabCache and BucketCache to Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-6701](https://issues.apache.org/jira/browse/HBASE-6701) | Revisit thrust of paragraph on splitting |  Major | documentation | stack | Misty Stanley-Jones |
| [HBASE-11279](https://issues.apache.org/jira/browse/HBASE-11279) | Block cache could be disabled by mistake |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10922](https://issues.apache.org/jira/browse/HBASE-10922) | Log splitting status should always be closed |  Minor | wal | Jimmy Xiang | Jeffrey Zhong |
| [HBASE-11302](https://issues.apache.org/jira/browse/HBASE-11302) | ReplicationSourceManager#sources is not thread safe |  Major | Replication | Qianxi Zhang | Qianxi Zhang |
| [HBASE-10593](https://issues.apache.org/jira/browse/HBASE-10593) | FileInputStream in JenkinsHash#main() is never closed |  Trivial | . | Ted Yu | Ted Yu |
| [HBASE-11260](https://issues.apache.org/jira/browse/HBASE-11260) | hbase-default.xml refers to hbase.regionserver.global.memstore.upperLimit which is deprecated |  Trivial | . | Ted Yu | Ted Yu |
| [HBASE-11311](https://issues.apache.org/jira/browse/HBASE-11311) | Secure Bulk Load does not execute chmod 777 on the files |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11120](https://issues.apache.org/jira/browse/HBASE-11120) | Update documentation about major compaction algorithm |  Major | Compaction, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11320](https://issues.apache.org/jira/browse/HBASE-11320) | Reenable bucket cache logging |  Major | . | stack | stack |
| [HBASE-11312](https://issues.apache.org/jira/browse/HBASE-11312) | Minor refactoring of TestVisibilityLabels class |  Trivial | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11310](https://issues.apache.org/jira/browse/HBASE-11310) | Delete's copy constructor should copy the attributes also |  Major | mapreduce | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11329](https://issues.apache.org/jira/browse/HBASE-11329) | Minor fixup of new blockcache tab number formatting |  Trivial | . | stack | stack |
| [HBASE-10336](https://issues.apache.org/jira/browse/HBASE-10336) | Remove deprecated usage of Hadoop HttpServer in InfoServer |  Major | . | Eric Charles | Eric Charles |
| [HBASE-11327](https://issues.apache.org/jira/browse/HBASE-11327) | ExportSnapshot hit stackoverflow error when target snapshotDir doesn't contain uri |  Minor | snapshots | Demai Ni | Demai Ni |
| [HBASE-11162](https://issues.apache.org/jira/browse/HBASE-11162) | RegionServer webui uses the default master info port irrespective of the user configuration. |  Minor | UI | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11340](https://issues.apache.org/jira/browse/HBASE-11340) | Remove references to xcievers in documentation |  Trivial | documentation | Dima Spivak | Dima Spivak |
| [HBASE-11337](https://issues.apache.org/jira/browse/HBASE-11337) | Document how to create, modify, delete a table using Java |  Major | Admin, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11342](https://issues.apache.org/jira/browse/HBASE-11342) | The method isChildReadLock in class ZKInterProcessLockBase is wrong |  Minor | Zookeeper | Qianxi Zhang | Qianxi Zhang |
| [HBASE-11347](https://issues.apache.org/jira/browse/HBASE-11347) | For some errors, the client can retry infinitely |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11273](https://issues.apache.org/jira/browse/HBASE-11273) | Fix jersey and slf4j deps |  Minor | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11353](https://issues.apache.org/jira/browse/HBASE-11353) | Wrong Write Request Count |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11194](https://issues.apache.org/jira/browse/HBASE-11194) | [AccessController] issue with covering permission check in case of concurrent op on same row |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11341](https://issues.apache.org/jira/browse/HBASE-11341) | ZKProcedureCoordinatorRpcs should respond only to members |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11371](https://issues.apache.org/jira/browse/HBASE-11371) | Typo in Thrift2 docs |  Trivial | documentation | Cesar Delgado | Cesar Delgado |
| [HBASE-11052](https://issues.apache.org/jira/browse/HBASE-11052) | Sending random data crashes thrift service |  Major | Thrift | Adrian Muraru | Adrian Muraru |
| [HBASE-11373](https://issues.apache.org/jira/browse/HBASE-11373) | hbase-protocol compile failed for name conflict of RegionTransition |  Minor | Protobufs | Liu Shaohui | Jimmy Xiang |
| [HBASE-11378](https://issues.apache.org/jira/browse/HBASE-11378) | TableMapReduceUtil overwrites user supplied options for multiple tables/scaners job |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11338](https://issues.apache.org/jira/browse/HBASE-11338) | Expand documentation on bloom filters |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11374](https://issues.apache.org/jira/browse/HBASE-11374) | RpcRetryingCaller#callWithoutRetries has a timeout of zero |  Critical | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11382](https://issues.apache.org/jira/browse/HBASE-11382) | Adding unit test for HBASE-10964 (Delete mutation is not consistent with Put wrt timestamp) |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11387](https://issues.apache.org/jira/browse/HBASE-11387) | metrics: wrong totalRequestCount |  Major | metrics, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11380](https://issues.apache.org/jira/browse/HBASE-11380) | HRegion lock object is not being released properly, leading to snapshot failure |  Blocker | regionserver | Craig Condit | Ted Yu |
| [HBASE-11403](https://issues.apache.org/jira/browse/HBASE-11403) | Fix race conditions around Object#notify |  Major | Client, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11396](https://issues.apache.org/jira/browse/HBASE-11396) | Invalid meta entries can lead to unstartable master |  Major | master | Craig Condit |  |
| [HBASE-11363](https://issues.apache.org/jira/browse/HBASE-11363) | Access checks in preCompact and preCompactSelection are out of sync |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11324](https://issues.apache.org/jira/browse/HBASE-11324) | Update 2.5.2.8. Managed Compactions |  Major | Compaction, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11391](https://issues.apache.org/jira/browse/HBASE-11391) | Thrift table creation will fail with default TTL with sanity checks |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11397](https://issues.apache.org/jira/browse/HBASE-11397) | When merging expired stripes, we need to create an empty file to preserve metadata. |  Major | Compaction | Victor Xu | Victor Xu |
| [HBASE-11298](https://issues.apache.org/jira/browse/HBASE-11298) | Simplification in RpcServer code |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11418](https://issues.apache.org/jira/browse/HBASE-11418) | build target "site" doesn't respect hadoop-two.version property |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HBASE-11424](https://issues.apache.org/jira/browse/HBASE-11424) | Avoid usage of CellUtil#getTagArray(Cell cell) within server |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11430](https://issues.apache.org/jira/browse/HBASE-11430) | lastFlushSeqId has been updated wrongly during region open |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10330](https://issues.apache.org/jira/browse/HBASE-10330) | TableInputFormat/TableRecordReaderImpl leaks HTable |  Blocker | . | G G | Ted Yu |
| [HBASE-11433](https://issues.apache.org/jira/browse/HBASE-11433) | LruBlockCache does not respect its configurable parameters |  Major | regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11335](https://issues.apache.org/jira/browse/HBASE-11335) | Fix the TABLE\_DIR param in TableSnapshotInputFormat |  Major | mapreduce, snapshots | deepankar |  |
| [HBASE-11448](https://issues.apache.org/jira/browse/HBASE-11448) | Fix javadoc warnings |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11435](https://issues.apache.org/jira/browse/HBASE-11435) | Visibility labelled cells fail to getting replicated |  Critical | Replication, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11439](https://issues.apache.org/jira/browse/HBASE-11439) | StripeCompaction may not obey the OffPeak rule to compaction |  Minor | Compaction | Victor Xu | Victor Xu |
| [HBASE-11285](https://issues.apache.org/jira/browse/HBASE-11285) | Expand coprocs info in Ref Guide |  Major | Coprocessors, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11432](https://issues.apache.org/jira/browse/HBASE-11432) | [AccessController] Remove cell first strategy |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11413](https://issues.apache.org/jira/browse/HBASE-11413) | [findbugs] RV: Negating the result of compareTo()/compare() |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-11399](https://issues.apache.org/jira/browse/HBASE-11399) | Improve Quickstart chapter and move Pseudo-distributed and distributed to it |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11449](https://issues.apache.org/jira/browse/HBASE-11449) | IntegrationTestIngestWithACL fails to use different users after HBASE-10810 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11463](https://issues.apache.org/jira/browse/HBASE-11463) | (findbugs) HE: Class defines equals() and uses Object.hashCode() |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-11422](https://issues.apache.org/jira/browse/HBASE-11422) | Specification of scope is missing for certain Hadoop dependencies |  Major | . | Ted Yu | Konstantin Boudnik |
| [HBASE-11457](https://issues.apache.org/jira/browse/HBASE-11457) | Increment HFile block encoding IVs accounting for ciper's internal use |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11465](https://issues.apache.org/jira/browse/HBASE-11465) | [VisibilityController] Reserved tags check not happening for Append/Increment |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11458](https://issues.apache.org/jira/browse/HBASE-11458) | NPEs if RegionServer cannot initialize |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11481](https://issues.apache.org/jira/browse/HBASE-11481) | TableSnapshotInputFormat javadoc wrongly claims HBase "enforces security" |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11477](https://issues.apache.org/jira/browse/HBASE-11477) | book.xml has Docbook validity issues (again) |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-4931](https://issues.apache.org/jira/browse/HBASE-4931) | CopyTable instructions could be improved. |  Major | documentation, mapreduce | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-11475](https://issues.apache.org/jira/browse/HBASE-11475) | Distributed log replay should also replay compaction events |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11496](https://issues.apache.org/jira/browse/HBASE-11496) | HBASE-9745 broke cygwin CLASSPATH translation |  Minor | . | Dave Latham | Dave Latham |
| [HBASE-11423](https://issues.apache.org/jira/browse/HBASE-11423) | Visibility label and per cell ACL feature not working with HTable#mutateRow() and MultiRowMutationEndpoint |  Blocker | Coprocessors, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11487](https://issues.apache.org/jira/browse/HBASE-11487) | ScanResponse carries non-zero cellblock for CloseScanRequest (ScanRequest with close\_scanner = true) |  Minor | IPC/RPC, regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11460](https://issues.apache.org/jira/browse/HBASE-11460) | Deadlock in HMaster on masterAndZKLock in HConnectionManager |  Critical | master | Andrey Stepachev | Ted Yu |
| [HBASE-11488](https://issues.apache.org/jira/browse/HBASE-11488) | cancelTasks in SubprocedurePool can hang during task error |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString" |  Blocker | mapreduce | André Kelpe | stack |
| [HBASE-11493](https://issues.apache.org/jira/browse/HBASE-11493) | Autorestart option is not working because of stale znode  "shutdown" |  Major | . | Nishan Shetty | nijel |
| [HBASE-11506](https://issues.apache.org/jira/browse/HBASE-11506) | IntegrationTestWithCellVisibilityLoadAndVerify allow User to be passed as arg |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11505](https://issues.apache.org/jira/browse/HBASE-11505) | 'snapshot' shell command shadows 'snapshot' shell when 'help' is invoked |  Trivial | shell | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11510](https://issues.apache.org/jira/browse/HBASE-11510) | Visibility serialization format tag gets duplicated in Append/Increment'ed cells |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11509](https://issues.apache.org/jira/browse/HBASE-11509) | Forward port HBASE-11039 to trunk and branch-1 after HBASE-11489 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11442](https://issues.apache.org/jira/browse/HBASE-11442) | ReplicationSourceManager doesn't cleanup the queues for recovered sources |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11514](https://issues.apache.org/jira/browse/HBASE-11514) | Fix findbugs warnings in blockcache |  Major | . | stack | stack |
| [HBASE-11489](https://issues.apache.org/jira/browse/HBASE-11489) | ClassNotFoundException while running IT tests in trunk using 'mvn verify' |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11502](https://issues.apache.org/jira/browse/HBASE-11502) | Track down broken images in Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11523](https://issues.apache.org/jira/browse/HBASE-11523) | JSON serialization of PE Options is broke |  Major | . | stack | stack |
| [HBASE-11517](https://issues.apache.org/jira/browse/HBASE-11517) | TestReplicaWithCluster turns zombie |  Major | . | stack | Mikhail Antonov |
| [HBASE-11530](https://issues.apache.org/jira/browse/HBASE-11530) | RegionStates adds regions to wrong servers |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11518](https://issues.apache.org/jira/browse/HBASE-11518) | doc update for how to create non-shared HConnection |  Minor | documentation | Qiang Tian | Qiang Tian |
| [HBASE-11525](https://issues.apache.org/jira/browse/HBASE-11525) | Region server holding in region states is out of sync with meta |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11534](https://issues.apache.org/jira/browse/HBASE-11534) | Remove broken JAVA\_HOME autodetection in hbase-config.sh |  Minor | . | Andrew Purtell | Esteban Gutierrez |
| [HBASE-11537](https://issues.apache.org/jira/browse/HBASE-11537) | Avoid synchronization on instances of ConcurrentMap |  Minor | . | Mike Drob | Mike Drob |
| [HBASE-11545](https://issues.apache.org/jira/browse/HBASE-11545) | mapred.TableSnapshotInputFormat is missing InterfaceAudience annotation |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11541](https://issues.apache.org/jira/browse/HBASE-11541) | Wrong result when scaning meta with startRow |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | Hadoop configuration overrides some ipc parameters including tcpNoDelay |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11561](https://issues.apache.org/jira/browse/HBASE-11561) | deprecate ImmutableBytesWritable.getSize and replace with getLength |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11064](https://issues.apache.org/jira/browse/HBASE-11064) | Odd behaviors of TableName for empty namespace |  Trivial | . | Hiroshi Ikeda | Rekha Joshi |
| [HBASE-11555](https://issues.apache.org/jira/browse/HBASE-11555) | TableSnapshotRegionSplit should be public |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11551](https://issues.apache.org/jira/browse/HBASE-11551) | BucketCache$WriterThread.run() doesn't handle exceptions correctly |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11565](https://issues.apache.org/jira/browse/HBASE-11565) | Stale connection could stay for a while |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11564](https://issues.apache.org/jira/browse/HBASE-11564) | Improve cancellation management in the rpc layer |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11575](https://issues.apache.org/jira/browse/HBASE-11575) | Pseudo distributed mode does not work as documented |  Critical | . | Enis Soztutar | Jimmy Xiang |
| [HBASE-11579](https://issues.apache.org/jira/browse/HBASE-11579) | CopyTable should check endtime value only if != 0 |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11586](https://issues.apache.org/jira/browse/HBASE-11586) | HFile's HDFS op latency sampling code is not used |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11531](https://issues.apache.org/jira/browse/HBASE-11531) | RegionStates for regions under region-in-transition znode are not updated on startup |  Major | Region Assignment | Virag Kothari | Jimmy Xiang |
| [HBASE-11588](https://issues.apache.org/jira/browse/HBASE-11588) | RegionServerMetricsWrapperRunnable misused the 'period' parameter |  Minor | metrics | Victor Xu | Victor Xu |
| [HBASE-11540](https://issues.apache.org/jira/browse/HBASE-11540) | Document HBASE-11474 |  Critical | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11593](https://issues.apache.org/jira/browse/HBASE-11593) | TestCacheConfig failing consistently in precommit builds |  Major | BlockCache | Andrew Purtell | stack |
| [HBASE-11609](https://issues.apache.org/jira/browse/HBASE-11609) | LoadIncrementalHFiles fails if the namespace is specified |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+ |  Major | mapreduce, Scanners | Ishan Chhabra | Ishan Chhabra |
| [HBASE-11594](https://issues.apache.org/jira/browse/HBASE-11594) | Unhandled NoNodeException in distributed log replay mode |  Minor | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11620](https://issues.apache.org/jira/browse/HBASE-11620) | Record the class name of Writer in WAL header so that only proper Reader can open the WAL file |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-11632](https://issues.apache.org/jira/browse/HBASE-11632) | Region split needs to clear force split flag at the end of SplitRequest run |  Minor | regionserver | Jerry He | Jerry He |
| [HBASE-11297](https://issues.apache.org/jira/browse/HBASE-11297) | Remove some synchros in the rpcServer responder |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11662](https://issues.apache.org/jira/browse/HBASE-11662) | Launching shell with long-form --debug fails |  Major | shell | Sean Busbey | Sean Busbey |
| [HBASE-11668](https://issues.apache.org/jira/browse/HBASE-11668) | Re-add HBASE\_LIBRARY\_PATH to bin/hbase |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11671](https://issues.apache.org/jira/browse/HBASE-11671) | TestEndToEndSplitTransaction fails on master |  Major | Region Assignment, test | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11535](https://issues.apache.org/jira/browse/HBASE-11535) | ReplicationPeer map is not thread safe |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11603](https://issues.apache.org/jira/browse/HBASE-11603) | Apply version of HADOOP-8027 to our JMXJsonServlet |  Major | . | stack | stack |
| [HBASE-10205](https://issues.apache.org/jira/browse/HBASE-10205) | ConcurrentModificationException in BucketAllocator |  Minor | regionserver | Arjen Roodselaar | Arjen Roodselaar |
| [HBASE-11678](https://issues.apache.org/jira/browse/HBASE-11678) | BucketCache ramCache fills heap after running a few hours |  Critical | BlockCache | stack | stack |
| [HBASE-11659](https://issues.apache.org/jira/browse/HBASE-11659) | Region state RPC call is not idempotent |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11705](https://issues.apache.org/jira/browse/HBASE-11705) | callQueueSize should be decremented in a fail-fast scenario |  Critical | IPC/RPC | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11589](https://issues.apache.org/jira/browse/HBASE-11589) | AccessControlException should be a not retriable exception |  Major | IPC/RPC | Kashif | Qiang Tian |
| [HBASE-11527](https://issues.apache.org/jira/browse/HBASE-11527) | Cluster free memory limit check should consider L2 block cache size also when L2 cache is onheap. |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11716](https://issues.apache.org/jira/browse/HBASE-11716) | LoadTestDataGeneratorWithVisibilityLabels should handle Delete mutations |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11718](https://issues.apache.org/jira/browse/HBASE-11718) | Remove some logs in RpcClient.java |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11719](https://issues.apache.org/jira/browse/HBASE-11719) | Remove some unused paths in AsyncClient |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11709](https://issues.apache.org/jira/browse/HBASE-11709) | TestMasterShutdown can fail sometime |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11703](https://issues.apache.org/jira/browse/HBASE-11703) | Meta region state could be corrupted |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11725](https://issues.apache.org/jira/browse/HBASE-11725) | Backport failover checking change to 1.0 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11727](https://issues.apache.org/jira/browse/HBASE-11727) | Assignment wait time error in case of ServerNotRunningYetException |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11476](https://issues.apache.org/jira/browse/HBASE-11476) | Expand 'Conceptual View' section of Data Model chapter |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11550](https://issues.apache.org/jira/browse/HBASE-11550) | Custom value for BUCKET\_CACHE\_BUCKETS\_KEY should be sorted |  Trivial | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11687](https://issues.apache.org/jira/browse/HBASE-11687) | No need to abort on postOpenDeployTasks exception if region opening is cancelled |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11717](https://issues.apache.org/jira/browse/HBASE-11717) | Remove unused config 'hbase.offheapcache.percentage' from hbase-default.xml and book |  Minor | documentation | Anoop Sam John | Anoop Sam John |
| [HBASE-11745](https://issues.apache.org/jira/browse/HBASE-11745) | FilterAllFilter should return ReturnCode.SKIP |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11627](https://issues.apache.org/jira/browse/HBASE-11627) | RegionSplitter's rollingSplit terminated with "/ by zero", and the \_balancedSplit file was not deleted properly |  Major | Admin, util | louis hust | Sean Busbey |
| [HBASE-11708](https://issues.apache.org/jira/browse/HBASE-11708) | RegionSplitter incorrectly calculates splitcount |  Minor | Admin, util | Sean Busbey | louis hust |
| [HBASE-11755](https://issues.apache.org/jira/browse/HBASE-11755) | VisibilityController returns the wrong value for preBalanceSwitch() |  Minor | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11733](https://issues.apache.org/jira/browse/HBASE-11733) | Avoid copy-paste in Master/Region CoprocessorHost |  Trivial | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11728](https://issues.apache.org/jira/browse/HBASE-11728) | Data loss while scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | Scanners | wuchengzhi | ramkrishna.s.vasudevan |
| [HBASE-11770](https://issues.apache.org/jira/browse/HBASE-11770) | TestBlockCacheReporting.testBucketCache is not stable |  Major | test | Sergey Soldatov | Sergey Soldatov |
| [HBASE-11773](https://issues.apache.org/jira/browse/HBASE-11773) | Wrong field used for protobuf construction in RegionStates. |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11744](https://issues.apache.org/jira/browse/HBASE-11744) | RpcServer code should not use a collection from netty internal |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11789](https://issues.apache.org/jira/browse/HBASE-11789) | LoadIncrementalHFiles is not picking up the -D option |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11802](https://issues.apache.org/jira/browse/HBASE-11802) | Scan copy constructor doesn't copy reversed member variable |  Minor | . | James Taylor | ramkrishna.s.vasudevan |
| [HBASE-11617](https://issues.apache.org/jira/browse/HBASE-11617) | incorrect AgeOfLastAppliedOp and AgeOfLastShippedOp in replication Metrics when no new replication OP |  Minor | Replication | Demai Ni | Demai Ni |
| [HBASE-11794](https://issues.apache.org/jira/browse/HBASE-11794) | StripeStoreFlusher causes NullPointerException |  Critical | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-11536](https://issues.apache.org/jira/browse/HBASE-11536) | Puts of region location to Meta may be out of order which causes inconsistent of region location |  Critical | Region Assignment | Liu Shaohui | Liu Shaohui |
| [HBASE-11816](https://issues.apache.org/jira/browse/HBASE-11816) | Initializing custom Metrics implementation failed in Mapper or Reducer |  Minor | metrics | Huafeng Wang | Huafeng Wang |
| [HBASE-11782](https://issues.apache.org/jira/browse/HBASE-11782) | Document that hbase.MetaMigrationConvertingToPB needs to be set to true for migrations pre 0.96 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11813](https://issues.apache.org/jira/browse/HBASE-11813) | CellScanner#advance may overflow stack |  Blocker | . | Andrew Purtell | stack |
| [HBASE-11766](https://issues.apache.org/jira/browse/HBASE-11766) | Backdoor CoprocessorHConnection is no longer being used for local writes |  Major | . | James Taylor | Andrew Purtell |
| [HBASE-11591](https://issues.apache.org/jira/browse/HBASE-11591) | Scanner fails to retrieve KV  from bulk loaded file with highest sequence id than the cell's mvcc in a non-bulk loaded file |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11823](https://issues.apache.org/jira/browse/HBASE-11823) | Cleanup javadoc warnings. |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11814](https://issues.apache.org/jira/browse/HBASE-11814) | TestAssignmentManager.testCloseFailed() and testOpenCloseRacing() is flaky |  Minor | . | Virag Kothari | Virag Kothari |
| [HBASE-9746](https://issues.apache.org/jira/browse/HBASE-9746) | RegionServer can't start when replication tries to replicate to an unknown host |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11820](https://issues.apache.org/jira/browse/HBASE-11820) | ReplicationSource : Set replication codec class as RPC codec class on a clonned Configuration |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11844](https://issues.apache.org/jira/browse/HBASE-11844) | region\_mover.rb load enters an infinite loop if region already present on target server |  Minor | scripts | Stephen Veiss | Stephen Veiss |
| [HBASE-11856](https://issues.apache.org/jira/browse/HBASE-11856) | hbase-common needs a log4j.properties resource for handling unit test logging output |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11851](https://issues.apache.org/jira/browse/HBASE-11851) | RpcClient can try to close a connection not ready to close |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11859](https://issues.apache.org/jira/browse/HBASE-11859) | 'hadoop jar' references in documentation should mention hbase-server.jar, not hbase.jar |  Minor | documentation | Stephen Veiss | Stephen Veiss |
| [HBASE-11726](https://issues.apache.org/jira/browse/HBASE-11726) | Master should fail-safe if starting with a pre 0.96 layout |  Critical | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11857](https://issues.apache.org/jira/browse/HBASE-11857) | Restore ReaderBase.initAfterCompression() and WALCellCodec.create(Configuration, CompressionContext) |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-11797](https://issues.apache.org/jira/browse/HBASE-11797) | Create Table interface to replace HTableInterface |  Major | . | Carter | Carter |
| [HBASE-11880](https://issues.apache.org/jira/browse/HBASE-11880) | NPE in MasterStatusServlet |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11878](https://issues.apache.org/jira/browse/HBASE-11878) | TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController not yet initialized |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11863](https://issues.apache.org/jira/browse/HBASE-11863) | WAL files are not archived and stays in the WAL directory after splitting |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11876](https://issues.apache.org/jira/browse/HBASE-11876) | RegionScanner.nextRaw(...) should not update metrics |  Major | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-11887](https://issues.apache.org/jira/browse/HBASE-11887) | Memory retention in branch-1; millions of instances of LiteralByteString for column qualifier and value |  Critical | Protobufs | stack | stack |
| [HBASE-11886](https://issues.apache.org/jira/browse/HBASE-11886) | The creator of the table should have all permissions on the table |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-11882](https://issues.apache.org/jira/browse/HBASE-11882) | Row level consistency may not be maintained with bulk load and compaction |  Critical | regionserver | Jerry He | Jerry He |
| [HBASE-11898](https://issues.apache.org/jira/browse/HBASE-11898) | CoprocessorHost.Environment should cache class loader instance |  Major | Coprocessors | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11905](https://issues.apache.org/jira/browse/HBASE-11905) | Add orca to server UIs and update logo. |  Major | . | stack | stack |
| [HBASE-11896](https://issues.apache.org/jira/browse/HBASE-11896) | LoadIncrementalHFiles fails in secure mode if the namespace is specified |  Major | . | Ashish Singhi |  |
| [HBASE-11836](https://issues.apache.org/jira/browse/HBASE-11836) | IntegrationTestTimeBoundedMultiGetRequestsWithRegionReplicas tests simple get by default |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11787](https://issues.apache.org/jira/browse/HBASE-11787) | TestRegionLocations is not categorized |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11772](https://issues.apache.org/jira/browse/HBASE-11772) | Bulk load mvcc and seqId issues with native hfiles |  Critical | . | Jerry He | Jerry He |
| [HBASE-11081](https://issues.apache.org/jira/browse/HBASE-11081) | Trunk Master won't start; looking for Constructor that takes conf only |  Major | . | stack | stack |
| [HBASE-11445](https://issues.apache.org/jira/browse/HBASE-11445) | TestZKProcedure#testMultiCohortWithMemberTimeoutDuringPrepare is flaky |  Major | snapshots | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11832](https://issues.apache.org/jira/browse/HBASE-11832) | maven release plugin overrides command line arguments |  Minor | . | Enoch Hsu | Enoch Hsu |
| [HBASE-9473](https://issues.apache.org/jira/browse/HBASE-9473) | Change UI to list 'system tables' rather than 'catalog tables'. |  Major | UI | stack | stack |
| [HBASE-11839](https://issues.apache.org/jira/browse/HBASE-11839) | TestRegionRebalance is flakey |  Major | . | Alex Newman | Sergey Soldatov |
| [HBASE-11921](https://issues.apache.org/jira/browse/HBASE-11921) | Minor fixups that come of testing branch-1 |  Minor | . | stack | stack |
| [HBASE-11932](https://issues.apache.org/jira/browse/HBASE-11932) | Stop the html-single from building a html-single of every chapter and cluttering the docbkx directory |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11947](https://issues.apache.org/jira/browse/HBASE-11947) | NoSuchElementException in balancer for master regions |  Major | . | Enis Soztutar | Sergey Soldatov |
| [HBASE-11936](https://issues.apache.org/jira/browse/HBASE-11936) | IsolationLevel must be attribute of a Query not a Scan |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11946](https://issues.apache.org/jira/browse/HBASE-11946) | Get xref and API docs to build properly again |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11959](https://issues.apache.org/jira/browse/HBASE-11959) | TestAssignmentManagerOnCluster is flaky |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11949](https://issues.apache.org/jira/browse/HBASE-11949) | Setting hfile.block.cache.size=0 doesn't actually disable blockcache |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11893](https://issues.apache.org/jira/browse/HBASE-11893) | RowTooBigException should be in hbase-client module |  Minor | API, Client | Sean Busbey | Mikhail Antonov |
| [HBASE-11892](https://issues.apache.org/jira/browse/HBASE-11892) | configs contain stale entries |  Trivial | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11972](https://issues.apache.org/jira/browse/HBASE-11972) | The "doAs user" used in the update to hbase:acl table RPC is incorrect |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-11976](https://issues.apache.org/jira/browse/HBASE-11976) | Server startcode is not checked for bulk region assignment |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11984](https://issues.apache.org/jira/browse/HBASE-11984) | TestClassFinder failing on occasion |  Major | . | stack | stack |
| [HBASE-11989](https://issues.apache.org/jira/browse/HBASE-11989) | IntegrationTestLoadAndVerify cannot be configured anymore on distributed mode |  Trivial | test | Enis Soztutar | Enis Soztutar |
| [HBASE-11788](https://issues.apache.org/jira/browse/HBASE-11788) | hbase is not deleting the cell when a Put with a KeyValue, KeyValue.Type.Delete is submitted |  Major | . | Cristian Armaselu | Srikanth Srungarapu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9928](https://issues.apache.org/jira/browse/HBASE-9928) | TestHRegion should clean up test-data directory upon completion |  Major | . | Ted Yu | Gustavo Anatoly |
| [HBASE-10180](https://issues.apache.org/jira/browse/HBASE-10180) | TestByteBufferIOEngine#testByteBufferIOEngine occasionally fails |  Major | . | Ted Yu | chunhui shen |
| [HBASE-10189](https://issues.apache.org/jira/browse/HBASE-10189) | Intermittent TestReplicationSyncUpTool failure |  Major | . | Ted Yu | Demai Ni |
| [HBASE-10044](https://issues.apache.org/jira/browse/HBASE-10044) | test-patch.sh should accept documents by known file extensions |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10130](https://issues.apache.org/jira/browse/HBASE-10130) | TestSplitLogManager#testTaskResigned fails sometimes |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10301](https://issues.apache.org/jira/browse/HBASE-10301) | TestAssignmentManagerOnCluster#testOpenCloseRacing fails intermittently |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10377](https://issues.apache.org/jira/browse/HBASE-10377) | Add test for HBASE-10370 Compaction in out-of-date Store causes region split failure |  Major | . | Ted Yu | Liu Shaohui |
| [HBASE-10394](https://issues.apache.org/jira/browse/HBASE-10394) | Test for Replication with tags |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10406](https://issues.apache.org/jira/browse/HBASE-10406) | Column family option is not effective in IntegrationTestSendTraceRequests |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10408](https://issues.apache.org/jira/browse/HBASE-10408) | Intermittent TestDistributedLogSplitting#testLogReplayForDisablingTable failure |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10440](https://issues.apache.org/jira/browse/HBASE-10440) | integration tests fail due to nonce collisions |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10465](https://issues.apache.org/jira/browse/HBASE-10465) | TestZKPermissionsWatcher.testPermissionsWatcher fails sometimes |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10475](https://issues.apache.org/jira/browse/HBASE-10475) | TestRegionServerCoprocessorExceptionWithAbort may timeout due to concurrent lease removal |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10480](https://issues.apache.org/jira/browse/HBASE-10480) | TestLogRollPeriod#testWithEdits may fail due to insufficient waiting |  Minor | test | Ted Yu | Matteo Bertozzi |
| [HBASE-10543](https://issues.apache.org/jira/browse/HBASE-10543) | Two rare test failures with TestLogsCleaner and TestSplitLogWorker |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10635](https://issues.apache.org/jira/browse/HBASE-10635) | thrift#TestThriftServer fails due to TTL validity check |  Trivial | . | Ted Yu | Enis Soztutar |
| [HBASE-10649](https://issues.apache.org/jira/browse/HBASE-10649) | TestMasterMetrics fails occasionally |  Major | . | Ted Yu | Jimmy Xiang |
| [HBASE-10764](https://issues.apache.org/jira/browse/HBASE-10764) | TestLoadIncrementalHFilesSplitRecovery#testBulkLoadPhaseFailure takes too long |  Minor | test | rajeshbabu | rajeshbabu |
| [HBASE-10767](https://issues.apache.org/jira/browse/HBASE-10767) | Load balancer may interfere with tests in TestHBaseFsck |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10782](https://issues.apache.org/jira/browse/HBASE-10782) | Hadoop2 MR tests fail occasionally because of mapreduce.jobhistory.address is no set in job conf |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10828](https://issues.apache.org/jira/browse/HBASE-10828) | TestRegionObserverInterface#testHBase3583 should wait for all regions to be assigned |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10774](https://issues.apache.org/jira/browse/HBASE-10774) | Restore TestMultiTableInputFormat |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10852](https://issues.apache.org/jira/browse/HBASE-10852) | TestDistributedLogSplitting#testDisallowWritesInRecovering occasionally fails |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-8889](https://issues.apache.org/jira/browse/HBASE-8889) | TestIOFencing#testFencingAroundCompaction occasionally fails |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-10868](https://issues.apache.org/jira/browse/HBASE-10868) | TestAtomicOperation should close HRegion instance after each subtest |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10867](https://issues.apache.org/jira/browse/HBASE-10867) | TestRegionPlacement#testRegionPlacement occasionally fails |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10988](https://issues.apache.org/jira/browse/HBASE-10988) | Properly wait for server in TestThriftServerCmdLine |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11010](https://issues.apache.org/jira/browse/HBASE-11010) | TestChangingEncoding is unnecessarily slow |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11019](https://issues.apache.org/jira/browse/HBASE-11019) | incCount() method should be properly stubbed in HConnectionTestingUtility#getMockedConnectionAndDecorate() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11037](https://issues.apache.org/jira/browse/HBASE-11037) | Race condition in TestZKBasedOpenCloseRegion |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9953](https://issues.apache.org/jira/browse/HBASE-9953) | PerformanceEvaluation: Decouple data size from client concurrency |  Minor | Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11051](https://issues.apache.org/jira/browse/HBASE-11051) | checkJavacWarnings in test-patch.sh should bail out early if there is compilation error |  Minor | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11152](https://issues.apache.org/jira/browse/HBASE-11152) | test-patch.sh should be able to handle the case where $TERM is not defined |  Major | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11166](https://issues.apache.org/jira/browse/HBASE-11166) | Categorize tests in hbase-prefix-tree module |  Minor | . | Ted Yu | Rekha Joshi |
| [HBASE-11104](https://issues.apache.org/jira/browse/HBASE-11104) | IntegrationTestImportTsv#testRunFromOutputCommitter misses credential initialization |  Minor | . | Ted Yu | Vandana Ayyalasomayajula |
| [HBASE-11328](https://issues.apache.org/jira/browse/HBASE-11328) | testMoveRegion could fail |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11345](https://issues.apache.org/jira/browse/HBASE-11345) | Add an option not to restore cluster after an IT test |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11375](https://issues.apache.org/jira/browse/HBASE-11375) | Validate compile-protobuf profile in test-patch.sh |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11404](https://issues.apache.org/jira/browse/HBASE-11404) | TestLogLevel should stop the server at the end |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11443](https://issues.apache.org/jira/browse/HBASE-11443) | TestIOFencing#testFencingAroundCompactionAfterWALSync times out |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11057](https://issues.apache.org/jira/browse/HBASE-11057) | Improve TestShell coverage of grant and revoke comamnds |  Minor | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-11615](https://issues.apache.org/jira/browse/HBASE-11615) | TestZKLessAMOnCluster.testForceAssignWhileClosing failed on Jenkins |  Major | master | Mike Drob | Jimmy Xiang |
| [HBASE-11713](https://issues.apache.org/jira/browse/HBASE-11713) | Adding hbase shell unit test coverage for visibility labels. |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11918](https://issues.apache.org/jira/browse/HBASE-11918) | TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController initialization not being recognized |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11942](https://issues.apache.org/jira/browse/HBASE-11942) | Fix TestHRegionBusyWait |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11966](https://issues.apache.org/jira/browse/HBASE-11966) | Minor error in TestHRegion.testCheckAndMutate\_WithCorrectValue() |  Minor | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8541](https://issues.apache.org/jira/browse/HBASE-8541) | implement flush-into-stripes in stripe compactions |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9489](https://issues.apache.org/jira/browse/HBASE-9489) | Add cp hooks in online merge before and after setting PONR |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-10094](https://issues.apache.org/jira/browse/HBASE-10094) | Add batching to HLogPerformanceEvaluation |  Major | Performance, wal | stack | Himanshu Vashishtha |
| [HBASE-10043](https://issues.apache.org/jira/browse/HBASE-10043) | Fix Potential Resouce Leak in MultiTableInputFormatBase |  Major | mapreduce | Elliott Clark | Elliott Clark |
| [HBASE-10110](https://issues.apache.org/jira/browse/HBASE-10110) | Fix Potential Resource Leak in StoreFlusher |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-9966](https://issues.apache.org/jira/browse/HBASE-9966) | Create IntegrationTest for Online Bloom Filter Change |  Major | HFile, test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10124](https://issues.apache.org/jira/browse/HBASE-10124) | Make Sub Classes Static When Possible |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-9261](https://issues.apache.org/jira/browse/HBASE-9261) | Add cp hooks after {start\|close}RegionOperation |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-10143](https://issues.apache.org/jira/browse/HBASE-10143) | Clean up dead local stores in FSUtils |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-9889](https://issues.apache.org/jira/browse/HBASE-9889) | Make sure we clean up scannerReadPoints upon any exceptions |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-10150](https://issues.apache.org/jira/browse/HBASE-10150) | Write attachment Id of tested patch into JIRA comment |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9858](https://issues.apache.org/jira/browse/HBASE-9858) | Integration test and LoadTestTool support for cell Visibility |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-9977](https://issues.apache.org/jira/browse/HBASE-9977) | Define C interface of HBase Client Asynchronous APIs |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-9941](https://issues.apache.org/jira/browse/HBASE-9941) | The context ClassLoader isn't set while calling into a coprocessor |  Major | Coprocessors | Benoit Sigoure | Andrew Purtell |
| [HBASE-9846](https://issues.apache.org/jira/browse/HBASE-9846) | Integration test and LoadTestTool support for cell ACLs |  Major | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-10391](https://issues.apache.org/jira/browse/HBASE-10391) | Deprecate KeyValue#getBuffer |  Major | . | stack | stack |
| [HBASE-10420](https://issues.apache.org/jira/browse/HBASE-10420) | Replace KV.getBuffer with KV.get{Row\|Family\|Qualifier\|Value\|Tags}Array |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10156](https://issues.apache.org/jira/browse/HBASE-10156) | FSHLog Refactor (WAS -\> Fix up the HBASE-8755 slowdown when low contention) |  Major | wal | stack | stack |
| [HBASE-10550](https://issues.apache.org/jira/browse/HBASE-10550) | Register HBase tokens with ServiceLoader |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10356](https://issues.apache.org/jira/browse/HBASE-10356) | Failover RPC's for multi-get |  Major | Client | Enis Soztutar | Sergey Shelukhin |
| [HBASE-10523](https://issues.apache.org/jira/browse/HBASE-10523) | Correct wrong handling and add proper handling for swallowed InterruptedException thrown by Thread.sleep in util |  Major | util | Honghua Feng | Honghua Feng |
| [HBASE-10347](https://issues.apache.org/jira/browse/HBASE-10347) | HRegionInfo changes for adding replicaId and MetaEditor/MetaReader changes for region replicas |  Major | Region Assignment | Enis Soztutar | Enis Soztutar |
| [HBASE-10348](https://issues.apache.org/jira/browse/HBASE-10348) | HTableDescriptor changes for region replicas |  Major | . | Enis Soztutar | Devaraj Das |
| [HBASE-10350](https://issues.apache.org/jira/browse/HBASE-10350) | Master/AM/RegionStates changes to create and assign region replicas |  Major | . | Enis Soztutar | Devaraj Das |
| [HBASE-10354](https://issues.apache.org/jira/browse/HBASE-10354) | Add an API for defining consistency per request |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-10359](https://issues.apache.org/jira/browse/HBASE-10359) | Master/RS WebUI changes for region replicas |  Major | . | Enis Soztutar | Devaraj Das |
| [HBASE-10517](https://issues.apache.org/jira/browse/HBASE-10517) | NPE in MetaCache.clearCache() |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10361](https://issues.apache.org/jira/browse/HBASE-10361) | Enable/AlterTable support for region replicas |  Major | master | Enis Soztutar | Devaraj Das |
| [HBASE-10520](https://issues.apache.org/jira/browse/HBASE-10520) | Add handling for swallowed InterruptedException thrown by Thread.sleep in MiniZooKeeperCluster |  Minor | Zookeeper | Honghua Feng | Honghua Feng |
| [HBASE-10521](https://issues.apache.org/jira/browse/HBASE-10521) | Add handling for swallowed InterruptedException thrown by Thread.sleep in RpcServer |  Minor | IPC/RPC | Honghua Feng | Honghua Feng |
| [HBASE-10522](https://issues.apache.org/jira/browse/HBASE-10522) | Correct wrong handling and add proper handling for swallowed InterruptedException thrown by Thread.sleep in client |  Major | Client | Honghua Feng | Honghua Feng |
| [HBASE-10519](https://issues.apache.org/jira/browse/HBASE-10519) | Add handling for swallowed InterruptedException thrown by Thread.sleep in rest related files |  Minor | REST | Honghua Feng | Honghua Feng |
| [HBASE-10524](https://issues.apache.org/jira/browse/HBASE-10524) | Correct wrong handling and add proper handling for swallowed InterruptedException thrown by Thread.sleep in regionserver |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10526](https://issues.apache.org/jira/browse/HBASE-10526) | Using Cell instead of KeyValue in HFileOutputFormat |  Major | mapreduce | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10352](https://issues.apache.org/jira/browse/HBASE-10352) | Region and RegionServer changes for opening region replicas, and refreshing store files |  Major | Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-10362](https://issues.apache.org/jira/browse/HBASE-10362) | HBCK changes for supporting region replicas |  Major | hbck | Enis Soztutar | Devaraj Das |
| [HBASE-10351](https://issues.apache.org/jira/browse/HBASE-10351) | LoadBalancer changes for supporting region replicas |  Major | master | Enis Soztutar | Enis Soztutar |
| [HBASE-10630](https://issues.apache.org/jira/browse/HBASE-10630) | NullPointerException in ConnectionManager$HConnectionImplementation.locateRegionInMeta() due to missing region info |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10633](https://issues.apache.org/jira/browse/HBASE-10633) | StoreFileRefresherChore throws ConcurrentModificationException sometimes |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-10652](https://issues.apache.org/jira/browse/HBASE-10652) | Fix incorrect handling of IE that restores current thread's interrupt status within while/for loops in rpc |  Minor | regionserver, Replication | Honghua Feng | Honghua Feng |
| [HBASE-10650](https://issues.apache.org/jira/browse/HBASE-10650) | Fix incorrect handling of IE that restores current thread's interrupt status within while/for loops in RegionServer |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10672](https://issues.apache.org/jira/browse/HBASE-10672) | Table snapshot should handle tables whose REGION\_REPLICATION is greater than one |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-10620](https://issues.apache.org/jira/browse/HBASE-10620) | LoadBalancer.needsBalance() should check for co-located region replicas as well |  Major | . | Enis Soztutar | Devaraj Das |
| [HBASE-10697](https://issues.apache.org/jira/browse/HBASE-10697) | Convert TestSimpleTotalOrderPartitioner to junit4 test |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10355](https://issues.apache.org/jira/browse/HBASE-10355) | Failover RPC's from client using region replicas |  Major | Client | Enis Soztutar | Nicolas Liochon |
| [HBASE-10651](https://issues.apache.org/jira/browse/HBASE-10651) | Fix incorrect handling of IE that restores current thread's interrupt status within while/for loops in Replication |  Major | regionserver, Replication | Honghua Feng | Honghua Feng |
| [HBASE-10704](https://issues.apache.org/jira/browse/HBASE-10704) | BaseLoadBalancer#roundRobinAssignment() may add same region to assignment plan multiple times |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10717](https://issues.apache.org/jira/browse/HBASE-10717) | TestFSHDFSUtils#testIsSameHdfs fails with IllegalArgumentException running against hadoop 2.3 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10572](https://issues.apache.org/jira/browse/HBASE-10572) | Create an IntegrationTest for region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10723](https://issues.apache.org/jira/browse/HBASE-10723) | Convert TestExplicitColumnTracker to junit4 test |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10169](https://issues.apache.org/jira/browse/HBASE-10169) | Batch coprocessor |  Major | Coprocessors | Jingcheng Du | Jingcheng Du |
| [HBASE-10688](https://issues.apache.org/jira/browse/HBASE-10688) | Add a draining\_node script to manage nodes in draining mode |  Major | scripts | Enis Soztutar | Enis Soztutar |
| [HBASE-10729](https://issues.apache.org/jira/browse/HBASE-10729) | Enable table doesn't balance out replicas evenly if the replicas were unassigned earlier |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-10734](https://issues.apache.org/jira/browse/HBASE-10734) | Fix RegionStates.getRegionAssignments to not add duplicate regions |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-10616](https://issues.apache.org/jira/browse/HBASE-10616) | Integration test for multi-get calls |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-10743](https://issues.apache.org/jira/browse/HBASE-10743) | Replica map update is problematic in RegionStates |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-10648](https://issues.apache.org/jira/browse/HBASE-10648) | Pluggable Memstore |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10741](https://issues.apache.org/jira/browse/HBASE-10741) | Deprecate HTablePool and HTableFactory |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10778](https://issues.apache.org/jira/browse/HBASE-10778) | Unique keys accounting in MultiThreadedReader is incorrect |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10779](https://issues.apache.org/jira/browse/HBASE-10779) | Doc hadoop1 deprecated in 0.98 and NOT supported in hbase 1.0 |  Major | . | stack | stack |
| [HBASE-10691](https://issues.apache.org/jira/browse/HBASE-10691) | test-patch.sh should continue even if compilation against hadoop 1.0 / 1.1 fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10822](https://issues.apache.org/jira/browse/HBASE-10822) | Thread local addendum to HBASE-10656 Counter |  Major | . | stack | Hiroshi Ikeda |
| [HBASE-5175](https://issues.apache.org/jira/browse/HBASE-5175) | Add DoubleColumnInterpreter |  Major | . | Ted Yu | Julian Wissmann |
| [HBASE-10750](https://issues.apache.org/jira/browse/HBASE-10750) | Pluggable MemStoreLAB |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-10858](https://issues.apache.org/jira/browse/HBASE-10858) | TestRegionRebalancing is failing |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10531](https://issues.apache.org/jira/browse/HBASE-10531) | Revisit how the key byte[] is passed to HFileScanner.seekTo and reseekTo |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10815](https://issues.apache.org/jira/browse/HBASE-10815) | Master regionserver should be rolling-upgradable |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10888](https://issues.apache.org/jira/browse/HBASE-10888) | Enable distributed log replay as default |  Major | MTTR, wal | stack | stack |
| [HBASE-10817](https://issues.apache.org/jira/browse/HBASE-10817) | Add some tests on a real cluster for replica: multi master, replication |  Minor | master, regionserver, Replication | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10701](https://issues.apache.org/jira/browse/HBASE-10701) | Cache invalidation improvements from client side |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10859](https://issues.apache.org/jira/browse/HBASE-10859) | Use HFileLink in opening region files from secondaries |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10791](https://issues.apache.org/jira/browse/HBASE-10791) | Add integration test to demonstrate performance improvement |  Major | Performance, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10634](https://issues.apache.org/jira/browse/HBASE-10634) | Multiget doesn't fully work |  Major | . | Devaraj Das | Sergey Shelukhin |
| [HBASE-10794](https://issues.apache.org/jira/browse/HBASE-10794) | multi-get should handle replica location missing from cache |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-10963](https://issues.apache.org/jira/browse/HBASE-10963) | Refactor cell ACL tests |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10972](https://issues.apache.org/jira/browse/HBASE-10972) | OOBE in prefix key encoding |  Major | Scanners | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-10929](https://issues.apache.org/jira/browse/HBASE-10929) | Change ScanQueryMatcher to use Cells instead of KeyValue. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11025](https://issues.apache.org/jira/browse/HBASE-11025) | Infrastructure for pluggable consensus service |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-10918](https://issues.apache.org/jira/browse/HBASE-10918) | [VisibilityController] System table backed ScanLabelGenerator |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10957](https://issues.apache.org/jira/browse/HBASE-10957) | HBASE-10070: HMaster can abort with NPE in #rebuildUserRegions |  Major | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11053](https://issues.apache.org/jira/browse/HBASE-11053) | Change DeleteTracker APIs to work with Cell |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10993](https://issues.apache.org/jira/browse/HBASE-10993) | Deprioritize long-running scanners |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11092](https://issues.apache.org/jira/browse/HBASE-11092) | Server interface should have method getConsensusProvider() |  Major | Consensus | Mikhail Antonov | Mikhail Antonov |
| [HBASE-10661](https://issues.apache.org/jira/browse/HBASE-10661) | TestStochasticLoadBalancer.testRegionReplicationOnMidClusterWithRacks() is flaky |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11140](https://issues.apache.org/jira/browse/HBASE-11140) | LocalHBaseCluster should create ConsensusProvider per each server |  Major | Consensus | Mikhail Antonov | Mikhail Antonov |
| [HBASE-10561](https://issues.apache.org/jira/browse/HBASE-10561) | Forward port: HBASE-10212 New rpc metric: number of active handler |  Major | IPC/RPC | Lars Hofhansl | Liang Xie |
| [HBASE-11098](https://issues.apache.org/jira/browse/HBASE-11098) | Improve documentation around our blockcache options |  Major | documentation | stack | stack |
| [HBASE-10513](https://issues.apache.org/jira/browse/HBASE-10513) | Provide user documentation for region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10810](https://issues.apache.org/jira/browse/HBASE-10810) | LoadTestTool should share the connection and connection pool |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10357](https://issues.apache.org/jira/browse/HBASE-10357) | Failover RPC's for scans |  Major | Client | Enis Soztutar | Devaraj Das |
| [HBASE-11171](https://issues.apache.org/jira/browse/HBASE-11171) | More doc improvements on block cache options |  Major | documentation | stack | stack |
| [HBASE-10573](https://issues.apache.org/jira/browse/HBASE-10573) | Use Netty 4 |  Major | . | Andrew Purtell | Nicolas Liochon |
| [HBASE-11214](https://issues.apache.org/jira/browse/HBASE-11214) | Fixes for scans on a replicated table |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11108](https://issues.apache.org/jira/browse/HBASE-11108) | Split ZKTable into interface and implementation |  Major | Consensus, Zookeeper | Konstantin Boudnik | Mikhail Antonov |
| [HBASE-10801](https://issues.apache.org/jira/browse/HBASE-10801) | Ensure DBE interfaces can work with Cell |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11161](https://issues.apache.org/jira/browse/HBASE-11161) | Provide example of POJO encoding with protobuf |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10818](https://issues.apache.org/jira/browse/HBASE-10818) | Add integration test for bulkload with replicas |  Major | . | Nick Dimiduk | Devaraj Das |
| [HBASE-9149](https://issues.apache.org/jira/browse/HBASE-9149) | javadoc cleanup of to reflect .META. rename to hbase:meta |  Critical | documentation | Francis Liu | Misty Stanley-Jones |
| [HBASE-10985](https://issues.apache.org/jira/browse/HBASE-10985) | Decouple Split Transaction from Zookeeper |  Major | Consensus, Zookeeper | Sergey Soldatov | Sergey Soldatov |
| [HBASE-10915](https://issues.apache.org/jira/browse/HBASE-10915) | Decouple region closing (HM and HRS) from ZK |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11135](https://issues.apache.org/jira/browse/HBASE-11135) | Change region sequenceid generation so happens earlier in the append cycle rather than just before added to file |  Major | wal | stack | stack |
| [HBASE-10962](https://issues.apache.org/jira/browse/HBASE-10962) | Decouple region opening (HM and HRS) from ZK |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11307](https://issues.apache.org/jira/browse/HBASE-11307) | Deprecate SlabCache |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11059](https://issues.apache.org/jira/browse/HBASE-11059) | ZK-less region assignment |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11094](https://issues.apache.org/jira/browse/HBASE-11094) | Distributed log replay is incompatible for rolling restarts |  Blocker | . | Enis Soztutar | Jeffrey Zhong |
| [HBASE-11069](https://issues.apache.org/jira/browse/HBASE-11069) | Decouple region merging from ZooKeeper |  Major | Consensus, Zookeeper | Sergey Soldatov | Sergey Soldatov |
| [HBASE-11280](https://issues.apache.org/jira/browse/HBASE-11280) | Document distributed log replay and distributed log splitting |  Major | documentation, MTTR, wal | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11395](https://issues.apache.org/jira/browse/HBASE-11395) | Add logging for HBase table operations |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11102](https://issues.apache.org/jira/browse/HBASE-11102) | Document JDK versions supported by each release |  Major | documentation | Enis Soztutar | Misty Stanley-Jones |
| [HBASE-11027](https://issues.apache.org/jira/browse/HBASE-11027) | Remove kv.isDeleteXX() and related methods and use CellUtil apis. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11332](https://issues.apache.org/jira/browse/HBASE-11332) | Fix for metas location cache from HBASE-10785 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11372](https://issues.apache.org/jira/browse/HBASE-11372) | Remove SlabCache |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11088](https://issues.apache.org/jira/browse/HBASE-11088) | Support Visibility Expression Deletes in Shell |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11483](https://issues.apache.org/jira/browse/HBASE-11483) | Check the rest of the book for new XML validity errors and fix |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-10297](https://issues.apache.org/jira/browse/HBASE-10297) | LoadAndVerify Integration Test for cell visibility |  Major | test | Anoop Sam John | Anoop Sam John |
| [HBASE-11101](https://issues.apache.org/jira/browse/HBASE-11101) | Documentation review |  Major | . | Enis Soztutar | Misty Stanley-Jones |
| [HBASE-11367](https://issues.apache.org/jira/browse/HBASE-11367) | Pluggable replication endpoint |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10930](https://issues.apache.org/jira/browse/HBASE-10930) | Change Filters and GetClosestRowBeforeTracker to work with Cells |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11511](https://issues.apache.org/jira/browse/HBASE-11511) | Write flush events to WAL |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11520](https://issues.apache.org/jira/browse/HBASE-11520) | Simplify offheap cache config by removing the confusing "hbase.bucketcache.percentage.in.combinedcache" |  Major | io | stack | stack |
| [HBASE-2251](https://issues.apache.org/jira/browse/HBASE-2251) | PE defaults to 1k rows - uncommon use case, and easy to hit benchmarks |  Major | Performance | ryan rawson | stack |
| [HBASE-11471](https://issues.apache.org/jira/browse/HBASE-11471) | Move TableStateManager and ZkTableStateManager and Server to hbase-server |  Major | Client, Consensus, Zookeeper | Mikhail Antonov | Alex Newman |
| [HBASE-11559](https://issues.apache.org/jira/browse/HBASE-11559) | Add dumping of DATA block usage to the BlockCache JSON report. |  Major | metrics | stack | stack |
| [HBASE-11573](https://issues.apache.org/jira/browse/HBASE-11573) | Report age on eviction |  Major | BlockCache | stack | stack |
| [HBASE-11384](https://issues.apache.org/jira/browse/HBASE-11384) | [Visibility Controller]Check for users covering authorizations for every mutation |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11651](https://issues.apache.org/jira/browse/HBASE-11651) | Add conf which disables MetaMigrationConvertingToPB check (for experts only) |  Major | master | stack | stack |
| [HBASE-11318](https://issues.apache.org/jira/browse/HBASE-11318) | Classes in security subpackages missing @InterfaceAudience annotations. |  Major | security | Jonathan Hsieh | Andrew Purtell |
| [HBASE-11740](https://issues.apache.org/jira/browse/HBASE-11740) | RegionStates.getRegionAssignments() gets stuck on clone |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11753](https://issues.apache.org/jira/browse/HBASE-11753) | Document HBASE\_SHELL\_OPTS environment variable |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11734](https://issues.apache.org/jira/browse/HBASE-11734) | Document changed behavior of hbase.hstore.time.to.purge.deletes |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11739](https://issues.apache.org/jira/browse/HBASE-11739) | Document blockCache contents report in the UI |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11508](https://issues.apache.org/jira/browse/HBASE-11508) | Document changes to IPC config parameters from HBASE-11492 |  Major | regionserver | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11572](https://issues.apache.org/jira/browse/HBASE-11572) | Add support for doing get/scans against a particular replica\_id |  Major | . | Enis Soztutar | Jeffrey Zhong |
| [HBASE-11512](https://issues.apache.org/jira/browse/HBASE-11512) | Write region open/close events to WAL |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11737](https://issues.apache.org/jira/browse/HBASE-11737) | Document callQueue improvements from HBASE-11355 and HBASE-11724 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11736](https://issues.apache.org/jira/browse/HBASE-11736) | Document SKIP\_FLUSH snapshot option |  Major | documentation, snapshots | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11752](https://issues.apache.org/jira/browse/HBASE-11752) | Document blockcache prefetch option |  Major | BlockCache, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11610](https://issues.apache.org/jira/browse/HBASE-11610) | Enhance remote meta updates |  Major | . | Jimmy Xiang | Virag Kothari |
| [HBASE-11822](https://issues.apache.org/jira/browse/HBASE-11822) | Convert EnvironmentEdge#getCurrentTimeMillis to getCurrentTime |  Major | . | stack | stack |
| [HBASE-11781](https://issues.apache.org/jira/browse/HBASE-11781) | Document new TableMapReduceUtil scanning options |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11072](https://issues.apache.org/jira/browse/HBASE-11072) | Abstract WAL splitting from ZK |  Major | Consensus, Zookeeper | Mikhail Antonov | Sergey Soldatov |
| [HBASE-10841](https://issues.apache.org/jira/browse/HBASE-10841) | Scan,Get,Put,Delete,etc setters should consistently return this |  Minor | Client, Usability | Nick Dimiduk | Enis Soztutar |
| [HBASE-11919](https://issues.apache.org/jira/browse/HBASE-11919) | Remove the deprecated pre/postGet CP hook |  Major | Coprocessors, regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11923](https://issues.apache.org/jira/browse/HBASE-11923) | Potential race condition in RecoverableZookeeper.checkZk() |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11934](https://issues.apache.org/jira/browse/HBASE-11934) | Support KeyValueCodec to encode non KeyValue cells. |  Critical | Performance, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-11963](https://issues.apache.org/jira/browse/HBASE-11963) | Synchronize peer cluster replication connection attempts |  Major | . | Andrew Purtell | Maddineni Sukumar |
| [HBASE-11941](https://issues.apache.org/jira/browse/HBASE-11941) | Rebuild site because of major structural changes to HTML |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11784](https://issues.apache.org/jira/browse/HBASE-11784) | Document global configuration for maxVersion |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9945](https://issues.apache.org/jira/browse/HBASE-9945) | Coprocessor loading and execution improvements |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-7319](https://issues.apache.org/jira/browse/HBASE-7319) | Extend Cell usage through read path |  Major | Compaction, Performance, regionserver, Scanners | Matt Corgan | ramkrishna.s.vasudevan |
| [HBASE-11209](https://issues.apache.org/jira/browse/HBASE-11209) | Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10909](https://issues.apache.org/jira/browse/HBASE-10909) | Abstract out ZooKeeper usage in HBase - phase 1 |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-10159](https://issues.apache.org/jira/browse/HBASE-10159) | Replaced deprecated interface Closeable |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10134](https://issues.apache.org/jira/browse/HBASE-10134) | Fix findbug warning in VisibilityController |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10206](https://issues.apache.org/jira/browse/HBASE-10206) | Explain tags in the hbase book |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10246](https://issues.apache.org/jira/browse/HBASE-10246) | Wrap long lines in recently added source files |  Trivial | . | Ted Yu | Gustavo Anatoly |
| [HBASE-10364](https://issues.apache.org/jira/browse/HBASE-10364) | Allow configuration option for parent znode in LoadTestTool |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10388](https://issues.apache.org/jira/browse/HBASE-10388) | Add export control notice in README |  Blocker | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10473](https://issues.apache.org/jira/browse/HBASE-10473) | Add utility for adorning http Context |  Major | UI | stack | stack |
| [HBASE-10439](https://issues.apache.org/jira/browse/HBASE-10439) | Document how to configure REST server impersonation |  Minor | documentation | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10612](https://issues.apache.org/jira/browse/HBASE-10612) | Remove unnecessary dependency on org.eclipse.jdt:core |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10609](https://issues.apache.org/jira/browse/HBASE-10609) | Remove filterKeyValue(Cell ignored) from FilterBase |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10670](https://issues.apache.org/jira/browse/HBASE-10670) | HBaseFsck#connect() should use new connection |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10700](https://issues.apache.org/jira/browse/HBASE-10700) | IntegrationTestWithCellVisibilityLoadAndVerify should allow current user to be the admin |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10601](https://issues.apache.org/jira/browse/HBASE-10601) | Upgrade hadoop dependency to 2.3.0 release |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10740](https://issues.apache.org/jira/browse/HBASE-10740) | Upgrade zookeeper to 3.4.6 release |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10787](https://issues.apache.org/jira/browse/HBASE-10787) | TestHCM#testConnection\* take too long |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10786](https://issues.apache.org/jira/browse/HBASE-10786) | If snapshot verification fails with 'Regions moved', the message should contain the name of region causing the failure |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10821](https://issues.apache.org/jira/browse/HBASE-10821) | Make ColumnInterpreter#getValue() abstract |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10824](https://issues.apache.org/jira/browse/HBASE-10824) | Enhance detection of protobuf generated code in line length check |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10889](https://issues.apache.org/jira/browse/HBASE-10889) | test-patch.sh should exclude thrift generated code from long line detection |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10906](https://issues.apache.org/jira/browse/HBASE-10906) | Change error log for NamingException in TableInputFormatBase to WARN level |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10912](https://issues.apache.org/jira/browse/HBASE-10912) | setUp / tearDown in TestSCVFWithMiniCluster should be done once per run |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-10956](https://issues.apache.org/jira/browse/HBASE-10956) | Upgrade hadoop-2 dependency to 2.4.0 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11032](https://issues.apache.org/jira/browse/HBASE-11032) | Replace deprecated methods in FileSystem with their replacements |  Minor | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11050](https://issues.apache.org/jira/browse/HBASE-11050) | Replace empty catch block in TestHLog#testFailedToCreateHLogIfParentRenamed with @Test(expected=) |  Trivial | . | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-11154](https://issues.apache.org/jira/browse/HBASE-11154) | Document how to use Reverse Scan API |  Major | documentation, Scanners | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11076](https://issues.apache.org/jira/browse/HBASE-11076) | Update refguide on getting 0.94.x to run on hadoop 2.2.0+ |  Major | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11090](https://issues.apache.org/jira/browse/HBASE-11090) | Backport HBASE-11083 ExportSnapshot should provide capability to limit bandwidth consumption |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11203](https://issues.apache.org/jira/browse/HBASE-11203) | Clean up javadoc and findbugs warnings in trunk |  Major | . | stack | stack |
| [HBASE-11227](https://issues.apache.org/jira/browse/HBASE-11227) | Mention 8- and 16-bit fixed-with encodings in OrderedBytes docstring |  Trivial | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11199](https://issues.apache.org/jira/browse/HBASE-11199) | One-time effort to pretty-print the Docbook XML, to make further patch review easier |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-4456](https://issues.apache.org/jira/browse/HBASE-4456) | [doc] Add a section about RS failover |  Major | documentation | Jean-Daniel Cryans | Misty Stanley-Jones |
| [HBASE-9580](https://issues.apache.org/jira/browse/HBASE-9580) | Document the meaning of @InterfaceAudience in hbase ref guide |  Major | documentation | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-11204](https://issues.apache.org/jira/browse/HBASE-11204) | Document bandwidth consumption limit feature for ExportSnapshot |  Minor | snapshots | Ted Yu | Misty Stanley-Jones |
| [HBASE-6139](https://issues.apache.org/jira/browse/HBASE-6139) | Add troubleshooting section for CentOS 6.2 page allocation failure issue |  Major | documentation | Andrew Purtell | Misty Stanley-Jones |
| [HBASE-9733](https://issues.apache.org/jira/browse/HBASE-9733) | Book should have individual Disqus comment per page |  Major | documentation | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-7394](https://issues.apache.org/jira/browse/HBASE-7394) | Document security config requirements from HBASE-7357 |  Major | documentation | Gary Helmling | Misty Stanley-Jones |
| [HBASE-11107](https://issues.apache.org/jira/browse/HBASE-11107) | Provide utility method equivalent to 0.92's Result.getBytes().getSize() |  Trivial | . | Ted Yu | Gustavo Anatoly |
| [HBASE-8844](https://issues.apache.org/jira/browse/HBASE-8844) | Document the removal of replication state AKA start/stop\_replication |  Minor | documentation | Patrick | Misty Stanley-Jones |
| [HBASE-11364](https://issues.apache.org/jira/browse/HBASE-11364) | [BlockCache] Add a flag to cache data blocks in L1 if multi-tier cache |  Major | . | stack | stack |
| [HBASE-6192](https://issues.apache.org/jira/browse/HBASE-6192) | Document ACL matrix in the book |  Major | documentation, security | Enis Soztutar | Misty Stanley-Jones |
| [HBASE-11317](https://issues.apache.org/jira/browse/HBASE-11317) | Expand unit testing to cover Mockito and MRUnit and give more examples |  Trivial | documentation | Mike Drob | Misty Stanley-Jones |
| [HBASE-11600](https://issues.apache.org/jira/browse/HBASE-11600) | DataInputputStream and DoubleOutputStream are no longer being used |  Trivial | io | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11621](https://issues.apache.org/jira/browse/HBASE-11621) | Make MiniDFSCluster run faster |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11666](https://issues.apache.org/jira/browse/HBASE-11666) | Enforce JDK7 javac for builds on branch-1 and master |  Minor | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-11723](https://issues.apache.org/jira/browse/HBASE-11723) | Document all options of bin/hbase command |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11762](https://issues.apache.org/jira/browse/HBASE-11762) | Record the class name of Codec in WAL header |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-11735](https://issues.apache.org/jira/browse/HBASE-11735) | Document Configurable Bucket Sizes in bucketCache |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11682](https://issues.apache.org/jira/browse/HBASE-11682) | Explain hotspotting |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11800](https://issues.apache.org/jira/browse/HBASE-11800) | Coprocessor service methods in HTableInterface should be annotated public |  Major | Client | Gary Helmling | Gary Helmling |
| [HBASE-9875](https://issues.apache.org/jira/browse/HBASE-9875) | NamespaceJanitor chore is not used |  Major | . | Ted Yu | Mikhail Antonov |
| [HBASE-4920](https://issues.apache.org/jira/browse/HBASE-4920) | We need a mascot, a totem |  Major | . | stack |  |
| [HBASE-11849](https://issues.apache.org/jira/browse/HBASE-11849) | Clean up orphaned private audience classes |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-11858](https://issues.apache.org/jira/browse/HBASE-11858) | Audit regionserver classes that are missing InterfaceAudience |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-8035](https://issues.apache.org/jira/browse/HBASE-8035) | Add site target check to precommit tests |  Major | . | Andrew Purtell | stack |
| [HBASE-11604](https://issues.apache.org/jira/browse/HBASE-11604) | Disable co-locating meta/master by default |  Critical | . | Jimmy Xiang | Jimmy Xiang |


