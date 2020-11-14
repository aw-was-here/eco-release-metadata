
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
# Apache HBase  2.3.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-24892](https://issues.apache.org/jira/browse/HBASE-24892) | *Major* | **config 'hbase.hregion.memstore.mslab.indexchunksize' not be used**

Remove the config "hbase.hregion.memstore.mslab.indexchunksize" which never used. And use "hbase.hregion.memstore.mslab.indexchunksize.percent" instead.


---

* [HBASE-24776](https://issues.apache.org/jira/browse/HBASE-24776) | *Major* | **[hbtop] Support Batch mode**

HBASE-24776 added the following command line parameters to hbtop:
\| Argument \| Description \| 
\|---\|---\|
\| -n,--numberOfIterations \<arg\> \| The number of iterations \|
\| -O,--outputFieldNames \| Print each of the available field names on a separate line, then quit \|
\| -f,--fields \<arg\> \| Show only the given fields. Specify comma separated fields to show multiple fields \|
\| -s,--sortField \<arg\> \| The initial sort field. You can prepend a \`+' or \`-' to the field name to also override the sort direction. A leading \`+' will force sorting high to low, whereas a \`-' will ensure a low to high ordering \|
\| -i,--filters \<arg\> \| The initial filters. Specify comma separated filters to set multiple filters \|
\| -b,--batchMode \| Starts hbtop in Batch mode, which could be useful for sending output from hbtop to other programs or to a file. In this mode, hbtop will not accept input and runs until the iterations limit you've set with the \`-n' command-line option or until killed \|


---

* [HBASE-24956](https://issues.apache.org/jira/browse/HBASE-24956) | *Major* | **ConnectionManager#locateRegionInMeta waits for user region lock indefinitely.**

<!-- markdown -->

Without this fix there are situations in which locateRegionInMeta() on a client is not bound by a timeout. This happens because of a global lock whose acquisition was not under any lock scope. This affects client facing API calls that rely on this method to locate a table region in meta. This fix brings the lock acquisition under the scope of "hbase.client.meta.operation.timeout" and that guarantees a bounded wait time.


---

* [HBASE-24896](https://issues.apache.org/jira/browse/HBASE-24896) | *Major* | **'Stuck' in static initialization creating RegionInfo instance**

1. Untangle RegionInfo, RegionInfoBuilder, and MutableRegionInfo static
initializations.
2. Undo static initializing references from RegionInfo to RegionInfoBuilder.
3. Mark RegionInfo#UNDEFINED IA.Private and deprecated;
it is for internal use only and likely to be removed in HBase4. (sub-task HBASE-24918)
4. Move MutableRegionInfo from inner-class of
RegionInfoBuilder to be (package private) standalone. (sub-task HBASE-24918)



