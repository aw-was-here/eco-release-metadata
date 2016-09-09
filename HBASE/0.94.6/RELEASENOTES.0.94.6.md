
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
# Apache HBase  0.94.6 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


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

* [HBASE-8031](https://issues.apache.org/jira/browse/HBASE-8031) | *Major* | **Adopt goraci as an Integration test**

Added a system test called IntegrationTestBigLinkedList. This test runs many ingest clients that continually create linked lists containing 25 million nodes. At some point the clients are stopped and a map reduce job is run to ensure no linked list has a hole. A hole indicates data was lost.


---

* [HBASE-8085](https://issues.apache.org/jira/browse/HBASE-8085) | *Major* | **Backport the fix for Bytes.toStringBinary() into 94 (HBASE-6991)**

This patch changes Bytes.toStringBinary() and Bytes.toBytesBinary() to escape the character "\". Unprintable characters are escaped using "\\x%02X" format, but "\" was not escaped properly leading to irreversible ser/de using toStringBinary() -\> toBytesBinary().


---

* [HBASE-8090](https://issues.apache.org/jira/browse/HBASE-8090) | *Blocker* | **Versioning site; part two, publish 0.94 site and add link from main site**

Added a '0.94 Documentation' to hbase.apache.org navbar.  Points into reports, refguide, and apidocs generated out of 0.94 branch.


---

* [HBASE-7876](https://issues.apache.org/jira/browse/HBASE-7876) | *Minor* | **Got exception when manually triggers a split on an empty region**

Regions with no store files used to exit with an exception when splits are attempted.  With this fix applied, empty regions are split into two empty regions.



