
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
# Apache HBase  0.98.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-11077](https://issues.apache.org/jira/browse/HBASE-11077) | *Critical* | **[AccessController] Restore compatible early-out access denial**

Prior to 0.98.0 if a user was not granted access to a column family or partial access (qualifier grants), then the AccessController would immediately throw back an AccessDeniedException. This behavior was changed in 0.98.0 to allow cell level ACLs to grant exceptional access. The user will no longer see an exception; instead the scanner will return result sets only including cells which grant exceptional access. If no such cell level grants are made, then the scanner will return the empty result set. 

This change introduces a configuration setting which restores the pre-0.98.0 behavior. It can be set in the site file for global effect, or per table using HTableDescriptor#setConfiguration. This setting is AccessControlConstants.CF\_ATTRIBUTE\_EARLY\_OUT ("hbase.security.access.early\_out"), a boolean. Set to "true" for backwards compatible behavior. As a consequence if there are no grants at the CF level then an AccessDeniedException will be thrown immediately, and cell ACLs will be ignored, unless the cell-first ACL evaluation strategy is used (toggled via Query#setACLStrategy). 

This change also repairs a defect related to audit logging. In all cases, compatible behavior or not, indications of successful or failed access attempts will be logged.


---

* [HBASE-11054](https://issues.apache.org/jira/browse/HBASE-11054) | *Major* | **Create new hook in StoreScanner to help user creating his own delete tracker**

Creates a new hook in the RegionObserver Coprocessor,
{code}
RegionObserver postInstantiateDeleteTracker(final ObserverContext<RegionCoprocessorEnvironment> ctx, DeleteTracker delTracker)
{code}
Introduced in 0.98.2.


---

* [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | *Major* | **Align bulk load, flush, and compact to require Action.CREATE**

preBulkLoadHFile now requires CREATE, which it effectively already needed since getTableDescriptor also requires it which is what LoadIncrementalHFiles is doing before bulk loading.
compact and flush can now be issued by users with CREATE permission.


---

* [HBASE-10966](https://issues.apache.org/jira/browse/HBASE-10966) | *Trivial* | **RowCounter misinterprets column names that have colons in their qualifier**

Applied to all branches (0.94 doesn't have TestRowCounter so didn't get test change).  Thanks for the patch Alexandre.


---

* [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | *Major* | **Delete mutation is not consistent with Put wrt timestamp**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-10958](https://issues.apache.org/jira/browse/HBASE-10958) | *Blocker* | **[dataloss] Bulk loading with seqids can prevent some log entries from being replayed**

Bulk loading with sequence IDs, an option in late 0.94 releases and the default since 0.96.0, will now trigger a flush per region that loads an HFile (if there's data that needs to flushed).


---

* [HBASE-10916](https://issues.apache.org/jira/browse/HBASE-10916) | *Critical* | **[VisibilityController] Stackable ScanLabelGenerators**

One can configure a set of ScanLabelGenerators to be used by the system. For this, a comma separated set of implementation class names to be configured for config "hbase.regionserver.scan.visibility.label.generator.class".


---

* [HBASE-10884](https://issues.apache.org/jira/browse/HBASE-10884) | *Major* | **[REST] Do not disable block caching when scanning**

The REST gateway no longer disables block cache when issuing Scans to the cluster, and in this way, Scans now behave the same as Gets.


---

* [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | *Minor* | **Major compact keeps deletes with future timestamps**

hbase.hstore.time.to.purge.deletes has been changed; if it is not set, or set to 0, all delete markers including those  with future timestamp are purged during the later major compaction. Otherwise, a delete marker is kept until the major compaction after marker's timestamp + this setting.



