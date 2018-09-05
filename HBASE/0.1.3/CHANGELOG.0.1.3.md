
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

## Release 0.1.3 - 2008-06-27



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-641](https://issues.apache.org/jira/browse/HBASE-641) | Improve master split logging |  Major | . | stack | stack |
| [HBASE-684](https://issues.apache.org/jira/browse/HBASE-684) | unnecessary iteration in HMemcache.internalGet? got much better reading performance after break it. |  Major | . | Luo Ning |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-644](https://issues.apache.org/jira/browse/HBASE-644) | DroppedSnapshotException but RegionServer doesn't restart |  Blocker | . | stack | stack |
| [HBASE-645](https://issues.apache.org/jira/browse/HBASE-645) | EOFException opening region (HBASE-550 redux) |  Major | . | stack | stack |
| [HBASE-642](https://issues.apache.org/jira/browse/HBASE-642) | Splitting log in a hostile environment -- bad hdfs -- we drop write-ahead-log edits |  Major | . | stack | stack |
| [HBASE-646](https://issues.apache.org/jira/browse/HBASE-646) | EOFException opening HStoreFile info file (spin on HBASE-645 and 550) |  Major | . | stack | stack |
| [HBASE-659](https://issues.apache.org/jira/browse/HBASE-659) | HLog#cacheFlushLock not cleared; hangs a region |  Blocker | . | stack | stack |
| [HBASE-663](https://issues.apache.org/jira/browse/HBASE-663) | Incorrect sequence number for cache flush |  Blocker | regionserver | Ning Li | Jim Kellerman |
| [HBASE-665](https://issues.apache.org/jira/browse/HBASE-665) | server side scanner doesn't honor stop row |  Major | . | Michael Bieniosek | stack |
| [HBASE-680](https://issues.apache.org/jira/browse/HBASE-680) | config parameter hbase.io.index.interval  should be hbase.index.interval, accroding to HBaseMapFile.HbaseWriter |  Minor | regionserver | Luo Ning |  |
| [HBASE-681](https://issues.apache.org/jira/browse/HBASE-681) | NPE in Memcache |  Major | regionserver | Clint Morgan | Jim Kellerman |
| [HBASE-686](https://issues.apache.org/jira/browse/HBASE-686) | MemcacheScanner didn't return the first row(if it exists), cause HScannerInterface's output incorrect |  Major | . | Luo Ning | Jim Kellerman |
| [HBASE-709](https://issues.apache.org/jira/browse/HBASE-709) | Deadlock while rolling WAL-log while finishing flush |  Blocker | . | stack | stack |
| [HBASE-707](https://issues.apache.org/jira/browse/HBASE-707) | High-load import of data into single table/family never triggers split |  Major | . | Jonathan Gray | stack |
| [HBASE-613](https://issues.apache.org/jira/browse/HBASE-613) | Timestamp-anchored scanning fails to find all records |  Blocker | Client | stack | Jim Kellerman |
| [HBASE-710](https://issues.apache.org/jira/browse/HBASE-710) | If clocks are way off, then we can have daughter split come before rather than after its parent in .META. |  Blocker | . | stack | stack |


