
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
# Apache HBase  1.4.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-18731](https://issues.apache.org/jira/browse/HBASE-18731) | *Major* | **[compat 1-2] Mark protected methods of QuotaSettings that touch Protobuf internals as IA.Private**

The following methods in QuotaSettings were annotated InterfaceAudience.Private; they are for internal use only in hbase-2.0.0

buildSetQuotaRequestProto(final QuotaSettings settings)
setupSetQuotaRequest(SetQuotaRequest.Builder builder)

Note that there were versions of these methods in HBase 1.y that used classes in the {{org.apache.hadoop.hbase.protobuf.generated}} package. That package no longer exists as a part of our cleanup of protobufs from our public facing API and the related methods have been removed.


---

* [HBASE-19769](https://issues.apache.org/jira/browse/HBASE-19769) | *Critical* | **IllegalAccessError on package-private Hadoop metrics2 classes in MapReduce jobs**

Client-side ZooKeeper metrics which were added to 2.0.0 alpha/beta releases cause issues when launching MapReduce jobs via {{yarn jar}} on the command line. This stems from ClassLoader separation issues that YARN implements. It was chosen that the easiest solution was to remove these ZooKeeper metrics entirely.


---

* [HBASE-18864](https://issues.apache.org/jira/browse/HBASE-18864) | *Major* | **NullPointerException thrown when adding rows to a table from peer cluster, table with replication factor other than 0 or 1**

The only currently legal values for REPLICATION\_SCOPE in column schema are 0 (local) and 1 (global). This change enforces selection of only either of these values when setting the attribute using HColumnDescriptor.



