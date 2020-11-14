
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
# Apache Kudu Changelog

## Release 1.10.0 - 2019-07-09



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2825](https://issues.apache.org/jira/browse/KUDU-2825) | add a column named role in 'kudu master list' |  Minor | CLI | Dengguangchao | Dengguangchao |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2645](https://issues.apache.org/jira/browse/KUDU-2645) | Diff scanner should perform a merge on the rowset iterators at scan time |  Major | tablet | Mike Percy | Mike Percy |
| [KUDU-2791](https://issues.apache.org/jira/browse/KUDU-2791) | Consider adding a short ttl-cache for dns lookups |  Major | . | Grant Henke | Alexey Serbin |
| [KUDU-2514](https://issues.apache.org/jira/browse/KUDU-2514) | Support extra config for tables. |  Major | . | ZhangYao | Xu Yao |
| [KUDU-2398](https://issues.apache.org/jira/browse/KUDU-2398) | Kubernetes support |  Minor | ops-tooling | Leo Gallucci | Sandish Kumar HN |
| [KUDU-428](https://issues.apache.org/jira/browse/KUDU-428) | fine-grained authorization through Sentry integration |  Critical | master, security, tserver | Todd Lipcon | Hao Hao |
| [KUDU-2191](https://issues.apache.org/jira/browse/KUDU-2191) | Hive Metastore Integration |  Major | server | Dan Burkert | Hao Hao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2682](https://issues.apache.org/jira/browse/KUDU-2682) | java client authz token support |  Major | java, security | Andrew Wong | Andrew Wong |
| [KUDU-2674](https://issues.apache.org/jira/browse/KUDU-2674) | Add Java KuduPartitioner API |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2672](https://issues.apache.org/jira/browse/KUDU-2672) | Spark write to kudu, too many machines write to one tserver. |  Major | java, spark | yangz | Grant Henke |
| [KUDU-2734](https://issues.apache.org/jira/browse/KUDU-2734) | RemoteKsckTest.TestClusterWithLocation is flaky |  Major | test | Mike Percy | William Berkeley |
| [KUDU-2750](https://issues.apache.org/jira/browse/KUDU-2750) | Add create timestamp to every table |  Major | master | LiFu He | LiFu He |
| [KUDU-2755](https://issues.apache.org/jira/browse/KUDU-2755) | Protoc 3.7.0 links against libatomic and can break the Java build |  Minor | java | Grant Henke | Grant Henke |
| [KUDU-1711](https://issues.apache.org/jira/browse/KUDU-1711) | Add support for storing column comments in ColumnSchema |  Minor | impala | Dimitris Tsirogiannis | LiFu He |
| [KUDU-2712](https://issues.apache.org/jira/browse/KUDU-2712) | Cache assigned locations in master |  Major | master | Alexey Serbin | Alexey Serbin |
| [KUDU-2762](https://issues.apache.org/jira/browse/KUDU-2762) | Improve write transaction tracing |  Major | . | William Berkeley | Mitch Barnett |
| [KUDU-2808](https://issues.apache.org/jira/browse/KUDU-2808) | Correct documentation for default compression |  Minor | documentation | Mitch Barnett | Mitch Barnett |
| [KUDU-2802](https://issues.apache.org/jira/browse/KUDU-2802) | The Java client tableExists should use GetTableSchema |  Major | . | Grant Henke | Xu Yao |
| [KUDU-2826](https://issues.apache.org/jira/browse/KUDU-2826) | Add redo tail for mutation list to accelerate UPDATE in memrowset |  Major | . | ZhangYao | ZhangYao |
| [KUDU-2677](https://issues.apache.org/jira/browse/KUDU-2677) | Implement new gflag for backup history retention |  Critical | . | Grant Henke | William Berkeley |
| [KUDU-2813](https://issues.apache.org/jira/browse/KUDU-2813) | Set Spark job descriptions for backup and restore jobs |  Major | backup | Grant Henke | Grant Henke |
| [KUDU-2605](https://issues.apache.org/jira/browse/KUDU-2605) | NVM library update |  Major | . | YuQiang Ye | YuQiang Ye |
| [KUDU-2711](https://issues.apache.org/jira/browse/KUDU-2711) | Improve performance of GetTableLocations for large tables |  Major | master, perf | Todd Lipcon | William Berkeley |
| [KUDU-2786](https://issues.apache.org/jira/browse/KUDU-2786) | Parallelize tables for backup and restore |  Major | . | Grant Henke | William Berkeley |
| [KUDU-2787](https://issues.apache.org/jira/browse/KUDU-2787) | Allow single table failures for backup and restore |  Major | . | Grant Henke | William Berkeley |
| [KUDU-2717](https://issues.apache.org/jira/browse/KUDU-2717) | Add an environment variable for username override in non-secure clusters |  Major | security, util | Todd Lipcon | Todd Lipcon |
| [KUDU-2785](https://issues.apache.org/jira/browse/KUDU-2785) | Support more parallel scanners in the backup job |  Major | . | Grant Henke | Grant Henke |
| [KUDU-1575](https://issues.apache.org/jira/browse/KUDU-1575) | Backup and restore procedures |  Major | master, tserver | Mike Percy | Mike Percy |
| [KUDU-2830](https://issues.apache.org/jira/browse/KUDU-2830) | Improve RPC traces on RPC timeout |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2841](https://issues.apache.org/jira/browse/KUDU-2841) | Expose HMS DB UUID to clients in MetastoreConfig |  Major | hms, master | Todd Lipcon | Todd Lipcon |
| [KUDU-2728](https://issues.apache.org/jira/browse/KUDU-2728) | A TabletService queue overflow on a write causes a GetTableLocations call in the Java client |  Major | . | William Berkeley | William Berkeley |
| [KUDU-1511](https://issues.apache.org/jira/browse/KUDU-1511) | Register Kudu tables created via the Java client with Impala |  Major | client, impala | Andrew Stevenson |  |
| [KUDU-2846](https://issues.apache.org/jira/browse/KUDU-2846) | Special case predicate evaluation for SIMD support |  Major | perf, tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-2873](https://issues.apache.org/jira/browse/KUDU-2873) | Java client's splitKeyRange doesn't seem to pick up an authz token |  Major | authz | Andrew Wong | Andrew Wong |
| [KUDU-2824](https://issues.apache.org/jira/browse/KUDU-2824) | Make some tables in high priority in MM compaction |  Minor | tserver | Yingchun Lai | Yingchun Lai |
| [KUDU-2548](https://issues.apache.org/jira/browse/KUDU-2548) | Rebalancer tool should be able to run even if there are permanently dead tablet servers |  Major | . | William Berkeley | William Berkeley |
| [KUDU-2789](https://issues.apache.org/jira/browse/KUDU-2789) | Document how to use/run the backup and restore jobs |  Major | . | Grant Henke |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2676](https://issues.apache.org/jira/browse/KUDU-2676) | Restore: Support creating tables with greater than the maximum allowed number of partitions |  Major | . | Grant Henke | William Berkeley |
| [KUDU-2695](https://issues.apache.org/jira/browse/KUDU-2695) | Python client cannot connect on Ubuntu 18 |  Blocker | client, python, security | Todd Lipcon | Alexey Serbin |
| [KUDU-2699](https://issues.apache.org/jira/browse/KUDU-2699) | kudu-tidy-bot job no longer running the build |  Critical | test | Adar Dembo | Alexey Serbin |
| [KUDU-1900](https://issues.apache.org/jira/browse/KUDU-1900) | Localhost connections to single-host clusters on Ubuntu don't skip TLS |  Major | perf, security | Todd Lipcon | Greg Solovyev |
| [KUDU-2706](https://issues.apache.org/jira/browse/KUDU-2706) | Race in CanonicalizeKrb5Principal() due to lazy initialization of g\_kinit\_ctx-\>default\_realm |  Critical | security | Michael Ho | Michael Ho |
| [KUDU-2721](https://issues.apache.org/jira/browse/KUDU-2721) | CHECK can be hit when there are gaps in present CPU numbers |  Critical | . | Tim Armstrong | Tim Armstrong |
| [KUDU-2716](https://issues.apache.org/jira/browse/KUDU-2716) | rapidjson mishandles kMinInt32 and kMinInt64 |  Major | util | Adar Dembo | Yingchun Lai |
| [KUDU-2741](https://issues.apache.org/jira/browse/KUDU-2741) | Failure in TestMergeIterator.TestDeDupGhostRows |  Major | . | William Berkeley | Mike Percy |
| [KUDU-2743](https://issues.apache.org/jira/browse/KUDU-2743) | A process spawned by Subprocess::Start() can deadlock |  Critical | . | Alexey Serbin | Alexey Serbin |
| [KUDU-2576](https://issues.apache.org/jira/browse/KUDU-2576) | TlsSocketTest.TestRecvFailure is flaky |  Major | security | Adar Dembo | William Berkeley |
| [KUDU-2749](https://issues.apache.org/jira/browse/KUDU-2749) | Both BlockCache and FileCache use the same set of metric gauge instances |  Major | . | Alexey Serbin | Alexey Serbin |
| [KUDU-2748](https://issues.apache.org/jira/browse/KUDU-2748) | Leader master erroneously tries to tablet copy to a follower master due to race at startup |  Major | . | William Berkeley | William Berkeley |
| [KUDU-2687](https://issues.apache.org/jira/browse/KUDU-2687) | ITClient retries are broken |  Major | java, test | Adar Dembo | Adar Dembo |
| [KUDU-2757](https://issues.apache.org/jira/browse/KUDU-2757) | Retry OpenSSL downloads |  Major | . | Hao Hao | Hao Hao |
| [KUDU-2760](https://issues.apache.org/jira/browse/KUDU-2760) | kudu-tool-test.TestCopyTable is flaky |  Major | test | Hao Hao | Yingchun Lai |
| [KUDU-2466](https://issues.apache.org/jira/browse/KUDU-2466) | Fault tolerant scanners can over-allocate memory and crash a cluster |  Critical | tserver | Grant Henke | Adar Dembo |
| [KUDU-2796](https://issues.apache.org/jira/browse/KUDU-2796) | Restore job mangles HDFS paths |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2806](https://issues.apache.org/jira/browse/KUDU-2806) | Row count mismatch in testForceIncrementalBackup |  Major | backup | William Berkeley | Grant Henke |
| [KUDU-2812](https://issues.apache.org/jira/browse/KUDU-2812) | Problem with error reporting in kudu-backup |  Major | backup | William Berkeley | Grant Henke |
| [KUDU-2819](https://issues.apache.org/jira/browse/KUDU-2819) | SIGSEGV during kudu cluster rebalance |  Major | . | Mitch Barnett | Alexey Serbin |
| [KUDU-2807](https://issues.apache.org/jira/browse/KUDU-2807) | Possible crash when flush or compaction overlaps with another compaction |  Blocker | tablet | Adar Dembo | William Berkeley |
| [KUDU-2763](https://issues.apache.org/jira/browse/KUDU-2763) | Confusing "log matching property violated" message on new tablets |  Major | consensus, supportability | Todd Lipcon | Mitch Barnett |
| [KUDU-2705](https://issues.apache.org/jira/browse/KUDU-2705) | /scans should show more useful time metrics |  Major | supportability, ui | Adar Dembo | William Berkeley |
| [KUDU-2831](https://issues.apache.org/jira/browse/KUDU-2831) | DistributedDataGeneratorTest.testGenerateRandomData is flaky |  Major | spark, test | Adar Dembo | William Berkeley |
| [KUDU-2775](https://issues.apache.org/jira/browse/KUDU-2775) | DefaultSourceTest.testRepartition test scenario is flaky |  Major | java, spark, test | Alexey Serbin | Grant Henke |
| [KUDU-2809](https://issues.apache.org/jira/browse/KUDU-2809) | Incremental backup / diff scan does not handle rows that are inserted and deleted between two incrementals correctly |  Major | backup | William Berkeley | Adar Dembo |
| [KUDU-2848](https://issues.apache.org/jira/browse/KUDU-2848) | HMS DB UUID fetching requires HMS to be running when Kudu Master starts |  Blocker | hms, master | Adar Dembo | Adar Dembo |
| [KUDU-2767](https://issues.apache.org/jira/browse/KUDU-2767) | Java test TestAuthTokenReacquire is flaky |  Major | test | Hao Hao | William Berkeley |
| [KUDU-1521](https://issues.apache.org/jira/browse/KUDU-1521) | Flakiness in TestAsyncKuduSession |  Major | client | Adar Dembo | William Berkeley |
| [KUDU-2629](https://issues.apache.org/jira/browse/KUDU-2629) | TestHybridTime is flaky |  Major | java, test | Andrew Wong | William Berkeley |
| [KUDU-2850](https://issues.apache.org/jira/browse/KUDU-2850) | Thrift comparison is broken |  Blocker | authz | Andrew Wong | Andrew Wong |
| [KUDU-2810](https://issues.apache.org/jira/browse/KUDU-2810) | Restore needs DELETE\_IGNORE |  Major | backup | William Berkeley | Grant Henke |
| [KUDU-2427](https://issues.apache.org/jira/browse/KUDU-2427) | Add support for Ubuntu 18.04 |  Major | master, tserver | Adar Dembo | Adar Dembo |
| [KUDU-2870](https://issues.apache.org/jira/browse/KUDU-2870) | Checksum scan fails with "Not authorized" error when authz enabled |  Critical | authz | Mike Percy | Andrew Wong |
| [KUDU-2869](https://issues.apache.org/jira/browse/KUDU-2869) | Internal compiler error compiling with devtoolset-7 on el7 |  Major | . | Todd Lipcon | Todd Lipcon |
| [KUDU-2602](https://issues.apache.org/jira/browse/KUDU-2602) | testRandomBackupAndRestore is flaky |  Major | . | Hao Hao | William Berkeley |
| [KUDU-2534](https://issues.apache.org/jira/browse/KUDU-2534) | Backup/Restore: Tablet hard limit hit when restoring tables |  Major | . | Tony Foerster |  |
| [KUDU-2883](https://issues.apache.org/jira/browse/KUDU-2883) | HMS check/fix tool should accommodate tables without ID for dropping orphan hms tables. |  Major | CLI, hms | Hao Hao | Grant Henke |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2790](https://issues.apache.org/jira/browse/KUDU-2790) | Enhance the backup and restore tests |  Critical | . | Grant Henke | Grant Henke |
| [KUDU-2764](https://issues.apache.org/jira/browse/KUDU-2764) | Timeout in sentry\_authz\_provider-test |  Major | . | Hao Hao | Andrew Wong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2543](https://issues.apache.org/jira/browse/KUDU-2543) | client authorization token support |  Major | master | Dan Burkert | Andrew Wong |
| [KUDU-2541](https://issues.apache.org/jira/browse/KUDU-2541) | server-side Sentry Client |  Major | server | Dan Burkert | Dan Burkert |
| [KUDU-2590](https://issues.apache.org/jira/browse/KUDU-2590) | Master access control enforcement of CREATE/ALTER/DROP table operations |  Major | master | Dan Burkert | Hao Hao |
| [KUDU-2542](https://issues.apache.org/jira/browse/KUDU-2542) | Fill-out AuthzToken definition |  Major | security | Dan Burkert | Andrew Wong |
| [KUDU-2834](https://issues.apache.org/jira/browse/KUDU-2834) | Add Kubernetes Helm Charts |  Major | . | Sandish Kumar HN | Sandish Kumar HN |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2099](https://issues.apache.org/jira/browse/KUDU-2099) | Drop Java 7 Support |  Major | java | Grant Henke | Adar Dembo |
| [KUDU-2744](https://issues.apache.org/jira/browse/KUDU-2744) | Add RPC support for diff scans |  Major | backup | Mike Percy | Mike Percy |
| [KUDU-2449](https://issues.apache.org/jira/browse/KUDU-2449) | Document best practices for adding a new tablet server |  Major | documentation | Grant Henke | Mitch Barnett |
| [KUDU-2862](https://issues.apache.org/jira/browse/KUDU-2862) | Write a docker based quickstart |  Major | documentation | Grant Henke | Grant Henke |
| [KUDU-2861](https://issues.apache.org/jira/browse/KUDU-2861) | Docker examples with external access |  Major | docker | Grant Henke | Grant Henke |


