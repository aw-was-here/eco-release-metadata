
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
# Apache HBase  2.2.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-23679](https://issues.apache.org/jira/browse/HBASE-23679) | *Critical* | **FileSystem instance leaks due to bulk loads with Kerberos enabled**

This issues fixes an issue with Bulk Loading on installations with Kerberos enabled and more than a single RegionServer. When multiple tables are involved in hosting a table's regions which are being bulk-loaded into, all but the RegionServer hosting the table's first Region will "leak" one DistributedFileSystem object onto the heap, never freeing that memory. Eventually, with enough bulk loads, this will create a situation for RegionServers where they have no free heap space and will either spend all time in JVM GC, lose their ZK session, or crash with an OutOfMemoryError.

The only mitigation for this issue is to periodically restart RegionServers. All earlier versions of HBase 2.x are subject to this issue (2.0.x, \<=2.1.8, \<=2.2.3)


---

* [HBASE-23686](https://issues.apache.org/jira/browse/HBASE-23686) | *Major* | **Revert binary incompatible change and remove reflection**

- Reverts a binary incompatible binary change for ByteRangeUtils
- Usage of reflection inside CommonFSUtils removed


---

* [HBASE-17115](https://issues.apache.org/jira/browse/HBASE-17115) | *Major* | **HMaster/HRegion Info Server does not honour admin.acl**

Implements authorization for the HBase Web UI by limiting access to certain endpoints which could be used to extract sensitive information from HBase.

Access to these restricted endpoints can be limited to a group of administrators, identified either by a list of users (hbase.security.authentication.spnego.admin.users) or by a list of groups
(hbase.security.authentication.spnego.admin.groups).  By default, neither of these values are set which will preserve backwards compatibility (allowing all authenticated users to access all endpoints).

Further, users who have sensitive information in the HBase service configuration can set hbase.security.authentication.ui.config.protected to true which will treat the configuration endpoint as a protected, admin-only resource. By default, all authenticated users may access the configuration endpoint.


---

* [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | *Minor* | **Move Jira-attached file precommit definition from script in Jenkins config to dev-support**

The Jira Precommit job (https://builds.apache.org/job/PreCommit-HBASE-Build/) will now look for a file within the source tree (dev-support/jenkins\_precommit\_jira\_yetus.sh) instead of depending on a script section embedded in the job.


---

* [HBASE-22827](https://issues.apache.org/jira/browse/HBASE-22827) | *Major* | **Expose multi-region merge in shell and Admin API**

merge\_region shell command can now be used to merge more than 2 regions as well. It takes a list of regions as comma separated values or as an array of regions, and not just 2 regions. The full regionnames and encoded regionnames are continued to be accepted.



