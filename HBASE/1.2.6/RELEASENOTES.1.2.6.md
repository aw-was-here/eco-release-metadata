
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
# Apache HBase  1.2.6 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-17717](https://issues.apache.org/jira/browse/HBASE-17717) | *Critical* | **Incorrect ZK ACL set for HBase superuser**

In previous versions of HBase, the system intended to set a ZooKeeper ACL on all "sensitive" ZNodes for the user specified in the hbase.superuser configuration property. Unfortunately, the ACL was malformed which resulted in the hbase.superuser being unable to access the sensitive ZNodes that HBase creates. This JIRA issue fixes this bug. HBase will automatically correct the ACLs on start so users do not need to manually correct the ACLs.


---

* [HBASE-15941](https://issues.apache.org/jira/browse/HBASE-15941) | *Major* | **HBCK repair should not unsplit healthy splitted region**

A new option -removeParents is now available that will remove an old parent when two valid daughters for that parent exist and -fixHdfsOverlaps is used. If there is an issue trying to remove the parent from META or sidelining the parent from HDFS we will fallback to do a regular merge. For now this option only works when the overlap group consists only of 3 regions (a parent, daughter A and daughter B)


---

* [HBASE-17287](https://issues.apache.org/jira/browse/HBASE-17287) | *Blocker* | **Master becomes a zombie if filesystem object closes**

If filesystem is not available during log split, abort master server.


---

* [HBASE-17514](https://issues.apache.org/jira/browse/HBASE-17514) | *Minor* | **Warn when Thrift Server 1 is configured for proxy users but not the HTTP transport**

If users of the Thrift 1 Server enable proxy user support without enabling the prerequisite HTTP transport, we now log a WARN message about the mismatch.


---

* [HBASE-17817](https://issues.apache.org/jira/browse/HBASE-17817) | *Major* | **Make Regionservers log which tables it removed coprocessors from when aborting**

Add table name to exception logging when a coprocessor is removed from a table by the region server



