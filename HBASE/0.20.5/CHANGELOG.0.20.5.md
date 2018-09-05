
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
# Apache HBase Changelog

## Release 0.20.5 - 2010-06-24

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2397](https://issues.apache.org/jira/browse/HBASE-2397) | Bytes.toStringBinary escapes printable chars |  Minor | . | Andrew Purtell | Andrew Purtell |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2567](https://issues.apache.org/jira/browse/HBASE-2567) | [stargate] minimize differences between 0.20 branch and trunk |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2613](https://issues.apache.org/jira/browse/HBASE-2613) | Remove the code around MSG\_CALL\_SERVER\_STARTUP |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2752](https://issues.apache.org/jira/browse/HBASE-2752) | Don't retry forever when waiting on too many store files |  Critical | . | Jean-Daniel Cryans | stack |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2428](https://issues.apache.org/jira/browse/HBASE-2428) | NPE in ProcessRegionClose because meta is offline kills master and thus the cluster |  Blocker | . | stack | stack |
| [HBASE-2482](https://issues.apache.org/jira/browse/HBASE-2482) | regions in transition do not get reassigned by master when RS crashes |  Blocker | master | Todd Lipcon | Todd Lipcon |
| [HBASE-2503](https://issues.apache.org/jira/browse/HBASE-2503) | PriorityQueue isn't thread safe, KeyValueHeap uses it that way |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2545](https://issues.apache.org/jira/browse/HBASE-2545) | Unresponsive region server, potential deadlock |  Blocker | regionserver | Kris Jirapinyo | Todd Lipcon |
| [HBASE-2530](https://issues.apache.org/jira/browse/HBASE-2530) | HBASE-2165 removed compactionQueueSize metric |  Major | . | Kannan Muthukkaruppan | Ruifang Ge |
| [HBASE-2606](https://issues.apache.org/jira/browse/HBASE-2606) | NativeException: org.apache.hadoop.hbase.client.NoServerForRegionException: No server address listed in .META. for region item,,1274235159640 |  Major | . | Sam Pullara |  |
| [HBASE-2610](https://issues.apache.org/jira/browse/HBASE-2610) | ValueFilter copy pasted javadoc from QualifierFilter |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2617](https://issues.apache.org/jira/browse/HBASE-2617) | Load balancer falls into pathological state if one server under average - slop; endless churn |  Blocker | . | stack | stack |
| [HBASE-2635](https://issues.apache.org/jira/browse/HBASE-2635) | ImmutableBytesWritable ignores offset in several cases |  Blocker | . | Todd Lipcon | Todd Lipcon |
| [HBASE-2615](https://issues.apache.org/jira/browse/HBASE-2615) | M/R on bulk imported tables |  Major | . | Azza Abouzeid | stack |
| [HBASE-2712](https://issues.apache.org/jira/browse/HBASE-2712) | Cached region location that went stale won't recover if asking for first row |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2740](https://issues.apache.org/jira/browse/HBASE-2740) | NPE in ReadWriteConsistencyControl |  Blocker | . | Dave Latham | ryan rawson |
| [HBASE-2728](https://issues.apache.org/jira/browse/HBASE-2728) | Support for HADOOP-4829 |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2683](https://issues.apache.org/jira/browse/HBASE-2683) | Make it obvious in the documentation that ZooKeeper needs permanent storage |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2616](https://issues.apache.org/jira/browse/HBASE-2616) | TestHRegion.testWritesWhileGetting flaky on trunk |  Critical | regionserver | Todd Lipcon | ryan rawson |
| [HBASE-2455](https://issues.apache.org/jira/browse/HBASE-2455) | "Cached an already cached block" RTE in RS after split |  Major | . | Todd Lipcon | ryan rawson |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2521](https://issues.apache.org/jira/browse/HBASE-2521) | no license headers in 5 files |  Major | . | Thomas Koch |  |
| [HBASE-2568](https://issues.apache.org/jira/browse/HBASE-2568) | Add new svn, ml, and website locations into branches/0.20/src/doc and into trunk/pom.xml, etc. |  Major | . | stack | stack |


