
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

## Release 1.13.0 - 2020-09-17



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-3090](https://issues.apache.org/jira/browse/KUDU-3090) | Add owner concept in Kudu |  Major | authz, security | Hao Hao | Attila Bukor |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2780](https://issues.apache.org/jira/browse/KUDU-2780) | Rebalance Kudu cluster in background |  Major | master | Alexey Serbin | Hannah Nguyen |
| [KUDU-1701](https://issues.apache.org/jira/browse/KUDU-1701) | Reduce contention in CatalogManager::ScopedLeaderSharedLock |  Minor | master | Todd Lipcon | Alexey Serbin |
| [KUDU-2727](https://issues.apache.org/jira/browse/KUDU-2727) | Contention on the Raft consensus lock can cause tablet service queue overflows |  Major | consensus, tserver | William Berkeley | Alexey Serbin |
| [KUDU-3140](https://issues.apache.org/jira/browse/KUDU-3140) | Add heuristics to disable predicate evaluation/filtering for Bloom filter predicate |  Major | perf, util | Bankim Bhavsar | Bankim Bhavsar |
| [KUDU-1802](https://issues.apache.org/jira/browse/KUDU-1802) | Deserializing scan tokens should avoid round-trip to master |  Major | client, perf | Todd Lipcon | Grant Henke |
| [KUDU-2857](https://issues.apache.org/jira/browse/KUDU-2857) | Rewrite docker build script in python |  Major | . | Grant Henke | Grant Henke |
| [KUDU-3177](https://issues.apache.org/jira/browse/KUDU-3177) | Expose snapshotTimestampMicros to Spark Read Options |  Major | spark | Kevin J McCarthy | Kevin J McCarthy |
| [KUDU-3180](https://issues.apache.org/jira/browse/KUDU-3180) | kudu don't always prefer to flush MRS/DMS that anchor more memory |  Major | . | YifanZhang | YifanZhang |
| [KUDU-2844](https://issues.apache.org/jira/browse/KUDU-2844) | Avoid copying strings from dictionary or plain-encoded blocks |  Major | cfile, perf | Todd Lipcon | Todd Lipcon |
| [KUDU-3116](https://issues.apache.org/jira/browse/KUDU-3116) | Enhance operation accumulators in KuduContext to track operations per table |  Minor | java, spark | Brian McDevitt | Brian McDevitt |
| [KUDU-3185](https://issues.apache.org/jira/browse/KUDU-3185) | Add table owner to web UI and CLI outputs |  Minor | . | Attila Bukor | Attila Bukor |
| [KUDU-3007](https://issues.apache.org/jira/browse/KUDU-3007) | ARM/aarch64 platform support |  Critical | . | liusheng | RuiChen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-3113](https://issues.apache.org/jira/browse/KUDU-3113) | auto rebalancer doesn't successfully execute moves |  Major | master | Andrew Wong | Andrew Wong |
| [KUDU-2641](https://issues.apache.org/jira/browse/KUDU-2641) | TestHiveMetastoreIntegration fails with JDK9+ |  Major | java | Adar Dembo | Grant Henke |
| [KUDU-2751](https://issues.apache.org/jira/browse/KUDU-2751) | Java tests that start an HMS client fail when run on JDK10+ |  Major | java, test | Adar Dembo |  |
| [KUDU-2799](https://issues.apache.org/jira/browse/KUDU-2799) | Upgrade HMS integration to Hive 3 |  Major | hms | Adar Dembo | Grant Henke |
| [KUDU-2829](https://issues.apache.org/jira/browse/KUDU-2829) | GCC 9 compilation fails on linux system syscall support library -- dependency of breakpoint |  Major | build | Scott Reynolds | Scott Reynolds |
| [KUDU-3150](https://issues.apache.org/jira/browse/KUDU-3150) | UI tables page sorts tablet count column incorrectly. |  Major | ui | Grant Henke |  |
| [KUDU-3152](https://issues.apache.org/jira/browse/KUDU-3152) | KuduPredicate class in Java client does not handle Date columns |  Major | client, java | Greg Solovyev | Greg Solovyev |
| [KUDU-3159](https://issues.apache.org/jira/browse/KUDU-3159) | Fix installation instructions for devtoolset3 for RHEL/CentOS6 |  Major | build, docker, documentation | Bankim Bhavsar | Bankim Bhavsar |
| [KUDU-3170](https://issues.apache.org/jira/browse/KUDU-3170) | testSlowWriterDoesntBlockQueues is flaky in the ARM builds |  Major | . | Grant Henke | Andrew Wong |
| [KUDU-3181](https://issues.apache.org/jira/browse/KUDU-3181) | Compilation manager queue may have too many tasks |  Major | codegen | Li Zhiming |  |
| [KUDU-2373](https://issues.apache.org/jira/browse/KUDU-2373) | maintenance-manager-num-threads=0 causes CHECK fail during server startup |  Minor | server | Dan Burkert | Mahesh Reddy |
| [KUDU-3184](https://issues.apache.org/jira/browse/KUDU-3184) | Unable to start Master during Startup |  Minor | . | Mahesh Reddy | Mahesh Reddy |
| [KUDU-1587](https://issues.apache.org/jira/browse/KUDU-1587) | Memory-based backpressure is insufficient on seek-bound workloads |  Critical | tserver | Todd Lipcon | Alexey Serbin |
| [KUDU-1422](https://issues.apache.org/jira/browse/KUDU-1422) | java client: Error buffer size is hard-coded |  Major | client | Mike Percy |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-3068](https://issues.apache.org/jira/browse/KUDU-3068) | MemTracker CHECK failed on aarch64 when run cache-bench test |  Major | . | huangtianhua | huangtianhua |
| [KUDU-3112](https://issues.apache.org/jira/browse/KUDU-3112) | master\_authz-itest failed on ARM server |  Major | . | liusheng |  |
| [KUDU-3096](https://issues.apache.org/jira/browse/KUDU-3096) | debug-util-test failed sometimes on aarch64: Segmentation fault |  Major | . | huangtianhua | RuiChen |
| [KUDU-3144](https://issues.apache.org/jira/browse/KUDU-3144) | Compile kudu in Release mode failed on aarch64 server |  Major | . | huangtianhua |  |
| [KUDU-3145](https://issues.apache.org/jira/browse/KUDU-3145) | KUDU\_LINK should be set before function APPEND\_LINKER\_FLAGS is called |  Major | . | zhaorenhai | huangtianhua |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-3091](https://issues.apache.org/jira/browse/KUDU-3091) | Support ownership privilege with Ranger |  Major | authz, ranger, security | Hao Hao | Attila Bukor |


