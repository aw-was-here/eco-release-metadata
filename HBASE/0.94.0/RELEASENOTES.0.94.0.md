
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
# Apache HBase  0.94.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-4429](https://issues.apache.org/jira/browse/HBASE-4429) | *Major* | **Provide synchronous balanceSwitch()**

synchronousBalanceSwitch() has been added to HMaster.
It waits until current balance() call, if outstanding, to return.


---

* [HBASE-4132](https://issues.apache.org/jira/browse/HBASE-4132) | *Major* | **Extend the WALActionsListener API to accomodate log archival**

Add pre and post archiving methods to WALObserver


---

* [HBASE-4131](https://issues.apache.org/jira/browse/HBASE-4131) | *Major* | **Make the Replication Service pluggable via a standard interface definition**

The Replication Interface can be used to plug in external software for the purpose of cluster-to-cluster HBase replication.


---

* [HBASE-4145](https://issues.apache.org/jira/browse/HBASE-4145) | *Major* | **Provide metrics for hbase client**

Scan related metrics from hbase client point of view are collected.
These metrics are exposed as MapReduce counters.


---

* [HBASE-4487](https://issues.apache.org/jira/browse/HBASE-4487) | *Major* | **The increment operation can release the rowlock before sync-ing the Hlog**

The increment operation releases the rowlock before doing the sync to the HLog. This improves performance of increments on hot rows. There is a fundamental change to the group-commit behaviour: it batches transactions in HBase code before pushing it down to the wal.


---

* [HBASE-4465](https://issues.apache.org/jira/browse/HBASE-4465) | *Major* | **Lazy-seek optimization for StoreFile scanners**

Check the most recent file first before seeking all other files in a Store.


---

* [HBASE-4489](https://issues.apache.org/jira/browse/HBASE-4489) | *Major* | **Better key splitting in RegionSplitter**

The split algorithm used by RegionSplitter is now a required parameter. Previously there was one split algorithm called MD5StringSplit, which was the default. MD5StringSplit has been renamed to HexStringSplit, and tweaked so that its maximum key is now "FFFFFFFF" instead of "7FFFFFFF. A new split algorithm UniformSplit has been added which treats keys as arbitrary bytes.


---

* [HBASE-4460](https://issues.apache.org/jira/browse/HBASE-4460) | *Major* | **Support running an embedded ThriftServer within a RegionServer**

Run a ThriftServer embedded within a RegionServer process by setting "hbase.regionserver.export.thrift" to true.


---

* [HBASE-4648](https://issues.apache.org/jira/browse/HBASE-4648) | *Major* | **Bytes.toBigDecimal() doesn't use offset**

**WARNING: No release note provided for this change.**


---

* [HBASE-4528](https://issues.apache.org/jira/browse/HBASE-4528) | *Major* | **The put operation can release the rowlock before sync-ing the Hlog**

Adds early-lock-release ability so we can do the WAL sync outside of the row lock.  Extends MemStore/RWCC to support rollback.


---

* [HBASE-4669](https://issues.apache.org/jira/browse/HBASE-4669) | *Minor* | **Add an option of using round-robin assignment for enabling table**

A new config parameter, hbase.master.enabletable.roundrobin, was introduced in this JIRA.
The default value is false and old behavior is kept.
When set true, regions of the table being enabled are assigned round-robin across the cluster.


---

* [HBASE-4696](https://issues.apache.org/jira/browse/HBASE-4696) | *Major* | **HRegionThriftServer' might have to indefinitely do redirtects**

RS embedded thrift server can have redirecting turned on/off with "hbase.regionserver.thrift.redirect" (default: false)


---

* [HBASE-4480](https://issues.apache.org/jira/browse/HBASE-4480) | *Minor* | **Testing script to simplify local testing**

Script to run a set of hbase tests.  Run ./src/test/bin/test-util.sh -h to see usage.


---

* [HBASE-4746](https://issues.apache.org/jira/browse/HBASE-4746) | *Major* | **Use a random ZK client port in unit tests so we can run them in parallel**

HTable ctors which only take table name are removed in 0.94


---

* [HBASE-3433](https://issues.apache.org/jira/browse/HBASE-3433) | *Critical* | **Remove the KV copy of every KV in Scan; introduced by HBASE-3232**

**WARNING: No release note provided for this change.**


---

* [HBASE-4752](https://issues.apache.org/jira/browse/HBASE-4752) | *Minor* | **Don't create an unnecessary LinkedList when evicting from the BlockCache**

This change removes a bit of public API, which although it is public I think is expected to be internal to HBase.


---

* [HBASE-4768](https://issues.apache.org/jira/browse/HBASE-4768) | *Major* | **Per-(table, columnFamily) metrics with configurable table name inclusion**

Trying to get the most recent patch tested on Hudson.


---

* [HBASE-2418](https://issues.apache.org/jira/browse/HBASE-2418) | *Critical* | **add support for ZooKeeper authentication**

This adds support for protecting the state of HBase znodes on a multi-tenant ZooKeeper cluster. This support requires ZK 3.4.0. It is a companion patch to HBASE-2742 (secure RPC), and HBASE-3025 (Coprocessor based access control).

SASL authentication of ZooKeeper clients with the quorum is handled in the ZK client independently of HBase concerns. To enable strong ZK authentication, one must create a suitable JaaS configuration, for example:

  Server {
    com.sun.security.auth.module.Krb5LoginModule required
    useKeyTab=true
    keyTab="/etc/hbase/conf/hbase.keytab"
    storeKey=true
    useTicketCache=false
    principal="zookeeper/$HOSTNAME";
  };
  Client {
    com.sun.security.auth.module.Krb5LoginModule required
    useKeyTab=true
    useTicketCache=false
    keyTab="/etc/hbase/conf/hbase.keytab"
    principal="hbase/$HOSTNAME";
  };

and then configure both the client and server processes to use it, for example in hbase-site.xml:

  HBASE\_OPTS="${HBASE\_OPTS} -Djava.security.auth.login.config=/etc/hbase/conf/jaas.conf"
  HBASE\_OPTS="${HBASE\_OPTS} -Dzookeeper.kerberos.removeHostFromPrincipal=true"
  HBASE\_OPTS="${HBASE\_OPTS} -Dzookeeper.kerberos.removeRealmFromPrincipal=true"

HBase will then secure all znodes but for a few world-readable read-only ones needed for clients to look up region locations. All internal cluster operations will be protected from unauthenticated ZK clients, or clients not authenticated to the HBase principal. Presumably the only ZK clients authenticated to the HBase principal will be those embedded in the master and regionservers.

We will pull in a Hadoop artifact patched with HADOOP-7070 if building under the security profile (-P security). 0.20.205 does not yet include HADOOP-7070. Without it, the JAAS configuration required for secure operation of the ZooKeeper client will be ignored.


---

* [HBASE-4798](https://issues.apache.org/jira/browse/HBASE-4798) | *Minor* | **Sleeps and synchronisation improvements for tests**

last try on the same patch, but I think it's ok to commit it.


---

* [HBASE-4809](https://issues.apache.org/jira/browse/HBASE-4809) | *Minor* | **Per-CF set RPC metrics**

Testing the patch on Hudson.


---

* [HBASE-4989](https://issues.apache.org/jira/browse/HBASE-4989) | *Minor* | **Metrics to measure sequential reads and random reads separately**

The metric fsReadLatency records the number of sequential reads. The metric fsPreadLatency records the number of random reads.


---

* [HBASE-5017](https://issues.apache.org/jira/browse/HBASE-5017) | *Blocker* | **Bump the default hfile.block.cache.size because of HFileV2**

The default percentage of heap space allocated to the block cache has been increased from 20% to 25%. However, index caching is now accounted for in the block cache, so total heap usage should be minimally affected.


---

* [HBASE-5055](https://issues.apache.org/jira/browse/HBASE-5055) | *Blocker* | **Build against hadoop 0.22 broken**

Changes pom so we build against 0.22.0 release.


---

* [HBASE-5033](https://issues.apache.org/jira/browse/HBASE-5033) | *Major* | **Opening/Closing store in parallel to reduce region open/close time**

"hbase.hstore.open.and.close.threads.max" is introduced to control the number of threads for opening/closing Store and store files.


---

* [HBASE-5201](https://issues.apache.org/jira/browse/HBASE-5201) | *Major* | **Utilize TThreadedSelectorServer and remove redundant code in ThriftServer and HRegionThriftServer**

New config parameters:

"hbase.thrift.selector.threads"  Number of selector threads for reading and writing socket
"hbase.thrift.worker.threads"  Number of threads for processing the thrift calls
"hbase.thrift.stop.timeout.seconds"  Time to wait for server to stop gracefully
"hbase.thrift.accept.queue.size.per.selector"  Maximum number of accepted elements per selector
"hbase.thrift.accept.policy" The strategy for handling new accepted connections


---

* [HBASE-3373](https://issues.apache.org/jira/browse/HBASE-3373) | *Major* | **Allow regions to be load-balanced by table**

There is a parameter, hbase.regions.slop, with default value of 0.2
This parameter allows actual region count to deviate by this percentage from (ideal) average region count.


---

* [HBASE-5384](https://issues.apache.org/jira/browse/HBASE-5384) | *Major* | **Up heap used by hadoopqa**

Make hadoopqa mvn heap same as it is for other hbase builds (trunk, 0.92, etc.)


---

* [HBASE-4218](https://issues.apache.org/jira/browse/HBASE-4218) | *Major* | **Data Block Encoding of KeyValues  (aka delta encoding / prefix compression**

Adds a block compression that stores the diff from the previous key only.  Good for big keys and small value datasets.  Makes writing and scanning slower but because the blocks compressed with this feature stay compressed when in memory up in the block cache, more data is cached.  Off by default (DATA\_BLOCK\_ENCODING=NONE on column descriptor).  To enable, set DATA\_BLOCK\_ENCODING to PREFIX, DIFF or FAST\_DIFF on the column descriptor.  Set ENCODE\_ON\_DISK to true on column descriptor to have the encoding in place out in the hfile (on by default).


---

* [HBASE-5199](https://issues.apache.org/jira/browse/HBASE-5199) | *Major* | **Delete out of TTL store files before compaction selection**

set hbase.store.delete.expired.storefile as true to enable the expired store file deletion


---

* [HBASE-5209](https://issues.apache.org/jira/browse/HBASE-5209) | *Major* | **HConnection/HMasterInterface should allow for way to get hostname of currently active master in multi-master HBase setup**

ClusterStatus client running this change running against servers without this change will encounter an error in readFields() as the new client will be expecting extra fields at the end of the Writable that the old server will not be providing.


---

* [HBASE-5166](https://issues.apache.org/jira/browse/HBASE-5166) | *Minor* | **MultiThreaded Table Mapper analogous to MultiThreaded Mapper in hadoop**

New MultiThreadedTableMapper facility


---

* [HBASE-4365](https://issues.apache.org/jira/browse/HBASE-4365) | *Critical* | **Add a decent heuristic for region size**

Changes default splitting policy from ConstantSizeRegionSplitPolicy to IncreasingToUpperBoundRegionSplitPolicy.  Splits quickly initially slowing as the number of regions climbs.

Split size is the number of regions that are on this server that all are of the same table, squared, times the region flush size OR the maximum region split size, whichever is smaller.  For example, if the flush size is 128M, then on first flush we will split which will make two regions that will split when their size is 2 \* 2 \* 128M = 512M.  If one of these regions splits, then there are three regions and now the split size is  3 \* 3 \* 128M =  1152M, and so on until we reach the configured maximum filesize and then from there on out, we'll use that.

Be warned, this new default could bring on lots of splits if you have many tables on your cluster.  Either go back to to the old split policy or up the lower bound configuration.

This patch changes the default split size from 64M to 128M.  It makes the region eventual split size, hbase.hregion.max.filesize, 10G (It was 1G).


---

* [HBASE-5074](https://issues.apache.org/jira/browse/HBASE-5074) | *Major* | **support checksums in HBase block cache**

Adds hbase.regionserver.checksum.verify.  If hbase.regionserver.checksum.verify is set to true, then hbase will read data and then verify checksums. Checksum verification inside hdfs will be switched off.  If the hbase-checksum verification fails, then it will switch back to using hdfs checksums for verifiying data that is being read from storage.  Also adds hbase.hstore.bytes.per.checksum -- number of bytes in a newly created checksum chunk -- and hbase.hstore.checksum.algorithm, name of an algorithm that is used to compute checksums.

You will currently only see benefit if you have the local read short-circuit enabled -- see http://hbase.apache.org/book.html#perf.hdfs.configs -- while HDFS-3429 goes unfixed.


---

* [HBASE-4608](https://issues.apache.org/jira/browse/HBASE-4608) | *Major* | **HLog Compression**

Adds a custom dictionary-based compression on WAL.  Off by default.  To enable, set hbase.regionserver.wal.enablecompression to true in hbase-site.xml.
Note that replication is currently broken when WAL compression is enabled.


---

* [HBASE-5128](https://issues.apache.org/jira/browse/HBASE-5128) | *Major* | **[uber hbck] Online automated repair of table integrity and region consistency problems**

HBaseFsck (hbck) has been updated with new repair capabilities.  hbck is a tool for checking the region consistency and the table integrity invariants of a running HBase cluster.  Checking region consistency verifies that .META., region deployment on region servers and the state of data in HDFS (.regioninfo files) all are in accordance.  Table integrity checks verify that all possible row keys resolve to exactly one region of a table -- e.g. there are no individual degenerate or backwards regions; no holes between regions; and no overlapping regions.  Previously hbck had the ability to diagnose inconsistencies but only had the ability to repair deployment region consistency problems.  The updated version now has been augmented with the ability repair region consistency problems in .META. (by patching holes), repair overlapping regions (via merging), patch region holes (by fabricating new regions), and detecting and adopting orphaned regions (by fabricating new .regioninfo file if it is missing in a region's dir).

Caveats:
\* The new hbck selects repairs assuming that HDFS as ground truth, the previous version treated .META. as ground truth.
\* The hbck '-fix' option is present but deprecated and replaced with '-fixAssignments' option.
\* This tool adds APIs in 0.90.7, 0.92.2 and 0.94.0 for clean repairs.  The 0.90 version of the tool is compatible with HBase 0.90+, but may require restarting the master or individual individual regionserver for table enable/disable/delete commands to work properly.


---

* [HBASE-5190](https://issues.apache.org/jira/browse/HBASE-5190) | *Major* | **Limit the IPC queue size based on calls' payload size**

Each region server can only have 1GB worth of calls's payload in flight and will refuse new calls when above that limit (those get automatically retried on the client side). Also, ipc.server.max.queue.size is now called ipc.server.max.callqueue.length


---

* [HBASE-5671](https://issues.apache.org/jira/browse/HBASE-5671) | *Critical* | **hbase.metrics.showTableName should be true by default**

Sets hbase.metrics.showTableName to true as the default.  See  hbase-default.xml for explaination of this configuration.


---

* [HBASE-5701](https://issues.apache.org/jira/browse/HBASE-5701) | *Major* | **Put RegionServerDynamicStatistics under RegionServer in MBean hierarchy rather than have it as a peer.**

**WARNING: No release note provided for this change.**


---

* [HBASE-3443](https://issues.apache.org/jira/browse/HBASE-3443) | *Critical* | **ICV optimization to look in memstore first and then store files (HBASE-3082) does not work when deletes are in the mix**

This is a correctness fix and will incur a 10-20% performance penalty for ICV and Increment operations. Other operations are not affected.


---

* [HBASE-5604](https://issues.apache.org/jira/browse/HBASE-5604) | *Major* | **M/R tool to replay WAL files**

Tool to replay WAL files using a M/R job.

The WAL can be replayed for a set of tables or all tables, and a timerange can be provided (in milliseconds).
The WAL is filtered to this set of tables, the output can optionally be mapped to another set of tables.

WAL replay can also generate HFiles for later bulk importing, in that case the WAL is replayed for a single table only.


---

* [HBASE-4393](https://issues.apache.org/jira/browse/HBASE-4393) | *Major* | **Implement a canary monitoring program**

Tool to check cluster.  See $ ./bin/hbase org.apache.hadoop.hbase.tool.Canary -help for how to use.


---

* [HBASE-5849](https://issues.apache.org/jira/browse/HBASE-5849) | *Major* | **On first cluster startup, RS aborts if root znode is not available**

Rather than exit, the regionserver will now wait even though the root directory in zookeeper has yet to be created.


---

* [HBASE-5862](https://issues.apache.org/jira/browse/HBASE-5862) | *Critical* | **After Region Close remove the Operation Metrics.**

Fixes the case where when a region closed, its metrics did not; they stayed up associated w/ old hosting server even though region may have moved elsewhere.


---

* [HBASE-5189](https://issues.apache.org/jira/browse/HBASE-5189) | *Minor* | **Add metrics to keep track of region-splits in RS**

Split metrics are now persistent across metrics reporting periods.  Also the min/max/avg time of the split operation are stored.


---

* [HBASE-5208](https://issues.apache.org/jira/browse/HBASE-5208) | *Minor* | **Allow setting Scan start/stop row individually in TableInputFormat**

Added "hbase.mapreduce.scan.row.start" and "hbase.mapreduce.scan.row.stop" for defining start and stop rows for a MapReduce job without having to serialize a Scan object.



