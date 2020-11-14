
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

## Release Impala 2.10.0 - 2017-09-13



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2373](https://issues.apache.org/jira/browse/IMPALA-2373) | Extrapolate the number of rows in a scan based on the rows/byte ratio |  Critical | Frontend | Alan Choi | Alexander Behm |
| [IMPALA-2525](https://issues.apache.org/jira/browse/IMPALA-2525) | Impala CREATE TABLE LIKE PARQUET breaks on ENUM logical type |  Minor | Frontend | Uri Laserson | Jakub Kukul |
| [IMPALA-4622](https://issues.apache.org/jira/browse/IMPALA-4622) | Support changing Kudu default and storage attributes |  Major | Frontend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-5600](https://issues.apache.org/jira/browse/IMPALA-5600) | Small cleanups left over from IMPALA-5344 |  Trivial | Frontend | Lars Volker | Lars Volker |
| [IMPALA-3504](https://issues.apache.org/jira/browse/IMPALA-3504) | Add utc\_timestamp() function for current timestamp in UTC |  Minor | Backend | kuduser | Bikramjeet Vig |
| [IMPALA-5489](https://issues.apache.org/jira/browse/IMPALA-5489) | Improve Sentry authorization for Kudu tables |  Major | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5529](https://issues.apache.org/jira/browse/IMPALA-5529) | Add additional function signatures for TRUNC() |  Major | Frontend | Greg Rahn | Jin Chul Kim |
| [IMPALA-5546](https://issues.apache.org/jira/browse/IMPALA-5546) | Add syntax for creating an unpartitioned kudu table |  Major | Frontend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-992](https://issues.apache.org/jira/browse/IMPALA-992) | rerun past queries from history |  Minor | Clients | Kaufman Ng | Tianyi Wang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4623](https://issues.apache.org/jira/browse/IMPALA-4623) | Parquet Scanner - reduce NN RPC |  Major | Backend | Alan Choi | Joe McDonnell |
| [IMPALA-5350](https://issues.apache.org/jira/browse/IMPALA-5350) | Build threads should include fragment ID in their names |  Minor | . | Henry Robinson | Henry Robinson |
| [IMPALA-5433](https://issues.apache.org/jira/browse/IMPALA-5433) | Mark Status c'tors as explicit |  Minor | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-5480](https://issues.apache.org/jira/browse/IMPALA-5480) | Missing filters message isn't great |  Trivial | . | Henry Robinson | Henry Robinson |
| [IMPALA-5016](https://issues.apache.org/jira/browse/IMPALA-5016) | Missed opportunities for static partition pruning with COALESCE() |  Major | Frontend | William Forson | fengYu |
| [IMPALA-5495](https://issues.apache.org/jira/browse/IMPALA-5495) | Improve error message if neither --is\_coordinator nor --is\_executor is set |  Trivial | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-5263](https://issues.apache.org/jira/browse/IMPALA-5263) | support CA bundles when running stress test against SSL'd Impala |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-5506](https://issues.apache.org/jira/browse/IMPALA-5506) | Help information of query\_file option in impala-shell misses stdin description |  Minor | Clients | Davy Xu | Davy Xu |
| [IMPALA-5061](https://issues.apache.org/jira/browse/IMPALA-5061) | Populate null\_count in parquet::statistics in the parquet table writer |  Major | Backend | Lars Volker | Pooja Nilangekar |
| [IMPALA-5389](https://issues.apache.org/jira/browse/IMPALA-5389) | Clarify lifetime of DiskIoMgr::BufferDescriptor objects |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5481](https://issues.apache.org/jira/browse/IMPALA-5481) | RowDescriptors should be shared, rather than copied |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-5500](https://issues.apache.org/jira/browse/IMPALA-5500) | Reduce catalog topic size when --compact\_catalog\_topic is enabled |  Blocker | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-5280](https://issues.apache.org/jira/browse/IMPALA-5280) | Coalesce chains of OR conditions to an IN predicate. |  Major | Frontend | Alexander Behm | sandeep akinapelli |
| [IMPALA-5483](https://issues.apache.org/jira/browse/IMPALA-5483) | Consider automatically disabling codegen for entire query based on planner estimates |  Minor | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5560](https://issues.apache.org/jira/browse/IMPALA-5560) | Consider always storing CHAR() slots inline |  Minor | Backend, Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5547](https://issues.apache.org/jira/browse/IMPALA-5547) | Improve join cardinality estimation with a more robust FK/PK detection |  Critical | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-5507](https://issues.apache.org/jira/browse/IMPALA-5507) | Help information of KEYVAL option in impala-shell is not clear enough |  Minor | Clients | Davy Xu |  |
| [IMPALA-5643](https://issues.apache.org/jira/browse/IMPALA-5643) | Report the number of currently running and total number of started threads per group in /threadz |  Minor | Backend | Lars Volker | Lars Volker |
| [IMPALA-5240](https://issues.apache.org/jira/browse/IMPALA-5240) | Allow configuration of # of disk I/O threads independently for solid-state and spinning disks |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-5659](https://issues.apache.org/jira/browse/IMPALA-5659) | glog / gflags should be dynamically linked if Impala is |  Minor | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-5670](https://issues.apache.org/jira/browse/IMPALA-5670) | Remove redundant c'tor code from ExecEnv |  Minor | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3937](https://issues.apache.org/jira/browse/IMPALA-3937) | Deprecate --be\_service\_threads |  Minor | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-5688](https://issues.apache.org/jira/browse/IMPALA-5688) | Speed up a couple of heavy-hitting expr-tests |  Minor | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-5498](https://issues.apache.org/jira/browse/IMPALA-5498) | Support for partial sorts |  Major | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5167](https://issues.apache.org/jira/browse/IMPALA-5167) | Reduce number of Kudu clients that get created |  Major | Backend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-5709](https://issues.apache.org/jira/browse/IMPALA-5709) | Remove mini-impala-cluster |  Minor | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-5511](https://issues.apache.org/jira/browse/IMPALA-5511) | Add process start time to debug web page |  Minor | Backend | Henry Robinson | Gabor Kaszab |
| [IMPALA-5716](https://issues.apache.org/jira/browse/IMPALA-5716) | Switching to / from distcc can delete cmake\_modules/\* |  Minor | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-4086](https://issues.apache.org/jira/browse/IMPALA-4086) | Write micro-benchmark for SimpleScheduler |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-5009](https://issues.apache.org/jira/browse/IMPALA-5009) | Clean up test\_insert\_parquet.py |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5745](https://issues.apache.org/jira/browse/IMPALA-5745) | Make breakpad dump\_syms handle more than 4096 memory regions |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5616](https://issues.apache.org/jira/browse/IMPALA-5616) | Add a new flag --enable\_minidumps |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-2167](https://issues.apache.org/jira/browse/IMPALA-2167) | Remove the old (unpartitioned) HJ and AGG nodes |  Minor | Backend | Ippokratis Pandis | Tim Armstrong |
| [IMPALA-5658](https://issues.apache.org/jira/browse/IMPALA-5658) | Report details of process memory maps via metrics |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-1382](https://issues.apache.org/jira/browse/IMPALA-1382) | Wasted space in buffered-tuple-stream in presence of many NULL tuples |  Minor | Backend | Ippokratis Pandis | Tim Armstrong |
| [IMPALA-5572](https://issues.apache.org/jira/browse/IMPALA-5572) | Support timestamp codegen for text scanner |  Minor | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-5696](https://issues.apache.org/jira/browse/IMPALA-5696) | Enable cipher configuration when using TLS w/Thrift |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-4407](https://issues.apache.org/jira/browse/IMPALA-4407) | Incorporate impala-setup repo into main Impala repo |  Major | Infrastructure | Jim Apple | Jim Apple |
| [IMPALA-4833](https://issues.apache.org/jira/browse/IMPALA-4833) | Use scheduling information to make per-node memory reservation tight |  Major | Backend | Tim Armstrong | Matthew Jacobs |
| [IMPALA-5666](https://issues.apache.org/jira/browse/IMPALA-5666) | Use manual poisoning for ASAN with new buffer pool |  Minor | Backend | Tim Armstrong | Henry Robinson |
| [IMPALA-5743](https://issues.apache.org/jira/browse/IMPALA-5743) | Allow for configuration of TLS / SSL versions |  Major | Security | Henry Robinson | Henry Robinson |
| [IMPALA-5109](https://issues.apache.org/jira/browse/IMPALA-5109) | Increase plan fragment startup histogram max latency to \> 20000ms |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-4794](https://issues.apache.org/jira/browse/IMPALA-4794) | Impala's count(distinct ...) plans are not robust to data skew |  Major | Frontend | Tim Armstrong | Tianyi Wang |
| [IMPALA-2689](https://issues.apache.org/jira/browse/IMPALA-2689) | Log every time codegen is disabled due to NYI |  Minor | Backend | Skye Wanderman-Milne | Anuj Phadke |
| [IMPALA-5644](https://issues.apache.org/jira/browse/IMPALA-5644) | Fail queries early when their minimum reservation is too high to execute within the given mem\_limit |  Major | Frontend | Tim Armstrong | Matthew Jacobs |
| [IMPALA-5612](https://issues.apache.org/jira/browse/IMPALA-5612) | Join inversion should avoid reducing the degree of parallelism |  Critical | Frontend | Alexander Behm | Tim Armstrong |
| [IMPALA-5573](https://issues.apache.org/jira/browse/IMPALA-5573) | Support decimal codegen in text scanner |  Minor | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-3200](https://issues.apache.org/jira/browse/IMPALA-3200) | Replace BufferedBlockMgr with new buffer pool |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5852](https://issues.apache.org/jira/browse/IMPALA-5852) | Improve MINIMUM\_RESERVATION\_UNAVAILABLE message |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3128](https://issues.apache.org/jira/browse/IMPALA-3128) | Parallelize file/block metadata loading for tables with large number of partitions |  Major | Catalog | Dimitris Tsirogiannis | Bharath Vissapragada |
| [IMPALA-6083](https://issues.apache.org/jira/browse/IMPALA-6083) | Clarify scope of STRAIGHT\_JOIN query hint in Impala docs |  Major | Docs | Alexander Behm | John Russell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5364](https://issues.apache.org/jira/browse/IMPALA-5364) | Number of fragments reported in the web-ui is incorrect |  Minor | Distributed Exec | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-5432](https://issues.apache.org/jira/browse/IMPALA-5432) | SetMemLimitExceeded DCHECK no longer valid |  Major | Backend | John Sherman | John Sherman |
| [IMPALA-5437](https://issues.apache.org/jira/browse/IMPALA-5437) | Codegen for Trunc() of timestamp takes far too long |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5377](https://issues.apache.org/jira/browse/IMPALA-5377) | IMPALAD   Crashed    With the impala starting   large number of JDBC accessing |  Critical | Backend | yyzzjj | Henry Robinson |
| [IMPALA-5420](https://issues.apache.org/jira/browse/IMPALA-5420) | Check If HDFS ACLs are enabled before trying to get the ACLs |  Major | Catalog | Mostafa Mokhtar | Bharath Vissapragada |
| [IMPALA-5363](https://issues.apache.org/jira/browse/IMPALA-5363) | DCHECK hit in BlockingJoinNode:  DCHECK\_EQ(probe\_batch\_-\>num\_rows(), 0); |  Blocker | . | Anuj Phadke | Anuj Phadke |
| [IMPALA-5438](https://issues.apache.org/jira/browse/IMPALA-5438) | Union with constant exprs inside a subplan returns inconsistent results |  Critical | Backend | Anuj Phadke | Alexander Behm |
| [IMPALA-5282](https://issues.apache.org/jira/browse/IMPALA-5282) | Insert into a table partitioned by two column with clustered hint from a partitioned source table fails with IllegalStateException: null |  Critical | Frontend | Mostafa Mokhtar | Alexander Behm |
| [IMPALA-5355](https://issues.apache.org/jira/browse/IMPALA-5355) | Sentry Privileges and roles updated in the wrong order on impala restart |  Critical | Catalog | Anuj Phadke | Taras Bobrovytsky |
| [IMPALA-5056](https://issues.apache.org/jira/browse/IMPALA-5056) | Impala fails to recover from statestore connection loss while waiting for metadata |  Critical | Catalog, Frontend | Balazs Jeszenszky | Henry Robinson |
| [IMPALA-5455](https://issues.apache.org/jira/browse/IMPALA-5455) | test infra cannot always contact TLS-enabled CM |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-5454](https://issues.apache.org/jira/browse/IMPALA-5454) | JVM metrics don't show up on /memz sometimes |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-5435](https://issues.apache.org/jira/browse/IMPALA-5435) | test\_basic\_filters failed on ASAN |  Critical | Backend | Thomas Tauber-Marshall | Henry Robinson |
| [IMPALA-4892](https://issues.apache.org/jira/browse/IMPALA-4892) | Include the session ID in the "Invalid session ID" error message |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-5386](https://issues.apache.org/jira/browse/IMPALA-5386) | disk-io-mgr-handle-cache.inline.h:124] Check failed: release\_it != range.second |  Blocker | Backend | Michael Ho | Joe McDonnell |
| [IMPALA-5423](https://issues.apache.org/jira/browse/IMPALA-5423) | test\_file\_modifications fails on local filesystem and isilon |  Blocker | Backend | Thomas Tauber-Marshall | Joe McDonnell |
| [IMPALA-5469](https://issues.apache.org/jira/browse/IMPALA-5469) | IllegalStateException while processing catalog update in the Impalad |  Major | Catalog | Dimitris Tsirogiannis | Taras Bobrovytsky |
| [IMPALA-5221](https://issues.apache.org/jira/browse/IMPALA-5221) | Fix TSaslTransport negotiation order leading to crash in SaslMutexLock(void\*) |  Critical | Distributed Exec | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-4965](https://issues.apache.org/jira/browse/IMPALA-4965) | EXPLAIN output blocked by Sentry but appears in query profile |  Critical | Clients, Frontend, Security | Dave Beech | Dimitris Tsirogiannis |
| [IMPALA-5479](https://issues.apache.org/jira/browse/IMPALA-5479) | Propagate the argument 'type' for RawValue::Compare() |  Minor | Backend | Michael Ho | Michael Ho |
| [IMPALA-5482](https://issues.apache.org/jira/browse/IMPALA-5482) | single\_node\_perf\_run.py can fail to checkout when testing a patch that modifies testdata/workloads |  Minor | Infrastructure | Jim Apple | Jim Apple |
| [IMPALA-5453](https://issues.apache.org/jira/browse/IMPALA-5453) | TestCreateTableLikeFile fails on 'enum.parquet' |  Blocker | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5400](https://issues.apache.org/jira/browse/IMPALA-5400) | Tests added to  subplans.test never get  executed. |  Major | . | Anuj Phadke | Anuj Phadke |
| [IMPALA-5424](https://issues.apache.org/jira/browse/IMPALA-5424) | test\_breakpad.py can fail if /tmp/minidumps is missing |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-4162](https://issues.apache.org/jira/browse/IMPALA-4162) | Extensive logging in HDFS NameNode during metadata load when dfs.namenode.acls.enabled=false |  Major | Catalog | Mostafa Mokhtar |  |
| [IMPALA-5446](https://issues.apache.org/jira/browse/IMPALA-5446) | Return Status from Sorter::Reset() is dropped |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5223](https://issues.apache.org/jira/browse/IMPALA-5223) | HBase/Zookeeper continues to be flaky on RHEL7 |  Major | Infrastructure | Taras Bobrovytsky | Lars Volker |
| [IMPALA-5487](https://issues.apache.org/jira/browse/IMPALA-5487) | Race in runtime-profile.cc::toThrift() can lead to corrupt profiles being generated while query is running |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-5492](https://issues.apache.org/jira/browse/IMPALA-5492) | There is an error in impala-shell introduction when using LDAP |  Minor | Clients | Davy Xu | Davy Xu |
| [IMPALA-4418](https://issues.apache.org/jira/browse/IMPALA-4418) | Extra blank lines in query result |  Major | Clients | Matyas Orhidi | Vincent Tran |
| [IMPALA-4483](https://issues.apache.org/jira/browse/IMPALA-4483) | run-backend-tests.sh does not work with ninja |  Minor | Infrastructure | Jim Apple | Jim Apple |
| [IMPALA-5494](https://issues.apache.org/jira/browse/IMPALA-5494) | NOT IN predicate shares the same selectivity as IN predicate |  Minor | Frontend | Vincent Tran | Vincent Tran |
| [IMPALA-5286](https://issues.apache.org/jira/browse/IMPALA-5286) | Query with Kudu col name w/ different casing from 'order by' fails |  Major | Frontend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-5283](https://issues.apache.org/jira/browse/IMPALA-5283) | Handle case sensitivity naming conflicts in Kudu tables |  Major | Frontend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-5527](https://issues.apache.org/jira/browse/IMPALA-5527) | Create a nested testdata flattener for the query generator |  Major | Infrastructure | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-5537](https://issues.apache.org/jira/browse/IMPALA-5537) | Impala does not retry RPCs that fail in SSL\_read() |  Blocker | Backend | Lars Volker | Michael Ho |
| [IMPALA-5497](https://issues.apache.org/jira/browse/IMPALA-5497) | Right anti, right outer and full outer hash joins sometimes do not flush resources early enough |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5540](https://issues.apache.org/jira/browse/IMPALA-5540) | Latest version of Sentry fails to connect |  Blocker | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5488](https://issues.apache.org/jira/browse/IMPALA-5488) | TestValidateMetrics fails sometimes when running tests on Isilon |  Blocker | Backend | Tim Armstrong | Joe McDonnell |
| [IMPALA-5536](https://issues.apache.org/jira/browse/IMPALA-5536) | TCLIService thrift compilation is broken on Hive 2 |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-5530](https://issues.apache.org/jira/browse/IMPALA-5530) | Sentry broke Impala compilation |  Blocker | Frontend | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-5553](https://issues.apache.org/jira/browse/IMPALA-5553) | expr-test fails in release builds |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-5549](https://issues.apache.org/jira/browse/IMPALA-5549) | Remove deprecated fields from catalog's thrift API return types |  Major | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-5562](https://issues.apache.org/jira/browse/IMPALA-5562) | Query involving nested array and limit 0 hits IllegalStateException |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-5558](https://issues.apache.org/jira/browse/IMPALA-5558) | Query hang after coordinator crash because DoRpc(ReportExecStatus) fails and is not retried |  Blocker | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-5576](https://issues.apache.org/jira/browse/IMPALA-5576) | Wrong Cancel() in QueryState::ReportExecStatusAux() can lead to coordinator hang |  Critical | Distributed Exec | Matthew Jacobs |  |
| [IMPALA-5579](https://issues.apache.org/jira/browse/IMPALA-5579) | GetSchemas throws IndexArrayOutOfBoundsException if a table can't be loaded |  Major | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-5431](https://issues.apache.org/jira/browse/IMPALA-5431) | Calling FileSystem.Exists() twice in a row for the same partition adds unnecessary latency to metadata loading |  Major | Catalog | Mostafa Mokhtar | Bharath Vissapragada |
| [IMPALA-5551](https://issues.apache.org/jira/browse/IMPALA-5551) | test\_failpoint.py fails in legacy join and agg tests |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-5571](https://issues.apache.org/jira/browse/IMPALA-5571) | numerous test\_grant\_revoke failures |  Blocker | Catalog | Michael Brown | Dimitris Tsirogiannis |
| [IMPALA-5592](https://issues.apache.org/jira/browse/IMPALA-5592) | DataStreamSender doesn't appear to be compressing the payload |  Major | Distributed Exec | Mostafa Mokhtar | Michael Ho |
| [IMPALA-5567](https://issues.apache.org/jira/browse/IMPALA-5567) | Race in fragment instance teardown can lead to use-after-free in MemTracker::AnyLimitExceeded() |  Critical | Backend | Lars Volker | Tim Armstrong |
| [IMPALA-5594](https://issues.apache.org/jira/browse/IMPALA-5594) | Impala should not reference shaded classes from Kudu jar |  Blocker | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5344](https://issues.apache.org/jira/browse/IMPALA-5344) | Frontend tests do not work with Java 8 |  Major | Frontend | Jim Apple | Lars Volker |
| [IMPALA-5595](https://issues.apache.org/jira/browse/IMPALA-5595) | Impala shouldn't set KuduScanner timestamp feature flag unless necessary |  Major | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5591](https://issues.apache.org/jira/browse/IMPALA-5591) | Set statement handling in frontend can't handle negative numbers |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5588](https://issues.apache.org/jira/browse/IMPALA-5588) | test\_rpc\_secure\_recv\_timed\_out: TypeError |  Blocker | Infrastructure | Michael Brown | Michael Ho |
| [IMPALA-5427](https://issues.apache.org/jira/browse/IMPALA-5427) | beeswax get\_state() can return EXCEPTION before error is visible via get\_log() |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-5611](https://issues.apache.org/jira/browse/IMPALA-5611) | KuduPartitionExpr holds onto memory unnecessarily |  Critical | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5580](https://issues.apache.org/jira/browse/IMPALA-5580) | Java UDF: return null STRING incorrectly converted to empty string |  Blocker | Backend | Lorenzo Bagni | Daniel Hecht |
| [IMPALA-5623](https://issues.apache.org/jira/browse/IMPALA-5623) | lag() on STRING cols may hold memory until query end |  Major | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5514](https://issues.apache.org/jira/browse/IMPALA-5514) | When only with ldap\_password\_cmd option, has invalid parameter, impala-shell runs successfully |  Minor | Clients | Davy Xu | Davy Xu |
| [IMPALA-5640](https://issues.apache.org/jira/browse/IMPALA-5640) | Enable test coverage for Parquet gzip inserts was disabled |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-4862](https://issues.apache.org/jira/browse/IMPALA-4862) | Planner's peak resource estimates do not accurately reflect the behaviour of joins and unions in the backend |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5104](https://issues.apache.org/jira/browse/IMPALA-5104) | admission control memory check shouldn't fail queries with estimates equal to MEM\_LIMIT |  Minor | Backend | Matthew Mulder | Bikramjeet Vig |
| [IMPALA-5585](https://issues.apache.org/jira/browse/IMPALA-5585) | BE tests for last\_day() not being called |  Major | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5650](https://issues.apache.org/jira/browse/IMPALA-5650) | COUNT(\*) optimization causes a crash when legacy aggregation is enabled |  Blocker | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-5524](https://issues.apache.org/jira/browse/IMPALA-5524) | NullPointerException during planning with DISABLE\_UNSAFE\_SPILLS=TRUE |  Major | Frontend | Alexander Behm | Vincent Tran |
| [IMPALA-5281](https://issues.apache.org/jira/browse/IMPALA-5281) | concurrent\_select.py still not failing when there is a results mismatch |  Critical | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-5513](https://issues.apache.org/jira/browse/IMPALA-5513) | When input invalid KEYVAL in impala-shell, the show message is abnormal |  Minor | Clients | Davy Xu | Davy Xu |
| [IMPALA-4866](https://issues.apache.org/jira/browse/IMPALA-4866) | Hash join node does not apply limits correctly |  Major | Backend | Tim Armstrong | Anuj Phadke |
| [IMPALA-5539](https://issues.apache.org/jira/browse/IMPALA-5539) | Reading timestamps from Kudu are wrong with -use\_local\_tz\_for\_unix\_ts |  Critical | Backend | yyzzjj | Matthew Jacobs |
| [IMPALA-5638](https://issues.apache.org/jira/browse/IMPALA-5638) | Alter table set tblproperties inconsistency for 'external' |  Minor | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5407](https://issues.apache.org/jira/browse/IMPALA-5407) | Crash SIGSEGV in DeepCopyVarlenData while inserting into sequencefile |  Major | Backend | Joe McDonnell | Attila Jeges |
| [IMPALA-5520](https://issues.apache.org/jira/browse/IMPALA-5520) | TopN node does not reuse string memory |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-5657](https://issues.apache.org/jira/browse/IMPALA-5657) | FunctionCallExpr.toSql() and clone() ignore "IGNORE NULLS" case |  Blocker | Frontend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-5627](https://issues.apache.org/jira/browse/IMPALA-5627) | Various dropped statuses in HDFS writers |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5582](https://issues.apache.org/jira/browse/IMPALA-5582) | Sentry privileges assigned to objects defined in upper case can get deleted from the catalog |  Major | Catalog | Anuj Phadke | Anuj Phadke |
| [IMPALA-5532](https://issues.apache.org/jira/browse/IMPALA-5532) | Don't heap-allocate compressor objects in RowBatch |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-5275](https://issues.apache.org/jira/browse/IMPALA-5275) | Avoid printing Status stack trace on hot paths |  Critical | Backend | Mostafa Mokhtar | Bikramjeet Vig |
| [IMPALA-4276](https://issues.apache.org/jira/browse/IMPALA-4276) | Non-default query options not always populated in runtime profile. |  Major | Backend | Alexander Behm | Bikramjeet Vig |
| [IMPALA-5679](https://issues.apache.org/jira/browse/IMPALA-5679) | Count star optimization gives incorrect result for parquet table partitioned by STRING column |  Blocker | Backend | Attila Jeges | Taras Bobrovytsky |
| [IMPALA-5686](https://issues.apache.org/jira/browse/IMPALA-5686) | Update to Sentry causes build failures |  Major | Infrastructure | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-5615](https://issues.apache.org/jira/browse/IMPALA-5615) | Compute Incremental stats is broken for general partition expressions |  Blocker | Frontend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-3487](https://issues.apache.org/jira/browse/IMPALA-3487) | stress test didn't fail on hash mismatch errors |  Minor | Infrastructure | Michael Brown |  |
| [IMPALA-3496](https://issues.apache.org/jira/browse/IMPALA-3496) | stress test output doesn't indicate the impala version |  Minor | Infrastructure | Daniel Hecht | Michael Brown |
| [IMPALA-5586](https://issues.apache.org/jira/browse/IMPALA-5586) | Null-aware anti-join can take a long time to cancel |  Minor | Backend | Tim Armstrong | Anuj Phadke |
| [IMPALA-5691](https://issues.apache.org/jira/browse/IMPALA-5691) | test\_low\_mem\_limit\_q18 is flaky |  Critical | . | Anuj Phadke | Tim Armstrong |
| [IMPALA-5733](https://issues.apache.org/jira/browse/IMPALA-5733) | Kudu tservers seem to be unresponsive after TestKuduMemLimits |  Critical | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5630](https://issues.apache.org/jira/browse/IMPALA-5630) | Add a string metric to expose the Kudu client version |  Minor | Backend | Matthew Jacobs | Bikramjeet Vig |
| [IMPALA-1882](https://issues.apache.org/jira/browse/IMPALA-1882) | Remove ORDER BY restriction from first\_value()/last\_value() |  Major | Frontend | Jonathan Seidman | Bikramjeet Vig |
| [IMPALA-5636](https://issues.apache.org/jira/browse/IMPALA-5636) | Impala writer claims that file uses BIT\_PACKED encoding when it doesn't |  Minor | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-5336](https://issues.apache.org/jira/browse/IMPALA-5336) | Inconsistent results when comparing string and timestamp fields |  Blocker | Frontend | Nicholas Brenwald | Matthew Jacobs |
| [IMPALA-5722](https://issues.apache.org/jira/browse/IMPALA-5722) | Converting a string decimal with a large negative exponent causes a crash |  Blocker | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-1891](https://issues.apache.org/jira/browse/IMPALA-1891) | Statestore sends deletions with initial non-delta topic |  Minor | Distributed Exec | Henry Robinson | Bikramjeet Vig |
| [IMPALA-1470](https://issues.apache.org/jira/browse/IMPALA-1470) | Client gets NullPointerException when catalog service is down |  Minor | Catalog | Henry Robinson | Tianyi Wang |
| [IMPALA-2826](https://issues.apache.org/jira/browse/IMPALA-2826) | Outer join w/ old HJ returns wrong results if 0 outer tbl cols referenced |  Major | Backend | Matthew Jacobs |  |
| [IMPALA-4226](https://issues.apache.org/jira/browse/IMPALA-4226) | Make breakpad dump\_syms handle more than 4096 threads and memory regions |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-3894](https://issues.apache.org/jira/browse/IMPALA-3894) | unix\_timestamp date conversion for 2-digit years is broken |  Major | Backend | Adriano Simone | Tianyi Wang |
| [IMPALA-5759](https://issues.apache.org/jira/browse/IMPALA-5759) | Switch to long key ids in KEYS file |  Critical | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5756](https://issues.apache.org/jira/browse/IMPALA-5756) | Impala crashes on startup in impala::SpinLock::lock() |  Blocker | Backend | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-5751](https://issues.apache.org/jira/browse/IMPALA-5751) | impala query KUDU  response authentication token signing key expired |  Critical | Backend | yyzzjj |  |
| [IMPALA-5742](https://issues.apache.org/jira/browse/IMPALA-5742) | Memory leak in parquet-reader |  Minor | . | Jim Apple | Henry Robinson |
| [IMPALA-5725](https://issues.apache.org/jira/browse/IMPALA-5725) | coalesce() not being fully applied with outer joins on kudu tables |  Blocker | Frontend | Michael Brown | Thomas Tauber-Marshall |
| [IMPALA-5484](https://issues.apache.org/jira/browse/IMPALA-5484) | LICENCE issues discovered in IPMC vote |  Blocker | Infrastructure | Jim Apple | Jim Apple |
| [IMPALA-5774](https://issues.apache.org/jira/browse/IMPALA-5774) | StringFunctions::FindInSet() may read one byte beyond a string's extent |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-5760](https://issues.apache.org/jira/browse/IMPALA-5760) | Flaky test: query\_test/test\_udfs.py |  Critical | Frontend | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-5781](https://issues.apache.org/jira/browse/IMPALA-5781) | thrift-server-test failed |  Blocker | Distributed Exec | Michael Ho | Henry Robinson |
| [IMPALA-5778](https://issues.apache.org/jira/browse/IMPALA-5778) | Clarify logging around and usage of read\_size startup option |  Major | Backend | Balazs Jeszenszky | Tim Armstrong |
| [IMPALA-5412](https://issues.apache.org/jira/browse/IMPALA-5412) | Scan returns wrong partition-column values when scanning multiple partitions pointing to the same filesystem location. |  Critical | Backend | Alexander Behm | Gabor Kaszab |
| [IMPALA-5772](https://issues.apache.org/jira/browse/IMPALA-5772) | Expected failure in test\_scratch\_disk.TestScratchDir didn't occur |  Blocker | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-5797](https://issues.apache.org/jira/browse/IMPALA-5797) | Expected failure in test\_scratch\_disk.TestScratchLimit didn't occur |  Blocker | Backend | Joe McDonnell | Tim Armstrong |
| [IMPALA-5708](https://issues.apache.org/jira/browse/IMPALA-5708) | Test failure with invalid GetExecSummary; potential coord. race |  Critical | Backend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-5773](https://issues.apache.org/jira/browse/IMPALA-5773) | Memory limit exceeded on test\_spilling.py |  Blocker | Backend | Michael Ho | Henry Robinson |
| [IMPALA-4861](https://issues.apache.org/jira/browse/IMPALA-4861) | READ\_WRITE warning thrown for source URI on CREATE TABLE LIKE PARQUET |  Major | Frontend | Greg Rahn | Pranay Singh |
| [IMPALA-1478](https://issues.apache.org/jira/browse/IMPALA-1478) | Improve error message when subquery is used in the ON clause |  Minor | Frontend | Dimitris Tsirogiannis | Pranay Singh |
| [IMPALA-5116](https://issues.apache.org/jira/browse/IMPALA-5116) | ex/hash\_map in gutil is deprecated |  Major | Backend | Jim Apple | Jin Chul Kim |
| [IMPALA-5775](https://issues.apache.org/jira/browse/IMPALA-5775) | Impala shell only supports TLSv1 |  Major | Clients | Henry Robinson | Henry Robinson |
| [IMPALA-5787](https://issues.apache.org/jira/browse/IMPALA-5787) | Dropped Status in KuduTableSink::Send() |  Major | Backend | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-4737](https://issues.apache.org/jira/browse/IMPALA-4737) | If minidumps are disabled, SIGUSR1 goes unhandled and will crash the process |  Critical | Backend | Lars Volker | Lars Volker |
| [IMPALA-5477](https://issues.apache.org/jira/browse/IMPALA-5477) | PPC port broke minidump-2-core in the toolchain |  Critical | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5769](https://issues.apache.org/jira/browse/IMPALA-5769) | Minidumps need periodic cleanup when triggered by SIGUSR1 |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-5598](https://issues.apache.org/jira/browse/IMPALA-5598) | ExecQueryFInstances RPC recv side timeouts (observed in stress test in insecure+release build) |  Blocker | Distributed Exec | Michael Brown | Joe McDonnell |
| [IMPALA-3931](https://issues.apache.org/jira/browse/IMPALA-3931) | Support aggregate functions with arbitrary fixed-size intermediate type |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5800](https://issues.apache.org/jira/browse/IMPALA-5800) | Configure Squeasel's TLS version / ciphers |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-5327](https://issues.apache.org/jira/browse/IMPALA-5327) | Handle return value and exception of JNI GetStringUTFChars() |  Critical | Backend | Alexander Behm | Tianyi Wang |
| [IMPALA-4039](https://issues.apache.org/jira/browse/IMPALA-4039) | Increase width of Operator column in query summary to match the widest entry |  Major | Backend | Mostafa Mokhtar | Tianyi Wang |
| [IMPALA-4666](https://issues.apache.org/jira/browse/IMPALA-4666) | Remove thirdparty from search dir for toolchain deps |  Minor | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-5796](https://issues.apache.org/jira/browse/IMPALA-5796) | CTAS for Kudu table and expr rewrite analysis exception |  Critical | Frontend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-5452](https://issues.apache.org/jira/browse/IMPALA-5452) | Nested subplans with non-trivial plan tree returns inconsistent results |  Critical | Infrastructure | Anuj Phadke | Alexander Behm |
| [IMPALA-5809](https://issues.apache.org/jira/browse/IMPALA-5809) | test\_breakpad.py failing on exhaustive builds |  Critical | Backend | Joe McDonnell | Lars Volker |
| [IMPALA-5776](https://issues.apache.org/jira/browse/IMPALA-5776) | HdfsTextScanner::WritePartialTuple() writes the varlen data to an incorrect memory pool |  Critical | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-5504](https://issues.apache.org/jira/browse/IMPALA-5504) | wrong results with LEFT JOIN, inline view, and COALESCE() |  Blocker | Frontend | Michael Brown | Alexander Behm |
| [IMPALA-5819](https://issues.apache.org/jira/browse/IMPALA-5819) | HdfsTextScanner::Close hitting DCHECK(boundary\_column\_.IsEmpty()) |  Blocker | Backend | Joe McDonnell | Tim Armstrong |
| [IMPALA-5236](https://issues.apache.org/jira/browse/IMPALA-5236) | Negative byte values are not printed with the correct unit |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5641](https://issues.apache.org/jira/browse/IMPALA-5641) | mem-estimate should never be less than mem-reservation |  Critical | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5825](https://issues.apache.org/jira/browse/IMPALA-5825) | TSSLSocket factory may throw uncaught exception |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-5824](https://issues.apache.org/jira/browse/IMPALA-5824) | TestSpilling.test\_spilling\_aggs failing: SpilledPartitions: 0 (0) |  Critical | Backend | David Knupp | Tim Armstrong |
| [IMPALA-5689](https://issues.apache.org/jira/browse/IMPALA-5689) | Query with no right join fails with an error that mentions a right join |  Major | Frontend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-5815](https://issues.apache.org/jira/browse/IMPALA-5815) | Right outer join returns reference to unpinned memory |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5749](https://issues.apache.org/jira/browse/IMPALA-5749) | Race in coordinator hits DCHECK on 'num\_remaining\_backends\_ \> 0' |  Blocker | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-4990](https://issues.apache.org/jira/browse/IMPALA-4990) | run-tests.py --update\_results doesn't work |  Major | Infrastructure | Daniel Hecht | Daniel Hecht |
| [IMPALA-5352](https://issues.apache.org/jira/browse/IMPALA-5352) | File handle cache needs timeout based eviction |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-5788](https://issues.apache.org/jira/browse/IMPALA-5788) | Spilling aggregation crashes when grouping by nondeterministic expression |  Critical | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-5531](https://issues.apache.org/jira/browse/IMPALA-5531) | Scalar subquery with correlated inequality predicate returns wrong results |  Critical | Frontend | Mala Chikka Kempanna | Dimitris Tsirogiannis |
| [IMPALA-5648](https://issues.apache.org/jira/browse/IMPALA-5648) | Count star optimisation regressed Parquet memory estimate accuracy |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5798](https://issues.apache.org/jira/browse/IMPALA-5798) | ASAN use-after-poison in Parquet decoder |  Blocker | Backend | Joe McDonnell | Thomas Tauber-Marshall |
| [IMPALA-5739](https://issues.apache.org/jira/browse/IMPALA-5739) | sles12 SP2 is not correctly detected by bootstrap\_toolchain.py |  Major | Infrastructure | Tim Armstrong |  |
| [IMPALA-5369](https://issues.apache.org/jira/browse/IMPALA-5369) | Old pom parent in testdata module |  Trivial | . | Grant Henke | Grant Henke |
| [IMPALA-5602](https://issues.apache.org/jira/browse/IMPALA-5602) | All predicates pushed to Kudu with limit runs incorrectly as 'small query' |  Major | Frontend | Matthew Jacobs | Bikramjeet Vig |
| [IMPALA-5784](https://issues.apache.org/jira/browse/IMPALA-5784) | Separate planner-set query options from user set ones in the profile |  Major | Backend | Balazs Jeszenszky | Bikramjeet Vig |
| [IMPALA-5799](https://issues.apache.org/jira/browse/IMPALA-5799) | INSERTs into Kudu can crash if a column is dropped concurrently |  Critical | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5838](https://issues.apache.org/jira/browse/IMPALA-5838) | Suggested MEM\_LIMIT in rejected query error may be too low |  Major | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5108](https://issues.apache.org/jira/browse/IMPALA-5108) | idle\_session\_timeout kicks in later than expected |  Major | Backend | Balazs Jeszenszky | Pranay Singh |
| [IMPALA-5857](https://issues.apache.org/jira/browse/IMPALA-5857) | Crash in impala::DiskIoMgr::ScanRange::Close-\> tc\_free while running concurrent TPC-DS |  Critical | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-5840](https://issues.apache.org/jira/browse/IMPALA-5840) | Don't write page level statistics in Parquet files in anticipation of page indexes |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-5850](https://issues.apache.org/jira/browse/IMPALA-5850) | Partitioned hash join inside union may return wrong results |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-5855](https://issues.apache.org/jira/browse/IMPALA-5855) | Preaggregation crashes - unable to initialise hash table |  Blocker | Backend | Matthew Mulder | Tim Armstrong |
| [IMPALA-2418](https://issues.apache.org/jira/browse/IMPALA-2418) | Increase the number of characters dedicated to the Detail column in query profile |  Minor | Clients | Mostafa Mokhtar | Tianyi Wang |
| [IMPALA-5894](https://issues.apache.org/jira/browse/IMPALA-5894) | Placement of straight\_join hint wrong in documentation |  Major | Docs | Alexander Behm | John Russell |
| [IMPALA-2636](https://issues.apache.org/jira/browse/IMPALA-2636) | HS2 GetTables() returns TABLE\_TYPE as TABLE for VIEW |  Minor | Catalog | Jenny Kim | sandeep akinapelli |
| [IMPALA-6028](https://issues.apache.org/jira/browse/IMPALA-6028) | Document max\_row\_size for upgrade awareness |  Blocker | Docs | Balazs Jeszenszky | John Russell |
| [IMPALA-5499](https://issues.apache.org/jira/browse/IMPALA-5499) | session-expiry-test failed because of conflicting ephemeral ports |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6873](https://issues.apache.org/jira/browse/IMPALA-6873) | Crash in Expr::GetConstVal() due to NULL dereference |  Blocker | Backend | Bharath Vissapragada |  |
| [IMPALA-6065](https://issues.apache.org/jira/browse/IMPALA-6065) | Document IMPALA-5743 |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-8206](https://issues.apache.org/jira/browse/IMPALA-8206) | Codegen crash on analytic functions in specific environments |  Blocker | Backend | Balazs Jeszenszky |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5390](https://issues.apache.org/jira/browse/IMPALA-5390) | Add test that file handle cache is disabled for S3,ADLS,Isilon |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-5780](https://issues.apache.org/jira/browse/IMPALA-5780) | Add missing test coverage for disable\_unsafe\_spills |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5779](https://issues.apache.org/jira/browse/IMPALA-5779) | Add test with spillable buffer size \> --read\_size |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5830](https://issues.apache.org/jira/browse/IMPALA-5830) | Add regression test for IMPALA-5823: fix SET\_DENY\_RESERVATION\_PROBABILITY |  Major | Backend | Tim Armstrong | Tim Armstrong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5345](https://issues.apache.org/jira/browse/IMPALA-5345) | Under stress, some TransmitData() RPCs are not responded to |  Critical | . | Henry Robinson | Henry Robinson |
| [IMPALA-5085](https://issues.apache.org/jira/browse/IMPALA-5085) | Backend support for large rows in BufferedTupleStream |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5566](https://issues.apache.org/jira/browse/IMPALA-5566) | Crash in impala::DataStreamSender::DataStreamSender |  Minor | Distributed Exec | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-5554](https://issues.apache.org/jira/browse/IMPALA-5554) | crash in impala::Sorter::Run::ConvertOffsetsToPtrs |  Critical | Distributed Exec | Matthew Mulder | Tim Armstrong |
| [IMPALA-5160](https://issues.apache.org/jira/browse/IMPALA-5160) | Queries with a large number of small joins regress in terms of memory usage due to memory reservation |  Major | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-3905](https://issues.apache.org/jira/browse/IMPALA-3905) | Single-threaded scan node |  Minor | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-4695](https://issues.apache.org/jira/browse/IMPALA-4695) | Planner incorrectly estimates cardinality for multi column joins |  Major | Frontend | Mostafa Mokhtar | Alexander Behm |
| [IMPALA-4174](https://issues.apache.org/jira/browse/IMPALA-4174) | Planner incorrectly estimates cardinality for many to many joins |  Major | Frontend | Mostafa Mokhtar | Alexander Behm |
| [IMPALA-5036](https://issues.apache.org/jira/browse/IMPALA-5036) | Improve COUNT(\*) performance of Parquet scans. |  Major | Backend | Alexander Behm | Taras Bobrovytsky |
| [IMPALA-4687](https://issues.apache.org/jira/browse/IMPALA-4687) | Get Impala working against HBase 2.0 APIs |  Major | Backend | Tim Armstrong | Joe McDonnell |
| [IMPALA-5618](https://issues.apache.org/jira/browse/IMPALA-5618) | Performance regresses on buffer pool dev branch for high-ndv aggregations |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5629](https://issues.apache.org/jira/browse/IMPALA-5629) | list::size() in BufferedTupleStreamV2::AdvanceWritePage() is expensive |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3748](https://issues.apache.org/jira/browse/IMPALA-3748) | Compute memory reservation in planner and claim atomically in Prepare() |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5093](https://issues.apache.org/jira/browse/IMPALA-5093) | Rare failure to decode LZ4 batch |  Blocker | Distributed Exec | Henry Robinson | Sailesh Mukil |
| [IMPALA-4925](https://issues.apache.org/jira/browse/IMPALA-4925) | Coordinator does not cancel fragments if query completes w/limit |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-5676](https://issues.apache.org/jira/browse/IMPALA-5676) | BufferedTupleStreamV2::CheckConsistency() is too slow for large streams with small pages in Debug build |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4905](https://issues.apache.org/jira/browse/IMPALA-4905) | Fragments always report insert status, even if not insert query |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-5757](https://issues.apache.org/jira/browse/IMPALA-5757) | Order-dependent comparison fails in query\_test/test\_kudu.py::TestShowCreateTable::()::test\_properties |  Major | Infrastructure | Jim Apple | Matthew Jacobs |
| [IMPALA-4674](https://issues.apache.org/jira/browse/IMPALA-4674) | Port spilling ExecNodes to new buffer pool |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2708](https://issues.apache.org/jira/browse/IMPALA-2708) | Partitioned aggregation node repartitions when spilled partition could fit in memory |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4703](https://issues.apache.org/jira/browse/IMPALA-4703) | Add reservation stress option for test coverage |  Minor | Backend | Daniel Hecht | Tim Armstrong |
| [IMPALA-5714](https://issues.apache.org/jira/browse/IMPALA-5714) | Openssl 1.0.0 shared library support for legacy platform |  Minor | Infrastructure | Michael Ho | Michael Ho |
| [IMPALA-5661](https://issues.apache.org/jira/browse/IMPALA-5661) | Consider allowing configuration of buffer pool size |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5575](https://issues.apache.org/jira/browse/IMPALA-5575) | BufferPoolTest ConcurrentRegistration is racy |  Major | Backend | Jim Apple | Tim Armstrong |
| [IMPALA-5622](https://issues.apache.org/jira/browse/IMPALA-5622) | Ensure test coverage for spilling disabled for all spilling operators |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-5681](https://issues.apache.org/jira/browse/IMPALA-5681) | Eagerly release reservation in blocking nodes |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5677](https://issues.apache.org/jira/browse/IMPALA-5677) | Consider ways to reduce the accumulation of clean pages when executing large spilling queries |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3205](https://issues.apache.org/jira/browse/IMPALA-3205) | Validate and fix spilling performance and memory usage of new buffer pool |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5158](https://issues.apache.org/jira/browse/IMPALA-5158) | Account for difference between process memory consumption and memory used by queries |  Critical | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-5810](https://issues.apache.org/jira/browse/IMPALA-5810) | Consider reducing RESERVATION\_MIN\_MEM\_REMAINING |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3208](https://issues.apache.org/jira/browse/IMPALA-3208) | Backend support for large rows |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5823](https://issues.apache.org/jira/browse/IMPALA-5823) | SET\_DENY\_RESERVATION\_PROBABILITY debug action is not always effective |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5570](https://issues.apache.org/jira/browse/IMPALA-5570) | Ensure that NAAJ works with spilling enabled and disabled. |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5713](https://issues.apache.org/jira/browse/IMPALA-5713) | Consider always reserving memory for grouping pre-aggregations |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4669](https://issues.apache.org/jira/browse/IMPALA-4669) | Add Kudu's RPC, util and security libraries |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-5667](https://issues.apache.org/jira/browse/IMPALA-5667) | Race in DataStreamSender could cause TransmitData sidecar corruption |  Blocker | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-5795](https://issues.apache.org/jira/browse/IMPALA-5795) | BackendConfig::LookUpBackendDescriptor() may fail to look up non-executor coordinator |  Critical | Distributed Exec | Sailesh Mukil | Michael Ho |
| [IMPALA-5382](https://issues.apache.org/jira/browse/IMPALA-5382) | Document ADLS support for Impala |  Major | Docs | John Russell | John Russell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5786](https://issues.apache.org/jira/browse/IMPALA-5786) | Document buffer pool changes |  Blocker | Docs | Tim Armstrong | John Russell |
| [IMPALA-6105](https://issues.apache.org/jira/browse/IMPALA-6105) | unix\_timestamp() documentation doesn't mention unit |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-5428](https://issues.apache.org/jira/browse/IMPALA-5428) | update external hadoop ecosystem versions |  Critical | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-3265](https://issues.apache.org/jira/browse/IMPALA-3265) | Create a metrics to track spilling per operator |  Minor | Backend | Alan Choi | Mostafa Mokhtar |
| [IMPALA-5652](https://issues.apache.org/jira/browse/IMPALA-5652) | Add deprecation warning for "unlimited" process mem\_limit |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5744](https://issues.apache.org/jira/browse/IMPALA-5744) | Add dummy 'use\_krpc' flag and create DataStream interface |  Critical | Distributed Exec | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-5376](https://issues.apache.org/jira/browse/IMPALA-5376) | Add all missing TPC-DS queries to functional tests |  Major | Infrastructure | Michael Ho | Tim Wood |
| [IMPALA-4803](https://issues.apache.org/jira/browse/IMPALA-4803) | Write release notes for 2.8 and 2.9 |  Blocker | Docs | Jim Apple | John Russell |
| [IMPALA-5501](https://issues.apache.org/jira/browse/IMPALA-5501) | Installation instructions are slim, but inaccurate |  Major | Docs | Jim Apple | John Russell |


