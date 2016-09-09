
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
# Apache HBase  0.20.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-1144](https://issues.apache.org/jira/browse/HBASE-1144) | *Major* | **Store the ROOT region location in Zookeeper**

**WARNING: No release note provided for this change.**


---

* [HBASE-61](https://issues.apache.org/jira/browse/HBASE-61) | *Blocker* | **[hbase] Create an HBase-specific MapFile implementation**

**WARNING: No release note provided for this change.**


---

* [HBASE-859](https://issues.apache.org/jira/browse/HBASE-859) | *Blocker* | **HStoreKey needs a reworking**

**WARNING: No release note provided for this change.**


---

* [HBASE-1217](https://issues.apache.org/jira/browse/HBASE-1217) | *Major* | **add new compression and hfile blocksize to HColumnDescriptor**

**WARNING: No release note provided for this change.**


---

* [HBASE-1231](https://issues.apache.org/jira/browse/HBASE-1231) | *Trivial* | **Today, going from a RowResult to a BatchUpdate reqiures some data processing even though they are pretty much the same thing.**

Patch is adding a new constructor for BatchUpdate.


---

* [HBASE-1145](https://issues.apache.org/jira/browse/HBASE-1145) | *Major* | **Ensure that there is only 1 Master with Zookeeper (part of HA Master)**

**WARNING: No release note provided for this change.**


---

* [HBASE-1289](https://issues.apache.org/jira/browse/HBASE-1289) | *Major* | **Remove "hbase.fully.distributed" option and update docs**

**WARNING: No release note provided for this change.**


---

* [HBASE-1157](https://issues.apache.org/jira/browse/HBASE-1157) | *Major* | **If we do not take start code as a part of region server recovery, we could inadvertantly try to reassign regions assigned to a restarted server with a different start code**

Part of region server death recovery depends on knowing which instance (start code) of the server being recovered.

If we allow a new instance to join the cluster immediately (desirable) then we must know the difference between regions
served by a previous instance of a server with the same ipaddress:port and the current instance. We need to have the 
information about the startcode to know the difference.


---

* [HBASE-1331](https://issues.apache.org/jira/browse/HBASE-1331) | *Major* | **Lower the default scanner caching value**

The default hbase.client.scanner.caching is now 1, not 30.


---

* [HBASE-1301](https://issues.apache.org/jira/browse/HBASE-1301) | *Minor* | **HTable.getRow() returns null if the row does no exist**

Fix API doc of HTable.getRow (non-existent row key returns null instead of empty RowResult)


---

* [HBASE-1292](https://issues.apache.org/jira/browse/HBASE-1292) | *Minor* | **php thrift's getRow() would throw an exception if the row does not exist**

thrift's getRow\*() now throws NotFound if the row key does not exist


---

* [HBASE-1348](https://issues.apache.org/jira/browse/HBASE-1348) | *Blocker* | **Move 0.20.0 targeted TRUNK to 0.20.0 hadoop**

**WARNING: No release note provided for this change.**


---

* [HBASE-1342](https://issues.apache.org/jira/browse/HBASE-1342) | *Major* | **Add to filesystem info needed to rebuild .META.**

**WARNING: No release note provided for this change.**


---

* [HBASE-1279](https://issues.apache.org/jira/browse/HBASE-1279) | *Major* | **Fix the way hostnames and IPs are handled**

To tell HBase how to use your DNS configuration, set hbase.regionserver.dns.interface and hbase.regionserver.dns.nameserver in hbase-site.xml just like in hadoop-site.xml


---

* [HBASE-1361](https://issues.apache.org/jira/browse/HBASE-1361) | *Major* | **Disable bloom filters**

**WARNING: No release note provided for this change.**


---

* [HBASE-1367](https://issues.apache.org/jira/browse/HBASE-1367) | *Major* | **get rid of thrift exception 'NotFound'**

**WARNING: No release note provided for this change.**


---

* [HBASE-1286](https://issues.apache.org/jira/browse/HBASE-1286) | *Major* | **Thrift should support next(nbRow) like functionality**

We will need to regenerate the hbase/thrift/generated directory


---

* [HBASE-1264](https://issues.apache.org/jira/browse/HBASE-1264) | *Minor* | **Wrong return values of comparators for ColumnValueFilter**

Patch fixes the return values of org.apache.hadoop.hbase.filter.RegexStringComparator.compareTo()


---

* [HBASE-1454](https://issues.apache.org/jira/browse/HBASE-1454) | *Minor* | **HBaseAdmin.getClusterStatus**

**WARNING: No release note provided for this change.**


---

* [HBASE-1357](https://issues.apache.org/jira/browse/HBASE-1357) | *Major* | **If one sets the hbase.master to 0.0.0.0 non local regionservers can't find the master**

hbase.master and hbase.master.hostname are now obsolete. hbase.cluster.distributed must be set at "true" to have a fully-distributed setup along with at least one configured ZK server which is not pointing at localhost.
Also, zoo.cfg must be in the classpath of every client.


---

* [HBASE-1304](https://issues.apache.org/jira/browse/HBASE-1304) | *Blocker* | **New client server implementation of how gets and puts are handled.**

New API - Scan, Get.  New result class 'Result'. 
Some old API methods may have been removed.  
Old filters are semi-broken - any row-based filtering works, but complex column filtering options don't.


---

* [HBASE-1495](https://issues.apache.org/jira/browse/HBASE-1495) | *Major* | **IllegalArgumentException in halfhfilereader#next**

Fixed by HBASE-1520, HBASE-1522


---

* [HBASE-1578](https://issues.apache.org/jira/browse/HBASE-1578) | *Major* | **Change the name of the in-memory updates from 'memcache' to 'memtable' or....**

Settings whose names contained 'memcache' are now renamed so there name includes 'memstore' instead.  Update your hbase-site.xml.


---

* [HBASE-1563](https://issues.apache.org/jira/browse/HBASE-1563) | *Major* | **incrementColumnValue does not write to WAL**

Adds new API with flag to incrementColumnValue for whether or not to write WAL


---

* [HBASE-1581](https://issues.apache.org/jira/browse/HBASE-1581) | *Major* | **Run major compaction on .META. when table is dropped or truncated**

Each drop table now runs a major compaction of '.META.' table.  User probably won't even notice as it runs quickly.


---

* [HBASE-1460](https://issues.apache.org/jira/browse/HBASE-1460) | *Major* | **Concurrent LRU Block Cache**

hfile.block.cache.size is not a percentage of total heap rather than absolute number


---

* [HBASE-1586](https://issues.apache.org/jira/browse/HBASE-1586) | *Major* | **Bring back transactions and indexing for 0.20**

Moved transactional hbase and tableindexed hbase to src/contrib/transactional


---

* [HBASE-1582](https://issues.apache.org/jira/browse/HBASE-1582) | *Major* | **Translate ColumnValueFilter and RowFilterSet to the new Filter interface**

**WARNING: No release note provided for this change.**


---

* [HBASE-1599](https://issues.apache.org/jira/browse/HBASE-1599) | *Major* | **Fix TestFilterSet, broken up on hudson**

Recast FilterSet as a FilterList


---

* [HBASE-1626](https://issues.apache.org/jira/browse/HBASE-1626) | *Major* | **Allow emitting Deletes out of new TableReducer**

Undoes alot of the stipulation regards types coming out of TableMapper and in and out of TableReducer going into TableOutputFormat.  See javadoc.


---

* [HBASE-698](https://issues.apache.org/jira/browse/HBASE-698) | *Blocker* | **HLog recovery is not performed after master failure**

Old setups running 0.19 should first delete everything that's log\_\* in HBase root HDFS folder before updating. Make sure HBase is down before doing that. Also this will be done by migration in 0.20.0


---

* [HBASE-1583](https://issues.apache.org/jira/browse/HBASE-1583) | *Major* | **Start/Stop of large cluster untenable**

No compaction on disable or shutdown of cluster.  No disable on open or enable unless the region has references.


---

* [HBASE-1609](https://issues.apache.org/jira/browse/HBASE-1609) | *Major* | **[part of hbase-1583] We wait on leases to expire before regionserver goes down.  Rather, just let client fail**

No more trying to be sweet to clients.  If admin wants cluster to go down, we go down and let the clients each EOFExceptions (because RPC was cutoff midways) and failed connect type exceptions.  Puts take out a row lock so should make it in before their Region closes (though if part of a batch, all in batch are not guaranteed to make it in)



