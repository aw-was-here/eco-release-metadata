
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

## Release 1.11.0 - 2019-11-01



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2836](https://issues.apache.org/jira/browse/KUDU-2836) | Maybe wrong memory size used to detect pressure |  Critical | tserver | Yingchun Lai | Yingchun Lai |
| [KUDU-2381](https://issues.apache.org/jira/browse/KUDU-2381) | Optimize DeltaMemStore for case of no matching deltas |  Major | perf, tablet | Todd Lipcon | ZhangYao |
| [KUDU-2867](https://issues.apache.org/jira/browse/KUDU-2867) | Optimize Timestamp varint decoding |  Minor | . | Todd Lipcon | Todd Lipcon |
| [KUDU-2851](https://issues.apache.org/jira/browse/KUDU-2851) | Have table scan tool surface errors instead of crashing |  Major | CLI | Andrew Wong | Hannah Nguyen |
| [KUDU-2866](https://issues.apache.org/jira/browse/KUDU-2866) | CFileSet::Iterator::FinishBatch takes a lot of CPU for selective wide table scans |  Major | perf, tablet | Todd Lipcon | Todd Lipcon |
| [KUDU-2855](https://issues.apache.org/jira/browse/KUDU-2855) | Lazy-create DeltaMemStores on first update |  Major | perf, tserver | Todd Lipcon | LiFu He |
| [KUDU-2823](https://issues.apache.org/jira/browse/KUDU-2823) | Place tablet replicas based on dimension |  Major | . | LiFu He | Xu Yao |
| [KUDU-2849](https://issues.apache.org/jira/browse/KUDU-2849) | Docker Image for Kudu Python Client |  Major | . | Sandish Kumar HN | Sandish Kumar HN |
| [KUDU-2901](https://issues.apache.org/jira/browse/KUDU-2901) | Load balance on tserver |  Minor | fs, tserver | Yingchun Lai | ZhangYao |
| [KUDU-2348](https://issues.apache.org/jira/browse/KUDU-2348) | Java client doesn't pick a random replica when no replica is local |  Major | client, java | Todd Lipcon | YifanZhang |
| [KUDU-2847](https://issues.apache.org/jira/browse/KUDU-2847) | Optimize iteration over selection vector in SerializeRowBlock |  Major | perf, tserver | Todd Lipcon | ZhangYao |
| [KUDU-2907](https://issues.apache.org/jira/browse/KUDU-2907) | Add directories to a directory group when there is no space left in a given directory group, but there are directories available |  Major | fs | Andrew Wong |  |
| [KUDU-2921](https://issues.apache.org/jira/browse/KUDU-2921) | Exposing the table statistics to spark relation. |  Major | . | ZhangYao | ZhangYao |
| [KUDU-2852](https://issues.apache.org/jira/browse/KUDU-2852) | Push predicate evaluation into RLE Int type decoder |  Major | cfile, perf | Andrew Wong | Bankim Bhavsar |
| [KUDU-2777](https://issues.apache.org/jira/browse/KUDU-2777) | Upgrade LZ4 to 1.9.0+ |  Major | . | Grant Henke | Yingchun Lai |
| [KUDU-2877](https://issues.apache.org/jira/browse/KUDU-2877) | Support logging to files and stderr at the same time |  Minor | docker | Grant Henke | Sandish Kumar HN |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2427](https://issues.apache.org/jira/browse/KUDU-2427) | Add support for Ubuntu 18.04 |  Major | master, tserver | Adar Dembo | Adar Dembo |
| [KUDU-2622](https://issues.apache.org/jira/browse/KUDU-2622) | Validate read and write default value sizes when deserializing ColumnSchemaPB |  Critical | master, tablet | Adar Dembo | Xu Yao |
| [KUDU-2635](https://issues.apache.org/jira/browse/KUDU-2635) | Tserver crash because some orphaned blocks are still listed when deleting metadata |  Major | fs, tablet, tserver | Andrew Wong | Andrew Wong |
| [KUDU-2163](https://issues.apache.org/jira/browse/KUDU-2163) | names of "rpc\_authentication" do not match in documents |  Minor | documentation | Jiahongchao | Adar Dembo |
| [KUDU-2625](https://issues.apache.org/jira/browse/KUDU-2625) | Unexpected behavior of WriteBatch wrt rows violating schema constraints |  Critical | tablet, tserver | Alexey Serbin | Yingchun Lai |
| [KUDU-2212](https://issues.apache.org/jira/browse/KUDU-2212) | TSAN "destroy of locked mutex" failure in kudu-admin-test |  Major | test | Todd Lipcon |  |
| [KUDU-2920](https://issues.apache.org/jira/browse/KUDU-2920) | Block cache capacity validator shouldn't run on an NVM block cache |  Major | cfile | Adar Dembo | Vladimir Verjovkin |
| [KUDU-2946](https://issues.apache.org/jira/browse/KUDU-2946) | Waiting not allowed when destructing a service pool |  Major | rpc | Andrew Wong | Adar Dembo |
| [KUDU-2934](https://issues.apache.org/jira/browse/KUDU-2934) | Bad merge behavior for some metrics |  Minor | metrics | Yingchun Lai | YifanZhang |
| [KUDU-2842](https://issues.apache.org/jira/browse/KUDU-2842) | Data race in CatalogManager::GetTableLocations |  Blocker | master | Adar Dembo | Andrew Wong |
| [KUDU-2947](https://issues.apache.org/jira/browse/KUDU-2947) | A replica with slow WAL may grant votes even if established leader is alive and well |  Major | consensus, master, tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-2952](https://issues.apache.org/jira/browse/KUDU-2952) | TServers reporting replica stats may race with leadership change, hitting a DCHECK |  Major | consensus, tserver | Andrew Wong | Andrew Wong |
| [KUDU-1561](https://issues.apache.org/jira/browse/KUDU-1561) | KuduScanBatch::const\_iterator does not implement operator-\>() |  Major | client | Mike Percy | Vladimir Verjovkin |
| [KUDU-2965](https://issues.apache.org/jira/browse/KUDU-2965) | Cut down on task-related log spew |  Major | master | Adar Dembo | Adar Dembo |
| [KUDU-2069](https://issues.apache.org/jira/browse/KUDU-2069) | Add a maintenance mode |  Major | . | Jean-Daniel Cryans | Andrew Wong |
| [KUDU-2968](https://issues.apache.org/jira/browse/KUDU-2968) | RleDecoder::GetNextRun() may attempt decoding past the last byte leading to assertion failure |  Major | util | Bankim Bhavsar | Bankim Bhavsar |
| [KUDU-2982](https://issues.apache.org/jira/browse/KUDU-2982) | Document that kudu-backup (without incremental backup) can be used against older versions of Kudu |  Major | documentation | Adar Dembo | Grant Henke |
| [KUDU-2980](https://issues.apache.org/jira/browse/KUDU-2980) | Fault tolerant and diff scans fail if projection contains mis-ordered primary key columns |  Major | tserver | Adar Dembo | Adar Dembo |
| [KUDU-2770](https://issues.apache.org/jira/browse/KUDU-2770) | thirdparty dependencies no longer build with glibc 2.28+ |  Major | . | Clemens Valiente | Scott Reynolds |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2936](https://issues.apache.org/jira/browse/KUDU-2936) | built-in NTP client: simplified implementation to work with well behaved/trusted servers |  Major | ntp-client | Alexey Serbin | Alexey Serbin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2876](https://issues.apache.org/jira/browse/KUDU-2876) | Audit the semantics and the usage of Tabet::GetComponents() in tablet.cc |  Minor | tserver | Alexey Serbin | Xu Yao |
| [KUDU-2797](https://issues.apache.org/jira/browse/KUDU-2797) | Implement table size metrics |  Major | master, metrics | Mike Percy | LiFu He |
| [KUDU-2927](https://issues.apache.org/jira/browse/KUDU-2927) | A testbench to evaluate and test the behavior of the built-it NTP client |  Major | test | Alexey Serbin | Alexey Serbin |
| [KUDU-2448](https://issues.apache.org/jira/browse/KUDU-2448) | Document how to temporarily decommission/shutdown a tablet server |  Major | documentation | Grant Henke | Mitch Barnett |


