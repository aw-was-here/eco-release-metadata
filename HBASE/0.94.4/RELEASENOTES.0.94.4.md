
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
# Apache HBase  0.94.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-7009](https://issues.apache.org/jira/browse/HBASE-7009) | *Major* | **Port HBaseCluster interface/tests to 0.94**

Adds an Integration Test facilty that is run by invoking 'mvn verify'.  It can run the same test on a minihbasecluster and also on an already distributed cluster.  Adds a ChaosMonkey too.


---

* [HBASE-7204](https://issues.apache.org/jira/browse/HBASE-7204) | *Minor* | **Make hbck ErrorReporter pluggable**

Now hbck runs with ToolRunner, and can accept configurations from command line.


---

* [HBASE-6423](https://issues.apache.org/jira/browse/HBASE-6423) | *Major* | **Writes should not block reads on blocking updates to memstores**

Added new configuration parameters to adjust the wait time in getting a lock before acting on a region:

hbase.busy.wait.multiplier.max (default 2)
hbase.rowlock.wait.duration (same as the default RPC timeout time)

For reading, it waits at most "hbase.rowlock.wait.duration" in getting a lock.
For writing, it waits at most "hbase.rowlock.wait.duration" \* min ( #rows affected, "
hbase.busy.wait.multiplier.max"). However, it waits at most the server side call purge timeout time.


---

* [HBASE-7336](https://issues.apache.org/jira/browse/HBASE-7336) | *Critical* | **HFileBlock.readAtOffset does not work well with multiple threads**

Improves read concurrency by changing HFileBlock#readAtOffset from synchronized to reentrant lock; will have contending scanners fall back to preading rather than synchronized seek+read.  Keeps all cores busy rather than just the one.


---

* [HBASE-6775](https://issues.apache.org/jira/browse/HBASE-6775) | *Minor* | **Use ZK.multi when available for HBASE-6710 0.92/0.94 compatibility fix**

hbase.zookeeper.useMulti
Instructs HBase to make use of ZooKeeper's multi-update functionality.
+    This allows certain ZooKeeper operations to complete more quickly and prevents some issues
+    with rare ZooKeeper failure scenarios (see the release note of HBASE-6710 for an example).
+    IMPORTANT: only set this to true if all ZooKeeper servers in the cluster are on version 3.4+
+    and will not be downgraded.  ZooKeeper versions before 3.4 do not support multi-update and will
+    not fail gracefully if multi-update is invoked (see ZOOKEEPER-1495).


---

* [HBASE-7357](https://issues.apache.org/jira/browse/HBASE-7357) | *Major* | **HBaseClient and HBaseServer should use hbase.security.authentication when negotiating authentication**

This is a slightly incompatible change.
HBase SASL connection negotiation is now enabled by setting hbase.security.authentication rather than hadoop.security.authentication.


---

* [HBASE-7351](https://issues.apache.org/jira/browse/HBASE-7351) | *Minor* | **Periodic health check chore**

Run a script of your creation on a period.  If it fails N times (configurable), have the server exit.

New configs:

 hbase.node.health.script.location
 hbase.node.health.script.timeout
 hbase.node.health.script.frequency Default is every 60seconds.
 hbase.node.health.failure.threshold Defaults to 3.



