
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

## Release 1.12.0 - 2020-05-11



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1938](https://issues.apache.org/jira/browse/KUDU-1938) | Support for VARCHAR type |  Major | client, tablet | Farzana Kader | Attila Bukor |
| [KUDU-3070](https://issues.apache.org/jira/browse/KUDU-3070) | allow skip open block manager in cli cmeta rewrite\_raft\_config operation |  Minor | CLI | wangningito | wangningito |
| [KUDU-2573](https://issues.apache.org/jira/browse/KUDU-2573) | Fully support Chrony in place of NTP |  Major | clock, master, tserver | Grant Henke | Alexey Serbin |
| [KUDU-2632](https://issues.apache.org/jira/browse/KUDU-2632) | Add DATE data type |  Major | tablet | Adar Dembo | Vladimir Verjovkin |
| [KUDU-2970](https://issues.apache.org/jira/browse/KUDU-2970) |  Fine-grained authorization with Ranger |  Major | security | Hao Hao | Hao Hao |
| [KUDU-3011](https://issues.apache.org/jira/browse/KUDU-3011) | Support for smooth maintenance window |  Major | . | LiFu He | Andrew Wong |
| [KUDU-2483](https://issues.apache.org/jira/browse/KUDU-2483) | Scan tablets with bloom filter |  Major | client | Jin Xing | Bankim Bhavsar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2962](https://issues.apache.org/jira/browse/KUDU-2962) | Fix kudu::itest::FindTabletFollowers() test utility function |  Minor | test | Alexey Serbin | Bankim Bhavsar |
| [KUDU-2979](https://issues.apache.org/jira/browse/KUDU-2979) | Add wrap up function of krb5\_parse\_name, so it can be called from Impala |  Major | security | Xiaomeng Zhang | Xiaomeng Zhang |
| [KUDU-2356](https://issues.apache.org/jira/browse/KUDU-2356) | Idle WALs can consume significant memory |  Major | log, tserver | Todd Lipcon | Andrew Wong |
| [KUDU-2929](https://issues.apache.org/jira/browse/KUDU-2929) | Don't starve compactions under memory pressure |  Major | perf, tablet | Andrew Wong | Andrew Wong |
| [KUDU-2977](https://issues.apache.org/jira/browse/KUDU-2977) | Sharding block map of LogBlockManager |  Major | fs | Yingchun Lai | Yingchun Lai |
| [KUDU-2914](https://issues.apache.org/jira/browse/KUDU-2914) | Rebalance tool support moving replicas from some specific tablet servers |  Minor | CLI | YifanZhang | YifanZhang |
| [KUDU-2162](https://issues.apache.org/jira/browse/KUDU-2162) | Expose stats about scan filters |  Major | client | Thomas Tauber-Marshall | Thomas D'Silva |
| [KUDU-3008](https://issues.apache.org/jira/browse/KUDU-3008) | Don't put all replicas into one location with 2 locations and odd replica factor. |  Minor | master | ZhangYao | ZhangYao |
| [KUDU-3001](https://issues.apache.org/jira/browse/KUDU-3001) | Multi-thread to load containers in a data directory |  Major | . | Yingchun Lai | Yingchun Lai |
| [KUDU-2992](https://issues.apache.org/jira/browse/KUDU-2992) | Limit concurrent alter request of a table |  Major | master | Yingchun Lai | YifanZhang |
| [KUDU-3002](https://issues.apache.org/jira/browse/KUDU-3002) | DMS may never flush when under memory pressure and there are on-going inserts |  Major | perf, tablet | Andrew Wong |  |
| [KUDU-2993](https://issues.apache.org/jira/browse/KUDU-2993) | Allow Kudu to start up with a fresh data directory without running update\_dirs |  Major | fs | Andrew Wong | Andrew Wong |
| [KUDU-3027](https://issues.apache.org/jira/browse/KUDU-3027) | gcc error: unrecognized command line option '-msse4.2' on aarch64 |  Major | . | huangtianhua | huangtianhua |
| [KUDU-3029](https://issues.apache.org/jira/browse/KUDU-3029) | error raised on aarch64: #error You need to define CycleTimer for your O/S and CPU |  Major | . | huangtianhua | huangtianhua |
| [KUDU-3005](https://issues.apache.org/jira/browse/KUDU-3005) | Reduce size of kudu-python docker image |  Major | build | Grant Henke | Grant Henke |
| [KUDU-3016](https://issues.apache.org/jira/browse/KUDU-3016) | Catalog manager: don't lump together all updates from one tablet report |  Major | master | Alexey Serbin | Alexey Serbin |
| [KUDU-3023](https://issues.apache.org/jira/browse/KUDU-3023) | Enforce consistency between maximum RPC size and maximum size of transaction |  Major | master, tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-1438](https://issues.apache.org/jira/browse/KUDU-1438) | [java client] Upgrade to Netty 4 |  Major | client | Jean-Daniel Cryans | Grant Henke |
| [KUDU-2996](https://issues.apache.org/jira/browse/KUDU-2996) | Log trace when --rpc\_duration\_too\_long\_ms is exceeded |  Major | rpc | Tim Armstrong | Tim Armstrong |
| [KUDU-3049](https://issues.apache.org/jira/browse/KUDU-3049) | [spark] Support automatic handling of schema drift |  Minor | spark | Grant Henke | Grant Henke |
| [KUDU-3047](https://issues.apache.org/jira/browse/KUDU-3047) | Implement automatic selection of the time source for Kudu |  Major | . | Alexey Serbin | Alexey Serbin |
| [KUDU-3048](https://issues.apache.org/jira/browse/KUDU-3048) | Add time/clock synchronization metrics |  Major | clock, master, tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-3050](https://issues.apache.org/jira/browse/KUDU-3050) | Recover gracefully from corrupt kerberos credential cache |  Major | security | Tim Armstrong | Tim Armstrong |
| [KUDU-2226](https://issues.apache.org/jira/browse/KUDU-2226) | Tablets with too many DRSs will cause a huge DMS memory overhead |  Major | . | ZhangZhen |  |
| [KUDU-1950](https://issues.apache.org/jira/browse/KUDU-1950) | TS runs out of FDs for WALs when running many tablets |  Major | consensus, fs, tserver | David Alves |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2964](https://issues.apache.org/jira/browse/KUDU-2964) | Summarize output when GetFlags returns InvalidArgument |  Major | ksck | Adar Dembo | Bankim Bhavsar |
| [KUDU-2949](https://issues.apache.org/jira/browse/KUDU-2949) | Thread collision in consensus current\_term |  Major | . | Andrew Wong | Adar Dembo |
| [KUDU-2904](https://issues.apache.org/jira/browse/KUDU-2904) | Master shouldn't allow master tablet operations after a disk failure |  Critical | fs, master | Adar Dembo | Bankim Bhavsar |
| [KUDU-2990](https://issues.apache.org/jira/browse/KUDU-2990) | Kudu can't distribute libnuma (dependency of memkind) |  Blocker | util | Adar Dembo | Adar Dembo |
| [KUDU-2994](https://issues.apache.org/jira/browse/KUDU-2994) | KuduTestHarness fails to start with NTP error when using kudu-binary 1.11.0 |  Critical | test | Greg Solovyev |  |
| [KUDU-2989](https://issues.apache.org/jira/browse/KUDU-2989) | SASL server fails when FQDN is greater than 63 characters long |  Critical | rpc, security | Todd Lipcon |  |
| [KUDU-3017](https://issues.apache.org/jira/browse/KUDU-3017) | master crashes on attempt to replay orphaned ops in WAL, not reporting the root cause of the problem |  Minor | master | Alexey Serbin |  |
| [KUDU-2839](https://issues.apache.org/jira/browse/KUDU-2839) | RebalanceParamTest.Rebalance in attemp to get location for non-participant in a tablet's Raft configuration |  Major | . | Alexey Serbin | Alexey Serbin |
| [KUDU-3032](https://issues.apache.org/jira/browse/KUDU-3032) | key columns unnecessarily selected when predicate is converted to range |  Major | perf | Todd Lipcon | ZhangYao |
| [KUDU-3035](https://issues.apache.org/jira/browse/KUDU-3035) | createRequestPB() in Batch.java doesn't set the last propagated timestamp on the builder |  Major | java | Andy | Andy |
| [KUDU-2496](https://issues.apache.org/jira/browse/KUDU-2496) | TabletCopyClientSessionITest.TestStopCopyOnClientDiskFailure is flaky |  Major | test | Adar Dembo | Andrew Wong |
| [KUDU-3036](https://issues.apache.org/jira/browse/KUDU-3036) | RPC size multiplication for DDL operations might hit maximum RPC size limit |  Major | master, rpc | Alexey Serbin | Alexey Serbin |
| [KUDU-3042](https://issues.apache.org/jira/browse/KUDU-3042) | DCHECK hit in Connection::HandleOutboundCallTimeout |  Critical | rpc | Thomas Tauber-Marshall |  |
| [KUDU-2987](https://issues.apache.org/jira/browse/KUDU-2987) | Intra location rebalance will crash in special case |  Major | CLI | ZhangYao | ZhangYao |
| [KUDU-2155](https://issues.apache.org/jira/browse/KUDU-2155) | Disarm failure detector during an election |  Major | consensus | Adar Dembo | Adar Dembo |
| [KUDU-3056](https://issues.apache.org/jira/browse/KUDU-3056) | kudu-spark HdrHistogramAccumulator is too big, and make spark  job failed |  Major | spark | caiconghui | Grant Henke |
| [KUDU-3067](https://issues.apache.org/jira/browse/KUDU-3067) | Inexplict cloud detection for AWS and OpenStack based cloud by querying metadata |  Major | . | liusheng | Alexey Serbin |
| [KUDU-3099](https://issues.apache.org/jira/browse/KUDU-3099) | KuduBackup/KuduRestore System.exit(0) results in Spark on YARN failure with exitCode: 16 |  Major | backup, spark | Waleed Fateem | Waleed Fateem |
| [KUDU-3106](https://issues.apache.org/jira/browse/KUDU-3106) | getEndpointChannelBindings() isn't working as expected with BouncyCastle |  Major | client, java, security | Alexey Serbin | Alexey Serbin |
| [KUDU-2986](https://issues.apache.org/jira/browse/KUDU-2986) | Incorrect value for the 'live\_row\_count' metric with pre-1.11.0 tables |  Major | CLI, client, master, metrics | YifanZhang | LiFu He |
| [KUDU-3006](https://issues.apache.org/jira/browse/KUDU-3006) | RebalanceIgnoredTserversTest.Basic is flaky |  Minor | . | Hao Hao | YifanZhang |
| [KUDU-2047](https://issues.apache.org/jira/browse/KUDU-2047) | Lazy cfile open and maintenance op stat caching cause fruitful delta compaction ops to never run |  Major | compaction, perf, tablet | Todd Lipcon | Andrew Wong |
| [KUDU-2984](https://issues.apache.org/jira/browse/KUDU-2984) | memory\_gc-itest is flaky |  Minor | test | Alexey Serbin | Yingchun Lai |
| [KUDU-3119](https://issues.apache.org/jira/browse/KUDU-3119) | ToolTest.TestFsAddRemoveDataDirEndToEnd reports race under TSAN |  Blocker | CLI, test | Alexey Serbin |  |
| [KUDU-2898](https://issues.apache.org/jira/browse/KUDU-2898) | KuduContext doesn't set a serialVersionUID |  Major | spark | Grant Henke | Grant Henke |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2703](https://issues.apache.org/jira/browse/KUDU-2703) | ITClientStress.testMultipleSessions timeout |  Major | . | Hao Hao | Adar Dembo |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-3009](https://issues.apache.org/jira/browse/KUDU-3009) | Auto-detect NTP servers provided by the public cloud environment |  Major | clock | Alexey Serbin | Alexey Serbin |
| [KUDU-2973](https://issues.apache.org/jira/browse/KUDU-2973) | Support semi-database concept even without HMS integration |  Major | . | Hao Hao | Attila Bukor |
| [KUDU-3064](https://issues.apache.org/jira/browse/KUDU-3064) | client\_symbol-test failed on aarch64 server |  Major | . | huangtianhua | huangtianhua |
| [KUDU-2972](https://issues.apache.org/jira/browse/KUDU-2972) | Add Ranger authorization provider |  Major | . | Hao Hao | Attila Bukor |
| [KUDU-2971](https://issues.apache.org/jira/browse/KUDU-2971) | Add a generic Java library wrapper |  Major | . | Hao Hao | Hao Hao |
| [KUDU-2928](https://issues.apache.org/jira/browse/KUDU-2928) | built-in NTP client: tests to evaluate the behavior of the client |  Major | clock, test | Alexey Serbin | Alexey Serbin |
| [KUDU-3087](https://issues.apache.org/jira/browse/KUDU-3087) | Python tests failed on arm64 |  Major | . | huangtianhua | Alexey Serbin |
| [KUDU-3093](https://issues.apache.org/jira/browse/KUDU-3093) | DebugUtilTest.TestSignalStackTrace of debug-util-test failed on aarch64 |  Major | . | huangtianhua | Adar Dembo |
| [KUDU-3079](https://issues.apache.org/jira/browse/KUDU-3079) | Add MiniRanger for integration tests |  Major | . | Attila Bukor | Attila Bukor |
| [KUDU-3081](https://issues.apache.org/jira/browse/KUDU-3081) | Add Kerberos support to MiniRanger |  Major | . | Attila Bukor | Attila Bukor |
| [KUDU-3072](https://issues.apache.org/jira/browse/KUDU-3072) | minidump-test failed on aarch64 server |  Major | . | huangtianhua | huangtianhua |
| [KUDU-3078](https://issues.apache.org/jira/browse/KUDU-3078) | Ranger integration testing |  Major | . | Attila Bukor | Attila Bukor |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2054](https://issues.apache.org/jira/browse/KUDU-2054) | Rolling Restart and Upgrade |  Major | . | Alan Jackoway | Andrew Wong |
| [KUDU-2798](https://issues.apache.org/jira/browse/KUDU-2798) | Fix logging on deleted TSK entries |  Minor | . | Alexey Serbin | Alexey Serbin |


