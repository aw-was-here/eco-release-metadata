
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
# Apache HBase  2.0.0-alpha-2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-18192](https://issues.apache.org/jira/browse/HBASE-18192) | *Blocker* | **Replication drops recovered queues on region server shutdown**

If a region server that is processing recovered queue for another previously dead region server is gracefully shut down, it can drop the recovered queue under certain conditions. Running without this fix on a 1.2+ release means possibility of continuing data loss in replication, irrespective of which WALProvider is used.
If a single WAL group (or DefaultWALProvider) is used, running without this fix will always cause dataloss in replication whenever a region server processing recovered queues is gracefully shutdown.


---

* [HBASE-18200](https://issues.apache.org/jira/browse/HBASE-18200) | *Major* | **Set hadoop check versions for branch-2 and branch-2.x in pre commit**

Allow setting different hadoop check versions for branch-2 and branch-2.x when running pre commit check.


---

* [HBASE-17008](https://issues.apache.org/jira/browse/HBASE-17008) | *Critical* | **Examples to make AsyncClient go down easy**

Add two examples for async client. AsyncClientExample is a simple example to show you how to use AsyncTable. HttpProxyExample is an example for advance user to show you how to use RawAsyncTable to write a fully asynchronous HTTP proxy server. There is no extra thread pool, all operations are executed inside netty's event loop.


---

* [HBASE-16242](https://issues.apache.org/jira/browse/HBASE-16242) | *Major* | **Upgrade Avro to 1.7.7**

Apache HBase now specifies that version 1.7.7 of the Apache Avro library should be pulled in by maven and included in the convenience binary tarball.


---

* [HBASE-18226](https://issues.apache.org/jira/browse/HBASE-18226) | *Major* | **Disable reverse DNS lookup at HMaster and use the hostname provided by RegionServer**

The following config is added by this JIRA:

hbase.regionserver.hostname.disable.master.reversedns

This config is for experts: don't set its value unless you really know what you are doing.
When set to true, regionserver will use the current node hostname for the servername and HMaster will skip reverse DNS lookup and use the hostname sent by regionserver instead. Note that this config and hbase.regionserver.hostname are mutually exclusive. See https://issues.apache.org/jira/browse/HBASE-18226 for more details.

Caution: please make sure rolling upgrade succeeds before turning on this feature.


---

* [HBASE-18164](https://issues.apache.org/jira/browse/HBASE-18164) | *Critical* | **Much faster locality cost function and candidate generator**

New locality cost function and candidate generator that use caching and incremental computation to allow the stochastic load balancer to consider ~20x more cluster configurations for big clusters.


---

* [HBASE-17931](https://issues.apache.org/jira/browse/HBASE-17931) | *Blocker* | **Assign system tables to servers with highest version**

We usually keep compatibility between old client and new server so we can do rolling upgrade, HBase cluster first, then HBase client. But we don't guarantee new client can access old server.
In an HBase cluster, we have system tables and region servers will access these tables so for servers they are also an HBase client. So if the system tables are in region servers with lower version we may get trouble because region servers with higher version may can not access them.
After this patch, we will move all system regions to region servers with highest version. So when we do a rolling upgrade across two major or minor versions, we should ALWAYS UPGRADE MASTER FIRST and then upgrade region servers. The new master will handle system tables correctly.


---

* [HBASE-18241](https://issues.apache.org/jira/browse/HBASE-18241) | *Critical* | **Change client.Table, client.Admin, Region, Store, and HBaseTestingUtility to not use HTableDescriptor or HColumnDescriptor**

- : removed API
+ : new API
\* : deprecated API
---------------------------
Region class
- HTableDescriptor getTableDesc()
+TableDescriptor getTableDescriptor()

Store class
- HColumnDescriptor getFamily()
+ ColumnFamilyDescriptor getColumnFamilyDescriptor()

Table class
\* HTableDescriptor getTableDescriptor()
+ TableDescriptor getDescriptor()\|

\*Admin class\*
\* HTableDescriptor getTableDescriptor(TableName)
+ List\<TableDescriptor\> listTableDescriptor(TableName)\|
\* HTableDescriptor[] getTableDescriptors(List\<String\>)
\* HTableDescriptor[] getTableDescriptorsByTableName(List\<TableName\>)
+ List\<TableDescriptor\> listTableDescriptors(List\<TableName\>)
\* HTableDescriptor[] listTables()
+ List\<TableDescriptor\> listTableDescriptors()
\* HTableDescriptor[] listTables(Pattern)
+ List\<TableDescriptor\> listTableDescriptors(Pattern)
\* HTableDescriptor[] listTables(String)
+ List\<TableDescriptor\> listTableDescriptors(String)
\* HTableDescriptor[] listTables(Pattern, boolean)
+ List\<TableDescriptor\> listTableDescriptors(Pattern, boolean)
\* HTableDescriptor[] listTables(String, boolean)
+ List\<TableDescriptor\> listTableDescriptors(String, boolean)
\* HTableDescriptor[] deleteTables(String)
\* HTableDescriptor[] deleteTables(Pattern)
\* HTableDescriptor[] enableTables(String)
\* HTableDescriptor[] enableTables(Pattern)
\* HTableDescriptor[] disableTables(String)
\* HTableDescriptor[] disableTables(Pattern)
\* void modifyTable(TableName, HTableDescriptor)
+ void modifyTable(TableDescriptor)
\* void modifyTableAsync(TableName, HTableDescriptor)
+ void modifyTableAsync(TableDescriptor)
\* HTableDescriptor[] listTableDescriptorsByNamespace(String)
+ List\<TableDescriptor\> listTableDescriptorsByNamespace(byte[])
\* void createTable(HTableDescriptor)
+ void createTable(TableDescriptor)
\* void createTable(HTableDescriptor, byte[], byte[], int)
+ void createTable({color:red}TableDescriptor, byte[], byte[], int)
\* void createTable(HTableDescriptor, byte[][])
+ void createTable(TableDescriptor, byte[][])
\* Future\<Void\> createTableAsync(HTableDescriptor, byte[][])
+ Future\<Void\> createTableAsync(TableDescriptor, byte[][])

\*HBaseTestingUtility class\*
\* Table createTable(HTableDescriptor, byte[][], Configuration)
+ Table createTable(TableDescriptor, byte[][], Configuration)
\* Table createTable(HTableDescriptor, byte[][], byte[][], Configuration)
+ Table createTable(TableDescriptor, byte[][], byte[][], Configuration)
\* public Table createTable(HTableDescriptor, byte[][])
+ public Table createTable(TableDescriptor, byte[][])
\* void modifyTableSync(Admin, HTableDescriptor)
+ void modifyTableSync(Admin, TableDescriptor)
\* HRegion createLocalHRegion(HTableDescriptor, byte [], byte [])
+ HRegion createLocalHRegion(TableDescriptor, byte [], byte [])
\* HRegion createLocalHRegion(HRegionInf, HTableDescriptor)
+ HRegion createLocalHRegion(HRegionInf, TableDescriptor)
\* HRegion createLocalHRegion(HRegionInfo, HTableDescriptor, WAL)
+ HRegion createLocalHRegion(HRegionInfo, TableDescriptor, WAL)
\* List createMultiRegionsInMeta(final Configuration, HTableDescriptor, byte [][])
+ List createMultiRegionsInMeta(final Configuration, TableDescriptor, byte [][])
\* HRegion createRegionAndWAL(HRegionInfo, Path, Configuration, HTableDescriptor)
+ HRegion createRegionAndWAL(HRegionInfo, Path, Configuration, TableDescriptor)
\* HRegion createRegionAndWAL(HRegionInfo, Pat, Configuration, HTableDescriptor, boolean)
+ HRegion createRegionAndWAL(HRegionInfo, Pat, Configuration, TableDescriptor, boolean)
\* int createPreSplitLoadTestTable(Configuration,HTableDescriptor, HColumnDescriptor)
+ int createPreSplitLoadTestTable(Configuration,TableDescriptor, ColumnFamilyDescriptor)
\* int createPreSplitLoadTestTable(Configuration, HTableDescriptor, HColumnDescriptor, int)
+ int createPreSplitLoadTestTable(Configuration, TableDescriptor, ColumnFamilyDescriptor, int)
\* int createPreSplitLoadTestTable(Configuration, HTableDescriptor, HColumnDescriptor[], int)
+ int createPreSplitLoadTestTable(Configuration, TableDescriptor, ColumnFamilyDescriptor[], int)
\* int createPreSplitLoadTestTable(Configuration,HTableDescriptor, HColumnDescriptor[],SplitAlgorithm, int)
+ int createPreSplitLoadTestTable(Configuration,TableDescriptor, ColumnFamilyDescriptor[],SplitAlgorithm, int)
\* HRegion createTestRegion(String, HColumnDescriptor)
+ HRegion createTestRegion(String, ColumnFamilyDescriptor)


---

* [HBASE-18307](https://issues.apache.org/jira/browse/HBASE-18307) | *Major* | **Share the same EventLoopGroup for NettyRpcServer, NettyRpcClient and AsyncFSWALProvider at RS side**

There are two configuration name changes as the event loop configs will not only effect rpc server but be shared by different components in the same RS instance.

'hbase.rpc.server.nativetransport' -\> 'hbase.netty.nativetransport'

'hbase.netty.rpc.server.worker.count' -\> 'hbase.netty.worker.count'


---

* [HBASE-18339](https://issues.apache.org/jira/browse/HBASE-18339) | *Major* | **Update test-patch to use hadoop 3.0.0-alpha4**

HBase now defaults to Apache Hadoop 3.0.0-alpha4 when the Hadoop 3 profile is active.


---

* [HBASE-18229](https://issues.apache.org/jira/browse/HBASE-18229) | *Critical* | **create new Async Split API to embrace AM v2**

A new splitRegionAsync() API is added in client. The existing splitRegion()  and split() API will call the new API so client does not have to change its code. 

Move HBaseAdmin.splitXXX() logic to master, client splitXXX() API now go to master directly instead of going to RegionServer first.  

Also added splitSync() API


---

* [HBASE-18161](https://issues.apache.org/jira/browse/HBASE-18161) | *Minor* | **Incremental Load support for Multiple-Table HFileOutputFormat**

In order to use this feature, a user must  
1. Register their tables when configuring their job
 2. Create a composite key of the tablename and original rowkey to send as the mapper output key. 

  To register their tables (and configure their job for incremental load into multiple tables), a user must call the static MultiHFileOutputFormat.configureIncrementalLoad function to register the HBase tables that will be ingested into.   

To create the composite key, a helper function MultiHFileOutputFormat2.createCompositeKey should be called with the destination tablename and rowkey as arguments, and the result should be output as the mapper key. 

 Before this JIRA, for HFileOutputFormat2 a configuration for the storage policy was set per Column Family. This was set manually by the user. In this JIRA, this is unchanged when using HFileOutputFormat2. However, when specifically using MultiHFileOutputFormat2, the user now has to manually set the prefix by creating a composite of the table name and the column family. The user can create the new composite value by calling MultiHFileOutputFormat2.createCompositeKey with the tablename and column family as arguments.

Changes added through this JIRA are backwards compatible with existing HFileOutputFormat2 apis and functionality.

The configuration parameter "hbase.mapreduce.hfileoutputformat.table.name" is now a REQUIRED parameter though it is normally set automatically when configureIncrementalLoad method is called within HFileOutputFormat2


---

* [HBASE-18332](https://issues.apache.org/jira/browse/HBASE-18332) | *Minor* | **Upgrade asciidoctor-maven-plugin**

Committed to master and branch-2. Thanks!


---

* [HBASE-16993](https://issues.apache.org/jira/browse/HBASE-16993) | *Major* | **BucketCache throw java.io.IOException: Invalid HFile block magic when configuring hbase.bucketcache.bucket.sizes**

Any value for hbase.bucketcache.bucket.sizes  configuration to be multiple of 256.  If that is not the case, instantiation of L2 Bucket cache itself will fail throwing IllegalArgumentException.


---

* [HBASE-18430](https://issues.apache.org/jira/browse/HBASE-18430) | *Major* | **Typo in "contributing to documentation" page**

Pushed to {{master}}. Thanks, Coral! Congratulations on your first Apache HBase commit!


---

* [HBASE-15968](https://issues.apache.org/jira/browse/HBASE-15968) | *Major* | **New behavior of versions considering mvcc and ts rather than ts only**

This issue resolved two long-term issues in HBase:
Puts may be masked by a delete before them.
Major compactions change query results.

This issue offer a new behavior to fix this issue with a little performance reduction. Set NEW\_VERSION\_BEHAVIOR to true to enable this feature in CF level. See HBASE-15968 for details.
Note if you enable this feature, the order of Mutations matters. But replication will disorder the entries by default. So you have to enable serial replication if you have slave clusters. See HBASE-9465 for details.


---

* [HBASE-18374](https://issues.apache.org/jira/browse/HBASE-18374) | *Major* | **RegionServer Metrics improvements**

This change adds the latency metrics checkAndPut, checkAndDelete, putBatch and deleteBatch . Also the previous regionserver "mutate" latency metrics are renamed to "put" metrics. Batch metrics capture the latency of the entire batch containing put/delete whereas put/delete metrics capture latency per operation. Note this change will break existing monitoring based on regionserver "mutate" latency metric.


---

* [HBASE-18520](https://issues.apache.org/jira/browse/HBASE-18520) | *Minor* | **Add jmx value to determine true Master Start time**

This JIRA adds a JMX value to track when the Master has finished initializing.
The jmx config is 'masterFinishedInitializationTime' and details the time in millis that the Master is fully usable and ready to serve requests.


---

* [HBASE-18502](https://issues.apache.org/jira/browse/HBASE-18502) | *Critical* | **Change MasterObserver to use TableDescriptor and ColumnFamilyDescriptor**

The methods which change to use TableDescriptor/ColumnFamilyDescriptor are shown below.
+ preCreateTable( ObserverContext,TableDescriptor, HRegionInfo[])
+ postCreateTable(ObserverContext ,TableDescriptor, HRegionInfo[])
+ preCreateTableAction(ObserverContext, TableDescriptor,HRegionInfo[])
+ postCompletedCreateTableAction(ObserverContext,TableDescriptor,HRegionInfo[])
+ preModifyTable(ObserverContext,TableName, TableDescriptor)
+ postModifyTable(ObserverContext,TableName, TableDescriptor)
+ preModifyTableAction( ObserverContext,TableName,TableDescriptor)
+ postCompletedModifyTableAction( ObserverContext,TableName,TableDescriptor)
+ preAddColumnFamily(ObserverContext,TableName, ColumnFamilyDescriptor)
+ postAddColumnFamily(ObserverContext,TableName, ColumnFamilyDescriptor)
+ preAddColumnFamilyAction(ObserverContext,TableName,ColumnFamilyDescriptor)
+ postCompletedAddColumnFamilyAction(ObserverContext,TableName, ColumnFamilyDescriptor)
+ preModifyColumnFamily(ObserverContext,TableName, ColumnFamilyDescriptor)
+ preModifyColumnFamilyAction(ObserverContext\<MasterCoprocessorEnvironment,TableName,ColumnFamilyDescriptor)
+ postCompletedModifyColumnFamilyAction(ObserverContext\<MasterCoprocessorEnvironment\>,TableName,ColumnFamilyDescriptor)
+ preCloneSnapshot(ObserverContext\<MasterCoprocessorEnvironment\>,SnapshotDescription,TableDescriptor)
+ postCloneSnapshot(ObserverContext\<MasterCoprocessorEnvironment\>,SnapshotDescription,TableDescripto)
+ preRestoreSnapshot(ObserverContext\<MasterCoprocessorEnvironment,SnapshotDescription,TableDescriptor)
+ postRestoreSnapshot(ObserverContext\<MasterCoprocessorEnvironment,SnapshotDescription,TableDescriptor)
+ preGetTableDescriptors(ObserverContext\<MasterCoprocessorEnvironment\>,List\<TableName\>, List\<TableDescriptor\>,String) 
+ postGetTableDescriptors(ObserverContext\<MasterCoprocessorEnvironment\>,List\<TableName\>, List\<TableDescriptor\>,String)
+ preGetTableNames(ObserverContext\<MasterCoprocessorEnvironment\>,List\<TableDescriptor\>, String)
+ postGetTableNames(ObserverContext\<MasterCoprocessorEnvironment\>,List\<TableDescriptor\>, String)


---

* [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | *Major* | **limit max log message width in log4j**

Sets a log length max of 1000 characters.


---

* [HBASE-18533](https://issues.apache.org/jira/browse/HBASE-18533) | *Major* | **Expose BucketCache values to be configured**

This patch exposes configuration for Bucketcache. These configs are very similar to those for the LRU cache, but are described below:

"hbase.bucketcache.single.factor"; /\*\* Single access bucket size \*/
"hbase.bucketcache.multi.factor"; /\*\* Multiple access bucket size \*/
"hbase.bucketcache.memory.factor"; /\*\* In-memory bucket size \*/
"hbase.bucketcache.extrafreefactor"; /\*\* Free this floating point factor of extra blocks when evicting. For example free the number of blocks requested \* (1 + extraFreeFactor) \*/
"hbase.bucketcache.acceptfactor"; /\*\* Acceptable size of cache (no evictions if size \< acceptable) \*/
"hbase.bucketcache.minfactor"; /\*\* Minimum threshold of cache (when evicting, evict until size \< min) \*/


---

* [HBASE-18598](https://issues.apache.org/jira/browse/HBASE-18598) | *Minor* | **AsyncNonMetaRegionLocator use FIFO algorithm to get a candidate locate request**

Introduce FIFO algorithm to get a candidate locate request for AsyncNonMetaRegionLocator.


---

* [HBASE-18553](https://issues.apache.org/jira/browse/HBASE-18553) | *Major* | **Expose scan cursor for asynchronous scanner**

The ResultScanner which is gotten from an AsyncTable will also return cursor results if Scan.isNeedCursorResult is true.


---

* [HBASE-18489](https://issues.apache.org/jira/browse/HBASE-18489) | *Major* | **Expose scan cursor in RawScanResultConsumer**

Add a 'cursor' method which returns an 'Optional\<Cursor\>' in 'RawScanResultConsumer.ScanController'. You can use this method to obtain the scan cursor if available.



