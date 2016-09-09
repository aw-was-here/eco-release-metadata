
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
# Apache HBase  0.96.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | *Minor* | **Major compact keeps deletes with future timestamps**

hbase.hstore.time.to.purge.deletes has been changed; if it is not set, or set to 0, all delete markers including those  with future timestamp are purged during the later major compaction. Otherwise, a delete marker is kept until the major compaction after marker's timestamp + this setting.


---

* [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | *Major* | **Delete mutation is not consistent with Put wrt timestamp**

**WARNING: No release note provided for this change.**


---

* [HBASE-10966](https://issues.apache.org/jira/browse/HBASE-10966) | *Trivial* | **RowCounter misinterprets column names that have colons in their qualifier**

Applied to all branches (0.94 doesn't have TestRowCounter so didn't get test change).  Thanks for the patch Alexandre.


---

* [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | *Major* | **Align bulk load, flush, and compact to require Action.CREATE**

preBulkLoadHFile now requires CREATE, which it effectively already needed since getTableDescriptor also requires it which is what LoadIncrementalHFiles is doing before bulk loading.
compact and flush can now be issued by users with CREATE permission.


---

* [HBASE-10958](https://issues.apache.org/jira/browse/HBASE-10958) | *Blocker* | **[dataloss] Bulk loading with seqids can prevent some log entries from being replayed**

Bulk loading with sequence IDs, an option in late 0.94 releases and the default since 0.96.0, will now trigger a flush per region that loads an HFile (if there's data that needs to flushed).


---

* [HBASE-11480](https://issues.apache.org/jira/browse/HBASE-11480) | *Trivial* | **ClientScanner might not close the HConnection created in construction**

Deprecate a (unused) ClientScanner constructor because can leave a connection open.


---

* [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | *Major* | **VM OPTS for shell only**

Set HBASE\_SHELL\_OPTS in the environment or in hbase-env.sh to supply extra VM arguments when launching the HBase command shell.


---

* [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | *Major* | **Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+**

TableMapReduceUtil now restores the option to set scanner caching by setting it on the Scan object that is passe in. The priority order for choosing the scanner caching is as follows:

1. Caching set on the scan object.
2. Caching specified via the config "hbase.client.scanner.caching", which can either be set manually on the conf or via the helper method TableMapReduceUtil.setScannerCaching().
3. The default value HConstants.DEFAULT\_HBASE\_CLIENT\_SCANNER\_CACHING, which is set to 100 currently.



