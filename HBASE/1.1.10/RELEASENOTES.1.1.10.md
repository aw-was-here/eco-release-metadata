
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
# Apache HBase  1.1.10 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-17717](https://issues.apache.org/jira/browse/HBASE-17717) | *Critical* | **Incorrect ZK ACL set for HBase superuser**

In previous versions of HBase, the system intended to set a ZooKeeper ACL on all "sensitive" ZNodes for the user specified in the hbase.superuser configuration property. Unfortunately, the ACL was malformed which resulted in the hbase.superuser being unable to access the sensitive ZNodes that HBase creates. This JIRA issue fixes this bug. HBase will automatically correct the ACLs on start so users do not need to manually correct the ACLs.


---

* [HBASE-17287](https://issues.apache.org/jira/browse/HBASE-17287) | *Blocker* | **Master becomes a zombie if filesystem object closes**

If filesystem is not available during log split, abort master server.



