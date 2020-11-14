
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
# Apache HBase  2.1.10 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | *Minor* | **Move Jira-attached file precommit definition from script in Jenkins config to dev-support**

The Jira Precommit job (https://builds.apache.org/job/PreCommit-HBASE-Build/) will now look for a file within the source tree (dev-support/jenkins\_precommit\_jira\_yetus.sh) instead of depending on a script section embedded in the job.


---

* [HBASE-23878](https://issues.apache.org/jira/browse/HBASE-23878) | *Major* | **Backport HBASE-22040 to branch-2.1**


Add a mergeRegionsAsync(byte[][], boolean) method in the AsyncAdmin interface.

Instead of using assert, now we will throw IllegalArgumentException when you want to merge less than 2 regions at client side. And also, at master side, instead of using assert, now we will throw DoNotRetryIOException if you want merge more than 2 regions, since we only support merging two regions at once for now.


---

* [HBASE-22827](https://issues.apache.org/jira/browse/HBASE-22827) | *Major* | **Expose multi-region merge in shell and Admin API**

merge\_region shell command can now be used to merge more than 2 regions as well. It takes a list of regions as comma separated values or as an array of regions, and not just 2 regions. The full regionnames and encoded regionnames are continued to be accepted.


---

* [HBASE-24017](https://issues.apache.org/jira/browse/HBASE-24017) | *Major* | **Turn down flakey rerun rate on all but hot branches**

Changed master, branch-2, and branch-2.1 to twice a day.
Left branch-2.3, branch-2.2, and branch-1 at every 4 hours.
Changed branch-1.4 and branch-1.3 to @daily (1.3 was running every hour).


---

* [HBASE-24050](https://issues.apache.org/jira/browse/HBASE-24050) | *Major* | **Deprecated PBType on all 2.x branches**

org.apache.hadoop.hbase.types.PBType is marked as deprecated without any replacement. It will be moved to hbase-example module and marked as IA.Private in 3.0.0. This is a mistake as it should not be part of our public API. Users who depend on this class should just copy the code your own code base.


---

* [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | *Major* | **Use a fair ReentrantReadWriteLock for the region close lock**

This change modifies the default acquisition policy for the region's close lock in order to prevent observed starvation of close requests. The new boolean configuration parameter 'hbase.regionserver.fair.region.close.lock' controls the lock acquisition policy: if true, the lock is created in fair mode (default); if false, the lock is created in nonfair mode (the old default).


---

* [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | *Major* | **Relocate test-only REST "client" from src/ to test/ and mark Private**

Relocate test-only REST RemoteHTable and RemoteAdmin from src/ to test/. And mark them as InterfaceAudience.Private.


---

* [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | *Critical* | **Zookeeper sync() call is async**

<!-- markdown -->

Fixes a couple of bugs in ZooKeeper interaction. Firstly, zk sync() call that is used to sync the lagging followers with leader so that the client sees a consistent snapshot state was actually asynchronous under the hood. We make it synchronous for correctness. Second, zookeeper events are now processed in a separate thread rather than doing it in the thread context of zookeeper client connection. This decoupling frees up client connection quickly and avoids deadlocks.



