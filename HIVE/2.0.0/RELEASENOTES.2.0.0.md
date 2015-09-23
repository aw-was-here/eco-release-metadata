
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
# Apache Hive  2.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HIVE-11825](https://issues.apache.org/jira/browse/HIVE-11825) | *Critical* | **get\_json\_object(col,'$.a') is null in where clause didn`t work**

Enabled to accept quoting of all character backslash qooting mechanism


---

* [HIVE-11821](https://issues.apache.org/jira/browse/HIVE-11821) | *Major* | **JDK8 strict build broken for master**

JDK8 strict build broken for master


---

* [HIVE-11638](https://issues.apache.org/jira/browse/HIVE-11638) | *Major* | **ExprNodeDesc hashMap accidentally degrades into O(N) instead of O(1)**

Use fastest hashmap implementation of ExprNodeDesc lookups


---

* [HIVE-11594](https://issues.apache.org/jira/browse/HIVE-11594) | *Major* | **Analyze Table For Columns cannot handle columns with embedded spaces**

Analyze Table for column names with embedded spaces


---

* [HIVE-11573](https://issues.apache.org/jira/browse/HIVE-11573) | *Major* | **PointLookupOptimizer can be pessimistic at a low nDV**

Provide configurable limits to the PointLookupOptimizer


---

* [HIVE-11544](https://issues.apache.org/jira/browse/HIVE-11544) | *Minor* | **LazyInteger should avoid throwing NumberFormatException**

Improve LazySimpleSerDe null data handling for Byte, Short, Integer, Float, Long and Double.


---

* [HIVE-11476](https://issues.apache.org/jira/browse/HIVE-11476) | *Minor* | **TypeInfoParser cannot handle column names with spaces in them**

HIVE-11476: TypeInfoParser cannot handle column names with spaces in them (Gopal V, reviewed by Hari Sankar Sivarama Subramaniyan)


---

* [HIVE-11472](https://issues.apache.org/jira/browse/HIVE-11472) | *Minor* | **ORC StringDirectTreeReader is thrashing the GC due to byte[] allocation per row**

HIVE-11472: ORC StringDirectTreeReader is thrashing the GC due to byte[] allocation per row (Gopal V, reviewed by Ashutosh Chauhan)


---

* [HIVE-11462](https://issues.apache.org/jira/browse/HIVE-11462) | *Major* | **GenericUDFStruct should constant fold at compile time**

Constant fold struct() UDF


---

* [HIVE-11457](https://issues.apache.org/jira/browse/HIVE-11457) | *Major* | **Vectorization: Improve SIMD JIT in GenVectorCode StringExpr instrinsics**

Vectorization: Improve GenVectorCode string equals intrinsic


---

* [HIVE-11366](https://issues.apache.org/jira/browse/HIVE-11366) | *Major* | **Avoid right leaning tree hashCode depth during ExprNodeDescEqualityWrapper HashMaps**

HIVE-11366: Avoid right leaning tree hashCode depth in ExprNodeDescEqualityWrapper hashmaps (Gopal V, reviewed by Ashutosh Chauhan)


---

* [HIVE-11304](https://issues.apache.org/jira/browse/HIVE-11304) | *Major* | **Migrate to Log4j2 from Log4j 1.x**

Migration from Log4j1.x to Log4j2


---

* [HIVE-11229](https://issues.apache.org/jira/browse/HIVE-11229) | *Major* | **Mutation API: Coordinator communication with meta store should be optional**

Mutation coordinator meta store dependency now optional.


---

* [HIVE-11228](https://issues.apache.org/jira/browse/HIVE-11228) | *Major* | **Mutation API should use semi-shared locks.**

Streaming mutation API uses semi-shared locks.


---

* [HIVE-11215](https://issues.apache.org/jira/browse/HIVE-11215) | *Minor* | **Vectorized grace hash-join throws FileUtil warnings**

 HIVE-11215: Delete spills only if they exist (Gopal V, reviewed by Matt Mccline)


---

* [HIVE-11145](https://issues.apache.org/jira/browse/HIVE-11145) | *Major* | **Remove OFFLINE and NO\_DROP from tables and partitions**

OFFLINE and NO\_DROP mode for partitions removed, use SQLStandardAuth or other authorization scheme to prevent partitions from being dropped or read.


---

* [HIVE-11073](https://issues.apache.org/jira/browse/HIVE-11073) | *Minor* | **ORC FileDump utility ignores errors when writing output**

orcfiledump exits if errors are detected when writing to stdout.


---

* [HIVE-11055](https://issues.apache.org/jira/browse/HIVE-11055) | *Major* | **HPL/SQL - Implementing Procedural SQL in Hive (PL/HQL Contribution)**

Adds procedural SQL to Hive


---

* [HIVE-11054](https://issues.apache.org/jira/browse/HIVE-11054) | *Major* | **Read error : Partition Varchar column cannot be cast to string**

HIVE-11054: Handle varchar/char partition columns in vectorization


---

* [HIVE-11051](https://issues.apache.org/jira/browse/HIVE-11051) | *Critical* | **Hive 1.2.0  MapJoin w/Tez - LazyBinaryArray cannot be cast to [Ljava.lang.Object;**

HIVE-11051: Hive 1.2.0 MapJoin w/Tez - LazyBinaryArray cannot be cast to [Ljava.lang.Object; (Matt McCline via Gopal V)


---

* [HIVE-11043](https://issues.apache.org/jira/browse/HIVE-11043) | *Major* | **ORC split strategies should adapt based on number of files**

Use ETLStrategy for a small number of ORC files.


---

* [HIVE-10974](https://issues.apache.org/jira/browse/HIVE-10974) | *Major* | **Use Configuration::getRaw() for the Base64 data**

Use Configuration::getRaw() to read Base64 data out of Configuration objects


---

* [HIVE-10746](https://issues.apache.org/jira/browse/HIVE-10746) | *Critical* | ** Hive 1.2.0+Tez produces 1-byte FileSplits from mapred.TextInputFormat**

Use sane split min-sizes when using legacy mapred.InputFormat::getSplits(job, num)


---

* [HIVE-10707](https://issues.apache.org/jira/browse/HIVE-10707) | *Trivial* | **CBO: debug logging OOMs**

CBO: dump AST only when in DEBUG mode.


---

* [HIVE-10673](https://issues.apache.org/jira/browse/HIVE-10673) | *Major* | **Dynamically partitioned hash join for Tez**

This adds configuration parameter hive.optimize.dynamic.partition.hashjoin, which enables selection of the dynamically partitioned hash join with the Tez execution engine


---

* [HIVE-10509](https://issues.apache.org/jira/browse/HIVE-10509) | *Major* | **Bump trunk version to 1.3 as branch-1.2 has been created.**

Hive master/trunk version bumped up to 1.3


---

* [HIVE-10191](https://issues.apache.org/jira/browse/HIVE-10191) | *Major* | **ORC: Cleanup writer per-row synchronization**

Remove per-row synchronization from ORC WriterImpl


---

* [HIVE-10165](https://issues.apache.org/jira/browse/HIVE-10165) | *Major* | **Improve hive-hcatalog-streaming extensibility and support updates and deletes.**

Expanded streaming API to include update and delete operations and support merge type processes.


---

* [HIVE-9365](https://issues.apache.org/jira/browse/HIVE-9365) | *Minor* | **The Metastore should take port configuration from hive-site.xml**

**WARNING: No release note provided for this incompatible change.**


---

* [HIVE-6026](https://issues.apache.org/jira/browse/HIVE-6026) | *Minor* | **Ldap Authenticator should be more generic with BindDN**

Hive LDAP Authenticator now has filter support for LDAP users and groups.



