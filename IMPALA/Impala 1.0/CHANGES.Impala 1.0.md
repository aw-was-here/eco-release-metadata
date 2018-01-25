
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

## Release Impala 1.0 - 2013-04-30



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-196](https://issues.apache.org/jira/browse/IMPALA-196) | Enable dumping query results directly to a file on a local disk. |  Major | . | Uri Laserson | Lenni Kuff |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-36](https://issues.apache.org/jira/browse/IMPALA-36) | Better metrics in Thrift servers |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-201](https://issues.apache.org/jira/browse/IMPALA-201) | Statestore subscriber should use client cache |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-205](https://issues.apache.org/jira/browse/IMPALA-205) | impala-shell default to localhost if -i is not specified |  Trivial | Clients | Hari Sekhon | Ishaan Joshi |
| [IMPALA-67](https://issues.apache.org/jira/browse/IMPALA-67) | Constant SELECT clauses do not work in subqueries |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-231](https://issues.apache.org/jira/browse/IMPALA-231) | Impala HBase scan is very slow |  Blocker | . | Alan Choi | Alan Choi |
| [IMPALA-75](https://issues.apache.org/jira/browse/IMPALA-75) | "at least one equality predicate" error message needs improvement |  Minor | . | Henry Robinson | Alexander Behm |
| [IMPALA-23](https://issues.apache.org/jira/browse/IMPALA-23) | Statestore should catch duplicate registrations from different subscribers |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-242](https://issues.apache.org/jira/browse/IMPALA-242) | Impala Query UI Keeps Cancelled Query Above New Executing Query |  Major | . | Hari Sekhon | Henry Robinson |
| [IMPALA-19](https://issues.apache.org/jira/browse/IMPALA-19) | Improve Impala memory usage as the number of concurrent clients is scaled up |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-191](https://issues.apache.org/jira/browse/IMPALA-191) | Support /\* \*/ comments |  Minor | Clients | John Russell | Ishaan Joshi |
| [IMPALA-35](https://issues.apache.org/jira/browse/IMPALA-35) | Randomise order of channel construction in DataStreamSender |  Major | . | Henry Robinson | Skye Wanderman-Milne |
| [IMPALA-232](https://issues.apache.org/jira/browse/IMPALA-232) | Clarify that Impala shell's "version" command return the shell version, not the Impala sever version |  Minor | Clients | Alan Choi | Lenni Kuff |
| [IMPALA-150](https://issues.apache.org/jira/browse/IMPALA-150) | Performing dynamic partition insert via Impala on "large" table fails and takes down HDFS |  Blocker | . | Lenni Kuff | Marcel Kornacker |
| [IMPALA-297](https://issues.apache.org/jira/browse/IMPALA-297) | Remove distinction between value\_expr and expr in parser. |  Blocker | . | Alexander Behm | Alexander Behm |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-44](https://issues.apache.org/jira/browse/IMPALA-44) | Database names are case sensitive. |  Major | . | Ishaan Joshi | Lenni Kuff |
| [IMPALA-48](https://issues.apache.org/jira/browse/IMPALA-48) | When Impala is backed by a Hive Metastore Service (via Thrift), concurrent queries that load metadata may fail with erro "get\_fields failed: out of sequence response" |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-152](https://issues.apache.org/jira/browse/IMPALA-152) | SELECT ... ORDER BY without specifying a table name fails with IllegalStateException @ Planner.java:896: com.cloudera.impala.planner.Planner.createUnionPlan(...) |  Major | . | Lenni Kuff | Alexander Behm |
| [IMPALA-158](https://issues.apache.org/jira/browse/IMPALA-158) | make all fields in TQueryOptions optional |  Blocker | . | Marcel Kornacker | Alan Choi |
| [IMPALA-41](https://issues.apache.org/jira/browse/IMPALA-41) | The TABLE keyword should be optional for INSERT commands |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-190](https://issues.apache.org/jira/browse/IMPALA-190) | Insert with NULL partition keys results in SIGSEGV. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-76](https://issues.apache.org/jira/browse/IMPALA-76) | operands are not comparable: NULL = 'a' |  Minor | . | Lenni Kuff | Alexander Behm |
| [IMPALA-51](https://issues.apache.org/jira/browse/IMPALA-51) | Get an error "couldn't analyze predicate NULL = '\<value\>'" when using = operator on second partition column, however IN clause works fine. |  Minor | . | Sanjath Shringeri | Alexander Behm |
| [IMPALA-206](https://issues.apache.org/jira/browse/IMPALA-206) | INSERT queries always terminate in EXCEPTION state |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-220](https://issues.apache.org/jira/browse/IMPALA-220) | INSERTs do not check / cast partition key types correctly |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-229](https://issues.apache.org/jira/browse/IMPALA-229) | The built-in function regexp\_extract() return wrong results |  Major | . | Jordan Lee | Alexander Behm |
| [IMPALA-225](https://issues.apache.org/jira/browse/IMPALA-225) | compound predicate ranges on partition key crash impalad |  Critical | . | Greg Rahn | Marcel Kornacker |
| [IMPALA-245](https://issues.apache.org/jira/browse/IMPALA-245) | day() function returns wrong result |  Major | . | Greg Rahn | Skye Wanderman-Milne |
| [IMPALA-227](https://issues.apache.org/jira/browse/IMPALA-227) | SELECT \* on partitioned table in Impala returns partition columns in wrong order than Hive |  Major | . | Lenni Kuff | Alexander Behm |
| [IMPALA-253](https://issues.apache.org/jira/browse/IMPALA-253) | Failures in UpdateMetastore aren't propagated back to the client |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-204](https://issues.apache.org/jira/browse/IMPALA-204) | Parquet scanner hangs sometimes |  Critical | . | Nong Li | Nong Li |
| [IMPALA-94](https://issues.apache.org/jira/browse/IMPALA-94) | TPC-H Q4 causes impalad to crash due to OOM when running against 100GB scale factor on 10 node cluster |  Critical | . | Lenni Kuff |  |
| [IMPALA-134](https://issues.apache.org/jira/browse/IMPALA-134) | Impala does not fail gracefully (SEGFAULTS) when direct reads are not configured properly |  Major | . | Lenni Kuff | Alan Choi |
| [IMPALA-133](https://issues.apache.org/jira/browse/IMPALA-133) | Cleanup displaying of AnalysisExceptions in the impala-shell |  Major | Clients | Lenni Kuff | Alexander Behm |
| [IMPALA-281](https://issues.apache.org/jira/browse/IMPALA-281) | Fix Impala legacy direct read config check (CDH4.1 style direct reads) |  Blocker | . | Lenni Kuff | Alan Choi |
| [IMPALA-90](https://issues.apache.org/jira/browse/IMPALA-90) | Right outer Join includes NULLs as well and hence wrong result count |  Major | . | Marcel Kornacker | Marcel Kornacker |
| [IMPALA-183](https://issues.apache.org/jira/browse/IMPALA-183) | Undeterministically receive "ERROR: unknown row bach destination..." and "ERROR: Invalid query handle" from impala shell when running union query |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-236](https://issues.apache.org/jira/browse/IMPALA-236) | impalad segfaults executing query that contains join and limit |  Major | . | Lenni Kuff | Alexander Behm |
| [IMPALA-56](https://issues.apache.org/jira/browse/IMPALA-56) | Async query execution hangs when WAIT debug action set in CLOSE or PREPARE of plan node |  Major | . | Lenni Kuff | Alan Choi |
| [IMPALA-79](https://issues.apache.org/jira/browse/IMPALA-79) | Wrong results and errors returned from SELECT \* FROM the "ragged column" table |  Major | . | Lenni Kuff | Alan Choi |
| [IMPALA-234](https://issues.apache.org/jira/browse/IMPALA-234) | Add some library version validation logic to impalad when loading impala-lzo shared library |  Blocker | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-262](https://issues.apache.org/jira/browse/IMPALA-262) | Querying text/lzo table that is not indexed causes an impalad segfault @ impala::HdfsScanNode::InitTemplateTuple (scanner-context.cc:39) |  Blocker | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-84](https://issues.apache.org/jira/browse/IMPALA-84) | Predicates not evaluated if select exprs are constant |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-258](https://issues.apache.org/jira/browse/IMPALA-258) | Spaces should not be url encoded in partition keys |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-259](https://issues.apache.org/jira/browse/IMPALA-259) | Debug webpage does not render query plans properly (slot refs are blank) |  Critical | . | Lenni Kuff | Henry Robinson |
| [IMPALA-195](https://issues.apache.org/jira/browse/IMPALA-195) | impala-shell --refresh\_after\_connect shouldn't mention refshing the catalog [0]p0427master:etl(9648)$impala-shell --refresh\_after\_connect --quiet -i localhost --query "select 3" Successfully refreshed catalog 3 |  Blocker | Clients | Philip Zeyliger | Ishaan Joshi |
| [IMPALA-154](https://issues.apache.org/jira/browse/IMPALA-154) | DataStreamTest with asan crashes |  Major | . | Nong Li | Alexander Behm |
| [IMPALA-267](https://issues.apache.org/jira/browse/IMPALA-267) | Cannot cast string literal to string |  Major | . | Lenni Kuff | Alan Choi |
| [IMPALA-125](https://issues.apache.org/jira/browse/IMPALA-125) | Simple scheduler locality metric erroneously counts HBase scan ranges as non-local |  Blocker | . | Henry Robinson | Alan Choi |
| [IMPALA-289](https://issues.apache.org/jira/browse/IMPALA-289) | HdfsScanNode crashes in UpdateCounters |  Blocker | . | Henry Robinson | Nong Li |
| [IMPALA-121](https://issues.apache.org/jira/browse/IMPALA-121) | impala shell should not start when unknown command line arguments are passed in |  Blocker | Clients | Lenni Kuff | Ishaan Joshi |
| [IMPALA-247](https://issues.apache.org/jira/browse/IMPALA-247) | Navigating impala-shell history shows newline characters as '\\n' in past commands |  Major | Clients | Lenni Kuff | Ishaan Joshi |
| [IMPALA-273](https://issues.apache.org/jira/browse/IMPALA-273) | Impalad runs into problem: "Lost connection to the state-store, entering recovery mode" often on all test clusters |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-260](https://issues.apache.org/jira/browse/IMPALA-260) | Planner should take into account memory limit when choosing between broadcast or partition join |  Major | . | Lenni Kuff | Marcel Kornacker |
| [IMPALA-269](https://issues.apache.org/jira/browse/IMPALA-269) | Impala returns zero rows instead of raising error when failing to read Hive SerDe |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-266](https://issues.apache.org/jira/browse/IMPALA-266) | Round() does not output the right precision |  Major | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-292](https://issues.apache.org/jira/browse/IMPALA-292) | Parquet performance issues on large dataset |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-243](https://issues.apache.org/jira/browse/IMPALA-243) | Ctrl-C sometimes interrupts shell in system call, rather than cancelling query |  Critical | . | Henry Robinson | Ishaan Joshi |
| [IMPALA-12](https://issues.apache.org/jira/browse/IMPALA-12) | Shell does not correctly split queries when ; is quoted |  Major | Clients | Henry Robinson | Ishaan Joshi |
| [IMPALA-261](https://issues.apache.org/jira/browse/IMPALA-261) | impala-shell converting multi-line query including literals to lower case |  Major | Clients | jaideep dhok | Ishaan Joshi |
| [IMPALA-238](https://issues.apache.org/jira/browse/IMPALA-238) | Problems inserting into tables with TIMESTAMP partition columns leading table metadata loading failures and failed dchecks |  Critical | . | Lenni Kuff | Alexander Behm |
| [IMPALA-295](https://issues.apache.org/jira/browse/IMPALA-295) | impala not populating hive metadata correctly for create table |  Major | . | Greg Rahn | Lenni Kuff |
| [IMPALA-288](https://issues.apache.org/jira/browse/IMPALA-288) | Excessive mem usage for certain queries which are very selective |  Blocker | . | Nong Li | Nong Li |
| [IMPALA-217](https://issues.apache.org/jira/browse/IMPALA-217) | INSERT queries don't show completed profiles on the debug webpage |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-304](https://issues.apache.org/jira/browse/IMPALA-304) | New query profile needs better formatting, and is too verbose. |  Blocker | . | Ishaan Joshi | Alan Choi |
| [IMPALA-111](https://issues.apache.org/jira/browse/IMPALA-111) | COUNT(DISTINCT col) returns wrong results -- does not ignore NULLs |  Critical | . | Greg Rahn | Alexander Behm |
| [IMPALA-197](https://issues.apache.org/jira/browse/IMPALA-197) | Outer join on constant expressions returns incorrect results. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-312](https://issues.apache.org/jira/browse/IMPALA-312) | impala daemons die if statestore goes down |  Blocker | . | Lenni Kuff | Alan Choi |
| [IMPALA-290](https://issues.apache.org/jira/browse/IMPALA-290) | Improve error message when trying to use LZO compression on file formats other than text |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-77](https://issues.apache.org/jira/browse/IMPALA-77) | Impala does not properly handle HDFS viewfs mounts (federated cluster) - Queries fail with "wrong filesystem" error |  Critical | . | Lenni Kuff | Alan Choi |
| [IMPALA-271](https://issues.apache.org/jira/browse/IMPALA-271) | Sequence file spews bad status "Incomplete read" even when it's not a real error |  Major | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-104](https://issues.apache.org/jira/browse/IMPALA-104) | SELECT DISTINCTPC() fails DCHECK: "Check failed: src\_value-\>len == NUM\_PC\_BITMAPS \* PC\_BITMAP\_LENGTH / 8 (1 vs. 256)" |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-316](https://issues.apache.org/jira/browse/IMPALA-316) | Impala segfaults executing count(\*) query in impala::DiskIoMgr::queue\_size (this=0x4048c80, reader=0x6740ea0) at disk-io-mgr.cc:801 |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-315](https://issues.apache.org/jira/browse/IMPALA-315) | RCFILE and SEQUENCEFILE DataErrors test no longer throwing any error |  Blocker | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-249](https://issues.apache.org/jira/browse/IMPALA-249) | Cannot specify negative number in static partition spec (get syntax error Encountered: - Expected: FALSE, NULL, TRUE) |  Blocker | . | Lenni Kuff | Alexander Behm |
| [IMPALA-252](https://issues.apache.org/jira/browse/IMPALA-252) | Empty string partition value causes metastore update failure |  Blocker | . | Henry Robinson | Alexander Behm |
| [IMPALA-317](https://issues.apache.org/jira/browse/IMPALA-317) | Impalad crashes while constructing the RuntimeProfile. |  Blocker | . | Ishaan Joshi | Skye Wanderman-Milne |
| [IMPALA-323](https://issues.apache.org/jira/browse/IMPALA-323) | TPC-DS query hits DCHECK @ disk-io-mgr.cc:409] Check failed: Validate() |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-310](https://issues.apache.org/jira/browse/IMPALA-310) | TPCH-Q21-Q1 causing segfault @ src/exprs/string-functions.cc:53 - impala::StringFunctions::Substring(e=0x52bae70, row=0x4ecc798) |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-280](https://issues.apache.org/jira/browse/IMPALA-280) | AnalysisException / TableLoadingException while trying to load table metadata for select query |  Major | . | Hari Sekhon | Henry Robinson |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-291](https://issues.apache.org/jira/browse/IMPALA-291) | Plans should explicitly mention the join strategy |  Major | . | Henry Robinson | Marcel Kornacker |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-144](https://issues.apache.org/jira/browse/IMPALA-144) | Do partition pruning for arbitrary predicates that are fully bound by a particular partition column |  Major | . | Marcel Kornacker | Marcel Kornacker |
| [IMPALA-157](https://issues.apache.org/jira/browse/IMPALA-157) | Support CREATE TABLE LIKE DDL |  Major | . | Nong Li | Lenni Kuff |
| [IMPALA-208](https://issues.apache.org/jira/browse/IMPALA-208) | Add hardware info (cpuinfo, diskinfo, meminfo) to the debug webpage |  Major | . | Nong Li | Lenni Kuff |
| [IMPALA-255](https://issues.apache.org/jira/browse/IMPALA-255) | Remove paths where codegen is completely disabled. |  Major | . | Nong Li | Nong Li |
| [IMPALA-263](https://issues.apache.org/jira/browse/IMPALA-263) | Add sleep(int ms) builtin |  Minor | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-256](https://issues.apache.org/jira/browse/IMPALA-256) | Add runtime profile counter for numbers of rows scanned in scan node |  Major | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-26](https://issues.apache.org/jira/browse/IMPALA-26) | Impala, on startup, should validate configs |  Major | . | Nong Li | Alan Choi |
| [IMPALA-91](https://issues.apache.org/jira/browse/IMPALA-91) | Make EXPLAIN output easier to interpret |  Blocker | . | Lenni Kuff | Alan Choi |


