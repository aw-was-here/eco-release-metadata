
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
# Apache HBase  2.3.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-24578](https://issues.apache.org/jira/browse/HBASE-24578) | *Major* | **[WAL] Add a parameter to config RingBufferEventHandler's SyncFuture count**

Introduce a new parameter "hbase.regionserver.wal.sync.batch.count" to control the wal sync batch size which is equals to "hbase.regionserver.handler.count" by default. It should work well if you use default wal provider---one wal per regionserver. But if you use read/write separated handlers, you can set "hbase.regionserver.wal.sync.batch.count" to the number of write handlers. And if you use wal-per-groups or wal-per-region, you can consider lower "hbase.regionserver.wal.sync.batch.count", the default number will be too big and consume more memories as the number of wals grows.


---

* [HBASE-24698](https://issues.apache.org/jira/browse/HBASE-24698) | *Major* | **Turn OFF Canary WebUI as default**

Flips default for 'HBASE-23994 Add WebUI to Canary' The UI defaulted to on at port 16050. This JIRA changes it so new UI is off by default.

To enable the UI, set property 'hbase.canary.info.port' to the port you want the UI to use.


---

* [HBASE-24722](https://issues.apache.org/jira/browse/HBASE-24722) | *Minor* | **Address hbase-shell commands with unintentional return values**

Shell commands that used to return true and false as Strings now return proper booleans: balance\_switch, snapshot\_cleanup\_switch, enable\_rpc\_throttle, disable\_rpc\_throttle, enable\_exceed\_throttle\_quota, disable\_exceed\_throttle\_quota. Shell commands that used to return the number 1 regardless of result now return correct values: is\_disabled, balancer, normalize, normalizer\_switch, normalizer\_enabled, catalogjanitor\_switch, catalogjanitor\_enabled, cleaner\_chore\_switch, cleaner\_chore\_enabled, splitormerge\_switch, splitormerge\_enabled, clear\_deadservers, clear\_block\_cache.


---

* [HBASE-24704](https://issues.apache.org/jira/browse/HBASE-24704) | *Major* | **Make the Table Schema easier to view even there are multiple families**

Improve the layout of column family from vertical to horizontal in table UI.


---

* [HBASE-24767](https://issues.apache.org/jira/browse/HBASE-24767) | *Major* | **Change default to false for HBASE-15519 per-user metrics**

Disables per-user metrics. They were enabled by default for the first time in hbase-2.3.0 but they need some work before they can be on all the time (See HBASE-15519)


---

* [HBASE-24625](https://issues.apache.org/jira/browse/HBASE-24625) | *Critical* | **AsyncFSWAL.getLogFileSizeIfBeingWritten does not return the expected synced file length.**

We add a method getSyncedLength in  WALProvider.WriterBase interface for  WALFileLengthProvider used for replication, considering the case if we use  AsyncFSWAL,we write to 3 DNs concurrently,according to the visibility guarantee of HDFS, the data will be available immediately
when arriving at DN since all the DNs will be considered as the last one in pipeline.This means replication may read uncommitted data and replicate it to the remote cluster and cause data inconsistency.The method WriterBase#getLength may return length which just in hdfs client buffer and not successfully synced to HDFS, so we use this method WriterBase#getSyncedLength to return the length successfully synced to HDFS and replication thread could only read writing WAL file limited by this length.
see also HBASE-14004 and this document for more details:
https://docs.google.com/document/d/11AyWtGhItQs6vsLRIx32PwTxmBY3libXwGXI25obVEY/edit#

Before this patch, replication may read uncommitted data and replicate it to the slave cluster and cause data inconsistency between master and slave cluster, we could use FSHLog instead of AsyncFSWAL  to reduce probability of inconsistency without this patch applied.



