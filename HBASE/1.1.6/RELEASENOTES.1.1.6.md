
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
# Apache HBase  1.1.6 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | *Major* | **Upgrade checkstyle for all branches**

All active branches now use maven-checkstyle-plugin 2.17 and checkstyle 6.18.


---

* [HBASE-15811](https://issues.apache.org/jira/browse/HBASE-15811) | *Blocker* | **Batch Get after batch Put does not fetch all Cells**

We were not waiting on all executors in a batch to complete which meant a read-your-own-writes could sometimes fail -- especially if client is loaded; i.e. putting to multiple machines in a cluster. The test for no-more-executors was damaged by the 0.99/0.98.4 fix "HBASE-11403 Fix race conditions around Object#notify"


---

* [HBASE-15856](https://issues.apache.org/jira/browse/HBASE-15856) | *Critical* | **Cached Connection instances can wind up with addresses never resolved**

During periods where DNS resolution was not available or not working correctly, we could previously cache unresolved hostnames forever, in some cases preventing further connections to these hosts even when DNS service was restored.  With this change, unresolved hostnames will no longer be cached, and will instead throw an UnknownHostException during connection setup.


---

* [HBASE-16140](https://issues.apache.org/jira/browse/HBASE-16140) | *Major* | **bump owasp.esapi from 2.1.0 to 2.1.0.1**

The dependency owasp.esapi had a compatible change from 2.1.0 to 2.1.0.1. As a result, the transitive dependency commons-fileupload had a change from 1.2 to 1.3.1, which has some minor class changes that impact binary compatibility. Interested users should check the release notes of commons-fileupload to see if any of the incompatible changes impact them.

http://commons.apache.org/proper/commons-fileupload/changes-report.html


---

* [HBASE-15925](https://issues.apache.org/jira/browse/HBASE-15925) | *Blocker* | **compat-module maven variable not evaluated**

Downstream users of HBase dependencies that do not properly activate Maven profiles should now see a correct transitive dependency on the default hadoop-compatibility-module.



