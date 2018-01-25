
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

## Release Impala 1.3 - 2014-03-06



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-730](https://issues.apache.org/jira/browse/IMPALA-730) | NULLIF function |  Minor | . | Justin Erickson | Srinath |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-142](https://issues.apache.org/jira/browse/IMPALA-142) | Expose JMX metrics from embedded JVM |  Minor | . | Henry Robinson | Henry Robinson |
| [IMPALA-675](https://issues.apache.org/jira/browse/IMPALA-675) | Not possible to find out the current default database |  Major | . | Uri Laserson | Lenni Kuff |
| [IMPALA-829](https://issues.apache.org/jira/browse/IMPALA-829) | Lzo loader should output the lzo library version in the error message. |  Major | . | Nong Li |  |
| [IMPALA-330](https://issues.apache.org/jira/browse/IMPALA-330) | Break up lock in Webserver::MongooseCallback |  Minor | . | Henry Robinson | Henry Robinson |
| [IMPALA-540](https://issues.apache.org/jira/browse/IMPALA-540) | Impala debug webpage should report intermediate runtime profile |  Minor | . | Alan Choi | Srinath |
| [IMPALA-855](https://issues.apache.org/jira/browse/IMPALA-855) | For incompatible type AnalysisException, the error message should tell the user the type of the operand |  Minor | . | Alan Choi | Nong Li |
| [IMPALA-752](https://issues.apache.org/jira/browse/IMPALA-752) | Improve INSERT error message for unsupported file format |  Major | . | Alan Choi | Skye Wanderman-Milne |
| [IMPALA-4215](https://issues.apache.org/jira/browse/IMPALA-4215) | Kerberize mini-cluster and Impala daemons |  Blocker | Infrastructure | Lars Volker |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-729](https://issues.apache.org/jira/browse/IMPALA-729) | String data in MR-produced parquet files may be read incorrectly |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-723](https://issues.apache.org/jira/browse/IMPALA-723) | Union queries give Wrong result in a UNION followed by SIGSEGV in another union |  Blocker | . | Manoj Samel |  |
| [IMPALA-746](https://issues.apache.org/jira/browse/IMPALA-746) | test\_scanners\_all\_table\_formats.TestParquet.test\_parquet failing with wrong results on on C5b2 branch |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-734](https://issues.apache.org/jira/browse/IMPALA-734) | Fix up disabled tests for Impala 1.2.3 on C5 |  Blocker | . | Nong Li | Nong Li |
| [IMPALA-683](https://issues.apache.org/jira/browse/IMPALA-683) | parse\_url(x,'HOST') issue with ":" |  Major | . | Jean-Marc Spaggiari | Srinath |
| [IMPALA-777](https://issues.apache.org/jira/browse/IMPALA-777) | Compute stats need to use quotes with identifiers that are Impala keywords |  Major | . | Skye Wanderman-Milne | Alexander Behm |
| [IMPALA-774](https://issues.apache.org/jira/browse/IMPALA-774) | Udfs returning strings cannot be run from the FE. |  Major | . | Nong Li | Nong Li |
| [IMPALA-770](https://issues.apache.org/jira/browse/IMPALA-770) | Select from subquery with aggregate crashes |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-769](https://issues.apache.org/jira/browse/IMPALA-769) | Some string to numeric casts cause Impala to segfault |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-786](https://issues.apache.org/jira/browse/IMPALA-786) | Drop Function does not clear local library cache |  Major | . | Nong Li | Nong Li |
| [IMPALA-791](https://issues.apache.org/jira/browse/IMPALA-791) | Support String as hive UDF return and argument types. |  Major | . | Nong Li | Nong Li |
| [IMPALA-727](https://issues.apache.org/jira/browse/IMPALA-727) | Use proper exception message in UdfExecutor.java |  Major | . | Alan Choi | Nong Li |
| [IMPALA-785](https://issues.apache.org/jira/browse/IMPALA-785) | ClientCache::CreateClient holds cache-wide lock while connecting to peer |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-800](https://issues.apache.org/jira/browse/IMPALA-800) | Impalad coredumps executing functional tests  in impala::NativeUdfExpr::ComputeFn @ be/src/exprs/native-udf-expr.cc:116 |  Blocker | . | Lenni Kuff |  |
| [IMPALA-817](https://issues.apache.org/jira/browse/IMPALA-817) | Wrong expression may be used in aggregate query if there are multiple similar expressions |  Major | . | casey | Alexander Behm |
| [IMPALA-809](https://issues.apache.org/jira/browse/IMPALA-809) | Statestore seems send concurrent heartbeats to the same subscriber leading to repeated "Subscriber '\<hostname\>' is registering with statestore, ignoring update" messages |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-626](https://issues.apache.org/jira/browse/IMPALA-626) | LibraryCache will crash if function is dropped and recreated while a UDF is running |  Major | . | Nong Li | Nong Li |
| [IMPALA-847](https://issues.apache.org/jira/browse/IMPALA-847) | AnalysisException on query with join+group by using same expression twice+agg(distinct) |  Major | . | casey | Alexander Behm |
| [IMPALA-821](https://issues.apache.org/jira/browse/IMPALA-821) | Catalog Server consumes excessive cpu cycle |  Major | . | Alan Choi | Lenni Kuff |
| [IMPALA-816](https://issues.apache.org/jira/browse/IMPALA-816) | Fix JDBC getFunctions implementation. |  Blocker | . | Nong Li | Nong Li |
| [IMPALA-844](https://issues.apache.org/jira/browse/IMPALA-844) | Not all Thrift exceptions are caught |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-624](https://issues.apache.org/jira/browse/IMPALA-624) | Impala does not use a partition's HDFS path as the sink location for INSERT queries, instead uses the parent table's location |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-845](https://issues.apache.org/jira/browse/IMPALA-845) | Using distinct inside aggregate function may cause incorrect result when using having clause |  Major | . | casey | Alexander Behm |
| [IMPALA-822](https://issues.apache.org/jira/browse/IMPALA-822) | Impalad's crash while running complicated aggregate query using inline view |  Major | . | casey | Alexander Behm |
| [IMPALA-824](https://issues.apache.org/jira/browse/IMPALA-824) | Illegal state exception in query with right join and where clause |  Major | . | casey | Alexander Behm |
| [IMPALA-719](https://issues.apache.org/jira/browse/IMPALA-719) | Query on view gives error "com.cloudera.impala.catalog.TableLoadingException: Failed to parse view-definition statement of view: impala.currency\_rate\_part\_1" |  Major | . | Manoj Samel | Alexander Behm |
| [IMPALA-850](https://issues.apache.org/jira/browse/IMPALA-850) | Incorrect results with codegen on multi-column group by with NULLs. |  Major | . | Alexander Behm | Nong Li |
| [IMPALA-765](https://issues.apache.org/jira/browse/IMPALA-765) | Incorrect results when changing the order of aggregates in the select list with codegen enabled |  Major | . | Srinath | Nong Li |
| [IMPALA-789](https://issues.apache.org/jira/browse/IMPALA-789) | Runtime profile average profiles are not computed correctly. |  Blocker | . | Nong Li | Srinath |
| [IMPALA-853](https://issues.apache.org/jira/browse/IMPALA-853) | Lzo Scanner doesn't handle EOF correctly if the file has a trailing block. |  Major | . | Nong Li | Nong Li |
| [IMPALA-849](https://issues.apache.org/jira/browse/IMPALA-849) | Impala does not work with with BOOLEAN partition key columns |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-869](https://issues.apache.org/jira/browse/IMPALA-869) | Codegen: Max() of negative float/doubles is incorrect |  Major | . | casey | Nong Li |
| [IMPALA-866](https://issues.apache.org/jira/browse/IMPALA-866) | Explain plans have wrong table size information (twice the actual size) |  Minor | . | Ishaan Joshi | Alexander Behm |
| [IMPALA-798](https://issues.apache.org/jira/browse/IMPALA-798) | CTAS does not generate the right plan |  Major | . | Nong Li | Alexander Behm |
| [IMPALA-861](https://issues.apache.org/jira/browse/IMPALA-861) | Illegal state exception in query with WITH clause that uses DISTINCT and main query has WHERE |  Major | . | casey | Alexander Behm |
| [IMPALA-831](https://issues.apache.org/jira/browse/IMPALA-831) | Aggregation on union inside (inline) view not distributed properly. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-787](https://issues.apache.org/jira/browse/IMPALA-787) | HdfsStorageDescriptor should handle escaped delimiter values |  Critical | . | Skye Wanderman-Milne | Lenni Kuff |
| [IMPALA-851](https://issues.apache.org/jira/browse/IMPALA-851) | Admission controller returns the wrong status message when query is rejected due to mem limits |  Major | . | ellen johansen | Matthew Jacobs |
| [IMPALA-843](https://issues.apache.org/jira/browse/IMPALA-843) | Impalad's crash while running join on string column + union |  Major | . | casey | Matthew Jacobs |
| [IMPALA-747](https://issues.apache.org/jira/browse/IMPALA-747) | Impala should run the 2 kinit commands separately |  Critical | . | Vikram Srivastava | Henry Robinson |
| [IMPALA-742](https://issues.apache.org/jira/browse/IMPALA-742) | Parquet scanner cannot read files with very large footer data |  Major | . | Nong Li | Nong Li |
| [IMPALA-879](https://issues.apache.org/jira/browse/IMPALA-879) | impalad crashes while trying to serialize a runtime profile. |  Major | . | Ishaan Joshi | Srinath |
| [IMPALA-880](https://issues.apache.org/jira/browse/IMPALA-880) | COMPUTE STATS should update partitions in batches |  Critical | . | Lenni Kuff |  |
| [IMPALA-867](https://issues.apache.org/jira/browse/IMPALA-867) | Fail early (in analysis) when COMPUTE STATS is run against Avro table with no columns |  Major | . | Lenni Kuff | Alexander Behm |
| [IMPALA-862](https://issues.apache.org/jira/browse/IMPALA-862) | Count(x) may return null when a similar count(distinct x) is also used |  Major | . | casey | Srinath |
| [IMPALA-767](https://issues.apache.org/jira/browse/IMPALA-767) | Query on Avro-Based Table Containing Enum Fields Incorrectly Returns 0 Rows |  Major | . | Tom Wheeler | Skye Wanderman-Milne |
| [IMPALA-860](https://issues.apache.org/jira/browse/IMPALA-860) | Inner join after right join may produce wrong results |  Blocker | . | casey | Alexander Behm |
| [IMPALA-838](https://issues.apache.org/jira/browse/IMPALA-838) | idle\_session\_timeout: Impala timeout session prematurely |  Major | . | Alan Choi | Henry Robinson |
| [IMPALA-875](https://issues.apache.org/jira/browse/IMPALA-875) | DCHECK on partitioned insert |  Critical | . | Alan Choi | Henry Robinson |
| [IMPALA-892](https://issues.apache.org/jira/browse/IMPALA-892) | Codegen: Duplicate use boolean column in aggregate may cause incorrect result |  Major | . | casey | Nong Li |
| [IMPALA-900](https://issues.apache.org/jira/browse/IMPALA-900) | RM fails a DCHECK on queries with no scans |  Blocker | . | Henry Robinson | Henry Robinson |
| [IMPALA-896](https://issues.apache.org/jira/browse/IMPALA-896) | impalad crashes in impala::RuntimeState::SetMemLimitExceeded under high concurrency |  Blocker | . | Ishaan Joshi | Srinath |
| [IMPALA-897](https://issues.apache.org/jira/browse/IMPALA-897) | impala-shell does not close queries after completion when running them from a script file |  Blocker | Clients | Lenni Kuff | Lenni Kuff |
| [IMPALA-903](https://issues.apache.org/jira/browse/IMPALA-903) | COMPUTE STATS child queries do not inherit parent query options. |  Major | . | Lenni Kuff | Alexander Behm |
| [IMPALA-906](https://issues.apache.org/jira/browse/IMPALA-906) | TPCDS-Q73:1000gb / PARQUET now failing on 10 node cluster with "Memory limit exceeded." |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-908](https://issues.apache.org/jira/browse/IMPALA-908) | Requests should fail gracefully if "user" is not set (possible w/ unsecure Hive JDBC connections due to bug) |  Major | . | Lenni Kuff | Matthew Jacobs |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-114](https://issues.apache.org/jira/browse/IMPALA-114) | Impala needs to support more timestamp formats |  Major | . | Nong Li | Chris Channing |
| [IMPALA-759](https://issues.apache.org/jira/browse/IMPALA-759) | Consider switching to dictionary encoding for all NULL pages for parquet writer. |  Major | . | Nong Li | Nong Li |
| [IMPALA-748](https://issues.apache.org/jira/browse/IMPALA-748) | Update IoMgr when we pull in hdfs bits with CDH-16653 fixed |  Minor | . | Nong Li | Nong Li |
| [IMPALA-856](https://issues.apache.org/jira/browse/IMPALA-856) | NULLIFZERO and ZEROIFNULL |  Major | . | Justin Erickson | Srinath |


