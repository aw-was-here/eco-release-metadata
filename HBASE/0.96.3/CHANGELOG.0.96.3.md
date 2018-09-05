
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

## Release 0.96.3 - Unreleased (as of 2016-09-08)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | Delete mutation is not consistent with Put wrt timestamp |  Major | Client | Anoop Sam John | Anoop Sam John |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10797](https://issues.apache.org/jira/browse/HBASE-10797) | Add support for -h and --help to rolling\_restart.sh and fix the usage string output |  Trivial | Operability | stack | stack |
| [HBASE-10950](https://issues.apache.org/jira/browse/HBASE-10950) | Add  a configuration point for MaxVersion of Column Family |  Major | Admin, Usability | Demai Ni | Enoch Hsu |
| [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | Align bulk load, flush, and compact to require Action.CREATE |  Major | security | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-11119](https://issues.apache.org/jira/browse/HBASE-11119) | Update ExportSnapShot to optionally not use a tmp file on external file system |  Minor | snapshots | Ted Malaska | Ted Malaska |
| [HBASE-11128](https://issues.apache.org/jira/browse/HBASE-11128) | Add -target option to ExportSnapshot to export with a different name |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11134](https://issues.apache.org/jira/browse/HBASE-11134) | Add a -list-snapshots option to SnapshotInfo |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6990](https://issues.apache.org/jira/browse/HBASE-6990) | Pretty print TTL |  Minor | Usability | Jean-Daniel Cryans | Esteban Gutierrez |
| [HBASE-11480](https://issues.apache.org/jira/browse/HBASE-11480) | ClientScanner might not close the HConnection created in construction |  Trivial | Client, Scanners | Jianwei Cui | Jianwei Cui |
| [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | VM OPTS for shell only |  Major | . | stack | Andrew Purtell |
| [HBASE-7910](https://issues.apache.org/jira/browse/HBASE-7910) | Dont use reflection for security |  Major | . | Enis Soztutar | Mike Drob |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10805](https://issues.apache.org/jira/browse/HBASE-10805) | Speed up KeyValueHeap.next() a bit |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10829](https://issues.apache.org/jira/browse/HBASE-10829) | Flush is skipped after log replay if the last recovered edits file is skipped |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10809](https://issues.apache.org/jira/browse/HBASE-10809) | HBaseAdmin#deleteTable fails when META region happen to move around same time |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10862](https://issues.apache.org/jira/browse/HBASE-10862) | Update config field names in hbase-default.xml description for hbase.hregion.memstore.block.multiplier |  Trivial | documentation | Albert Chu | Albert Chu |
| [HBASE-10848](https://issues.apache.org/jira/browse/HBASE-10848) | Filter SingleColumnValueFilter combined with NullComparator does not work |  Major | Filters | Fabien Le Gallo | Fabien Le Gallo |
| [HBASE-10879](https://issues.apache.org/jira/browse/HBASE-10879) | user\_permission shell command on namespace doesn't work |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10830](https://issues.apache.org/jira/browse/HBASE-10830) | Integration test MR jobs attempt to load htrace jars from the wrong location |  Minor | . | Andrew Purtell | Nick Dimiduk |
| [HBASE-10850](https://issues.apache.org/jira/browse/HBASE-10850) | essential column family optimization is broken |  Blocker | Coprocessors, Filters, Performance | Fabien Le Gallo | Ted Yu |
| [HBASE-10903](https://issues.apache.org/jira/browse/HBASE-10903) | HBASE-10740 regression; cannot pass commands for zk to run |  Major | Zookeeper | stack | stack |
| [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | Major compact keeps deletes with future timestamps |  Minor | Compaction, Deletes, regionserver | Max Lapan | Liu Shaohui |
| [HBASE-10895](https://issues.apache.org/jira/browse/HBASE-10895) | unassign a region fails due to the hosting region server is in FailedServerList |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10967](https://issues.apache.org/jira/browse/HBASE-10967) | CatalogTracker.waitForMeta should not wait indefinitely silently |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10533](https://issues.apache.org/jira/browse/HBASE-10533) | commands.rb is giving wrong error messages on exceptions |  Major | shell | rajeshbabu | rajeshbabu |
| [HBASE-10966](https://issues.apache.org/jira/browse/HBASE-10966) | RowCounter misinterprets column names that have colons in their qualifier |  Trivial | . | Alexandre Normand | Alexandre Normand |
| [HBASE-10845](https://issues.apache.org/jira/browse/HBASE-10845) | Memstore snapshot size isn't updated in DefaultMemStore#rollback() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10979](https://issues.apache.org/jira/browse/HBASE-10979) | Fix AnnotationReadingPriorityFunction "scan" handling |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10312](https://issues.apache.org/jira/browse/HBASE-10312) | Flooding the cluster with administrative actions leads to collapse |  Critical | . | Andrew Purtell | Jean-Daniel Cryans |
| [HBASE-11011](https://issues.apache.org/jira/browse/HBASE-11011) | Avoid extra getFileStatus() calls on Region startup |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11030](https://issues.apache.org/jira/browse/HBASE-11030) | HBaseTestingUtility.getMiniHBaseCluster should be able to return null |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11049](https://issues.apache.org/jira/browse/HBASE-11049) | HBase WALPlayer needs to add credentials to job to play to table |  Minor | mapreduce | Jerry He | Jerry He |
| [HBASE-11038](https://issues.apache.org/jira/browse/HBASE-11038) | Filtered scans can bypass metrics collection |  Minor | Scanners | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11061](https://issues.apache.org/jira/browse/HBASE-11061) | Port HBASE-10948 Fix hbase table file 'x' mode to 0.96 / 0.98 |  Major | . | Ted Yu | Jerry He |
| [HBASE-10958](https://issues.apache.org/jira/browse/HBASE-10958) | [dataloss] Bulk loading with seqids can prevent some log entries from being replayed |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-11133](https://issues.apache.org/jira/browse/HBASE-11133) | Add an option to skip snapshot verification after Export |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11169](https://issues.apache.org/jira/browse/HBASE-11169) | nit: fix incorrect javadoc in OrderedBytes about BlobVar and BlobCopy |  Trivial | util | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11149](https://issues.apache.org/jira/browse/HBASE-11149) | Wire encryption is broken |  Major | IPC/RPC | Devaraj Das | Devaraj Das |
| [HBASE-11234](https://issues.apache.org/jira/browse/HBASE-11234) | FastDiffDeltaEncoder#getFirstKeyInBlock returns wrong result |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-11255](https://issues.apache.org/jira/browse/HBASE-11255) | Negative request num in region load |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11277](https://issues.apache.org/jira/browse/HBASE-11277) | RPCServer threads can wedge under high load |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11433](https://issues.apache.org/jira/browse/HBASE-11433) | LruBlockCache does not respect its configurable parameters |  Major | regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11335](https://issues.apache.org/jira/browse/HBASE-11335) | Fix the TABLE\_DIR param in TableSnapshotInputFormat |  Major | mapreduce, snapshots | deepankar |  |
| [HBASE-11496](https://issues.apache.org/jira/browse/HBASE-11496) | HBASE-9745 broke cygwin CLASSPATH translation |  Minor | . | Dave Latham | Dave Latham |
| [HBASE-11547](https://issues.apache.org/jira/browse/HBASE-11547) | Backport HBASE-11052 to 0.96 'Sending random data crashes thrift service' |  Major | . | Ted Yu | Adrian Muraru |
| [HBASE-11565](https://issues.apache.org/jira/browse/HBASE-11565) | Stale connection could stay for a while |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+ |  Major | mapreduce, Scanners | Ishan Chhabra | Ishan Chhabra |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10543](https://issues.apache.org/jira/browse/HBASE-10543) | Two rare test failures with TestLogsCleaner and TestSplitLogWorker |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10782](https://issues.apache.org/jira/browse/HBASE-10782) | Hadoop2 MR tests fail occasionally because of mapreduce.jobhistory.address is no set in job conf |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10988](https://issues.apache.org/jira/browse/HBASE-10988) | Properly wait for server in TestThriftServerCmdLine |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11010](https://issues.apache.org/jira/browse/HBASE-11010) | TestChangingEncoding is unnecessarily slow |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11022](https://issues.apache.org/jira/browse/HBASE-11022) | Increase timeout for TestHBaseFsck.testSplitDaughtersNotInMeta |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11037](https://issues.apache.org/jira/browse/HBASE-11037) | Race condition in TestZKBasedOpenCloseRegion |  Major | . | Lars Hofhansl | Lars Hofhansl |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10561](https://issues.apache.org/jira/browse/HBASE-10561) | Forward port: HBASE-10212 New rpc metric: number of active handler |  Major | IPC/RPC | Lars Hofhansl | Liang Xie |
| [HBASE-10936](https://issues.apache.org/jira/browse/HBASE-10936) | Add zeroByte encoding test |  Minor | test | Lars Hofhansl |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10921](https://issues.apache.org/jira/browse/HBASE-10921) | Port HBASE-10323 'Auto detect data block encoding in HFileOutputFormat' to 0.94 / 0.96 |  Major | . | Ted Yu | Kashif |


