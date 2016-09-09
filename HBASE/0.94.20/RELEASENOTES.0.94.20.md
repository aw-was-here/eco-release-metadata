
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
# Apache HBase  0.94.20 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | *Major* | **Align bulk load, flush, and compact to require Action.CREATE**

preBulkLoadHFile now requires CREATE, which it effectively already needed since getTableDescriptor also requires it which is what LoadIncrementalHFiles is doing before bulk loading.
compact and flush can now be issued by users with CREATE permission.


---

* [HBASE-10958](https://issues.apache.org/jira/browse/HBASE-10958) | *Blocker* | **[dataloss] Bulk loading with seqids can prevent some log entries from being replayed**

Bulk loading with sequence IDs, an option in late 0.94 releases and the default since 0.96.0, will now trigger a flush per region that loads an HFile (if there's data that needs to flushed).


---

* [HBASE-11188](https://issues.apache.org/jira/browse/HBASE-11188) | *Major* | **"Inconsistent configuration" for SchemaMetrics is always shown**

Region servers with the default value for hbase.metrics.showTableName will stop showing the error message "ERROR org.apache.hadoop.hbase.regionserver.metrics.SchemaMetrics: Inconsistent configuration. Previous configuration for using table name in metrics: true, new configuration: false".
Region servers configured with hbase.metrics.showTableName=false should now get a message like this one: "ERROR org.apache.hadoop.hbase.regionserver.metrics.SchemaMetrics: Inconsistent configuration. Previous configuration for using table name in metrics: false, new configuration: true", and it's nothing to be concerned about.



