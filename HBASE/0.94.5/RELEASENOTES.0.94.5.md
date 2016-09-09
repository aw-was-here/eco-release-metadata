
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
# Apache HBase  0.94.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-7498](https://issues.apache.org/jira/browse/HBASE-7498) | *Major* | **Make REST server thread pool size configurable**

Added two configuration parameters hbase.rest.threads.max (default 100) and hbase.rest.threads.min (default 2) to configure the thread pool of a REST server.

Before that, the thread pool is not configurable, and it has the default value max threads: 250, min threads: 2.


---

* [HBASE-6824](https://issues.apache.org/jira/browse/HBASE-6824) | *Major* | **Introduce ${hbase.local.dir} and save coprocessor jars there**

Added a configuration "hbase.local.dir" which defaults to ${hbase.tmp.dir}/local/. Coprocessor jars, and other local data for region servers are written to this location.


---

* [HBASE-5416](https://issues.apache.org/jira/browse/HBASE-5416) | *Major* | **Filter on one CF and if a match, then load and return full row (WAS: Improve performance of scans with some kind of filters)**

New method is added to Filter which allows filter to specify which CF is needed to it's operation.

public boolean isFamilyEssential(byte[] name);

When new row is considered, only data for essential family is loaded and filter applied. And only if filter accepts the row, rest of data is loaded.

This feature is off by default. You can use Scan.setLoadColumnFamiliesOnDemand() to enable it on a per Scan basis. If not indicated for the Scan, boolean value for "hbase.hregion.scan.loadColumnFamiliesOnDemand" would be used (default to false).


---

* [HBASE-5498](https://issues.apache.org/jira/browse/HBASE-5498) | *Major* | **Secure Bulk Load**

This feature adds a new optional configuration parameter:

hbase.bulkload.staging.dir

This defines the path on DFS that HBase will use to create random/secret directories under.
The default location is /tmp/hbase-staging


---

* [HBASE-7647](https://issues.apache.org/jira/browse/HBASE-7647) | *Major* | **0.94 hfiles v2.1 are not backwards compatible with HFilev2.0**

HFile v2.1 is not readable by RegionServers on 0.92 so default to writing older minor version unless checksums are needed.


---

* [HBASE-7669](https://issues.apache.org/jira/browse/HBASE-7669) | *Major* | **ROOT region wouldn't  be handled by PRI-IPC-Handler**

Make it so -ROOT- related operations are treated as high priority by QoS, just like .META. ops.


---

* [HBASE-7626](https://issues.apache.org/jira/browse/HBASE-7626) | *Critical* | **Backport portions of HBASE-7460 to 0.94**

Overriding the configured RPC engine separately for each RPC protocol (hbase.rpc.engine.\<protocol class\> configuration property) is no longer supported. Only a single RPC engine configuration (hbase.rpc.engine) is used.

The HConnectionManager#deleteConnection(Configuration, boolean) and HConnectionManager#deleteAllConnections(boolean) methods are now deprecated, as the "stopProxy" parameter is no longer used.

In some cases, where clients explicitly manage HConnection instance creation, the number of client RPC connections created may change. This issue changes the HConnection implementation to use it's own managed HBaseClient instance, with its own set of client RPC connections. So explicitly creating multiple HConnection instances (using HConnectionManager.createConnection()) will result in multiple HBaseClient instances. However, for the default behavior, using HTable with a single Configuration, there is no change.


---

* [HBASE-2611](https://issues.apache.org/jira/browse/HBASE-2611) | *Critical* | **Handle RS that fails while processing the failure of another one**

The fix for this issue uses Zookeeper multi functionality (hbase.zookeeper.useMulti). Please refer to hbase-default.xml about this property. There is an addendum fix at HBase-8099 (fixed in 0.94.6). In case you are running on branch \< 0.94.6, please patch it with HBase-8099, OR make sure hbase.zookeeper.useMulti is set to false.


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



