
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
# Apache HBase  1.2.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-15931](https://issues.apache.org/jira/browse/HBASE-15931) | *Critical* | **Add log for long-running tasks in AsyncProcess**

After HBASE-15931, we will log more details for long-running tasks in AsyncProcess#waitForMaximumCurrentTasks every 10 seconds, including:
1. Table name will be included in the tasks status log
2. On which regionserver(s) the tasks are runnning will be logged when less than hbase.client.threshold.log.details tasks left, by default 10.
3. Against which regions the tasks are running will be logged when less than 2 tasks left.


---

* [HBASE-16144](https://issues.apache.org/jira/browse/HBASE-16144) | *Major* | **Replication queue\'s lock will live forever if RS acquiring the lock has died prematurely**

If zk based replication queue is used and useMulti is false, we will schedule a chore to clean up the orphan replication queue lock on zk.


---

* [HBASE-16289](https://issues.apache.org/jira/browse/HBASE-16289) | *Critical* | **AsyncProcess stuck messages need to print region/server**

Adds logging of region and server. Helpful debugging. Logging now looks like this:
{code}
2016-06-23 17:07:18,759 INFO  [Thread-1] client.AsyncProcess$AsyncRequestFutureImpl(1601): #1, waiting for 1  actions to finish on table: DUMMY\_TABLE
2016-06-23 17:07:18,759 INFO  [Thread-1] client.AsyncProcess(1720): Left over 1 task(s) are processed on server(s): [s1:1,1,1]
2016-06-23 17:07:18,759 INFO  [Thread-1] client.AsyncProcess(1728): Regions against which left over task(s) are processed: [DUMMY\_TABLE,DUMMY\_BYTES\_1,1.3fd12ea80b4df621fb15497ba75f7368.,DUMMY\_TABLE,DUMMY\_BYTES\_2,2.924207e242e313d2e5491c625e0a296e.]
{code}


---

* [HBASE-16288](https://issues.apache.org/jira/browse/HBASE-16288) | *Critical* | **HFile intermediate block level indexes might recurse forever creating multi TB files**

A new hfile configuration "hfile.index.block.min.entries" which defaults to 16 determines how many entries the hfile index block can have at least. The configuration which determines how large the index block can be at max (hfile.index.block.max.size) is ignored as long as we have fewer than hfile.index.block.min.entries entries. This ensures that multi-level index does not build up with too many levels.


---

* [HBASE-16317](https://issues.apache.org/jira/browse/HBASE-16317) | *Blocker* | **revert all ESAPI changes**

This issue reverts fixes designed to prevent malicious content from rendering in HBase\'s UIs. Specifically, these changes shipped in 1.1.4+ and 1.2.0+. They were removed due to licensing issues discovered in the dependencies they introduced. Their implementation and those dependencies have been removed from HBase! Removal of these dependencies is against the strict definition of our version compatibility guidelines. However, inclusion of non-Apache approved licenses cannot be tolerated. Implementation of these fixes using an Apache-appropriate means is tracked in HBASE-16328.


---

* [HBASE-16287](https://issues.apache.org/jira/browse/HBASE-16287) | *Major* | **LruBlockCache size should not exceed acceptableSize too many**

In order to avoid blockcache size exceed acceptable size too much, we add one configuration "hbase.lru.blockcache.hard.capacity.limit.factor" to decide whether the block could be put into LruBlockCache or not.  This factor defaults to 1.2
If blockcache size \>= factor\*acceptableSize, we will reject the block into cache.


---

* [HBASE-16321](https://issues.apache.org/jira/browse/HBASE-16321) | *Blocker* | **Ensure findbugs jsr305 jar isn\'t present**

HBase now ensures the jsr305 implementation from the findbugs project is not included in its binary artifacts or the compile / runtime dependencies of its user facing modules. Downstream users that rely on this jar will need to update their dependencies.



