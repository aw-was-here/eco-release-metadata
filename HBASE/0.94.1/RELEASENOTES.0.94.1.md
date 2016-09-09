
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
# Apache HBase  0.94.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-5887](https://issues.apache.org/jira/browse/HBASE-5887) | *Major* | **Make TestAcidGuarantees usable for system testing.**

Fix TestAcidGuarantees so it can be run from its Main (so you can point it at a cluster to run)


---

* [HBASE-6001](https://issues.apache.org/jira/browse/HBASE-6001) | *Major* | **Upgrade slf4j to 1.6.1**

The version of SLF4J we bundle is now targeted to that required by the Hadoop version HBase has been compiled against.


---

* [HBASE-6010](https://issues.apache.org/jira/browse/HBASE-6010) | *Minor* | **Security audit logger configuration for log4j**

We now set up security audit logging in the LOG4J configuration in a similar manner to Hadoop core.


---

* [HBASE-5802](https://issues.apache.org/jira/browse/HBASE-5802) | *Minor* | **Change the default metrics class to NullContextWithUpdateThread**

**WARNING: No release note provided for this change.**


---

* [HBASE-6114](https://issues.apache.org/jira/browse/HBASE-6114) | *Major* | **CacheControl flags should be tunable per table schema per CF**

Make CacheControl flags tunable per table schema per CF; e.g.
cacheDataOnWrite, cacheIndexesOnWrite and cacheBloomsOnWrite.


---

* [HBASE-6040](https://issues.apache.org/jira/browse/HBASE-6040) | *Major* | **Use block encoding and HBase handled checksum verification in bulk loading using HFileOutputFormat**

Added a new config param "hbase.mapreduce.hfileoutputformat.datablock.encoding" using which we can specify which encoding scheme to be used on disk. Data will get written in to HFiles using this encoding scheme while bulk load. The value of this can be NONE, PREFIX, DIFF, FAST\_DIFF as these are the DataBlockEncoding types supported now. [When any new types are added later, corresponding names also will become valid]
The checksum type and number of bytes per checksum can be configured using the config params hbase.hstore.checksum.algorithm, hbase.hstore.bytes.per.checksum respectively


---

* [HBASE-5609](https://issues.apache.org/jira/browse/HBASE-5609) | *Minor* | **Add the ability to pass additional information for slow query logging**

Added the ability to add identifiers to client operations.  These identifiers will be output with slow query logging.  The could be used to identify the piece of code that initiated the operation.  This could be anything from a module name to a class.method with a line number.


---

* [HBASE-6207](https://issues.apache.org/jira/browse/HBASE-6207) | *Major* | **Add jitter to client retry timer**

The retries in the client now have a jitter of up to 1% of the normal computed sleep time.


---

* [HBASE-6236](https://issues.apache.org/jira/browse/HBASE-6236) | *Major* | **Offline meta repair fails if the HBase base mount point is on a different cluster/volume than its parent in a ViewFS or similar FS**

-sidelineDir option has been added to both hbck and OfflineMetaRepair.
It allows specification of hdfs directory where offlined data is stored.


---

* [HBASE-6377](https://issues.apache.org/jira/browse/HBASE-6377) | *Major* | **HBASE-5533 metrics miss all operations submitted via MultiAction**

The misleading "getRequestLatency", "deleteRequestLatency", and "putRequestLatency" histograms were removed from metrics because such requests often were not actually measured.


---

* [HBASE-6382](https://issues.apache.org/jira/browse/HBASE-6382) | *Major* | **Upgrade Jersey to 1.8 to match Hadoop 1 and 2**

Removed 0.90 (Jon likes new issue for backports it seems) and pegged it against 0.94.2 and 0.92.2 rather than 0.94.1 and 0.92.1.


---

* [HBASE-6363](https://issues.apache.org/jira/browse/HBASE-6363) | *Trivial* | **HBaseConfiguration can carry a main method that dumps XML output for debug purposes**

Adds a main to HBaseConfiguration to dump out configs.



