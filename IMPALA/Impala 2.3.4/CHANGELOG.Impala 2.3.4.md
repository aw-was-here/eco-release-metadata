
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

## Release Impala 2.3.4 - Unreleased (as of 2018-08-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1934](https://issues.apache.org/jira/browse/IMPALA-1934) | impala-shell to support reading password from command line when LDAP authentication is used |  Major | Security | Yibing Shi | Henry Robinson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2765](https://issues.apache.org/jira/browse/IMPALA-2765) | AnalysisException: operands of type BOOLEAN and TIMESTAMP are not comparable when OUTER JOIN with CASE statement |  Major | Frontend | Eric Lin | bharath v |
| [IMPALA-1170](https://issues.apache.org/jira/browse/IMPALA-1170) | parse\_url("http://oascentral.stripes.com/adstream\_mjx.ads@Top2,Right1","HOST")  returns Top2,Right1 |  Critical | Backend | Kushal Mangtani | Lars Volker |
| [IMPALA-2798](https://issues.apache.org/jira/browse/IMPALA-2798) | After adding a column to avro table, Impala returns weird result if codegen is enabled. |  Major | Backend | Juan Yu | Juan Yu |
| [IMPALA-2732](https://issues.apache.org/jira/browse/IMPALA-2732) | Can't parse custom date formats with non-zero-padded values |  Critical | Backend | Egmont Koblinger | Lars Volker |
| [IMPALA-2503](https://issues.apache.org/jira/browse/IMPALA-2503) | Exception thrown when trying to throw an AnalysisException |  Critical | Frontend | Uri Laserson | Alexander Behm |
| [IMPALA-2539](https://issues.apache.org/jira/browse/IMPALA-2539) | tuple.h:140] Check failed: offset != -1 |  Critical | Frontend | casey | Alexander Behm |
| [IMPALA-2711](https://issues.apache.org/jira/browse/IMPALA-2711) | INSERT using RAND(): Memory leaked via FunctionContext::Allocate() |  Blocker | Backend | casey | Michael Ho |
| [IMPALA-2749](https://issues.apache.org/jira/browse/IMPALA-2749) | Impala returns NULL when decimal and double values are multiplied in a specific order |  Critical | Frontend | Yibing Shi | Lars Volker |
| [IMPALA-2818](https://issues.apache.org/jira/browse/IMPALA-2818) | Query cancellation DCHECK while clearing object pool: expr-context.cc:41] Check failed: !prepared\_ \|\| closed\_ |  Blocker | Backend | Tim Armstrong | Dan Hecht |
| [IMPALA-2734](https://issues.apache.org/jira/browse/IMPALA-2734) | Bad result for subquery with having |  Blocker | Frontend | Peter Brejcak | Dimitris Tsirogiannis |
| [IMPALA-2940](https://issues.apache.org/jira/browse/IMPALA-2940) | Parquet DictDecoders accumulate throughout query |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2906](https://issues.apache.org/jira/browse/IMPALA-2906) | Crash: impala::RowDescriptor::GetTupleIdx |  Blocker | Frontend | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2926](https://issues.apache.org/jira/browse/IMPALA-2926) | Incorrect results - a predicate causes the number of rows to increase |  Blocker | Backend | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2215](https://issues.apache.org/jira/browse/IMPALA-2215) | HAVING clause without aggregation not applied properly |  Blocker | Frontend | Alan Choi | Alexander Behm |
| [IMPALA-2093](https://issues.apache.org/jira/browse/IMPALA-2093) | Wrong plan of NOT IN aggregate subquery when a constant is used in subquery predicate |  Blocker | Frontend | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-2788](https://issues.apache.org/jira/browse/IMPALA-2788) | Impala returns wrong result for function 'conv(bigint, from\_base, to\_base)' |  Blocker | Backend | Yibing Shi | Mala Chikka Kempanna |
| [IMPALA-2425](https://issues.apache.org/jira/browse/IMPALA-2425) | Broadcast join hint not enforced when low memory limit is set. |  Major | Frontend | Mostafa Mokhtar | Anuj Phadke |
| [IMPALA-2742](https://issues.apache.org/jira/browse/IMPALA-2742) | MemPool allocation growth behavior |  Blocker | Backend | Martin Grund | Tim Armstrong |
| [IMPALA-3000](https://issues.apache.org/jira/browse/IMPALA-3000) | BitReader::Reset does not initialize buffered\_values\_ |  Blocker | Backend | Wes McKinney | Tim Armstrong |
| [IMPALA-2184](https://issues.apache.org/jira/browse/IMPALA-2184) | Codegen does not catch exceptions in FROM\_UNIXTIME() |  Blocker | Backend | Charlie Flowers | Skye Wanderman-Milne |
| [IMPALA-2820](https://issues.apache.org/jira/browse/IMPALA-2820) | Impala does not support reserved words in complex types |  Critical | Frontend | Petter von Dolwitz | Alexander Behm |
| [IMPALA-2844](https://issues.apache.org/jira/browse/IMPALA-2844) | Select count(\*) from RCFileTable throw NotImplementedException in Impala 2.3.0 |  Critical | Frontend | Juan Yu | Alexander Behm |
| [IMPALA-3034](https://issues.apache.org/jira/browse/IMPALA-3034) | MemTracker leak on PHJ failure to spill |  Blocker | Backend | Matthew Jacobs | Michael Ho |
| [IMPALA-2914](https://issues.apache.org/jira/browse/IMPALA-2914) | Hit DCHECK Check failed: HasDateOrTime() |  Blocker | Backend | Juan Yu | Juan Yu |
| [IMPALA-2832](https://issues.apache.org/jira/browse/IMPALA-2832) | CTAS with analytic results in Illegal reference to non-materialized slot |  Major | Frontend | Matthew Jacobs | Alexander Behm |
| [IMPALA-3054](https://issues.apache.org/jira/browse/IMPALA-3054) | Runtime filters are not disabled when spilling in a rare case |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-1092](https://issues.apache.org/jira/browse/IMPALA-1092) | Trivial coordinator-only queries should have small resource estimates |  Major | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3085](https://issues.apache.org/jira/browse/IMPALA-3085) | DataSinks' MemTrackers need to unregister themselves from parent |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-3093](https://issues.apache.org/jira/browse/IMPALA-3093) | ReopenClient() could NULL out 'client\_key' causing a crash |  Blocker | Distributed Exec | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3095](https://issues.apache.org/jira/browse/IMPALA-3095) | Allow additional Kerberos users to be authorized to access internal APIs |  Blocker | Security | Henry Robinson | Henry Robinson |
| [IMPALA-3071](https://issues.apache.org/jira/browse/IMPALA-3071) | Incorrect assignment of inner join on-clause predicate that references an outer-joined table. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-2599](https://issues.apache.org/jira/browse/IMPALA-2599) | Pseudo-random sleep before acquiring kerberos ticket possibly not really pseudo-random. |  Major | Security | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3151](https://issues.apache.org/jira/browse/IMPALA-3151) | Impala crash for avro table when casting to char data type |  Blocker | Backend | Eric Lin | Anuj Phadke |
| [IMPALA-3194](https://issues.apache.org/jira/browse/IMPALA-3194) | Unblock queries on scalar columns in RC files with complex types |  Blocker | Frontend | bharath v | bharath v |
| [IMPALA-3277](https://issues.apache.org/jira/browse/IMPALA-3277) | impala-cdh5-2.3.0\_5.5.x-core-non-partitioned-hash-and-aggs is broken by IMPALA-2820 backport |  Blocker | Infrastructure | Dimitris Tsirogiannis | bharath v |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2554](https://issues.apache.org/jira/browse/IMPALA-2554) | Increase Thrift default buffers size from 512 Bytes |  Blocker | . | Mostafa Mokhtar | Henry Robinson |


