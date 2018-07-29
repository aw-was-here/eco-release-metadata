
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

## Release 1.8.0 - Unreleased (as of 2018-07-29)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-16](https://issues.apache.org/jira/browse/KUDU-16) | Add server-side LIMIT for scanners |  Major | client, perf, tablet, tserver | Todd Lipcon | Andrew Wong |
| [KUDU-2290](https://issues.apache.org/jira/browse/KUDU-2290) | Tool to re-create a tablet |  Major | ops-tooling | Andrew Wong | Will Berkeley |
| [KUDU-2287](https://issues.apache.org/jira/browse/KUDU-2287) | Add replica metric tracking time since there was a valid leader |  Major | ksck, metrics, supportability | Todd Lipcon | Attila Bukor |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2331](https://issues.apache.org/jira/browse/KUDU-2331) | Use tablet\_id filter for 'move\_replica' while running ksck-based pre-flight consistency check |  Major | ksck, supportability | Alexey Serbin | Will Berkeley |
| [KUDU-2303](https://issues.apache.org/jira/browse/KUDU-2303) | Add KuduSchema::ToString implementation |  Minor | client | Grant Henke | Fengling Wang |
| [KUDU-2374](https://issues.apache.org/jira/browse/KUDU-2374) | Expose an interface in RpcContext to report the time the InboundCall is received |  Minor | rpc | Michael Ho | Michael Ho |
| [KUDU-2232](https://issues.apache.org/jira/browse/KUDU-2232) | Java client KuduTable.getFormattedRangePartitions() uses deprecated calls |  Trivial | . | Attila Bukor | Attila Bukor |
| [KUDU-2271](https://issues.apache.org/jira/browse/KUDU-2271) | ksck: verbose mode does not list tablet ids |  Major | ops-tooling | Mike Percy | Will Berkeley |
| [KUDU-2378](https://issues.apache.org/jira/browse/KUDU-2378) | Crash due to unaligned loads when building with clang 6.0 |  Major | . | Todd Lipcon | Todd Lipcon |
| [KUDU-1977](https://issues.apache.org/jira/browse/KUDU-1977) | MetaCache cache hits should avoid ref count incr/decr |  Major | client, perf | Todd Lipcon | Todd Lipcon |
| [KUDU-2368](https://issues.apache.org/jira/browse/KUDU-2368) | Add ability to configure the number of reactors in KuduClient |  Major | client | Todd Lipcon | Attila Bukor |
| [KUDU-2351](https://issues.apache.org/jira/browse/KUDU-2351) | Error message for recv failure should include IP/port, etc |  Major | client, rpc, supportability | Todd Lipcon | Attila Bukor |
| [KUDU-2371](https://issues.apache.org/jira/browse/KUDU-2371) | Allow Kudu-Spark upsert API to ignore NULL column values |  Major | spark | Fengling Wang | Fengling Wang |
| [KUDU-2422](https://issues.apache.org/jira/browse/KUDU-2422) | Subprocess hang at startup in TSAN builds |  Critical | test | Todd Lipcon | Todd Lipcon |
| [KUDU-2429](https://issues.apache.org/jira/browse/KUDU-2429) | Improve performance of scans on tablets with large blocks of deleted rows |  Major | cfile, tablet | Will Berkeley | Todd Lipcon |
| [KUDU-2403](https://issues.apache.org/jira/browse/KUDU-2403) | Fix FakeDNS in Java 9+ |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2346](https://issues.apache.org/jira/browse/KUDU-2346) | Document or fix mac pkg-config/PKG\_CONFIG\_PATH issue |  Major | build | Grant Henke | Attila Bukor |
| [KUDU-1889](https://issues.apache.org/jira/browse/KUDU-1889) | Support OpenSSL 1.1.0 |  Minor | . | Dan Burkert | Adar Dembo |
| [KUDU-2035](https://issues.apache.org/jira/browse/KUDU-2035) | Implement HTTP compression for all webserver's paths |  Minor | server | Alexey Serbin | Fengling Wang |
| [KUDU-2359](https://issues.apache.org/jira/browse/KUDU-2359) | tserver should allow starting with a small number of missing data dirs |  Major | fs, tserver | Todd Lipcon | Andrew Wong |
| [KUDU-2470](https://issues.apache.org/jira/browse/KUDU-2470) | handle failures to download archives |  Major | build | Andrew Wong |  |
| [KUDU-2314](https://issues.apache.org/jira/browse/KUDU-2314) | fs manager checks should list wal and metadata directories along with data dirs |  Major | fs, ops-tooling | Will Berkeley | Fengling Wang |
| [KUDU-2441](https://issues.apache.org/jira/browse/KUDU-2441) | Unlike C++, Kudu Python API missing "set mutation buffer space" |  Major | api, client, python | Amarnath Ramamoorthi | Jordan Birdsell |
| [KUDU-2420](https://issues.apache.org/jira/browse/KUDU-2420) | Support parallel java tests |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2510](https://issues.apache.org/jira/browse/KUDU-2510) | On-disk and provided master list error message is misleading |  Minor | master, supportability | Attila Bukor | Attila Bukor |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2322](https://issues.apache.org/jira/browse/KUDU-2322) | Leader spews logs when follower falls behind log GC |  Critical | consensus | Todd Lipcon | Alexey Serbin |
| [KUDU-2153](https://issues.apache.org/jira/browse/KUDU-2153) | Servers delete tmp files before obtaining directory lock |  Critical | fs | Todd Lipcon | Todd Lipcon |
| [KUDU-2343](https://issues.apache.org/jira/browse/KUDU-2343) | Java client doesn't properly reconnect to leader master when old leader is online |  Critical | client, java | Todd Lipcon | Todd Lipcon |
| [KUDU-2259](https://issues.apache.org/jira/browse/KUDU-2259) | kudu-spark imports authentication token into client multiple times |  Blocker | spark | Will Berkeley | Dan Burkert |
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
| [KUDU-2310](https://issues.apache.org/jira/browse/KUDU-2310) | ksck shows an incorrect summary table when specifying the -tablet filter |  Major | ksck | Will Berkeley | Will Berkeley |
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
| [KUDU-2427](https://issues.apache.org/jira/browse/KUDU-2427) | Add support for Ubuntu 18.04 |  Major | master, tserver | Adar Dembo | Adar Dembo |
| [KUDU-2426](https://issues.apache.org/jira/browse/KUDU-2426) | ksck reports WRONG\_SERVER\_UUID on any RemoteError |  Major | ops-tooling | Andrew Wong | Attila Bukor |
| [KUDU-702](https://issues.apache.org/jira/browse/KUDU-702) | Add block IDs to more log messages |  Trivial | tablet | Todd Lipcon | Anupama |
| [KUDU-2107](https://issues.apache.org/jira/browse/KUDU-2107) | Contribution guidelines don't mention how to add reviewers to gerrit |  Major | documentation | Dan Burkert | Attila Bukor |
| [KUDU-1502](https://issues.apache.org/jira/browse/KUDU-1502) | Block cache with churn burns lots of CPU in MemTracker consume and release |  Major | perf, util | Todd Lipcon | Todd Lipcon |
| [KUDU-1038](https://issues.apache.org/jira/browse/KUDU-1038) | Deleting a tablet should also delete its log recovery directory, if any |  Major | consensus, tablet | Mike Percy | Anupama |
| [KUDU-2479](https://issues.apache.org/jira/browse/KUDU-2479) | Flume sink should properly shade its dependencies that are incompatible with flume |  Major | . | Ferenc Szabo | Ferenc Szabo |
| [KUDU-2478](https://issues.apache.org/jira/browse/KUDU-2478) | Failure to run python tests on Cen6 in build-and-test.sh |  Major | build, python | Andrew Wong | Adar Dembo |
| [KUDU-2260](https://issues.apache.org/jira/browse/KUDU-2260) | Log block manager should handle null bytes in metadata on crash |  Major | fs | Mike Percy | Will Berkeley |
| [KUDU-2471](https://issues.apache.org/jira/browse/KUDU-2471) | ColumnSchema.equals NPE with non-Decimal columns |  Blocker | java | Dan Burkert | Grant Henke |
| [KUDU-2492](https://issues.apache.org/jira/browse/KUDU-2492) | Kudu no longer builds on older Linux versions |  Major | build | Thomas Tauber-Marshall |  |
| [KUDU-2447](https://issues.apache.org/jira/browse/KUDU-2447) | TS crashed with "NONE predicate can not be pushed into key" |  Major | . | Xu Yao | Xu Yao |
| [KUDU-2509](https://issues.apache.org/jira/browse/KUDU-2509) | In some rare senarios, tserver may crash with SIGSEGV while boostrapping tablets |  Major | tserver | Alexey Serbin | Alexey Serbin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2491](https://issues.apache.org/jira/browse/KUDU-2491) | kudu-admin-test times out |  Major | . | Alexey Serbin | Alexey Serbin |


