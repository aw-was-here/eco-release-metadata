
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

## Release 0.94.13 - 2013-11-07



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9488](https://issues.apache.org/jira/browse/HBASE-9488) | Improve performance for small scan |  Major | Client, Performance, Scanners | chunhui shen | chunhui shen |
| [HBASE-9749](https://issues.apache.org/jira/browse/HBASE-9749) | Custom threadpool for Coprocessor obtained HTables |  Major | Coprocessors | Jesse Yates | Jesse Yates |
| [HBASE-9716](https://issues.apache.org/jira/browse/HBASE-9716) | LoadTestTool should provide default min and max settings to the data generator |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-9221](https://issues.apache.org/jira/browse/HBASE-9221) | Provide interface for getting a User in the client |  Major | Client, hadoop2, security | Jesse Yates | Jesse Yates |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9607](https://issues.apache.org/jira/browse/HBASE-9607) | Data loss after snapshot restore into cloned table |  Major | snapshots | Ted Yu | Matteo Bertozzi |
| [HBASE-9430](https://issues.apache.org/jira/browse/HBASE-9430) | Memstore heapSize calculation - DEEP\_OVERHEAD is incorrect |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-9649](https://issues.apache.org/jira/browse/HBASE-9649) | HFilePrettyPrinter should not throw a NPE if FirstKey or LastKey is null. |  Major | util | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9548](https://issues.apache.org/jira/browse/HBASE-9548) | Cleanup SnapshotTestingUtils |  Trivial | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9504](https://issues.apache.org/jira/browse/HBASE-9504) | Backport HBASE-1212 to 0.94 |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8521](https://issues.apache.org/jira/browse/HBASE-8521) | Cells cannot be overwritten with bulk loaded HFiles |  Major | . | Jonathan Natkins | Jean-Marc Spaggiari |
| [HBASE-9732](https://issues.apache.org/jira/browse/HBASE-9732) | Static AtomicLong updated in StoreFileScanner every (re)seek |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9731](https://issues.apache.org/jira/browse/HBASE-9731) | updatesBlockedSeconds RegionServer metric should not be a histogram |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix |  Major | scripts | Aditya Kishore | Aditya Kishore |
| [HBASE-9751](https://issues.apache.org/jira/browse/HBASE-9751) | Excessive  readpoints checks in StoreFileScanner |  Major | . | Vladimir Rodionov | Lars Hofhansl |
| [HBASE-9753](https://issues.apache.org/jira/browse/HBASE-9753) | Excessive readpoint checks in MemstoreScanner |  Major | . | Lars Hofhansl | Ted Yu |
| [HBASE-9789](https://issues.apache.org/jira/browse/HBASE-9789) | Change logging for Coprocessor exec call to trace |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9747](https://issues.apache.org/jira/browse/HBASE-9747) | PrefixFilter with OR condition gives wrong results |  Major | Filters | Deepa Remesh | Aditya Kishore |
| [HBASE-9727](https://issues.apache.org/jira/browse/HBASE-9727) | HBase Rest Server - DELETE scanner operation is a no-op |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-9651](https://issues.apache.org/jira/browse/HBASE-9651) | Backport HBASE-3890 'Scheduled tasks in distributed log splitting not in sync with ZK' to 0.94 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9783](https://issues.apache.org/jira/browse/HBASE-9783) | o.a.h.h.r.HRegion.mutateRow() with non-existent CF cause NPE |  Minor | regionserver | Aditya Kishore | Aditya Kishore |
| [HBASE-9737](https://issues.apache.org/jira/browse/HBASE-9737) | Corrupt HFile cause resource leak leading to Region Server OOM |  Critical | HFile | Aditya Kishore | Aditya Kishore |
| [HBASE-7600](https://issues.apache.org/jira/browse/HBASE-7600) | TestAdmin.testCreateBadTables is failing occasionally |  Major | . | Lars Hofhansl | Liu Shaohui |
| [HBASE-9807](https://issues.apache.org/jira/browse/HBASE-9807) | block encoder unnecessarily copies the key for each reseek |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9847](https://issues.apache.org/jira/browse/HBASE-9847) | HConnectionImplementation does not connect to new active master |  Major | shell | rajeshbabu | Pankaj Kumar |
| [HBASE-9842](https://issues.apache.org/jira/browse/HBASE-9842) | Backport HBASE-9593 and HBASE-8667 to 0.94 |  Major | . | Lars Hofhansl | rajeshbabu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8553](https://issues.apache.org/jira/browse/HBASE-8553) | improve unit-test coverage of package org.apache.hadoop.hbase.mapreduce.hadoopbackport |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HBASE-9851](https://issues.apache.org/jira/browse/HBASE-9851) | TestHBaseFsck.testQuarantineMissingHFile is flaky |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9852](https://issues.apache.org/jira/browse/HBASE-9852) | TestRpcMetrics.testCustomMetrics is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9711](https://issues.apache.org/jira/browse/HBASE-9711) | Improve HBASE-9428 - avoid copying bytes for RegexFilter unless necessary |  Trivial | . | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9819](https://issues.apache.org/jira/browse/HBASE-9819) | Backport HBASE-8372 'Provide mutability to CompoundConfiguration' to 0.94 |  Major | . | Ted Yu | Ted Yu |


