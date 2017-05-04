
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

## Release 1.2.4 - 2016-11-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16340](https://issues.apache.org/jira/browse/HBASE-16340) | ensure no Xerces jars included |  Critical | dependencies | Sean Busbey | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15315](https://issues.apache.org/jira/browse/HBASE-15315) | Remove always set super user call as high priority |  Major | . | Yong Zhang | Yong Zhang |
| [HBASE-16667](https://issues.apache.org/jira/browse/HBASE-16667) | Building with JDK 8: ignoring option MaxPermSize=256m |  Minor | build | Niels Basjes | Niels Basjes |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16535](https://issues.apache.org/jira/browse/HBASE-16535) | Use regex to exclude generated classes for findbugs |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-16528](https://issues.apache.org/jira/browse/HBASE-16528) | Procedure-V2: ServerCrashProcedure misses owner information |  Major | hbase, master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16527](https://issues.apache.org/jira/browse/HBASE-16527) | IOExceptions from DFS client still can cause CatalogJanitor to delete referenced files |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16375](https://issues.apache.org/jira/browse/HBASE-16375) | Mapreduce mini cluster using HBaseTestingUtility not setting correct resourcemanager and jobhistory webapp address of MapReduceTestingShim |  Minor | . | Loknath Priyatham Teja Singamsetty | Loknath Priyatham Teja Singamsetty |
| [HBASE-16552](https://issues.apache.org/jira/browse/HBASE-16552) | MiniHBaseCluster#getServerWith() does not ignore stopped RSs |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16538](https://issues.apache.org/jira/browse/HBASE-16538) | Version mismatch in HBaseConfiguration.checkDefaultsVersion |  Major | . | Appy | Appy |
| [HBASE-16460](https://issues.apache.org/jira/browse/HBASE-16460) | Can\'t rebuild the BucketAllocator\'s data structures when BucketCache uses FileIOEngine |  Major | BucketCache | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16589](https://issues.apache.org/jira/browse/HBASE-16589) | Adjust log level for FATAL messages from HBaseReplicationEndpoint that are not fatal |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16613](https://issues.apache.org/jira/browse/HBASE-16613) | Return the unused ByteBuffer to BoundedByteBufferPool when no cell is retrieved from the CellScanner |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16165](https://issues.apache.org/jira/browse/HBASE-16165) | Decrease RpcServer.callQueueSize before writeResponse causes OOM |  Minor | IPC/RPC, rpc | Duo Zhang | Guanghao Zhang |
| [HBASE-16294](https://issues.apache.org/jira/browse/HBASE-16294) | hbck reporting "No HDFS region dir found" for replicas |  Minor | hbck | Matteo Bertozzi | Umesh Agashe |
| [HBASE-16662](https://issues.apache.org/jira/browse/HBASE-16662) | Fix open POODLE vulnerabilities |  Major | REST, Thrift | Ben Lau | Ben Lau |
| [HBASE-16604](https://issues.apache.org/jira/browse/HBASE-16604) | Scanner retries on IOException can cause the scans to miss data |  Major | regionserver, Scanners | Enis Soztutar | Enis Soztutar |
| [HBASE-16649](https://issues.apache.org/jira/browse/HBASE-16649) | Truncate table with splits preserved can cause both data loss and truncated data appeared again |  Major | . | Allan Yang | Matteo Bertozzi |
| [HBASE-16682](https://issues.apache.org/jira/browse/HBASE-16682) | Fix Shell tests failure. NoClassDefFoundError for MiniKdc |  Major | . | Appy | Appy |
| [HBASE-16723](https://issues.apache.org/jira/browse/HBASE-16723) | RMI registry is not destroyed after stopping JMX Connector Server |  Major | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16732](https://issues.apache.org/jira/browse/HBASE-16732) | Avoid possible NPE in MetaTableLocator |  Minor | . | Jerry He | Jerry He |
| [HBASE-16678](https://issues.apache.org/jira/browse/HBASE-16678) | MapReduce jobs do not update counters from ScanMetrics |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16373](https://issues.apache.org/jira/browse/HBASE-16373) | precommit needs a dockerfile with hbase prereqs |  Critical | build | Sean Busbey | Duo Zhang |
| [HBASE-16699](https://issues.apache.org/jira/browse/HBASE-16699) | Overflows in AverageIntervalRateLimiter\'s refill() and getWaitInterval() |  Major | . | huaxiang sun | huaxiang sun |
| [HBASE-16807](https://issues.apache.org/jira/browse/HBASE-16807) | RegionServer will fail to report new active Hmaster until HMaster/RegionServer failover |  Major | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16830](https://issues.apache.org/jira/browse/HBASE-16830) | RSRpcServices#openRegion() should handle the case where table descriptor is null |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16721](https://issues.apache.org/jira/browse/HBASE-16721) | Concurrency issue in WAL unflushed seqId tracking |  Critical | wal | Enis Soztutar | Enis Soztutar |
| [HBASE-16824](https://issues.apache.org/jira/browse/HBASE-16824) | Writer.flush() can be called on already closed streams in WAL roll |  Major | wal | Atri Sharma | Enis Soztutar |
| [HBASE-16889](https://issues.apache.org/jira/browse/HBASE-16889) | Proc-V2: verifyTables in the IntegrationTestDDLMasterFailover test after each table DDL is incorrect |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16701](https://issues.apache.org/jira/browse/HBASE-16701) | TestHRegion and TestHRegionWithInMemoryFlush timing out |  Major | regionserver, test | Appy | Sean Busbey |
| [HBASE-16754](https://issues.apache.org/jira/browse/HBASE-16754) | Regions failing compaction due to referencing non-existent store file |  Blocker | . | Gary Helmling | Gary Helmling |
| [HBASE-16815](https://issues.apache.org/jira/browse/HBASE-16815) | Low scan ratio in RPC queue tuning triggers divide by zero exception |  Major | regionserver, rpc | Lars George | Guanghao Zhang |
| [HBASE-16870](https://issues.apache.org/jira/browse/HBASE-16870) | Add the metrics of replication sources which were transformed from other dead rs to ReplicationLoad |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16939](https://issues.apache.org/jira/browse/HBASE-16939) | ExportSnapshot: set owner and permission on right directory |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16948](https://issues.apache.org/jira/browse/HBASE-16948) | Fix inconsistency between HRegion and Region javadoc on getRowLock |  Major | . | stack | stack |
| [HBASE-16931](https://issues.apache.org/jira/browse/HBASE-16931) | Setting cell\'s seqId to zero in compaction flow might cause RS down. |  Critical | regionserver | binlijin | binlijin |
| [HBASE-16663](https://issues.apache.org/jira/browse/HBASE-16663) | JMX ConnectorServer stopped when unauthorized user try to stop HM/RS/cluster |  Critical | metrics, security | Pankaj Kumar | Pankaj Kumar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16522](https://issues.apache.org/jira/browse/HBASE-16522) | Procedure v2 - Cache system user and avoid IOException |  Major | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16101](https://issues.apache.org/jira/browse/HBASE-16101) | Procedure v2 - Perf Tool for WAL |  Major | proc-v2, tooling | Appy | Appy |
| [HBASE-15984](https://issues.apache.org/jira/browse/HBASE-15984) | Given failure to parse a given WAL that was closed cleanly, replay the WAL. |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-14734](https://issues.apache.org/jira/browse/HBASE-14734) | BindException when setting up MiniKdc |  Major | flakey, test | stack | Appy |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16518](https://issues.apache.org/jira/browse/HBASE-16518) | Remove old .arcconfig file |  Trivial | tooling | Gary Helmling | Gary Helmling |
| [HBASE-16749](https://issues.apache.org/jira/browse/HBASE-16749) | HBase root pom.xml contains repo from people.apache.org/~garyh |  Major | . | Wangda Tan | Gary Helmling |
| [HBASE-16748](https://issues.apache.org/jira/browse/HBASE-16748) | Release 1.2.4 |  Major | . | Sean Busbey | Sean Busbey |


