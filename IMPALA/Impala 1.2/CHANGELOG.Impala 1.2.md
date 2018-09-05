
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

## Release Impala 1.2 - 2013-10-28



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-463](https://issues.apache.org/jira/browse/IMPALA-463) | dayname() function |  Minor | . | John Russell | Alexander Behm |
| [IMPALA-422](https://issues.apache.org/jira/browse/IMPALA-422) | add string aggregation function |  Major | . | Greg Rahn | Aaron Davidson |
| [IMPALA-581](https://issues.apache.org/jira/browse/IMPALA-581) | Support setting TBLPROPERTIES in CREATE/ALTER table statements |  Major | . | Lenni Kuff |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-445](https://issues.apache.org/jira/browse/IMPALA-445) | Custom log4j appender that forwards log messages back to glog |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-564](https://issues.apache.org/jira/browse/IMPALA-564) | HiveServer2 session should be closed when the client disconnects |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-456](https://issues.apache.org/jira/browse/IMPALA-456) | Improve performance of Coordinator::FinalizeQuery by issue HDFS operations in parallel |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-586](https://issues.apache.org/jira/browse/IMPALA-586) | Improve parsing error on big query |  Minor | . | Alan Choi |  |
| [IMPALA-494](https://issues.apache.org/jira/browse/IMPALA-494) | Make Parquet block size configurable |  Major | . | Alan Choi | Nong Li |
| [IMPALA-487](https://issues.apache.org/jira/browse/IMPALA-487) | RHS of join should not require copying (and therefore enable codegen) |  Major | . | Alan Choi | Nong Li |
| [IMPALA-369](https://issues.apache.org/jira/browse/IMPALA-369) | Impala Queries web page doesn't sort queries by time. |  Minor | . | Benyi Wang | Henry Robinson |
| [IMPALA-560](https://issues.apache.org/jira/browse/IMPALA-560) | Impala-shell should try to connect with -k option if non-kerberos connection failed |  Minor | Clients | Alan Choi | Ishaan Joshi |
| [IMPALA-559](https://issues.apache.org/jira/browse/IMPALA-559) | Impala shell can prompt user to kinit if -k is specified |  Minor | Clients | Alan Choi | Ishaan Joshi |
| [IMPALA-454](https://issues.apache.org/jira/browse/IMPALA-454) | Tab completion in impala-shell should not depend on case |  Minor | Clients | Tom Wheeler | Ishaan Joshi |
| [IMPALA-563](https://issues.apache.org/jira/browse/IMPALA-563) | Improve error message on querying an uninitialized Catalog |  Major | . | Alan Choi | Lenni Kuff |
| [IMPALA-621](https://issues.apache.org/jira/browse/IMPALA-621) | Analysis of FunctionCallExpr is slow. |  Major | . | Alexander Behm | Nong Li |
| [IMPALA-449](https://issues.apache.org/jira/browse/IMPALA-449) | INSERTs should clean up after themselves better after a failure |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-527](https://issues.apache.org/jira/browse/IMPALA-527) | Cast('   1234' as int) should not return null |  Minor | . | Alan Choi | Alan Choi |
| [IMPALA-578](https://issues.apache.org/jira/browse/IMPALA-578) | add info about table/column statistics to EXPLAIN output |  Major | . | Greg Rahn | Alexander Behm |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-359](https://issues.apache.org/jira/browse/IMPALA-359) | Join on results of count(distinct ...) in inline views results in IllegalStateException. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-388](https://issues.apache.org/jira/browse/IMPALA-388) | Floating-point literals without point recognized as identifier. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-476](https://issues.apache.org/jira/browse/IMPALA-476) | Links generated in /backends are not correct if SSL is enabled |  Trivial | . | Henry Robinson | Henry Robinson |
| [IMPALA-472](https://issues.apache.org/jira/browse/IMPALA-472) | cast varchar to number does not work for the smallest number |  Minor | . | James Deng | Alexander Behm |
| [IMPALA-469](https://issues.apache.org/jira/browse/IMPALA-469) | sign() scalar function returns incorrect value |  Minor | . | James Duong | Alexander Behm |
| [IMPALA-431](https://issues.apache.org/jira/browse/IMPALA-431) | from\_unixtime does not support BIGINT |  Major | . | Zhiwen Fu | Alexander Behm |
| [IMPALA-427](https://issues.apache.org/jira/browse/IMPALA-427) | Failed DCHECK in:  hdfs-scan-node.cc:361-Check failed: column\_idx\_to\_materialized\_slot\_idx\_[col\_idx] == SKIP\_COLUMN (22 vs. -1) |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-544](https://issues.apache.org/jira/browse/IMPALA-544) | IoMgrTest failed with DCHECK num\_allocated\_buffers\_ == free\_buffers\_.size() (3 vs. 2) |  Major | . | Nong Li | Nong Li |
| [IMPALA-549](https://issues.apache.org/jira/browse/IMPALA-549) | Failure during Prepare() of TopNNode causes segfault due to reference of NULL pointer |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-556](https://issues.apache.org/jira/browse/IMPALA-556) | Use after free with sampling periodic counters with asan |  Critical | . | Nong Li | Nong Li |
| [IMPALA-541](https://issues.apache.org/jira/browse/IMPALA-541) | impalad coredump in v1.1.1 functional run: impala::RuntimeProfile::EventSequence::MarkEvent(this=,label="Rows available") @ runtime-profile.h:183 |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-569](https://issues.apache.org/jira/browse/IMPALA-569) | HdfsScanNode can create thousands of new threads in a tight loop |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-573](https://issues.apache.org/jira/browse/IMPALA-573) | Incomplete query profiles for larger queries on a larger cluster |  Major | . | Alan Choi |  |
| [IMPALA-498](https://issues.apache.org/jira/browse/IMPALA-498) | Hit NullPointerException when perform modulus (%) between non-integer number |  Major | . | Kuek Chiew Yea | Alexander Behm |
| [IMPALA-590](https://issues.apache.org/jira/browse/IMPALA-590) | Impala throws IllegalStateException when querying a HBase table with a map type column |  Minor | . | Alan Choi | Lenni Kuff |
| [IMPALA-466](https://issues.apache.org/jira/browse/IMPALA-466) | Fix use of strerror() and errno in BE |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-582](https://issues.apache.org/jira/browse/IMPALA-582) | impalad crashes on 10-node cluster run executing tpcds-insert workload @ FvnHash (this=0x6db63c0, state=\<value optimized out\>, batch=0x568bef0, eos=\<value optimized out\>) at hash-util.h:81 |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-415](https://issues.apache.org/jira/browse/IMPALA-415) | INSERT OVERWRITE should not delete hidden files in the table/partition location |  Minor | . | Lenni Kuff | Henry Robinson |
| [IMPALA-579](https://issues.apache.org/jira/browse/IMPALA-579) | Insert into a binary encoded hbase table can produce incorrect results. |  Major | . | Ishaan Joshi | Alexander Behm |
| [IMPALA-505](https://issues.apache.org/jira/browse/IMPALA-505) | Multiple valued partitions cannot be joined together with or |  Major | . | Alan Jackoway | Alexander Behm |
| [IMPALA-562](https://issues.apache.org/jira/browse/IMPALA-562) | segfault executing scanner test cases: @ :HdfsScanNode::Close / ThreadGroup::JoinAll |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-501](https://issues.apache.org/jira/browse/IMPALA-501) | impala order by uses nulls first by default, should use nulls last |  Major | . | Greg Rahn | Nong Li |
| [IMPALA-444](https://issues.apache.org/jira/browse/IMPALA-444) | Backend displays doubles incorrectly |  Major | . | Justin Erickson | Alexander Behm |
| [IMPALA-588](https://issues.apache.org/jira/browse/IMPALA-588) | Table access failure with column stats + ALTER TABLE REPLACE COLUMNS |  Major | . | John Russell | Lenni Kuff |
| [IMPALA-568](https://issues.apache.org/jira/browse/IMPALA-568) | Statestore subscriber should retry initial Register call |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-547](https://issues.apache.org/jira/browse/IMPALA-547) | The Impala Shell should have better handling when the history file is not present or unreadable. |  Major | Clients | Ishaan Joshi | Ishaan Joshi |
| [IMPALA-587](https://issues.apache.org/jira/browse/IMPALA-587) | Impala should handle malformatted HBase table mapping gracefully |  Major | . | Alan Choi | Lenni Kuff |
| [IMPALA-461](https://issues.apache.org/jira/browse/IMPALA-461) | com.cloudera.impala.common.AnalysisException: Failed to load metadata for table should be an ERROR and not INFO |  Minor | . | Robert Justice | Lenni Kuff |
| [IMPALA-479](https://issues.apache.org/jira/browse/IMPALA-479) | improve content or remove profile for hiveserver2 metadata requests |  Minor | . | Chris Leroy | Henry Robinson |
| [IMPALA-546](https://issues.apache.org/jira/browse/IMPALA-546) | CREATE VIEW not compatible with SELECT \* + JOIN + USING |  Minor | . | John Russell | Alexander Behm |
| [IMPALA-606](https://issues.apache.org/jira/browse/IMPALA-606) | thrift-server-test#SslTest fails with error "terminate called without an active exception" |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-619](https://issues.apache.org/jira/browse/IMPALA-619) | HiveServer2 metadata operations have incomplete profiles |  Minor | . | Henry Robinson | Henry Robinson |
| [IMPALA-611](https://issues.apache.org/jira/browse/IMPALA-611) | Lock error in MemTracker::LogUsage |  Major | . | Henry Robinson | Nong Li |
| [IMPALA-432](https://issues.apache.org/jira/browse/IMPALA-432) | Queries with lots of predicate cause Impala to seg fault |  Major | . | Alan Choi | Alexander Behm |
| [IMPALA-617](https://issues.apache.org/jira/browse/IMPALA-617) | Impala crashes unexpectedly when inserting sparse rows into parquet (insert into .. values ..) |  Major | . | Ricky Saltzer | Alexander Behm |
| [IMPALA-622](https://issues.apache.org/jira/browse/IMPALA-622) | Fix BytesWritable to PrimitiveType STRING mapping in UDFs. |  Major | . | Alexander Behm | Nong Li |
| [IMPALA-592](https://issues.apache.org/jira/browse/IMPALA-592) | Improve performance of ALTER TABLE ADD PARTITION |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-628](https://issues.apache.org/jira/browse/IMPALA-628) | Invalidate Metadata should not clear user functions |  Major | . | Nong Li | Nong Li |
| [IMPALA-613](https://issues.apache.org/jira/browse/IMPALA-613) | INSERT cancellation test causes impalad segfault:  in impala::HdfsScanNode::Prepare @ be/src/exec/hdfs-scan-node.cc:365 |  Critical | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-632](https://issues.apache.org/jira/browse/IMPALA-632) | Impalad segfaults executing test runs in impala::HdfsScanNode::GetConjuncts @ be/src/exec/hdfs-scan-node.cc:225 |  Blocker | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-332](https://issues.apache.org/jira/browse/IMPALA-332) | impala-shell does not handle multi-line commands that have an open string literal ending in a semi-colon |  Major | Clients | Lenni Kuff | Ishaan Joshi |
| [IMPALA-651](https://issues.apache.org/jira/browse/IMPALA-651) | In Kerberized environment Impala-shell -k to start shell prompt and then connect \<impalad-hostname\> throws exception |  Critical | Clients | Udai Kiran Potluri | Ishaan Joshi |
| [IMPALA-656](https://issues.apache.org/jira/browse/IMPALA-656) | Column Comments Not Visible in DESCRIBE TABLE output for Parquet Table |  Major | . | David E. Wheeler | Lenni Kuff |
| [IMPALA-602](https://issues.apache.org/jira/browse/IMPALA-602) | CREATE TABLE LIKE ... STORED AS PARQUETFILE creates bogus column comments |  Minor | . | John Russell | Lenni Kuff |
| [IMPALA-638](https://issues.apache.org/jira/browse/IMPALA-638) | Impala service fail when submitting query with "non" valid regex |  Major | . | Sergey |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-380](https://issues.apache.org/jira/browse/IMPALA-380) | Refactor Impala FE Catalog code |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-161](https://issues.apache.org/jira/browse/IMPALA-161) | Add Impala support for CREATE TABLE AS SELECT ... |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-140](https://issues.apache.org/jira/browse/IMPALA-140) | Make an impalad's 'Known Backends' a metric |  Major | . | Lenni Kuff |  |
| [IMPALA-577](https://issues.apache.org/jira/browse/IMPALA-577) | Batch hdfsWrite calls for hdfs-text-writer |  Major | . | Nong Li | Nong Li |
| [IMPALA-521](https://issues.apache.org/jira/browse/IMPALA-521) | Create/centralize a single wait timer for all external components in runtime profile |  Minor | . | Nong Li | Nong Li |
| [IMPALA-386](https://issues.apache.org/jira/browse/IMPALA-386) | Impala warnings need to be exposed to user through the shell |  Critical | . | Nong Li | Ishaan Joshi |
| [IMPALA-254](https://issues.apache.org/jira/browse/IMPALA-254) | Shell: connect without any params should also use fqdn. |  Major | . | Nong Li | Ishaan Joshi |
| [IMPALA-612](https://issues.apache.org/jira/browse/IMPALA-612) | Change levels we log at. Any per query messages should at most VLOG(1). |  Blocker | . | Nong Li | Alan Choi |
| [IMPALA-425](https://issues.apache.org/jira/browse/IMPALA-425) | Detect read-only tables (tables Impala does not have HDFS write permissions on) and disable INSERTs into these tables |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-565](https://issues.apache.org/jira/browse/IMPALA-565) | Support user impersonation for authorization requests |  Major | . | Lenni Kuff | Lenni Kuff |


