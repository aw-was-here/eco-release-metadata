
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
# Apache HBase  0.90.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-2077](https://issues.apache.org/jira/browse/HBASE-2077) | *Critical* | **NullPointerException with an open scanner that expired causing an immediate region server shutdown**

Removes lease from lease monitor while operation is running inside the server.


---

* [HBASE-3994](https://issues.apache.org/jira/browse/HBASE-3994) | *Minor* | **SplitTransaction has a window where clients can get RegionOfflineException**

Added better error messages for regions that are offline or split parents


---

* [HBASE-3984](https://issues.apache.org/jira/browse/HBASE-3984) | *Blocker* | **CT.verifyRegionLocation isn't doing a very good check, can delay cluster recovery**

In trunk:
All HRegionInferface methods will now throw a RegionServerStoppedException if it's in that state, whereas we used to only check it for a few methods.
SingleServerBulkAssigner will not kill the Master anymore when getting IOEs, instead it will just log an error and the TimeoutMonitor will take care of picking up the pieces.

In 0.90:
Only a couple of checkOpen calls were added in order to change as less code as possible while still fixing the issue.


---

* [HBASE-3968](https://issues.apache.org/jira/browse/HBASE-3968) | *Minor* | **HLog Pretty Printer**

Implementation of a Pretty Printer for HLogs. Can be accessed with the Java API or with a command line interface, which replaces HLog --dump functionality. Can output to a human-readable pretty format, or to a JSON list for easy parsing in diagnostic scripts. Can also filter by region, row, and/or sequence id. See command line usage (HLog --dump -h) and the javadocs for more detail on these features.


---

* [HBASE-3893](https://issues.apache.org/jira/browse/HBASE-3893) | *Blocker* | **HRegion.internalObtainRowLock shouldn't wait forever**

hbase.rowlock.wait.duration has been introduced which controls the duration in milliseconds waiting to acquire row lock.
Default value is 30 seconds.
If row lock cannot be acquired within this duration, no row lock would be obtained.



