
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
# Apache HBase  2.2.6 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-24524](https://issues.apache.org/jira/browse/HBASE-24524) | *Minor* | **SyncTable logging improvements**

Notice this has changed log level for mismatching row keys, originally those were being logged at INFO level, now it's logged at DEBUG level. This is consistent with the logging of mismatching cells. Also, for missing row keys, it now logs row key values in human readable format, making it more meaningful for operators troubleshooting mismatches.


---

* [HBASE-24205](https://issues.apache.org/jira/browse/HBASE-24205) | *Major* | **Create metric to know the number of reads that happens from memstore**

Adds a new metric where we collect the number of read requests (tracked per row) whether the row was fetched completely from memstore or it was pulled from files  and memstore. 
The metric is now collected under the mbean for Tables and under the mbean for regions.
Under table mbean ie.- 
'name": "Hadoop:service=HBase,name=RegionServer,sub=Tables'
The new metrics will be listed as 
{code}
    "Namespace\_default\_table\_t3\_columnfamily\_f1\_metric\_memstoreOnlyRowReadsCount": 5,
 "Namespace\_default\_table\_t3\_columnfamily\_f1\_metric\_mixedRowReadsCount": 1,
{code}
Where the format is Namespace\_\<namespacename\>\_table\_\<tableName\>\_columnfamily\_\<columnfamilyname\>\_metric\_memstoreOnlyRowReadsCount
Namespace\_\<namespacename\>\_table\_\<tableName\>\_columnfamily\_\<columnfamilyname\>\_metric\_mixedRowReadsCount
{code}

The same one under the region ie. 
"name": "Hadoop:service=HBase,name=RegionServer,sub=Regions",
comes as
{code}
   "Namespace\_default\_table\_t3\_region\_75a7846f4ac4a2805071a855f7d0dbdc\_store\_f1\_metric\_memstoreOnlyRowReadsCount": 5,
    "Namespace\_default\_table\_t3\_region\_75a7846f4ac4a2805071a855f7d0dbdc\_store\_f1\_metric\_mixedRowReadsCount": 1,
{code}
where
Namespace\_\<namespacename\_table\_\<tableName\>\_region\_\<regionName\>\_store\_\<storeName\>\_metric\_memstoreOnlyRowReadsCount
Namespace\_\<namespacename\_table\_\<tableName\>\_region\_\<regionName\>\_store\_\<storeName\>\_metric\_mixedRowReadsCount
This is also an aggregate against every store the number of reads that happened purely from the memstore or it was a  mixed read that happened from memstore and file.


---

* [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | *Critical* | **Zookeeper sync() call is async**

<!-- markdown -->

Fixes a couple of bugs in ZooKeeper interaction. Firstly, zk sync() call that is used to sync the lagging followers with leader so that the client sees a consistent snapshot state was actually asynchronous under the hood. We make it synchronous for correctness. Second, zookeeper events are now processed in a separate thread rather than doing it in the thread context of zookeeper client connection. This decoupling frees up client connection quickly and avoids deadlocks.


---

* [HBASE-24578](https://issues.apache.org/jira/browse/HBASE-24578) | *Major* | **[WAL] Add a parameter to config RingBufferEventHandler's SyncFuture count**

Introduce a new parameter "hbase.regionserver.wal.sync.batch.count" to control the wal sync batch size which is equals to "hbase.regionserver.handler.count" by default. It should work well if you use default wal provider---one wal per regionserver. But if you use read/write separated handlers, you can set "hbase.regionserver.wal.sync.batch.count" to the number of write handlers. And if you use wal-per-groups or wal-per-region, you can consider lower "hbase.regionserver.wal.sync.batch.count", the default number will be too big and consume more memories as the number of wals grows.


---

* [HBASE-24625](https://issues.apache.org/jira/browse/HBASE-24625) | *Critical* | **AsyncFSWAL.getLogFileSizeIfBeingWritten does not return the expected synced file length.**

We add a method getSyncedLength in  WALProvider.WriterBase interface for  WALFileLengthProvider used for replication, considering the case if we use  AsyncFSWAL,we write to 3 DNs concurrently,according to the visibility guarantee of HDFS, the data will be available immediately
when arriving at DN since all the DNs will be considered as the last one in pipeline.This means replication may read uncommitted data and replicate it to the remote cluster and cause data inconsistency.The method WriterBase#getLength may return length which just in hdfs client buffer and not successfully synced to HDFS, so we use this method WriterBase#getSyncedLength to return the length successfully synced to HDFS and replication thread could only read writing WAL file limited by this length.
see also HBASE-14004 and this document for more details:
https://docs.google.com/document/d/11AyWtGhItQs6vsLRIx32PwTxmBY3libXwGXI25obVEY/edit#

Before this patch, replication may read uncommitted data and replicate it to the slave cluster and cause data inconsistency between master and slave cluster, we could use FSHLog instead of AsyncFSWAL  to reduce probability of inconsistency without this patch applied.


---

* [HBASE-24126](https://issues.apache.org/jira/browse/HBASE-24126) | *Major* | **Up the container nproc uplimit from 10000 to 12500**

Start docker with upped ulimit for nproc passing '--ulimit nproc=12500'. It was 10000, the default, but made it 12500. Then, set PROC\_LIMIT in hbase-personality so when yetus runs, it is w/ the new 12500 value.


---

* [HBASE-24150](https://issues.apache.org/jira/browse/HBASE-24150) | *Major* | **Allow module tests run in parallel**

Pass -T2 to mvn. Makes it so we do two modules-at-a-time dependencies willing. Helps speed build and testing. Doubles the resource usage when running modules in parallel.


---

* [HBASE-24892](https://issues.apache.org/jira/browse/HBASE-24892) | *Major* | **config 'hbase.hregion.memstore.mslab.indexchunksize' not be used**

Remove the config "hbase.hregion.memstore.mslab.indexchunksize" which never used. And use "hbase.hregion.memstore.mslab.indexchunksize.percent" instead.



