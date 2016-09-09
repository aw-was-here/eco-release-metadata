
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
# Apache HBase  0.90.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-3717](https://issues.apache.org/jira/browse/HBASE-3717) | *Trivial* | **deprecate HTable isTableEnabled() methods in favor of HBaseAdmin methods**

Deprecated HTable#isTableEnabled


---

* [HBASE-3071](https://issues.apache.org/jira/browse/HBASE-3071) | *Major* | **Graceful decommissioning of a regionserver**

Adds bin/graceful\_stop.sh.  See the reference guide decommission section for documentation: http://hbase.apache.org/book.html#decommission


---

* [HBASE-3773](https://issues.apache.org/jira/browse/HBASE-3773) | *Blocker* | **Set ZK max connections much higher in 0.90**

The max connections per IP for ZK is now set at 2000, but only for 0.90


---

* [HBASE-3783](https://issues.apache.org/jira/browse/HBASE-3783) | *Blocker* | **hbase-0.90.2.jar exists in hbase root and in 'lib/'**

The HBase release tarball no longer contains hbase or hbase-tests jars in the lib/ directory. Users should be sure to reference those jars from in $HBASE\_HOME directory directly.


---

* [HBASE-3767](https://issues.apache.org/jira/browse/HBASE-3767) | *Major* | **Improve how HTable handles threads used for multi actions**

hbase.htable.threads.max now defaults to Integer.MAX\_VALUE. Setting this below the number of region servers can result into RejectedExecutionException.


---

* [HBASE-3795](https://issues.apache.org/jira/browse/HBASE-3795) | *Trivial* | **Remove the "Cache hit for row" message**

The client will stop printing messages like "DEBUG client.HConnectionManager$HConnectionImplementation: Cache hit for row..."


---

* [HBASE-3817](https://issues.apache.org/jira/browse/HBASE-3817) | *Trivial* | **HBase Shell has an issue accepting FILTER for the 'scan' command.**

Fix the FILTER feature for the HBase Shell's 'scan' command.



