
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
# Apache HBase  0.92.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-5849](https://issues.apache.org/jira/browse/HBASE-5849) | *Major* | **On first cluster startup, RS aborts if root znode is not available**

Rather than exit, the regionserver will now wait even though the root directory in zookeeper has yet to be created.


---

* [HBASE-5887](https://issues.apache.org/jira/browse/HBASE-5887) | *Major* | **Make TestAcidGuarantees usable for system testing.**

Fix TestAcidGuarantees so it can be run from its Main (so you can point it at a cluster to run)


---

* [HBASE-5124](https://issues.apache.org/jira/browse/HBASE-5124) | *Major* | **Backport LoadTestTool to 0.92**

LoadTestTool is a single-process multi-threaded load generator and verifier designed to be invoked as a load test in a dev cluster, e.g.: hbase org.apache.hadoop.hbase.util.LoadTestTool -start\_key 0 -num\_keys 1000000000000 -bloom ROWCOL -compression NONE -write 10:100:100 -read 100:20 -tn loadtest1. Invoke without options for usage.



