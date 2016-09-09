
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

## Release 0.92.0 - 2012-01-23

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2321](https://issues.apache.org/jira/browse/HBASE-2321) | Support RPC interface changes at runtime |  Major | Coprocessors | Andrew Purtell | Gary Helmling |
| [HBASE-3440](https://issues.apache.org/jira/browse/HBASE-3440) | Clean out load\_table.rb and make sure all roads lead to completebulkload tool |  Major | . | stack | Vidhyashankar Venkataraman |
| [HBASE-3677](https://issues.apache.org/jira/browse/HBASE-3677) | Generate a globally unique identifier for a cluster and store in /hbase/hbase.id |  Major | master | Gary Helmling | Gary Helmling |
| [HBASE-3762](https://issues.apache.org/jira/browse/HBASE-3762) | HTableFactory.releaseHTableInterface() wraps IOException in RuntimeException |  Major | Client | Ted Yu | Ted Yu |
| [HBASE-3789](https://issues.apache.org/jira/browse/HBASE-3789) | Cleanup the locking contention in the master |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3534](https://issues.apache.org/jira/browse/HBASE-3534) | Action should not store or serialize regionName |  Major | . | ryan rawson | Ted Yu |
| [HBASE-451](https://issues.apache.org/jira/browse/HBASE-451) | Remove HTableDescriptor from HRegionInfo |  Critical | master, regionserver | Jim Kellerman | Subbu M Iyer |
| [HBASE-4179](https://issues.apache.org/jira/browse/HBASE-4179) | Failed to run RowCounter on top of Hadoop branch-0.22 |  Major | mapreduce | Michael Weng | Michael Weng |
| [HBASE-4197](https://issues.apache.org/jira/browse/HBASE-4197) | RegionServer expects all scanner to be subclasses of HRegion.RegionScanner |  Major | Coprocessors | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4233](https://issues.apache.org/jira/browse/HBASE-4233) | Update protobuf dependency to 2.4.0a |  Blocker | . | Todd Lipcon | Todd Lipcon |
| [HBASE-4299](https://issues.apache.org/jira/browse/HBASE-4299) | Upgrade to Avro 1.5.3 & use Avro Maven plugin to generate Avro classes |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HBASE-4369](https://issues.apache.org/jira/browse/HBASE-4369) | Deprecate HConnection#getZookeeperWatcher in prep for HBASE-1762 |  Critical | . | stack | stack |
| [HBASE-4247](https://issues.apache.org/jira/browse/HBASE-4247) | Add isAborted method to the Abortable interface |  Minor | . | Akash Ashok | Akash Ashok |
| [HBASE-3581](https://issues.apache.org/jira/browse/HBASE-3581) | hbase rpc should send size of response |  Critical | . | ryan rawson | stack |
| [HBASE-4648](https://issues.apache.org/jira/browse/HBASE-4648) | Bytes.toBigDecimal() doesn't use offset |  Major | util | Bryan Keller |  |
| [HBASE-4552](https://issues.apache.org/jira/browse/HBASE-4552) | multi-CF bulk load is not atomic across column families |  Major | regionserver | Todd Lipcon | Jonathan Hsieh |
| [HBASE-3939](https://issues.apache.org/jira/browse/HBASE-3939) | Some crossports of Hadoop IPC fixes |  Critical | . | Todd Lipcon |  |
| [HBASE-3433](https://issues.apache.org/jira/browse/HBASE-3433) | Remove the KV copy of every KV in Scan; introduced by HBASE-3232 |  Critical | Performance, regionserver | stack | Lars Hofhansl |
| [HBASE-5006](https://issues.apache.org/jira/browse/HBASE-5006) | Move hbase 0.92RC1 on to hadoop 1.0.0RC2 |  Major | . | stack | stack |
| [HBASE-5017](https://issues.apache.org/jira/browse/HBASE-5017) | Bump the default hfile.block.cache.size because of HFileV2 |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5087](https://issues.apache.org/jira/browse/HBASE-5087) | Up the 0.92RC zk to 3.4.1RC0 |  Major | . | stack | stack |
| [HBASE-5204](https://issues.apache.org/jira/browse/HBASE-5204) | Backward compatibility fixes for 0.92 |  Blocker | IPC/RPC | Benoit Sigoure | Benoit Sigoure |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1987](https://issues.apache.org/jira/browse/HBASE-1987) | The Put object has no simple read methods for checking what has already been added. |  Minor | Client | Ryan Smith | Ryan Smith |
| [HBASE-3287](https://issues.apache.org/jira/browse/HBASE-3287) | Add option to cache blocks on hfile write and evict blocks on hfile close |  Major | io, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3316](https://issues.apache.org/jira/browse/HBASE-3316) | Add support for Java Serialization to HbaseObjectWritable |  Minor | io | Ed Kohlwey | Ed Kohlwey |
| [HBASE-2824](https://issues.apache.org/jira/browse/HBASE-2824) | Add a filter that randomly included rows based on a configured chance. |  Minor | Filters | Ferdy Galema | Ferdy Galema |
| [HBASE-3448](https://issues.apache.org/jira/browse/HBASE-3448) | RegionSplitter : Utility class for manual region splitting |  Minor | Client, scripts, util | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3606](https://issues.apache.org/jira/browse/HBASE-3606) | Create an package integration project |  Major | build | Eric Yang | Eric Yang |
| [HBASE-3684](https://issues.apache.org/jira/browse/HBASE-3684) | Support column range filter |  Minor | Filters | Jerry Chen |  |
| [HBASE-3729](https://issues.apache.org/jira/browse/HBASE-3729) | Get cells via shell with a time range predicate |  Major | shell | Eric Charles | Ted Yu |
| [HBASE-3836](https://issues.apache.org/jira/browse/HBASE-3836) | Add facility to track currently progressing actions/workflows |  Major | master, regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-3837](https://issues.apache.org/jira/browse/HBASE-3837) | Expose regionsInTransition on master UI |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3839](https://issues.apache.org/jira/browse/HBASE-3839) | Expose in-progress tasks on web UIs |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3880](https://issues.apache.org/jira/browse/HBASE-3880) | Make mapper function in ImportTSV plug-able |  Major | . | Bill Graham | Bill Graham |
| [HBASE-2937](https://issues.apache.org/jira/browse/HBASE-2937) | Facilitate Timeouts In HBase Client |  Critical | Client | Karthick Sankarachary | Karthick Sankarachary |
| [HBASE-2233](https://issues.apache.org/jira/browse/HBASE-2233) | Support both Hadoop 0.20, 0.21, and 0.22 |  Critical | . | Jean-Daniel Cryans | stack |
| [HBASE-2000](https://issues.apache.org/jira/browse/HBASE-2000) | Coprocessors |  Major | Coprocessors | Andrew Purtell |  |
| [HBASE-4000](https://issues.apache.org/jira/browse/HBASE-4000) | You can't specify split points when you create a table in the shell |  Major | . | Joey Echeverria | Joey Echeverria |
| [HBASE-4036](https://issues.apache.org/jira/browse/HBASE-4036) | Implementing a MultipleColumnPrefixFilter |  Minor | . | Anirudh Todi | Anirudh Todi |
| [HBASE-3856](https://issues.apache.org/jira/browse/HBASE-3856) | Build a tree structure data block index inside of the HFile |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-3857](https://issues.apache.org/jira/browse/HBASE-3857) | Change the HFile Format |  Major | . | Liyin Tang | Mikhail Bautin |
| [HBASE-4039](https://issues.apache.org/jira/browse/HBASE-4039) | Users should be able to choose custom TableInputFormats without modifying TableMapReduceUtil.initTableMapperJob(). |  Minor | mapreduce | Edward Choi | Brock Noland |
| [HBASE-4240](https://issues.apache.org/jira/browse/HBASE-4240) | Allow Loadbalancer to be pluggable. |  Major | master | Elliott Clark | Elliott Clark |
| [HBASE-4071](https://issues.apache.org/jira/browse/HBASE-4071) | Data GC: Remove all versions \> TTL EXCEPT the last written version |  Major | . | stack | Lars Hofhansl |
| [HBASE-4117](https://issues.apache.org/jira/browse/HBASE-4117) | Slow Query Log |  Minor | IPC/RPC | Riley Patterson | Riley Patterson |
| [HBASE-4281](https://issues.apache.org/jira/browse/HBASE-4281) | Add facility to dump current state of all executors |  Major | master, regionserver, util | Todd Lipcon | Todd Lipcon |
| [HBASE-4292](https://issues.apache.org/jira/browse/HBASE-4292) | Add a debugging dump servlet to the master and regionserver |  Major | master | Todd Lipcon | Todd Lipcon |
| [HBASE-4260](https://issues.apache.org/jira/browse/HBASE-4260) | Expose a command to manually trigger an HLog roll |  Major | regionserver, shell | Gary Helmling | ramkrishna.s.vasudevan |
| [HBASE-4057](https://issues.apache.org/jira/browse/HBASE-4057) | Implement HBase version of "show processlist" |  Major | Client, regionserver | Nicolas Spiegelberg | Riley Patterson |
| [HBASE-3929](https://issues.apache.org/jira/browse/HBASE-3929) | Add option to HFile tool to produce basic stats |  Major | io | Todd Lipcon | Matteo Bertozzi |
| [HBASE-3615](https://issues.apache.org/jira/browse/HBASE-3615) | Implement token based DIGEST-MD5 authentication for MapReduce tasks |  Major | IPC/RPC, security | Gary Helmling | Gary Helmling |
| [HBASE-4683](https://issues.apache.org/jira/browse/HBASE-4683) | Always cache index and bloom blocks |  Minor | . | Lars Hofhansl | Mikhail Bautin |
| [HBASE-4187](https://issues.apache.org/jira/browse/HBASE-4187) | Add Thrift Column Start/Stop Read/Scan Capability |  Major | Thrift | Wayne |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3231](https://issues.apache.org/jira/browse/HBASE-3231) | Update to zookeeper 3.3.2. |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-3290](https://issues.apache.org/jira/browse/HBASE-3290) | Max Compaction Size |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3292](https://issues.apache.org/jira/browse/HBASE-3292) | Expose block cache hit/miss/evict counts into region server metrics |  Minor | . | Jonathan Gray | Jonathan Gray |
| [HBASE-2936](https://issues.apache.org/jira/browse/HBASE-2936) | Differentiate between daemon & restart sleep periods |  Trivial | scripts | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-1861](https://issues.apache.org/jira/browse/HBASE-1861) | Multi-Family support for bulk upload tools (HFileOutputFormat / loadtable.rb) |  Major | mapreduce | Jonathan Gray | Nicolas Spiegelberg |
| [HBASE-3308](https://issues.apache.org/jira/browse/HBASE-3308) | SplitTransaction.splitStoreFiles slows splits a lot |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3328](https://issues.apache.org/jira/browse/HBASE-3328) | Admin API: Explicit Split Points |  Minor | Client, IPC/RPC | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3335](https://issues.apache.org/jira/browse/HBASE-3335) | Add BitComparator for filtering |  Minor | Client | Nathaniel Cook |  |
| [HBASE-3377](https://issues.apache.org/jira/browse/HBASE-3377) | Upgrade Jetty to 6.1.26 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3305](https://issues.apache.org/jira/browse/HBASE-3305) | Allow round-robin distribution for table created with multiple regions |  Major | master | Ted Yu | Ted Yu |
| [HBASE-3496](https://issues.apache.org/jira/browse/HBASE-3496) | HFile CLI Improvements |  Minor | io, regionserver, util | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3522](https://issues.apache.org/jira/browse/HBASE-3522) | Unbundle our RPC versioning; rather than a global for all 4 Interfaces -- region, master, region to master, and coprocesssors -- instead version each individually |  Major | . | stack | stack |
| [HBASE-3623](https://issues.apache.org/jira/browse/HBASE-3623) | Allow non-XML representable separator characters in the ImportTSV tool |  Major | mapreduce | Harsh J |  |
| [HBASE-3620](https://issues.apache.org/jira/browse/HBASE-3620) | Make HBCK Faster |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3618](https://issues.apache.org/jira/browse/HBASE-3618) | Add to HBase book, 'schema' chapter - pre-creating regions and key types |  Minor | . | Doug Meil | stack |
| [HBASE-3437](https://issues.apache.org/jira/browse/HBASE-3437) | Allow Explicit Splits from the Shell |  Trivial | shell | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3610](https://issues.apache.org/jira/browse/HBASE-3610) | Improve RegionSplitter Performance |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2495](https://issues.apache.org/jira/browse/HBASE-2495) | Allow record filtering with selected row key values in HBase Export |  Major | util | Ted Yu |  |
| [HBASE-3514](https://issues.apache.org/jira/browse/HBASE-3514) | Speedup HFile.Writer append |  Minor | io | Matteo Bertozzi |  |
| [HBASE-3653](https://issues.apache.org/jira/browse/HBASE-3653) | Parallelize Server Requests on HBase Client |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3657](https://issues.apache.org/jira/browse/HBASE-3657) | reduce copying of HRegionInfo's |  Major | . | Ted Yu | Ted Yu |
| [HBASE-3422](https://issues.apache.org/jira/browse/HBASE-3422) | Balancer will try to rebalance thousands of regions in one go; needs an upper bound added. |  Major | master | stack | Ted Yu |
| [HBASE-3676](https://issues.apache.org/jira/browse/HBASE-3676) | Update region server load for AssignmentManager through regionServerReport() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-3468](https://issues.apache.org/jira/browse/HBASE-3468) | Enhance checkAndPut and checkAndDelete with comparators |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3673](https://issues.apache.org/jira/browse/HBASE-3673) | Reduce HTable Pool Contention Using Concurrent Collections |  Minor | Client | Karthick Sankarachary | Karthick Sankarachary |
| [HBASE-3474](https://issues.apache.org/jira/browse/HBASE-3474) | HFileOutputFormat to use column family's compression algorithm |  Major | mapreduce | Ashish Shinde |  |
| [HBASE-3541](https://issues.apache.org/jira/browse/HBASE-3541) | REST Multi Gets |  Minor | REST | Elliott Clark | Elliott Clark |
| [HBASE-3658](https://issues.apache.org/jira/browse/HBASE-3658) | Alert when heap is over committed |  Major | . | Jean-Daniel Cryans | Subbu M Iyer |
| [HBASE-3711](https://issues.apache.org/jira/browse/HBASE-3711) | importtsv fails if rowkey length exceeds MAX\_ROW\_LENGTH |  Major | mapreduce | Kazuki Ohta | Kazuki Ohta |
| [HBASE-3717](https://issues.apache.org/jira/browse/HBASE-3717) | deprecate HTable isTableEnabled() methods in favor of HBaseAdmin methods |  Trivial | Client | David Buttler | David Buttler |
| [HBASE-3705](https://issues.apache.org/jira/browse/HBASE-3705) | Allow passing timestamp into importtsv |  Minor | util | Andy Sautins |  |
| [HBASE-3715](https://issues.apache.org/jira/browse/HBASE-3715) | Book.xml - adding architecture section on client, adding section on spec-ex under mapreduce |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3647](https://issues.apache.org/jira/browse/HBASE-3647) | Distinguish read and write request count in region |  Major | . | Ted Yu | Ted Yu |
| [HBASE-3704](https://issues.apache.org/jira/browse/HBASE-3704) | Show per region request count in table.jsp |  Major | . | Ted Yu | Ted Yu |
| [HBASE-3694](https://issues.apache.org/jira/browse/HBASE-3694) | high multiput latency due to checking global mem store size in a synchronized function |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-3071](https://issues.apache.org/jira/browse/HBASE-3071) | Graceful decommissioning of a regionserver |  Major | . | stack | stack |
| [HBASE-3735](https://issues.apache.org/jira/browse/HBASE-3735) | Book.xml - adding section on Schema Design on versions |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3736](https://issues.apache.org/jira/browse/HBASE-3736) | Book.xml - fixed one of the docbook tables Physical Overview |  Trivial | . | Doug Meil | Doug Meil |
| [HBASE-3710](https://issues.apache.org/jira/browse/HBASE-3710) | Book.xml - fill out descriptions of metrics |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3738](https://issues.apache.org/jira/browse/HBASE-3738) | Book.xml - expanding Architecture Client section |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3587](https://issues.apache.org/jira/browse/HBASE-3587) | Eliminate use of ReadWriteLock in RegionObserver coprocessor invocation |  Major | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-3751](https://issues.apache.org/jira/browse/HBASE-3751) | Book.xml - fixing unit of measure in 2 metrics.  added description for compactionQueue |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3764](https://issues.apache.org/jira/browse/HBASE-3764) | Book.xml - adding 2 FAQs (SQL and arch question) |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3770](https://issues.apache.org/jira/browse/HBASE-3770) | Make FilterList accept var arg Filters in its constructor as a convenience |  Minor | . | Erik Onnen | Erik Onnen |
| [HBASE-3769](https://issues.apache.org/jira/browse/HBASE-3769) | TableMapReduceUtil is inconsistent with other table-related classes that accept byte[] as a table name |  Trivial | . | Erik Onnen | Erik Onnen |
| [HBASE-3768](https://issues.apache.org/jira/browse/HBASE-3768) | Add best practice to book for loading row key only |  Minor | . | Erik Onnen | Erik Onnen |
| [HBASE-3765](https://issues.apache.org/jira/browse/HBASE-3765) | metrics.xml - small format change and adding nav to hbase book metrics section |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3759](https://issues.apache.org/jira/browse/HBASE-3759) | Eliminate use of ThreadLocals for CoprocessorEnvironment bypass() and complete() |  Major | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-3701](https://issues.apache.org/jira/browse/HBASE-3701) | revisit ArrayList creation |  Major | . | Ted Yu | Ted Yu |
| [HBASE-3753](https://issues.apache.org/jira/browse/HBASE-3753) | Book.xml - architecture, adding more Store info |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3784](https://issues.apache.org/jira/browse/HBASE-3784) | book.xml - adding small subsection in architecture/client on filters |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3785](https://issues.apache.org/jira/browse/HBASE-3785) | book.xml - moving WAL into architecture section, plus adding more description on what it does |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3757](https://issues.apache.org/jira/browse/HBASE-3757) | Upgrade to ZK 3.3.3 |  Minor | . | Jean-Daniel Cryans |  |
| [HBASE-3678](https://issues.apache.org/jira/browse/HBASE-3678) | Add Eclipse-based Apache Formatter to HBase Wiki |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-1364](https://issues.apache.org/jira/browse/HBASE-1364) | [performance] Distributed splitting of regionserver commit logs |  Critical | Coprocessors | stack | Prakash Khemani |
| [HBASE-3609](https://issues.apache.org/jira/browse/HBASE-3609) | Improve the selection of regions to balance; part 2 |  Major | . | stack | Ted Yu |
| [HBASE-2939](https://issues.apache.org/jira/browse/HBASE-2939) | Allow Client-Side Connection Pooling |  Critical | Client | Karthick Sankarachary | Karthick Sankarachary |
| [HBASE-3798](https://issues.apache.org/jira/browse/HBASE-3798) | [REST] Allow representation to elide row key and column key |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3812](https://issues.apache.org/jira/browse/HBASE-3812) | Tidy up naming consistency and documentation in coprocessor framework |  Critical | Coprocessors | Gary Helmling | Mingjie Lai |
| [HBASE-3210](https://issues.apache.org/jira/browse/HBASE-3210) | HBASE-1921 for the new master |  Critical | . | Jean-Daniel Cryans | Subbu M Iyer |
| [HBASE-3831](https://issues.apache.org/jira/browse/HBASE-3831) | docbook xml files - standardized RegionServer, DataNode, and ZooKeeper in several xml docs |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3844](https://issues.apache.org/jira/browse/HBASE-3844) | Book.xml (removing link to defunct wiki) and Performance.xml (adding client tip) |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3825](https://issues.apache.org/jira/browse/HBASE-3825) | performance.xml - adding a few common configuration changes in the 'config' sub-section |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3777](https://issues.apache.org/jira/browse/HBASE-3777) | Redefine Identity Of HBase Configuration |  Minor | Client, IPC/RPC | Karthick Sankarachary | Karthick Sankarachary |
| [HBASE-3835](https://issues.apache.org/jira/browse/HBASE-3835) | Switch web pages to Jamon template engine instead of JSP |  Major | master, regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-3721](https://issues.apache.org/jira/browse/HBASE-3721) | Speedup LoadIncrementalHFiles |  Major | util | Ted Yu | Ted Yu |
| [HBASE-3797](https://issues.apache.org/jira/browse/HBASE-3797) | StoreFile Level Compaction Locking |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-1476](https://issues.apache.org/jira/browse/HBASE-1476) | scaling compaction with multiple threads |  Major | regionserver | Billy Pearson | Nicolas Spiegelberg |
| [HBASE-3868](https://issues.apache.org/jira/browse/HBASE-3868) | book.xml / troubleshooting.xml - porting wiki Troubleshooting page |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3884](https://issues.apache.org/jira/browse/HBASE-3884) | book.xml - moved build and developer chapters to end of book |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3888](https://issues.apache.org/jira/browse/HBASE-3888) | book.xml - filled in architecture 'daemon' section |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3901](https://issues.apache.org/jira/browse/HBASE-3901) | Update documentation for ImportTsv to reflect recent features |  Major | . | Bill Graham | Bill Graham |
| [HBASE-3826](https://issues.apache.org/jira/browse/HBASE-3826) | Minor compaction needs to check if still over compactionThreshold after compacting |  Major | regionserver | Schubert Zhang | Nicolas Spiegelberg |
| [HBASE-3883](https://issues.apache.org/jira/browse/HBASE-3883) | book.xml / added something in schema design and FAQ about not being able to change rowkeys |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-2938](https://issues.apache.org/jira/browse/HBASE-2938) | Add Thread-Local Behavior To HTable Pool |  Major | Client | Karthick Sankarachary | Karthick Sankarachary |
| [HBASE-3811](https://issues.apache.org/jira/browse/HBASE-3811) | Allow adding attributes to Scan |  Minor | Client | Alex Baranau | Alex Baranau |
| [HBASE-3841](https://issues.apache.org/jira/browse/HBASE-3841) | HTable and HTableInterface docs are inconsistent with one another |  Trivial | documentation | Harsh J | Harsh J |
| [HBASE-3921](https://issues.apache.org/jira/browse/HBASE-3921) | Allow adding arbitrary blobs to Put |  Major | Client | dhruba borthakur | dhruba borthakur |
| [HBASE-3931](https://issues.apache.org/jira/browse/HBASE-3931) | Allow adding attributes to Get |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3942](https://issues.apache.org/jira/browse/HBASE-3942) | The thrift scannerOpen functions should support row caching |  Minor | Thrift | Adam Warrington | Adam Warrington |
| [HBASE-2556](https://issues.apache.org/jira/browse/HBASE-2556) | Add convenience method to HBaseAdmin to get a collection of HRegionInfo objects for each table |  Major | . | Jeff Hammerbacher | Ming Ma |
| [HBASE-3873](https://issues.apache.org/jira/browse/HBASE-3873) | Mavenize Hadoop Snappy JAR/SOs project dependencies |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HBASE-3941](https://issues.apache.org/jira/browse/HBASE-3941) | "hbase version" command line should print version info |  Minor | . | Todd Lipcon |  |
| [HBASE-3961](https://issues.apache.org/jira/browse/HBASE-3961) | Add Delete.setWriteToWAL functionality |  Major | Client, regionserver | Bruno Dumon | Bruno Dumon |
| [HBASE-3966](https://issues.apache.org/jira/browse/HBASE-3966) | troubleshooting.xml - added section for web UI for master & regionserver |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3642](https://issues.apache.org/jira/browse/HBASE-3642) | Web UI should be available during startup |  Critical | . | Dmitriy V. Ryaboy | Todd Lipcon |
| [HBASE-3963](https://issues.apache.org/jira/browse/HBASE-3963) | Schedule all log-spliiting at startup all at once |  Major | . | Prakash Khemani | Prakash Khemani |
| [HBASE-3928](https://issues.apache.org/jira/browse/HBASE-3928) | Some potential performance improvements to Bytes/KeyValue |  Critical | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3982](https://issues.apache.org/jira/browse/HBASE-3982) | Improvements to TestHFileSeek |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3940](https://issues.apache.org/jira/browse/HBASE-3940) | HBase daemons should log version info at startup and possibly periodically |  Blocker | . | Todd Lipcon | Li Pi |
| [HBASE-3997](https://issues.apache.org/jira/browse/HBASE-3997) | configuration.xml - added an entry in recommended configuration on zookeeper instances |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3927](https://issues.apache.org/jira/browse/HBASE-3927) | display total uncompressed byte size of a region in web UI |  Minor | metrics | Matt Corgan | Ted Yu |
| [HBASE-4011](https://issues.apache.org/jira/browse/HBASE-4011) | New MasterObserver hook: post startup of active master |  Major | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-3986](https://issues.apache.org/jira/browse/HBASE-3986) | troubleshooting.xml - adding client long-pause and NotServingRegionException entries |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3990](https://issues.apache.org/jira/browse/HBASE-3990) | troubleshooting.xml - adding section for NameNode with hadoop shell cmds for disk utilization |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3998](https://issues.apache.org/jira/browse/HBASE-3998) | book.xml / configuration.xml - reorganize LZO compression info |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4004](https://issues.apache.org/jira/browse/HBASE-4004) | book.xml - adding schema maintenance code example |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4006](https://issues.apache.org/jira/browse/HBASE-4006) | HBase book - overhaul of configuration information |  Major | . | Doug Meil | Doug Meil |
| [HBASE-4010](https://issues.apache.org/jira/browse/HBASE-4010) | HMaster.createTable could be heavily optimized |  Major | . | Jean-Daniel Cryans | Ted Yu |
| [HBASE-3516](https://issues.apache.org/jira/browse/HBASE-3516) | Coprocessors: add test cases for loading coprocessor jars from hdfs and local fs. |  Major | Coprocessors | Mingjie Lai | Mingjie Lai |
| [HBASE-4048](https://issues.apache.org/jira/browse/HBASE-4048) | [Coprocessors] Support configuration of coprocessor at load time |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-4012](https://issues.apache.org/jira/browse/HBASE-4012) | Further optimize byte comparison methods |  Minor | util | Todd Lipcon | Ted Yu |
| [HBASE-3240](https://issues.apache.org/jira/browse/HBASE-3240) | Improve documentation of importtsv and bulk loads |  Major | . | Todd Lipcon | Aaron T. Myers |
| [HBASE-4079](https://issues.apache.org/jira/browse/HBASE-4079) | HTableUtil - helper class for loading data |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4017](https://issues.apache.org/jira/browse/HBASE-4017) | BlockCache interface should be truly modular |  Major | regionserver | Li Pi | Li Pi |
| [HBASE-4019](https://issues.apache.org/jira/browse/HBASE-4019) | troubleshooting.xml - adding section under NameNode for where to find hbase objects on HDFS |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3871](https://issues.apache.org/jira/browse/HBASE-3871) | Speedup LoadIncrementalHFiles by parallelizing HFile splitting |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-4054](https://issues.apache.org/jira/browse/HBASE-4054) | Usability improvement to HTablePool |  Minor | Client | Daniel Iancu | Daniel Iancu |
| [HBASE-4098](https://issues.apache.org/jira/browse/HBASE-4098) | developer.xml - adding repo info, how to set up eclipse, common maven commands |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4108](https://issues.apache.org/jira/browse/HBASE-4108) | book.xml/troubleshooting.xml - moving troubleshooting info out of FAQ into troubleshooting chapter |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4106](https://issues.apache.org/jira/browse/HBASE-4106) | book.xml/preface.xml - 2 trivial fixes |  Trivial | . | Doug Meil | Doug Meil |
| [HBASE-4121](https://issues.apache.org/jira/browse/HBASE-4121) | improve hbck tool to fix .META. hole issue. |  Major | . | feng xu |  |
| [HBASE-4140](https://issues.apache.org/jira/browse/HBASE-4140) | book: Update our hadoop vendor section |  Major | . | stack | stack |
| [HBASE-4142](https://issues.apache.org/jira/browse/HBASE-4142) | Advise against large batches in javadoc for HTable#put(List\<Put\>) |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1938](https://issues.apache.org/jira/browse/HBASE-1938) | Make in-memory table scanning faster |  Blocker | Performance | stack | Nicolas Liochon |
| [HBASE-4090](https://issues.apache.org/jira/browse/HBASE-4090) | book.xml - minor clarification of block cache metric |  Trivial | . | Doug Meil | Doug Meil |
| [HBASE-4091](https://issues.apache.org/jira/browse/HBASE-4091) | book.xml - description of block cache in arch, description of inMemory in schema creation |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4092](https://issues.apache.org/jira/browse/HBASE-4092) | performance.xml - adding batch-loading entry for using deferred log flush |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-3810](https://issues.apache.org/jira/browse/HBASE-3810) | Registering a Coprocessor at HTableDescriptor should be less strict |  Minor | Coprocessors | Joerg Schad | Mingjie Lai |
| [HBASE-3763](https://issues.apache.org/jira/browse/HBASE-3763) | Add Bloom Block Index Support |  Minor | io, regionserver | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4114](https://issues.apache.org/jira/browse/HBASE-4114) | Metrics for HFile HDFS block locality |  Major | metrics, regionserver | Ming Ma | Ming Ma |
| [HBASE-4193](https://issues.apache.org/jira/browse/HBASE-4193) | Enhance RPC debug logging to provide more details on call contents |  Minor | IPC/RPC | Gary Helmling | Gary Helmling |
| [HBASE-4190](https://issues.apache.org/jira/browse/HBASE-4190) | Coprocessors: pull up some cp constants from cp package to o.a.h.h.HConstants |  Minor | Coprocessors | Mingjie Lai | Mingjie Lai |
| [HBASE-4176](https://issues.apache.org/jira/browse/HBASE-4176) | Exposing HBase Filters to the Thrift API |  Minor | Thrift | Anirudh Todi | Anirudh Todi |
| [HBASE-4227](https://issues.apache.org/jira/browse/HBASE-4227) | Modify the webUI so that default values of column families are not shown |  Minor | . | Nicolas Spiegelberg | nileema shingte |
| [HBASE-4229](https://issues.apache.org/jira/browse/HBASE-4229) | Replace Jettison JSON encoding with Jackson in HLogPrettyPrinter |  Trivial | wal | Riley Patterson | Riley Patterson |
| [HBASE-4236](https://issues.apache.org/jira/browse/HBASE-4236) | Don't lock the stream while serializing the response |  Minor | IPC/RPC | Benoit Sigoure | Benoit Sigoure |
| [HBASE-4239](https://issues.apache.org/jira/browse/HBASE-4239) | HBASE-4012 introduced duplicate variable Bytes.LONG\_BYTES |  Trivial | . | Jonathan Gray | Ted Yu |
| [HBASE-4221](https://issues.apache.org/jira/browse/HBASE-4221) | Changes necessary to build and run against Hadoop 0.23 |  Critical | . | Todd Lipcon | Todd Lipcon |
| [HBASE-4251](https://issues.apache.org/jira/browse/HBASE-4251) | book.xml - adding catalog information in arch section, reorganized schema design, added some extra schema design info |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4241](https://issues.apache.org/jira/browse/HBASE-4241) | Optimize flushing of the Store cache for max versions and (new) min versions |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4217](https://issues.apache.org/jira/browse/HBASE-4217) | HRS.closeRegion should be able to close regions with only the encoded name |  Major | . | Jean-Daniel Cryans | ramkrishna.s.vasudevan |
| [HBASE-4027](https://issues.apache.org/jira/browse/HBASE-4027) | Enable direct byte buffers LruBlockCache |  Minor | . | Jason Rutherglen | Li Pi |
| [HBASE-4248](https://issues.apache.org/jira/browse/HBASE-4248) | Enhancements for Filter Language exposing HBase filters through the Thrift API |  Minor | . | Anirudh Todi | Anirudh Todi |
| [HBASE-4291](https://issues.apache.org/jira/browse/HBASE-4291) | Improve display of regions in transition in UI to be more readable |  Trivial | master | Todd Lipcon | Todd Lipcon |
| [HBASE-4275](https://issues.apache.org/jira/browse/HBASE-4275) | RS should communicate fatal "aborts" back to the master |  Major | master, regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-4263](https://issues.apache.org/jira/browse/HBASE-4263) | New config property for user-table only RegionObservers. |  Minor | Coprocessors | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4257](https://issues.apache.org/jira/browse/HBASE-4257) | Limit the number of regions in transitions displayed on master webpage. |  Major | master | Jonathan Hsieh | Todd Lipcon |
| [HBASE-1730](https://issues.apache.org/jira/browse/HBASE-1730) | Near-instantaneous online schema and table state updates |  Critical | . | Andrew Purtell | Nicolas Spiegelberg |
| [HBASE-3842](https://issues.apache.org/jira/browse/HBASE-3842) | Refactor Coprocessor Compaction API |  Critical | Coprocessors, regionserver | Nicolas Spiegelberg | Gary Helmling |
| [HBASE-4342](https://issues.apache.org/jira/browse/HBASE-4342) | Update Thrift to 0.7.0 |  Minor | . | Moaz Reyad | Moaz Reyad |
| [HBASE-4194](https://issues.apache.org/jira/browse/HBASE-4194) | RegionSplitter: Split on under-loaded region servers first |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4347](https://issues.apache.org/jira/browse/HBASE-4347) | Remove duplicated code from Put, Delete, Get, Scan, MultiPut |  Minor | util | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4359](https://issues.apache.org/jira/browse/HBASE-4359) | Show dead RegionServer names in the HMaster info page |  Trivial | master | Harsh J | Harsh J |
| [HBASE-4394](https://issues.apache.org/jira/browse/HBASE-4394) | Add support for seeking hints to FilterList |  Minor | Filters | Jonathan Gray | Jonathan Gray |
| [HBASE-4287](https://issues.apache.org/jira/browse/HBASE-4287) | If region opening fails, try to transition region back to "offline" in ZK |  Major | master, regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-4188](https://issues.apache.org/jira/browse/HBASE-4188) | c |  Critical | Performance | stack | Nicolas Liochon |
| [HBASE-4425](https://issues.apache.org/jira/browse/HBASE-4425) | Provide access to RpcServer instance from RegionServerServices |  Major | Coprocessors, regionserver | Gary Helmling | Gary Helmling |
| [HBASE-4373](https://issues.apache.org/jira/browse/HBASE-4373) | HBaseAdmin.assign() does not use force flag |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4411](https://issues.apache.org/jira/browse/HBASE-4411) | When copying tables/CFs, allow CF names to be changed |  Minor | mapreduce | Dave Revell | Dave Revell |
| [HBASE-4424](https://issues.apache.org/jira/browse/HBASE-4424) | Provide a means for coprocessors to create tables for internal use |  Major | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-3507](https://issues.apache.org/jira/browse/HBASE-3507) | requests count per HRegion |  Major | metrics, Performance, regionserver | Sebastian Bauer | Ted Yu |
| [HBASE-4432](https://issues.apache.org/jira/browse/HBASE-4432) | Enable/Disable off heap cache with config |  Trivial | . | Li Pi | Li Pi |
| [HBASE-4434](https://issues.apache.org/jira/browse/HBASE-4434) | seek optimization: don't do eager HFile Scanner next() unless the next KV is needed |  Major | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-4014](https://issues.apache.org/jira/browse/HBASE-4014) | Coprocessors: Flag the presence of coprocessors in logged exceptions |  Major | Coprocessors | Andrew Purtell | Eugene Koontz |
| [HBASE-4433](https://issues.apache.org/jira/browse/HBASE-4433) | avoid extra next (potentially a seek) if done with column/row |  Major | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-4454](https://issues.apache.org/jira/browse/HBASE-4454) | Add failsafe plugin to build and rename integration tests |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-4477](https://issues.apache.org/jira/browse/HBASE-4477) | Ability for an application to store metadata into the transaction log |  Major | . | dhruba borthakur | dhruba borthakur |
| [HBASE-4499](https://issues.apache.org/jira/browse/HBASE-4499) | [replication] Source shouldn't update ZK if it didn't progress |  Minor | . | Jean-Daniel Cryans | Chris Trezzo |
| [HBASE-4503](https://issues.apache.org/jira/browse/HBASE-4503) | Purge deprecated HBaseClusterTestCase |  Major | . | stack | stack |
| [HBASE-2794](https://issues.apache.org/jira/browse/HBASE-2794) | Utilize ROWCOL bloom filter if multiple columns within same family are requested in a Get |  Major | Performance | Kannan Muthukkaruppan | Mikhail Bautin |
| [HBASE-4520](https://issues.apache.org/jira/browse/HBASE-4520) | Better handling of Bloom filter type discrepancy between HFile and CF config |  Minor | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4422](https://issues.apache.org/jira/browse/HBASE-4422) | Move block cache parameters and references into single CacheConf class |  Major | io | Jonathan Gray | Jonathan Gray |
| [HBASE-4568](https://issues.apache.org/jira/browse/HBASE-4568) | Make zk dump jsp response more quickly |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-4558](https://issues.apache.org/jira/browse/HBASE-4558) | Refactor TestOpenedRegionHandler and TestOpenRegionHandler. |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4606](https://issues.apache.org/jira/browse/HBASE-4606) | Remove spam in HCM and fix a list.size == 0 |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4486](https://issues.apache.org/jira/browse/HBASE-4486) | Improve Javadoc for HTableDescriptor |  Minor | Client, documentation | Akash Ashok | Akash Ashok |
| [HBASE-4604](https://issues.apache.org/jira/browse/HBASE-4604) | hbase.client.TestHTablePool could start a single cluster instead of one per method |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4642](https://issues.apache.org/jira/browse/HBASE-4642) | Add Apache License Header |  Major | . | Giridharan Kesavan | stack |
| [HBASE-4447](https://issues.apache.org/jira/browse/HBASE-4447) | Allow hbase.version to be passed in as command-line argument |  Major | build | Joep Rottinghuis | Joep Rottinghuis |
| [HBASE-4591](https://issues.apache.org/jira/browse/HBASE-4591) | TTL for old HLogs should be calculated from last modification time. |  Minor | master | Madhuwanti Vaidya | Madhuwanti Vaidya |
| [HBASE-4070](https://issues.apache.org/jira/browse/HBASE-4070) | [Coprocessors] Improve region server metrics to report loaded coprocessors to master |  Major | . | Mingjie Lai | Eugene Koontz |
| [HBASE-3512](https://issues.apache.org/jira/browse/HBASE-3512) | Coprocessors: Shell support for listing currently loaded coprocessor set |  Major | Coprocessors | Andrew Purtell | Eugene Koontz |
| [HBASE-4639](https://issues.apache.org/jira/browse/HBASE-4639) | DFS Cluster is used while not needed in some unit tests |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4699](https://issues.apache.org/jira/browse/HBASE-4699) | Cleanup the UIs |  Major | . | stack | stack |
| [HBASE-4694](https://issues.apache.org/jira/browse/HBASE-4694) | Some cleanup of log messages in RS and M |  Major | . | stack | stack |
| [HBASE-4613](https://issues.apache.org/jira/browse/HBASE-4613) | hbase.util.Threads#threadDumpingIsAlive sleeps 1 second, slowing down the shutdown by 0.5s |  Minor | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4603](https://issues.apache.org/jira/browse/HBASE-4603) | Uneeded sleep time for tests in hbase.master.ServerManager#waitForRegionServers |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4703](https://issues.apache.org/jira/browse/HBASE-4703) | Improvements in tests |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4713](https://issues.apache.org/jira/browse/HBASE-4713) | Raise debug level to warn on ExecutionException in HConnectionManager$HConnectionImplementation |  Major | . | Lucian George Iordache |  |
| [HBASE-4756](https://issues.apache.org/jira/browse/HBASE-4756) | Enable tab-completion in HBase shell |  Minor | shell | Ryan Thiessen |  |
| [HBASE-4554](https://issues.apache.org/jira/browse/HBASE-4554) | Allow set/unset coprocessor table attributes from shell. |  Major | Coprocessors | Mingjie Lai | Mingjie Lai |
| [HBASE-4734](https://issues.apache.org/jira/browse/HBASE-4734) | [bulk load] Warn if bulk load directory contained no files |  Major | mapreduce | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4723](https://issues.apache.org/jira/browse/HBASE-4723) | Loads of NotAllMetaRegionsOnlineException traces when starting the master |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4771](https://issues.apache.org/jira/browse/HBASE-4771) | Script to List HRegion Availability |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2742](https://issues.apache.org/jira/browse/HBASE-2742) | Provide strong authentication with a secure RPC engine |  Critical | IPC/RPC | Gary Helmling | Gary Helmling |
| [HBASE-2418](https://issues.apache.org/jira/browse/HBASE-2418) | add support for ZooKeeper authentication |  Critical | master, regionserver | Patrick Hunt | Eugene Koontz |
| [HBASE-4851](https://issues.apache.org/jira/browse/HBASE-4851) | hadoop maven dependency needs to be an optional one |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-4785](https://issues.apache.org/jira/browse/HBASE-4785) | Improve recovery time of HBase client when a region server dies. |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4871](https://issues.apache.org/jira/browse/HBASE-4871) | [book] book updates, doc consolidation and some other things |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4869](https://issues.apache.org/jira/browse/HBASE-4869) | Backport to 0.92: HBASE-4797 [availability] Skip recovered.edits files with edits older than what region currently has |  Minor | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-4903](https://issues.apache.org/jira/browse/HBASE-4903) | Return a result from RegionObserver.preIncrement() |  Major | . | Daniel Gómez Ferro |  |
| [HBASE-4983](https://issues.apache.org/jira/browse/HBASE-4983) | index.html - correcting BigTable link, changing intro line, adding one feature |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4995](https://issues.apache.org/jira/browse/HBASE-4995) | Increase zk maxClientCnxns to give us some head room |  Blocker | . | Jean-Daniel Cryans | stack |
| [HBASE-4974](https://issues.apache.org/jira/browse/HBASE-4974) | Remove some resources leaks on the tests |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5001](https://issues.apache.org/jira/browse/HBASE-5001) | Improve the performance of block cache keys |  Minor | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-4934](https://issues.apache.org/jira/browse/HBASE-4934) | Display Master server and Regionserver start time on respective info servers. |  Minor | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4298](https://issues.apache.org/jira/browse/HBASE-4298) | Support to drain RS nodes through ZK |  Critical | master | Aravind Gottipati |  |
| [HBASE-3899](https://issues.apache.org/jira/browse/HBASE-3899) | enhance HBase RPC to support free-ing up server handler threads even if response is not ready |  Major | IPC/RPC | dhruba borthakur | dhruba borthakur |
| [HBASE-3877](https://issues.apache.org/jira/browse/HBASE-3877) | Determine Proper Defaults for Compaction ThreadPools |  Trivial | regionserver | Nicolas Spiegelberg | Nicolas Spiegelberg |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1246](https://issues.apache.org/jira/browse/HBASE-1246) | BloomFilter's use of BitSet is too inefficient |  Major | . | ryan rawson | Nicolas Spiegelberg |
| [HBASE-3239](https://issues.apache.org/jira/browse/HBASE-3239) | Handle null regions to flush in HLog.cleanOldLogs |  Blocker | regionserver | Prakash Khemani | Kannan Muthukkaruppan |
| [HBASE-3241](https://issues.apache.org/jira/browse/HBASE-3241) | check to see if we exceeded hbase.regionserver.maxlogs limit is incorrect |  Blocker | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-3237](https://issues.apache.org/jira/browse/HBASE-3237) | Split request accepted -- BUT CURRENTLY A NOOP |  Blocker | . | Todd Lipcon | Jean-Daniel Cryans |
| [HBASE-3230](https://issues.apache.org/jira/browse/HBASE-3230) | Refresh our hadoop jar and update zookeeper to just-released 3.3.2. |  Major | . | stack | stack |
| [HBASE-3253](https://issues.apache.org/jira/browse/HBASE-3253) | Thrift's missing from all the repositories in pom.xml |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3264](https://issues.apache.org/jira/browse/HBASE-3264) | Remove unnecessary Guava Dependency |  Minor | mapreduce | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3258](https://issues.apache.org/jira/browse/HBASE-3258) | EOF when version file is empty |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3262](https://issues.apache.org/jira/browse/HBASE-3262) | TestHMasterRPCException uses non-ephemeral port for master |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-3259](https://issues.apache.org/jira/browse/HBASE-3259) | Can't kill the region servers when they wait on the master or the cluster state znode |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3269](https://issues.apache.org/jira/browse/HBASE-3269) | HBase table truncate semantics seems broken as "disable" table is now async by default. |  Critical | . | Suraj Varma | stack |
| [HBASE-3273](https://issues.apache.org/jira/browse/HBASE-3273) | Set the ZK default timeout to 3 minutes |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3261](https://issues.apache.org/jira/browse/HBASE-3261) | NPE out of HRS.run at startup when clock is out of sync |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3280](https://issues.apache.org/jira/browse/HBASE-3280) | YouAreDeadException being swallowed in HRS getMaster() |  Major | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3282](https://issues.apache.org/jira/browse/HBASE-3282) | Need to retain DeadServers to ensure we don't allow previously expired RS instances to rejoin cluster |  Major | master | Jonathan Gray | Jonathan Gray |
| [HBASE-3283](https://issues.apache.org/jira/browse/HBASE-3283) | NPE in AssignmentManager if processing shutdown of RS who doesn't have any regions assigned to it |  Major | master | Jonathan Gray | Jonathan Gray |
| [HBASE-3278](https://issues.apache.org/jira/browse/HBASE-3278) | AssertionError in LoadBalancer |  Major | . | Jean-Daniel Cryans | Jonathan Gray |
| [HBASE-3317](https://issues.apache.org/jira/browse/HBASE-3317) | Javadoc and Throws Declaration for Bytes.incrementBytes() is Wrong |  Trivial | . | Ed Kohlwey | Ed Kohlwey |
| [HBASE-1888](https://issues.apache.org/jira/browse/HBASE-1888) | KeyValue methods throw NullPointerException instead of IllegalArgumentException during parameter sanity check |  Minor | . | Michal Podsiadlowski | stack |
| [HBASE-3337](https://issues.apache.org/jira/browse/HBASE-3337) | Restore HBCK fix of unassignment and dupe assignment for new master |  Critical | master, util | Jonathan Gray | Jonathan Gray |
| [HBASE-3332](https://issues.apache.org/jira/browse/HBASE-3332) | Regions stuck in transition after RS failure |  Blocker | . | Todd Lipcon | Jonathan Gray |
| [HBASE-3418](https://issues.apache.org/jira/browse/HBASE-3418) | Increment operations can break when qualifiers are split between memstore/snapshot and storefiles |  Critical | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3456](https://issues.apache.org/jira/browse/HBASE-3456) | Fix hardcoding of 20 second socket timeout down in HBaseClient |  Major | . | stack | Andrew Purtell |
| [HBASE-3476](https://issues.apache.org/jira/browse/HBASE-3476) | HFile -m option need not scan key values |  Minor | . | Prakash Khemani | Prakash Khemani |
| [HBASE-3481](https://issues.apache.org/jira/browse/HBASE-3481) | max seq id in flushed file can be larger than its correct value causing data loss during recovery |  Blocker | . | Kannan Muthukkaruppan | ryan rawson |
| [HBASE-3416](https://issues.apache.org/jira/browse/HBASE-3416) | For intra-row scanning, the update readers notification resets the query matcher and can lead to incorrect behavior |  Major | regionserver | Jonathan Gray | Andrew Purtell |
| [HBASE-3492](https://issues.apache.org/jira/browse/HBASE-3492) | NPE while splitting table with empty column family store |  Minor | regionserver | Lars George | Lars George |
| [HBASE-3495](https://issues.apache.org/jira/browse/HBASE-3495) | Shell is failing on subsequent split calls |  Major | regionserver | Lars George | Lars George |
| [HBASE-3400](https://issues.apache.org/jira/browse/HBASE-3400) | Coprocessor Support for Generic Interfaces |  Major | Coprocessors | Ed Kohlwey | Ed Kohlwey |
| [HBASE-3550](https://issues.apache.org/jira/browse/HBASE-3550) | FilterList reports false positives |  Major | Filters | Bill Graham | Bill Graham |
| [HBASE-3548](https://issues.apache.org/jira/browse/HBASE-3548) | Fix type in documentation of pseudo distributed mode |  Trivial | documentation | Lars George | stack |
| [HBASE-3423](https://issues.apache.org/jira/browse/HBASE-3423) | hbase-env.sh over-rides HBASE\_OPTS incorrectly. |  Major | . | Ted Dunning |  |
| [HBASE-3560](https://issues.apache.org/jira/browse/HBASE-3560) | the hbase-default entry of "hbase.defaults.for.version" causes tests not to run via not-maven |  Major | . | ryan rawson |  |
| [HBASE-3566](https://issues.apache.org/jira/browse/HBASE-3566) |  writeToWAL is not serialized for increment operation |  Major | Client | Dmitri Pavlovski | Andrew Purtell |
| [HBASE-3572](https://issues.apache.org/jira/browse/HBASE-3572) | memstore lab can leave half inited data structs (bad!) |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3374](https://issues.apache.org/jira/browse/HBASE-3374) | Our jruby jar has \*GPL jars in it; fix |  Major | . | stack | stack |
| [HBASE-3601](https://issues.apache.org/jira/browse/HBASE-3601) | TestMasterFailover broken in TRUNK |  Major | . | stack | stack |
| [HBASE-3605](https://issues.apache.org/jira/browse/HBASE-3605) | Fix balancer log message |  Major | . | stack |  |
| [HBASE-3513](https://issues.apache.org/jira/browse/HBASE-3513) | upgrade thrift to 0.5.0 and use mvn version |  Major | Thrift | ryan rawson | ryan rawson |
| [HBASE-3608](https://issues.apache.org/jira/browse/HBASE-3608) | MemstoreFlusher error message doesnt include exception! |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3612](https://issues.apache.org/jira/browse/HBASE-3612) | HBaseAdmin::isTableAvailable( name ) returns true when the table does not exist |  Major | Client | Jeremy Hinegardner | Andrew Purtell |
| [HBASE-3538](https://issues.apache.org/jira/browse/HBASE-3538) | Column families allow to have slashes in name |  Major | regionserver | Lars George | Subbu M Iyer |
| [HBASE-3631](https://issues.apache.org/jira/browse/HBASE-3631) | CLONE - HBase 2984 breaks ability to specify BLOOMFILTER & COMPRESSION via shell |  Minor | shell | Sebastian Bauer | Kannan Muthukkaruppan |
| [HBASE-3313](https://issues.apache.org/jira/browse/HBASE-3313) | Table name isn't checked in isTableEnabled/isTableDisabled |  Major | . | Jean-Daniel Cryans | Ted Yu |
| [HBASE-3630](https://issues.apache.org/jira/browse/HBASE-3630) | DemoClient.Java is outdated. |  Minor | Client, Thrift | Moaz Reyad | Moaz Reyad |
| [HBASE-3662](https://issues.apache.org/jira/browse/HBASE-3662) | REST server does not respect client supplied max versions when creating scanner |  Major | REST | Gary Helmling | Andrew Purtell |
| [HBASE-3275](https://issues.apache.org/jira/browse/HBASE-3275) | [rest] No gzip/deflate content encoding support |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3641](https://issues.apache.org/jira/browse/HBASE-3641) | LruBlockCache.CacheStats.getHitCount() is not using the correct variable |  Major | io | Jonathan Gray | Jonathan Gray |
| [HBASE-3532](https://issues.apache.org/jira/browse/HBASE-3532) | HRegion#equals is broken |  Major | . | Todd Lipcon | Ted Yu |
| [HBASE-3583](https://issues.apache.org/jira/browse/HBASE-3583) | Coprocessors: RegionObserver: ScannerNext and ScannerClose hooks are called when get() is invoked |  Major | Coprocessors | Mingjie Lai | Mingjie Lai |
| [HBASE-3697](https://issues.apache.org/jira/browse/HBASE-3697) | Admin actions that use MetaReader to iterate regions need to skip offline ones |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3688](https://issues.apache.org/jira/browse/HBASE-3688) | Setters of class HTableDescriptor do not work properly |  Major | Client | Adrián Romero |  |
| [HBASE-3702](https://issues.apache.org/jira/browse/HBASE-3702) | Exec throws a npe while writing a method that has a null value argument |  Major | Coprocessors | Himanshu Vashishtha | Gary Helmling |
| [HBASE-3709](https://issues.apache.org/jira/browse/HBASE-3709) | HFile compression not sharing configuration |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3716](https://issues.apache.org/jira/browse/HBASE-3716) | Intermittent TestRegionRebalancing failure |  Major | master | Ted Yu | Ted Yu |
| [HBASE-3238](https://issues.apache.org/jira/browse/HBASE-3238) | HBase needs to have the CREATE permission on the parent of its ZooKeeper parent znode |  Blocker | . | Mathias Herberts | Alex Newman |
| [HBASE-3728](https://issues.apache.org/jira/browse/HBASE-3728) | NPE in HTablePool.closeTablePool |  Minor | Client | Andruschuk Borislav | Ted Yu |
| [HBASE-3488](https://issues.apache.org/jira/browse/HBASE-3488) | Add CellCounter to count multiple versions of rows |  Major | util | Ted Yu | Subbu M Iyer |
| [HBASE-3733](https://issues.apache.org/jira/browse/HBASE-3733) | MemStoreFlusher.flushOneForGlobalPressure() shouldn't be using TreeSet for HRegion |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-3739](https://issues.apache.org/jira/browse/HBASE-3739) | HMaster.getProtocolVersion() ignores HMasterRegionInterface.VERSION |  Minor | IPC/RPC | Gary Helmling | Gary Helmling |
| [HBASE-3624](https://issues.apache.org/jira/browse/HBASE-3624) | Only one coprocessor of each priority type can be loaded for a table |  Major | Coprocessors | Jesse Daniels | Andrew Purtell |
| [HBASE-3598](https://issues.apache.org/jira/browse/HBASE-3598) | Broken formatting in LRU stats output |  Major | . | Todd Lipcon | Erik Onnen |
| [HBASE-3758](https://issues.apache.org/jira/browse/HBASE-3758) | HTable.delete triggers pre/postScannerOpen upcalls of RegionObserver |  Major | Coprocessors | Mingjie Lai | Mingjie Lai |
| [HBASE-3790](https://issues.apache.org/jira/browse/HBASE-3790) | ExecResult.write() throws NPE if result value is null |  Major | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-3781](https://issues.apache.org/jira/browse/HBASE-3781) | hbase shell cannot start "NoMethodError: undefined method `close' for nil:NilClass" |  Major | shell | Mikael Sitruk |  |
| [HBASE-3802](https://issues.apache.org/jira/browse/HBASE-3802) | Redundant list creation in HRegion |  Major | . | stack | stack |
| [HBASE-3800](https://issues.apache.org/jira/browse/HBASE-3800) | If HMaster is started after NN without starting DN in Hbase 090.2 then HMaster is not able to start due to AlreadyCreatedException for /hbase/hbase.version |  Major | master | gaojinchao | Andrew Purtell |
| [HBASE-3788](https://issues.apache.org/jira/browse/HBASE-3788) | Two error handlings in AssignmentManager.setOfflineInZooKeeper() |  Major | master | Ted Yu | Ted Yu |
| [HBASE-3806](https://issues.apache.org/jira/browse/HBASE-3806) | distributed log splitting double escapes task names |  Major | . | Prakash Khemani | Prakash Khemani |
| [HBASE-3817](https://issues.apache.org/jira/browse/HBASE-3817) | HBase Shell has an issue accepting FILTER for the 'scan' command. |  Trivial | shell | Harsh J | Harsh J |
| [HBASE-3819](https://issues.apache.org/jira/browse/HBASE-3819) | TestSplitLogWorker has too many SLWs running -- makes for contention and occasional failures |  Major | . | stack | stack |
| [HBASE-3827](https://issues.apache.org/jira/browse/HBASE-3827) | hbase-1502, removing heartbeats, broke master joining a running cluster and was returning master hostname for rs to use |  Major | . | stack | stack |
| [HBASE-3843](https://issues.apache.org/jira/browse/HBASE-3843) | splitLogWorker starts too early |  Major | . | Prakash Khemani | Prakash Khemani |
| [HBASE-3670](https://issues.apache.org/jira/browse/HBASE-3670) | Fix error handling in get(List\<Get\> gets) |  Major | Client | Lars George | Harsh J |
| [HBASE-3838](https://issues.apache.org/jira/browse/HBASE-3838) | RegionCoprocesorHost.preWALRestore throws npe in case there is no RegionObserver registered. |  Minor | . | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-3847](https://issues.apache.org/jira/browse/HBASE-3847) | Turn off DEBUG logging of RPCs in WriteableRPCEngine on TRUNK |  Major | . | stack | stack |
| [HBASE-3849](https://issues.apache.org/jira/browse/HBASE-3849) | Fix master ui; hbase-1502 broke requests/second |  Major | . | stack | stack |
| [HBASE-3853](https://issues.apache.org/jira/browse/HBASE-3853) | TestInfoServers failing after HBASE-3835 |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3829](https://issues.apache.org/jira/browse/HBASE-3829) | TestMasterFailover failures in jenkins |  Major | . | stack | stack |
| [HBASE-3431](https://issues.apache.org/jira/browse/HBASE-3431) | Regionserver is not using the name given it by the master; double entry in master listing of servers |  Blocker | . | stack | stack |
| [HBASE-3862](https://issues.apache.org/jira/browse/HBASE-3862) | Race conditions in aggregate calculation |  Major | Coprocessors | John Heitmann |  |
| [HBASE-3863](https://issues.apache.org/jira/browse/HBASE-3863) | Fix failing TestHBaseFsck.testHBaseFsckMeta unit test |  Major | . | stack | stack |
| [HBASE-3865](https://issues.apache.org/jira/browse/HBASE-3865) | Failing TestWALReplay |  Major | . | stack | stack |
| [HBASE-3864](https://issues.apache.org/jira/browse/HBASE-3864) | Rename of hfile.min.blocksize.size in HBASE-2899 reverted in HBASE-1861 |  Major | mapreduce | Aaron T. Myers | Aaron T. Myers |
| [HBASE-3876](https://issues.apache.org/jira/browse/HBASE-3876) | TestCoprocessorInterface.testCoprocessorInterface broke on jenkins and local |  Blocker | . | stack | stack |
| [HBASE-3895](https://issues.apache.org/jira/browse/HBASE-3895) | Fix order of parameters after HBASE-1511 |  Trivial | scripts | Lars George | Lars George |
| [HBASE-3897](https://issues.apache.org/jira/browse/HBASE-3897) | Docs (notsoquick guide) suggest invalid XML |  Minor | documentation | Philip Zeyliger |  |
| [HBASE-3912](https://issues.apache.org/jira/browse/HBASE-3912) | [Stargate] Columns not handle by Scan |  Minor | REST | Lars George | Lars George |
| [HBASE-3903](https://issues.apache.org/jira/browse/HBASE-3903) | A successful write to client write-buffer may be lost or not visible |  Minor | documentation | Tallat | Doug Meil |
| [HBASE-3808](https://issues.apache.org/jira/browse/HBASE-3808) | Implement Executor.toString for master handlers at least |  Minor | . | stack | Brock Noland |
| [HBASE-3959](https://issues.apache.org/jira/browse/HBASE-3959) | hadoop-snappy version in the pom.xml is incorrect |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HBASE-3971](https://issues.apache.org/jira/browse/HBASE-3971) | Compression.java uses ClassLoader.getSystemClassLoader() to load codec |  Major | io | Alejandro Abdelnur | Alejandro Abdelnur |
| [HBASE-3979](https://issues.apache.org/jira/browse/HBASE-3979) | Trivial fixes in code, document |  Trivial | . | Ming Ma | Ming Ma |
| [HBASE-3974](https://issues.apache.org/jira/browse/HBASE-3974) | Client: Ability to Discard Bad HTable Puts |  Critical | Client | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3923](https://issues.apache.org/jira/browse/HBASE-3923) | HBASE-1502 Broke Shell's status 'simple' and 'detailed' |  Major | shell | Lars George | Lars George |
| [HBASE-3978](https://issues.apache.org/jira/browse/HBASE-3978) | rowlock lease renew doesn't work when custom coprocessor/RegionObserver indicates to bypass default action |  Major | Coprocessors, regionserver | Ming Ma | Ming Ma |
| [HBASE-3983](https://issues.apache.org/jira/browse/HBASE-3983) | list command in shell seems broken |  Blocker | . | Todd Lipcon | stack |
| [HBASE-3793](https://issues.apache.org/jira/browse/HBASE-3793) | HBASE-3468 Broke checkAndPut with null value |  Blocker | regionserver | Lars George | Ming Ma |
| [HBASE-3916](https://issues.apache.org/jira/browse/HBASE-3916) | Fix problem with default bind address of ThriftServer |  Minor | Thrift | Lars George | Li Pi |
| [HBASE-3970](https://issues.apache.org/jira/browse/HBASE-3970) | Address HMaster crash/failure half way through meta migration |  Blocker | Client, master, regionserver | Subbu M Iyer | Subbu M Iyer |
| [HBASE-3889](https://issues.apache.org/jira/browse/HBASE-3889) | NPE in Distributed Log Splitting |  Blocker | regionserver | Lars George | Anirudh Todi |
| [HBASE-4029](https://issues.apache.org/jira/browse/HBASE-4029) | Inappropriate checking of Logging Mode in HRegionServer |  Major | regionserver | Akash Ashok | Akash Ashok |
| [HBASE-4035](https://issues.apache.org/jira/browse/HBASE-4035) | Fix local-master-backup.sh - parameter order wrong |  Minor | scripts | Lars George | Lars George |
| [HBASE-4020](https://issues.apache.org/jira/browse/HBASE-4020) | "testWritesWhileGetting" unit test needs to be fixed. |  Major | test | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-4016](https://issues.apache.org/jira/browse/HBASE-4016) | HRegion.incrementColumnValue() doesn't have a consistent behavior when the field that we are incrementing is less than 8 bytes long |  Major | regionserver | Praveen Kumar | Li Pi |
| [HBASE-4051](https://issues.apache.org/jira/browse/HBASE-4051) | [Coprocessors] Table coprocessor loaded twice when region is initialized |  Major | Coprocessors | Terry Siu | Andrew Purtell |
| [HBASE-4034](https://issues.apache.org/jira/browse/HBASE-4034) | HRegionServer should be stopped even if no META regions are hosted by the HRegionServer |  Major | regionserver | Akash Ashok | Akash Ashok |
| [HBASE-4061](https://issues.apache.org/jira/browse/HBASE-4061) | getTableDirs is missing directories to skip |  Major | util | Lars George | Ted Yu |
| [HBASE-4087](https://issues.apache.org/jira/browse/HBASE-4087) | HBaseAdmin should perform validation of connection it holds |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-4101](https://issues.apache.org/jira/browse/HBASE-4101) | Regionserver Deadlock |  Blocker | regionserver | Matt Davies | ramkrishna.s.vasudevan |
| [HBASE-4127](https://issues.apache.org/jira/browse/HBASE-4127) | HBaseAdmin : Don't modify table's name away |  Blocker | Client, master | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3465](https://issues.apache.org/jira/browse/HBASE-3465) | Hbase should use a HADOOP\_HOME environment variable if available. |  Major | . | Ted Dunning | Alejandro Abdelnur |
| [HBASE-4139](https://issues.apache.org/jira/browse/HBASE-4139) | [stargate] Update ScannerModel with support for filter package additions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-4024](https://issues.apache.org/jira/browse/HBASE-4024) | Major compaction may not be triggered, even though region server log says it is triggered |  Trivial | regionserver | Suraj Varma | Ted Yu |
| [HBASE-3447](https://issues.apache.org/jira/browse/HBASE-3447) | Split parents ending up deployed along with daughters |  Blocker | . | Todd Lipcon | stack |
| [HBASE-3845](https://issues.apache.org/jira/browse/HBASE-3845) | data loss because lastSeqWritten can miss memstore edits |  Critical | . | Prakash Khemani | ramkrishna.s.vasudevan |
| [HBASE-4032](https://issues.apache.org/jira/browse/HBASE-4032) | HBASE-451 improperly breaks public API HRegionInfo#getTableDesc |  Blocker | . | Andrew Purtell | stack |
| [HBASE-3065](https://issues.apache.org/jira/browse/HBASE-3065) | Retry all 'retryable' zk operations; e.g. connection loss |  Blocker | . | stack | Liyin Tang |
| [HBASE-4171](https://issues.apache.org/jira/browse/HBASE-4171) | HBase shell broken in trunk |  Major | shell | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4181](https://issues.apache.org/jira/browse/HBASE-4181) | HConnectionManager can't find cached HRegionInterface which makes client very slow |  Critical | Client | Liu Jia | Liu Jia |
| [HBASE-4156](https://issues.apache.org/jira/browse/HBASE-4156) | ZKConfig defaults clientPort improperly |  Trivial | Zookeeper | Michajlo Matijkiw |  |
| [HBASE-3807](https://issues.apache.org/jira/browse/HBASE-3807) | Fix units in RS UI metrics |  Major | . | stack | subramanian raghunathan |
| [HBASE-4184](https://issues.apache.org/jira/browse/HBASE-4184) | CatalogJanitor doesn't work properly when "fs.default.name" isn't set in config file. |  Major | master | Ming Ma | Ming Ma |
| [HBASE-4150](https://issues.apache.org/jira/browse/HBASE-4150) | Potentially too many connections may be opened if ThreadLocalPool or RoundRobinPool is used |  Major | . | Ted Yu | Karthick Sankarachary |
| [HBASE-4081](https://issues.apache.org/jira/browse/HBASE-4081) | Issues with HRegion.compactStores methods |  Major | regionserver | Ming Ma | Ming Ma |
| [HBASE-4211](https://issues.apache.org/jira/browse/HBASE-4211) | Do init-sizing of the StringBuilder making a ServerName. |  Minor | . | stack | Benoit Sigoure |
| [HBASE-4008](https://issues.apache.org/jira/browse/HBASE-4008) | Problem while stopping HBase |  Major | scripts | Akash Ashok | Akash Ashok |
| [HBASE-2399](https://issues.apache.org/jira/browse/HBASE-2399) | Forced splits only act on the first family in a table |  Critical | regionserver | Jonathan Gray | Ming Ma |
| [HBASE-4230](https://issues.apache.org/jira/browse/HBASE-4230) | Compaction threads need names |  Major | regionserver | Todd Lipcon | Andrew Purtell |
| [HBASE-4167](https://issues.apache.org/jira/browse/HBASE-4167) | Potential leak of HTable instances when using HTablePool with PoolType.ThreadLocal |  Major | Client | Gary Helmling | Karthick Sankarachary |
| [HBASE-4220](https://issues.apache.org/jira/browse/HBASE-4220) | Lots of DNS queries from client |  Critical | Client | Todd Lipcon | stack |
| [HBASE-4138](https://issues.apache.org/jira/browse/HBASE-4138) | If zookeeper.znode.parent is not specifed explicitly in Client code then HTable object loops continuously waiting for the root region by using /hbase as the base node. |  Major | Client | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4215](https://issues.apache.org/jira/browse/HBASE-4215) | RS requestsPerSecond counter seems to be off |  Critical | metrics | Todd Lipcon | subramanian raghunathan |
| [HBASE-3229](https://issues.apache.org/jira/browse/HBASE-3229) | Table creation, though using "async" call to master, can actually run for a while and cause RPC timeout |  Critical | Client, master | Jonathan Gray | Ming Ma |
| [HBASE-4290](https://issues.apache.org/jira/browse/HBASE-4290) | HLogSplitter doesn't mark its MonitoredTask as complete in non-distributed case |  Trivial | master | Todd Lipcon | Todd Lipcon |
| [HBASE-4303](https://issues.apache.org/jira/browse/HBASE-4303) | HRegionInfo.toString has bad quoting |  Trivial | . | Todd Lipcon | Todd Lipcon |
| [HBASE-4315](https://issues.apache.org/jira/browse/HBASE-4315) | RPC logging too verbose in trunk |  Trivial | IPC/RPC | Todd Lipcon | Todd Lipcon |
| [HBASE-4283](https://issues.apache.org/jira/browse/HBASE-4283) | HBaseAdmin never recovers from restarted cluster |  Minor | Client | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4265](https://issues.apache.org/jira/browse/HBASE-4265) | zookeeper.KeeperException$NodeExistsException if HMaster restarts while table is being disabled |  Major | . | Ming Ma | Ming Ma |
| [HBASE-4327](https://issues.apache.org/jira/browse/HBASE-4327) | Compile HBase against hadoop 0.22 |  Major | build | Joep Rottinghuis | Joep Rottinghuis |
| [HBASE-4338](https://issues.apache.org/jira/browse/HBASE-4338) | Package build for rpm and deb are broken |  Major | build | Eric Yang | Eric Yang |
| [HBASE-4309](https://issues.apache.org/jira/browse/HBASE-4309) | slow query log metrics spewing warnings |  Critical | metrics | Todd Lipcon | Riley Patterson |
| [HBASE-4273](https://issues.apache.org/jira/browse/HBASE-4273) | java.lang.NullPointerException when a table is being disabled and HMaster restarts |  Major | . | Ming Ma | Ming Ma |
| [HBASE-4296](https://issues.apache.org/jira/browse/HBASE-4296) | Deprecate HTable[Interface].getRowOrBefore(...) |  Trivial | Client | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4271](https://issues.apache.org/jira/browse/HBASE-4271) | Clean up coprocessor's handlings of table operations |  Major | Coprocessors | Ming Ma | Ming Ma |
| [HBASE-4350](https://issues.apache.org/jira/browse/HBASE-4350) | Fix a Bloom filter bug introduced by HFile v2 and TestMultiColumnScanner that caught it |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4007](https://issues.apache.org/jira/browse/HBASE-4007) | distributed log splitting can get indefinitely stuck |  Critical | . | Prakash Khemani | Prakash Khemani |
| [HBASE-4301](https://issues.apache.org/jira/browse/HBASE-4301) | META migration from 0.90 to trunk fails |  Blocker | master | Todd Lipcon | Subbu M Iyer |
| [HBASE-4331](https://issues.apache.org/jira/browse/HBASE-4331) | Bypassing default actions in prePut fails sometimes with HTable client |  Major | Coprocessors | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4270](https://issues.apache.org/jira/browse/HBASE-4270) | IOE ignored during flush-on-close causes dataloss |  Blocker | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-4169](https://issues.apache.org/jira/browse/HBASE-4169) | FSUtils LeaseRecovery for non HDFS FileSystems. |  Major | util | Lohit Vijayarenu | Lohit Vijayarenu |
| [HBASE-4003](https://issues.apache.org/jira/browse/HBASE-4003) | Cleanup Calls Conservatively On Timeout |  Major | Client | Karthick Sankarachary | Karthick Sankarachary |
| [HBASE-4406](https://issues.apache.org/jira/browse/HBASE-4406) | TestOpenRegionHandler failing after HBASE-4287 |  Critical | test | Todd Lipcon | Todd Lipcon |
| [HBASE-4330](https://issues.apache.org/jira/browse/HBASE-4330) | Fix races in slab cache |  Major | . | Todd Lipcon | Li Pi |
| [HBASE-4414](https://issues.apache.org/jira/browse/HBASE-4414) | Region splits by size not being triggered in at least some cases |  Blocker | . | Gary Helmling | Gary Helmling |
| [HBASE-4195](https://issues.apache.org/jira/browse/HBASE-4195) | Possible inconsistency in a memstore read after a reseek, possible performance improvement |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4420](https://issues.apache.org/jira/browse/HBASE-4420) | MasterObserver preMove() and postMove() should throw IOException instead of UnknownRegionException |  Major | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-4383](https://issues.apache.org/jira/browse/HBASE-4383) | SlabCache reports negative heap sizes |  Major | regionserver | Todd Lipcon | Li Pi |
| [HBASE-4153](https://issues.apache.org/jira/browse/HBASE-4153) | Handle RegionAlreadyInTransitionException in AssignmentManager |  Major | . | Jean-Daniel Cryans | ramkrishna.s.vasudevan |
| [HBASE-4446](https://issues.apache.org/jira/browse/HBASE-4446) | Rolling restart RSs scenario, regions could stay in OPENING state |  Major | master | Ming Ma | Ming Ma |
| [HBASE-4468](https://issues.apache.org/jira/browse/HBASE-4468) | Wrong resource name in an error massage: webapps instead of hbase-webapps |  Trivial | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4472](https://issues.apache.org/jira/browse/HBASE-4472) | MiniHBaseCluster.shutdown() doesn't work if no active master |  Major | . | Gary Helmling | Gary Helmling |
| [HBASE-4455](https://issues.apache.org/jira/browse/HBASE-4455) | Rolling restart RSs scenario, -ROOT-, .META. regions are lost in AssignmentManager |  Major | . | Ming Ma | Ming Ma |
| [HBASE-4513](https://issues.apache.org/jira/browse/HBASE-4513) | NOTICES.txt refers to Facebook for Thrift |  Minor | documentation | Joe Pallas | stack |
| [HBASE-3130](https://issues.apache.org/jira/browse/HBASE-3130) | [replication] ReplicationSource can't recover from session expired on remote clusters |  Major | Replication | Jean-Daniel Cryans | Chris Trezzo |
| [HBASE-4412](https://issues.apache.org/jira/browse/HBASE-4412) | No need to retry scan operation on the same server in case of RegionServerStoppedException |  Major | . | Ming Ma | Ming Ma |
| [HBASE-4476](https://issues.apache.org/jira/browse/HBASE-4476) | Compactions must fail if column tracker gets columns out of order |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4209](https://issues.apache.org/jira/browse/HBASE-4209) | The HBase hbase-daemon.sh SIGKILLs master when stopping it |  Major | master | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-4496](https://issues.apache.org/jira/browse/HBASE-4496) | HFile V2 does not honor setCacheBlocks when scanning. |  Major | regionserver | Lars Hofhansl | Mikhail Bautin |
| [HBASE-4526](https://issues.apache.org/jira/browse/HBASE-4526) | special case for stopping master in hbase-daemon.sh is no longer required |  Minor | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-4531](https://issues.apache.org/jira/browse/HBASE-4531) | hbase-4454 failsafe broke mvn site; back it out or fix |  Blocker | . | stack | Akash Ashok |
| [HBASE-4334](https://issues.apache.org/jira/browse/HBASE-4334) | HRegion.get never validates row |  Major | regionserver | Joe Pallas | Lars Hofhansl |
| [HBASE-4494](https://issues.apache.org/jira/browse/HBASE-4494) | AvroServer:: get fails with NPE on a non-existent row |  Major | . | Karthik K | Karthik K |
| [HBASE-4479](https://issues.apache.org/jira/browse/HBASE-4479) | TestMasterFailover failure in Hbase-0.92#17 |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4386](https://issues.apache.org/jira/browse/HBASE-4386) | NPE in TaskMonitor |  Critical | . | Todd Lipcon | Todd Lipcon |
| [HBASE-4402](https://issues.apache.org/jira/browse/HBASE-4402) | Retaining locality after restart broken |  Blocker | master | Todd Lipcon | Todd Lipcon |
| [HBASE-4547](https://issues.apache.org/jira/browse/HBASE-4547) | TestAdmin failing in 0.92 because .tableinfo not found |  Critical | . | stack | stack |
| [HBASE-4539](https://issues.apache.org/jira/browse/HBASE-4539) | OpenedRegionHandler racing with itself in ServerShutDownhandler flow leading to HMaster abort |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4335](https://issues.apache.org/jira/browse/HBASE-4335) | Splits can create temporary holes in .META. that confuse clients and regionservers |  Critical | regionserver | Joe Pallas | Lars Hofhansl |
| [HBASE-4582](https://issues.apache.org/jira/browse/HBASE-4582) | Store.java cleanup (failing TestHeapSize and has warnings) |  Minor | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-4556](https://issues.apache.org/jira/browse/HBASE-4556) | Fix all incorrect uses of InternalScanner.next(...) |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4065](https://issues.apache.org/jira/browse/HBASE-4065) | TableOutputFormat ignores failure to create table instance |  Major | . | Todd Lipcon | Brock Noland |
| [HBASE-4078](https://issues.apache.org/jira/browse/HBASE-4078) | Silent Data Offlining During HDFS Flakiness |  Blocker | io, regionserver | Nicolas Spiegelberg | Pritam Damania |
| [HBASE-3417](https://issues.apache.org/jira/browse/HBASE-3417) | CacheOnWrite is using the temporary output path for block names, need to use a more consistent block naming scheme |  Critical | io, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-4551](https://issues.apache.org/jira/browse/HBASE-4551) | Small fixes to compile against 0.23-SNAPSHOT |  Major | build | Todd Lipcon | Todd Lipcon |
| [HBASE-3446](https://issues.apache.org/jira/browse/HBASE-3446) | ProcessServerShutdown fails if META moves, orphaning lots of regions |  Blocker | master | Todd Lipcon | stack |
| [HBASE-4589](https://issues.apache.org/jira/browse/HBASE-4589) | CacheOnWrite broken in some cases because it can conflict with evictOnClose |  Critical | io | Jonathan Gray | Jonathan Gray |
| [HBASE-4579](https://issues.apache.org/jira/browse/HBASE-4579) | CST.requestCompaction semantics changed, logs are now spammed when too many store files |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4620](https://issues.apache.org/jira/browse/HBASE-4620) | I broke the build when I submitted HBASE-3581 (Send length of the rpc response) |  Blocker | . | stack | stack |
| [HBASE-4203](https://issues.apache.org/jira/browse/HBASE-4203) | While master restarts and if the META region's state is OPENING then master cannot assign META until timeout monitor deducts |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4621](https://issues.apache.org/jira/browse/HBASE-4621) | TestAvroServer fails quite often intermittently |  Major | . | Akash Ashok | Akash Ashok |
| [HBASE-4459](https://issues.apache.org/jira/browse/HBASE-4459) | HbaseObjectWritable code is a byte, we will eventually run out of codes |  Critical | io | Jonathan Gray | ramkrishna.s.vasudevan |
| [HBASE-4595](https://issues.apache.org/jira/browse/HBASE-4595) | HFilePrettyPrinter Scanned kv count always 0 |  Minor | io | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-4580](https://issues.apache.org/jira/browse/HBASE-4580) | Some invalid zk nodes were created when a clean cluster restarts |  Major | master | gaojinchao | gaojinchao |
| [HBASE-4588](https://issues.apache.org/jira/browse/HBASE-4588) | The floating point arithmetic to validate memory allocation configurations need to be done as integers |  Minor | . | Jonathan Gray | dhruba borthakur |
| [HBASE-4647](https://issues.apache.org/jira/browse/HBASE-4647) | RAT finds about 40 files missing licenses |  Blocker | . | stack | stack |
| [HBASE-4578](https://issues.apache.org/jira/browse/HBASE-4578) | NPE when altering a table that has moving regions |  Blocker | . | Jean-Daniel Cryans | gaojinchao |
| [HBASE-4670](https://issues.apache.org/jira/browse/HBASE-4670) | Fix javadoc warnings |  Major | . | stack | stack |
| [HBASE-4367](https://issues.apache.org/jira/browse/HBASE-4367) | Deadlock in MemStore flusher due to JDK internally synchronizing on current thread |  Critical | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-4634](https://issues.apache.org/jira/browse/HBASE-4634) | "test.build.data" property overused leading to write data at the wrong place |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4673](https://issues.apache.org/jira/browse/HBASE-4673) | NPE in HFileReaderV2.close during major compaction when hfile.block.cache.size is set to 0 |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4388](https://issues.apache.org/jira/browse/HBASE-4388) | Second start after migration from 90 to trunk crashes |  Blocker | master, migration | Todd Lipcon | stack |
| [HBASE-4685](https://issues.apache.org/jira/browse/HBASE-4685) | TestDistributedLogSplitting.testOrphanLogCreation failing because of ArithmeticException: / by zero. |  Major | . | stack |  |
| [HBASE-4300](https://issues.apache.org/jira/browse/HBASE-4300) | Start of new-version master fails if old master's znode is hanging around |  Critical | . | Todd Lipcon | stack |
| [HBASE-4679](https://issues.apache.org/jira/browse/HBASE-4679) | Thrift null mutation error |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4645](https://issues.apache.org/jira/browse/HBASE-4645) | Edits Log recovery losing data across column families |  Major | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4304](https://issues.apache.org/jira/browse/HBASE-4304) | requestsPerSecond counter stuck at 0 |  Critical | master, regionserver | Todd Lipcon | Li Pi |
| [HBASE-4692](https://issues.apache.org/jira/browse/HBASE-4692) | HBASE-4300 broke the build |  Blocker | . | stack | stack |
| [HBASE-4641](https://issues.apache.org/jira/browse/HBASE-4641) | Block cache can be mistakenly instantiated on Master |  Critical | master | Jonathan Gray | Jonathan Gray |
| [HBASE-4687](https://issues.apache.org/jira/browse/HBASE-4687) | regionserver may miss zk-heartbeats to master when replaying edits at region open |  Major | . | Prakash Khemani | Prakash Khemani |
| [HBASE-4701](https://issues.apache.org/jira/browse/HBASE-4701) | TestMasterObserver fails up on jenkins |  Major | . | stack | stack |
| [HBASE-4700](https://issues.apache.org/jira/browse/HBASE-4700) | TestSplitTransactionOnCluster fails on occasion when it tries to move a region |  Major | . | stack | stack |
| [HBASE-4688](https://issues.apache.org/jira/browse/HBASE-4688) | Make it so can run PE w/o having to put hbase jar on CLASSPATH |  Major | . | stack | stack |
| [HBASE-4710](https://issues.apache.org/jira/browse/HBASE-4710) | HBaseRPC$UnknownProtocolException should abort any client retries in HConnectionManager |  Major | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-3515](https://issues.apache.org/jira/browse/HBASE-3515) | [replication] ReplicationSource can miss a log after RS comes out of GC |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4716](https://issues.apache.org/jira/browse/HBASE-4716) | Improve locking for single column family bulk load |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-2312](https://issues.apache.org/jira/browse/HBASE-2312) | Possible data loss when RS goes into GC pause while rolling HLog |  Critical | master, regionserver | Karthik Ranganathan | Nicolas Spiegelberg |
| [HBASE-4719](https://issues.apache.org/jira/browse/HBASE-4719) | HBase script assumes pre-Hadoop 0.21 layout of jar files |  Major | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-4725](https://issues.apache.org/jira/browse/HBASE-4725) | NPE in AM#updateTimers |  Major | . | stack | stack |
| [HBASE-4745](https://issues.apache.org/jira/browse/HBASE-4745) | LRU Statistics thread should be daemon |  Major | . | Ted Yu | Andrew Purtell |
| [HBASE-4749](https://issues.apache.org/jira/browse/HBASE-4749) | TestMasterFailover#testMasterFailoverWithMockedRITOnDeadRS occasionally fails |  Critical | test | gaojinchao | stack |
| [HBASE-4753](https://issues.apache.org/jira/browse/HBASE-4753) | org.apache.hadoop.hbase.regionserver.TestHRegionInfo#testGetSetOfHTD throws NPE on trunk |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4740](https://issues.apache.org/jira/browse/HBASE-4740) | [bulk load]  the HBASE-4552 API can't tell if errors on region server are recoverable |  Blocker | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4754](https://issues.apache.org/jira/browse/HBASE-4754) | FSTableDescriptors.getTableInfoPath() should handle FileNotFoundException |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-4681](https://issues.apache.org/jira/browse/HBASE-4681) | StringIndexOutOfBoundsException parsing Hostname |  Major | . | stack |  |
| [HBASE-4741](https://issues.apache.org/jira/browse/HBASE-4741) | Online schema change doesn't return errors |  Critical | . | Jean-Daniel Cryans | stack |
| [HBASE-4769](https://issues.apache.org/jira/browse/HBASE-4769) | Abort RegionServer Immediately on OOME |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4511](https://issues.apache.org/jira/browse/HBASE-4511) | There is data loss when master failovers |  Minor | master | gaojinchao | stack |
| [HBASE-4577](https://issues.apache.org/jira/browse/HBASE-4577) | Region server reports storefileSizeMB bigger than storefileUncompressedSizeMB |  Minor | . | Jean-Daniel Cryans | gaojinchao |
| [HBASE-4478](https://issues.apache.org/jira/browse/HBASE-4478) | Improve AssignmentManager.handleRegion so that it can process certain ZK state in the case of RS offline |  Major | . | Ming Ma | ramkrishna.s.vasudevan |
| [HBASE-4777](https://issues.apache.org/jira/browse/HBASE-4777) | Write back to client 'incompatible' if we show up with wrong version |  Major | . | stack | stack |
| [HBASE-4775](https://issues.apache.org/jira/browse/HBASE-4775) | Remove -ea from all but tests; enable it if you need it testing |  Major | . | stack | stack |
| [HBASE-4776](https://issues.apache.org/jira/browse/HBASE-4776) | HLog.closed should be checked inside of updateLock |  Major | . | Nicolas Spiegelberg | Prakash Khemani |
| [HBASE-4778](https://issues.apache.org/jira/browse/HBASE-4778) | Don't ignore corrupt StoreFiles when opening a region |  Major | . | Nicolas Spiegelberg | Mikhail Bautin |
| [HBASE-4784](https://issues.apache.org/jira/browse/HBASE-4784) | Void return types not handled correctly for CoprocessorProtocol methods |  Critical | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-4790](https://issues.apache.org/jira/browse/HBASE-4790) | Occasional TestDistributedLogSplitting failure |  Minor | test | gaojinchao | gaojinchao |
| [HBASE-4792](https://issues.apache.org/jira/browse/HBASE-4792) | SplitRegionHandler doesn't care if it deletes the znode or not, leaves the parent region stuck offline |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4801](https://issues.apache.org/jira/browse/HBASE-4801) | alter\_status shell prints sensible message at completion |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4804](https://issues.apache.org/jira/browse/HBASE-4804) | Minor Dyslexia in CHANGES.txt |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4793](https://issues.apache.org/jira/browse/HBASE-4793) | HBase shell still using deprecated methods removed in HBASE-4436 |  Critical | shell | Gary Helmling | Gary Helmling |
| [HBASE-4805](https://issues.apache.org/jira/browse/HBASE-4805) | Allow better control of resource consumption in HTable |  Major | Client | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4816](https://issues.apache.org/jira/browse/HBASE-4816) | Regionserver wouldn't go down because split happened exactly at same time we issued bulk user region close call on our way out |  Major | . | stack | stack |
| [HBASE-4789](https://issues.apache.org/jira/browse/HBASE-4789) | On split, parent region is sticking around in oldest sequenceid to region map though not online; we don't cleanup WALs. |  Critical | . | stack | stack |
| [HBASE-4829](https://issues.apache.org/jira/browse/HBASE-4829) | Fix javadoc warnings in 0.92 branch |  Major | . | stack | stack |
| [HBASE-4830](https://issues.apache.org/jira/browse/HBASE-4830) | Regionserver BLOCKED on WAITING DFSClient$DFSOutputStream.waitForAckedSeqno running 0.20.205.0+ |  Major | . | stack | stack |
| [HBASE-4849](https://issues.apache.org/jira/browse/HBASE-4849) | TestCatalogTracker can fail if an existing zookeeper running |  Major | . | stack | stack |
| [HBASE-4854](https://issues.apache.org/jira/browse/HBASE-4854) | it seems that CLASSPATH elements coming from Hadoop change HBase behaviour |  Major | shell | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-4857](https://issues.apache.org/jira/browse/HBASE-4857) | Recursive loop on KeeperException in AuthenticationTokenSecretManager/ZKLeaderManager |  Critical | security | Gary Helmling | Gary Helmling |
| [HBASE-4308](https://issues.apache.org/jira/browse/HBASE-4308) | Race between RegionOpenedHandler and AssignmentManager |  Major | . | Todd Lipcon | ramkrishna.s.vasudevan |
| [HBASE-4861](https://issues.apache.org/jira/browse/HBASE-4861) | Fix some misspells and extraneous characters in logs; set some to TRACE |  Major | . | stack | stack |
| [HBASE-4855](https://issues.apache.org/jira/browse/HBASE-4855) | SplitLogManager hangs on cluster restart due to batch.installed doubly counted |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4874](https://issues.apache.org/jira/browse/HBASE-4874) | Run tests with non-secure random, some tests hang otherwise |  Major | . | Ted Yu | Lars Hofhansl |
| [HBASE-4877](https://issues.apache.org/jira/browse/HBASE-4877) | TestHCM failing sporadically on jenkins and always for me on an ubuntu machine |  Major | . | stack | stack |
| [HBASE-4862](https://issues.apache.org/jira/browse/HBASE-4862) | Splitting hlog and opening region concurrently may cause data loss |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-4878](https://issues.apache.org/jira/browse/HBASE-4878) | Master crash when splitting hlog may cause data loss |  Major | . | chunhui shen | chunhui shen |
| [HBASE-4889](https://issues.apache.org/jira/browse/HBASE-4889) | HRegionInfo.isMetaTable() should be true for -ROOT- regions |  Major | . | Daniel Gómez Ferro |  |
| [HBASE-4729](https://issues.apache.org/jira/browse/HBASE-4729) | Clash between region unassign and splitting kills the master |  Critical | . | Jean-Daniel Cryans | stack |
| [HBASE-4894](https://issues.apache.org/jira/browse/HBASE-4894) | Remove sbin from tgz made building 0.92. |  Major | . | stack | stack |
| [HBASE-4853](https://issues.apache.org/jira/browse/HBASE-4853) | HBASE-4789 does overzealous pruning of seqids |  Critical | . | stack | stack |
| [HBASE-4918](https://issues.apache.org/jira/browse/HBASE-4918) | HTablePool Constructor may cause unintended behavior |  Major | Client | Kitora, Naoki |  |
| [HBASE-4899](https://issues.apache.org/jira/browse/HBASE-4899) | Region would be assigned twice easily with continually  killing server and moving region in testing environment |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-4945](https://issues.apache.org/jira/browse/HBASE-4945) | NPE in HRegion.bulkLoadHFiles(...) |  Minor | mapreduce | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4942](https://issues.apache.org/jira/browse/HBASE-4942) | HMaster is unable to start of HFile V1 is used |  Major | io | Ted Yu | Honghua Zhu |
| [HBASE-4860](https://issues.apache.org/jira/browse/HBASE-4860) | RegionSplitter Should Allow NSFRE during logical split verification |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4927](https://issues.apache.org/jira/browse/HBASE-4927) | CatalogJanior:SplitParentFirstComparator doesn't sort as expected, for the last region when the endkey is empty |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-4976](https://issues.apache.org/jira/browse/HBASE-4976) | Add compaction/flush queue size metrics mistakenly removed by HFile v2 |  Blocker | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4610](https://issues.apache.org/jira/browse/HBASE-4610) | Port HBASE-3380 (Master failover can split logs of live servers) to 92/trunk (definitely bring in config params, decide if we need to do more to fix the bug) |  Major | master | Jonathan Gray | Jonathan Gray |
| [HBASE-4980](https://issues.apache.org/jira/browse/HBASE-4980) | Null pointer exception in HBaseClient receiveResponse |  Major | Client | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-4880](https://issues.apache.org/jira/browse/HBASE-4880) | Region is on service before openRegionHandler completes, may cause data loss |  Major | . | chunhui shen | chunhui shen |
| [HBASE-4987](https://issues.apache.org/jira/browse/HBASE-4987) | wrong use of incarnation var in SplitLogManager |  Major | . | Prakash Khemani | Prakash Khemani |
| [HBASE-4969](https://issues.apache.org/jira/browse/HBASE-4969) | tautology in HRegionInfo.readFields |  Major | . | Prakash Khemani | Prakash Khemani |
| [HBASE-4994](https://issues.apache.org/jira/browse/HBASE-4994) | TestHeapSize broke in trunk |  Major | . | stack | stack |
| [HBASE-4992](https://issues.apache.org/jira/browse/HBASE-4992) | Use a UUID for HFileOutputFormat partition path name |  Minor | mapreduce | Scott Chen |  |
| [HBASE-4946](https://issues.apache.org/jira/browse/HBASE-4946) | HTable.coprocessorExec (and possibly coprocessorProxy) does not work with dynamically loaded coprocessors (from hdfs or local system), because the RPC system tries to deserialize an unknown class. |  Major | Coprocessors | Andrei Dragomir | Andrei Dragomir |
| [HBASE-4739](https://issues.apache.org/jira/browse/HBASE-4739) | Master dying while going to close a region can leave it in transition forever |  Minor | . | Jean-Daniel Cryans | gaojinchao |
| [HBASE-4796](https://issues.apache.org/jira/browse/HBASE-4796) | Race between SplitRegionHandlers for the same region kills the master |  Major | . | Jean-Daniel Cryans | ramkrishna.s.vasudevan |
| [HBASE-4859](https://issues.apache.org/jira/browse/HBASE-4859) | Correctly PreWarm HBCK ThreadPool |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-5007](https://issues.apache.org/jira/browse/HBASE-5007) | HBaseAdmin.stopRegionServer do not stop the region server |  Major | IPC/RPC | Honghua Zhu |  |
| [HBASE-5008](https://issues.apache.org/jira/browse/HBASE-5008) | The clusters can't  provide services because Region can't flush. |  Blocker | regionserver | gaojinchao | gaojinchao |
| [HBASE-4881](https://issues.apache.org/jira/browse/HBASE-4881) | Unhealthy region is on service caused by rollback of region splitting |  Major | . | chunhui shen | chunhui shen |
| [HBASE-4922](https://issues.apache.org/jira/browse/HBASE-4922) | [packaging] Assembly tars up hbase in a subdir; i.e. after untar hbase-0.92.0 has a subdir named 0.92.0 |  Blocker | . | stack | Roman Shaposhnik |
| [HBASE-4997](https://issues.apache.org/jira/browse/HBASE-4997) | SplitLogManager can have a race on batch.installed |  Major | . | Prakash Khemani | Prakash Khemani |
| [HBASE-5026](https://issues.apache.org/jira/browse/HBASE-5026) | Add coprocessor hook to HRegionServer.ScannerListener.leaseExpired() |  Major | Coprocessors | Liu Jia | Liu Jia |
| [HBASE-5055](https://issues.apache.org/jira/browse/HBASE-5055) | Build against hadoop 0.22 broken |  Blocker | . | Ted Yu | stack |
| [HBASE-5049](https://issues.apache.org/jira/browse/HBASE-5049) | TestHLogSplit.testLogRollAfterSplitStart not working due to HBASE-5006 |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5040](https://issues.apache.org/jira/browse/HBASE-5040) | Secure HBase builds fail |  Major | . | Ted Yu | stack |
| [HBASE-5062](https://issues.apache.org/jira/browse/HBASE-5062) | Missing logons if security is enabled |  Major | REST, security, Thrift | Andrew Purtell | Andrew Purtell |
| [HBASE-5068](https://issues.apache.org/jira/browse/HBASE-5068) | RC1 can not build its hadoop-0.23 profile |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-4935](https://issues.apache.org/jira/browse/HBASE-4935) | hbase 0.92.0 doesn't work going against 0.20.205.0, its packaged hadoop |  Major | . | stack | stack |
| [HBASE-5063](https://issues.apache.org/jira/browse/HBASE-5063) | RegionServers fail to report to backup HMaster after primary goes down. |  Critical | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5078](https://issues.apache.org/jira/browse/HBASE-5078) | DistributedLogSplitter failing to split file because it has edits for lots of regions |  Critical | . | stack | stack |
| [HBASE-5077](https://issues.apache.org/jira/browse/HBASE-5077) | SplitLogWorker fails to let go of a task, kills the RS |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5060](https://issues.apache.org/jira/browse/HBASE-5060) | HBase client is blocked forever |  Critical | Client | gaojinchao | gaojinchao |
| [HBASE-5100](https://issues.apache.org/jira/browse/HBASE-5100) | Rollback of split could cause closed region to be opened again |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5094](https://issues.apache.org/jira/browse/HBASE-5094) | The META can hold an entry for a region with a different server name from the one actually in the AssignmentManager thus making the region inaccessible. |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4773](https://issues.apache.org/jira/browse/HBASE-4773) | HBaseAdmin may leak ZooKeeper connections |  Critical | Client | gaojinchao | xufeng |
| [HBASE-5099](https://issues.apache.org/jira/browse/HBASE-5099) | ZK event thread waiting for root region assignment may block server shutdown handler for the region sever the root region was on |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-4397](https://issues.apache.org/jira/browse/HBASE-4397) | -ROOT-, .META. tables stay offline for too long in recovery phase after all RSs are shutdown at the same time |  Major | . | Ming Ma | Ming Ma |
| [HBASE-5081](https://issues.apache.org/jira/browse/HBASE-5081) | Distributed log splitting deleteNode races against splitLog retry |  Major | wal | Jimmy Xiang | Prakash Khemani |
| [HBASE-5088](https://issues.apache.org/jira/browse/HBASE-5088) | A concurrency issue on SoftValueSortedMap |  Critical | Client | Jieshan Bean | Lars Hofhansl |
| [HBASE-5041](https://issues.apache.org/jira/browse/HBASE-5041) | Major compaction on non existing table does not throw error |  Major | regionserver, shell | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-5141](https://issues.apache.org/jira/browse/HBASE-5141) | Memory leak in MonitoredRPCHandlerImpl |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4357](https://issues.apache.org/jira/browse/HBASE-4357) | Region stayed in transition - in closing state |  Major | . | Ming Ma | Ming Ma |
| [HBASE-5052](https://issues.apache.org/jira/browse/HBASE-5052) | The path where a dynamically loaded coprocessor jar is copied on the local file system depends on the region name (and implicitly, the start key) |  Major | Coprocessors | Andrei Dragomir | Andrei Dragomir |
| [HBASE-5103](https://issues.apache.org/jira/browse/HBASE-5103) | Fix improper master znode deserialization |  Minor | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5152](https://issues.apache.org/jira/browse/HBASE-5152) | Region is on service before completing initialization when doing rollback of split, it will affect read correctness |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5137](https://issues.apache.org/jira/browse/HBASE-5137) | MasterFileSystem.splitLog() should abort even if waitOnSafeMode() throws IOException |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5163](https://issues.apache.org/jira/browse/HBASE-5163) | TestLogRolling#testLogRollOnDatanodeDeath fails sometimes on Jenkins or hadoop QA ("The directory is already locked.") |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5196](https://issues.apache.org/jira/browse/HBASE-5196) | Failure in region split after PONR could cause region hole |  Major | master, regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-3813](https://issues.apache.org/jira/browse/HBASE-3813) | Change RPC callQueue size from "handlerCount \* MAX\_QUEUE\_SIZE\_PER\_HANDLER;" |  Critical | . | stack | stack |
| [HBASE-4842](https://issues.apache.org/jira/browse/HBASE-4842) | [hbck] Fix intermittent failures on TestHBaseFsck.testHBaseFsck |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4083](https://issues.apache.org/jira/browse/HBASE-4083) | If Enable table is not completed and is partial, then scanning of the table is not working |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4848](https://issues.apache.org/jira/browse/HBASE-4848) | TestScanner failing because hostname can't be null |  Major | . | stack | stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4162](https://issues.apache.org/jira/browse/HBASE-4162) | Fix TestHRegionInfo.testGetSetOfHTD: delete /tmp/hbase-\<username\> if it already exists. |  Minor | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4302](https://issues.apache.org/jira/browse/HBASE-4302) | Only run Snappy compression tests if Snappy is available |  Major | test | Alejandro Abdelnur | Alejandro Abdelnur |
| [HBASE-4492](https://issues.apache.org/jira/browse/HBASE-4492) | TestRollingRestart fails intermittently |  Major | . | Ted Yu | ramkrishna.s.vasudevan |
| [HBASE-4555](https://issues.apache.org/jira/browse/HBASE-4555) | TestShell seems passed, but actually errors seen in test output file |  Major | test | Mingjie Lai | Mingjie Lai |
| [HBASE-4651](https://issues.apache.org/jira/browse/HBASE-4651) | ConcurrentModificationException might be thrown in TestHCM.testConnectionUniqueness |  Minor | . | gaojinchao | gaojinchao |
| [HBASE-4690](https://issues.apache.org/jira/browse/HBASE-4690) | Intermittent TestRegionServerCoprocessorExceptionWithAbort#testExceptionFromCoprocessorDuringPut failure |  Major | . | Ted Yu | Ted Yu |
| [HBASE-4518](https://issues.apache.org/jira/browse/HBASE-4518) | TestServerCustomProtocol is flaky |  Major | Coprocessors, test | Gary Helmling | Gary Helmling |
| [HBASE-4864](https://issues.apache.org/jira/browse/HBASE-4864) | TestMasterObserver#testRegionTransitionOperations occasionally fails |  Minor | test | gaojinchao | gaojinchao |
| [HBASE-4868](https://issues.apache.org/jira/browse/HBASE-4868) | TestOfflineMetaRebuildBase#testMetaRebuild occasionally fails |  Minor | test | gaojinchao | gaojinchao |
| [HBASE-5112](https://issues.apache.org/jira/browse/HBASE-5112) | TestReplication#queueFailover flaky due to potentially uninitialized Scan |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5113](https://issues.apache.org/jira/browse/HBASE-5113) | TestDrainingServer expects round robin region assignment but misses a config parameter |  Major | . | Ted Yu | Ted Yu |
| [HBASE-5382](https://issues.apache.org/jira/browse/HBASE-5382) | Test that we always cache index and bloom blocks |  Major | . | Mikhail Bautin | Mikhail Bautin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2002](https://issues.apache.org/jira/browse/HBASE-2002) | Coprocessors: Client side support |  Major | Coprocessors | Andrew Purtell | Gary Helmling |
| [HBASE-2001](https://issues.apache.org/jira/browse/HBASE-2001) | Coprocessors: Colocate user code with regions |  Major | Coprocessors | Andrew Purtell | Mingjie Lai |
| [HBASE-3348](https://issues.apache.org/jira/browse/HBASE-3348) | Allow Observers to completely override base function |  Major | Coprocessors | Andrew Purtell | Andrew Purtell |
| [HBASE-3260](https://issues.apache.org/jira/browse/HBASE-3260) | Coprocessors: Lifecycle management |  Major | Coprocessors | Andrew Purtell | Gary Helmling |
| [HBASE-3256](https://issues.apache.org/jira/browse/HBASE-3256) | Coprocessors: Coprocessor host and observer for HMaster |  Major | Coprocessors | Andrew Purtell | Gary Helmling |
| [HBASE-3393](https://issues.apache.org/jira/browse/HBASE-3393) | Update Avro gateway to use Avro 1.4.1 and the new server.join() method |  Major | . | Jeff Hammerbacher | Jeff Hammerbacher |
| [HBASE-3257](https://issues.apache.org/jira/browse/HBASE-3257) | Coprocessors: Extend server side integration API to include HLog operations |  Major | Coprocessors | Andrew Purtell | Mingjie Lai |
| [HBASE-3665](https://issues.apache.org/jira/browse/HBASE-3665) | checking the number entries in the unit test case |  Major | regionserver | Liyin Tang |  |
| [HBASE-1512](https://issues.apache.org/jira/browse/HBASE-1512) | Coprocessors: Support aggregate functions |  Major | Coprocessors | stack | Himanshu Vashishtha |
| [HBASE-4152](https://issues.apache.org/jira/browse/HBASE-4152) | Rename o.a.h.h.regionserver.wal.WALObserver to o.a.h.h.regionserver.wal.WALActionsListener |  Major | regionserver | Andrew Purtell | Ted Yu |
| [HBASE-4199](https://issues.apache.org/jira/browse/HBASE-4199) | blockCache summary - backend |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4242](https://issues.apache.org/jira/browse/HBASE-4242) | Add documentation for HBASE-4071 |  Minor | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4278](https://issues.apache.org/jira/browse/HBASE-4278) | Race condition in Slab.java that occurs due to spinlock unlocking early |  Major | . | Li Pi | Li Pi |
| [HBASE-4289](https://issues.apache.org/jira/browse/HBASE-4289) | Move spinlock to SingleSizeCache rather than the slab allocator. |  Trivial | . | Li Pi | Li Pi |
| [HBASE-4307](https://issues.apache.org/jira/browse/HBASE-4307) | race condition in CacheTestUtils |  Major | . | Li Pi | Li Pi |
| [HBASE-4320](https://issues.apache.org/jira/browse/HBASE-4320) | Off Heap Cache never creates Slabs |  Major | . | Li Pi | Li Pi |
| [HBASE-4310](https://issues.apache.org/jira/browse/HBASE-4310) | SlabCache metrics bugfix. |  Minor | . | Li Pi | Li Pi |
| [HBASE-4015](https://issues.apache.org/jira/browse/HBASE-4015) | Refactor the TimeoutMonitor to make it less racy |  Blocker | . | Jean-Daniel Cryans | ramkrishna.s.vasudevan |
| [HBASE-2195](https://issues.apache.org/jira/browse/HBASE-2195) | Support cyclic replication |  Major | Replication | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-4381](https://issues.apache.org/jira/browse/HBASE-4381) | Refactor split decisions into a split policy class |  Major | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-2196](https://issues.apache.org/jira/browse/HBASE-2196) | Support more than one slave cluster |  Major | Replication | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-4517](https://issues.apache.org/jira/browse/HBASE-4517) | Document new replication features in 0.92 |  Minor | documentation | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4482](https://issues.apache.org/jira/browse/HBASE-4482) | Race Condition Concerning Eviction in SlabCache |  Blocker | . | Li Pi | Li Pi |
| [HBASE-4488](https://issues.apache.org/jira/browse/HBASE-4488) | Store could miss rows during flush |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4622](https://issues.apache.org/jira/browse/HBASE-4622) | Remove trivial 0.90 deprecated code from 0.92 and trunk. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4677](https://issues.apache.org/jira/browse/HBASE-4677) | Remove old single bulkLoadHFile method |  Major | regionserver | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4650](https://issues.apache.org/jira/browse/HBASE-4650) | Update LoadIncrementalHFiles to use atomic bulk load RS mechanism |  Major | regionserver | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-3025](https://issues.apache.org/jira/browse/HBASE-3025) | Coprocessor based simple access control |  Critical | Coprocessors | Andrew Purtell |  |
| [HBASE-4623](https://issues.apache.org/jira/browse/HBASE-4623) | Remove @deprecated Scan methods in 0.90 from TRUNK and 0.92 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4838](https://issues.apache.org/jira/browse/HBASE-4838) | Port 2856 (TestAcidGuarantee is failing) to 0.92 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4960](https://issues.apache.org/jira/browse/HBASE-4960) | Document mutual authentication between HBase and Zookeeper using SASL |  Major | documentation, security | Eugene Koontz | Eugene Koontz |
| [HBASE-5143](https://issues.apache.org/jira/browse/HBASE-5143) | Fix config typo in pluggable load balancer factory |  Blocker | master | Harsh J | Harsh J |
| [HBASE-5346](https://issues.apache.org/jira/browse/HBASE-5346) |  Fix testColumnFamilyCompression and test\_TIMERANGE in TestHFileOutputFormat |  Major | mapreduce, test | Gregory Chanan | Gregory Chanan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3559](https://issues.apache.org/jira/browse/HBASE-3559) | Move report of split to master OFF the heartbeat channel |  Major | . | stack | stack |
| [HBASE-3573](https://issues.apache.org/jira/browse/HBASE-3573) | Move shutdown messaging OFF hearbeat; prereq for fix of hbase-1502 |  Major | . | stack | stack |
| [HBASE-3748](https://issues.apache.org/jira/browse/HBASE-3748) | Add rolling of thrift/rest daemons to graceful\_stop.sh script |  Major | . | stack | stack |
| [HBASE-3699](https://issues.apache.org/jira/browse/HBASE-3699) | Make RegionServerServices and MasterServices extend Server |  Critical | . | stack | Erik Onnen |
| [HBASE-3629](https://issues.apache.org/jira/browse/HBASE-3629) | Update our thrift to 0.6 |  Major | . | stack | Moaz Reyad |
| [HBASE-1502](https://issues.apache.org/jira/browse/HBASE-1502) | Remove need for heartbeats in HBase |  Blocker | . | Nitay Joffe | stack |
| [HBASE-3691](https://issues.apache.org/jira/browse/HBASE-3691) | Add compressor support for 'snappy', google's compressor |  Critical | . | stack |  |
| [HBASE-4013](https://issues.apache.org/jira/browse/HBASE-4013) | Make ZooKeeperListener Abstract |  Minor | Zookeeper | Akash Ashok | Akash Ashok |
| [HBASE-4037](https://issues.apache.org/jira/browse/HBASE-4037) | Add timeout annotations to preempt surefire killing all tests |  Major | . | stack | stack |
| [HBASE-4185](https://issues.apache.org/jira/browse/HBASE-4185) | Add doc for new hfilev2 format |  Major | documentation | stack | stack |
| [HBASE-3900](https://issues.apache.org/jira/browse/HBASE-3900) | Expose progress of a major compaction in UI and/or in shell |  Major | . | stack | Brad Anderson |
| [HBASE-4312](https://issues.apache.org/jira/browse/HBASE-4312) | Deploy new hbase logo |  Major | . | stack | stack |
| [HBASE-4419](https://issues.apache.org/jira/browse/HBASE-4419) | Resolve build warning messages |  Trivial | build | Praveen Patibandla |  |
| [HBASE-4430](https://issues.apache.org/jira/browse/HBASE-4430) | Disable TestSlabCache and TestSingleSizedCache temporarily to see if these are cause of build box failure though all tests pass |  Major | test | stack | Li Pi |
| [HBASE-4510](https://issues.apache.org/jira/browse/HBASE-4510) | Check and workaround usage of internal HDFS APIs in HBase |  Major | . | Harsh J | Harsh J |
| [HBASE-4437](https://issues.apache.org/jira/browse/HBASE-4437) | Update hadoop in 0.92 (0.20.205?) |  Major | . | stack | stack |
| [HBASE-4656](https://issues.apache.org/jira/browse/HBASE-4656) | Note how dfs.support.append has to be enabled in 0.20.205.0 clusters |  Major | . | stack | stack |
| [HBASE-4374](https://issues.apache.org/jira/browse/HBASE-4374) | Up default regions size from 256M to 1G |  Blocker | . | stack |  |
| [HBASE-4714](https://issues.apache.org/jira/browse/HBASE-4714) | Don't ship w/ icms enabled by default |  Major | . | stack | stack |
| [HBASE-4715](https://issues.apache.org/jira/browse/HBASE-4715) | Remove stale broke .rb scripts from bin dir |  Major | scripts | stack | stack |
| [HBASE-4708](https://issues.apache.org/jira/browse/HBASE-4708) | Revert safemode related pieces of hbase-4510 |  Critical | . | stack | Harsh J |
| [HBASE-4611](https://issues.apache.org/jira/browse/HBASE-4611) | Add support for Phabricator/Differential as an alternative code review tool |  Major | . | Jonathan Gray | Nicolas Spiegelberg |
| [HBASE-4711](https://issues.apache.org/jira/browse/HBASE-4711) | Remove jsr jar; not needed |  Major | . | stack | stack |
| [HBASE-4553](https://issues.apache.org/jira/browse/HBASE-4553) | The update of .tableinfo is not atomic; we remove then rename |  Critical | . | stack | stack |
| [HBASE-4759](https://issues.apache.org/jira/browse/HBASE-4759) | Migrate from JUnit 4.8.2 to JUnit 4.10 |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4815](https://issues.apache.org/jira/browse/HBASE-4815) | Disable online altering by default, create a config for it |  Blocker | . | Jean-Daniel Cryans | ramkrishna.s.vasudevan |
| [HBASE-4856](https://issues.apache.org/jira/browse/HBASE-4856) | Upgrade zookeeper to 3.4.0 release |  Major | . | Ted Yu | Ted Yu |
| [HBASE-5066](https://issues.apache.org/jira/browse/HBASE-5066) | Upgrade to zk 3.4.1 |  Major | . | stack | Andrew Purtell |
| [HBASE-5111](https://issues.apache.org/jira/browse/HBASE-5111) | Upgrade zookeeper to 3.4.2 release |  Major | . | Ted Yu |  |
| [HBASE-5125](https://issues.apache.org/jira/browse/HBASE-5125) | Upgrade hadoop to 1.0.0 |  Major | . | stack | stack |


