
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

## Release 0.94.12 - 2013-09-24



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9243](https://issues.apache.org/jira/browse/HBASE-9243) | Add more useful statistics in the HFile tool |  Minor | HFile | Alexandre Normand | Alexandre Normand |
| [HBASE-9314](https://issues.apache.org/jira/browse/HBASE-9314) | Dropping a table always prints a TableInfoMissingException in the master log |  Minor | . | Jean-Daniel Cryans | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9231](https://issues.apache.org/jira/browse/HBASE-9231) | Multipage book is generated to the wrong location |  Trivial | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9207](https://issues.apache.org/jira/browse/HBASE-9207) | An Offline SplitParent Region can be assigned breaking split references |  Major | Region Assignment | Matteo Bertozzi | Jimmy Xiang |
| [HBASE-9233](https://issues.apache.org/jira/browse/HBASE-9233) | isTableAvailable() may be stuck if an offline parent was never assigned |  Critical | Client, Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9256](https://issues.apache.org/jira/browse/HBASE-9256) | HBaseClient#setupIOStreams should handle all exceptions |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9266](https://issues.apache.org/jira/browse/HBASE-9266) | Javadoc: Document that HBaseAdmin.flush(...) is synchronous |  Trivial | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9195](https://issues.apache.org/jira/browse/HBASE-9195) | Fix TestFSHDFSUtils against java7 test re-ordering |  Minor | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9167](https://issues.apache.org/jira/browse/HBASE-9167) | ServerCallable retries just once if timeout is not integer.max |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8760](https://issues.apache.org/jira/browse/HBASE-8760) | possible loss of data in snapshot taken after region split |  Major | snapshots | Jerry He | Matteo Bertozzi |
| [HBASE-9303](https://issues.apache.org/jira/browse/HBASE-9303) | Snapshot restore of table which splits after snapshot was taken encounters 'Region is not online' |  Major | . | Ted Yu | Matteo Bertozzi |
| [HBASE-9329](https://issues.apache.org/jira/browse/HBASE-9329) | SnapshotManager should check for directory existance before throwing a warning. |  Trivial | snapshots | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9344](https://issues.apache.org/jira/browse/HBASE-9344) | RegionServer not shutting down upon KeeperException in open region |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9356](https://issues.apache.org/jira/browse/HBASE-9356) | [0.94] SecureServer.INSECURE\_VERSIONS is declared incorrectly |  Trivial | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7709](https://issues.apache.org/jira/browse/HBASE-7709) | Infinite loop possible in Master/Master replication |  Major | Replication | Lars Hofhansl | Vasu Mariyala |
| [HBASE-9326](https://issues.apache.org/jira/browse/HBASE-9326) | ServerName is created using getLocalSocketAddress, breaks binding to the wildcard address. Revert HBASE-8640 |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9252](https://issues.apache.org/jira/browse/HBASE-9252) | HConnectionManager#getZooKeeperWatcher() should be deprecated in 0.94 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-7954](https://issues.apache.org/jira/browse/HBASE-7954) | Fix the retrying logic of memstore flushes to avoid extra sleep |  Minor | regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-9397](https://issues.apache.org/jira/browse/HBASE-9397) | Snapshots with the same name are allowed to proceed concurrently |  Major | snapshots | Jerry He | Jerry He |
| [HBASE-9415](https://issues.apache.org/jira/browse/HBASE-9415) | In rpcServer, replicationQueue is initialized with the max queue size instead of the max queue lenght |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9428](https://issues.apache.org/jira/browse/HBASE-9428) | Regex filters are at least an order of magnitude slower since 0.94.3 |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-9432](https://issues.apache.org/jira/browse/HBASE-9432) | Backport HBASE-8781 to 0.94 |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-9429](https://issues.apache.org/jira/browse/HBASE-9429) | Add back MetaScanner.allTableRegions(Configuration conf,byte[] tablename,boolean offlined) method |  Major | Client | James Taylor | Lars Hofhansl |
| [HBASE-9182](https://issues.apache.org/jira/browse/HBASE-9182) | Allow non-admin users to list all table names |  Major | . | Francis Liu | Andrew Purtell |
| [HBASE-9448](https://issues.apache.org/jira/browse/HBASE-9448) | [0.94] Shell needs to fall back after HBASE-9182 if talking to older servers |  Blocker | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-9286](https://issues.apache.org/jira/browse/HBASE-9286) | [0.94] ageOfLastShippedOp replication metric doesn't update if the slave regionserver is stalled |  Major | . | Alex Newman | Alex Newman |
| [HBASE-9455](https://issues.apache.org/jira/browse/HBASE-9455) | Port HBASE-7113 'TestGzipFilter is flaky with jdk1.7' to 0.94 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-9301](https://issues.apache.org/jira/browse/HBASE-9301) | Default hbase.dynamic.jars.dir to hbase.rootdir/jars |  Major | . | James Taylor | Vasu Mariyala |
| [HBASE-8930](https://issues.apache.org/jira/browse/HBASE-8930) | Filter evaluates KVs outside requested columns |  Critical | Filters | Federico Gaule | Vasu Mariyala |
| [HBASE-9468](https://issues.apache.org/jira/browse/HBASE-9468) | Previous active master can still serves RPC request when it is trying recovering expired zk session |  Major | . | Honghua Feng | Honghua Feng |
| [HBASE-9482](https://issues.apache.org/jira/browse/HBASE-9482) | Do not enforce secure Hadoop for secure HBase |  Major | security | Aditya Kishore | Aditya Kishore |
| [HBASE-9506](https://issues.apache.org/jira/browse/HBASE-9506) | [0.94] Backport HBASE-9309 The links in the backup masters template are bad |  Minor | master | Cody Marcel | Jean-Daniel Cryans |
| [HBASE-9566](https://issues.apache.org/jira/browse/HBASE-9566) | Add back WALEdit#get/setScopes method |  Major | wal | Jesse Yates | Jesse Yates |
| [HBASE-9534](https://issues.apache.org/jira/browse/HBASE-9534) | Short-Circuit Coprocessor HTable access when on the same server |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-9584](https://issues.apache.org/jira/browse/HBASE-9584) | Short-Circuit Coprocessor doesn't correctly lookup table when on server |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-9462](https://issues.apache.org/jira/browse/HBASE-9462) | HBaseAdmin#isTableEnabled() should throw exception for non-existent table |  Major | . | Ted Yu | Ted Yu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9287](https://issues.apache.org/jira/browse/HBASE-9287) | TestCatalogTracker depends on the execution order |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9277](https://issues.apache.org/jira/browse/HBASE-9277) | REST should use listTableNames to list tables |  Major | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-9279](https://issues.apache.org/jira/browse/HBASE-9279) | Thrift should use listTableNames to list tables |  Major | Thrift | Andrew Purtell | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9377](https://issues.apache.org/jira/browse/HBASE-9377) | Backport HBASE- 9208 "ReplicationLogCleaner slow at large scale" |  Major | Replication | stack | Lars Hofhansl |
| [HBASE-9153](https://issues.apache.org/jira/browse/HBASE-9153) | Introduce/update a script to generate jdiff reports |  Major | . | Jonathan Hsieh | Aleksandr Shulman |


