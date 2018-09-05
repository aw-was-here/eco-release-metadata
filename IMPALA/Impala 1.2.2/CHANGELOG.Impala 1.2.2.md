
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
# Apache Impala Changelog

## Release Impala 1.2.2 - 2013-12-17



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-171](https://issues.apache.org/jira/browse/IMPALA-171) | Impala should support CROSS JOIN |  Major | . | Kathleen Ting | Matthew Jacobs |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-610](https://issues.apache.org/jira/browse/IMPALA-610) | Allow hinting the partition strategy when inserting into a partitioned table. |  Major | . | Uri Laserson |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-673](https://issues.apache.org/jira/browse/IMPALA-673) | Impala hangs during query cancellation tests |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-687](https://issues.apache.org/jira/browse/IMPALA-687) | IllegalStateException when doing a union involving a group by. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-676](https://issues.apache.org/jira/browse/IMPALA-676) | Left outer join returns incorrect results with IS NULL predicates in ON clause. |  Major | . | Alexander Behm | Nong Li |
| [IMPALA-679](https://issues.apache.org/jira/browse/IMPALA-679) | Can't use two external UDF libraries with the same name |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-692](https://issues.apache.org/jira/browse/IMPALA-692) | insert table parquet\_table select \* lead to corrupted string values for 200M rows or more |  Blocker | . | Emmanuel Bastien | Nong Li |
| [IMPALA-665](https://issues.apache.org/jira/browse/IMPALA-665) | Error communicating with impalad: TSocket read 0 bytes |  Blocker | . | David E. Wheeler | Nong Li |
| [IMPALA-695](https://issues.apache.org/jira/browse/IMPALA-695) | Hive UDF jars cannot be loaded by the FE |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-680](https://issues.apache.org/jira/browse/IMPALA-680) | Bad plan for TPCH-Q21 (duplicate/redundant partitioning of left semi-join fragment) |  Major | . | Lenni Kuff | Alexander Behm |
| [IMPALA-593](https://issues.apache.org/jira/browse/IMPALA-593) | Partition Views With Union |  Major | . | Manuel Lamelas | Marcel Kornacker |
| [IMPALA-694](https://issues.apache.org/jira/browse/IMPALA-694) | Parquet in CDH4.5 writes data files that are sometimes unreadable by Impala |  Blocker | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-697](https://issues.apache.org/jira/browse/IMPALA-697) | impalad segfaults executing TPCH-Q13/scale factor 1TB @ impala::MemPool::AcquireData (this=0x1f1268c0, src=0x277fd41e0, keep\_current=false) be/src/runtime/mem-pool.cc:159 |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-689](https://issues.apache.org/jira/browse/IMPALA-689) | Impala Parquet Writer hit DCHECK in RleEncoder |  Blocker | . | Alan Choi | Nong Li |
| [IMPALA-699](https://issues.apache.org/jira/browse/IMPALA-699) | Deadlock in statestore when unregistering a subscriber and building a topic update |  Blocker | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-509](https://issues.apache.org/jira/browse/IMPALA-509) | automatic type conversion |  Major | . | Andrei Sereda | Alexander Behm |
| [IMPALA-703](https://issues.apache.org/jira/browse/IMPALA-703) | Crash in impala::Promise\<unsigned long\>::~Promise due to boost::condition\_variable::~condition\_variable(): Assertion \`!pthread\_mutex\_destroy(&internal\_mutex)' failed |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-709](https://issues.apache.org/jira/browse/IMPALA-709) | Impala error 'IllegalStateException: constructed predicate failed analysis:' when selecting from a Hive view and predicate operands are not comparable types |  Blocker | . | Lenni Kuff | Marcel Kornacker |
| [IMPALA-710](https://issues.apache.org/jira/browse/IMPALA-710) | Cleanup log spew from Planner changes |  Major | . | Lenni Kuff | Marcel Kornacker |
| [IMPALA-616](https://issues.apache.org/jira/browse/IMPALA-616) | Investigate flaky CatalogTest failures on CDH5 Jenkins runs related to missing table/column stats. |  Major | . | Alexander Behm | Alexander Behm |


