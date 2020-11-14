
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

## Release 1.8.0 - 2018-10-24



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-16](https://issues.apache.org/jira/browse/KUDU-16) | Add server-side LIMIT for scanners |  Major | client, perf, tablet, tserver | Todd Lipcon | Andrew Wong |
| [KUDU-2290](https://issues.apache.org/jira/browse/KUDU-2290) | Tool to re-create a tablet |  Major | ops-tooling | Andrew Wong | William Berkeley |
| [KUDU-2287](https://issues.apache.org/jira/browse/KUDU-2287) | Add replica metric tracking time since there was a valid leader |  Major | ksck, metrics, supportability | Todd Lipcon | Attila Bukor |
| [KUDU-2399](https://issues.apache.org/jira/browse/KUDU-2399) | Support IS NULL / IS NOT NULL predicates in Python |  Major | client, python | Todd Lipcon | Jordan Birdsell |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2331](https://issues.apache.org/jira/browse/KUDU-2331) | Use tablet\_id filter for 'move\_replica' while running ksck-based pre-flight consistency check |  Major | ksck, supportability | Alexey Serbin | William Berkeley |
| [KUDU-2303](https://issues.apache.org/jira/browse/KUDU-2303) | Add KuduSchema::ToString implementation |  Minor | client | Grant Henke | Fengling Wang |
| [KUDU-2374](https://issues.apache.org/jira/browse/KUDU-2374) | Expose an interface in RpcContext to report the time the InboundCall is received |  Minor | rpc | Michael Ho | Michael Ho |
| [KUDU-2232](https://issues.apache.org/jira/browse/KUDU-2232) | Java client KuduTable.getFormattedRangePartitions() uses deprecated calls |  Trivial | . | Attila Bukor | Attila Bukor |
| [KUDU-2271](https://issues.apache.org/jira/browse/KUDU-2271) | ksck: verbose mode does not list tablet ids |  Major | ops-tooling | Mike Percy | William Berkeley |
| [KUDU-1977](https://issues.apache.org/jira/browse/KUDU-1977) | MetaCache cache hits should avoid ref count incr/decr |  Major | client, perf | Todd Lipcon | Todd Lipcon |
| [KUDU-2368](https://issues.apache.org/jira/browse/KUDU-2368) | Add ability to configure the number of reactors in KuduClient |  Major | client | Todd Lipcon | Attila Bukor |
| [KUDU-2351](https://issues.apache.org/jira/browse/KUDU-2351) | Error message for recv failure should include IP/port, etc |  Major | client, rpc, supportability | Todd Lipcon | Attila Bukor |
| [KUDU-2371](https://issues.apache.org/jira/browse/KUDU-2371) | Allow Kudu-Spark upsert API to ignore NULL column values |  Major | spark | Fengling Wang | Fengling Wang |
| [KUDU-2422](https://issues.apache.org/jira/browse/KUDU-2422) | Subprocess hang at startup in TSAN builds |  Critical | test | Todd Lipcon | Todd Lipcon |
| [KUDU-2429](https://issues.apache.org/jira/browse/KUDU-2429) | Improve performance of scans on tablets with large blocks of deleted rows |  Major | cfile, tablet | William Berkeley | Todd Lipcon |
| [KUDU-2403](https://issues.apache.org/jira/browse/KUDU-2403) | Fix FakeDNS in Java 9+ |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2346](https://issues.apache.org/jira/browse/KUDU-2346) | Document or fix mac pkg-config/PKG\_CONFIG\_PATH issue |  Major | build | Grant Henke | Attila Bukor |
| [KUDU-1889](https://issues.apache.org/jira/browse/KUDU-1889) | Support OpenSSL 1.1.0 |  Minor | . | Dan Burkert | Adar Dembo |
| [KUDU-2035](https://issues.apache.org/jira/browse/KUDU-2035) | Implement HTTP compression for all webserver's paths |  Minor | server | Alexey Serbin | Fengling Wang |
| [KUDU-2359](https://issues.apache.org/jira/browse/KUDU-2359) | tserver should allow starting with a small number of missing data dirs |  Major | fs, tserver | Todd Lipcon | Andrew Wong |
| [KUDU-2470](https://issues.apache.org/jira/browse/KUDU-2470) | handle failures to download archives |  Major | build | Andrew Wong |  |
| [KUDU-2314](https://issues.apache.org/jira/browse/KUDU-2314) | fs manager checks should list wal and metadata directories along with data dirs |  Major | fs, ops-tooling | William Berkeley | Fengling Wang |
| [KUDU-2441](https://issues.apache.org/jira/browse/KUDU-2441) | Unlike C++, Kudu Python API missing "set mutation buffer space" |  Major | api, client, python | Amarnath Ramamoorthi | Jordan Birdsell |
| [KUDU-2420](https://issues.apache.org/jira/browse/KUDU-2420) | Support parallel java tests |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2510](https://issues.apache.org/jira/browse/KUDU-2510) | On-disk and provided master list error message is misleading |  Minor | master, supportability | Attila Bukor | Attila Bukor |
| [KUDU-2469](https://issues.apache.org/jira/browse/KUDU-2469) | Handle CFile checksum failures |  Major | cfile, tablet | Andrew Wong | Andrew Wong |
| [KUDU-2529](https://issues.apache.org/jira/browse/KUDU-2529) | kudu CLI command supports list the tablets under a table and list the replicas of a tablet |  Major | CLI | LiFu He | LiFu He |
| [KUDU-2489](https://issues.apache.org/jira/browse/KUDU-2489) | [java] TestSecurity is a long running test |  Major | . | Grant Henke | Brian McDevitt |
| [KUDU-2437](https://issues.apache.org/jira/browse/KUDU-2437) | Split a tablet into primary key ranges by size |  Major | client, tablet | Xu Yao | Xu Yao |
| [KUDU-2539](https://issues.apache.org/jira/browse/KUDU-2539) | Supporting Spark Streaming DataFrame in KuduContext |  Minor | spark | Attila Zsolt Piros | Attila Zsolt Piros |
| [KUDU-2242](https://issues.apache.org/jira/browse/KUDU-2242) | Wait for NTP synchronization on startup |  Critical | server, supportability | Jean-Daniel Cryans | William Berkeley |
| [KUDU-1882](https://issues.apache.org/jira/browse/KUDU-1882) | Configuration improvements for Flume Kudu Sink regexp operations producer |  Major | flume-sink, integration | Mike Percy | Ferenc Szabo |
| [KUDU-1861](https://issues.apache.org/jira/browse/KUDU-1861) | kudu test loadgen: change default behavior to avoid compactions on tablet servers |  Major | util | Alexey Serbin | Andrew Wong |
| [KUDU-2563](https://issues.apache.org/jira/browse/KUDU-2563) | Spark integration should use the scanner keep-alive API |  Major | client, spark | Mike Percy | Grant Henke |
| [KUDU-2179](https://issues.apache.org/jira/browse/KUDU-2179) | Have ksck not use a single snapshot for all tablets |  Major | ksck | Andrew Wong | William Berkeley |
| [KUDU-2419](https://issues.apache.org/jira/browse/KUDU-2419) | Add dist-test support for the Java build |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2289](https://issues.apache.org/jira/browse/KUDU-2289) | Tablet deletion should be throttled |  Major | tserver | Todd Lipcon | William Berkeley |
| [KUDU-2380](https://issues.apache.org/jira/browse/KUDU-2380) | Selective predicates when selecting high number of columns burns CPU in SerializeRowBlock |  Major | perf, tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1915](https://issues.apache.org/jira/browse/KUDU-1915) | reduce exception spew in common Java client error conditions |  Major | client, java | Todd Lipcon | Todd Lipcon |
| [KUDU-975](https://issues.apache.org/jira/browse/KUDU-975) | Review Java API for alter schema |  Major | api, client | Todd Lipcon | William Berkeley |
| [KUDU-1255](https://issues.apache.org/jira/browse/KUDU-1255) | Add API to PartialRow for timestamps |  Major | client | Mike Percy | Grant Henke |
| [KUDU-290](https://issues.apache.org/jira/browse/KUDU-290) | Use gold linker from CMake build if gold is available |  Major | build | Mike Percy |  |
| [KUDU-2468](https://issues.apache.org/jira/browse/KUDU-2468) | Scan token API should propagate scan operation timeout |  Major | client, java | Mike Percy | Mike Percy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2322](https://issues.apache.org/jira/browse/KUDU-2322) | Leader spews logs when follower falls behind log GC |  Critical | consensus | Todd Lipcon | Alexey Serbin |
| [KUDU-2153](https://issues.apache.org/jira/browse/KUDU-2153) | Servers delete tmp files before obtaining directory lock |  Critical | fs | Todd Lipcon | Todd Lipcon |
| [KUDU-2342](https://issues.apache.org/jira/browse/KUDU-2342) | Non-voter replicas can be promoted and get stuck |  Blocker | tablet | Mostafa Mokhtar | Alexey Serbin |
| [KUDU-2343](https://issues.apache.org/jira/browse/KUDU-2343) | Java client doesn't properly reconnect to leader master when old leader is online |  Critical | client, java | Todd Lipcon | Todd Lipcon |
| [KUDU-2259](https://issues.apache.org/jira/browse/KUDU-2259) | kudu-spark imports authentication token into client multiple times |  Blocker | spark | William Berkeley | Dan Burkert |
| [KUDU-2075](https://issues.apache.org/jira/browse/KUDU-2075) | Crash when using tracing in SetupThreadLocalBuffer |  Critical | util | Jean-Daniel Cryans | Todd Lipcon |
| [KUDU-2305](https://issues.apache.org/jira/browse/KUDU-2305) | Local variables can overflow when serializing a 2GB message |  Major | rpc | Joe McDonnell | Joe McDonnell |
| [KUDU-972](https://issues.apache.org/jira/browse/KUDU-972) | cache should track memory overhead |  Major | cfile, util | Todd Lipcon | Todd Lipcon |
| [KUDU-2367](https://issues.apache.org/jira/browse/KUDU-2367) | Leader replica sometimes reports follower's health status as FAILED instead of FAILED\_UNRECOVERABLE |  Major | tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-2377](https://issues.apache.org/jira/browse/KUDU-2377) | Server fails to start up when RLIMIT\_NPROC is -1 |  Blocker | server | Adar Dembo | Adar Dembo |
| [KUDU-2379](https://issues.apache.org/jira/browse/KUDU-2379) | Spark generates a broken authentication credentials PB |  Blocker | java, spark | Todd Lipcon | Todd Lipcon |
| [KUDU-2385](https://issues.apache.org/jira/browse/KUDU-2385) | Kerberos ticket reacquisition with Heimdal krb5 likely broken |  Major | security | Sailesh Mukil | Michael Ho |
| [KUDU-2364](https://issues.apache.org/jira/browse/KUDU-2364) | ksck does not validate tablet server ID when checking connectivity |  Major | ksck | Dan Burkert | Attila Bukor |
| [KUDU-2384](https://issues.apache.org/jira/browse/KUDU-2384) | Disable periodic stack trace dumps when running under gdb |  Major | test | Adar Dembo | Todd Lipcon |
| [KUDU-2361](https://issues.apache.org/jira/browse/KUDU-2361) | MasterTest.TestDumpStacksOnRpcQueueOverflow fails in TSAN mode with stress |  Major | test | Adar Dembo | Todd Lipcon |
| [KUDU-2393](https://issues.apache.org/jira/browse/KUDU-2393) | DebugUtilTest.TestSnapshot flaky |  Major | test | Todd Lipcon | Todd Lipcon |
| [KUDU-2310](https://issues.apache.org/jira/browse/KUDU-2310) | ksck shows an incorrect summary table when specifying the -tablet filter |  Major | ksck | William Berkeley | William Berkeley |
| [KUDU-2407](https://issues.apache.org/jira/browse/KUDU-2407) | Replica.getRoleAsEnum exposes Protobuf generated classes in public API |  Major | client | Grant Henke | Grant Henke |
| [KUDU-2406](https://issues.apache.org/jira/browse/KUDU-2406) | Don't persist directory filesystem block size |  Major | fs | Adar Dembo | Adar Dembo |
| [KUDU-2152](https://issues.apache.org/jira/browse/KUDU-2152) | Tablet stuck under-replicated after some kind of tablet copy issue |  Critical | consensus | Todd Lipcon | Andrew Wong |
| [KUDU-2394](https://issues.apache.org/jira/browse/KUDU-2394) | RpcStubTest.TestDontHandleTimedOutCalls flaky in ASAN |  Major | rpc, test | Todd Lipcon | Todd Lipcon |
| [KUDU-2388](https://issues.apache.org/jira/browse/KUDU-2388) | TSAN race in MaintenanceManager::UnregisterOp |  Major | tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-2412](https://issues.apache.org/jira/browse/KUDU-2412) | python client fails to compile in EL6 environments |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2414](https://issues.apache.org/jira/browse/KUDU-2414) | C++ client retries in a tight loop for SCANNER\_EXPIRED |  Major | client | Todd Lipcon | Todd Lipcon |
| [KUDU-2365](https://issues.apache.org/jira/browse/KUDU-2365) | Gradle-built Java artifacts aren't as well shaded as Maven-built ones |  Major | java | Adar Dembo | Grant Henke |
| [KUDU-2416](https://issues.apache.org/jira/browse/KUDU-2416) | Incorrect fallthrough in Java PartialRow.setMin for DECIMAL times |  Critical | java | Todd Lipcon | Grant Henke |
| [KUDU-2214](https://issues.apache.org/jira/browse/KUDU-2214) | voting while tablet copying says "voting while tombstoned" |  Minor | consensus | Mike Percy | Fengling Wang |
| [KUDU-2408](https://issues.apache.org/jira/browse/KUDU-2408) | Restarting masters and tservers on macOS always leads to fatal 'update clock beyond the max. error' |  Minor | master, tserver | Alexey Serbin | David Alves |
| [KUDU-2443](https://issues.apache.org/jira/browse/KUDU-2443) | Moving single-replica tablets does not work in kudu CLI |  Major | CLI, consensus | Alexey Serbin | Alexey Serbin |
| [KUDU-1867](https://issues.apache.org/jira/browse/KUDU-1867) | Improve the "Could not lock .../block\_manager\_instance" error message |  Major | fs | Jean-Daniel Cryans | Fengling Wang |
| [KUDU-2426](https://issues.apache.org/jira/browse/KUDU-2426) | ksck reports WRONG\_SERVER\_UUID on any RemoteError |  Major | ops-tooling | Andrew Wong | Attila Bukor |
| [KUDU-702](https://issues.apache.org/jira/browse/KUDU-702) | Add block IDs to more log messages |  Trivial | tablet | Todd Lipcon | Anupama |
| [KUDU-2107](https://issues.apache.org/jira/browse/KUDU-2107) | Contribution guidelines don't mention how to add reviewers to gerrit |  Major | documentation | Dan Burkert | Attila Bukor |
| [KUDU-1502](https://issues.apache.org/jira/browse/KUDU-1502) | Block cache with churn burns lots of CPU in MemTracker consume and release |  Major | perf, util | Todd Lipcon | Todd Lipcon |
| [KUDU-1038](https://issues.apache.org/jira/browse/KUDU-1038) | Deleting a tablet should also delete its log recovery directory, if any |  Major | consensus, tablet | Mike Percy | Anupama |
| [KUDU-2479](https://issues.apache.org/jira/browse/KUDU-2479) | Flume sink should properly shade its dependencies that are incompatible with flume |  Major | flume-sink, integration | Ferenc Szabo | Ferenc Szabo |
| [KUDU-2478](https://issues.apache.org/jira/browse/KUDU-2478) | Failure to run python tests on Cen6 in build-and-test.sh |  Major | build, python | Andrew Wong | Adar Dembo |
| [KUDU-2260](https://issues.apache.org/jira/browse/KUDU-2260) | Log block manager should handle null bytes in metadata on crash |  Major | fs | Mike Percy | William Berkeley |
| [KUDU-2471](https://issues.apache.org/jira/browse/KUDU-2471) | ColumnSchema.equals NPE with non-Decimal columns |  Blocker | java | Dan Burkert | Grant Henke |
| [KUDU-2492](https://issues.apache.org/jira/browse/KUDU-2492) | Kudu no longer builds on older Linux versions |  Major | build | Thomas Tauber-Marshall |  |
| [KUDU-2447](https://issues.apache.org/jira/browse/KUDU-2447) | TS crashed with "NONE predicate can not be pushed into key" |  Major | . | Xu Yao | Xu Yao |
| [KUDU-2509](https://issues.apache.org/jira/browse/KUDU-2509) | In some rare senarios, tserver may crash with SIGSEGV while boostrapping tablets |  Major | tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-2511](https://issues.apache.org/jira/browse/KUDU-2511) | The SingleReplicasStayOrMove scenario of the kudu-admin-test is a bit flaky |  Minor | test | Alexey Serbin | Alexey Serbin |
| [KUDU-2401](https://issues.apache.org/jira/browse/KUDU-2401) | External TLS certificate with Intermediate CA in server cert file fails |  Major | security | Sailesh Mukil | Sailesh Mukil |
| [KUDU-2459](https://issues.apache.org/jira/browse/KUDU-2459) | Impala 'Create Table' Statement under Web UI doesn't account for non-Impala conforming tablenames |  Major | ui | Shriya Gupta | Shriya Gupta |
| [KUDU-2234](https://issues.apache.org/jira/browse/KUDU-2234) | kudu-tool-test fails when environment has GLOG\_colorlogtostderr=1 |  Major | test | Mike Percy | Alexey Serbin |
| [KUDU-2350](https://issues.apache.org/jira/browse/KUDU-2350) | Kudu C++ client application might fail with SIGPIPE if TLS connection aborted from the tablet server side |  Major | client | Alexey Serbin | Alexey Serbin |
| [KUDU-2460](https://issues.apache.org/jira/browse/KUDU-2460) | parse\_test\_failure.py doesn't handle errors outside of test cases |  Major | test | Adar Dembo | Todd Lipcon |
| [KUDU-2525](https://issues.apache.org/jira/browse/KUDU-2525) | KuduTableInputFormat may end scan even though more rows remain |  Major | . | zhangqianqiong | zhangqianqiong |
| [KUDU-2151](https://issues.apache.org/jira/browse/KUDU-2151) | ConsensusMetadata IO does not retry on EINTR |  Major | consensus | Mike Percy | Adar Dembo |
| [KUDU-2528](https://issues.apache.org/jira/browse/KUDU-2528) | thirdparty downloads aren't always retried |  Major | build | Adar Dembo | Adar Dembo |
| [KUDU-2540](https://issues.apache.org/jira/browse/KUDU-2540) | Authorization failures on exactly-once RPCs cause FATAL |  Major | rpc, security | Todd Lipcon | Dan Burkert |
| [KUDU-2555](https://issues.apache.org/jira/browse/KUDU-2555) | Memory leak in negotiation-test |  Major | . | Andrew Wong | Alexey Serbin |
| [KUDU-1951](https://issues.apache.org/jira/browse/KUDU-1951) | broken links in site/docs |  Major | documentation, website | Todd Lipcon | Attila Bukor |
| [KUDU-2560](https://issues.apache.org/jira/browse/KUDU-2560) | client\_examples-test can't find libunwind |  Major | . | Andrew Wong | Adar Dembo |
| [KUDU-2531](https://issues.apache.org/jira/browse/KUDU-2531) | Backup file left by pbc edit tool will prevent the server from starting |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2095](https://issues.apache.org/jira/browse/KUDU-2095) | Add scanner keepAlive method to the java client |  Major | . | zhangguangqiang | Grant Henke |
| [KUDU-2580](https://issues.apache.org/jira/browse/KUDU-2580) | C++ client does not re-acquire authn token in some scenarios in case of multi-master Kudu cluster |  Major | client, security | Alexey Serbin | Alexey Serbin |
| [KUDU-2186](https://issues.apache.org/jira/browse/KUDU-2186) | Gradle shading of kudu-client test JAR is broken |  Major | java | Adar Dembo | Grant Henke |
| [KUDU-2293](https://issues.apache.org/jira/browse/KUDU-2293) | tserver crashes with 'Found tablet in TABLET\_DATA\_COPYING state during StartTabletCopy()' message |  Major | tserver | Alexey Serbin | Andrew Wong |
| [KUDU-2598](https://issues.apache.org/jira/browse/KUDU-2598) | TestScanner.test\_scanner\_to\_pandas\_index failed on CentOS 6.6 |  Major | python | William Berkeley | Andrew Wong |
| [KUDU-2601](https://issues.apache.org/jira/browse/KUDU-2601) | There is two same condition to check whether created\_dirs is empty |  Major | fs | Hexin | Andrew Wong |
| [KUDU-844](https://issues.apache.org/jira/browse/KUDU-844) | tablet layout SVG no longer includes rowsets undergoing compaction |  Minor | ops-tooling | Todd Lipcon | William Berkeley |
| [KUDU-2463](https://issues.apache.org/jira/browse/KUDU-2463) | Different results returned by group by on count() metric |  Critical | impala | Tomas Farkas | Andrew Wong |
| [KUDU-2631](https://issues.apache.org/jira/browse/KUDU-2631) | DeleteTableITest.TestNoDeleteTombstonedTablets is a little flaky |  Major | . | William Berkeley | Alexey Serbin |
| [KUDU-2415](https://issues.apache.org/jira/browse/KUDU-2415) | READ\_YOUR\_WRITES scan with no prior operation fails |  Major | client, tserver | Todd Lipcon | Andrew Wong |
| [KUDU-2472](https://issues.apache.org/jira/browse/KUDU-2472) | master-stress-test flaky with failure to create table due to not enough tservers |  Major | . | Dan Burkert | Dan Burkert |
| [KUDU-2427](https://issues.apache.org/jira/browse/KUDU-2427) | Add support for Ubuntu 18.04 |  Major | master, tserver | Adar Dembo | Adar Dembo |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2491](https://issues.apache.org/jira/browse/KUDU-2491) | kudu-admin-test times out |  Major | . | Alexey Serbin | Alexey Serbin |
| [KUDU-2333](https://issues.apache.org/jira/browse/KUDU-2333) | Add a RYW/RYR test to jepsen |  Major | jepsen | David Alves | Hao Hao |
| [KUDU-2480](https://issues.apache.org/jira/browse/KUDU-2480) | tsan failure of master-stress-test |  Major | . | Hao Hao | Dan Burkert |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2521](https://issues.apache.org/jira/browse/KUDU-2521) | Java Implementation for BloomFilter |  Major | client | Jin Xing | Jin Xing |
| [KUDU-1974](https://issues.apache.org/jira/browse/KUDU-1974) | Improve web UI experience with many tablets |  Major | supportability, tserver | Adar Dembo | William Berkeley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2538](https://issues.apache.org/jira/browse/KUDU-2538) | [docs] Document how to manually recover from a Cfile checksum issue |  Major | documentation | Grant Henke | Grant Henke |
| [KUDU-2012](https://issues.apache.org/jira/browse/KUDU-2012) | Kudu Flume sink authn support |  Major | flume-sink | Mike Percy | Ferenc Szabo |
| [KUDU-1990](https://issues.apache.org/jira/browse/KUDU-1990) | Support Hadoop 3 when available |  Minor | client | Jean-Daniel Cryans | Grant Henke |
| [KUDU-1633](https://issues.apache.org/jira/browse/KUDU-1633) | Pythonize the Python Client API |  Minor | python | Jordan Birdsell | Jordan Birdsell |


