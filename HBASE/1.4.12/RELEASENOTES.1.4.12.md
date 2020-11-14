
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
# Apache HBase  1.4.12 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | *Blocker* | **Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs**

<!-- markdown -->

the Apache HBase REST Proxy now uses Jackson Databind version 2.9.10.1 to address the following CVEs

  - CVE-2019-16942
  - CVE-2019-16943

Users of prior releases with Jackson Databind 2.9.10 are advised to either upgrade to this release or to upgrade their local Jackson Databind jar directly.


---

* [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | *Minor* | **Log message about CleanerChore delegate initialization should be at INFO**

CleanerChore delegate initialization is now logged at INFO level instead of DEBUG


---

* [HBASE-23287](https://issues.apache.org/jira/browse/HBASE-23287) | *Blocker* | **WALs not aged off of HDFS because LogCleaner is not added to choreService**

<!-- markdown -->

Prior to this change HBase 1.4.11 and 1.5.0 based clusters would fail to clean up WALs from the oldWALs area automatically. With this change in place clusters should return to the expected behavior of cleaning up WALs that are no longer needed.



