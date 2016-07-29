
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

* [HBASE-16144](https://issues.apache.org/jira/browse/HBASE-16144) | *Major* | **Replication queue's lock will live forever if RS acquiring the lock has died prematurely**

If zk based replication queue is used and useMulti is false, we will schedule a chore to clean up the orphan replication queue lock on zk.



