
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

## Release Impala 0.7 - 2013-04-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-143](https://issues.apache.org/jira/browse/IMPALA-143) | add query text to the query\_profile page |  Trivial | . | Greg Rahn |  |
| [IMPALA-172](https://issues.apache.org/jira/browse/IMPALA-172) | Add format options to --mem\_limits flag: {M,G,%} |  Major | . | Marcel Kornacker | Alexander Behm |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-66](https://issues.apache.org/jira/browse/IMPALA-66) | Support for UNION with constant SELECT clauses |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-200](https://issues.apache.org/jira/browse/IMPALA-200) | Sort List of Known Backends on impalad:25000/backends page |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-120](https://issues.apache.org/jira/browse/IMPALA-120) | Runtime state should contain the query string |  Minor | . | Nong Li | Nong Li |
| [IMPALA-209](https://issues.apache.org/jira/browse/IMPALA-209) | desc \<tablename\> shorthand for describe \<tablename\>, similar to how databases have |  Minor | Clients | Hari Sekhon | Ishaan Joshi |
| [IMPALA-198](https://issues.apache.org/jira/browse/IMPALA-198) | Support COMMENT clause for CREATE TABLE ... LIKE |  Minor | . | John Russell | Lenni Kuff |
| [IMPALA-34](https://issues.apache.org/jira/browse/IMPALA-34) | Impala's use of HDFS' get block volume ids can cause performance issues |  Major | . | Nong Li | Marcel Kornacker |
| [IMPALA-99](https://issues.apache.org/jira/browse/IMPALA-99) | Documentation config samples shall not use custom parameters (eg. port numbers) |  Minor | Docs | sekine coulibaly | Chris Aschauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-92](https://issues.apache.org/jira/browse/IMPALA-92) | Significant performance difference between LIKE = 'x' AND = 'x' |  Major | . | Philip Zeyliger | Skye Wanderman-Milne |
| [IMPALA-72](https://issues.apache.org/jira/browse/IMPALA-72) | Partition keys with path separators erroneously result in multi-level partition directories |  Critical | . | Nong Li | Henry Robinson |
| [IMPALA-107](https://issues.apache.org/jira/browse/IMPALA-107) | Wrong results returned performing outer join on two LZO compressed text tables |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-115](https://issues.apache.org/jira/browse/IMPALA-115) | impalad segfaults when many concurrent queries report errors |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-20](https://issues.apache.org/jira/browse/IMPALA-20) | Aggregate of a subquery result set returns wrong results if the subquery contains a 'limit'  and data is distributed across multiple nodes |  Critical | . | Lenni Kuff | Marcel Kornacker |
| [IMPALA-27](https://issues.apache.org/jira/browse/IMPALA-27) | Restarting an impalad causes queries to hang if it's used as the coordinator. |  Critical | . | Ishaan Joshi | Alan Choi |
| [IMPALA-118](https://issues.apache.org/jira/browse/IMPALA-118) | Failed DCHECK in disk-io-mgr when running concurrent tests: disk-io-mgr.cc:498 - Check failed: reader-\>num\_outstanding\_buffers\_ == 0 (1 vs. 0) |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-128](https://issues.apache.org/jira/browse/IMPALA-128) | DatastreamSender::Close should not do anything if Init failed |  Major | . | Henry Robinson | Nong Li |
| [IMPALA-83](https://issues.apache.org/jira/browse/IMPALA-83) | Cast of string literal to boolean fails analysis @ CastExpr.java:83: Preconditions.checkState(match.returnType == targetType); |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-119](https://issues.apache.org/jira/browse/IMPALA-119) | Coordinator schedules unnecessary remote reads |  Major | . | Nong Li | Alan Choi |
| [IMPALA-151](https://issues.apache.org/jira/browse/IMPALA-151) | bad DCHECK on "select count(foo, bar)" queries |  Major | . | Skye Wanderman-Milne | Alexander Behm |
| [IMPALA-98](https://issues.apache.org/jira/browse/IMPALA-98) | Fix perf regression from scan node lock refactoring |  Major | . | Nong Li | Alan Choi |
| [IMPALA-65](https://issues.apache.org/jira/browse/IMPALA-65) | Results from selecting string literals which have escaping include the escaping themselves |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-166](https://issues.apache.org/jira/browse/IMPALA-166) | SimpleScheduler::HasLocalHost should hold host\_map\_lock\_, causes intermittent crashes with concurrency. |  Major | . | Ishaan Joshi | Alan Choi |
| [IMPALA-93](https://issues.apache.org/jira/browse/IMPALA-93) | impalad debug webpage should either not display the "query\_profile" link in the header or allow the user to enter/select a query profile to view |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-37](https://issues.apache.org/jira/browse/IMPALA-37) | Impala server does not clean up in-progress query when the session is disconnected |  Major | . | Alan Choi | Alan Choi |
| [IMPALA-170](https://issues.apache.org/jira/browse/IMPALA-170) | Allow identifiers (table and column names) to start with number. |  Major | . | Marcel Kornacker | Alexander Behm |
| [IMPALA-164](https://issues.apache.org/jira/browse/IMPALA-164) | Impala-shell should not set query option values that is not set by the user explicitly |  Blocker | Clients | Alan Choi | Ishaan Joshi |
| [IMPALA-176](https://issues.apache.org/jira/browse/IMPALA-176) | Impalad segfaults running failure/cancelation tests in  runtime-profile.cc:222 @ impala::RuntimeProfile::ComputeTimeInProfile |  Major | . | Lenni Kuff | Alan Choi |
| [IMPALA-189](https://issues.apache.org/jira/browse/IMPALA-189) | Altering a table with a NULL partition key through Impala results in unusable table. |  Major | . | Alexander Behm | Lenni Kuff |
| [IMPALA-175](https://issues.apache.org/jira/browse/IMPALA-175) | Log spew after session is closed due to "Invalid or unknown query handle" messages |  Major | . | Lenni Kuff | Alan Choi |
| [IMPALA-112](https://issues.apache.org/jira/browse/IMPALA-112) | Wrong result Double value using "insert overwrite ~ select" |  Major | . | Daisuke Kobayashi | Nong Li |
| [IMPALA-169](https://issues.apache.org/jira/browse/IMPALA-169) | DataStreamSender::Channel holds onto client for entire lifetime |  Major | . | Henry Robinson | Skye Wanderman-Milne |
| [IMPALA-153](https://issues.apache.org/jira/browse/IMPALA-153) | Logging/profiles need a way to match fragment id (UUID) to host address |  Major | . | Nong Li | Alan Choi |
| [IMPALA-71](https://issues.apache.org/jira/browse/IMPALA-71) | Injecting failure during SORT\_NODE/PREPARE causes impalad to core dump in impala::Coordinator::CancelRemoteFragments (this=0x5f1bc00) at coordinator.cc:855 |  Major | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-145](https://issues.apache.org/jira/browse/IMPALA-145) | Aggregate over inline view with "ORDER BY LIMIT 0" clause causes impala to crash |  Critical | . | Lenni Kuff | Nong Li |
| [IMPALA-139](https://issues.apache.org/jira/browse/IMPALA-139) | Impalad register/deregister with State-store frequiently during stress test |  Minor | . | Alan Choi | Henry Robinson |
| [IMPALA-82](https://issues.apache.org/jira/browse/IMPALA-82) | NULL is not union-compatible with non-boolean column |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-207](https://issues.apache.org/jira/browse/IMPALA-207) | IO manager buffers not accounted for in impala memory limits |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-212](https://issues.apache.org/jira/browse/IMPALA-212) | Block metadata is showing up as -1 in the runtime profile |  Blocker | . | Nong Li | Alan Choi |
| [IMPALA-211](https://issues.apache.org/jira/browse/IMPALA-211) | Running impala on 'localhost' causes log spew with GLOG\_V=2+ @ simple-scheduler.cc:160 - "Only localhost addresses found for \_\_\_" |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-224](https://issues.apache.org/jira/browse/IMPALA-224) | Unknown database for INSERT target table gives frontend NPE |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-215](https://issues.apache.org/jira/browse/IMPALA-215) | DDL commands stay in the in flight query log |  Major | . | Nong Li | Lenni Kuff |
| [IMPALA-226](https://issues.apache.org/jira/browse/IMPALA-226) | Wrong results for partition columns when selecting from a partitioned parquet file table |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-228](https://issues.apache.org/jira/browse/IMPALA-228) | Selecting from a parquetfile table that contains a string partition column results in segfault: |  Major | . | Lenni Kuff |  |
| [IMPALA-78](https://issues.apache.org/jira/browse/IMPALA-78) | Impala shell should support multi-line queries |  Blocker | Clients | Lenni Kuff | Ishaan Joshi |
| [IMPALA-213](https://issues.apache.org/jira/browse/IMPALA-213) | CDH4.1 config checks failing because data node webpage not available |  Blocker | . | Lenni Kuff | Alan Choi |
| [IMPALA-219](https://issues.apache.org/jira/browse/IMPALA-219) | Bad performance on tpch q4 on 10 node cluster |  Blocker | . | Nong Li | Nong Li |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-81](https://issues.apache.org/jira/browse/IMPALA-81) | Add support for CREATE/DROP DATABASE/TABLE |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-102](https://issues.apache.org/jira/browse/IMPALA-102) | Add Impala support for creating partitioned table |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-106](https://issues.apache.org/jira/browse/IMPALA-106) | Change from Stopwatch -\> WallClockStopWatch for scoped timer |  Major | . | Nong Li | Alan Choi |
| [IMPALA-25](https://issues.apache.org/jira/browse/IMPALA-25) | Consider snappy compression row batches sent over thrift |  Major | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-156](https://issues.apache.org/jira/browse/IMPALA-156) | Support 'ALTER'  DDL command |  Major | . | Nong Li | Lenni Kuff |
| [IMPALA-101](https://issues.apache.org/jira/browse/IMPALA-101) | Query Log needs to contain the default database |  Major | . | Nong Li | Alexander Behm |


