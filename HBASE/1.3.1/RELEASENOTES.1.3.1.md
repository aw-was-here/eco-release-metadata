
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
# Apache HBase  1.3.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-15386](https://issues.apache.org/jira/browse/HBASE-15386) | *Major* | **PREFETCH\_BLOCKS\_ON\_OPEN in HColumnDescriptor is ignored**

This was a non-issue. The PREFETCH\_... flag actually works. While here though made the following additions.

Changes the prefetch TRACE-level loggings to include the word 'Prefetch' in them so you know what they are about.

Changes the cryptic logging of the CacheConfig#toString to have some preamble saying why and what column family is responsible (helps figure what is going on)

Add test that verifies setting flag on HColumnDescriptor actually works.


---

* [HBASE-17112](https://issues.apache.org/jira/browse/HBASE-17112) | *Major* | **Prevent setting timestamp of delta operations the same as previous value's**

Before this issue, two concurrent Increments/Appends done in same millisecond or RS's clock going back will result in two results have same TS, which is not friendly to versioning and will get wrong result in slave cluster if the replication is disordered.
After this issue, the result of Increment/Append will always have an incremental TS. There is no any inconsistent in replication for these operations. But there is a rare case that if there is a Delete in same millisecond, the later result can not be masked by this Delete. This can be fixed after we have new semantics that previous Delete will never mask later Put even its timestamp is higher.


---

* [HBASE-17578](https://issues.apache.org/jira/browse/HBASE-17578) | *Major* | **Thrift per-method metrics should still update in the case of exceptions**

In prior versions, the HBase Thrift handlers failed to increment per-method metrics when an exception was encountered.  These metrics will now always be incremented, whether an exception is encountered or not.  This change also adds exception-type metrics, similar to those exposed in regionservers, for individual exceptions which are received by the Thrift handlers.


---

* [HBASE-17716](https://issues.apache.org/jira/browse/HBASE-17716) | *Minor* | **Formalize Scan Metric names**

HBASE-17716 breaks compatibility of ServerSideScanMetrics by changing public field names, and the issue is fixed through HBASE-17886


---

* [HBASE-17717](https://issues.apache.org/jira/browse/HBASE-17717) | *Critical* | **Incorrect ZK ACL set for HBase superuser**

In previous versions of HBase, the system intended to set a ZooKeeper ACL on all "sensitive" ZNodes for the user specified in the hbase.superuser configuration property. Unfortunately, the ACL was malformed which resulted in the hbase.superuser being unable to access the sensitive ZNodes that HBase creates. This JIRA issue fixes this bug. HBase will automatically correct the ACLs on start so users do not need to manually correct the ACLs.


---

* [HBASE-15941](https://issues.apache.org/jira/browse/HBASE-15941) | *Major* | **HBCK repair should not unsplit healthy splitted region**

A new option -removeParents is now available that will remove an old parent when two valid daughters for that parent exist and -fixHdfsOverlaps is used. If there is an issue trying to remove the parent from META or sidelining the parent from HDFS we will fallback to do a regular merge. For now this option only works when the overlap group consists only of 3 regions (a parent, daughter A and daughter B)


---

* [HBASE-17579](https://issues.apache.org/jira/browse/HBASE-17579) | *Major* | **Backport HBASE-16302 to 1.3.1**

The replication sources and replication sinks will now expose ageOfLastShippedOp and ageOfLastAppliedOp metrics respectively as histograms (with percentile suffixes). The 'max' values in these histograms are also exported as simple metrics (no percentile suffix) under the same metric names for backward compatibility.


---

* [HBASE-16755](https://issues.apache.org/jira/browse/HBASE-16755) | *Major* | **Honor flush policy under global memstore pressure**

Prior to this change, when the memstore low water mark is exceeded on a regionserver, the regionserver will force flush all stores on the regions selected for flushing until we drop below the low water mark.  With this change, the regionserver will continue to force flush regions when above the memstore low water mark, but will only flush the stores returned by the configured FlushPolicy.


---

* [HBASE-17287](https://issues.apache.org/jira/browse/HBASE-17287) | *Blocker* | **Master becomes a zombie if filesystem object closes**

If filesystem is not available during log split, abort master server.



