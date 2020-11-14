
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

## Release 1.9.0 - 2019-03-12



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2606](https://issues.apache.org/jira/browse/KUDU-2606) | Use Spark's built in Avro support |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2640](https://issues.apache.org/jira/browse/KUDU-2640) | Add a KuduSink for Spark Structured Streaming |  Major | . | Grant Henke | Grant Henke |
| [KUDU-886](https://issues.apache.org/jira/browse/KUDU-886) | Cluster load balancing |  Major | master | Todd Lipcon | William Berkeley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2056](https://issues.apache.org/jira/browse/KUDU-2056) | Expose a metric for how much a tablet needs to be compacted |  Major | tablet | Jean-Daniel Cryans | William Berkeley |
| [KUDU-2245](https://issues.apache.org/jira/browse/KUDU-2245) | Leadership transfer (graceful step down) |  Major | consensus | Mike Percy | William Berkeley |
| [KUDU-686](https://issues.apache.org/jira/browse/KUDU-686) | Delta apply optimizations |  Trivial | perf, tablet | David Alves | Adar Dembo |
| [KUDU-2378](https://issues.apache.org/jira/browse/KUDU-2378) | Crash due to unaligned loads when building with clang 6.0 |  Major | . | Todd Lipcon | Adar Dembo |
| [KUDU-2607](https://issues.apache.org/jira/browse/KUDU-2607) | master\_cert\_authority-itest detected memory leaks |  Major | . | Hao Hao |  |
| [KUDU-2636](https://issues.apache.org/jira/browse/KUDU-2636) | LBM should delete full and dead containers at runtime |  Major | fs, util | LiFu He | LiFu He |
| [KUDU-2411](https://issues.apache.org/jira/browse/KUDU-2411) | Create a public test utility artifact |  Major | java | Grant Henke | Grant Henke |
| [KUDU-2477](https://issues.apache.org/jira/browse/KUDU-2477) | Master web UI table detail page should clearly indicate primary key |  Major | ui | Mike Percy | Greg Solovyev |
| [KUDU-1331](https://issues.apache.org/jira/browse/KUDU-1331) | Add scripts to build environment easier with Docker |  Major | build | Tsuyoshi Ozawa | Grant Henke |
| [KUDU-2930](https://issues.apache.org/jira/browse/KUDU-2930) | CLI tooling to assess the memory usage in Kudu |  Major | ops-tooling, tablet | Andrew Wong |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1678](https://issues.apache.org/jira/browse/KUDU-1678) | Race during abort of pending operations during raft shutdown |  Major | consensus | Todd Lipcon | William Berkeley |
| [KUDU-2517](https://issues.apache.org/jira/browse/KUDU-2517) | exactly\_once\_write-itest sometimes returns with a memory leak |  Major | test | Andrew Wong | Andrew Wong |
| [KUDU-2583](https://issues.apache.org/jira/browse/KUDU-2583) | LeakSanitizer failure in kudu-admin-test |  Major | . | Mike Percy |  |
| [KUDU-2620](https://issues.apache.org/jira/browse/KUDU-2620) | Flaky TestMiniSentryLifecycle |  Major | . | Hao Hao | Hao Hao |
| [KUDU-2599](https://issues.apache.org/jira/browse/KUDU-2599) | Timeout in DefaultSourceTest.testSocketReadTimeoutPropagation |  Major | spark | William Berkeley | Adar Dembo |
| [KUDU-2584](https://issues.apache.org/jira/browse/KUDU-2584) | Flaky testSimpleBackupAndRestore |  Major | backup | Mike Percy | Grant Henke |
| [KUDU-2551](https://issues.apache.org/jira/browse/KUDU-2551) | TsRecoveryITest.TestTabletRecoveryAfterSegmentDelete is a bit flaky |  Minor | test | Alexey Serbin | Andrew Wong |
| [KUDU-2608](https://issues.apache.org/jira/browse/KUDU-2608) | Memory leak in RaftConsensusStressITest |  Major | . | Hao Hao |  |
| [KUDU-1375](https://issues.apache.org/jira/browse/KUDU-1375) | Docs about installing Kudu binaries from source are misleading |  Major | documentation | Casey Ching | Alexandra Rodoni |
| [KUDU-2387](https://issues.apache.org/jira/browse/KUDU-2387) | exportAuthenticationCredentials does not retry connectToCluster |  Critical | java | Todd Lipcon | Adar Dembo |
| [KUDU-2588](https://issues.apache.org/jira/browse/KUDU-2588) | Test\_KUDU\_1735 scenario of RaftConsensusParamReplicationModesITest is flaky |  Major | test | Alexey Serbin |  |
| [KUDU-683](https://issues.apache.org/jira/browse/KUDU-683) | Clean up multi-master tech debt |  Major | client | Adar Dembo | Andrew Wong |
| [KUDU-2236](https://issues.apache.org/jira/browse/KUDU-2236) | org.apache.kudu.client.TestKuduClient flaky |  Major | test | Edward Fancher | Andrew Wong |
| [KUDU-2456](https://issues.apache.org/jira/browse/KUDU-2456) | TransactionTracker logs too much when there are many pending transactions |  Major | tablet | Adar Dembo | Bankim Bhavsar |
| [KUDU-2662](https://issues.apache.org/jira/browse/KUDU-2662) | TestKuduClient.testClientLocation is flaky |  Major | java, test | Andrew Wong | William Berkeley |
| [KUDU-2668](https://issues.apache.org/jira/browse/KUDU-2668) | TestKuduClient.readYourWrites tests are flaky |  Critical | java, test | Adar Dembo | Hao Hao |
| [KUDU-2675](https://issues.apache.org/jira/browse/KUDU-2675) | RegexpKuduOperationsProducerParseErrorTest fails with OOM in testBadColumnValueThrowsExceptionDefaultConfig |  Major | flume-sink | William Berkeley | Hao Hao |
| [KUDU-2557](https://issues.apache.org/jira/browse/KUDU-2557) | Sometimes the rebalancer-related tests are runing for too long |  Minor | CLI, test | Alexey Serbin | Alexey Serbin |
| [KUDU-2665](https://issues.apache.org/jira/browse/KUDU-2665) | BlockManagerStressTest.StressTest is extremely flaky |  Blocker | fs | Mike Percy | LiFu He |
| [KUDU-2684](https://issues.apache.org/jira/browse/KUDU-2684) | Tablet servers can start up with duplicate masters specified |  Major | tserver | Andrew Wong | Andrew Wong |
| [KUDU-2680](https://issues.apache.org/jira/browse/KUDU-2680) | Tombstones should be ignored in kudu fs update\_dirs tablet failure check |  Major | CLI, fs | Adar Dembo | Andrew Wong |
| [KUDU-2688](https://issues.apache.org/jira/browse/KUDU-2688) | LA rebalancer tries to amend non-fixable policy violations in case of RF=2 and three and more locations |  Major | CLI | Alexey Serbin | Alexey Serbin |
| [KUDU-2508](https://issues.apache.org/jira/browse/KUDU-2508) | nscd should be recommended even when /etc/hosts is used for name resolution |  Major | documentation | Adar Dembo | Alexandra Rodoni |
| [KUDU-2686](https://issues.apache.org/jira/browse/KUDU-2686) | test\_scantoken.py hangs in the python2 build |  Major | python | Andrew Wong | Andrew Wong |
| [KUDU-2704](https://issues.apache.org/jira/browse/KUDU-2704) | Rowsets that are much bigger than the target size discourage compactions |  Blocker | . | William Berkeley | William Berkeley |
| [KUDU-2701](https://issues.apache.org/jira/browse/KUDU-2701) | Compaction loop resulting from small rowset compaction policy (KUDU-1400) |  Blocker | tablet | William Berkeley | William Berkeley |
| [KUDU-2653](https://issues.apache.org/jira/browse/KUDU-2653) | The ASAN test failed on Debian 8.9 |  Major | test | LiFu He | Adar Dembo |
| [KUDU-2710](https://issues.apache.org/jira/browse/KUDU-2710) | Retries of scanner keep alive requests are broken in the Java client |  Critical | . | William Berkeley | Grant Henke |
| [KUDU-1868](https://issues.apache.org/jira/browse/KUDU-1868) | Java client mishandles socket read timeouts for scans |  Major | client | Jean-Daniel Cryans | William Berkeley |
| [KUDU-860](https://issues.apache.org/jira/browse/KUDU-860) | AlterSchema should log its success or failure in the COMMIT message |  Major | tablet | Todd Lipcon | Todd Lipcon |
| [KUDU-2690](https://issues.apache.org/jira/browse/KUDU-2690) | Alter schema seems to be missing |  Major | log, master, tablet | Andrew Wong | Andrew Wong |
| [KUDU-2659](https://issues.apache.org/jira/browse/KUDU-2659) | java kudu-client session can be used again after close |  Major | . | KarlManong |  |
| [KUDU-803](https://issues.apache.org/jira/browse/KUDU-803) | "Could not prepare op" log message is confusing |  Major | consensus | Todd Lipcon | Alexey Serbin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2533](https://issues.apache.org/jira/browse/KUDU-2533) | Add  bloomfilter predicate in server side. |  Major | tablet | ZhangYao | ZhangYao |


