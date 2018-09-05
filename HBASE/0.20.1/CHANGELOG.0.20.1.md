
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

## Release 0.20.1 - 2009-10-12



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1823](https://issues.apache.org/jira/browse/HBASE-1823) | Ability for Scanners to bypass the block cache |  Major | Client, regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-1684](https://issues.apache.org/jira/browse/HBASE-1684) | Backup (Export/Import) contrib tool for 0.20 |  Major | . | Jonathan Gray | stack |
| [HBASE-48](https://issues.apache.org/jira/browse/HBASE-48) | [hbase] Bulk load tools |  Minor | . | stack |  |
| [HBASE-1875](https://issues.apache.org/jira/browse/HBASE-1875) | Compression test utility |  Trivial | util | elsif |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1751](https://issues.apache.org/jira/browse/HBASE-1751) | Server vs. Client-side KeyValue |  Major | . | stack | stack |
| [HBASE-1819](https://issues.apache.org/jira/browse/HBASE-1819) | Update to 0.20.1 hadoop and zk 3.2.1 |  Major | . | stack | stack |
| [HBASE-1765](https://issues.apache.org/jira/browse/HBASE-1765) | Delay Result deserialization until asked for and permit access to the raw binary to prevent forced deserialization |  Major | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1808](https://issues.apache.org/jira/browse/HBASE-1808) | [stargate] fix how columns are specified for scanners |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1827](https://issues.apache.org/jira/browse/HBASE-1827) | Add disabling block cache scanner flag to the shell, option for scan and count |  Major | scripts | Jonathan Gray | Andrew Purtell |
| [HBASE-1722](https://issues.apache.org/jira/browse/HBASE-1722) | Add support for exporting HBase metrics via JMX |  Minor | IPC/RPC, master, regionserver | Gary Helmling | Gary Helmling |
| [HBASE-1818](https://issues.apache.org/jira/browse/HBASE-1818) | HFile code review and refinement |  Minor | io | Schubert Zhang | Schubert Zhang |
| [HBASE-1830](https://issues.apache.org/jira/browse/HBASE-1830) | HbaseObjectWritable methods should allow null HBaseConfigurations for when Writable is not Configurable |  Major | io | Jonathan Gray | stack |
| [HBASE-1854](https://issues.apache.org/jira/browse/HBASE-1854) | Remove the Region Historian |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1874](https://issues.apache.org/jira/browse/HBASE-1874) | Client Scanner mechanism that is used for HbaseAdmin methods (listTables, tableExists), is very slow if the client is far away from the HBase cluster |  Minor | . | Andrei Dragomir |  |
| [HBASE-1832](https://issues.apache.org/jira/browse/HBASE-1832) | Faster enable/disable/delete |  Major | . | stack | stack |
| [HBASE-1481](https://issues.apache.org/jira/browse/HBASE-1481) | Add fast row key only scanning |  Minor | . | Lars George | Jonathan Gray |
| [HBASE-1506](https://issues.apache.org/jira/browse/HBASE-1506) | [performance] Make splits faster |  Critical | . | stack | stack |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1791](https://issues.apache.org/jira/browse/HBASE-1791) | Timeout in IndexRecordWriter |  Minor | . | Bradford Stephens | Bradford Stephens |
| [HBASE-1779](https://issues.apache.org/jira/browse/HBASE-1779) | ThriftServer logged error if getVer() result is empty |  Major | Thrift | Shotaro Kamio |  |
| [HBASE-1812](https://issues.apache.org/jira/browse/HBASE-1812) | Document fact that Scanners do not respect row locks |  Major | . | stack | stack |
| [HBASE-1824](https://issues.apache.org/jira/browse/HBASE-1824) | [stargate] default timestamp should be LATEST\_TIMESTAMP |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1795](https://issues.apache.org/jira/browse/HBASE-1795) | log recovery doesnt reset the max sequence id, new logfiles can get tossed as 'duplicates' |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1794](https://issues.apache.org/jira/browse/HBASE-1794) | recovered log files are not inserted into the storefile map |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1740](https://issues.apache.org/jira/browse/HBASE-1740) | ICV has a subtle race condition only visible under high load |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1687](https://issues.apache.org/jira/browse/HBASE-1687) | bin/hbase script doesn't allow for different memory settings for each daemon type |  Major | . | Fernando Padilla |  |
| [HBASE-1828](https://issues.apache.org/jira/browse/HBASE-1828) | CompareFilters are broken from client-side |  Critical | Filters | Jonathan Gray | Jonathan Gray |
| [HBASE-1836](https://issues.apache.org/jira/browse/HBASE-1836) | test of indexed hbase broken |  Major | . | stack | stack |
| [HBASE-1838](https://issues.apache.org/jira/browse/HBASE-1838) | [javadoc] Add javadoc to Delete explaining behavior when no timestamp provided |  Major | . | stack | stack |
| [HBASE-1821](https://issues.apache.org/jira/browse/HBASE-1821) | Filtering by SingleColumnValueFilter bug |  Major | . | stack | Jonathan Gray |
| [HBASE-1840](https://issues.apache.org/jira/browse/HBASE-1840) | RowLock fails when used with IndexTable |  Major | . | Keith Thomas | Keith Thomas |
| [HBASE-1574](https://issues.apache.org/jira/browse/HBASE-1574) | Client and server APIs to do batch deletes. |  Major | . | ryan rawson |  |
| [HBASE-1833](https://issues.apache.org/jira/browse/HBASE-1833) | hfile.main fixes |  Major | . | stack | stack |
| [HBASE-1847](https://issues.apache.org/jira/browse/HBASE-1847) | Delete latest of a null qualifier when non-null qualifiers exist throws a RuntimeException |  Critical | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-1853](https://issues.apache.org/jira/browse/HBASE-1853) | Each time around the regionserver core loop, we clear the messages to pass master, even if we failed to deliver them |  Major | regionserver | stack | stack |
| [HBASE-1815](https://issues.apache.org/jira/browse/HBASE-1815) | HBaseClient can get stuck in an infinite loop while attempting to contact a failed regionserver |  Major | Client | Justin Lynn | stack |
| [HBASE-1856](https://issues.apache.org/jira/browse/HBASE-1856) | HBASE-1765 broke MapReduce when using Result.list() |  Critical | . | Lars George | Lars George |
| [HBASE-1857](https://issues.apache.org/jira/browse/HBASE-1857) | WrongRegionException when setting region online after .META. split |  Major | master | Cosmin Lehene | Cosmin Lehene |
| [HBASE-1809](https://issues.apache.org/jira/browse/HBASE-1809) | NPE thrown in BoundedRangeFileInputStream |  Critical | io | Mathias Herberts | stack |
| [HBASE-1859](https://issues.apache.org/jira/browse/HBASE-1859) | Misc shell fixes patch. |  Minor | scripts | Kyle Oba |  |
| [HBASE-1860](https://issues.apache.org/jira/browse/HBASE-1860) | Change HTablePool#createHTable from private to protected |  Major | . | stack |  |
| [HBASE-1865](https://issues.apache.org/jira/browse/HBASE-1865) | 0.20.0 TableInputFormatBase NPE |  Major | . | Eric Tschetter | stack |
| [HBASE-1866](https://issues.apache.org/jira/browse/HBASE-1866) | Scan(Scan) copy constructor does not copy value of cacheBlocks |  Major | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1855](https://issues.apache.org/jira/browse/HBASE-1855) | HMaster web application doesn't show the region end key in the table detail page |  Minor | master | Andrei Dragomir |  |
| [HBASE-1870](https://issues.apache.org/jira/browse/HBASE-1870) | Bytes.toFloat(byte [] bytes, int offset) is private but a user needs it public |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1858](https://issues.apache.org/jira/browse/HBASE-1858) | Master can't split logs created by THBase |  Major | master | Clint Morgan | Clint Morgan |
| [HBASE-1871](https://issues.apache.org/jira/browse/HBASE-1871) | Wrong type used in TableMapReduceUtil.initTableReduceJob() |  Major | . | Lars George | Lars George |
| [HBASE-1883](https://issues.apache.org/jira/browse/HBASE-1883) | HRegion passes the wrong minSequenceNumber to doReconstructionLog |  Major | regionserver | Clint Morgan | Clint Morgan |
| [HBASE-1879](https://issues.apache.org/jira/browse/HBASE-1879) | ReadOnly transactions generate WAL activity. |  Minor | . | Clint Morgan | Clint Morgan |
| [HBASE-1878](https://issues.apache.org/jira/browse/HBASE-1878) | BaseScanner results can't be trusted at all (Related to hbase-1784) |  Major | . | stack | stack |
| [HBASE-1868](https://issues.apache.org/jira/browse/HBASE-1868) | Spew about rebalancing but none done.... |  Major | . | stack | stack |
| [HBASE-1831](https://issues.apache.org/jira/browse/HBASE-1831) | Scanning API must be reworked to allow for fully functional Filters client-side |  Critical | . | Jonathan Gray | stack |
| [HBASE-1890](https://issues.apache.org/jira/browse/HBASE-1890) | hbase-1506 where assignment is done at regionserver doesn't work |  Major | . | stack |  |


