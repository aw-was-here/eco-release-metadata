
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

## Release 0.94.14 - 2013-11-25



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9715](https://issues.apache.org/jira/browse/HBASE-9715) | Backport -in\_memory option support for LoadTestTool from trunk |  Trivial | test | Andrew Purtell | Andrew Purtell |
| [HBASE-9894](https://issues.apache.org/jira/browse/HBASE-9894) | remove the inappropriate assert statement in Store.getSplitPoint() |  Minor | regionserver | Liang Xie | Liang Xie |
| [HBASE-4654](https://issues.apache.org/jira/browse/HBASE-4654) | [replication] Add a check to make sure we don't replicate to ourselves |  Major | . | Jean-Daniel Cryans | Demai Ni |
| [HBASE-9963](https://issues.apache.org/jira/browse/HBASE-9963) | Remove the ReentrantReadWriteLock in the MemStore |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8438](https://issues.apache.org/jira/browse/HBASE-8438) | Extend bin/hbase to print a "mapreduce classpath" |  Major | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-9831](https://issues.apache.org/jira/browse/HBASE-9831) | 'hbasefsck.numthreads' property isn't passed to hbck via cmdline -D option |  Minor | hbck | takeshi.miao | takeshi.miao |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9906](https://issues.apache.org/jira/browse/HBASE-9906) | Restore snapshot fails to restore the meta edits sporadically |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-9915](https://issues.apache.org/jira/browse/HBASE-9915) | Performance: isSeeked() in EncodedScannerV2 always returns false |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9890](https://issues.apache.org/jira/browse/HBASE-9890) | MR jobs are not working if started by a delegated user |  Major | mapreduce, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9952](https://issues.apache.org/jira/browse/HBASE-9952) | Snapshot restore may fail due to NullPointerException |  Major | . | Ted Yu | Enis Soztutar |
| [HBASE-9850](https://issues.apache.org/jira/browse/HBASE-9850) | Issues with UI for table compact/split operation completion. After split/compaction operation using UI, the page is not automatically redirecting back using IE8/Firefox. |  Major | UI | Kashif | Kashif |
| [HBASE-9902](https://issues.apache.org/jira/browse/HBASE-9902) | Region Server is starting normally even if clock skew is more than default 30 seconds(or any configured). -\> Regionserver node time is greater than master node time |  Major | master | Kashif | Kashif |
| [HBASE-9865](https://issues.apache.org/jira/browse/HBASE-9865) | Reused WALEdits in replication may cause RegionServers to go OOM |  Major | . | churro morales | Lars Hofhansl |
| [HBASE-9956](https://issues.apache.org/jira/browse/HBASE-9956) | Remove keyLength cache from KeyValue |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9809](https://issues.apache.org/jira/browse/HBASE-9809) | RegionTooBusyException should provide region name which was too busy |  Major | . | Ted Yu | Gustavo Anatoly |
| [HBASE-9138](https://issues.apache.org/jira/browse/HBASE-9138) | getHaseIntegrationTestingUtility() is misspelled |  Trivial | test | chendihao | chendihao |
| [HBASE-9849](https://issues.apache.org/jira/browse/HBASE-9849) | [REST] Forbidden schema delete in read only mode |  Major | REST | Julian Zhou | Julian Zhou |
| [HBASE-9799](https://issues.apache.org/jira/browse/HBASE-9799) | Change Hadoop 1.2 dependency to 1.2.1 |  Trivial | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9971](https://issues.apache.org/jira/browse/HBASE-9971) | Port part of HBASE-9958 to 0.94 - change lock scope in locateRegion |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9970](https://issues.apache.org/jira/browse/HBASE-9970) | HBase BulkLoad, table is creating with the timestamp key also as a column to the table. |  Major | . | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-9975](https://issues.apache.org/jira/browse/HBASE-9975) | Not starting ReplicationSink when using custom implementation for the ReplicationSink. |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-9834](https://issues.apache.org/jira/browse/HBASE-9834) | Minimize byte[] copies for 'smart' clients |  Major | Client | Jesse Yates | Jesse Yates |
| [HBASE-9993](https://issues.apache.org/jira/browse/HBASE-9993) | 0.94: HBASE-9865 breaks coprocessor compatibility with WALEdit. |  Blocker | . | Lars Hofhansl | Lars Hofhansl |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8552](https://issues.apache.org/jira/browse/HBASE-8552) | fix coverage org.apache.hadoop.hbase.rest.filter |  Major | . | Aleksey Gorshkov | Andrey Klochkov |
| [HBASE-8557](https://issues.apache.org/jira/browse/HBASE-8557) | fix coverage org.apache.hadoop.hbase.rest.metrics |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |
| [HBASE-8556](https://issues.apache.org/jira/browse/HBASE-8556) | fix coverage  org.apache.hadoop.hbase.metrics.histogram |  Major | . | Aleksey Gorshkov | Andrey Klochkov |
| [HBASE-8543](https://issues.apache.org/jira/browse/HBASE-8543) | fix coverage org.apache.hadoop.hbase.rest.client |  Major | test | Aleksey Gorshkov | Andrey Klochkov |
| [HBASE-8559](https://issues.apache.org/jira/browse/HBASE-8559) | increase unit-test coverage of package org.apache.hadoop.hbase.coprocessor |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HBASE-8397](https://issues.apache.org/jira/browse/HBASE-8397) | improve unit-test coverage of package org.apache.hadoop.hbase.master.metrics (0.94) |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9165](https://issues.apache.org/jira/browse/HBASE-9165) | Improvements to addDependencyJars |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |


