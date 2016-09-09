
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

## Release 0.90.0 - 2011-01-19

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1822](https://issues.apache.org/jira/browse/HBASE-1822) | Remove the deprecated APIs |  Major | . | Jean-Daniel Cryans | Jonathan Gray |
| [HBASE-1996](https://issues.apache.org/jira/browse/HBASE-1996) | Configure scanner buffer in bytes instead of number of rows |  Major | . | Dave Latham | Dave Latham |
| [HBASE-1433](https://issues.apache.org/jira/browse/HBASE-1433) | Update hbase build to match core, use ivy, publish jars to maven repo, etc. |  Major | . | stack |  |
| [HBASE-1728](https://issues.apache.org/jira/browse/HBASE-1728) | Column family scoping and cluster identification |  Major | Coprocessors | Andrew Purtell | Jean-Daniel Cryans |
| [HBASE-2219](https://issues.apache.org/jira/browse/HBASE-2219) | stop using code mapping for method names in the RPC |  Blocker | IPC/RPC | ryan rawson | ryan rawson |
| [HBASE-2255](https://issues.apache.org/jira/browse/HBASE-2255) | take trunk back to hadoop 0.20 |  Major | . | ryan rawson | ryan rawson |
| [HBASE-2378](https://issues.apache.org/jira/browse/HBASE-2378) | Bulk insert with multiple reducers broken due to improper ImmutableBytesWritable comparator |  Critical | mapreduce | Ruslan Salyakhov | Todd Lipcon |
| [HBASE-2446](https://issues.apache.org/jira/browse/HBASE-2446) | Remove 'indexed' contrib |  Major | . | stack | Yoram Kulbak |
| [HBASE-2294](https://issues.apache.org/jira/browse/HBASE-2294) | Enumerate ACID properties of HBase in a well defined spec |  Blocker | documentation | Todd Lipcon | Todd Lipcon |
| [HBASE-2473](https://issues.apache.org/jira/browse/HBASE-2473) | Add to admin create table start and end key params and desired number of regions |  Major | . | stack | Jonathan Gray |
| [HBASE-2392](https://issues.apache.org/jira/browse/HBASE-2392) | upgrade to ZooKeeper 3.3.0 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2542](https://issues.apache.org/jira/browse/HBASE-2542) | Fold Stargate into core |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2579](https://issues.apache.org/jira/browse/HBASE-2579) | Add atomic checkAndDelete support |  Major | regionserver | Michael Dalton |  |
| [HBASE-2397](https://issues.apache.org/jira/browse/HBASE-2397) | Bytes.toStringBinary escapes printable chars |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-997](https://issues.apache.org/jira/browse/HBASE-997) | Count versions with same r/c/ts as one instance with most recent addition the winner |  Major | . | stack | Pranav Khaitan |
| [HBASE-3174](https://issues.apache.org/jira/browse/HBASE-3174) | Add ability for Get operations to enable/disable use of block caching |  Minor | Client, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-2898](https://issues.apache.org/jira/browse/HBASE-2898) | MultiPut makes proper error handling impossible and leads to corrupted data |  Blocker | Client, regionserver | Benoit Sigoure | ryan rawson |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1710](https://issues.apache.org/jira/browse/HBASE-1710) | Add Regular Expression filters back into 0.20, add ability to match on KV |  Major | Filters | Jonathan Gray | Jonathan Gray |
| [HBASE-1823](https://issues.apache.org/jira/browse/HBASE-1823) | Ability for Scanners to bypass the block cache |  Major | Client, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-1684](https://issues.apache.org/jira/browse/HBASE-1684) | Backup (Export/Import) contrib tool for 0.20 |  Major | . | Jonathan Gray | stack |
| [HBASE-48](https://issues.apache.org/jira/browse/HBASE-48) | [hbase] Bulk load tools |  Minor | . | stack |  |
| [HBASE-1875](https://issues.apache.org/jira/browse/HBASE-1875) | Compression test utility |  Trivial | util | elsif |  |
| [HBASE-1537](https://issues.apache.org/jira/browse/HBASE-1537) | Intra-row scanning |  Major | . | Jonathan Gray | Andrew Purtell |
| [HBASE-1939](https://issues.apache.org/jira/browse/HBASE-1939) | HLog group commit |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1867](https://issues.apache.org/jira/browse/HBASE-1867) | Tool to regenerate an hbase table from the data files |  Minor | util | elsif | stack |
| [HBASE-1963](https://issues.apache.org/jira/browse/HBASE-1963) | Output to multiple tables from Hadoop MR without use of HTable |  Minor | mapreduce | Kevin Peterson | Kevin Peterson |
| [HBASE-1987](https://issues.apache.org/jira/browse/HBASE-1987) | The Put object has no simple read methods for checking what has already been added. |  Minor | Client | Ryan Smith | Ryan Smith |
| [HBASE-2028](https://issues.apache.org/jira/browse/HBASE-2028) | Add HTable.incrementColumnValue() to shell |  Trivial | scripts | Lars George | Lars George |
| [HBASE-2220](https://issues.apache.org/jira/browse/HBASE-2220) | Add a binary comparator that only compares up to the length of the supplied byte array |  Minor | Filters | Bruno Dumon |  |
| [HBASE-2211](https://issues.apache.org/jira/browse/HBASE-2211) | Add a new Filter that checks a single column value but does not emit it. |  Major | . | Ferdy Galema |  |
| [HBASE-2221](https://issues.apache.org/jira/browse/HBASE-2221) | MR to copy a table |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2438](https://issues.apache.org/jira/browse/HBASE-2438) | Addition of a Column Pagination Filter |  Major | Filters | Paul Kist | Paul Kist |
| [HBASE-2529](https://issues.apache.org/jira/browse/HBASE-2529) | Make OldLogsCleaner easier to extend |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2527](https://issues.apache.org/jira/browse/HBASE-2527) | Add the ability to easily extend some HLog actions |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2588](https://issues.apache.org/jira/browse/HBASE-2588) | Add easier way to ship hbase dependencies to MR cluster with job |  Major | Client, mapreduce | Todd Lipcon | Todd Lipcon |
| [HBASE-1923](https://issues.apache.org/jira/browse/HBASE-1923) | Bulk incremental load into an existing table |  Major | Client, regionserver, scripts | anty.rao | Todd Lipcon |
| [HBASE-7](https://issues.apache.org/jira/browse/HBASE-7) | [hbase] Provide a HBase checker and repair tool similar to fsck |  Major | util | Jim Kellerman | dhruba borthakur |
| [HBASE-2793](https://issues.apache.org/jira/browse/HBASE-2793) | Add ability to extract a specified list of versions of a column in a single roundtrip |  Major | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-1660](https://issues.apache.org/jira/browse/HBASE-1660) | need a rolling restart script |  Minor | . | ryan rawson | Nicolas Spiegelberg |
| [HBASE-2870](https://issues.apache.org/jira/browse/HBASE-2870) | Add Backup CLI Option to HMaster |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-1845](https://issues.apache.org/jira/browse/HBASE-1845) | MultiGet, MultiDelete, and MultiPut - batched to the appropriate region servers |  Major | . | Erik Holstad | Marc Limotte |
| [HBASE-2946](https://issues.apache.org/jira/browse/HBASE-2946) | Increment multiple columns in a row at once |  Major | Client, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3013](https://issues.apache.org/jira/browse/HBASE-3013) | Tool to verify data in two clusters |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2819](https://issues.apache.org/jira/browse/HBASE-2819) | hbck should have the ability to repair basic problems |  Critical | scripts | Todd Lipcon | stack |
| [HBASE-2896](https://issues.apache.org/jira/browse/HBASE-2896) | Retain assignment information between cluster shutdown/startup |  Major | master, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3338](https://issues.apache.org/jira/browse/HBASE-3338) | "create" command: fix support for bloomfitler options |  Minor | . | Charles Thayer |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1760](https://issues.apache.org/jira/browse/HBASE-1760) | Cleanup TODOs in HTable |  Trivial | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1759](https://issues.apache.org/jira/browse/HBASE-1759) | Ability to specify scanner caching on a per-scan basis |  Major | Client | Ken Weiner | Ken Weiner |
| [HBASE-1763](https://issues.apache.org/jira/browse/HBASE-1763) | Put writeToWAL methods do not have proper getter/setter names |  Major | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1770](https://issues.apache.org/jira/browse/HBASE-1770) | HTable.setWriteBufferSize does not flush the writeBuffer when its size is set to a value lower than its current size. |  Trivial | Client | Mathias Herberts | Mathias Herberts |
| [HBASE-1776](https://issues.apache.org/jira/browse/HBASE-1776) | Make rowcounter enum public |  Major | . | stack | stack |
| [HBASE-1800](https://issues.apache.org/jira/browse/HBASE-1800) | Too many ZK connections |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1643](https://issues.apache.org/jira/browse/HBASE-1643) | ScanDeleteTracker takes comparator but it unused |  Minor | . | stack |  |
| [HBASE-1778](https://issues.apache.org/jira/browse/HBASE-1778) | Improve PerformanceEvaluation |  Minor | test | Schubert Zhang | Schubert Zhang |
| [HBASE-1820](https://issues.apache.org/jira/browse/HBASE-1820) | Update jruby from 1.2 to 1.3.1 |  Major | . | stack | stack |
| [HBASE-1765](https://issues.apache.org/jira/browse/HBASE-1765) | Delay Result deserialization until asked for and permit access to the raw binary to prevent forced deserialization |  Major | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1808](https://issues.apache.org/jira/browse/HBASE-1808) | [stargate] fix how columns are specified for scanners |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1827](https://issues.apache.org/jira/browse/HBASE-1827) | Add disabling block cache scanner flag to the shell, option for scan and count |  Major | scripts | Jonathan Gray | Andrew Purtell |
| [HBASE-1835](https://issues.apache.org/jira/browse/HBASE-1835) | Add more delete tests |  Minor | . | stack | stack |
| [HBASE-1818](https://issues.apache.org/jira/browse/HBASE-1818) | HFile code review and refinement |  Minor | io | Schubert Zhang | Schubert Zhang |
| [HBASE-1830](https://issues.apache.org/jira/browse/HBASE-1830) | HbaseObjectWritable methods should allow null HBaseConfigurations for when Writable is not Configurable |  Major | io | Jonathan Gray | stack |
| [HBASE-1854](https://issues.apache.org/jira/browse/HBASE-1854) | Remove the Region Historian |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1874](https://issues.apache.org/jira/browse/HBASE-1874) | Client Scanner mechanism that is used for HbaseAdmin methods (listTables, tableExists), is very slow if the client is far away from the HBase cluster |  Minor | . | Andrei Dragomir |  |
| [HBASE-1832](https://issues.apache.org/jira/browse/HBASE-1832) | Faster enable/disable/delete |  Major | . | stack | stack |
| [HBASE-1481](https://issues.apache.org/jira/browse/HBASE-1481) | Add fast row key only scanning |  Minor | . | Lars George | Jonathan Gray |
| [HBASE-1506](https://issues.apache.org/jira/browse/HBASE-1506) | [performance] Make splits faster |  Critical | . | stack | stack |
| [HBASE-1899](https://issues.apache.org/jira/browse/HBASE-1899) | Use scanner caching in shell count |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1642](https://issues.apache.org/jira/browse/HBASE-1642) | Add main to HRegion that can read a passed .META. |  Major | . | stack | stack |
| [HBASE-1902](https://issues.apache.org/jira/browse/HBASE-1902) | Let PerformanceEvaluation support setting tableName and compress algorithm |  Minor | test | Schubert Zhang | Schubert Zhang |
| [HBASE-1885](https://issues.apache.org/jira/browse/HBASE-1885) | Simplify use of IndexedTable outside Java API |  Minor | . | Kevin Peterson |  |
| [HBASE-1903](https://issues.apache.org/jira/browse/HBASE-1903) | Enable DEBUG by default |  Major | . | stack |  |
| [HBASE-1907](https://issues.apache.org/jira/browse/HBASE-1907) | Version all client writables |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1918](https://issues.apache.org/jira/browse/HBASE-1918) | Don't do DNS resolving in .META. scanner for each row |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1945](https://issues.apache.org/jira/browse/HBASE-1945) | Remove META and ROOT memcache size bandaid |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1947](https://issues.apache.org/jira/browse/HBASE-1947) | If HBase starts/stops often in less than 24 hours, you end up with lots of store files |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1944](https://issues.apache.org/jira/browse/HBASE-1944) | Add a "deferred log flush" attribute to HTD |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1953](https://issues.apache.org/jira/browse/HBASE-1953) | Overhaul of overview.html (html fixes, typos, consistency) - no content changes |  Minor | documentation | Lars Francke |  |
| [HBASE-1829](https://issues.apache.org/jira/browse/HBASE-1829) | Make use of start/stop row in TableInputFormat |  Major | . | Lars George | Lars George |
| [HBASE-1904](https://issues.apache.org/jira/browse/HBASE-1904) | Add tutorilal for installing HBase on Windows using Cygwin as a test and development environment |  Minor | documentation | Wim Van Leuven |  |
| [HBASE-1971](https://issues.apache.org/jira/browse/HBASE-1971) | Unit test the full WAL replay cycle |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2011](https://issues.apache.org/jira/browse/HBASE-2011) | Add zktop like output to HBase's master UI (zk.jsp) |  Minor | . | Lars George | Lars George |
| [HBASE-1995](https://issues.apache.org/jira/browse/HBASE-1995) | Add configurable max value size check |  Minor | Client | Lars George | Lars George |
| [HBASE-2017](https://issues.apache.org/jira/browse/HBASE-2017) | Set configurable max value size check to 10MB |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2029](https://issues.apache.org/jira/browse/HBASE-2029) | Reduce shell exception dump on console |  Minor | scripts | Lars George | Jean-Daniel Cryans |
| [HBASE-2031](https://issues.apache.org/jira/browse/HBASE-2031) | When starting HQuorumPeer, try to match on more than 1 address |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2059](https://issues.apache.org/jira/browse/HBASE-2059) | Break out WAL reader and writer impl from HLog |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2045](https://issues.apache.org/jira/browse/HBASE-2045) | Update trunk and branch zk to just-release 3.2.2. |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2076](https://issues.apache.org/jira/browse/HBASE-2076) | Many javadoc warnings |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2078](https://issues.apache.org/jira/browse/HBASE-2078) | Add JMX settings as commented out lines to hbase-env.sh |  Trivial | . | Lars George | Lars George |
| [HBASE-2081](https://issues.apache.org/jira/browse/HBASE-2081) | Set the retries higher in shell since client pause is lower |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2036](https://issues.apache.org/jira/browse/HBASE-2036) | Use Configuration instead of HBaseConfiguration |  Major | . | Enis Soztutar |  |
| [HBASE-2085](https://issues.apache.org/jira/browse/HBASE-2085) | StringBuffer -\> StringBuilder - conversion of references as necessary |  Major | . | Karthik K | Karthik K |
| [HBASE-2053](https://issues.apache.org/jira/browse/HBASE-2053) | Upper bound of outstanding WALs can be overrun |  Major | . | stack |  |
| [HBASE-2086](https://issues.apache.org/jira/browse/HBASE-2086) | Job(configuration,String) deprecated |  Major | . | Karthik K | Karthik K |
| [HBASE-2021](https://issues.apache.org/jira/browse/HBASE-2021) | Add compaction details to master UI |  Minor | . | Lars George | Lars George |
| [HBASE-2089](https://issues.apache.org/jira/browse/HBASE-2089) | HBaseConfiguration() ctor. deprecated |  Major | test | Karthik K | Karthik K |
| [HBASE-2095](https://issues.apache.org/jira/browse/HBASE-2095) | TableInputFormat should support more confs for the scanner |  Major | mapreduce | Bassam Tabbara | Bassam Tabbara |
| [HBASE-2107](https://issues.apache.org/jira/browse/HBASE-2107) | Upgrading Lucene 2.2 to Lucene 3.0.0 |  Major | . | Karthik K | Karthik K |
| [HBASE-2124](https://issues.apache.org/jira/browse/HBASE-2124) | Useless exception in HMaster on startup |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2136](https://issues.apache.org/jira/browse/HBASE-2136) | Forward-port the old mapred package |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2133](https://issues.apache.org/jira/browse/HBASE-2133) | Increase default number of client handlers |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2130](https://issues.apache.org/jira/browse/HBASE-2130) | bin/\* scripts - not to include lib/test/\*\*/\*.jar |  Major | . | Karthik K | Karthik K |
| [HBASE-2139](https://issues.apache.org/jira/browse/HBASE-2139) | findbugs task in build.xml |  Major | . | Karthik K | Karthik K |
| [HBASE-1360](https://issues.apache.org/jira/browse/HBASE-1360) | move up to Thrift 0.2.0 |  Major | Thrift | Andrew Purtell | Karthik K |
| [HBASE-2153](https://issues.apache.org/jira/browse/HBASE-2153) | Publish generated HTML documentation for Thrift on the website |  Minor | Thrift | Lars Francke | Lars Francke |
| [HBASE-1373](https://issues.apache.org/jira/browse/HBASE-1373) | Update Thrift to use compact/framed protocol |  Minor | Thrift | Andrew Purtell | Lars Francke |
| [HBASE-2164](https://issues.apache.org/jira/browse/HBASE-2164) | Ivy nit - clean up configs |  Minor | . | Karthik K |  |
| [HBASE-2172](https://issues.apache.org/jira/browse/HBASE-2172) | Add constructor to Put for row key and timestamp |  Minor | Client | Lars Francke | Lars Francke |
| [HBASE-2178](https://issues.apache.org/jira/browse/HBASE-2178) | Hooks for replication |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2194](https://issues.apache.org/jira/browse/HBASE-2194) | HTable - put(Put) , put(List\<Put) code duplication |  Major | . | Karthik K | Karthik K |
| [HBASE-2185](https://issues.apache.org/jira/browse/HBASE-2185) | Add html version of default hbase-site.xml |  Major | documentation | Karthik K |  |
| [HBASE-2198](https://issues.apache.org/jira/browse/HBASE-2198) | SingleColumnValueFilter should be able to find the column value even when it's not specifically added as input on the scan. |  Major | Filters | Ferdy Galema |  |
| [HBASE-2189](https://issues.apache.org/jira/browse/HBASE-2189) | HCM trashes meta cache even when not needed |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2190](https://issues.apache.org/jira/browse/HBASE-2190) | HRS should report to master when HMsg are available |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-2209](https://issues.apache.org/jira/browse/HBASE-2209) | Support of List [ ] in HBaseOutputWritable for serialization |  Major | . | Karthik K | Karthik K |
| [HBASE-2222](https://issues.apache.org/jira/browse/HBASE-2222) | Improve log "Trying to contact region server Some server for region , row 'ip\_info\_100,,1263329969690', but failed after 11 attempts." |  Major | . | stack | stack |
| [HBASE-2212](https://issues.apache.org/jira/browse/HBASE-2212) | Refactor out lucene dependencies from HBase |  Major | . | Karthik K |  |
| [HBASE-2230](https://issues.apache.org/jira/browse/HBASE-2230) | SingleColumnValueFilter has an ungaurded debug log message. |  Minor | Filters | Dan Washusen |  |
| [HBASE-2260](https://issues.apache.org/jira/browse/HBASE-2260) | Remove all traces of Ant and Ivy |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-2262](https://issues.apache.org/jira/browse/HBASE-2262) | ZKW.ensureExists should check for existence |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2254](https://issues.apache.org/jira/browse/HBASE-2254) | Improvements to the Maven POMs |  Minor | build | Lars Francke | Lars Francke |
| [HBASE-2264](https://issues.apache.org/jira/browse/HBASE-2264) | Adjust the contrib apps to the Maven project layout |  Minor | build | Lars Francke | Lars Francke |
| [HBASE-2273](https://issues.apache.org/jira/browse/HBASE-2273) | [stargate] export metrics via Hadoop metrics, JMX, and ZooKeeper |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2246](https://issues.apache.org/jira/browse/HBASE-2246) | Add a getConfiguration method to HTableInterface |  Minor | Client | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2245](https://issues.apache.org/jira/browse/HBASE-2245) | Unnecessary call to syncWal(region); in HRegionServer |  Minor | regionserver | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2281](https://issues.apache.org/jira/browse/HBASE-2281) | Hbase shell does not work when started from the build dir |  Trivial | scripts | Alexey Kovyrin | Alexey Kovyrin |
| [HBASE-2282](https://issues.apache.org/jira/browse/HBASE-2282) | More directories should be ignored when using git for development |  Trivial | . | Alexey Kovyrin | Alexey Kovyrin |
| [HBASE-2267](https://issues.apache.org/jira/browse/HBASE-2267) | More improvements to the Maven build |  Minor | build | Lars Francke | Lars Francke |
| [HBASE-2298](https://issues.apache.org/jira/browse/HBASE-2298) | Backport of "HLog Group Commit" to 0.20 branch. |  Major | . | stack | Nicolas Spiegelberg |
| [HBASE-2234](https://issues.apache.org/jira/browse/HBASE-2234) | Roll Hlog if any datanode in the write pipeline dies |  Blocker | regionserver | dhruba borthakur | Nicolas Spiegelberg |
| [HBASE-2174](https://issues.apache.org/jira/browse/HBASE-2174) | Stop from resolving HRegionServer addresses to names using DNS on every heartbeat |  Major | . | Jean-Daniel Cryans | Karthik Ranganathan |
| [HBASE-2302](https://issues.apache.org/jira/browse/HBASE-2302) | Optimize M-R by bulk excluding regions - less InputSplit-s  to avoid traffic on region servers when performing M-R on a subset of the table |  Minor | . | Karthik K |  |
| [HBASE-2309](https://issues.apache.org/jira/browse/HBASE-2309) | Add apache releases to pom (list of ) repositories |  Major | . | Karthik K | Karthik K |
| [HBASE-2314](https://issues.apache.org/jira/browse/HBASE-2314) | [shell] Support for getting counters |  Major | . | stack | Alexey Kovyrin |
| [HBASE-2324](https://issues.apache.org/jira/browse/HBASE-2324) | Refactoring of TableRecordReader (mapred / mapreduce) for reuse outside the scope of InputSplit / RecordReader |  Major | . | Karthik K |  |
| [HBASE-1696](https://issues.apache.org/jira/browse/HBASE-1696) | [stargate] support specification of filters for scanners |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2331](https://issues.apache.org/jira/browse/HBASE-2331) | [shell] count command needs a way to specify scan caching |  Minor | scripts | Alexey Kovyrin | Alexey Kovyrin |
| [HBASE-2334](https://issues.apache.org/jira/browse/HBASE-2334) | Slimming of Maven dependency tree - improves assembly build speed, |  Major | build | Paul Smith | Paul Smith |
| [HBASE-1756](https://issues.apache.org/jira/browse/HBASE-1756) | Refactor HLog |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2364](https://issues.apache.org/jira/browse/HBASE-2364) | Ignore Deprecations during build |  Trivial | . | Paul Smith | Paul Smith |
| [HBASE-2348](https://issues.apache.org/jira/browse/HBASE-2348) | Stargate needs both JAR and WAR artifacts |  Major | . | Paul Smith | Andrew Purtell |
| [HBASE-2385](https://issues.apache.org/jira/browse/HBASE-2385) | Debug Message "Received report from unknown server" should be INFO or WARN |  Minor | master | Al Lias |  |
| [HBASE-2374](https://issues.apache.org/jira/browse/HBASE-2374) | TableInputFormat - Configurable parameter to add column families |  Minor | Client | Karthik K |  |
| [HBASE-2388](https://issues.apache.org/jira/browse/HBASE-2388) | Give a very explicit message when we figure a big GC pause |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2270](https://issues.apache.org/jira/browse/HBASE-2270) | Improve how we handle recursive calls in ExplicitColumnTracker and WildcardColumnTracker |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2403](https://issues.apache.org/jira/browse/HBASE-2403) | [stargate] client HTable interface to REST connector |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2411](https://issues.apache.org/jira/browse/HBASE-2411) | findbugs target |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2412](https://issues.apache.org/jira/browse/HBASE-2412) | [stargate] PerformanceEvaluation |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2419](https://issues.apache.org/jira/browse/HBASE-2419) | Remove from RS logs the fat NotServingRegionException stack |  Major | . | stack | stack |
| [HBASE-2286](https://issues.apache.org/jira/browse/HBASE-2286) | [Transactional Contrib] Correctly handle or avoid cases where writes occur in same millisecond |  Major | . | Clint Morgan | Clint Morgan |
| [HBASE-2435](https://issues.apache.org/jira/browse/HBASE-2435) | HTablePool - method to release resources after use |  Major | Client | Karthik K |  |
| [HBASE-2436](https://issues.apache.org/jira/browse/HBASE-2436) | [stargate] review Jersey and JSON dependencies |  Blocker | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1758](https://issues.apache.org/jira/browse/HBASE-1758) | Extract interface out of HTable |  Major | Client | Vaibhav Puranik |  |
| [HBASE-2440](https://issues.apache.org/jira/browse/HBASE-2440) | Master UI should check against known bad JDK versions and warn the user |  Minor | scripts | Todd Lipcon | Todd Lipcon |
| [HBASE-1892](https://issues.apache.org/jira/browse/HBASE-1892) | [performance] make hbase splits run faster |  Major | . | stack | stack |
| [HBASE-2453](https://issues.apache.org/jira/browse/HBASE-2453) | Revisit compaction policies after HBASE-2248 commit |  Critical | . | Jonathan Gray | Jonathan Gray |
| [HBASE-2452](https://issues.apache.org/jira/browse/HBASE-2452) | Fix our Maven dependencies |  Major | build | Lars Francke | Lars Francke |
| [HBASE-2490](https://issues.apache.org/jira/browse/HBASE-2490) | Improve the javadoc of the client API for HTable. |  Minor | Client | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2488](https://issues.apache.org/jira/browse/HBASE-2488) | Master should warn more loudly about unexpected events |  Trivial | master | Todd Lipcon | Todd Lipcon |
| [HBASE-2393](https://issues.apache.org/jira/browse/HBASE-2393) | ThriftServer instantiates a new HTable per request |  Major | Thrift | Jean-Daniel Cryans | Bogdan DRAGU |
| [HBASE-2496](https://issues.apache.org/jira/browse/HBASE-2496) | Less ArrayList churn on the scan path |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2489](https://issues.apache.org/jira/browse/HBASE-2489) | Make the "Filesystem needs to be upgraded" error message more useful. |  Trivial | util | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2518](https://issues.apache.org/jira/browse/HBASE-2518) | Kill all the trailing whitespaces in the code base. |  Trivial | . | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2528](https://issues.apache.org/jira/browse/HBASE-2528) | ServerManager.ServerMonitor isn't daemonized |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2537](https://issues.apache.org/jira/browse/HBASE-2537) | Change ordering of maven repos listed in pom.xml to have ibiblio first |  Major | build | Jonathan Gray | Jonathan Gray |
| [HBASE-2540](https://issues.apache.org/jira/browse/HBASE-2540) | Make QueryMatcher.MatchCode public |  Trivial | . | Clint Morgan |  |
| [HBASE-2555](https://issues.apache.org/jira/browse/HBASE-2555) | Get rid of HColumnDescriptor.MAPFILE\_INDEX\_INTERVAL? |  Major | . | Jeff Hammerbacher | Jonathan Gray |
| [HBASE-2382](https://issues.apache.org/jira/browse/HBASE-2382) | Don't rely on fs.getDefaultReplication() to roll HLogs |  Major | . | Jean-Daniel Cryans | Nicolas Spiegelberg |
| [HBASE-2520](https://issues.apache.org/jira/browse/HBASE-2520) | Cleanup arrays vs Lists of scanners |  Trivial | regionserver | Todd Lipcon | ryan rawson |
| [HBASE-2466](https://issues.apache.org/jira/browse/HBASE-2466) | Improving filter API to allow for modification of keyvalue list by filter |  Minor | Filters, regionserver | Juhani Connolly |  |
| [HBASE-2566](https://issues.apache.org/jira/browse/HBASE-2566) | Remove 'lib' dir; it only has libthrift and that is being pulled from http://people.apache.org/~rawson/repo/org/apache/thrift/thrift/ |  Major | . | stack | stack |
| [HBASE-2534](https://issues.apache.org/jira/browse/HBASE-2534) | Recursive deletes and misc improvements to ZKW |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2559](https://issues.apache.org/jira/browse/HBASE-2559) | Set hbase.hregion.majorcompaction to 0 to disable |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-2580](https://issues.apache.org/jira/browse/HBASE-2580) | Make the hlog file names unique |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2594](https://issues.apache.org/jira/browse/HBASE-2594) | Narrow pattern used finding unit tests to run -- make it same was we had in 0.20 |  Major | . | stack | stack |
| [HBASE-2613](https://issues.apache.org/jira/browse/HBASE-2613) | Remove the code around MSG\_CALL\_SERVER\_STARTUP |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1940](https://issues.apache.org/jira/browse/HBASE-1940) | Make rowcounter MR job do the key-only fast scanning of HBASE-1481 |  Major | . | stack | Daniel Ploeg |
| [HBASE-2630](https://issues.apache.org/jira/browse/HBASE-2630) | HFile should use toStringBinary in various places |  Trivial | io | Todd Lipcon | Todd Lipcon |
| [HBASE-2632](https://issues.apache.org/jira/browse/HBASE-2632) | Shell should autodetect terminal width |  Minor | shell | Todd Lipcon | Todd Lipcon |
| [HBASE-2636](https://issues.apache.org/jira/browse/HBASE-2636) | Upgrade Jetty to 6.1.24 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2638](https://issues.apache.org/jira/browse/HBASE-2638) | speed up REST tests |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1498](https://issues.apache.org/jira/browse/HBASE-1498) | Remove old API references from hbase shell, to make it match the new one. |  Major | scripts | Erik Holstad | Erik Holstad |
| [HBASE-2651](https://issues.apache.org/jira/browse/HBASE-2651) | Allow alternate column separators to be specified for ImportTsv job |  Minor | mapreduce | Todd Lipcon | Todd Lipcon |
| [HBASE-2578](https://issues.apache.org/jira/browse/HBASE-2578) | Add ability for tests to override server-side timestamp setting (currentTimeMillis) |  Major | . | Jonathan Gray | Daniel Ploeg |
| [HBASE-2208](https://issues.apache.org/jira/browse/HBASE-2208) | TableServers #  processBatchOfRows   -  converts from List to [ ]  - Expensive copy |  Major | . | Karthik K | stack |
| [HBASE-2716](https://issues.apache.org/jira/browse/HBASE-2716) | Make HBase's maven artifacts configurable with -D |  Minor | . | Alex Newman | Alex Newman |
| [HBASE-2718](https://issues.apache.org/jira/browse/HBASE-2718) | Update .gitignore for trunk after removal of contribs |  Trivial | . | Lars Francke |  |
| [HBASE-2468](https://issues.apache.org/jira/browse/HBASE-2468) | Improvements to prewarm META cache on clients |  Major | Client | Todd Lipcon | Mingjie Lai |
| [HBASE-2726](https://issues.apache.org/jira/browse/HBASE-2726) | RS should never abort without an informative log message |  Major | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-2724](https://issues.apache.org/jira/browse/HBASE-2724) | Upgrade guava dependency to r05 |  Major | build | Todd Lipcon | Todd Lipcon |
| [HBASE-2735](https://issues.apache.org/jira/browse/HBASE-2735) | Make HBASE-2694 replication-friendly |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2752](https://issues.apache.org/jira/browse/HBASE-2752) | Don't retry forever when waiting on too many store files |  Critical | . | Jean-Daniel Cryans | stack |
| [HBASE-2764](https://issues.apache.org/jira/browse/HBASE-2764) | Force all Chore threads to have a name |  Minor | util | Todd Lipcon | Todd Lipcon |
| [HBASE-2762](https://issues.apache.org/jira/browse/HBASE-2762) | Add warning to master if running without append enabled |  Major | master | Todd Lipcon | Todd Lipcon |
| [HBASE-2783](https://issues.apache.org/jira/browse/HBASE-2783) | Quick edit of 'Getting Started' for development release 0.89.x |  Major | . | stack | stack |
| [HBASE-2501](https://issues.apache.org/jira/browse/HBASE-2501) | Refactor StoreFile Code |  Minor | regionserver | Nicolas Spiegelberg | ryan rawson |
| [HBASE-2265](https://issues.apache.org/jira/browse/HBASE-2265) | HFile and Memstore should maintain minimum and maximum timestamps |  Major | regionserver | Todd Lipcon | Pranav Khaitan |
| [HBASE-2836](https://issues.apache.org/jira/browse/HBASE-2836) | Speed mvn site building by removing generation of useless reports |  Major | . | stack | stack |
| [HBASE-2517](https://issues.apache.org/jira/browse/HBASE-2517) | During reads when passed the specified time range, seek to next column |  Major | regionserver | Jonathan Gray | Pranav Khaitan |
| [HBASE-2845](https://issues.apache.org/jira/browse/HBASE-2845) | Small edit of shell main help page cutting down some on white space and text |  Major | . | stack | stack |
| [HBASE-1511](https://issues.apache.org/jira/browse/HBASE-1511) | Pseudo distributed mode in LocalHBaseCluster |  Minor | . | Evgeny Ryabitskiy | Nicolas Spiegelberg |
| [HBASE-2859](https://issues.apache.org/jira/browse/HBASE-2859) | Cleanup deprecated stuff in TestHLog |  Minor | . | Alex Newman | Alex Newman |
| [HBASE-2865](https://issues.apache.org/jira/browse/HBASE-2865) | Cleanup of LRU logging; its hard to read, uses custom MB'maker, repeats info, too many numbers after the point, etc. |  Major | . | stack |  |
| [HBASE-2862](https://issues.apache.org/jira/browse/HBASE-2862) | Name DFSClient for Improved Debugging |  Trivial | master, regionserver | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2873](https://issues.apache.org/jira/browse/HBASE-2873) | Minor clean up in basescanner; fix a log and make deletes of region processing run in order |  Major | . | stack | stack |
| [HBASE-2830](https://issues.apache.org/jira/browse/HBASE-2830) | NotServingRegionException shouldn't log a stack trace |  Major | regionserver | Patrick Angeles | stack |
| [HBASE-2879](https://issues.apache.org/jira/browse/HBASE-2879) | Offer ZK CLI outside of HBase Shell |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2886](https://issues.apache.org/jira/browse/HBASE-2886) | Add search box to site |  Minor | documentation | Alex Baranau |  |
| [HBASE-2792](https://issues.apache.org/jira/browse/HBASE-2792) | Create a better way to chain log cleaners |  Major | . | Jean-Daniel Cryans | Li Chongxin |
| [HBASE-2871](https://issues.apache.org/jira/browse/HBASE-2871) | Make "start\|stop" commands symmetric for Master & Cluster |  Trivial | scripts | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2868](https://issues.apache.org/jira/browse/HBASE-2868) | Do some small cleanups in org.apache.hadoop.hbase.regionserver.wal |  Major | . | Alex Newman | Alex Newman |
| [HBASE-1517](https://issues.apache.org/jira/browse/HBASE-1517) | Implement inexpensive seek operations in HFile |  Major | . | Jonathan Gray | Pranav Khaitan |
| [HBASE-2922](https://issues.apache.org/jira/browse/HBASE-2922) | HLog preparation and cleanup are done under the updateLock, major slowdown |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2692](https://issues.apache.org/jira/browse/HBASE-2692) | Master rewrite and cleanup for 0.90 |  Blocker | . | Jonathan Gray | Jonathan Gray |
| [HBASE-2867](https://issues.apache.org/jira/browse/HBASE-2867) | Have master show its address using hostname rather than IP |  Trivial | . | stack | stack |
| [HBASE-2510](https://issues.apache.org/jira/browse/HBASE-2510) | [performance] make hbase splits run even faster still |  Major | . | stack |  |
| [HBASE-2857](https://issues.apache.org/jira/browse/HBASE-2857) | HBaseAdmin.tableExists() should not require a full meta scan |  Major | . | Jonathan Gray | stack |
| [HBASE-2844](https://issues.apache.org/jira/browse/HBASE-2844) | Capping the number of regions |  Minor | regionserver | Pranav Khaitan | Pranav Khaitan |
| [HBASE-2649](https://issues.apache.org/jira/browse/HBASE-2649) | Make use of storefile 'order' making certain decisions during merge sort |  Major | . | stack | Pranav Khaitan |
| [HBASE-2988](https://issues.apache.org/jira/browse/HBASE-2988) | Support alternate compression for major compactions |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3016](https://issues.apache.org/jira/browse/HBASE-3016) | Refactor zk logging in trunk; do less and and identifier to log messages to help debugging |  Major | Zookeeper | stack | stack |
| [HBASE-3018](https://issues.apache.org/jira/browse/HBASE-3018) | Bulk assignment on startup runs serially through the cluster servers assigning in bulk to one at a time |  Major | master | stack | stack |
| [HBASE-3022](https://issues.apache.org/jira/browse/HBASE-3022) | Change format of enum messages in o.a.h.h.executor package |  Major | . | stack | stack |
| [HBASE-2450](https://issues.apache.org/jira/browse/HBASE-2450) | For single row reads of specific columns, seek to the first column in HFiles rather than start of row |  Major | io, regionserver | Jonathan Gray | Pranav Khaitan |
| [HBASE-3002](https://issues.apache.org/jira/browse/HBASE-3002) | Fix zookeepers.sh to work properly when running strange JVM options |  Minor | scripts | Todd Lipcon | Todd Lipcon |
| [HBASE-3033](https://issues.apache.org/jira/browse/HBASE-3033) | [replication] ReplicationSink.replicateEntries improvements |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2641](https://issues.apache.org/jira/browse/HBASE-2641) | Refactor HLog splitLog, hbase-2437 continued; break out split code as new classes |  Major | regionserver | stack |  |
| [HBASE-2722](https://issues.apache.org/jira/browse/HBASE-2722) | Replace IP with hostname in ZK for servers |  Major | . | Lars George |  |
| [HBASE-3040](https://issues.apache.org/jira/browse/HBASE-3040) | BlockIndex readIndex too slowly in heavy write scenario |  Major | regionserver | andychen |  |
| [HBASE-3019](https://issues.apache.org/jira/browse/HBASE-3019) | Make bulk assignment on cluster startup run faster |  Major | . | stack | stack |
| [HBASE-2782](https://issues.apache.org/jira/browse/HBASE-2782) | QOS for META table access |  Major | regionserver | Todd Lipcon | ryan rawson |
| [HBASE-3070](https://issues.apache.org/jira/browse/HBASE-3070) | Add to hbaseadmin means of shutting down a regionserver |  Major | . | stack | stack |
| [HBASE-2917](https://issues.apache.org/jira/browse/HBASE-2917) | Reseek directly to next row |  Major | . | Pranav Khaitan | Pranav Khaitan |
| [HBASE-2394](https://issues.apache.org/jira/browse/HBASE-2394) | Use top-level Apache pom for shared configuration |  Minor | build | Paul Smith | Lars Francke |
| [HBASE-2538](https://issues.apache.org/jira/browse/HBASE-2538) | Work on repository order in hbase pom |  Major | build | stack | Lars Francke |
| [HBASE-3043](https://issues.apache.org/jira/browse/HBASE-3043) | 'hbase-daemon.sh stop regionserver' should kill compactions that are in progress |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2916](https://issues.apache.org/jira/browse/HBASE-2916) | Reseek directly to next column |  Major | regionserver | Pranav Khaitan | Pranav Khaitan |
| [HBASE-1937](https://issues.apache.org/jira/browse/HBASE-1937) | Add convenience method to Result for obtaining the timestamp of a column |  Minor | Client | Jonathan Gray |  |
| [HBASE-3053](https://issues.apache.org/jira/browse/HBASE-3053) | Add ability to have multiple Masters LocalHBaseCluster for test writing |  Major | master, test | Jonathan Gray | Jonathan Gray |
| [HBASE-2907](https://issues.apache.org/jira/browse/HBASE-2907) | [rest/stargate] Improve error response when trying to create a scanner on a nonexistant table |  Minor | REST | Kieron Briggs | Andrew Purtell |
| [HBASE-3092](https://issues.apache.org/jira/browse/HBASE-3092) | Replace deprecated "new HBaseConfiguration(...)" calls |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-2968](https://issues.apache.org/jira/browse/HBASE-2968) | No standard family filter provided |  Major | Client | Andrey Stepachev |  |
| [HBASE-3001](https://issues.apache.org/jira/browse/HBASE-3001) | Ship dependency jars to the cluster for all jobs |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3115](https://issues.apache.org/jira/browse/HBASE-3115) | HBaseClient wastes 1 TCP packet per RPC |  Minor | Client | Benoit Sigoure | Todd Lipcon |
| [HBASE-3076](https://issues.apache.org/jira/browse/HBASE-3076) | Allow to disable automatic shipping of dependency jars for mapreduce jobs |  Minor | mapreduce | Bruno Dumon | Bruno Dumon |
| [HBASE-3133](https://issues.apache.org/jira/browse/HBASE-3133) | Only log compaction requests when a request is actually added to the queue |  Minor | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3132](https://issues.apache.org/jira/browse/HBASE-3132) | Print TimestampRange and BloomFilters in HFile pretty print |  Minor | io | Jonathan Gray | Jonathan Gray |
| [HBASE-3082](https://issues.apache.org/jira/browse/HBASE-3082) | For ICV gets, first look in MemStore before reading StoreFiles |  Major | regionserver | Jonathan Gray | Prakash Khemani |
| [HBASE-2753](https://issues.apache.org/jira/browse/HBASE-2753) | Remove sorted() methods from Result now that Gets are Scans |  Major | Client | Jonathan Gray | ryan rawson |
| [HBASE-3167](https://issues.apache.org/jira/browse/HBASE-3167) | HBase Export: Add ability to export specific Column Family; Turn Block Cache off during export; improve usage doc |  Major | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-3102](https://issues.apache.org/jira/browse/HBASE-3102) | Enhance HBase rMetrics for Long-running Stats |  Major | regionserver | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3160](https://issues.apache.org/jira/browse/HBASE-3160) | Compactions: Use more intelligent priorities for PriorityCompactionQueue |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3162](https://issues.apache.org/jira/browse/HBASE-3162) | Add TimeRange support into Increment to optimize for counters that are partitioned on time |  Minor | Client, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-2253](https://issues.apache.org/jira/browse/HBASE-2253) | Show Block cache hit ratio for requests where cacheBlocks=true |  Minor | . | Dave Latham | Jonathan Gray |
| [HBASE-2006](https://issues.apache.org/jira/browse/HBASE-2006) | Documentation of hbase-site.xml parameters |  Minor | documentation | Mark Vigeant | stack |
| [HBASE-3126](https://issues.apache.org/jira/browse/HBASE-3126) | Force use of 'mv -f' when moving aside hbase logfiles |  Minor | scripts | Jonathan Gray | Jonathan Gray |
| [HBASE-3176](https://issues.apache.org/jira/browse/HBASE-3176) | Remove compile warnings in HRegionServer |  Minor | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-2672](https://issues.apache.org/jira/browse/HBASE-2672) | README.txt should contain basic information like how to run or build HBase |  Critical | documentation | Cosmin Lehene | stack |
| [HBASE-3154](https://issues.apache.org/jira/browse/HBASE-3154) | HBase RPC should support timeout |  Major | . | Hairong Kuang | Hairong Kuang |
| [HBASE-3120](https://issues.apache.org/jira/browse/HBASE-3120) | [rest] content transcoding |  Minor | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-3181](https://issues.apache.org/jira/browse/HBASE-3181) | Review, document, and fix up Regions-in-Transition timeout logic |  Blocker | master, regionserver, Zookeeper | Jonathan Gray | Jonathan Gray |
| [HBASE-3180](https://issues.apache.org/jira/browse/HBASE-3180) | Review periodic master logging, especially ServerManager once a minute |  Major | master | Jonathan Gray | Jonathan Gray |
| [HBASE-1956](https://issues.apache.org/jira/browse/HBASE-1956) | Export HDFS read and write latency as a metric |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2564](https://issues.apache.org/jira/browse/HBASE-2564) | REST module tests use deprecated foundation |  Major | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-3200](https://issues.apache.org/jira/browse/HBASE-3200) | Make is so can disable DEBUG logging on HConnectionImplemenation without losing important messages |  Major | . | stack | stack |
| [HBASE-3048](https://issues.apache.org/jira/browse/HBASE-3048) | unify code for major/minor compactions |  Major | . | Kannan Muthukkaruppan | Amitanand Aiyer |
| [HBASE-3083](https://issues.apache.org/jira/browse/HBASE-3083) | Major compaction check should use new timestamp meta information in HFiles (rather than dfs timestamp) along with TTL to allow major even if single file |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-3209](https://issues.apache.org/jira/browse/HBASE-3209) | New Compaction Heuristic |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3168](https://issues.apache.org/jira/browse/HBASE-3168) | Sanity date and time check when a region server joins the cluster |  Major | regionserver | Jeff Whiting | Jeff Whiting |
| [HBASE-3090](https://issues.apache.org/jira/browse/HBASE-3090) | Don't include hbase-default in conf/ assembly |  Major | build, Client | Todd Lipcon |  |
| [HBASE-3161](https://issues.apache.org/jira/browse/HBASE-3161) | Provide option for Stargate to only serve GET requests |  Major | REST | Ted Yu |  |
| [HBASE-3216](https://issues.apache.org/jira/browse/HBASE-3216) | Move HBaseFsck from client to util |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3218](https://issues.apache.org/jira/browse/HBASE-3218) | Shell help cleanup/cosmetics/edit |  Major | . | stack | stack |
| [HBASE-3211](https://issues.apache.org/jira/browse/HBASE-3211) | Key (Index) Only Fetches |  Major | . | Kannan Muthukkaruppan | Jonathan Gray |
| [HBASE-3227](https://issues.apache.org/jira/browse/HBASE-3227) | Edit of log messages before branching... |  Major | . | stack |  |
| [HBASE-3231](https://issues.apache.org/jira/browse/HBASE-3231) | Update to zookeeper 3.3.2. |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-3279](https://issues.apache.org/jira/browse/HBASE-3279) | [rest] Filter for gzip/deflate content encoding that wraps both input and output side |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3223](https://issues.apache.org/jira/browse/HBASE-3223) | Get VersionInfo for Running HBase Process |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3303](https://issues.apache.org/jira/browse/HBASE-3303) | Lower hbase.regionserver.handler.count from 25 back to 10 |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3292](https://issues.apache.org/jira/browse/HBASE-3292) | Expose block cache hit/miss/evict counts into region server metrics |  Minor | . | Jonathan Gray | Jonathan Gray |
| [HBASE-2467](https://issues.apache.org/jira/browse/HBASE-2467) | Concurrent flushers in HLog sync using HDFS-895 |  Blocker | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-3308](https://issues.apache.org/jira/browse/HBASE-3308) | SplitTransaction.splitStoreFiles slows splits a lot |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3320](https://issues.apache.org/jira/browse/HBASE-3320) | Compaction parameter minCompactSize should be configurable |  Critical | . | Jonathan Gray | Jonathan Gray |
| [HBASE-3349](https://issues.apache.org/jira/browse/HBASE-3349) | Pass HBase configuration to HttpServer |  Trivial | master, regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-3372](https://issues.apache.org/jira/browse/HBASE-3372) | HRS shouldn't print a full stack for ServerNotRunningException |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3377](https://issues.apache.org/jira/browse/HBASE-3377) | Upgrade Jetty to 6.1.26 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3405](https://issues.apache.org/jira/browse/HBASE-3405) | Allow HBaseRpcMetrics to register custom interface methods |  Minor | IPC/RPC | Gary Helmling | Gary Helmling |
| [HBASE-3407](https://issues.apache.org/jira/browse/HBASE-3407) | hbck should pause after fixing before re-checking state |  Major | util | Todd Lipcon | Todd Lipcon |
| [HBASE-2646](https://issues.apache.org/jira/browse/HBASE-2646) | Compaction requests should be prioritized to prevent blocking |  Critical | regionserver | Jeff Whiting | Jeff Whiting |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1771](https://issues.apache.org/jira/browse/HBASE-1771) | PE sequentialWrite is 7x slower because of MemStoreFlusher#checkStoreFileCount |  Major | . | stack | Jonathan Gray |
| [HBASE-1754](https://issues.apache.org/jira/browse/HBASE-1754) | use TCP keepalives |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1614](https://issues.apache.org/jira/browse/HBASE-1614) | single zk node buckling under small node?  connections never timing out? |  Major | . | stack |  |
| [HBASE-1791](https://issues.apache.org/jira/browse/HBASE-1791) | Timeout in IndexRecordWriter |  Minor | . | Bradford Stephens | Bradford Stephens |
| [HBASE-1737](https://issues.apache.org/jira/browse/HBASE-1737) | Regions unbalanced when adding new node |  Blocker | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1793](https://issues.apache.org/jira/browse/HBASE-1793) | [Regression] HTable.get/getRow with a ts is broken |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1792](https://issues.apache.org/jira/browse/HBASE-1792) | [Regression] Cannot save timestamp in the future |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1798](https://issues.apache.org/jira/browse/HBASE-1798) | [Regression] Unable to delete a row in the future |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1780](https://issues.apache.org/jira/browse/HBASE-1780) | HTable.flushCommits clears write buffer in finally clause |  Major | Client | Mathias Herberts | Andrew Purtell |
| [HBASE-1804](https://issues.apache.org/jira/browse/HBASE-1804) | Puts are permitted (and stored) when including an appended colon |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1715](https://issues.apache.org/jira/browse/HBASE-1715) | compaction failure in ScanWildcardColumnTracker.checkColumn |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1790](https://issues.apache.org/jira/browse/HBASE-1790) | filters are not working correctly |  Major | Filters | Matus Zamborsky | Jonathan Gray |
| [HBASE-1824](https://issues.apache.org/jira/browse/HBASE-1824) | [stargate] default timestamp should be LATEST\_TIMESTAMP |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1825](https://issues.apache.org/jira/browse/HBASE-1825) | code cleanup, hmaster split debug logs |  Major | . | ryan rawson |  |
| [HBASE-1795](https://issues.apache.org/jira/browse/HBASE-1795) | log recovery doesnt reset the max sequence id, new logfiles can get tossed as 'duplicates' |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1794](https://issues.apache.org/jira/browse/HBASE-1794) | recovered log files are not inserted into the storefile map |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1828](https://issues.apache.org/jira/browse/HBASE-1828) | CompareFilters are broken from client-side |  Critical | Filters | Jonathan Gray | Jonathan Gray |
| [HBASE-1836](https://issues.apache.org/jira/browse/HBASE-1836) | test of indexed hbase broken |  Major | . | stack | stack |
| [HBASE-1838](https://issues.apache.org/jira/browse/HBASE-1838) | [javadoc] Add javadoc to Delete explaining behavior when no timestamp provided |  Major | . | stack | stack |
| [HBASE-1821](https://issues.apache.org/jira/browse/HBASE-1821) | Filtering by SingleColumnValueFilter bug |  Major | . | stack | Jonathan Gray |
| [HBASE-1840](https://issues.apache.org/jira/browse/HBASE-1840) | RowLock fails when used with IndexTable |  Major | . | Keith Thomas | Keith Thomas |
| [HBASE-1574](https://issues.apache.org/jira/browse/HBASE-1574) | Client and server APIs to do batch deletes. |  Major | . | ryan rawson |  |
| [HBASE-1833](https://issues.apache.org/jira/browse/HBASE-1833) | hfile.main fixes |  Major | . | stack | stack |
| [HBASE-1848](https://issues.apache.org/jira/browse/HBASE-1848) | Fixup shell for HBASE-1822 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1850](https://issues.apache.org/jira/browse/HBASE-1850) | src/examples/mapred do not compile after HBASE-1822 |  Minor | . | Andrew Purtell | Jonathan Gray |
| [HBASE-1847](https://issues.apache.org/jira/browse/HBASE-1847) | Delete latest of a null qualifier when non-null qualifiers exist throws a RuntimeException |  Critical | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-1859](https://issues.apache.org/jira/browse/HBASE-1859) | Misc shell fixes patch. |  Minor | scripts | Kyle Oba |  |
| [HBASE-1860](https://issues.apache.org/jira/browse/HBASE-1860) | Change HTablePool#createHTable from private to protected |  Major | . | stack |  |
| [HBASE-1865](https://issues.apache.org/jira/browse/HBASE-1865) | 0.20.0 TableInputFormatBase NPE |  Major | . | Eric Tschetter | stack |
| [HBASE-1866](https://issues.apache.org/jira/browse/HBASE-1866) | Scan(Scan) copy constructor does not copy value of cacheBlocks |  Major | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1869](https://issues.apache.org/jira/browse/HBASE-1869) | IndexedTable delete fails when used in conjunction with RowLock() |  Major | . | Keith Thomas |  |
| [HBASE-1855](https://issues.apache.org/jira/browse/HBASE-1855) | HMaster web application doesn't show the region end key in the table detail page |  Minor | master | Andrei Dragomir |  |
| [HBASE-1870](https://issues.apache.org/jira/browse/HBASE-1870) | Bytes.toFloat(byte [] bytes, int offset) is private but a user needs it public |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1858](https://issues.apache.org/jira/browse/HBASE-1858) | Master can't split logs created by THBase |  Major | master | Clint Morgan | Clint Morgan |
| [HBASE-1871](https://issues.apache.org/jira/browse/HBASE-1871) | Wrong type used in TableMapReduceUtil.initTableReduceJob() |  Major | . | Lars George | Lars George |
| [HBASE-1883](https://issues.apache.org/jira/browse/HBASE-1883) | HRegion passes the wrong minSequenceNumber to doReconstructionLog |  Major | regionserver | Clint Morgan | Clint Morgan |
| [HBASE-1879](https://issues.apache.org/jira/browse/HBASE-1879) | ReadOnly transactions generate WAL activity. |  Minor | . | Clint Morgan | Clint Morgan |
| [HBASE-1878](https://issues.apache.org/jira/browse/HBASE-1878) | BaseScanner results can't be trusted at all (Related to hbase-1784) |  Major | . | stack | stack |
| [HBASE-1831](https://issues.apache.org/jira/browse/HBASE-1831) | Scanning API must be reworked to allow for fully functional Filters client-side |  Critical | . | Jonathan Gray | stack |
| [HBASE-1890](https://issues.apache.org/jira/browse/HBASE-1890) | hbase-1506 where assignment is done at regionserver doesn't work |  Major | . | stack |  |
| [HBASE-1889](https://issues.apache.org/jira/browse/HBASE-1889) | ClassNotFoundException on trunk for REST |  Major | master | Jonathan Gray | Jonathan Gray |
| [HBASE-1905](https://issues.apache.org/jira/browse/HBASE-1905) | Remove unused config. hbase.hstore.blockCache.blockSize |  Major | . | stack | stack |
| [HBASE-1906](https://issues.apache.org/jira/browse/HBASE-1906) | FilterList of prefix and columnvalue not working properly with deletes and multiple values |  Major | . | stack | stack |
| [HBASE-1276](https://issues.apache.org/jira/browse/HBASE-1276) | [testing] Upgrade to JUnit 4.x and use @BeforeClass annotations to optimize tests |  Major | test | ryan rawson | stack |
| [HBASE-1896](https://issues.apache.org/jira/browse/HBASE-1896) | WhileMatchFilter.reset should call encapsulated filter reset |  Major | Filters | Yoram Kulbak | stack |
| [HBASE-1914](https://issues.apache.org/jira/browse/HBASE-1914) | hlog should be able to set replication level for the log indendently from any other files |  Major | . | ryan rawson |  |
| [HBASE-1912](https://issues.apache.org/jira/browse/HBASE-1912) | When adding a secondary index to an existing table, it will cause NPE during re-indexing. |  Minor | . | Mingjui Ray Liao |  |
| [HBASE-1908](https://issues.apache.org/jira/browse/HBASE-1908) | ROOT not reassigned if only one regionserver left |  Blocker | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1916](https://issues.apache.org/jira/browse/HBASE-1916) | FindBugs and javac warnings cleanup |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1915](https://issues.apache.org/jira/browse/HBASE-1915) | HLog.sync is called way too often, needs to be only called 1x per RPC |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1926](https://issues.apache.org/jira/browse/HBASE-1926) | Remove unused xmlenc jar from trunk |  Major | . | stack | stack |
| [HBASE-1777](https://issues.apache.org/jira/browse/HBASE-1777) | column length is not checked before saved to memstore |  Major | Client | Billy Pearson | Amandeep Khurana |
| [HBASE-1895](https://issues.apache.org/jira/browse/HBASE-1895) | HConstants.MAX\_ROW\_LENGTH is incorrectly 64k, should be 32k |  Major | . | ryan rawson | Amandeep Khurana |
| [HBASE-1925](https://issues.apache.org/jira/browse/HBASE-1925) | IllegalAccessError: Has not been initialized (getMaxSequenceId) |  Blocker | . | stack | stack |
| [HBASE-1929](https://issues.apache.org/jira/browse/HBASE-1929) | If hbase-default.xml is not in CP, zk session timeout is 10 secs! |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1927](https://issues.apache.org/jira/browse/HBASE-1927) | Scanners not closed properly in certain circumstances (memory leak) |  Major | regionserver | Erik Rozendaal | Jonathan Gray |
| [HBASE-1930](https://issues.apache.org/jira/browse/HBASE-1930) | Put.setTimeStamp misleading (doesn't change timestamp on existing KeyValues, not copied in copy constructor) |  Minor | Client | Dave Latham |  |
| [HBASE-1934](https://issues.apache.org/jira/browse/HBASE-1934) | NullPointerException in ClientScanner |  Major | . | Daniel Ploeg | Andrew Purtell |
| [HBASE-1921](https://issues.apache.org/jira/browse/HBASE-1921) | When the Master's session times out and there's only one, cluster is wedged |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1946](https://issues.apache.org/jira/browse/HBASE-1946) | Unhandled exception at regionserver |  Major | regionserver | Dmitriy Lyfar | Dmitriy Lyfar |
| [HBASE-1682](https://issues.apache.org/jira/browse/HBASE-1682) | IndexedRegion does not properly handle deletes |  Major | . | Andrew McCall | Clint Morgan |
| [HBASE-1954](https://issues.apache.org/jira/browse/HBASE-1954) | Transactional scans do not see newest put. |  Major | . | Clint Morgan | Clint Morgan |
| [HBASE-1919](https://issues.apache.org/jira/browse/HBASE-1919) | code: HRS.delete seems to ignore exceptions it shouldnt |  Major | . | ryan rawson | Jean-Daniel Cryans |
| [HBASE-1951](https://issues.apache.org/jira/browse/HBASE-1951) | Stack overflow when calling HTable.checkAndPut() when deleting a lot of values |  Major | regionserver | Age Mooij | Jean-Daniel Cryans |
| [HBASE-1781](https://issues.apache.org/jira/browse/HBASE-1781) | Weird behavior of WildcardColumnTracker.checkColumn(), looks like recursive loop |  Major | . | Lars George | Jean-Daniel Cryans |
| [HBASE-1949](https://issues.apache.org/jira/browse/HBASE-1949) | KeyValue expiration by Time-to-Live during major compaction is broken |  Major | regionserver | Gary Helmling | Gary Helmling |
| [HBASE-1957](https://issues.apache.org/jira/browse/HBASE-1957) | Get-s can't set a Filter |  Major | Filters | Roman Kalyakin |  |
| [HBASE-1928](https://issues.apache.org/jira/browse/HBASE-1928) | ROOT and META tables stay in transition state (making the system not usable) if the designated regionServer dies before the assignment is complete |  Major | master | Yannis Pavlidis |  |
| [HBASE-1966](https://issues.apache.org/jira/browse/HBASE-1966) | Apply the fix from site/ to remove the forrest dependency on java5 |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1841](https://issues.apache.org/jira/browse/HBASE-1841) | If multiple of same key in an hfile and they span blocks, may miss the earlier keys on a lookup |  Major | . | stack | Schubert Zhang |
| [HBASE-1977](https://issues.apache.org/jira/browse/HBASE-1977) | Add ts and allow setting VERSIONS when scanning in shell |  Major | . | stack | stack |
| [HBASE-2003](https://issues.apache.org/jira/browse/HBASE-2003) | [shell] deleteall ignores column if specified |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1979](https://issues.apache.org/jira/browse/HBASE-1979) | MurmurHash does not yield the same results as the reference C++ implementation when size % 4 \>= 2 |  Trivial | util | olivier gillet | olivier gillet |
| [HBASE-2018](https://issues.apache.org/jira/browse/HBASE-2018) | Updates to .META. blocked under high MemStore load |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1994](https://issues.apache.org/jira/browse/HBASE-1994) | Master will lose hlog entries while splitting if region has empty oldlogfile.log |  Blocker | master | Cosmin Lehene | Lars George |
| [HBASE-2022](https://issues.apache.org/jira/browse/HBASE-2022) | NPE in housekeeping kills RS |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2027](https://issues.apache.org/jira/browse/HBASE-2027) | HConnectionManager.HBASE\_INSTANCES leaks TableServers |  Major | . | Dave Latham | Dave Latham |
| [HBASE-2033](https://issues.apache.org/jira/browse/HBASE-2033) | Shell scan 'limit' is off by one |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2034](https://issues.apache.org/jira/browse/HBASE-2034) | [Bulk load tools] loadtable.rb calls an undefined method `descendingIterator' |  Major | . | Ching-Shen Chen |  |
| [HBASE-2040](https://issues.apache.org/jira/browse/HBASE-2040) | Fixes to group commit |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2043](https://issues.apache.org/jira/browse/HBASE-2043) | Shell's scan broken |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2047](https://issues.apache.org/jira/browse/HBASE-2047) | Example command in the "Getting Started" documentation doesn't work |  Trivial | documentation | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2048](https://issues.apache.org/jira/browse/HBASE-2048) | Small inconsistency in the "Example API Usage" |  Trivial | documentation | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2044](https://issues.apache.org/jira/browse/HBASE-2044) | HBASE-1822 removed not-deprecated APIs |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1813](https://issues.apache.org/jira/browse/HBASE-1813) | Remove compaction governor |  Major | . | stack |  |
| [HBASE-2049](https://issues.apache.org/jira/browse/HBASE-2049) | Cleanup HLog binary log output |  Minor | . | Dave Latham | Dave Latham |
| [HBASE-2054](https://issues.apache.org/jira/browse/HBASE-2054) | memstore size 0 is \>= than blocking -2.0g size |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2060](https://issues.apache.org/jira/browse/HBASE-2060) | Missing closing tag in mapreduce package-info.java |  Trivial | . | Lars George | Lars George |
| [HBASE-2026](https://issues.apache.org/jira/browse/HBASE-2026) | NPE in StoreScanner on compaction |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2072](https://issues.apache.org/jira/browse/HBASE-2072) | fs.automatic.close isn't passed to FileSystem |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2075](https://issues.apache.org/jira/browse/HBASE-2075) | HBaseMaster requires HDFS superuser privileges due to waitOnSafeMode |  Major | master | Bassam Tabbara | Andrew Purtell |
| [HBASE-2082](https://issues.apache.org/jira/browse/HBASE-2082) | TableInputFormat is ignoring input scan's stop row setting |  Major | mapreduce | Scott Wang | Scott Wang |
| [HBASE-1636](https://issues.apache.org/jira/browse/HBASE-1636) | disable and drop of table is flakey still |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2068](https://issues.apache.org/jira/browse/HBASE-2068) | MetricsRate is missing "registry" parameter |  Minor | . | Lars George | Lars George |
| [HBASE-2090](https://issues.apache.org/jira/browse/HBASE-2090) | findbugs issues |  Major | . | Karthik K | Karthik K |
| [HBASE-2035](https://issues.apache.org/jira/browse/HBASE-2035) | Binary values are formatted wrong in shell |  Minor | . | Dave Latham | stack |
| [HBASE-2093](https://issues.apache.org/jira/browse/HBASE-2093) | [stargate] RowSpec parse bug |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2114](https://issues.apache.org/jira/browse/HBASE-2114) | Can't start HBase in trunk |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2101](https://issues.apache.org/jira/browse/HBASE-2101) | KeyValueSortReducer collapses all values to last passed |  Major | . | stack |  |
| [HBASE-2119](https://issues.apache.org/jira/browse/HBASE-2119) | Fix top-level NOTICES.txt file.  Its stale. |  Major | . | stack | stack |
| [HBASE-2120](https://issues.apache.org/jira/browse/HBASE-2120) | [Stargate] Unable to delete column families |  Major | . | Greg Lu | Greg Lu |
| [HBASE-2123](https://issues.apache.org/jira/browse/HBASE-2123) | Remove 'master' command-line option from PE. |  Major | . | stack |  |
| [HBASE-2122](https://issues.apache.org/jira/browse/HBASE-2122) | [Stargate] Initializing scanners column families doesn't work |  Major | . | Greg Lu | Greg Lu |
| [HBASE-2024](https://issues.apache.org/jira/browse/HBASE-2024) | [stargate] deletes not working as expected |  Minor | . | Andrew Purtell | Greg Lu |
| [HBASE-2127](https://issues.apache.org/jira/browse/HBASE-2127) | randomWrite mode of PerformanceEvaluation benchmark program writes only to a small range of keys |  Minor | test | Kannan Muthukkaruppan |  |
| [HBASE-2134](https://issues.apache.org/jira/browse/HBASE-2134) | Ivy nit regarding checking with latest snapshots |  Major | . | Karthik K | Karthik K |
| [HBASE-2138](https://issues.apache.org/jira/browse/HBASE-2138) | unknown metrics type |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-2137](https://issues.apache.org/jira/browse/HBASE-2137) | javadoc warnings from 'javadoc' target |  Major | documentation | Karthik K | Karthik K |
| [HBASE-2135](https://issues.apache.org/jira/browse/HBASE-2135) | ant javadoc complains about missing classes |  Major | . | Karthik K | Karthik K |
| [HBASE-2140](https://issues.apache.org/jira/browse/HBASE-2140) | findbugs issues - 2 performance warnings as suggested by findbugs |  Major | . | Karthik K | Karthik K |
| [HBASE-2150](https://issues.apache.org/jira/browse/HBASE-2150) | Deprecated HBC(Configuration) constructor doesn't call this() |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2151](https://issues.apache.org/jira/browse/HBASE-2151) | Remove onelab and include generated thrift classes in javadoc |  Minor | . | stack | Lars Francke |
| [HBASE-2154](https://issues.apache.org/jira/browse/HBASE-2154) | Fix Client#next(int) javadoc |  Major | . | stack | stack |
| [HBASE-2146](https://issues.apache.org/jira/browse/HBASE-2146) | RPC related metrics are missing in 0.20.3 since recent changes |  Major | . | Lars George | Gary Helmling |
| [HBASE-2149](https://issues.apache.org/jira/browse/HBASE-2149) | hbase.regionserver.global.memstore.lowerLimit is too low |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-2157](https://issues.apache.org/jira/browse/HBASE-2157) | LATEST\_TIMESTAMP not replaced by current timestamp in KeyValue |  Major | . | Menno Luiten | stack |
| [HBASE-2057](https://issues.apache.org/jira/browse/HBASE-2057) | Cluster won't stop |  Major | . | Jean-Daniel Cryans | Gary Helmling |
| [HBASE-2160](https://issues.apache.org/jira/browse/HBASE-2160) | Can't put with ts in shell |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-2163](https://issues.apache.org/jira/browse/HBASE-2163) | ZK dependencies - explicitly add them until ZK artifacts are published to mvn repository |  Major | . | Karthik K | Karthik K |
| [HBASE-2184](https://issues.apache.org/jira/browse/HBASE-2184) | Calling HTable.getTableDescriptor().\* on a full cluster takes a long time |  Major | . | Cristian Ivascu |  |
| [HBASE-2177](https://issues.apache.org/jira/browse/HBASE-2177) | Add timestamping to gc logging options |  Major | . | stack | stack |
| [HBASE-2199](https://issues.apache.org/jira/browse/HBASE-2199) | hbase.client.tableindexed.IndexSpecification, lines 72-73 should be reversed |  Minor | . | Adrian Popescu |  |
| [HBASE-2224](https://issues.apache.org/jira/browse/HBASE-2224) | Broken build: TestGetRowVersions.testGetRowMultipleVersions |  Major | . | stack | stack |
| [HBASE-2128](https://issues.apache.org/jira/browse/HBASE-2128) | ant tar build broken since switch to Ivy |  Major | build | Lars Francke | Karthik K |
| [HBASE-2226](https://issues.apache.org/jira/browse/HBASE-2226) | HQuorumPeerTest doesnt run because it doesnt start with the word Test |  Major | . | ryan rawson | ryan rawson |
| [HBASE-2241](https://issues.apache.org/jira/browse/HBASE-2241) | Change balancer sloppyness from 0.1 to 0.3 |  Major | . | stack | stack |
| [HBASE-2258](https://issues.apache.org/jira/browse/HBASE-2258) | The WhileMatchFilter doesn't delegate the call to filterRow() |  Major | Filters | Dan Washusen | stack |
| [HBASE-2259](https://issues.apache.org/jira/browse/HBASE-2259) | StackOverflow in ExplicitColumnTracker when row has many columns |  Major | . | Erik Rozendaal | Jean-Daniel Cryans |
| [HBASE-2266](https://issues.apache.org/jira/browse/HBASE-2266) | [stargate] missing MiniDFSCluster dependency |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2268](https://issues.apache.org/jira/browse/HBASE-2268) | [stargate] "Failed tests: warning(junit.framework.TestSuite$1)" and DEBUG output is dumped to console since move to Mavenized build |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2276](https://issues.apache.org/jira/browse/HBASE-2276) | Hbase Shell hcd() method is broken by the replication scope parameter |  Major | scripts | Alexey Kovyrin | Alexey Kovyrin |
| [HBASE-2284](https://issues.apache.org/jira/browse/HBASE-2284) | fsWriteLatency metric may be incorrectly reported |  Minor | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-2063](https://issues.apache.org/jira/browse/HBASE-2063) | For hfileoutputformat, on timeout/failure/kill clean up half-written hfile |  Major | . | stack | stack |
| [HBASE-2244](https://issues.apache.org/jira/browse/HBASE-2244) | META gets inconsistent in a number of crash scenarios |  Critical | . | Kannan Muthukkaruppan | stack |
| [HBASE-2293](https://issues.apache.org/jira/browse/HBASE-2293) | CME in RegionManager#isMetaServer |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2295](https://issues.apache.org/jira/browse/HBASE-2295) | Row locks may deadlock with themselves |  Major | regionserver | Todd Lipcon | dhruba borthakur |
| [HBASE-2308](https://issues.apache.org/jira/browse/HBASE-2308) | Fix the bin/rename\_table.rb script, make it work again |  Major | . | stack | stack |
| [HBASE-2307](https://issues.apache.org/jira/browse/HBASE-2307) | hbase-2295 changed hregion size, testheapsize broke... fix it. |  Major | . | stack | stack |
| [HBASE-2269](https://issues.apache.org/jira/browse/HBASE-2269) | PerformanceEvaluation "--nomapred" may assign duplicate random seed over multiple testing threads |  Minor | test | Tatsuya Kawano |  |
| [HBASE-2287](https://issues.apache.org/jira/browse/HBASE-2287) | TypeError in shell |  Major | . | Jean-Daniel Cryans | Alexey Kovyrin |
| [HBASE-2311](https://issues.apache.org/jira/browse/HBASE-2311) | Not having assertions enabled causes index contrib tests to fail |  Major | . | stack |  |
| [HBASE-2023](https://issues.apache.org/jira/browse/HBASE-2023) | Client sync block can cause 1 thread of a multi-threaded client to block all others |  Major | . | ryan rawson | Karthik Ranganathan |
| [HBASE-2305](https://issues.apache.org/jira/browse/HBASE-2305) | Client port for ZK has no default |  Major | . | Jean-Daniel Cryans |  |
| [HBASE-2323](https://issues.apache.org/jira/browse/HBASE-2323) | filter.RegexStringComparator does not work with certain bytes |  Major | Filters | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2313](https://issues.apache.org/jira/browse/HBASE-2313) | Nit-pick about hbase-2279 shell fixup, if you do get with non-existant column family, throws lots of exceptions |  Major | . | stack | Alexey Kovyrin |
| [HBASE-2336](https://issues.apache.org/jira/browse/HBASE-2336) | Fix build broken with HBASE-2334 |  Major | build | Lars Francke | Lars Francke |
| [HBASE-2344](https://issues.apache.org/jira/browse/HBASE-2344) | InfoServer and hence HBase Master doesn't fully start if you have HADOOP-6151 patch |  Minor | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-2283](https://issues.apache.org/jira/browse/HBASE-2283) | row level atomicity |  Blocker | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-2147](https://issues.apache.org/jira/browse/HBASE-2147) | run zookeeper in the same jvm as master during non-distributed mode |  Major | . | ryan rawson | ryan rawson |
| [HBASE-2355](https://issues.apache.org/jira/browse/HBASE-2355) | unsychronized logWriters map is mutated from several threads in HLog splitting |  Critical | master | Todd Lipcon | Todd Lipcon |
| [HBASE-2358](https://issues.apache.org/jira/browse/HBASE-2358) | Store doReconstructionLog will fail if oldlogfile.log is empty and won't load region |  Major | regionserver | Cosmin Lehene | Cosmin Lehene |
| [HBASE-2066](https://issues.apache.org/jira/browse/HBASE-2066) | Perf: parallelize puts |  Major | . | ryan rawson | ryan rawson |
| [HBASE-2370](https://issues.apache.org/jira/browse/HBASE-2370) | saveVersion.sh doesnt properly grab the git revision |  Major | . | ryan rawson | ryan rawson |
| [HBASE-2359](https://issues.apache.org/jira/browse/HBASE-2359) | WALEdit doesn't implement HeapSize |  Major | . | Jean-Daniel Cryans | Kannan Muthukkaruppan |
| [HBASE-2389](https://issues.apache.org/jira/browse/HBASE-2389) | HTable - delete / put unnecessary sync. |  Major | . | Karthik K |  |
| [HBASE-2361](https://issues.apache.org/jira/browse/HBASE-2361) | WALEdit broke replication scope |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2365](https://issues.apache.org/jira/browse/HBASE-2365) | Double-assignment around split |  Blocker | . | stack | stack |
| [HBASE-2338](https://issues.apache.org/jira/browse/HBASE-2338) | log recovery: deleted items may be resurrected |  Major | . | Kannan Muthukkaruppan | Aravind Menon |
| [HBASE-2398](https://issues.apache.org/jira/browse/HBASE-2398) | NPE in HLog.append when calling writer.getLength |  Major | . | Jean-Daniel Cryans | Kannan Muthukkaruppan |
| [HBASE-2402](https://issues.apache.org/jira/browse/HBASE-2402) | [stargate] set maxVersions on gets |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2087](https://issues.apache.org/jira/browse/HBASE-2087) | The wait on compaction because "Too many store files" holds up all flushing |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2252](https://issues.apache.org/jira/browse/HBASE-2252) | Mapping a very big table kills region servers |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2410](https://issues.apache.org/jira/browse/HBASE-2410) | spurious warnings from util.Sleeper |  Blocker | . | Andrew Purtell | Jean-Daniel Cryans |
| [HBASE-2417](https://issues.apache.org/jira/browse/HBASE-2417) | HCM.locateRootRegion fails hard on "Connection refused" |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2346](https://issues.apache.org/jira/browse/HBASE-2346) | Usage of FilterList slows down scans |  Major | Filters | Stefan Seelmann | Jean-Daniel Cryans |
| [HBASE-2431](https://issues.apache.org/jira/browse/HBASE-2431) | ZK settings for initLimit/syncLimit shouldn't have been removed from hbase-default.xml |  Major | . | Kannan Muthukkaruppan | Andrew Purtell |
| [HBASE-1933](https://issues.apache.org/jira/browse/HBASE-1933) | Upload Hbase jars to a public maven repository |  Blocker | . | Cyril Lakech | Karthik K |
| [HBASE-2439](https://issues.apache.org/jira/browse/HBASE-2439) | HBase can get stuck if updates to META are blocked |  Major | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-2451](https://issues.apache.org/jira/browse/HBASE-2451) | .META. by-passes cache; BLOCKCACHE=\>'false' |  Blocker | . | stack | stack |
| [HBASE-2322](https://issues.apache.org/jira/browse/HBASE-2322) | deadlock between put and cacheflusher in 0.20 branch |  Blocker | . | stack | stack |
| [HBASE-2456](https://issues.apache.org/jira/browse/HBASE-2456) | deleteChangedReaderObserver spitting warnings after HBASE-2248 |  Major | regionserver | Todd Lipcon | ryan rawson |
| [HBASE-2458](https://issues.apache.org/jira/browse/HBASE-2458) | Client stuck in TreeMap,remove |  Blocker | Client | Todd Lipcon | Todd Lipcon |
| [HBASE-2460](https://issues.apache.org/jira/browse/HBASE-2460) | add\_table.rb deletes any tables for which the target table name is a prefix |  Critical | scripts | Todd Lipcon | Todd Lipcon |
| [HBASE-2457](https://issues.apache.org/jira/browse/HBASE-2457) | RS gets stuck compacting region ad infinitum |  Critical | . | Todd Lipcon |  |
| [HBASE-2463](https://issues.apache.org/jira/browse/HBASE-2463) | Various Bytes.\* functions silently ignore invalid arguments |  Major | util | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2448](https://issues.apache.org/jira/browse/HBASE-2448) | Scanner threads are interrupted without acquiring lock properly |  Critical | master | Todd Lipcon | Todd Lipcon |
| [HBASE-2443](https://issues.apache.org/jira/browse/HBASE-2443) | IPC client can throw NPE if socket creation fails |  Major | IPC/RPC | Todd Lipcon | Todd Lipcon |
| [HBASE-2474](https://issues.apache.org/jira/browse/HBASE-2474) | Bug in 2248 - mixed version reads (not allowed by spec) |  Blocker | . | ryan rawson |  |
| [HBASE-2447](https://issues.apache.org/jira/browse/HBASE-2447) | LogSyncer.addToSyncQueue doesn't check if syncer is still running before waiting |  Critical | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-2481](https://issues.apache.org/jira/browse/HBASE-2481) | Client is not getting UnknownScannerExceptions; they are being eaten |  Blocker | . | stack | Jean-Daniel Cryans |
| [HBASE-2491](https://issues.apache.org/jira/browse/HBASE-2491) | master.jsp uses absolute links to table.jsp. This broke when master.jsp moved under webapps/master |  Minor | . | Cristian Ivascu |  |
| [HBASE-2487](https://issues.apache.org/jira/browse/HBASE-2487) | Uncaught exceptions in receiving IPC responses orphan clients |  Critical | IPC/RPC | Todd Lipcon | Todd Lipcon |
| [HBASE-2476](https://issues.apache.org/jira/browse/HBASE-2476) | HLog sequence number is obtained outside updateLock |  Critical | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-2494](https://issues.apache.org/jira/browse/HBASE-2494) | Does not apply new.name parameter to CopyTable. |  Minor | mapreduce | Yoonsik Oh |  |
| [HBASE-2497](https://issues.apache.org/jira/browse/HBASE-2497) | ProcessServerShutdown throws NullPointerException for offline regions |  Major | master | Miklos Kurucz | Miklos Kurucz |
| [HBASE-2499](https://issues.apache.org/jira/browse/HBASE-2499) | Race condition when disabling a table leaves regions in transition |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2414](https://issues.apache.org/jira/browse/HBASE-2414) | Enhance test suite to be able to specify distributed scenarios |  Blocker | test | Karthik Ranganathan | stack |
| [HBASE-2428](https://issues.apache.org/jira/browse/HBASE-2428) | NPE in ProcessRegionClose because meta is offline kills master and thus the cluster |  Blocker | . | stack | stack |
| [HBASE-2482](https://issues.apache.org/jira/browse/HBASE-2482) | regions in transition do not get reassigned by master when RS crashes |  Blocker | master | Todd Lipcon | Todd Lipcon |
| [HBASE-2513](https://issues.apache.org/jira/browse/HBASE-2513) | hbase-2414 added bug where we'd tight-loop if no root available. |  Major | . | stack | Benoit Sigoure |
| [HBASE-2503](https://issues.apache.org/jira/browse/HBASE-2503) | PriorityQueue isn't thread safe, KeyValueHeap uses it that way |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2413](https://issues.apache.org/jira/browse/HBASE-2413) | Master does not respect generation stamps, may result in meta getting permanently offlined |  Major | master | Karthik Ranganathan | stack |
| [HBASE-2515](https://issues.apache.org/jira/browse/HBASE-2515) | ChangeTableState considers split&&offline regions as being served |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2525](https://issues.apache.org/jira/browse/HBASE-2525) | If one-RS only and its restarted before its shutdown is completely processed, we'll never complete shutdown processing |  Major | . | stack | stack |
| [HBASE-2544](https://issues.apache.org/jira/browse/HBASE-2544) | Forward port branch 0.20 WAL to TRUNK |  Major | . | stack | stack |
| [HBASE-2546](https://issues.apache.org/jira/browse/HBASE-2546) | Specify default filesystem in both the new and old way (needed if we are to run on 0.20 and 0.21 hadoop) |  Major | master | stack | stack |
| [HBASE-2545](https://issues.apache.org/jira/browse/HBASE-2545) | Unresponsive region server, potential deadlock |  Blocker | regionserver | Kris Jirapinyo | Todd Lipcon |
| [HBASE-2421](https://issues.apache.org/jira/browse/HBASE-2421) | Put hangs for 10 retries on failed region servers |  Critical | . | Jean-Daniel Cryans | ryan rawson |
| [HBASE-2442](https://issues.apache.org/jira/browse/HBASE-2442) | Log lease recovery catches IOException too widely |  Major | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-2511](https://issues.apache.org/jira/browse/HBASE-2511) | Apply HBASE-2509 ("NPEs in various places, HRegion.get, HRS.close") to trunk after hbase-2248 goes in |  Major | . | stack | ryan rawson |
| [HBASE-2562](https://issues.apache.org/jira/browse/HBASE-2562) | bin/hbase doesn't work in-situ in maven |  Critical | build | Todd Lipcon | Todd Lipcon |
| [HBASE-2449](https://issues.apache.org/jira/browse/HBASE-2449) | Local HBase does not stop properly |  Major | . | Lars George |  |
| [HBASE-2539](https://issues.apache.org/jira/browse/HBASE-2539) | Cannot start ZK before the rest in tests anymore |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2561](https://issues.apache.org/jira/browse/HBASE-2561) | Scanning .META. while split in progress yields IllegalArgumentException |  Critical | . | Todd Lipcon | Todd Lipcon |
| [HBASE-2572](https://issues.apache.org/jira/browse/HBASE-2572) |  hbase/bin/set\_meta\_block\_caching.rb:72: can't convert Java::JavaLang::String into String (TypeError) - little issue with script |  Major | . | stack | stack |
| [HBASE-2483](https://issues.apache.org/jira/browse/HBASE-2483) | Some tests do not use ephemeral ports |  Blocker | test | Todd Lipcon | Jonathan Gray |
| [HBASE-2573](https://issues.apache.org/jira/browse/HBASE-2573) | client.HConnectionManager$TableServers logs non-printable binary bytes |  Trivial | Client | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2576](https://issues.apache.org/jira/browse/HBASE-2576) | TestHRegion.testDelete\_mixed() failing on hudson |  Critical | test | Jonathan Gray | Jonathan Gray |
| [HBASE-2581](https://issues.apache.org/jira/browse/HBASE-2581) | Bloom commit broke TestShell |  Blocker | . | Jonathan Gray | Jonathan Gray |
| [HBASE-2582](https://issues.apache.org/jira/browse/HBASE-2582) | TestTableSchemaModel not passing after commit of blooms |  Critical | . | Jonathan Gray | Andrew Purtell |
| [HBASE-2583](https://issues.apache.org/jira/browse/HBASE-2583) | Make webapps work in distributed mode again and make webapps deploy at / instead of at /webapps/master/master.jsp |  Major | . | stack | stack |
| [HBASE-2591](https://issues.apache.org/jira/browse/HBASE-2591) | HBASE-2587 hardcoded the port that dfscluster runs on |  Major | . | stack | stack |
| [HBASE-2519](https://issues.apache.org/jira/browse/HBASE-2519) | StoreFileScanner.seek swallows IOEs |  Blocker | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-2516](https://issues.apache.org/jira/browse/HBASE-2516) | Ugly IOE when region is being closed; rather, should NSRE |  Major | . | stack | Daniel Ploeg |
| [HBASE-2589](https://issues.apache.org/jira/browse/HBASE-2589) | TestHRegion.testWritesWhileScanning flaky on trunk |  Critical | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-1880](https://issues.apache.org/jira/browse/HBASE-1880) | DeleteColumns are not recovered properly from the write-ahead-log |  Critical | regionserver | Clint Morgan |  |
| [HBASE-2590](https://issues.apache.org/jira/browse/HBASE-2590) | Failed parse of branch element in saveVersion.sh |  Major | . | stack | Benoit Sigoure |
| [HBASE-2586](https://issues.apache.org/jira/browse/HBASE-2586) | Move hbase webapps to an hbase-webapps dir |  Minor | build | Todd Lipcon | Todd Lipcon |
| [HBASE-2369](https://issues.apache.org/jira/browse/HBASE-2369) | hbase master.jsp not rooted correct in trunk |  Major | . | ryan rawson |  |
| [HBASE-2610](https://issues.apache.org/jira/browse/HBASE-2610) | ValueFilter copy pasted javadoc from QualifierFilter |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2619](https://issues.apache.org/jira/browse/HBASE-2619) | HBase shell 'alter' command cannot set table properties to False |  Minor | scripts | Christo Wilson |  |
| [HBASE-2621](https://issues.apache.org/jira/browse/HBASE-2621) | Fix broken link in HFile Javadoc |  Major | documentation, io | Jeff Hammerbacher | Jeff Hammerbacher |
| [HBASE-2599](https://issues.apache.org/jira/browse/HBASE-2599) | BaseScanner says "Current assignment of X is not valid" over and over for same region |  Major | . | stack | stack |
| [HBASE-2371](https://issues.apache.org/jira/browse/HBASE-2371) | trunk, shell command 'list' does not work. tables exist and respond to other commands however |  Major | scripts | ryan rawson | Alexey Kovyrin |
| [HBASE-2531](https://issues.apache.org/jira/browse/HBASE-2531) | 32-bit encoding of regionnames waaaaaaayyyyy too susceptible to hash clashes |  Blocker | . | stack | Kannan Muthukkaruppan |
| [HBASE-2620](https://issues.apache.org/jira/browse/HBASE-2620) | REST tests don't use ephemeral ports |  Major | REST, test | Todd Lipcon | Andrew Purtell |
| [HBASE-2437](https://issues.apache.org/jira/browse/HBASE-2437) | Refactor HLog splitLog |  Major | master | Cosmin Lehene | Cosmin Lehene |
| [HBASE-2635](https://issues.apache.org/jira/browse/HBASE-2635) | ImmutableBytesWritable ignores offset in several cases |  Blocker | . | Todd Lipcon | Todd Lipcon |
| [HBASE-1335](https://issues.apache.org/jira/browse/HBASE-1335) | shell help page is too big; redo so just list commands and then you type 'help command-name' to learn more about it |  Major | . | stack | Alexey Kovyrin |
| [HBASE-2654](https://issues.apache.org/jira/browse/HBASE-2654) | Several tests failing after bulk output commit |  Blocker | mapreduce | Todd Lipcon | Todd Lipcon |
| [HBASE-2657](https://issues.apache.org/jira/browse/HBASE-2657) | TestTableResource is broken in trunk |  Major | . | stack | stack |
| [HBASE-2352](https://issues.apache.org/jira/browse/HBASE-2352) | Small values for hbase.client.retries.number and ipc.client.connect.max.retries breaks long ops in hbase shell |  Major | Client | Alexey Kovyrin | Alexey Kovyrin |
| [HBASE-2662](https://issues.apache.org/jira/browse/HBASE-2662) | TestScannerResource.testScannerResource broke in trunk |  Major | . | stack | stack |
| [HBASE-2664](https://issues.apache.org/jira/browse/HBASE-2664) | TestHRegion.testCheckAndDelete\_ThatDeleteWasWritten fail in trunk |  Critical | regionserver | Todd Lipcon |  |
| [HBASE-2667](https://issues.apache.org/jira/browse/HBASE-2667) | TestHLog.testSplit failing in trunk |  Major | . | stack | stack |
| [HBASE-2614](https://issues.apache.org/jira/browse/HBASE-2614) | killing server in TestMasterTransitions causes NPEs and test deadlock |  Major | . | Andrew Purtell | stack |
| [HBASE-2615](https://issues.apache.org/jira/browse/HBASE-2615) | M/R on bulk imported tables |  Major | . | Azza Abouzeid | stack |
| [HBASE-2633](https://issues.apache.org/jira/browse/HBASE-2633) | REST XML schema description up on the wiki is out of date |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2558](https://issues.apache.org/jira/browse/HBASE-2558) | [mvn] Our javadoc overview -- "Getting Started", requirements, etc. -- is not carried across by mvn javadoc:javadoc target |  Blocker | . | stack |  |
| [HBASE-2684](https://issues.apache.org/jira/browse/HBASE-2684) | TestMasterWrongRS flaky in trunk |  Major | test | Todd Lipcon | Jean-Daniel Cryans |
| [HBASE-2691](https://issues.apache.org/jira/browse/HBASE-2691) | LeaseStillHeldException totally ignored by RS, wrongly named |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2069](https://issues.apache.org/jira/browse/HBASE-2069) | Use the new 'visible' length feature added by hdfs-814 |  Major | . | stack |  |
| [HBASE-2703](https://issues.apache.org/jira/browse/HBASE-2703) | ui not working in distributed context |  Major | . | stack |  |
| [HBASE-2710](https://issues.apache.org/jira/browse/HBASE-2710) | Shell should have default terminal width when detection fails |  Major | shell | Todd Lipcon | Kannan Muthukkaruppan |
| [HBASE-2712](https://issues.apache.org/jira/browse/HBASE-2712) | Cached region location that went stale won't recover if asking for first row |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2353](https://issues.apache.org/jira/browse/HBASE-2353) | HBASE-2283 removed bulk sync optimization for multi-row puts |  Blocker | . | ryan rawson | Todd Lipcon |
| [HBASE-2732](https://issues.apache.org/jira/browse/HBASE-2732) | TestZooKeeper was broken, HBASE-2691 showed it |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2670](https://issues.apache.org/jira/browse/HBASE-2670) | MemStore should retain multiple KVs with the same timestamp when memstoreTS differs |  Blocker | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-2733](https://issues.apache.org/jira/browse/HBASE-2733) | HBASE-2353 broke timestamp replacement on Puts when writeToWAL disabled |  Blocker | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-2734](https://issues.apache.org/jira/browse/HBASE-2734) | TestFSErrorsExposed should catch IOE as well as RTE |  Major | test | Todd Lipcon | Todd Lipcon |
| [HBASE-2738](https://issues.apache.org/jira/browse/HBASE-2738) | Fix TestTimeRangeMapRed verification now that we store multiple versions with same TS |  Major | test | Todd Lipcon | Todd Lipcon |
| [HBASE-2725](https://issues.apache.org/jira/browse/HBASE-2725) | Shutdown hook management is gone in trunk; restore |  Blocker | . | stack | stack |
| [HBASE-2683](https://issues.apache.org/jira/browse/HBASE-2683) | Make it obvious in the documentation that ZooKeeper needs permanent storage |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2737](https://issues.apache.org/jira/browse/HBASE-2737) | CME in ZKW introduced in HBASE-2694 |  Major | . | Jean-Daniel Cryans | Karthik Ranganathan |
| [HBASE-2756](https://issues.apache.org/jira/browse/HBASE-2756) | MetaScanner.metaScan doesn't take configurations |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2757](https://issues.apache.org/jira/browse/HBASE-2757) | Regions not assigned after HBASE-2694 went in |  Blocker | . | stack | Todd Lipcon |
| [HBASE-2760](https://issues.apache.org/jira/browse/HBASE-2760) | MetaScanner throws TableNotFoundException when specifying empty start row of a table |  Critical | Client | Todd Lipcon | Todd Lipcon |
| [HBASE-2741](https://issues.apache.org/jira/browse/HBASE-2741) | HBaseExecutorService needs to be multi-cluster friendly |  Major | . | Jean-Daniel Cryans | Karthik Ranganathan |
| [HBASE-2769](https://issues.apache.org/jira/browse/HBASE-2769) | Trivial typo in HBaseConfiguration deprecation message |  Trivial | . | Todd Lipcon | Todd Lipcon |
| [HBASE-2763](https://issues.apache.org/jira/browse/HBASE-2763) | Cross-port HADOOP-6833 IPC parameter leak bug |  Blocker | . | Todd Lipcon | Todd Lipcon |
| [HBASE-2758](https://issues.apache.org/jira/browse/HBASE-2758) | META region stuck in RS2ZK\_REGION\_OPENED state |  Blocker | master, regionserver | Todd Lipcon | Karthik Ranganathan |
| [HBASE-2767](https://issues.apache.org/jira/browse/HBASE-2767) | setMaxRecoveryErrorCount reflection fails after HDFS-1209 |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-2729](https://issues.apache.org/jira/browse/HBASE-2729) | flushCache should write to a tmp directory and then move into the store directory |  Blocker | regionserver | Todd Lipcon | stack |
| [HBASE-2775](https://issues.apache.org/jira/browse/HBASE-2775) | Update of hadoop jar in HBASE-2771 broke TestMultiClusters |  Blocker | . | Jonathan Gray | Jean-Daniel Cryans |
| [HBASE-2772](https://issues.apache.org/jira/browse/HBASE-2772) | Scan doesn't recover from region server failure |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2774](https://issues.apache.org/jira/browse/HBASE-2774) | Spin in ReadWriteConsistencyControl eating CPU (load \> 40) and no progress running YCSB on clean cluster startup |  Major | . | stack |  |
| [HBASE-2786](https://issues.apache.org/jira/browse/HBASE-2786) | TestHLog.testSplit hangs |  Major | . | Jean-Daniel Cryans | Nicolas Spiegelberg |
| [HBASE-2785](https://issues.apache.org/jira/browse/HBASE-2785) | TestScannerTimeout.test2772 is flaky |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2787](https://issues.apache.org/jira/browse/HBASE-2787) | PE is confused about flushCommits |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2707](https://issues.apache.org/jira/browse/HBASE-2707) | Can't recover from a dead ROOT server if any exceptions happens during log splitting |  Blocker | . | Jean-Daniel Cryans | stack |
| [HBASE-2806](https://issues.apache.org/jira/browse/HBASE-2806) | DNS hiccups cause uncaught NPE in HServerAddress#getBindAddress |  Minor | . | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2831](https://issues.apache.org/jira/browse/HBASE-2831) | Fix '$bin' path duplication in setup scripts |  Trivial | scripts | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2797](https://issues.apache.org/jira/browse/HBASE-2797) | Another NPE in ReadWriteConsistencyControl |  Blocker | . | Dave Latham | ryan rawson |
| [HBASE-2781](https://issues.apache.org/jira/browse/HBASE-2781) | ZKW.createUnassignedRegion doesn't make sure existing znode is in the right state |  Critical | . | Jean-Daniel Cryans | Karthik Ranganathan |
| [HBASE-2727](https://issues.apache.org/jira/browse/HBASE-2727) | Splits writing one file only is untenable; need dir of recovered edits ordered by sequenceid. |  Blocker | . | stack | stack |
| [HBASE-1025](https://issues.apache.org/jira/browse/HBASE-1025) | Reconstruction log playback has no bounds on memory used |  Major | . | stack | stack |
| [HBASE-2803](https://issues.apache.org/jira/browse/HBASE-2803) | Remove remaining Get code from Store.java,etc |  Major | . | ryan rawson | ryan rawson |
| [HBASE-2553](https://issues.apache.org/jira/browse/HBASE-2553) | Revisit IncrementColumnValue implementation in 0.22 |  Major | . | ryan rawson | ryan rawson |
| [HBASE-2840](https://issues.apache.org/jira/browse/HBASE-2840) | Remove the final remnants of the old Get code - the query matchers and other helper classes |  Major | . | ryan rawson |  |
| [HBASE-2843](https://issues.apache.org/jira/browse/HBASE-2843) | Re-add bloomfilter test over-zealously removed by HBASE-2625 |  Major | . | stack | stack |
| [HBASE-1876](https://issues.apache.org/jira/browse/HBASE-1876) | DroppedSnapshotException when flushing memstore after a datanode dies |  Critical | regionserver | Cosmin Lehene | Cosmin Lehene |
| [HBASE-2846](https://issues.apache.org/jira/browse/HBASE-2846) | Make rest server be same as thrift and avro servers |  Major | . | stack | stack |
| [HBASE-2851](https://issues.apache.org/jira/browse/HBASE-2851) | Remove testDynamicBloom() unit test |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2853](https://issues.apache.org/jira/browse/HBASE-2853) | TestLoadIncrementalHFiles fails on TRUNK |  Major | . | stack | stack |
| [HBASE-2854](https://issues.apache.org/jira/browse/HBASE-2854) | broken tests on trunk |  Major | . | ryan rawson |  |
| [HBASE-2858](https://issues.apache.org/jira/browse/HBASE-2858) | TestReplication.queueFailover fails half the time |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2869](https://issues.apache.org/jira/browse/HBASE-2869) | Regularize how we log sequenceids -- sometimes its myseqid, other times its sequence id, etc. |  Major | . | stack | stack |
| [HBASE-2866](https://issues.apache.org/jira/browse/HBASE-2866) | Region permanently offlined |  Blocker | . | Kannan Muthukkaruppan | Karthik Ranganathan |
| [HBASE-2874](https://issues.apache.org/jira/browse/HBASE-2874) | Unnecessary double-synchronization in ZooKeeperWrapper |  Trivial | Zookeeper | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2849](https://issues.apache.org/jira/browse/HBASE-2849) | HBase clients cannot recover when their ZooKeeper session becomes invalid |  Critical | Client | stack | Benoit Sigoure |
| [HBASE-2876](https://issues.apache.org/jira/browse/HBASE-2876) | HBase hbck: false positive error reported for parent regions that are in offline state in meta after a split |  Major | . | Kannan Muthukkaruppan | stack |
| [HBASE-2815](https://issues.apache.org/jira/browse/HBASE-2815) | not able to run the test suite in background because TestShell gets suspended on tty output |  Major | shell | Kannan Muthukkaruppan | Alexey Kovyrin |
| [HBASE-2852](https://issues.apache.org/jira/browse/HBASE-2852) | Bloom filter NPE |  Major | regionserver | Pranav Khaitan | Pranav Khaitan |
| [HBASE-2863](https://issues.apache.org/jira/browse/HBASE-2863) | HBASE-2553 removed an important edge case |  Major | . | ryan rawson | ryan rawson |
| [HBASE-2820](https://issues.apache.org/jira/browse/HBASE-2820) | hbck throws an error if hbase root dir isn't on default FS |  Trivial | scripts | Todd Lipcon | Todd Lipcon |
| [HBASE-2884](https://issues.apache.org/jira/browse/HBASE-2884) | TestHFileOutputFormat intermittent diff: LoadIncrementalHFiles should put expected data in table expected:\<2048\> but was:\<1024\> |  Major | . | Kannan Muthukkaruppan | Todd Lipcon |
| [HBASE-2890](https://issues.apache.org/jira/browse/HBASE-2890) | Initialize RPC JMX metrics on startup |  Minor | IPC/RPC | Gary Helmling | Gary Helmling |
| [HBASE-2755](https://issues.apache.org/jira/browse/HBASE-2755) | Duplicate assignment of a region after region server recovery |  Blocker | master | Kannan Muthukkaruppan | Jonathan Gray |
| [HBASE-2892](https://issues.apache.org/jira/browse/HBASE-2892) | Replication metrics aren't updated |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2461](https://issues.apache.org/jira/browse/HBASE-2461) | Split doesn't handle IOExceptions when creating new region reference files |  Blocker | regionserver | Todd Lipcon | stack |
| [HBASE-2823](https://issues.apache.org/jira/browse/HBASE-2823) | Entire Row Deletes not stored in Row+Col Bloom |  Major | Filters, regionserver | Nicolas Spiegelberg | Alexander Georgiev |
| [HBASE-2905](https://issues.apache.org/jira/browse/HBASE-2905) | Nullpointer Exception is throwed when insert mass data via rest interface |  Major | REST | Sandy Yin | Sandy Yin |
| [HBASE-2908](https://issues.apache.org/jira/browse/HBASE-2908) | Wrong order of null-check |  Trivial | mapreduce | Libor Dener | Libor Dener |
| [HBASE-2909](https://issues.apache.org/jira/browse/HBASE-2909) | SoftValueSortedMap is broken, can generate NPEs |  Blocker | Client | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2923](https://issues.apache.org/jira/browse/HBASE-2923) | Deadlock between HRegion.internalFlushCache and close |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2927](https://issues.apache.org/jira/browse/HBASE-2927) | BaseScanner gets stale HRegionInfo in some race cases |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2928](https://issues.apache.org/jira/browse/HBASE-2928) | Fault in logic in BinaryPrefixComparator leads to ArrayIndexOutOfBoundsException. |  Major | Filters | Pranav Khaitan | Pranav Khaitan |
| [HBASE-2924](https://issues.apache.org/jira/browse/HBASE-2924) | TestLogRolling doesn't use the right HLog half the time |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2931](https://issues.apache.org/jira/browse/HBASE-2931) | Do not throw RuntimeExceptions in RPC/HbaseObjectWritable code, ensure we log and rethrow as IOE |  Critical | . | Jonathan Gray | Karthik Ranganathan |
| [HBASE-2915](https://issues.apache.org/jira/browse/HBASE-2915) | Deadlock between HRegion.ICV and HRegion.close |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2901](https://issues.apache.org/jira/browse/HBASE-2901) | HBASE-2461 broke build |  Major | . | stack | stack |
| [HBASE-2897](https://issues.apache.org/jira/browse/HBASE-2897) | [stargate] RowResultGenerator should handle NoSuchColumnFamilyException |  Major | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-2920](https://issues.apache.org/jira/browse/HBASE-2920) | HTable.checkAndPut/Delete doesn't handle null values |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2944](https://issues.apache.org/jira/browse/HBASE-2944) | cannot alter bloomfilter setting for a column family from hbase shell |  Minor | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-2405](https://issues.apache.org/jira/browse/HBASE-2405) | Close, split, open of regions in RegionServer are run by a single thread only. |  Critical | . | stack | stack |
| [HBASE-1676](https://issues.apache.org/jira/browse/HBASE-1676) | load balancing on a large cluster doesn't work very well |  Major | . | ryan rawson |  |
| [HBASE-2391](https://issues.apache.org/jira/browse/HBASE-2391) | TableServers.isMasterRunning() skips checking master status if master field is not null |  Major | Client | Ted Yu |  |
| [HBASE-2954](https://issues.apache.org/jira/browse/HBASE-2954) | Fix broken build caused by hbase-2692 commit |  Major | . | stack | stack |
| [HBASE-2918](https://issues.apache.org/jira/browse/HBASE-2918) | SequenceFileLogWriter doesnt make it clear if there is no append by config or by missing lib/feature |  Minor | . | ryan rawson |  |
| [HBASE-2948](https://issues.apache.org/jira/browse/HBASE-2948) | bin/hbase  shell broken |  Major | . | Sebastian Bauer |  |
| [HBASE-2799](https://issues.apache.org/jira/browse/HBASE-2799) | "Append not enabled" warning should not show if hbase root dir isn't on DFS |  Minor | master | Todd Lipcon | stack |
| [HBASE-2943](https://issues.apache.org/jira/browse/HBASE-2943) | major\_compact (and other admin commands) broken for .META. |  Critical | . | Jonathan Gray | stack |
| [HBASE-2643](https://issues.apache.org/jira/browse/HBASE-2643) | Figure how to deal with eof splitting logs |  Blocker | . | stack | Nicolas Spiegelberg |
| [HBASE-2925](https://issues.apache.org/jira/browse/HBASE-2925) | LRU of HConnectionManager.HBASE\_INSTANCES breaks if HBaseConfiguration is changed |  Major | . | Robert Mahfoud |  |
| [HBASE-2962](https://issues.apache.org/jira/browse/HBASE-2962) | Add missing methods to HTableInterface (and HTable) |  Major | Client | Lars Francke |  |
| [HBASE-2964](https://issues.apache.org/jira/browse/HBASE-2964) | Deadlock when RS tries to RPC to itself inside SplitTransaction |  Blocker | IPC/RPC, regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-1485](https://issues.apache.org/jira/browse/HBASE-1485) | Wrong or indeterminate behavior when there are duplicate versions of a column |  Major | regionserver | Jonathan Gray | Pranav Khaitan |
| [HBASE-2942](https://issues.apache.org/jira/browse/HBASE-2942) | Custom filters should not require registration in HbaseObjectWritable |  Minor | Filters | Gary Helmling | Gary Helmling |
| [HBASE-2967](https://issues.apache.org/jira/browse/HBASE-2967) | Failed split: IOE 'File is Corrupt!' -- sync length not being written out to SequenceFile |  Blocker | . | stack | stack |
| [HBASE-2969](https://issues.apache.org/jira/browse/HBASE-2969) | missing sync in HTablePool.getTable() |  Minor | Client | Guilherme Mauro Germoglio Barbosa | Guilherme Mauro Germoglio Barbosa |
| [HBASE-2973](https://issues.apache.org/jira/browse/HBASE-2973) | NPE in LogCleaner |  Major | . | stack |  |
| [HBASE-2974](https://issues.apache.org/jira/browse/HBASE-2974) | LoadBalancer ArithmeticException: / by zero |  Major | . | stack | stack |
| [HBASE-2976](https://issues.apache.org/jira/browse/HBASE-2976) | Running HFile tool passing fully-qualified filename I get 'IllegalArgumentException: Wrong FS' |  Major | . | stack | stack |
| [HBASE-2975](https://issues.apache.org/jira/browse/HBASE-2975) | DFSClient names in master and RS should be unique |  Critical | master, regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-2961](https://issues.apache.org/jira/browse/HBASE-2961) | Close zookeeper when done with it (HCM, Master, and RS) |  Major | . | stack | stack |
| [HBASE-2978](https://issues.apache.org/jira/browse/HBASE-2978) | LoadBalancer IndexOutOfBoundsException |  Major | . | stack | stack |
| [HBASE-2983](https://issues.apache.org/jira/browse/HBASE-2983) | TestHLog unit test is mis-comparing in an assertion |  Minor | . | Alex Newman | Alex Newman |
| [HBASE-2720](https://issues.apache.org/jira/browse/HBASE-2720) | TestFromClientSide fails for client region cache prewarm on Hudson |  Major | Client, test | Mingjie Lai | Mingjie Lai |
| [HBASE-2986](https://issues.apache.org/jira/browse/HBASE-2986) | multi writable can npe causing client hang |  Blocker | . | ryan rawson | ryan rawson |
| [HBASE-2979](https://issues.apache.org/jira/browse/HBASE-2979) | Fix failing TestMultParrallel in hudson build |  Major | . | stack | stack |
| [HBASE-2997](https://issues.apache.org/jira/browse/HBASE-2997) | Performance fixes - profiler driven |  Critical | . | ryan rawson | ryan rawson |
| [HBASE-2941](https://issues.apache.org/jira/browse/HBASE-2941) | port HADOOP-6713 - threading scalability for RPC reads - to HBase |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3006](https://issues.apache.org/jira/browse/HBASE-3006) | Reading compressed HFile blocks causes way too many DFS RPC calls severly impacting performance |  Critical | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-3010](https://issues.apache.org/jira/browse/HBASE-3010) | Can't start/stop/start... cluster using new master |  Blocker | master | stack | stack |
| [HBASE-3015](https://issues.apache.org/jira/browse/HBASE-3015) | recovered.edits files not deleted if it only contain edits that have already been flushed; hurts perf for all future opens of the region |  Major | . | Kannan Muthukkaruppan | stack |
| [HBASE-3017](https://issues.apache.org/jira/browse/HBASE-3017) | More log pruning |  Major | . | stack | stack |
| [HBASE-3024](https://issues.apache.org/jira/browse/HBASE-3024) | NPE processing server crash in MetaEditor.addDaughter |  Major | . | stack | stack |
| [HBASE-3026](https://issues.apache.org/jira/browse/HBASE-3026) | Fixup of "missing" daughters on split is too aggressive |  Major | master | stack |  |
| [HBASE-3003](https://issues.apache.org/jira/browse/HBASE-3003) | ClassSize constants dont use 'final' |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3028](https://issues.apache.org/jira/browse/HBASE-3028) | No basescanner means no GC'ing of split, offlined parent regions |  Major | master | stack | stack |
| [HBASE-2992](https://issues.apache.org/jira/browse/HBASE-2992) | [replication] MalformedObjectNameException in ReplicationMetrics |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2989](https://issues.apache.org/jira/browse/HBASE-2989) | [replication] RSM won't cleanup after locking if 0 peers |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3037](https://issues.apache.org/jira/browse/HBASE-3037) | When new master joins running cluster does "Received report from unknown server -- telling it to STOP\_REGIONSERVER..." |  Major | . | stack | stack |
| [HBASE-3023](https://issues.apache.org/jira/browse/HBASE-3023) | NPE processing server crash in MetaReader. getServerUserRegions |  Major | . | stack | stack |
| [HBASE-3039](https://issues.apache.org/jira/browse/HBASE-3039) | Stuck in regionsInTransition because rebalance came in at same time as a split |  Major | master | stack | stack |
| [HBASE-3042](https://issues.apache.org/jira/browse/HBASE-3042) | Use LO4J in SequenceFileLogReader |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2995](https://issues.apache.org/jira/browse/HBASE-2995) | Incorrect dependency on Log class from Jetty |  Major | . | Lars Francke | stack |
| [HBASE-3036](https://issues.apache.org/jira/browse/HBASE-3036) | avro tests failing up on hudson (pass locally) |  Major | . | stack |  |
| [HBASE-3030](https://issues.apache.org/jira/browse/HBASE-3030) | The return code of many filesystem operations are not checked |  Major | regionserver | dhruba borthakur | dhruba borthakur |
| [HBASE-3038](https://issues.apache.org/jira/browse/HBASE-3038) | WALReaderFSDataInputStream.getPos() fails if Filesize \> MAX\_INT |  Critical | regionserver | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3047](https://issues.apache.org/jira/browse/HBASE-3047) | If new master crashes, restart is messy |  Major | . | stack | stack |
| [HBASE-3054](https://issues.apache.org/jira/browse/HBASE-3054) | Remore TestEmptyMetaInfo; it doesn't make sense any more. |  Major | . | stack | stack |
| [HBASE-3056](https://issues.apache.org/jira/browse/HBASE-3056) | Fix ordering in ZKWatcher constructor to prevent weird race condition |  Major | Zookeeper | Jonathan Gray | Jonathan Gray |
| [HBASE-3057](https://issues.apache.org/jira/browse/HBASE-3057) | Race condition when closing regions that causes flakiness in TestRestartCluster |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-3058](https://issues.apache.org/jira/browse/HBASE-3058) | Fix REST tests on trunk |  Critical | REST | Jonathan Gray | Jonathan Gray |
| [HBASE-3066](https://issues.apache.org/jira/browse/HBASE-3066) | We don't put the port for hregionserver up into znode since new master |  Major | . | stack | stack |
| [HBASE-2825](https://issues.apache.org/jira/browse/HBASE-2825) | Scans respect row locks |  Minor | documentation | Bernardo Signori | ryan rawson |
| [HBASE-3068](https://issues.apache.org/jira/browse/HBASE-3068) | IllegalStateException when new server comes online, is given 200 regions to open and 200th region gets timed out of regions in transition |  Major | . | stack | stack |
| [HBASE-3064](https://issues.apache.org/jira/browse/HBASE-3064) | Long sleeping in HConnectionManager after thread is interrupted |  Major | Client, IPC/RPC | Bruno Dumon | Bruno Dumon |
| [HBASE-2982](https://issues.apache.org/jira/browse/HBASE-2982) | Maven 3 doesn't like duplicate dependencies in hbase/pom.xml |  Major | build | James Kennedy | Lars Francke |
| [HBASE-3063](https://issues.apache.org/jira/browse/HBASE-3063) | TestThriftServer failing in TRUNK |  Major | . | stack | stack |
| [HBASE-2337](https://issues.apache.org/jira/browse/HBASE-2337) | log recovery: splitLog deletes old logs prematurely |  Blocker | . | Kannan Muthukkaruppan | Nicolas Spiegelberg |
| [HBASE-2644](https://issues.apache.org/jira/browse/HBASE-2644) | Investigate sync 'voodoo' splitting WALs |  Major | . | stack |  |
| [HBASE-2228](https://issues.apache.org/jira/browse/HBASE-2228) | Region close needs to be  fast; e.g. if compacting, abandon it |  Major | . | stack | Nicolas Spiegelberg |
| [HBASE-3073](https://issues.apache.org/jira/browse/HBASE-3073) | New APIs for Result, faster implementation for some calls |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3059](https://issues.apache.org/jira/browse/HBASE-3059) | TestReadWriteConsistencyControl occasionally hangs |  Major | . | Hairong Kuang | Hairong Kuang |
| [HBASE-2906](https://issues.apache.org/jira/browse/HBASE-2906) | [rest/stargate] URI decoding in RowResource |  Major | REST | Kieron Briggs | Andrew Purtell |
| [HBASE-3008](https://issues.apache.org/jira/browse/HBASE-3008) | Memstore.updateColumnValue passes wrong flag to heapSizeChange |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3062](https://issues.apache.org/jira/browse/HBASE-3062) | ZooKeeper KeeperException$ConnectionLossException is a "recoverable" exception; we should retry a while on server startup at least. |  Major | . | stack | stack |
| [HBASE-3074](https://issues.apache.org/jira/browse/HBASE-3074) | Zookeeper test failing on hudson |  Major | . | stack | stack |
| [HBASE-3089](https://issues.apache.org/jira/browse/HBASE-3089) | REST tests are broken locally and up in hudson |  Major | . | stack | stack |
| [HBASE-3085](https://issues.apache.org/jira/browse/HBASE-3085) | TestSchemaResource broken on TRUNK up on HUDSON |  Major | . | stack | stack |
| [HBASE-3080](https://issues.apache.org/jira/browse/HBASE-3080) | TestAdmin hanging on hudson |  Major | . | stack | stack |
| [HBASE-3094](https://issues.apache.org/jira/browse/HBASE-3094) | Fixes for miscellaneous broken tests |  Major | . | stack | stack |
| [HBASE-3060](https://issues.apache.org/jira/browse/HBASE-3060) | [replication] Reenable replication on trunk with unit tests |  Blocker | Replication, test | Jonathan Gray | Jean-Daniel Cryans |
| [HBASE-3104](https://issues.apache.org/jira/browse/HBASE-3104) | Disable TestMultiClusters; it doesn't really test anything and HBaseTestingUtility needs more work for this to pass anyways |  Major | . | stack |  |
| [HBASE-3044](https://issues.apache.org/jira/browse/HBASE-3044) | [replication] ReplicationSource won't cleanup logs if there's nothing to replicate |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3041](https://issues.apache.org/jira/browse/HBASE-3041) | [replication] ReplicationSink shouldn't kill the whole RS when it fails to replicate |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3111](https://issues.apache.org/jira/browse/HBASE-3111) | TestTableMapReduce broken up on hudson |  Major | . | stack | stack |
| [HBASE-3113](https://issues.apache.org/jira/browse/HBASE-3113) | Don't reassign regions if cluster is being shutdown |  Major | . | stack | stack |
| [HBASE-3100](https://issues.apache.org/jira/browse/HBASE-3100) | TestMergeTable failing in TRUNK |  Major | . | stack | stack |
| [HBASE-2933](https://issues.apache.org/jira/browse/HBASE-2933) | Skip EOF Errors during Log Recovery |  Critical | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3081](https://issues.apache.org/jira/browse/HBASE-3081) | Log Splitting & Replay: Distinguish between Network IOE and Parsing IOE |  Major | io, master, regionserver, Replication | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3098](https://issues.apache.org/jira/browse/HBASE-3098) | TestMetaReaderEditor is broken in TRUNK; hangs |  Critical | . | stack | stack |
| [HBASE-3110](https://issues.apache.org/jira/browse/HBASE-3110) | TestReplicationSink failing in TRUNK up on Hudson |  Major | . | stack |  |
| [HBASE-3088](https://issues.apache.org/jira/browse/HBASE-3088) | TestAvroServer and TestThriftServer broken because use same table in all tests and tests enable/disable/delete |  Major | . | stack | stack |
| [HBASE-3101](https://issues.apache.org/jira/browse/HBASE-3101) | bin assembly doesn't include -tests or -source jars |  Major | build | Todd Lipcon | Todd Lipcon |
| [HBASE-3121](https://issues.apache.org/jira/browse/HBASE-3121) | [rest] Do not perform cache control when returning results |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2669](https://issues.apache.org/jira/browse/HBASE-2669) | HCM.shutdownHook causes data loss with hbase.client.write.buffer != 0 |  Critical | Client | Benoit Sigoure | stack |
| [HBASE-2485](https://issues.apache.org/jira/browse/HBASE-2485) | Persist Master in-memory state so on restart or failover, new instance can pick up where the old left off |  Major | . | stack | Jonathan Gray |
| [HBASE-2985](https://issues.apache.org/jira/browse/HBASE-2985) | HRegionServer.multi() no longer calls HRegion.put(List) when possible |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3114](https://issues.apache.org/jira/browse/HBASE-3114) | Test up on hudson are leaking zookeeper ensembles |  Major | test | stack | stack |
| [HBASE-3031](https://issues.apache.org/jira/browse/HBASE-3031) | CopyTable MR job named "Copy Table" in Driver |  Minor | . | Jean-Daniel Cryans | stack |
| [HBASE-2156](https://issues.apache.org/jira/browse/HBASE-2156) | HBASE-2037 broke Scan |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3128](https://issues.apache.org/jira/browse/HBASE-3128) | On assign, if ConnectException, reassign another server |  Major | . | stack | stack |
| [HBASE-2658](https://issues.apache.org/jira/browse/HBASE-2658) | REST (stargate) TableRegionModel Regions need to be updated to work w/ new region naming convention from HBASE-2531 |  Major | . | stack | stack |
| [HBASE-3140](https://issues.apache.org/jira/browse/HBASE-3140) | Rest schema modification throw null pointer exception |  Major | REST | David Worms | David Worms |
| [HBASE-2998](https://issues.apache.org/jira/browse/HBASE-2998) | rolling-restart.sh shouldn't rely on zoo.cfg |  Critical | . | Jean-Daniel Cryans | stack |
| [HBASE-3143](https://issues.apache.org/jira/browse/HBASE-3143) | Adding the tests' hbase-site.xml to the jar breaks some clients |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2984](https://issues.apache.org/jira/browse/HBASE-2984) | [shell] Altering a family shouldn't reset to default unchanged attributes |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2514](https://issues.apache.org/jira/browse/HBASE-2514) | RegionServer should refuse to be assigned a region that use LZO when LZO isn't available |  Critical | regionserver | Benoit Sigoure | ryan rawson |
| [HBASE-3139](https://issues.apache.org/jira/browse/HBASE-3139) | Server shutdown processor stuck because meta not online |  Major | . | stack | stack |
| [HBASE-3136](https://issues.apache.org/jira/browse/HBASE-3136) | Stale reads from ZK can break the atomic CAS operations we have in ZKAssign |  Blocker | Zookeeper | Jonathan Gray | Jonathan Gray |
| [HBASE-3147](https://issues.apache.org/jira/browse/HBASE-3147) | Regions stuck in transition after rolling restart, perpetual timeout handling but nothing happens |  Major | . | stack | stack |
| [HBASE-3158](https://issues.apache.org/jira/browse/HBASE-3158) | Bloom File Writes Broken if keySize is large |  Blocker | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3155](https://issues.apache.org/jira/browse/HBASE-3155) | HFile.appendMetaBlock() uses wrong comparator |  Critical | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3012](https://issues.apache.org/jira/browse/HBASE-3012) | TOF doesn't take zk client port for remote clusters |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3091](https://issues.apache.org/jira/browse/HBASE-3091) | Fix TestKillingServersFromMaster in TRUNK; it just hangs since new master went in |  Critical | . | stack | stack |
| [HBASE-3159](https://issues.apache.org/jira/browse/HBASE-3159) | Double play of OpenedRegionHandler for a single region; fails second time through and aborts Master |  Blocker | . | stack | Jonathan Gray |
| [HBASE-3169](https://issues.apache.org/jira/browse/HBASE-3169) | NPE when master joins running cluster if a RIT references a RS no longer present |  Major | master | stack | stack |
| [HBASE-3172](https://issues.apache.org/jira/browse/HBASE-3172) | Reverse order of AssignmentManager and MetaNodeTracker in ZooKeeperWatcher |  Critical | master, Zookeeper | Jonathan Gray | Jonathan Gray |
| [HBASE-3175](https://issues.apache.org/jira/browse/HBASE-3175) | Commit of HBASE-3160 broke TestPriorityCompactionQueue up on hudson |  Critical | test | Jonathan Gray | Nicolas Spiegelberg |
| [HBASE-3163](https://issues.apache.org/jira/browse/HBASE-3163) | If we timeout PENDING\_CLOSE and send another closeRegion RPC, need to handle NSRE from RS (comes as a RemoteException) |  Critical | master | Jonathan Gray | Jonathan Gray |
| [HBASE-3164](https://issues.apache.org/jira/browse/HBASE-3164) | Handle case where we open META, ROOT has been closed but znode location not deleted yet, and try to update META location in ROOT |  Critical | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-2861](https://issues.apache.org/jira/browse/HBASE-2861) | regionserver's logsyncer thread hangs on DFSClient$DFSOutputStream.waitForAckedSeqno |  Critical | . | Kannan Muthukkaruppan | Hairong Kuang |
| [HBASE-3183](https://issues.apache.org/jira/browse/HBASE-3183) | Commits of HBASE-3102 and HBASE-3160 broke TestHeapSize |  Major | io, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3184](https://issues.apache.org/jira/browse/HBASE-3184) | Xmx setting in pom to use for tests/surefire does not appear to work |  Major | build | Jonathan Gray | Jonathan Gray |
| [HBASE-3179](https://issues.apache.org/jira/browse/HBASE-3179) | Enable ReplicationLogsCleaner only if replication is, and fix its test |  Critical | master, Replication | Jonathan Gray | Jean-Daniel Cryans |
| [HBASE-3182](https://issues.apache.org/jira/browse/HBASE-3182) | If server hosting META dies or is stopping while processing another server shutdown, IOE accessing META stop shutdown handler from finishing |  Critical | master | Jonathan Gray | Jonathan Gray |
| [HBASE-3185](https://issues.apache.org/jira/browse/HBASE-3185) | User-triggered compactions are triggering splits! |  Critical | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3189](https://issues.apache.org/jira/browse/HBASE-3189) | Stagger Major Compactions |  Minor | regionserver | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3151](https://issues.apache.org/jira/browse/HBASE-3151) | NPE when trying to read regioninfo from .META. |  Major | . | stack | stack |
| [HBASE-3191](https://issues.apache.org/jira/browse/HBASE-3191) | FilterList with MUST\_PASS\_ONE and SCVF isn't working |  Minor | Filters | Stefan Seelmann |  |
| [HBASE-2828](https://issues.apache.org/jira/browse/HBASE-2828) | HTable unnecessarily coupled with HMaster |  Major | Client | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2471](https://issues.apache.org/jira/browse/HBASE-2471) | Splitting logs, we'll make an output file though the region no longer exists |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-3095](https://issues.apache.org/jira/browse/HBASE-3095) | Client needs to reconnect if it expires its zk session |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2935](https://issues.apache.org/jira/browse/HBASE-2935) | Refactor "Corrupt Data" Tests in TestHLogSplit |  Minor | test | Nicolas Spiegelberg | Alex Newman |
| [HBASE-3201](https://issues.apache.org/jira/browse/HBASE-3201) | Add accounting of empty regioninfo\_qualifier rows in meta to hbasefsck. |  Major | . | stack | stack |
| [HBASE-3202](https://issues.apache.org/jira/browse/HBASE-3202) | Closing a region, if we get a ConnectException, handle it rather than abort |  Major | . | stack | stack |
| [HBASE-3198](https://issues.apache.org/jira/browse/HBASE-3198) | Log rolling archives files prematurely |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3203](https://issues.apache.org/jira/browse/HBASE-3203) | We can get an order to open a region while shutting down and it'll hold up regionserver shutdown |  Major | . | stack |  |
| [HBASE-3204](https://issues.apache.org/jira/browse/HBASE-3204) | Reenable deferred log flush |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3195](https://issues.apache.org/jira/browse/HBASE-3195) | Fix the new TestTransform breakage up on hudson |  Major | . | stack | Andrew Purtell |
| [HBASE-3205](https://issues.apache.org/jira/browse/HBASE-3205) | TableRecordReaderImpl.restart NPEs when first next is restarted |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3208](https://issues.apache.org/jira/browse/HBASE-3208) | HLog.findMemstoresWithEditsOlderThan needs to look for edits that are equal to too |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3141](https://issues.apache.org/jira/browse/HBASE-3141) | Master RPC server needs to be started before an RS can check in |  Critical | master | Jonathan Gray | ryan rawson |
| [HBASE-3112](https://issues.apache.org/jira/browse/HBASE-3112) | Enable and disable of table needs a bit of loving in new master |  Critical | . | stack | stack |
| [HBASE-3194](https://issues.apache.org/jira/browse/HBASE-3194) | HBase should run on both secure and vanilla versions of Hadoop 0.20 |  Major | . | Gary Helmling | stack |
| [HBASE-3207](https://issues.apache.org/jira/browse/HBASE-3207) | If we get IOException when closing a region, we should still remove it from online regions and complete the close in ZK |  Major | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3199](https://issues.apache.org/jira/browse/HBASE-3199) | large response handling: some fixups and cleanups |  Major | . | Kannan Muthukkaruppan | ryan rawson |
| [HBASE-3212](https://issues.apache.org/jira/browse/HBASE-3212) | More testing of enable/disable uncovered base condition not in place; i.e. that only one enable/disable runs at a time |  Major | . | stack | stack |
| [HBASE-3213](https://issues.apache.org/jira/browse/HBASE-3213) | If do abort of backup master will get NPE instead of graceful abort |  Minor | master | Jonathan Gray | Jonathan Gray |
| [HBASE-3219](https://issues.apache.org/jira/browse/HBASE-3219) | Split parents are reassigned on restart and on disable/enable |  Major | . | stack | stack |
| [HBASE-3222](https://issues.apache.org/jira/browse/HBASE-3222) | Regionserver region listing in UI is no longer ordered. |  Major | . | stack | stack |
| [HBASE-3215](https://issues.apache.org/jira/browse/HBASE-3215) | TestRollingRestart failing on hudson |  Major | test | Jonathan Gray | Jonathan Gray |
| [HBASE-3214](https://issues.apache.org/jira/browse/HBASE-3214) | TestMasterFailover.testMasterFailoverWithMockedRITOnDeadRS is failing |  Major | test | Jonathan Gray | Gary Helmling |
| [HBASE-3221](https://issues.apache.org/jira/browse/HBASE-3221) | Race between splitting and disabling |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3079](https://issues.apache.org/jira/browse/HBASE-3079) | Shell displaying uninformative exceptions |  Major | shell | Jonathan Gray | ryan rawson |
| [HBASE-3224](https://issues.apache.org/jira/browse/HBASE-3224) | NPE in KeyValue$KVComparator.compare when compacting |  Critical | . | Jean-Daniel Cryans | ryan rawson |
| [HBASE-3233](https://issues.apache.org/jira/browse/HBASE-3233) | Fix Long Running Stats |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3232](https://issues.apache.org/jira/browse/HBASE-3232) | Fix KeyOnlyFilter + Add Value Length |  Blocker | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3235](https://issues.apache.org/jira/browse/HBASE-3235) | Intermittent incrementColumnValue failure in TestHRegion |  Blocker | regionserver | Gary Helmling | Gary Helmling |
| [HBASE-3239](https://issues.apache.org/jira/browse/HBASE-3239) | Handle null regions to flush in HLog.cleanOldLogs |  Blocker | regionserver | Prakash Khemani | Kannan Muthukkaruppan |
| [HBASE-3241](https://issues.apache.org/jira/browse/HBASE-3241) | check to see if we exceeded hbase.regionserver.maxlogs limit is incorrect |  Blocker | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-3237](https://issues.apache.org/jira/browse/HBASE-3237) | Split request accepted -- BUT CURRENTLY A NOOP |  Blocker | . | Todd Lipcon | Jean-Daniel Cryans |
| [HBASE-3252](https://issues.apache.org/jira/browse/HBASE-3252) | TestZooKeeperNodeTracker sometimes fails due to a race condition in test notification |  Minor | test | Gary Helmling |  |
| [HBASE-3230](https://issues.apache.org/jira/browse/HBASE-3230) | Refresh our hadoop jar and update zookeeper to just-released 3.3.2. |  Major | . | stack | stack |
| [HBASE-3253](https://issues.apache.org/jira/browse/HBASE-3253) | Thrift's missing from all the repositories in pom.xml |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3264](https://issues.apache.org/jira/browse/HBASE-3264) | Remove unnecessary Guava Dependency |  Minor | mapreduce | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3249](https://issues.apache.org/jira/browse/HBASE-3249) | Typing 'help shutdown' in the shell shouldn't shutdown the cluster |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-3258](https://issues.apache.org/jira/browse/HBASE-3258) | EOF when version file is empty |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3262](https://issues.apache.org/jira/browse/HBASE-3262) | TestHMasterRPCException uses non-ephemeral port for master |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-3272](https://issues.apache.org/jira/browse/HBASE-3272) | Remove no longer used options |  Major | . | stack | stack |
| [HBASE-3259](https://issues.apache.org/jira/browse/HBASE-3259) | Can't kill the region servers when they wait on the master or the cluster state znode |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3269](https://issues.apache.org/jira/browse/HBASE-3269) | HBase table truncate semantics seems broken as "disable" table is now async by default. |  Critical | . | Suraj Varma | stack |
| [HBASE-3273](https://issues.apache.org/jira/browse/HBASE-3273) | Set the ZK default timeout to 3 minutes |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3261](https://issues.apache.org/jira/browse/HBASE-3261) | NPE out of HRS.run at startup when clock is out of sync |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3277](https://issues.apache.org/jira/browse/HBASE-3277) | HBase Shell zk\_dump command broken |  Major | shell | Suraj Varma | Suraj Varma |
| [HBASE-3280](https://issues.apache.org/jira/browse/HBASE-3280) | YouAreDeadException being swallowed in HRS getMaster() |  Major | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3267](https://issues.apache.org/jira/browse/HBASE-3267) | close\_region shell command breaks region |  Critical | master, regionserver, shell | Todd Lipcon | stack |
| [HBASE-3282](https://issues.apache.org/jira/browse/HBASE-3282) | Need to retain DeadServers to ensure we don't allow previously expired RS instances to rejoin cluster |  Major | master | Jonathan Gray | Jonathan Gray |
| [HBASE-3283](https://issues.apache.org/jira/browse/HBASE-3283) | NPE in AssignmentManager if processing shutdown of RS who doesn't have any regions assigned to it |  Major | master | Jonathan Gray | Jonathan Gray |
| [HBASE-3265](https://issues.apache.org/jira/browse/HBASE-3265) | Regionservers waiting for ROOT while Master waiting for RegionServers |  Critical | . | Todd Lipcon | stack |
| [HBASE-3263](https://issues.apache.org/jira/browse/HBASE-3263) | Stack overflow in AssignmentManager |  Blocker | master | Todd Lipcon | stack |
| [HBASE-3234](https://issues.apache.org/jira/browse/HBASE-3234) | hdfs-724 "breaks" TestHBaseTestingUtility multiClusters |  Critical | . | stack | Hairong Kuang |
| [HBASE-3286](https://issues.apache.org/jira/browse/HBASE-3286) | Master passes IP and not hostname back to region server |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3297](https://issues.apache.org/jira/browse/HBASE-3297) | If rows in .META. with no HRegionInfo cell, then hbck fails read of .META. |  Major | . | stack | stack |
| [HBASE-3294](https://issues.apache.org/jira/browse/HBASE-3294) | WARN org.apache.hadoop.hbase.regionserver.Store: Not in set (double-remove?) org.apache.hadoop.hbase.regionserver.StoreScanner@76607d3d |  Major | . | stack | stack |
| [HBASE-3299](https://issues.apache.org/jira/browse/HBASE-3299) | If failed open, we don't output the IOE |  Major | . | stack |  |
| [HBASE-3291](https://issues.apache.org/jira/browse/HBASE-3291) | If split happens while regionserver is going down, we can stick open. |  Major | . | stack | stack |
| [HBASE-3146](https://issues.apache.org/jira/browse/HBASE-3146) | document feature "hbase.regionserver.codecs" |  Major | . | ryan rawson | stack |
| [HBASE-3295](https://issues.apache.org/jira/browse/HBASE-3295) | Dropping a 1k+ regions table likely ends in a client socket timeout and it's very confusing |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-3301](https://issues.apache.org/jira/browse/HBASE-3301) | Treat java.net.SocketTimeoutException same as ConnectException assigning/unassigning regions. |  Major | . | stack | stack |
| [HBASE-3296](https://issues.apache.org/jira/browse/HBASE-3296) | Newly created table ends up disabled instead of assigned |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3304](https://issues.apache.org/jira/browse/HBASE-3304) | Get spurious master fails during bootup |  Blocker | . | ryan rawson | ryan rawson |
| [HBASE-3298](https://issues.apache.org/jira/browse/HBASE-3298) | Regionserver can close during a split causing double assignment |  Blocker | . | ryan rawson | ryan rawson |
| [HBASE-3309](https://issues.apache.org/jira/browse/HBASE-3309) | " Not running balancer because dead regionserver processing" is a lie |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3311](https://issues.apache.org/jira/browse/HBASE-3311) | Addendum patch on HBASE-3298 broke buid |  Major | . | stack |  |
| [HBASE-3310](https://issues.apache.org/jira/browse/HBASE-3310) | Failing creating/altering table with compression agrument from the HBase shell |  Major | shell | Igor Ranitovic | Igor Ranitovic |
| [HBASE-3314](https://issues.apache.org/jira/browse/HBASE-3314) | [shell] 'move' is broken |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3315](https://issues.apache.org/jira/browse/HBASE-3315) | Add debug output for when balancer makes bad balance |  Major | . | stack | stack |
| [HBASE-3278](https://issues.apache.org/jira/browse/HBASE-3278) | AssertionError in LoadBalancer |  Major | . | Jean-Daniel Cryans | Jonathan Gray |
| [HBASE-3173](https://issues.apache.org/jira/browse/HBASE-3173) | HBase 2984 breaks ability to specify BLOOMFILTER & COMPRESSION via shell |  Minor | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-3318](https://issues.apache.org/jira/browse/HBASE-3318) | Split rollback leaves parent with writesEnabled=false |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3347](https://issues.apache.org/jira/browse/HBASE-3347) | Can't truncate/disable table that has rows in .META. that have empty info:regioninfo column |  Major | . | stack | stack |
| [HBASE-3321](https://issues.apache.org/jira/browse/HBASE-3321) | Replication.join shouldn't clear the logs znode |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3352](https://issues.apache.org/jira/browse/HBASE-3352) | enabling a non-existent table from shell prints no error |  Major | . | Todd Lipcon | stack |
| [HBASE-3353](https://issues.apache.org/jira/browse/HBASE-3353) | table.jsp doesn't handle entries in META without server info |  Critical | master | Todd Lipcon | Todd Lipcon |
| [HBASE-3351](https://issues.apache.org/jira/browse/HBASE-3351) | ReplicationZookeeper goes to ZK every time a znode is modified |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3326](https://issues.apache.org/jira/browse/HBASE-3326) | Replication state's znode should be created else it defaults to false |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3337](https://issues.apache.org/jira/browse/HBASE-3337) | Restore HBCK fix of unassignment and dupe assignment for new master |  Critical | master, util | Jonathan Gray | Jonathan Gray |
| [HBASE-3355](https://issues.apache.org/jira/browse/HBASE-3355) | Stopping a stopped cluster leaks an HMaster |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3356](https://issues.apache.org/jira/browse/HBASE-3356) | Add more checks in replication if RS is stopped |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3332](https://issues.apache.org/jira/browse/HBASE-3332) | Regions stuck in transition after RS failure |  Blocker | . | Todd Lipcon | Jonathan Gray |
| [HBASE-3358](https://issues.apache.org/jira/browse/HBASE-3358) | Recovered replication queue wait on themselves when terminating |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3359](https://issues.apache.org/jira/browse/HBASE-3359) | LogRoller not added as a WAL listener when replication is enabled |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3360](https://issues.apache.org/jira/browse/HBASE-3360) | ReplicationLogCleaner is enabled by default in 0.90 -- causes NPE |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-3365](https://issues.apache.org/jira/browse/HBASE-3365) | EOFE contacting crashed RS causes Master abort |  Major | . | stack | stack |
| [HBASE-3364](https://issues.apache.org/jira/browse/HBASE-3364) | ReplicationZookeeper.lockOtherRS doesn't return false when lock exists |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3362](https://issues.apache.org/jira/browse/HBASE-3362) | If .META. offline between OPENING and OPENED, then wrong server location in .META. is possible |  Critical | . | stack | stack |
| [HBASE-3366](https://issues.apache.org/jira/browse/HBASE-3366) | WALObservers should be notified before the lock |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3367](https://issues.apache.org/jira/browse/HBASE-3367) | Failed log split not retried |  Blocker | . | Jean-Daniel Cryans |  |
| [HBASE-3370](https://issues.apache.org/jira/browse/HBASE-3370) | ReplicationSource.openReader fails to locate HLogs when they aren't split yet |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3371](https://issues.apache.org/jira/browse/HBASE-3371) | Race in TestReplication can make it fail |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3323](https://issues.apache.org/jira/browse/HBASE-3323) | OOME in master splitting logs |  Blocker | master | Todd Lipcon | Todd Lipcon |
| [HBASE-3343](https://issues.apache.org/jira/browse/HBASE-3343) | Server not shutting down after losing log lease |  Critical | . | Todd Lipcon | stack |
| [HBASE-3381](https://issues.apache.org/jira/browse/HBASE-3381) | Interrupt of a region open comes across as a successful open |  Major | . | stack | stack |
| [HBASE-3380](https://issues.apache.org/jira/browse/HBASE-3380) | Master failover can split logs of live servers |  Blocker | . | Jean-Daniel Cryans | Jonathan Gray |
| [HBASE-3386](https://issues.apache.org/jira/browse/HBASE-3386) | NPE in TableRecordReaderImpl.restart |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3383](https://issues.apache.org/jira/browse/HBASE-3383) | [0.90RC1] bin/hbase script displays "no such file" warning on target/cached\_classpath.txt |  Trivial | shell | Tatsuya Kawano | Jean-Daniel Cryans |
| [HBASE-3344](https://issues.apache.org/jira/browse/HBASE-3344) | Master aborts after RPC to server that was shutting down |  Blocker | . | Todd Lipcon |  |
| [HBASE-3392](https://issues.apache.org/jira/browse/HBASE-3392) | Update backport of InputSampler |  Major | mapreduce | Todd Lipcon | Todd Lipcon |
| [HBASE-3408](https://issues.apache.org/jira/browse/HBASE-3408) | AssignmentManager NullPointerException |  Major | master | Matt Corgan |  |
| [HBASE-3388](https://issues.apache.org/jira/browse/HBASE-3388) | NPE processRegionInTransition(AssignmentManager.java:264) doing rolling-restart.sh |  Major | . | stack |  |
| [HBASE-3402](https://issues.apache.org/jira/browse/HBASE-3402) | Web UI shows two META regions |  Critical | master, regionserver | Todd Lipcon | stack |
| [HBASE-3409](https://issues.apache.org/jira/browse/HBASE-3409) | Failed server shutdown processing when retrying hlog split |  Blocker | . | Todd Lipcon | stack |
| [HBASE-3410](https://issues.apache.org/jira/browse/HBASE-3410) | Unable to set/modify TTL on a column family using the shell. |  Major | . | Mathias Herberts | stack |
| [HBASE-3412](https://issues.apache.org/jira/browse/HBASE-3412) | HLogSplitter should handle missing HLogs |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3420](https://issues.apache.org/jira/browse/HBASE-3420) | Handling a big rebalance, we can queue multiple instances of a Close event; messes up state |  Major | . | stack | stack |
| [HBASE-3401](https://issues.apache.org/jira/browse/HBASE-3401) | Region IPC operations should be high priority |  Major | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-3418](https://issues.apache.org/jira/browse/HBASE-3418) | Increment operations can break when qualifiers are split between memstore/snapshot and storefiles |  Critical | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-3403](https://issues.apache.org/jira/browse/HBASE-3403) | Region orphaned after failure during split |  Blocker | . | Todd Lipcon | stack |
| [HBASE-3430](https://issues.apache.org/jira/browse/HBASE-3430) | hbase-daemon.sh should clean up PID files on process stop |  Trivial | scripts | Gary Helmling | Gary Helmling |
| [HBASE-3384](https://issues.apache.org/jira/browse/HBASE-3384) | Move User-Triggered Compactions to Store |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3423](https://issues.apache.org/jira/browse/HBASE-3423) | hbase-env.sh over-rides HBASE\_OPTS incorrectly. |  Major | . | Ted Dunning |  |
| [HBASE-3275](https://issues.apache.org/jira/browse/HBASE-3275) | [rest] No gzip/deflate content encoding support |  Major | . | Andrew Purtell | Andrew Purtell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-410](https://issues.apache.org/jira/browse/HBASE-410) | [testing] Speed up the test suite |  Minor | test | Bryan Duxbury | stack |
| [HBASE-2013](https://issues.apache.org/jira/browse/HBASE-2013) | Add useful helpers to HBaseTestingUtility.java |  Trivial | . | Lars George | Lars George |
| [HBASE-2279](https://issues.apache.org/jira/browse/HBASE-2279) | Hbase Shell does not have any tests |  Minor | test | Alexey Kovyrin | Alexey Kovyrin |
| [HBASE-2316](https://issues.apache.org/jira/browse/HBASE-2316) | Need an ability to run shell tests w/o invoking junit |  Minor | scripts | Alexey Kovyrin | Alexey Kovyrin |
| [HBASE-2625](https://issues.apache.org/jira/browse/HBASE-2625) | Make testDynamicBloom()'s "randomness" deterministic |  Minor | test | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2661](https://issues.apache.org/jira/browse/HBASE-2661) | Add test case for row atomicity |  Major | regionserver, test | Todd Lipcon | Todd Lipcon |
| [HBASE-2676](https://issues.apache.org/jira/browse/HBASE-2676) | TestInfoServers hardcodes listen ports |  Major | test | Todd Lipcon | Todd Lipcon |
| [HBASE-2768](https://issues.apache.org/jira/browse/HBASE-2768) | TestFilter tearDown is in wrong order |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-2345](https://issues.apache.org/jira/browse/HBASE-2345) | Add Test in 0.20 to Check for proper HDFS-200 append/sync support |  Minor | test | Nicolas Spiegelberg | Nicolas Spiegelberg |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1993](https://issues.apache.org/jira/browse/HBASE-1993) | Set up convenient ssh between instances |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2012](https://issues.apache.org/jira/browse/HBASE-2012) | [EC2] LZO support |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2032](https://issues.apache.org/jira/browse/HBASE-2032) | [EC2] Add support for installation of user packages when instances start up |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1982](https://issues.apache.org/jira/browse/HBASE-1982) | [EC2] handle potentially large and uneven instance startup times |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2064](https://issues.apache.org/jira/browse/HBASE-2064) | Cannot disable a table if at the same the Master is moving its regions around |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2065](https://issues.apache.org/jira/browse/HBASE-2065) | Cannot disable a table if any of its region is opening at the same time |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2080](https://issues.apache.org/jira/browse/HBASE-2080) | [EC2] Support multivolume local instance storage |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2083](https://issues.apache.org/jira/browse/HBASE-2083) | [EC2] HDFS DataNode no longer required on master |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2084](https://issues.apache.org/jira/browse/HBASE-2084) | [EC2] JAVA\_HOME handling broken |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2100](https://issues.apache.org/jira/browse/HBASE-2100) | [EC2] Adjust fs.file-max |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2103](https://issues.apache.org/jira/browse/HBASE-2103) | [EC2] pull version from build |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2131](https://issues.apache.org/jira/browse/HBASE-2131) | [EC2] Mount data volumes as xfs, noatime |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2070](https://issues.apache.org/jira/browse/HBASE-2070) | Collect HLogs and delete them after a period of time |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2242](https://issues.apache.org/jira/browse/HBASE-2242) | [EC2] Downgrade JDK to 6u17 and rebuild AMIs |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2263](https://issues.apache.org/jira/browse/HBASE-2263) | [stargate] multiuser mode: authenticator for zookeeper |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2274](https://issues.apache.org/jira/browse/HBASE-2274) | [stargate] support specification of filters for scanners: JSON descriptors |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2261](https://issues.apache.org/jira/browse/HBASE-2261) | The javadoc in WhileMatchFilter and it's tests in TestFilter are not accurate/wrong. |  Major | Filters | Dan Washusen |  |
| [HBASE-2327](https://issues.apache.org/jira/browse/HBASE-2327) | [EC2] Allocate elastic IP addresses for ZK and master nodes |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2319](https://issues.apache.org/jira/browse/HBASE-2319) | [stargate] multiuser mode: request shaping |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2533](https://issues.apache.org/jira/browse/HBASE-2533) | [EC2] ec2-describe-instances returning account number instead of bucket name |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2694](https://issues.apache.org/jira/browse/HBASE-2694) | Move RS to Master region open/close messaging into ZooKeeper |  Critical | master, regionserver | Jonathan Gray | Karthik Ranganathan |
| [HBASE-2223](https://issues.apache.org/jira/browse/HBASE-2223) | Handle 10min+ network partitions between clusters |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2129](https://issues.apache.org/jira/browse/HBASE-2129) | Simple Master/Slave replication |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2838](https://issues.apache.org/jira/browse/HBASE-2838) | Replication metrics |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2696](https://issues.apache.org/jira/browse/HBASE-2696) | ZooKeeper cleanup and refactor |  Critical | master, regionserver, Zookeeper | Jonathan Gray | Jonathan Gray |
| [HBASE-2697](https://issues.apache.org/jira/browse/HBASE-2697) | Implement new open/close logic in handlers and stop using heartbeats for open/close messages |  Critical | IPC/RPC, master, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-2698](https://issues.apache.org/jira/browse/HBASE-2698) | Reimplement cluster startup to use new load balancer |  Critical | master, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-2699](https://issues.apache.org/jira/browse/HBASE-2699) | Reimplement load balancing to be a background process and to not use heartbeats |  Critical | master, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-2701](https://issues.apache.org/jira/browse/HBASE-2701) | Move user-triggered region admin methods (compact/split/flush) to go directly to RS |  Major | Client, IPC/RPC, master, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-2695](https://issues.apache.org/jira/browse/HBASE-2695) | HMaster cleanup and refactor |  Critical | master | Jonathan Gray | Jonathan Gray |
| [HBASE-2700](https://issues.apache.org/jira/browse/HBASE-2700) | Handle master failover for regions in transition |  Critical | master, Zookeeper | Jonathan Gray | Jonathan Gray |
| [HBASE-2201](https://issues.apache.org/jira/browse/HBASE-2201) | JRuby shell for replication |  Major | Replication | Jean-Daniel Cryans | Jean-Daniel Cryans |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1901](https://issues.apache.org/jira/browse/HBASE-1901) | "General" partitioner for "hbase-48" bulk (behind the api, write hfiles direct) uploader |  Major | . | stack | stack |
| [HBASE-2618](https://issues.apache.org/jira/browse/HBASE-2618) | Don't inherit from HConstants |  Minor | . | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2996](https://issues.apache.org/jira/browse/HBASE-2996) | Fix and clean up Maven |  Major | build | Lars Francke | Lars Francke |
| [HBASE-1444](https://issues.apache.org/jira/browse/HBASE-1444) | Use new HADOOP-4829 shutdown flag |  Major | . | stack | stack |
| [HBASE-1887](https://issues.apache.org/jira/browse/HBASE-1887) | Update hbase trunk to latests on hadoop 0.21 branch so we can all test sync/append |  Major | . | stack | stack |
| [HBASE-1893](https://issues.apache.org/jira/browse/HBASE-1893) | hdfs-127 and native libs for hbase 0.21 |  Major | . | stack | stack |
| [HBASE-1942](https://issues.apache.org/jira/browse/HBASE-1942) | Update hadoop jars in trunk; update to r831142 |  Major | . | stack | stack |
| [HBASE-1943](https://issues.apache.org/jira/browse/HBASE-1943) | Remove AgileJSON; unused. |  Major | . | stack | stack |
| [HBASE-1974](https://issues.apache.org/jira/browse/HBASE-1974) | Update to latest on hadoop 0.21 branch (November11th, 2009) |  Major | . | stack |  |
| [HBASE-2041](https://issues.apache.org/jira/browse/HBASE-2041) | Change WAL default configuration values |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2340](https://issues.apache.org/jira/browse/HBASE-2340) | Add end-to-end test of sync/flush |  Blocker | . | stack | stack |
| [HBASE-2381](https://issues.apache.org/jira/browse/HBASE-2381) | missing copyright headers |  Blocker | . | Thomas Koch | Andrew Purtell |
| [HBASE-2360](https://issues.apache.org/jira/browse/HBASE-2360) | Make sure we have all the hadoop fixes in our our copy of its rpc |  Major | . | stack | Todd Lipcon |
| [HBASE-2423](https://issues.apache.org/jira/browse/HBASE-2423) | Update 'Getting Started' for 0.20.4 including making "important configurations more visiable" |  Blocker | . | stack | Jean-Daniel Cryans |
| [HBASE-2383](https://issues.apache.org/jira/browse/HBASE-2383) | Replace JSON-licensed json dependencies |  Blocker | . | Thomas Koch | stack |
| [HBASE-2430](https://issues.apache.org/jira/browse/HBASE-2430) | Disable frag display in trunk, let HBASE-2165 replace it |  Major | . | Jean-Daniel Cryans | Lars George |
| [HBASE-2521](https://issues.apache.org/jira/browse/HBASE-2521) | no license headers in 5 files |  Major | . | Thomas Koch |  |
| [HBASE-2543](https://issues.apache.org/jira/browse/HBASE-2543) | [EC2] Move scripts up to Github hosting |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2541](https://issues.apache.org/jira/browse/HBASE-2541) | Remove transactional contrib |  Major | . | Clint Morgan | Clint Morgan |
| [HBASE-2547](https://issues.apache.org/jira/browse/HBASE-2547) | [mvn] assembly:assembly does not include hbase-X.X.X-test.jar |  Major | . | stack | Paul Smith |
| [HBASE-2551](https://issues.apache.org/jira/browse/HBASE-2551) | Forward port fixes that are in branch but not in trunk (part of the merge of old 0.20 into TRUNK task) |  Major | . | stack | stack |
| [HBASE-2565](https://issues.apache.org/jira/browse/HBASE-2565) | Remove contrib module from hbase |  Major | . | stack | stack |
| [HBASE-1200](https://issues.apache.org/jira/browse/HBASE-1200) | Add bloomfilters |  Major | . | stack | Nicolas Spiegelberg |
| [HBASE-2577](https://issues.apache.org/jira/browse/HBASE-2577) | Remove 'core' maven module; move core up a level |  Major | . | stack | stack |
| [HBASE-2587](https://issues.apache.org/jira/browse/HBASE-2587) | Corral where tests write data when running and make sure clean target removes all written |  Major | . | stack |  |
| [HBASE-2568](https://issues.apache.org/jira/browse/HBASE-2568) | Add new svn, ml, and website locations into branches/0.20/src/doc and into trunk/pom.xml, etc. |  Major | . | stack | stack |
| [HBASE-2607](https://issues.apache.org/jira/browse/HBASE-2607) | Update HowToContribute wiki page |  Major | . | Daniel Ploeg | Daniel Ploeg |
| [HBASE-2523](https://issues.apache.org/jira/browse/HBASE-2523) | Add check for licenses before rolling an RC, add to how-to-release doc. and check for inlining a tool that does this for us |  Blocker | . | stack | stack |
| [HBASE-2653](https://issues.apache.org/jira/browse/HBASE-2653) | Remove unused DynamicBloomFilter (especially as its tests are failing hudson on occasion) |  Major | . | stack | stack |
| [HBASE-2400](https://issues.apache.org/jira/browse/HBASE-2400) | new connector for Avro RPC access to HBase cluster |  Minor | . | Andrew Purtell | Jeff Hammerbacher |
| [HBASE-2771](https://issues.apache.org/jira/browse/HBASE-2771) | Update our hadoop jar to be latest from 0.20-append branch |  Major | . | stack | ryan rawson |
| [HBASE-2779](https://issues.apache.org/jira/browse/HBASE-2779) | Build a -src tgz to sit beside our -bin tgz when you call maven assembly:assembly |  Major | . | stack |  |
| [HBASE-2790](https://issues.apache.org/jira/browse/HBASE-2790) | Purge apache-forrest from TRUNK |  Major | . | stack | stack |
| [HBASE-2808](https://issues.apache.org/jira/browse/HBASE-2808) | Document the implementation of replication |  Major | documentation | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2835](https://issues.apache.org/jira/browse/HBASE-2835) | Update hadoop jar to head of branch-0.20-append to catch three added patches |  Major | . | stack |  |
| [HBASE-2850](https://issues.apache.org/jira/browse/HBASE-2850) | slf4j version needs to be reconciled in pom: thrift wants 1.5.x and hadoop/avro 1.4.x |  Major | . | stack |  |
| [HBASE-2652](https://issues.apache.org/jira/browse/HBASE-2652) | Open daughters immediately on parent's regionserver |  Major | . | stack | stack |
| [HBASE-2953](https://issues.apache.org/jira/browse/HBASE-2953) | Edit of hbase-default.xml removing stale configs. |  Major | . | stack | stack |
| [HBASE-2977](https://issues.apache.org/jira/browse/HBASE-2977) | Refactor HMaster command line tool into a new class |  Major | master | Todd Lipcon | Todd Lipcon |
| [HBASE-2980](https://issues.apache.org/jira/browse/HBASE-2980) | Refactor HRegionServer command line parsing |  Minor | regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-3097](https://issues.apache.org/jira/browse/HBASE-3097) | Merge in hbase-1200 doc on bloomfilters into hbase book |  Critical | documentation | stack | stack |
| [HBASE-2406](https://issues.apache.org/jira/browse/HBASE-2406) | Define semantics of cell timestamps/versions |  Critical | documentation | Todd Lipcon | Pranav Khaitan |
| [HBASE-2650](https://issues.apache.org/jira/browse/HBASE-2650) | Consolidate user guide style documentation |  Major | documentation | Todd Lipcon | stack |
| [HBASE-1932](https://issues.apache.org/jira/browse/HBASE-1932) | Encourage use of 'lzo' compression... add the wiki page to getting started |  Major | documentation | stack | stack |
| [HBASE-3225](https://issues.apache.org/jira/browse/HBASE-3225) | Hudson running "test" target twice for trunk builds |  Major | . | Gary Helmling | Gary Helmling |
| [HBASE-3334](https://issues.apache.org/jira/browse/HBASE-3334) | Refresh our hadoop jar because of HDFS-1520 |  Major | . | Jean-Daniel Cryans | stack |


