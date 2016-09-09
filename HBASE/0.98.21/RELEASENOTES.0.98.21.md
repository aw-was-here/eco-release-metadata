
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
# Apache HBase  0.98.21 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | *Major* | **Filter to support scanning multiple row key ranges**

MultiRowRangeFilter is a filter to support scanning multiple row key ranges. If the number of the ranges is small, using multiple scans can also do the same thing and can work well. But when the number of ranges are quite big (e.g. millions), use the MultiRowRangeFilter will be nice. In this filter, the ranges will be sorted and merged, so users do not have to take care of ranges are not continuous. And if users are using something like rest, thrift or pig to access the data the filter might be the practical solution.


---

* [HBASE-14548](https://issues.apache.org/jira/browse/HBASE-14548) | *Major* | **Expand how table coprocessor jar and dependency path can be specified**

Allow a directory containing the jars or some wildcards to be specified, such as: hdfs://namenode:port/user/hadoop-user/ 
or
hdfs://namenode:port/user/hadoop-user/\*.jar

Please note that if a directory is specified, all jar files(.jar) directly in the directory are added, but it does not search files in the subtree rooted in the directory.
Do not contain any wildcard if you would like to specify a directory.


---

* [HBASE-16095](https://issues.apache.org/jira/browse/HBASE-16095) | *Major* | **Add priority to TableDescriptor and priority region open thread pool**

Adds a PRIORITY property to the HTableDescriptor. PRIORITY should be in the same range as the RpcScheduler defines it (HConstants.XXX\_QOS). 

Table priorities are only used for region opening for now. There can be other uses later (like RpcScheduling). 

Regions of high priority tables (priority \>= than HIGH\_QOS) are opened from a different thread pool than the regular region open thread pool. However, table priorities are not used as a global order for region assigning or opening.


---

* [HBASE-16052](https://issues.apache.org/jira/browse/HBASE-16052) | *Major* | **Improve HBaseFsck Scalability**

HBASE-16052 improves the performance and scalability of HBaseFsck, especially for large clusters with a small number of large tables.  

Searching for lingering reference files is now a multi-threaded operation.  Loading HDFS region directory information is now multi-threaded at the region-level instead of the table-level to maximize concurrency.  A performance bug in HBaseFsck that resulted in redundant I/O and RPCs was fixed by introducing a FileStatusFilter that filters FileStatus objects directly.


---

* [HBASE-16244](https://issues.apache.org/jira/browse/HBASE-16244) | *Major* | **LocalHBaseCluster start timeout should be configurable**

When LocalHBaseCluster is started from the command line the Master would give up after 30 seconds due to a hardcoded timeout meant for unit tests. This change allows the timeout to be configured via hbase-site as well as sets it to 5 minutes when LocalHBaseCluster is started from the command line.


---

* [HBASE-16288](https://issues.apache.org/jira/browse/HBASE-16288) | *Critical* | **HFile intermediate block level indexes might recurse forever creating multi TB files**

A new hfile configuration "hfile.index.block.min.entries" which defaults to 16 determines how many entries the hfile index block can have at least. The configuration which determines how large the index block can be at max (hfile.index.block.max.size) is ignored as long as we have fewer than hfile.index.block.min.entries entries. This ensures that multi-level index does not build up with too many levels.


---

* [HBASE-16321](https://issues.apache.org/jira/browse/HBASE-16321) | *Blocker* | **Ensure findbugs jsr305 jar isn't present**

HBase now ensures the jsr305 implementation from the findbugs project is not included in its binary artifacts or the compile / runtime dependencies of its user facing modules. Downstream users that rely on this jar will need to update their dependencies.



