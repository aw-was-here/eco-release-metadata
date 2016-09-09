
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
# Apache HBase  0.95.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-4403](https://issues.apache.org/jira/browse/HBASE-4403) | *Major* | **Adopt interface stability/audience classifications from Hadoop**

Adds stability and audience classification annotations on all classes


---

* [HBASE-5074](https://issues.apache.org/jira/browse/HBASE-5074) | *Major* | **support checksums in HBase block cache**

Adds hbase.regionserver.checksum.verify.  If hbase.regionserver.checksum.verify is set to true, then hbase will read data and then verify checksums. Checksum verification inside hdfs will be switched off.  If the hbase-checksum verification fails, then it will switch back to using hdfs checksums for verifiying data that is being read from storage.  Also adds hbase.hstore.bytes.per.checksum -- number of bytes in a newly created checksum chunk -- and hbase.hstore.checksum.algorithm, name of an algorithm that is used to compute checksums.

You will currently only see benefit if you have the local read short-circuit enabled -- see http://hbase.apache.org/book.html#perf.hdfs.configs -- while HDFS-3429 goes unfixed.


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

* [HBASE-5610](https://issues.apache.org/jira/browse/HBASE-5610) | *Major* | **Add GA to hbase.apache.org**

Adds GA hooks to our website.


---

* [HBASE-5671](https://issues.apache.org/jira/browse/HBASE-5671) | *Critical* | **hbase.metrics.showTableName should be true by default**

Sets hbase.metrics.showTableName to true as the default.  See  hbase-default.xml for explaination of this configuration.


---

* [HBASE-5655](https://issues.apache.org/jira/browse/HBASE-5655) | *Major* | **Cap space usage of default log4j rolling policy**

This changes the default log rolling scheme from DRFA to RFA. The former rolls over the log on a date change trigger, while the later rolls over when the log file size reaches a predefined limit. The issue with DRFA is that it doesn't have the ability to cap the space usage, so users who are not using host-level log rotation might fill up their log partitions. This results in a cluster crash. RFA puts a size limit on the log size and therefore is a safer option in such scenarios. The default file size is 256MB with 20 files (total of 5GB logs). In case one needs to revert to the original DRFA (for some legacy tools etc), one can set environment variable HBASE\_ROOT\_LOGGER to \<ROOT\_LOGGER\_LEVEL,DRFA\>. Please refer to the hbase-env.sh for more details.


---

* [HBASE-5688](https://issues.apache.org/jira/browse/HBASE-5688) | *Major* | **Convert zk root-region-server znode content to pb**

Changes the content of the  root location znode, root-region-server, to be
four magic bytes ('PBUF') followed by a protobuf message that holds the
ServerName of the server currently hosting root.


---

* [HBASE-5451](https://issues.apache.org/jira/browse/HBASE-5451) | *Major* | **Switch RPC call envelope/headers to PBs**

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

* [HBASE-5784](https://issues.apache.org/jira/browse/HBASE-5784) | *Major* | **Enable mvn deploy of website**

Build and deploy the site with the below command

      $ ~/bin/apache-maven-3.0.4/bin/mvn -X clean site:site site:deploy

You must use mvn3.

You will probably also need a settings.xml file under your ~/.m2/ directory as described here: http://www.apache.org/dev/publishing-maven-artifacts.html

All site deploys should go via this path going forward because it ensures permissions up in apache making it so other members of hbase group can deploy w/o permission conflicts.


---

* [HBASE-4393](https://issues.apache.org/jira/browse/HBASE-4393) | *Major* | **Implement a canary monitoring program**

Tool to check cluster.  See $ ./bin/hbase org.apache.hadoop.hbase.tool.Canary -help for how to use.


---

* [HBASE-5862](https://issues.apache.org/jira/browse/HBASE-5862) | *Critical* | **After Region Close remove the Operation Metrics.**

Fixes the case where when a region closed, its metrics did not; they stayed up associated w/ old hosting server even though region may have moved elsewhere.


---

* [HBASE-5887](https://issues.apache.org/jira/browse/HBASE-5887) | *Major* | **Make TestAcidGuarantees usable for system testing.**

Fix TestAcidGuarantees so it can be run from its Main (so you can point it at a cluster to run)


---

* [HBASE-5889](https://issues.apache.org/jira/browse/HBASE-5889) | *Major* | **Remove HRegionInterface**

**WARNING: No release note provided for this change.**


---

* [HBASE-5548](https://issues.apache.org/jira/browse/HBASE-5548) | *Major* | **Add ability to get a table in the shell**

Adding the ability to get a reference to a table in the shell.

Previously, all commands that acted on a table would need to take the name of the table as a string, which is annoying in an OO REPL. This patch introduces the ability to get and hold a reference to a table both on creation (via create(...)) and at will (via get\_table(...)).

Further, to actually make the table useful, modifications to table specific class were made so you can have a reference and just do things like put, scan, get, etc. on that table reference. To accommodate new table functionality, table specific methods are easily added (one line) in a dynamic fashion via class methods in the Table. See examples in get, put, scan, etc..

There is also a lot of admin functionality tied to a table - things like disabling, dropping, describing, etc - that were added to the table class. Now you can do things like 'table.disable' and 'table.describe'. Again these were dynamically added, so new admin functionality for a table is as simple as adding the method name to one line in the Table class.


---

* [HBASE-5544](https://issues.apache.org/jira/browse/HBASE-5544) | *Major* | **Add metrics to HRegion.processRow()**

Collects the time spent on each step in HRegion.processRow()
Here are the metrics collected

rowprocessor.\<name\>.nano
rowprocessor.\<name\>.error.nano
rowprocessor.\<name\>. acquirelock.nano
rowprocessor.\<name\>. occupylock.nano
rowprocessor.\<name\>. sync.nano

where \<name\> is the value of RowProcessor.getName().


---

* [HBASE-5939](https://issues.apache.org/jira/browse/HBASE-5939) | *Minor* | **Add an autorestart option in the start scripts**

When launched with autorestart, HBase processes will automatically restart if they are not properly terminated, either by a "stop" command or by a cluster stop. To ensure that it does not overload the system when the server itself is corrupted and the process cannot be restarted, the server sleeps for 5 minutes before restarting if it was already started 5 minutes ago previously. To use it, launch the process with "bin/start-hbase autorestart". This option is not fully compatible with the existing "restart" command: if you ask for a restart on a server launched with autorestart, the server will restart but the next server instance won't be automatically restarted.


---

* [HBASE-5990](https://issues.apache.org/jira/browse/HBASE-5990) | *Major* | **TestHCM failed with Hadoop 2.0.0**

**WARNING: No release note provided for this change.**


---

* [HBASE-6001](https://issues.apache.org/jira/browse/HBASE-6001) | *Major* | **Upgrade slf4j to 1.6.1**

The version of SLF4J we bundle is now targeted to that required by the Hadoop version HBase has been compiled against.


---

* [HBASE-6010](https://issues.apache.org/jira/browse/HBASE-6010) | *Minor* | **Security audit logger configuration for log4j**

We now set up security audit logging in the LOG4J configuration in a similar manner to Hadoop core.


---

* [HBASE-5453](https://issues.apache.org/jira/browse/HBASE-5453) | *Major* | **Switch on-disk formats (reference files, HFile meta fields, etc) to PB**

Convert Reference, .tableinfo, .regioninfo, hbase.version, and hbase.id files to have pb content.


---

* [HBASE-6113](https://issues.apache.org/jira/browse/HBASE-6113) | *Major* | **[eclipse] Fix eclipse import of hbase-assembly null pointer**

One-liner fix. Should make people using eclipse happier since the project should now import.


---

* [HBASE-6114](https://issues.apache.org/jira/browse/HBASE-6114) | *Major* | **CacheControl flags should be tunable per table schema per CF**

Make CacheControl flags tunable per table schema per CF; e.g.
cacheDataOnWrite, cacheIndexesOnWrite and cacheBloomsOnWrite.


---

* [HBASE-6087](https://issues.apache.org/jira/browse/HBASE-6087) | *Major* | **Add hbase-common module**

New module for common base hbase classes.


---

* [HBASE-5564](https://issues.apache.org/jira/browse/HBASE-5564) | *Major* | **Bulkload is discarding duplicate records**

1) Provision for using the existing timestamp (HBASE\_TS\_KEY)
2) Bug fix to use same timestamp across mappers.


---

* [HBASE-6207](https://issues.apache.org/jira/browse/HBASE-6207) | *Major* | **Add jitter to client retry timer**

The retries in the client now have a jitter of up to 1% of the normal computed sleep time.


---

* [HBASE-6236](https://issues.apache.org/jira/browse/HBASE-6236) | *Major* | **Offline meta repair fails if the HBase base mount point is on a different cluster/volume than its parent in a ViewFS or similar FS**

-sidelineDir option has been added to both hbck and OfflineMetaRepair.
It allows specification of hdfs directory where offlined data is stored.


---

* [HBASE-6296](https://issues.apache.org/jira/browse/HBASE-6296) | *Minor* | **Refactor EventType to track its own ExecutorService type**

Simple refactor of ExecutorType to bind more tightly to the EventType (rather than keeping them across different files).


---

* [HBASE-6170](https://issues.apache.org/jira/browse/HBASE-6170) | *Minor* | **Timeouts for row lock and scan should be separate**

"hbase.regionserver.lease.period" is no longer supported.

hbase.regionserver.rowlock.timeout.period controls the timeout for rowlock. Default is 60 seconds.

hbase.client.scanner.timeout.period controls scanner timeout. Default is 60 seconds.


---

* [HBASE-6377](https://issues.apache.org/jira/browse/HBASE-6377) | *Major* | **HBASE-5533 metrics miss all operations submitted via MultiAction**

The misleading "getRequestLatency", "deleteRequestLatency", and "putRequestLatency" histograms were removed from metrics because such requests often were not actually measured.


---

* [HBASE-6382](https://issues.apache.org/jira/browse/HBASE-6382) | *Major* | **Upgrade Jersey to 1.8 to match Hadoop 1 and 2**

Removed 0.90 (Jon likes new issue for backports it seems) and pegged it against 0.94.2 and 0.92.2 rather than 0.94.1 and 0.92.1.


---

* [HBASE-6312](https://issues.apache.org/jira/browse/HBASE-6312) | *Minor* | **Make BlockCache eviction thresholds configurable**

From now on, the block cache will use all the memory it's given as its upper bound was raised from 85% to 99%. The lower bound for evictions, called "minimum factor", was raised from 75% to 95% and is now configurable via "hbase.lru.blockcache.min.factor". This means that 4% of the block cache is evicted at a time instead of 10%, so evictions may run more often but each will be less disruptive.


---

* [HBASE-4255](https://issues.apache.org/jira/browse/HBASE-4255) | *Major* | **Expose CatalogJanitor controls**

Adds catalogjanitor\_enabled, catalogjanitor\_run, and catalogjanitor\_switch to the shell.


---

* [HBASE-6363](https://issues.apache.org/jira/browse/HBASE-6363) | *Trivial* | **HBaseConfiguration can carry a main method that dumps XML output for debug purposes**

Adds a main to HBaseConfiguration to dump out configs.


---

* [HBASE-6203](https://issues.apache.org/jira/browse/HBASE-6203) | *Major* | **Create hbase-it module**

Adds a new module hbase-it, which contains integration and system tests


---

* [HBASE-6411](https://issues.apache.org/jira/browse/HBASE-6411) | *Major* | **Move Master Metrics to metrics 2**

Master metrics now use Hadoop's metrics2 framework


---

* [HBASE-5189](https://issues.apache.org/jira/browse/HBASE-5189) | *Minor* | **Add metrics to keep track of region-splits in RS**

Split metrics are now persistent across metrics reporting periods.  Also the min/max/avg time of the split operation are stored.


---

* [HBASE-2214](https://issues.apache.org/jira/browse/HBASE-2214) | *Major* | **Do HBASE-1996 -- setting size to return in scan rather than count of rows -- properly**

Adds Scan#getMaxResultSize


---

* [HBASE-6567](https://issues.apache.org/jira/browse/HBASE-6567) | *Major* | **make memory locking configuration of regioservers more flexible**

Removes --mlock start flag.  Adds the below instead:

HBASE\_REGIONSERVER\_MLOCK binary: empty/not set – disabled, non empty – enabled
HBASE\_REGIONSERVER\_UID string: a target user for the running process regardless of any other feature that is enabled


---

* [HBASE-4391](https://issues.apache.org/jira/browse/HBASE-4391) | *Major* | **Add ability to start RS as root and call mlockall**

A new profile, native, has been added to pom.xml  Adding '-Pnative' will build libmlockall\_agent.so   HBase will look for the .so under  ./lib/native/PLATFORM (See JAVA\_LIBRARY\_PATH in the bin/hbase starup script).

mlockall\_agent is a simple VM Agent that allows to lock the address space of 
the region server process. This avoids the process' memory eviction under pressure.

You can load the agent by adding it as a jvm option:
 export HBASE\_REGIONSERVER\_OPTS="-agentpath:./libmlockall\_agent.so=user=hbase"

To use this feature, execute the following command as root:
hbase --mlock user=hbase regionserver start


---

* [HBASE-6414](https://issues.apache.org/jira/browse/HBASE-6414) | *Major* | **Remove the WritableRpcEngine & associated Invocation classes**

**WARNING: No release note provided for this change.**


---

* [HBASE-6435](https://issues.apache.org/jira/browse/HBASE-6435) | *Major* | **Reading WAL files after a recovery leads to time lost in HDFS timeouts when using dead datanodes**

This JIRA adds a hook in the HDFS client to reorder the replica locations for HLog files. The default ordering in HDFS is rack aware + random. When reading a HLog file, we prefer not to use the replica on the same server as the region server that wrote the HLog: this server is likely to be not available, and this will delay the HBase recovery by one minute. This occurs because the recovery starts sooner in HBase than in HDFS: 3 minutes by default in HBase vs. 10:30 minutes in HDFS. This will be changed in HDFS-3703. Moreover, when a HDFS file is already opened for writing, a read triggers another call to get the file size, leading to another timeout (see HDFS-3704), but as well a wrong file size value (see HDFS-3701 and HBASE-6401). Technically:
- this hook won't be useful anymore when HDFS-3702 or HDFS-3705 or HDFS-3706 is available and used in HBase.
- the hook intercepts the calls to the nanemode and reorder the locations it returned, extracting the region server name from the HLog file. This server is put at the end of the list, ensuring it will be tried only if all the others fail.
- It has been tested with HDFS 1.0.3. of HDFS 2.0 apha.
- It can be deactivated (at master & region server start-up) by setting "hbase.filesystem.reorder.blocks" to false in the HBase configuration.


---

* [HBASE-5449](https://issues.apache.org/jira/browse/HBASE-5449) | *Major* | **Support for wire-compatible security functionality**

**WARNING: No release note provided for this change.**


---

* [HBASE-6372](https://issues.apache.org/jira/browse/HBASE-6372) | *Minor* | **Add scanner batching to Export job**

Adds a command-line flag hbase.export.scanner.batch to the export tool.


---

* [HBASE-6477](https://issues.apache.org/jira/browse/HBASE-6477) | *Major* | **Use PB filter definitions in RPC**

**WARNING: No release note provided for this change.**


---

* [HBASE-6052](https://issues.apache.org/jira/browse/HBASE-6052) | *Blocker* | **Convert .META. and -ROOT- content to pb**

Changed .META. and ROOT tables' content to be Protobuf serialization of HRegionInfo's instead of Writable serialization. When upgrading from 0.92 and 0.94 clusters, after master deploys META and ROOT, and before it deploys user level tables, it does a migration for the data in the catalog files, rewriting them in the new format. 
Before upgrading, you can take an export of the catalog tables using HBASE-3271 for backup.


---

* [HBASE-6524](https://issues.apache.org/jira/browse/HBASE-6524) | *Major* | **Hooks for hbase tracing**

Adds hooks so can track rpcs using htrace


---

* [HBASE-6684](https://issues.apache.org/jira/browse/HBASE-6684) | *Major* | **.META. timeout value is incorrect**

Set hbase.regionserver.catalog.timeout and hbase.master.catalog.timeout default down from Integer.MAX\_VALUE to 10 minutes.


---

* [HBASE-6568](https://issues.apache.org/jira/browse/HBASE-6568) | *Major* | **Extract daemon thread factory from HTable into its own class**

Adding DaemonThreadFactory (extracted from HTable)  - a thread factory that creates properly named, daemon threads.


---

* [HBASE-6495](https://issues.apache.org/jira/browse/HBASE-6495) | *Major* | **HBaseAdmin shouldn't expect HConnection to be an HConnectionImplementation**

**WARNING: No release note provided for this change.**


---

* [HBASE-6766](https://issues.apache.org/jira/browse/HBASE-6766) | *Major* | **Remove the Thread Dump link on Info pages**

Remove the  thread dump link from the top of the UI pages; use the dump link instead.  It includes a thread dump among other stats.


---

* [HBASE-5547](https://issues.apache.org/jira/browse/HBASE-5547) | *Major* | **Don't delete HFiles when in "backup mode"**

All HFiles are now automatically archived to the configured "hbase.table.archive.directory". HFiles are cleaned similarly to HLogs - a cleaner delegate chain that is instantiated as per the configured classes. Similar to hlog cleaners, a TimeToLiveHFileCleaner is used by default, and specified under the "hbase.master.hfilecleaner.plugins" configuration key.

In unifying the two cleaner interfaces, the new configuration parameter to use the TimeToLiveHLogCleaner is:
  \<property\>
    \<name\>hbase.master.logcleaner.plugins\</name\>
    \<value\>org.apache.hadoop.hbase.master.cleaner.TimeToLiveLogCleaner\</value\>
 \</property\>

It is still enabled by default, so nothing needs to be changed if you are not modifying the logcleaners.


---

* [HBASE-6241](https://issues.apache.org/jira/browse/HBASE-6241) | *Major* | **HBaseCluster interface for interacting with the cluster from system tests**

Adds an Integration Test facilty that is run by invoking 'mvn verify'.  It can run the same test on a minihbasecluster and also on an already distributed cluster.  Adds a ChaosMonkey too.


---

* [HBASE-5448](https://issues.apache.org/jira/browse/HBASE-5448) | *Major* | **Support for dynamic coprocessor endpoints with PB-based RPC**

Coprocessor endpoints can now be implemented as protocol buffer defined Services.  CoprocessorProtocol based implementations are now deprecated.  See the package javadoc for org.apache.hadoop.hbase.client.coprocessor for implementation details.


---

* [HBASE-6408](https://issues.apache.org/jira/browse/HBASE-6408) | *Blocker* | **Naming and documenting of the hadoop-metrics2.properties file**

The metrics config file was conf/hadoop-metrics2-hbase.properties and is now conf/hadoop-metrics2.properties


---

* [HBASE-6849](https://issues.apache.org/jira/browse/HBASE-6849) | *Major* | **Make StochasticLoadBalancer the default**

Makes the StochasticLoadBalancer the default.


---

* [HBASE-6637](https://issues.apache.org/jira/browse/HBASE-6637) | *Minor* | **Move DaemonThreadFactory into Threads and Threads to hbase-common**

Move daemon thread factory into a static factory method in Threads and then move Threads into the hbase-common package (where a common utility belongs).


---

* [HBASE-6875](https://issues.apache.org/jira/browse/HBASE-6875) | *Major* | **Remove commons-httpclient, -component, and up versions on other jars (remove unused repository)**

Removed unused libs commons-httpclient and commons-component.  Upped commons-codec to 1.7 from 1.4, commons-io from 2.1 to 2.4, commons-lang from 2.5 to 2.6, jruby from 1.6.5 to 1.6.8 (1.7 jruby is 14M, 1.6 is 10M), mockito-all from 1.9 to 2.4.1, zookeeper from 3.4.3 to 3.4.4


---

* [HBASE-5071](https://issues.apache.org/jira/browse/HBASE-5071) | *Major* | **HFile has a possible cast issue.**

This issue only effects HFileV1 and is not an issue for HFileV2.


---

* [HBASE-6610](https://issues.apache.org/jira/browse/HBASE-6610) | *Major* | **HFileLink: Hardlink alternative for snapshot restore**

Adds a 'HardLink', an hfile proxy that tolerates files being moved from original location out to archive; it will find and serve the data whichever location the file happens to be in.


---

* [HBASE-6738](https://issues.apache.org/jira/browse/HBASE-6738) | *Critical* | **Too aggressive task resubmission from the distributed log manager**

The Split Log Manager now takes into account the state of the region server doing the split. If this region server is marked as dead (i.e. its ZooKeeper connection expires), its task is immediately resubmitted. If the region server is still in the "alive" state, then we wait for 2 minutes before resubmitting, instead of 25 seconds previously. This delay can be changed with the parameter "hbase.splitlog.manager.timeout" (milliseconds, new default since 0.96: 120000).


---

* [HBASE-6939](https://issues.apache.org/jira/browse/HBASE-6939) | *Trivial* | **Add the possibility to set the ZK port in HBaseTestingUtility**

In HBaseTestingUtility class, a new property ("test.hbase.zookeeper.property.clientPort") allows to launch the mini ZooKeeper on a predefined port.


---

* [HBASE-6962](https://issues.apache.org/jira/browse/HBASE-6962) | *Major* | **Upgrade hadoop 1 dependency to hadoop 1.1**

Upgrade hadoop 1 dependency to hadoop 1.1.0


---

* [HBASE-6942](https://issues.apache.org/jira/browse/HBASE-6942) | *Major* | **Endpoint implementation for bulk deletion of data**

This issue gives an example Endpoint implementation for efficiently deleting bulk data from tables. Which  data to be deleted can be controlled using a Scan object passed to the endpoint.
We can delete rows, column families, column qualifiers or cell versions based on delete type passed.
Optionally timestamp also can be passed. When timestamp is passed for ROW, FAMILY and COLUMN delete types, all the versions before that time(specified time inclusive) will get deleted.
When the type is VERSION, if a timestamp is passed, only one version(with ts as given value) of all the cells which the Scan selected will be deleted. When no timestamp value passed for VERSION type delete it will delete all the cell versions which the Scan selected. Using appropriate Scan with Timerange etc user can control which versions to be deleted.
The API returns the number of rows deleted (In types other than ROW it is not entire row deleted) and when type is VERSION it will return total number of versions deleted also.
The Scan can be created with a rowkey range, with some filters, with Timerange etc based on the delete usecase.


---

* [HBASE-5974](https://issues.apache.org/jira/browse/HBASE-5974) | *Critical* | **Scanner retry behavior with RPC timeout on next() seems incorrect**

Adds a sequence id that is incremented on each Scanner#next invocation so we can distingush calls that arrive out of order.  Throws OutOfOrderScannerNextException when we encounter the latter case.


---

* [HBASE-7024](https://issues.apache.org/jira/browse/HBASE-7024) | *Minor* | **TableMapReduceUtil.initTableMapperJob unnecessarily limits the types of outputKeyClass and outputValueClass**

**WARNING: No release note provided for this change.**


---

* [HBASE-6846](https://issues.apache.org/jira/browse/HBASE-6846) | *Major* | **BitComparator bug - ArrayIndexOutOfBoundsException**

BitComparator bug - ArrayIndexOutOfBoundsException corrected


---

* [HBASE-5119](https://issues.apache.org/jira/browse/HBASE-5119) | *Blocker* | **Set the TimeoutMonitor's timeout back down**

The region assignment timeout time is reduced to 10 minutes. The timeout check interval is reduced to 30 seconds from 60 seconds.


---

* [HBASE-6925](https://issues.apache.org/jira/browse/HBASE-6925) | *Critical* | **Change socket write size from 8K to 64K for HBaseServer**

Up RPC base buffer size from 8k to 64k.  Improves scanner throughput.


---

* [HBASE-6389](https://issues.apache.org/jira/browse/HBASE-6389) | *Critical* | **Modify the conditions to ensure that Master waits for sufficient number of Region Servers before starting region assignments**

Reverts the cluster startup behavior to pre 0.94.0.

With this, Master will wait until "hbase.master.wait.on.regionservers.mintostart" number of Region Servers have registered with it before it starts region assignment. The default value of this setting is 1.

In large clusters with thousands of regions you may want to increase this to a higher number which is sufficient to handle the task of opening those region in parallel.

If left to the default, at times, the Master could assign all regions to a single Region Server which will result in slow startup and in worst case could OOM the Region Server (some time resulting in META inconsistency).

Here is how it works now (from the javadoc):

We wait until one of these condition is met:
 - the master is stopped
 - the 'hbase.master.wait.on.regionservers.maxtostart' number of region servers is reached
 - the 'hbase.master.wait.on.regionservers.mintostart' is reached AND there have been no new region server in for 'hbase.master.wait.on.regionservers.interval' time AND the 'hbase.master.wait.on.regionservers.timeout' is reached


---

* [HBASE-6991](https://issues.apache.org/jira/browse/HBASE-6991) | *Major* | **Escape "\" in Bytes.toStringBinary() and its counterpart Bytes.toBytesBinary()**

This patch changes Bytes.toStringBinary() and Bytes.toBytesBinary() to escape the character "\". Unprintable characters are escaped using "\\x%02X" format, but "\" was not escaped properly leading to irreversible ser/de using toStringBinary() -\> toBytesBinary().


---

* [HBASE-6410](https://issues.apache.org/jira/browse/HBASE-6410) | *Blocker* | **Move RegionServer Metrics to metrics2**

Region server metrics are now exported through Hadoop's new metrics 2 sub system.  Naming and location of MBeans have changed to be more consistent and informative.


---

* [HBASE-6894](https://issues.apache.org/jira/browse/HBASE-6894) | *Major* | **Adding metadata to a table in the shell is both arcane and painful**

HBase shell 'create' and 'alter' commands have been updated as follows:
\* More arguments for 'alter' can now be specified at the same time (e.g. OWNER with other fields, etc.).
\* Using METHOD =\> 'table\_att' is no longer necessary to set table properties during CREATE/ALTER (e.g. "alter 't1', OWNER =\> 'johndoe', CONFIG =\> { 'mykey' =\> 'myvalue' }").
\* Warnings are now issued for ignored/superseded arguments (e.g. "create 't1', 'cf', SPLITS =\> ['10', '15'], SPLITALGO =\> 'SomeAlgo', NUMREGIONS =\> 15", or 
"create 't1', { NAME =\> 'cf', MAX\_FILESIZE =\> 50000 }", or typos e.g. "alter 't1', 'READONLY' =\> true, 'MAX\_FLESIZE' =\> 123567")
\* One can no longer create a table without column families by supplying some non-cf argument e.g. MAX\_FILESIZE.
\* Some minor bug fixes.


---

* [HBASE-4583](https://issues.apache.org/jira/browse/HBASE-4583) | *Major* | **Integrate RWCC with Append and Increment operations**

This issue fixes MVCC issues with Increment and Append. To retain the current performance characteristics, VERSIONS should be set to 1 on column families with columns to be incremented/appended-to.
If VERSIONS is \> 1 historical versions are kept for timerange queries, but Increment/Appends will be slower due to changes accumulating the memstore leading to frequent flushes.


---

* [HBASE-6470](https://issues.apache.org/jira/browse/HBASE-6470) | *Major* | **SingleColumnValueFilter with private fields and methods**

Changes private fields of SingleColumnValueFilter to protected for more subtle filtering of column values


---

* [HBASE-6282](https://issues.apache.org/jira/browse/HBASE-6282) | *Blocker* | **The introspection, etc. of objects in the RPC has to be handled for PB objects**

Enable IPC trace and see all of the calls coming into the server toString'd.  Its a load of data but could be useful debugging.


---

* [HBASE-7185](https://issues.apache.org/jira/browse/HBASE-7185) | *Major* | **Create hbase-protocol module**

Created hbase-protocol module to extract all protobuf files that could be transmitted.


---

* [HBASE-7200](https://issues.apache.org/jira/browse/HBASE-7200) | *Major* | **create integration test for balancing regions and killing region servers**

Adds org.apache.hadoop.hbase.IntegrationTestRebalanceAndKillServers to integration tests. 
This test runs LoadTestTool to write and read the data, while using ChaosMonkey to kill servers and master, unbalance regions, and  very frequently force the master balancer. It's intended to catch race conditions in region (re)assignment.
The test can be run together with other integration tests via mvn verify, or IntegrationTestsDriver (see integration test documentation)


---

* [HBASE-7159](https://issues.apache.org/jira/browse/HBASE-7159) | *Major* | **Upgrade zookeeper dependency to 3.4.5**

Update default zk version from 3.4.3 to 3.4.5.  3.4.5 client should continue to work w/ earlier version ensembles.


---

* [HBASE-7215](https://issues.apache.org/jira/browse/HBASE-7215) | *Blocker* | **Put, Delete, Increment, Result, all all HBase M/R classes still implement/use Writable**

This patch removes the following Public Evolving APIs:

ImmutableBytesWritable Result#getBytes
void Result#readFields(DataInput)
long Result#getWritableSize()
void Result#write(DataOutput)
static long Result#getWriteArraySize(Result[])
static void writeArray(DataOutput, Result[])
static Result[] Result#readArray(DataInput)

Writable in MR related classes have been replaced with the new Mutation abstract class.


---

* [HBASE-7204](https://issues.apache.org/jira/browse/HBASE-7204) | *Minor* | **Make hbck ErrorReporter pluggable**

Now hbck runs with ToolRunner, and can accept configurations from command line.


---

* [HBASE-7253](https://issues.apache.org/jira/browse/HBASE-7253) | *Minor* | **Compaction Tool**

The CompactionTool works at file-system level, so the table should be disabled.

The compaction process uses the same hbase-site.xml configuration property used by the server, like 
"hbase.hstore.compactionThreshold" & co.

You can compact the whole table or just a single region or family,
and the input of the CompactionTool is a fs path.

You can run the compaction as a MapReduce Job, or as a local process.
Each family can be compacted in parallel if you use the -mapreduce option.

To compact "TestTable" family "cf1" of region "e450da04b1a10099b618bec031e0f951"
bin/hbase org.apache.hadoop.hbase.regionserver.CompactionTool hdfs:///hbase/TestTable/e450da04b1a10099b618bec031e0f951/cf1

To compact all the families of region "e450da04b1a10099b618bec031e0f951":
bin/hbase org.apache.hadoop.hbase.regionserver.CompactionTool hdfs:///hbase/TestTable/e450da04b1a10099b618bec031e0f951

To compact all regions and family of the Table:
bin/hbase org.apache.hadoop.hbase.regionserver.CompactionTool -mapred hdfs:///hbase/TestTable


---

* [HBASE-7187](https://issues.apache.org/jira/browse/HBASE-7187) | *Major* | **Create empty hbase-client module**

**WARNING: No release note provided for this change.**


---

* [HBASE-6944](https://issues.apache.org/jira/browse/HBASE-6944) | *Major* | **Enhance test-patch.sh to run against both jdk 1.6 and jdk 1.7**

**WARNING: No release note provided for this change.**


---

* [HBASE-6804](https://issues.apache.org/jira/browse/HBASE-6804) | *Critical* | **[replication] lower the amount of logging to a more human-readable level**

Replication will not log a lot less messages than before. There's no way to "re-active" those old log lines. Configure replication.stats.thread.period.seconds to set how often replication stats are printed in the log, by default it's 5 minutes.


---

* [HBASE-7270](https://issues.apache.org/jira/browse/HBASE-7270) | *Major* | **Remove MultiPut and MultiPutResponse to satisfy rat-check**

rat-check (mvn org.apache.rat:apache-rat-plugin:0.8:check -X) fails to verify the license on MultiPut and MultiPutResponse because they are zero-byte files.


---

* [HBASE-6423](https://issues.apache.org/jira/browse/HBASE-6423) | *Major* | **Writes should not block reads on blocking updates to memstores**

Added new configuration parameters to adjust the wait time in getting a lock before acting on a region:

hbase.busy.wait.multiplier.max (default 2)
hbase.rowlock.wait.duration (same as the default RPC timeout time)

For reading, it waits at most "hbase.rowlock.wait.duration" in getting a lock.
For writing, it waits at most "hbase.rowlock.wait.duration" \* min ( #rows affected, "
hbase.busy.wait.multiplier.max"). However, it waits at most the server side call purge timeout time.


---

* [HBASE-7008](https://issues.apache.org/jira/browse/HBASE-7008) | *Major* | **Set scanner caching to a better default, disable Nagles**

This patch increases the default scanner caching to 100.
It also enables tcpNoDelay by default (i.e. disabled Nagle's algorithm).

This will generally lead to better performance, but in some situation may lead to different network patterns and increase memory consumption on both the client and the server.


---

* [HBASE-4072](https://issues.apache.org/jira/browse/HBASE-4072) | *Major* | **Deprecate/disable and remove support for reading ZooKeeper zoo.cfg files from the classpath**

The Apache ZooKeeper config file zoo.cfg will no longer be read when instantiating a HBaseConfiguration object, as it causes various inconsistency issues. Instead, users have to specify all HBase-relevant ZooKeeper properties in the hbase-site.xml using the various "hbase.zookeeper" prefixed properties. For example, specify "hbase.zookeeper.quorum" to provide a ZK quorum server list.

To enable zoo.cfg reading, for which support may be removed in a future release, set the property "hbase.config.read.zookeeper.config" to true in the hbase-site.xml at the client and servers like so:

\<property\>
  \<name\>hbase.config.read.zookeeper.config\</name\>
  \<value\>true\</value\>
  \<description\>
        Set to true to allow HBaseConfiguration to read the
        zoo.cfg file for ZooKeeper properties. Switching this to true
        is not recommended, since the functionality of reading ZK
        properties from a zoo.cfg file has been deprecated.
  \</description\>
\</property\>


---

* [HBASE-7289](https://issues.apache.org/jira/browse/HBASE-7289) | *Blocker* | **Strip Writable from KeyValue**

Strips Writable from KeyValue.  Side effect has us protobuf'ing KeyValue when we put it into a Result so this should SLOW HBase considerably until we address KeyValue serialization over in HBASE-7233.

HBASE-7215 added MapReduce serializers for Result, Put, Delete, etc.  This issue adds a serializer for KeyValue.  If using HFileOutputFormat, be sure to add the serializer to your configuration: for example:

{code}
    Job job = new Job(conf, "YOUR\_MAPREDUCE\_JOB");
    job.getConfiguration().setStrings("io.serializations", conf.get("io.serializations"),
        MutationSerialization.class.getName(), ResultSerialization.class.getName(),
        KeyValueSerialization.class.getName());
{code}


---

* [HBASE-7250](https://issues.apache.org/jira/browse/HBASE-7250) | *Minor* | **create integration test for balancing regions and killing region servers - 2**

A system test which does large data ingestion and verify using {@link LoadTestTool},  while introducing chaos by hoarding many regions into few servers (unbalancing), then killing some of these servers, and triggering balancer.  It's configured using a set of constants on top, which cover this scenario and are reasonable for minicluster. See constants if you want to tweak the test. You can configure how long the test should run by using.  "hbase.IntegrationTestRebalanceAndKillServersTargeted.runtime" configuration parameter,  which is probably most useful on cluster.


---

* [HBASE-7336](https://issues.apache.org/jira/browse/HBASE-7336) | *Critical* | **HFileBlock.readAtOffset does not work well with multiple threads**

Improves read concurrency by changing HFileBlock#readAtOffset from synchronized to reentrant lock; will have contending scanners fall back to preading rather than synchronized seek+read.  Keeps all cores busy rather than just the one.


---

* [HBASE-7367](https://issues.apache.org/jira/browse/HBASE-7367) | *Minor* | **Snapshot coprocessor and ACL security**

This adds pre and post snapshot request hooks to the master observer coprocessor as well as code to the security coproc that only allows ADMIN users to take, clone or restore snapshots.


---

* [HBASE-7357](https://issues.apache.org/jira/browse/HBASE-7357) | *Major* | **HBaseClient and HBaseServer should use hbase.security.authentication when negotiating authentication**

This is a slightly incompatible change.
HBase SASL connection negotiation is now enabled by setting hbase.security.authentication rather than hadoop.security.authentication.


---

* [HBASE-6895](https://issues.apache.org/jira/browse/HBASE-6895) | *Blocker* | **Remove CoprocessorProtocol support and implementations**

Dynamic endpoints must now be refactored to use CoprocessorService instead of CoprocessorProtocol.  See the coprocessor package info javadoc for example.  Study unit tests for examples where we migrate for old style to new.  Write the mailing list if you need help because a few fellas have volunteered to help those who need to migrate.


---

* [HBASE-7443](https://issues.apache.org/jira/browse/HBASE-7443) | *Minor* | **More findbugs fixes**

Add a compile level dependency to findbugs annotations. These annotations allows to suppress a findbugs warning at the method or class level.


---

* [HBASE-7351](https://issues.apache.org/jira/browse/HBASE-7351) | *Minor* | **Periodic health check chore**

Run a script of your creation on a period.  If it fails N times (configurable), have the server exit.

New configs:

 hbase.node.health.script.location
 hbase.node.health.script.timeout
 hbase.node.health.script.frequency Default is every 60seconds.
 hbase.node.health.failure.threshold Defaults to 3.


---

* [HBASE-7498](https://issues.apache.org/jira/browse/HBASE-7498) | *Major* | **Make REST server thread pool size configurable**

Added two configuration parameters hbase.rest.threads.max (default 100) and hbase.rest.threads.min (default 2) to configure the thread pool of a REST server.

Before that, the thread pool is not configurable, and it has the default value max threads: 250, min threads: 2.


---

* [HBASE-7479](https://issues.apache.org/jira/browse/HBASE-7479) | *Blocker* | **Remove VersionedProtocol and ProtocolSignature from RPC**

Remove versioning of rpc protocols.  Going forward we will not rely on versioning but on the wriggle-room protobufs give us per method and on custom migration to handle cases that outside of method-based scope.


---

* [HBASE-6386](https://issues.apache.org/jira/browse/HBASE-6386) | *Major* | **Audit log messages do not include column family / qualifier information consistently**

Here is how output now looks:

request: put; context: (user=th30z, scope=test-table, family=cf0:q\|cf1:q, action=WRITE)
request: put; context: (user=th30z, scope=.META., family=info:server\|info:serverstartcode, action=WRITE)
request: get; context: (user=th30z, scope=.META., family=info, action=READ)
request: get; context: (user=th30z, scope=testtb, family=cf\|cf2, action=READ)
request: get; context: (user=th30z, scope=testtb, family=cf:q, action=READ)
request: scannerOpen; context: (user=th30z, scope=testtb, family=cf\|cf2, action=READ)
request: scannerOpen; context: (user=th30z, scope=testtb, family=cf:q, action=READ)
request: scannerOpen; context: (user=th30z, scope=testtb, family=cf:q\|cf2:q, action=READ)
request: delete; context: (user=th30z, scope=testtb, family=cf:q, action=WRITE)


---

* [HBASE-6824](https://issues.apache.org/jira/browse/HBASE-6824) | *Major* | **Introduce ${hbase.local.dir} and save coprocessor jars there**

Added a configuration "hbase.local.dir" which defaults to ${hbase.tmp.dir}/local/. Coprocessor jars, and other local data for region servers are written to this location.


---

* [HBASE-7404](https://issues.apache.org/jira/browse/HBASE-7404) | *Major* | **Bucket Cache:A solution about CMS,Heap Fragment and Big Cache on HBASE**

BucketCache is another implementation of BlockCache which supports big block cache for high performance and would greatly decrease CMS and heap fragmentation in JVM caused by read activities.


Usage:

1.Use bucket cache as main memory cache, configured as the following:
–"hbase.bucketcache.ioengine" "heap"
–"hbase.bucketcache.size" 0.4 (size for bucket cache, 0.4 is a percentage of max heap size)

2.Use bucket cache as a secondary cache, configured as the following:
–"hbase.bucketcache.ioengine" "file:/disk1/hbase/cache.data"(The file path where to store the block data)
–"hbase.bucketcache.size" 1024 (size for bucket cache, unit is MB, so 1024 means 1GB)
–"hbase.bucketcache.combinedcache.enabled" false (default value being true)


---

* [HBASE-5416](https://issues.apache.org/jira/browse/HBASE-5416) | *Major* | **Filter on one CF and if a match, then load and return full row (WAS: Improve performance of scans with some kind of filters)**

New method is added to Filter which allows filter to specify which CF is needed to it's operation.

public boolean isFamilyEssential(byte[] name);

When new row is considered, only data for essential family is loaded and filter applied. And only if filter accepts the row, rest of data is loaded.

This feature is off by default. You can use Scan.setLoadColumnFamiliesOnDemand() to enable it on a per Scan basis. If not indicated for the Scan, boolean value for "hbase.hregion.scan.loadColumnFamiliesOnDemand" would be used (default to false).


---

* [HBASE-7570](https://issues.apache.org/jira/browse/HBASE-7570) | *Minor* | **rename user metadata dictionary in shell from CONFIG**

The dictionary of attributes associated with HTableDescriptor and HColumnDescriptor used to be named 'CONFIG'.  It is now named 'METADATA'.  This is how you refer to it manipulating its contents in the shell going forward.


---

* [HBASE-5498](https://issues.apache.org/jira/browse/HBASE-5498) | *Major* | **Secure Bulk Load**

This feature adds a new optional configuration parameter:

hbase.bulkload.staging.dir

This defines the path on DFS that HBase will use to create random/secret directories under.
The default location is /tmp/hbase-staging


---

* [HBASE-4451](https://issues.apache.org/jira/browse/HBASE-4451) | *Critical* | **Improve zk node naming (/hbase/shutdown)**

The 'shutdown' znode was renamed 'running'.


---

* [HBASE-7213](https://issues.apache.org/jira/browse/HBASE-7213) | *Critical* | **Have HLog files for .META. and -ROOT- edits only**

The regionserver carrying .META. / -ROOT- region will now write two WALs; the usual one w/ all edits and then a special one with a .meta. suffix into which all edits for .META. / -ROOT- region go.  These files will be recovered first on server crash.


---

* [HBASE-7460](https://issues.apache.org/jira/browse/HBASE-7460) | *Major* | **Cleanup client connection layers**

Overriding of the client RPC engine (hbase.rpc.client.engine configuration property) is no longer supported.  Instead the built-in RpcClientEngine is always used.

In some cases, where clients explicitly manage HConnection instance creation, the number of client RPC connections created may change.  This issue changes the HConnection implementation to use it's own managed HBaseClient instance, with its own set of client RPC connections.  So explicitly creating multiple HConnection instances (using HConnectionManager.createConnection()) will result in multiple HBaseClient instances.  However, for the default behavior, using HTable with a single Configuration, there is no change.


---

* [HBASE-7315](https://issues.apache.org/jira/browse/HBASE-7315) | *Critical* | **Remove support for client-side RowLocks**

Removes API that allowed client to grab and hold and then later release a rowlock: e.g. HTable#lockRow and HTable#unlockRow.  It was a bad idea.


---

* [HBASE-7577](https://issues.apache.org/jira/browse/HBASE-7577) | *Critical* | **Review names of all znodes in zk to make sure they are sensible before 0.96**

Changes the znode 'unassigned' to be named 'region-in-transition'.


---

* [HBASE-3170](https://issues.apache.org/jira/browse/HBASE-3170) | *Critical* | **RegionServer confused about empty row keys**

If no row specified by a Get, we no longer return first row in the table.  Now we fail.


---

* [HBASE-6907](https://issues.apache.org/jira/browse/HBASE-6907) | *Major* | **KeyValue equals and compareTo methods should match**

KeyValue.equals() method used to ignore the memstoreTS.
Now KeyValue.equals() takes memstoreTS into account and is aligned with KeyValue.KVComparator in behavior


---

* [HBASE-7559](https://issues.apache.org/jira/browse/HBASE-7559) | *Major* | **Add additional Snapshots Unit Test Coverage**

under view at https://reviews.apache.org/r/8944/


---

* [HBASE-7268](https://issues.apache.org/jira/browse/HBASE-7268) | *Minor* | **correct local region location cache information can be overwritten (or deleted) w/stale information from an old server**

On region open, save the edit seqId and then write it into META. On region move, the region is opened again with a greater seqId somewhere else.  Pass the client the seqid to the client when asks about locations.  Client can reason about cache invalidation with seqids (if seqid for new location is \< its current seqid, it can recognize the new location stale).


---

* [HBASE-7382](https://issues.apache.org/jira/browse/HBASE-7382) | *Critical* | **Port ZK.multi support from HBASE-6775 to 0.96**

hbase.zookeeper.useMulti 

Instructs HBase to make use of ZooKeeper's multi-update functionality.
    This allows certain ZooKeeper operations to complete more quickly and prevents some issues
    with rare Replication failure scenarios (see the release note of HBASE-2611 for an example).
    IMPORTANT: only set this to true if all ZooKeeper servers in the cluster are on version 3.4+
    and will not be downgraded.  ZooKeeper versions before 3.4 do not support multi-update and will
    not fail gracefully if multi-update is invoked (see ZOOKEEPER-1495).


---

* [HBASE-7329](https://issues.apache.org/jira/browse/HBASE-7329) | *Major* | **remove flush-related records from WAL and make locking more granular**

memstore flush WAL record is removed.
Previously, there existed cacheFlushLock which was used for 4 distinct purposes:
1) Make sure the WAL record for memstore flush ends up in the same WAL that was active when the flush started. In other words, log rolling is prevented during memstore flush.
2) Make sure only one log rolling operation happens at a time.
3) Control access to "lastSeqWritten" map for any operation that is not covered by SynchronizedMap.
4) Make sure that close() waits for all the flushes and rolls, by virtue of doing work under this lock and setting .closed = true for potential future callers.
Nothing prevented startCacheFlush from proceeding after close is done, since it doesn't perform the check of closed.
cacheFlushLock was replaced by more granular/appropriate locking:
1) No longer needed/relevant, in fact there's HBASE-7011 to get rid of this too.
2) rollWriter is made "synchronized".
3) Control of the map is under its own small-scope lock.
4) Added a simple barrier class to be able to block close on outstanding operations, and drain existing ones.


---

* [HBASE-7571](https://issues.apache.org/jira/browse/HBASE-7571) | *Major* | **add the notion of per-table or per-column family configuration**

From now on, HBase settings used in region/store can be applied on column family and table level. For the region, table and then xml settings will be applied (i.e. table settings override xml settings). For column family (store), column family, then table, then xml settings will be applied. Custom metadata for column family still trumps all settings.
The settings can be applied in the shell via "alter table 't', CONFIGURATION =\> { 'key' =\> 'value', .... } in a way similar to user metadata, or programmatically. 
The key in the above should be the same as an xml config key (e.g. "hbase.region.some.setting").


---

* [HBASE-6815](https://issues.apache.org/jira/browse/HBASE-6815) | *Major* | **[WINDOWS] Provide hbase scripts in order to start HBASE on Windows in a single user mode**

Added windows .cmd scripts, similar to bash counterparts for managing hbase daemons, and running hbase commands from the Windows Shell. These commands does not depend on cygwin. Multi node setup (using SSH or similar) is not supported.


---

* [HBASE-7669](https://issues.apache.org/jira/browse/HBASE-7669) | *Major* | **ROOT region wouldn't  be handled by PRI-IPC-Handler**

Make it so -ROOT- related operations are treated as high priority by QoS, just like .META. ops.


---

* [HBASE-2611](https://issues.apache.org/jira/browse/HBASE-2611) | *Critical* | **Handle RS that fails while processing the failure of another one**

The fix for this issue uses Zookeeper multi functionality (hbase.zookeeper.useMulti). Please refer to hbase-default.xml about this property. There is an addendum fix at HBase-8099 (fixed in 0.94.6). In case you are running on branch \< 0.94.6, please patch it with HBase-8099, OR make sure hbase.zookeeper.useMulti is set to false.


---

* [HBASE-7712](https://issues.apache.org/jira/browse/HBASE-7712) | *Major* | **Pass ScanType into preCompact()**

ScanType is passed to RegionObserver#preCompact() method as the fourth parameter.


---

* [HBASE-7503](https://issues.apache.org/jira/browse/HBASE-7503) | *Minor* | **Add exists(List) in HTableInterface to allow multiple parallel exists at one time**

New method is added to HTableInterface:

Boolean[] exists(List\<Get\> gets) throws IOException;

It tests for the existence of columns in the table, as specified by the Gets.
This will return an array of booleans. Each value will be true if the related Get matches one or more keys, false if not.


---

* [HBASE-7702](https://issues.apache.org/jira/browse/HBASE-7702) | *Major* | **Adding filtering to Import jobs**

Add the ability to apply a Filter to input KVs passed to the Import MapReduce job.


---

* [HBASE-5664](https://issues.apache.org/jira/browse/HBASE-5664) | *Major* | **CP hooks in Scan flow for fast forward when filter filters out a row**

This adds a new CP hook in RegionObserver , postScannerFilterRow()
This will be called by the scan flow when the current scanned row is being filtered out by the filter.
The filter may be filtering out the row via any of the below scenarios
1. Filter's filterRowKey(byte [] buffer, int offset, int length) returning true so as to exclude this row
2. At the end of the row scan filter's filterRow() returning true
3. Filter's filterRow(List\<KeyValue\> kvs) removing all the kvs from the passed List making the full row to be filtered out

This hook can be used for doing a fast forward in such a case if the user wants to do so. One can use RegionScanner#reseek(byte[] row) for doing this fast forward


---

* [HBASE-3996](https://issues.apache.org/jira/browse/HBASE-3996) | *Critical* | ** Support multiple tables and scanners as input to the mapper in map/reduce jobs**

Adds MultiTableInputFormat.

Usage example:

{code}
Scan scan1 = new Scan();
scan1.setStartRow(start1);
scan1.setStopRow(end1);
Scan scan2 = new Scan();
scan2.setStartRow(start2);
scan2.setStopRow(end2);
MultiTableInputCollection mtic = new MultiTableInputCollection();
mtic.Add(tableName1, scan1);
mtic.Add(tableName2, scan2);
TableMapReduceUtil.initTableMapperJob(mtic, TestTableMapper.class, Text.class, IntWritable.class, job1);
{code}


---

* [HBASE-4676](https://issues.apache.org/jira/browse/HBASE-4676) | *Critical* | **Prefix Compression - Trie data block encoding**

Experimental: please use on non-critical data for now.  PREFIX\_TREE encoder stores row keys in a trie layout and uses other encoding techniques for the cells inside a row.  It provides similar memory savings to existing encoders, but has faster random access at a cost of slower encoding speed.  Set encoding =\> PREFIX\_TREE to enable for a column family.


---

* [HBASE-7830](https://issues.apache.org/jira/browse/HBASE-7830) | *Major* | **Disable IntegrationTestRebalanceAndKillServersTargeted temporarily**

Disabled test


---

* [HBASE-7861](https://issues.apache.org/jira/browse/HBASE-7861) | *Minor* | **Use the ServerName in the Connection#getClient and Connection#getAdmin code**

**WARNING: No release note provided for this change.**


---

* [HBASE-7495](https://issues.apache.org/jira/browse/HBASE-7495) | *Major* | **parallel seek in StoreScanner**

This JIRA adds the ability of doing parallel seek in StoreScanner. It is off by default.
The following config parameter turns on this feature:
hbase.storescanner.parallel.seek.enable

hbase.storescanner.parallel.seek.threads controls the number of threads in thread pool which serves parallel seeking. Default is 10 threads.


---

* [HBASE-7305](https://issues.apache.org/jira/browse/HBASE-7305) | *Major* | **ZK based Read/Write locks for table operations**

Added a read/write lock implementation based on zookeeper recipe, and a table lock per HBase table. Master operations acquire a write lock to the table. Configuration, "hbase.table.lock.enable" can be used to disable the implementation.


---

* [HBASE-7899](https://issues.apache.org/jira/browse/HBASE-7899) | *Blocker* | **Cell block building tools: Cell codec and means of iterating an objects Cells**

Adds a Cell Codec Interface and some sample codecs


---

* [HBASE-5598](https://issues.apache.org/jira/browse/HBASE-5598) | *Critical* | **Analyse and fix the findbugs reporting by QA and add invalid bugs into findbugs-excludeFilter file**

Developers can generate the findbugs report  for analysing the findbugs violations.
Execute this maven command for running and generating the findbugs report:  mvn findbugs:gui
This generates the report in GUI, by which will directly show the code instances where exactly the issue is reported.

If the developer finds any invalid bug, then that bug pattern can be updated in dev-support/findbugs-exclude.xml file.
example: 
\<Match\>
   \<Class name="org.apache.hadoop.hbase.regionserver.HRegion" /\>
   \<Method name="getRecentFlushInfo" /\>
   \<Bug pattern="UL\_UNRELEASED\_LOCK\_EXCEPTION\_PATH" /\>
\</Match\>


---

* [HBASE-4210](https://issues.apache.org/jira/browse/HBASE-4210) | *Major* | **Allow coprocessor to interact with batches per region sent from a client**

Adds a pre/post CP hooks to deal with batches of Puts and Deletes rather than individual Put/Delete.
The preBatchMutate hook will be called after aquiring locks on all the rows which are involved in a batch. 
Also by this time the timestamps for Mutation will be applied at RS. So from this hook CP can get the batch of Mutations getting applied and their timestamps which will be getting applied
CP also can bypass any of the Mutation from getting applied by setting its OperationStatus as SUCCESS/FAILURE.
postBatchMutate hook will be called after write to memstore and append and sync to WAL.


---

* [HBASE-7725](https://issues.apache.org/jira/browse/HBASE-7725) | *Major* | **Add ability to create custom compaction request**

Enable coprocessors to submit custom compaction requests.

This compaction request is used (if not null) through the entire compaction process. If no custom compaction request is submitted (its null - the normal case) then we we build a new compaction request via the usual mechanisms in the Store.

Adding this mechanism is particularly useful when 'special' compactions are desired and you want to do things like: only change certain files for a particularly requested compaction or follow a single compaction through the queue.


---

* [HBASE-3171](https://issues.apache.org/jira/browse/HBASE-3171) | *Major* | **Drop ROOT and instead store META location(s) directly in ZooKeeper**

**WARNING: No release note provided for this change.**


---

* [HBASE-8031](https://issues.apache.org/jira/browse/HBASE-8031) | *Major* | **Adopt goraci as an Integration test**

Added a system test called IntegrationTestBigLinkedList. This test runs many ingest clients that continually create linked lists containing 25 million nodes. At some point the clients are stopped and a map reduce job is run to ensure no linked list has a hole. A hole indicates data was lost.


---

* [HBASE-7876](https://issues.apache.org/jira/browse/HBASE-7876) | *Minor* | **Got exception when manually triggers a split on an empty region**

Regions with no store files used to exit with an exception when splits are attempted.  With this fix applied, empty regions are split into two empty regions.


---

* [HBASE-7938](https://issues.apache.org/jira/browse/HBASE-7938) | *Major* | **Add integration test for ImportTsv/LoadIncrementalHFiles workflow**

The new IntegrationTestImportTsv is written in the style of the
recently added IntegrationTestLoadAndVerify. It is designed to be run
from maven or directly against a distributed cluster. It shares core
test logic with TestImportTsv.

To run it with maven, first refresh your install jars, and the run the
test:

  $ mvn clean package install -DskipTests
  $ cd hbase-it
  $ mvn failsafe:integration-test -Dit.test=IntegrationTestImportTsv

NOTE: Running from maven fails because HFileOutputFormat is creating
the partition file on localFs, not HDFS.

Or run it stand-alone:

  $ HBASE\_CLASSPATH="hbase-it/target/hbase-it-\<version\>-tests.jar" \
    ./bin/hbase org.apache.hadoop.hbase.mapreduce.IntegrationTestImportTsv

When run stand-alone, it supports all the usual Hadoop Tool arguments,
particularly -conf.

ImportTsv was refactored to make code sharing easier. It is upgraded
from MediumTest to LargeTest because it take 180+ seconds to run on my
machine. Tests for the TsvParser are separated into their own
SmallTest.


---

* [HBASE-8077](https://issues.apache.org/jira/browse/HBASE-8077) | *Minor* | **Configure the job name in ImportTsv**

use the configuration key mapred.job.name to set the map reduce job name for import tsv


---

* [HBASE-7590](https://issues.apache.org/jira/browse/HBASE-7590) | *Major* | **Add a costless notifications mechanism from master to regionservers & clients**

This allows to setup a multicast connection between the master and the hbase clients. With the feature on, when a regionserver is marked as dead by the master, the master sends as well a multicast message that will make the hbase client to disconnect immediately from the dead server instead of waiting for a socket timeout. Specifically, this allows to set hbase.rpc.timeout to larger values (like 5 minutes) without impacting the MTTR: without this, even if the dead regionserver data is now available on another server, the client stays on the dead one, waiting for an answer that will never come. It's a multicast message, hence cheap, scalable, but unreliable. For this reason, the master sends the information 5 times, to allow the hbase client to miss a message. This feature is NOT activated by default. To activate it, add to your hbase-site.xml:

  \<property\>
    \<name\>hbase.status.published\</name\>
    \<value\>true\</value\>
  \</property\>

You can as well configure the ip address and port used with the following setting:
\<property\>
\<name\>hbase.status.multicast.address.ip\</name\>
\<value\>226.1.1.3\</value\>
\</property\>

\<property\>
\<name\>hbase.status.multicast.address.port\</name\>
\<value\>6100\</value\>
\</property\>


---

* [HBASE-7481](https://issues.apache.org/jira/browse/HBASE-7481) | *Major* | **Allow IOExceptions to be thrown from Filter methods**

The methods of Filter and FilterBase are declared to throw IOException.


---

* [HBASE-7905](https://issues.apache.org/jira/browse/HBASE-7905) | *Major* | **Add passing of optional cell blocks over rpc**

Rather than pass KeyValues/Cells by serializing them into a protobuf param, instead it now passes KeyValues/Cells via a follow-behind block of Cells/KeyValues; these blocks of cells can be optionally encoded/compressed (Currently it is a client-wide config; TODO: make it per request config).


---

* [HBASE-7546](https://issues.apache.org/jira/browse/HBASE-7546) | *Major* | **Obtain a table read lock on region split operations**

Region split operations now acquire a read lock on the table to guard against concurrent table CRUD operations.


---

* [HBASE-8148](https://issues.apache.org/jira/browse/HBASE-8148) | *Major* | **Allow IPC to bind on a specific address**

hbase.master.ipc.address and hbase.regionserver.ipc.address can now be used to have HBase bind on specific IP addresses, 0.0.0.0 being the main use case. The default behavior still relies on hbase.regionserver.dns.interface/nameserver.


---

* [HBASE-7845](https://issues.apache.org/jira/browse/HBASE-7845) | *Major* | **optimize hfile index key**

Mimics Leveldb ByteWiseComparatorImpl::FindShortestSeparator() & FindShortSuccessor() to reduce index key size


---

* [HBASE-7878](https://issues.apache.org/jira/browse/HBASE-7878) | *Critical* | **recoverFileLease does not check return value of recoverLease**

A new config parameter, hbase.lease.recovery.timeout, is introduced for the maximum duration recoverFileLease() would wait for any single file. Default is 5 minutes. If lease recovery doesn't succeed within this limit, append() would be called.


---

* [HBASE-7403](https://issues.apache.org/jira/browse/HBASE-7403) | *Critical* | **Online Merge**

Support merging two regions as a transaction, just like split transaction, it is experimental now


---

* [HBASE-8173](https://issues.apache.org/jira/browse/HBASE-8173) | *Minor* | **HMaster#move wraps IOException in UnknownRegionException**

**WARNING: No release note provided for this change.**


---

* [HBASE-8163](https://issues.apache.org/jira/browse/HBASE-8163) | *Major* | **MemStoreChunkPool: An improvement for JAVA GC when using MSLAB**

Support reusing MemStoreChunk when MSLAB is enabled, thereby decrease the cost of YGC. It is off by default, turn it on by configuring "hbase.hregion.memstore.chunkpool.maxsize" (between 0.0 and 1.0)


---

* [HBASE-8161](https://issues.apache.org/jira/browse/HBASE-8161) | *Minor* | **setting blocking file count on table level doesn't work**

in trunk and 95


---

* [HBASE-8187](https://issues.apache.org/jira/browse/HBASE-8187) | *Blocker* | **trunk/0.95 tarball packaging**

To build a tgz that has source only:

$ mvn clean install -DskipTests -Dassembly.file=src/main/assembly/src.xml  assembly:single

The product can be found in hbase-assembly/target

To build a binary tgz:

$ mvn clean install -DskipTests javadoc:aggregate  site  assembly:single

For hadoop2.0:

$ mvn clean install -DskipTests -Dhadoop.profile=2.0 javadoc:aggregate  site  assembly:single

See HBASE-8224 for how to add hadoop1 and hadoop2 labels to the jars.

Again the product will be in hbase-assembly/target


---

* [HBASE-6031](https://issues.apache.org/jira/browse/HBASE-6031) | *Major* | **RegionServer does not go down while aborting**

Fixed in hadoop 2.0.3-alpha.


---

* [HBASE-7236](https://issues.apache.org/jira/browse/HBASE-7236) | *Major* | **add per-table/per-cf configuration via metadata**

The ability to configure most configuration parameters per column family or table. The column family configuration overrules table configuration, which in turn overrides xml configuration. The column family metadata that was previously used still overrides any configuration.

To set configuration, you can use shell commands (see also help 'create', help 'alter'); example:
alter 'mytable', CONFIGURATION =\> {'hbase.hregion.scan.loadColumnFamiliesOnDemand' =\> 'true'}
alter 'mytable', {NAME =\> 'mycolumnfamily', CONFIGURATION =\> {'hbase.hstore.blockingStoreFiles' =\> '10'}}

You can also do it programmatically by modifying HTableDescriptor and HColumnDescriptor for create and alter operations (setConfiguration method).


---

* [HBASE-9350](https://issues.apache.org/jira/browse/HBASE-9350) | *Major* | **In ChaosMonkey, MoveRegionsOfTableAction throws UnknownRegionException**

patch for 0.94.x



