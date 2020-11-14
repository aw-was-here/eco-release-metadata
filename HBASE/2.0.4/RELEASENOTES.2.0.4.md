
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
# Apache HBase  2.0.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | *Critical* | **CellCodec Written To WAL Before It's Verified**

After HBASE-21492 the return type of WALCellCodec#getWALCellCodecClass has been changed from String to Class


---

* [HBASE-21544](https://issues.apache.org/jira/browse/HBASE-21544) | *Major* | **Backport HBASE-20734 Colocate recovered edits directory with hbase.wal.dir**

This change moves the recovered.edits files which are created by the WALSplitter from the default filesystem into the WAL filesystem. This better enables the separate filesystem for WAL and HFile deployment model, by avoiding a check which requires that the HFile filesystem provides the hflush capability.


---

* [HBASE-21557](https://issues.apache.org/jira/browse/HBASE-21557) | *Major* | **Set version to 2.0.4 on branch-2.0 so can cut an RC**

Set project version to 2.0.4 from 2.0.4-SNAPSHOT


---

* [HBASE-21146](https://issues.apache.org/jira/browse/HBASE-21146) | *Minor* | **(2.0) Add ability for HBase Canary to ignore a configurable number of ZooKeeper down nodes**

Adds -permittedZookeeperFailures \<N\>

Makes it so Canary will keep running reporting on downed zk ensemble members rather than exit.


---

* [HBASE-21551](https://issues.apache.org/jira/browse/HBASE-21551) | *Blocker* | **Memory leak when use scan with STREAM at server side**

<!-- markdown -->
### Summary
HBase clusters will experience Region Server failures due to out of memory errors due to a leak given any of the following:

* User initiates Scan operations set to use the STREAM reading type
* User initiates Scan operations set to use the default reading type that read more than 4 * the block size of column families involved in the scan (e.g. by default 4*64KiB)
* Compactions run

### Root cause

When there are long running scans the Region Server process attempts to optimize access by using a different API geared towards sequential access. Due to an error in HBASE-20704 for HBase 2.0+ the Region Server fails to release related resources when those scans finish. That same optimization path is always used for the HBase internal file compaction process.

### Workaround

Impact for this error can be minimized by setting the config value “hbase.storescanner.pread.max.bytes” to MAX_INT to avoid the optimization for default user scans. Clients should also be checked to ensure they do not pass the STREAM read type to the Scan API. This will have a severe impact on performance for long scans.

Compactions always use this sequential optimized reading mechanism so downstream users will need to periodically restart Region Server roles after compactions have happened.


---

* [HBASE-21401](https://issues.apache.org/jira/browse/HBASE-21401) | *Critical* | **Sanity check when constructing the KeyValue**

Add a sanity check when constructing KeyValue from a byte[]. we use the constructor when we're reading kv from socket or HFIle or WAL(replication). the santiy check isn't designed for discovering the bits corruption in network transferring or disk IO. It is designed to detect bugs inside HBase in advance. and HBASE-21459 indicated that there's extremely small performance loss for diff kinds of keyvalue.


---

* [HBASE-21635](https://issues.apache.org/jira/browse/HBASE-21635) | *Major* | **Use maven enforcer to ban imports from illegal packages**

Use de.skuzzle.enforcer.restrict-imports-enforcer-rule extension for maven enforcer plugin to ban illegal imports at compile time. Now if you use illegal imports, for example, import com.google.common.\*, there will be a compile error, instead of a checkstyle warning.


---

* [HBASE-21618](https://issues.apache.org/jira/browse/HBASE-21618) | *Critical* | **Scan with the same startRow(inclusive=true) and stopRow(inclusive=false) returns one result**

There was a bug when scan with the same startRow(inclusive=true) and stopRow(inclusive=false). The old incorrect behavior is return one result. After this fix, the new correct behavior is return nothing.



