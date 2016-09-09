
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
# Apache HBase  0.90.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-4225](https://issues.apache.org/jira/browse/HBASE-4225) | *Critical* | **NoSuchColumnFamilyException in multi doesn't say which family is bad**

Created a new class OperationStatus that wraps OperationStatusCode and an exception message, most of the patch consists of the former replacing the latter.


---

* [HBASE-4395](https://issues.apache.org/jira/browse/HBASE-4395) | *Blocker* | **EnableTableHandler races with itself**

EnableTableHandler used to call many enables on the table, now it calls it once and eventually times out if not all the regions are assigned and none is moving.


---

* [HBASE-3421](https://issues.apache.org/jira/browse/HBASE-3421) | *Major* | **Very wide rows -- 30M plus -- cause us OOME**

A new config parameter, "hbase.hstore.compaction.kv.max", has been added to limit the number of rows processed in each iteration of the internal compaction code.
Default value is 10.


---

* [HBASE-4508](https://issues.apache.org/jira/browse/HBASE-4508) | *Major* | **Backport HBASE-3777 to 0.90 branch**

A new config parameter, hbase.connection.per.config, has been added.
If set to true, there is no connection sharing. This is default setting.
If set to false, connection sharing would be enabled so that fewer connections to zookeeper are used.


---

* [HBASE-4718](https://issues.apache.org/jira/browse/HBASE-4718) | *Major* | **Backport HBASE-4552 to 0.90 branch**

HRegion.bulkLoadHFile() has been removed in 0.92 and TRUNK. It is deprecated in 0.90.5
HRegion.bulkLoadHFiles() is introduced for multi-family bulk load. 
Default value for hbase.bulkload.retries.number is 0, meaning bulk load would never give up.



