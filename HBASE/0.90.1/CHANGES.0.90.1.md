
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

## Release 0.90.1 - 2011-02-17



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3305](https://issues.apache.org/jira/browse/HBASE-3305) | Allow round-robin distribution for table created with multiple regions |  Major | master | Ted Yu | Ted Yu |
| [HBASE-3501](https://issues.apache.org/jira/browse/HBASE-3501) | Remove the deletion limit in LogCleaner |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3500](https://issues.apache.org/jira/browse/HBASE-3500) | Documentation update for replication |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3470](https://issues.apache.org/jira/browse/HBASE-3470) | Check that hbase-default.xml is loaded from within jar |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3508](https://issues.apache.org/jira/browse/HBASE-3508) | LruBlockCache statistics thread should have a name |  Trivial | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3511](https://issues.apache.org/jira/browse/HBASE-3511) | Allow rolling restart to apply to only RS or only masters |  Minor | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3510](https://issues.apache.org/jira/browse/HBASE-3510) | Add thread name for IPC reader threads |  Trivial | IPC/RPC | Todd Lipcon | Todd Lipcon |
| [HBASE-3509](https://issues.apache.org/jira/browse/HBASE-3509) | Add metric for flush queue length |  Minor | . | Todd Lipcon | Todd Lipcon |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3445](https://issues.apache.org/jira/browse/HBASE-3445) | Master crashes on data that was moved from different host |  Critical | master | James Kennedy | stack |
| [HBASE-3449](https://issues.apache.org/jira/browse/HBASE-3449) | Server shutdown handlers deadlocked waiting for META |  Blocker | . | Todd Lipcon | stack |
| [HBASE-3456](https://issues.apache.org/jira/browse/HBASE-3456) | Fix hardcoding of 20 second socket timeout down in HBaseClient |  Major | . | stack | Andrew Purtell |
| [HBASE-3476](https://issues.apache.org/jira/browse/HBASE-3476) | HFile -m option need not scan key values |  Minor | . | Prakash Khemani | Prakash Khemani |
| [HBASE-3481](https://issues.apache.org/jira/browse/HBASE-3481) | max seq id in flushed file can be larger than its correct value causing data loss during recovery |  Blocker | . | Kannan Muthukkaruppan | ryan rawson |
| [HBASE-3493](https://issues.apache.org/jira/browse/HBASE-3493) | HMaster sometimes hangs during initialization due to missing notify call |  Major | master | Bruno Dumon | Bruno Dumon |
| [HBASE-3483](https://issues.apache.org/jira/browse/HBASE-3483) | No soft flush trigger on global memstore limit |  Critical | Performance, regionserver | Todd Lipcon | Todd Lipcon |
| [HBASE-3494](https://issues.apache.org/jira/browse/HBASE-3494) | checkAndPut implementation doesnt verify row param and writable row are the same |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3416](https://issues.apache.org/jira/browse/HBASE-3416) | For intra-row scanning, the update readers notification resets the query matcher and can lead to incorrect behavior |  Major | regionserver | Jonathan Gray | Andrew Purtell |
| [HBASE-3495](https://issues.apache.org/jira/browse/HBASE-3495) | Shell is failing on subsequent split calls |  Major | regionserver | Lars George | Lars George |
| [HBASE-3502](https://issues.apache.org/jira/browse/HBASE-3502) | Can't open region because can't open .regioninfo because AlreadyBeingCreatedException |  Critical | . | stack | stack |
| [HBASE-3330](https://issues.apache.org/jira/browse/HBASE-3330) | Add publish of a snapshot to apache repo to our pom |  Major | . | stack | stack |
| [HBASE-3419](https://issues.apache.org/jira/browse/HBASE-3419) | If re-transition to OPENING during log replay fails, server aborts.  Instead, should just cancel region open. |  Critical | regionserver, Zookeeper | Jonathan Gray | Jonathan Gray |
| [HBASE-3499](https://issues.apache.org/jira/browse/HBASE-3499) | Users upgrading to 0.90.0 need to have their .META. table updated with the right MEMSTORE\_SIZE |  Blocker | . | Jean-Daniel Cryans |  |
| [HBASE-3517](https://issues.apache.org/jira/browse/HBASE-3517) | Store build version in hbase-default and verify at runtime |  Blocker | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3524](https://issues.apache.org/jira/browse/HBASE-3524) | NPE from CompactionChecker |  Blocker | regionserver | James Kennedy | ryan rawson |
| [HBASE-3525](https://issues.apache.org/jira/browse/HBASE-3525) | mvn assembly is over-filling the hbase lib dir |  Major | . | stack | stack |
| [HBASE-3531](https://issues.apache.org/jira/browse/HBASE-3531) | When under global memstore pressure, may try to flush unflushable regions in a tight loop |  Blocker | . | Todd Lipcon | Todd Lipcon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3455](https://issues.apache.org/jira/browse/HBASE-3455) | Heap fragmentation in region server |  Critical | Performance, regionserver | Todd Lipcon | Todd Lipcon |


