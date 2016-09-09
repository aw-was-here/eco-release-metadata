
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

## Release 0.98.15 - 2015-10-09



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14459](https://issues.apache.org/jira/browse/HBASE-14459) | Add request and response sizes metrics |  Major | metrics | Sanjeev Srivatsa | Sanjeev Srivatsa |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14325](https://issues.apache.org/jira/browse/HBASE-14325) | Add snapshotinfo command to hbase script |  Minor | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections. |  Major | integration tests | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14371](https://issues.apache.org/jira/browse/HBASE-14371) | Backport the MasterKillingMonkeyFactory from HBASE-13470 to 0.98 |  Minor | integration tests | Andrew Purtell | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | Fix coprocessor handling of duplicate classes |  Critical | Coprocessors | Lars George | stack |
| [HBASE-14269](https://issues.apache.org/jira/browse/HBASE-14269) | FuzzyRowFilter omits certain rows when multiple fuzzy keys exist |  Major | Filters | hongbin ma | hongbin ma |
| [HBASE-14315](https://issues.apache.org/jira/browse/HBASE-14315) | Save one call to KeyValueHeap.peek per row |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14258](https://issues.apache.org/jira/browse/HBASE-14258) | Make region\_mover.rb script case insensitive with regard to hostname |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14354](https://issues.apache.org/jira/browse/HBASE-14354) | Minor improvements for usage of the mlock agent |  Trivial | hbase, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-14229](https://issues.apache.org/jira/browse/HBASE-14229) | Flushing canceled by coprocessor still leads to memstoreSize set down |  Major | regionserver | Yerui Sun | Yerui Sun |
| [HBASE-14359](https://issues.apache.org/jira/browse/HBASE-14359) | HTable#close will hang forever if unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Major | Client | Yu Li | Victor Xu |
| [HBASE-14327](https://issues.apache.org/jira/browse/HBASE-14327) | TestIOFencing#testFencingAroundCompactionAfterWALSync is flaky |  Critical | test | Dima Spivak | Heng Chen |
| [HBASE-14364](https://issues.apache.org/jira/browse/HBASE-14364) | hlog\_roll and compact\_rs broken in shell |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14382](https://issues.apache.org/jira/browse/HBASE-14382) | TestInterfaceAudienceAnnotations should hadoop-compt module resources |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14307](https://issues.apache.org/jira/browse/HBASE-14307) | Incorrect use of positional read api in HFileBlock |  Major | io | Shradha Revankar | Chris Nauroth |
| [HBASE-14207](https://issues.apache.org/jira/browse/HBASE-14207) | Region was hijacked and remained in transition when RS failed to open a region and later regionplan changed to new RS on retry |  Critical | master | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14434](https://issues.apache.org/jira/browse/HBASE-14434) | Merge of HBASE-7332 to 0.98 dropped a hunk |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14400](https://issues.apache.org/jira/browse/HBASE-14400) | Fix HBase RPC protection documentation |  Critical | encryption, IPC/RPC, security | Appy | Appy |
| [HBASE-13250](https://issues.apache.org/jira/browse/HBASE-13250) | chown of ExportSnapshot does not cover all path and files |  Critical | snapshots | He Liangliang | He Liangliang |
| [HBASE-14453](https://issues.apache.org/jira/browse/HBASE-14453) | HBaseAdmin#deleteTable should relocate META when cached location is stale |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13324](https://issues.apache.org/jira/browse/HBASE-13324) | o.a.h.h.Coprocessor should be LimitedPrivate("Coprocessor") |  Minor | API | Lars George | Andrew Purtell |
| [HBASE-14492](https://issues.apache.org/jira/browse/HBASE-14492) | Increase REST server header buffer size from 8k to 64k |  Major | REST | huaxiang sun | huaxiang sun |
| [HBASE-14407](https://issues.apache.org/jira/browse/HBASE-14407) | NotServingRegion: hbase region closed forever |  Critical | Region Assignment | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-14370](https://issues.apache.org/jira/browse/HBASE-14370) | Use separate thread for calling ZKPermissionWatcher#refreshNodes() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14489](https://issues.apache.org/jira/browse/HBASE-14489) | postScannerFilterRow consumes a lot of CPU |  Major | Coprocessors, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14510](https://issues.apache.org/jira/browse/HBASE-14510) | Can not set coprocessor from Shell after HBASE-14224 |  Major | Coprocessors, shell | Yerui Sun | Yerui Sun |
| [HBASE-14494](https://issues.apache.org/jira/browse/HBASE-14494) | Wrong usage messages on shell commands |  Minor | shell | Josh Elser | Josh Elser |
| [HBASE-14475](https://issues.apache.org/jira/browse/HBASE-14475) | Region split requests are always audited with "hbase" user rather than request user |  Major | regionserver, security | Enis Soztutar | Ted Yu |
| [HBASE-13143](https://issues.apache.org/jira/browse/HBASE-13143) | TestCacheOnWrite is flaky and needs a diet |  Critical | test | Andrew Purtell | Andrew Purtell |
| [HBASE-13744](https://issues.apache.org/jira/browse/HBASE-13744) | TestCorruptedRegionStoreFile is flaky |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-13770](https://issues.apache.org/jira/browse/HBASE-13770) | Programmatic JAAS configuration option for secure zookeeper may be broken |  Major | Operability, security | Andrew Purtell | Maddineni Sukumar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14428](https://issues.apache.org/jira/browse/HBASE-14428) | Upgrade our surefire-plugin from 2.18 to 2.18.1 |  Major | test | stack | stack |
| [HBASE-14147](https://issues.apache.org/jira/browse/HBASE-14147) | REST Support for Namespaces |  Minor | REST | Rick Kellogg | Matt Warhaftig |
| [HBASE-12748](https://issues.apache.org/jira/browse/HBASE-12748) | RegionCoprocessorHost.execOperation creates too many iterator objects |  Major | . | Vladimir Rodionov | Andrew Purtell |
| [HBASE-14513](https://issues.apache.org/jira/browse/HBASE-14513) | TestBucketCache runs obnoxious 1k threads in a unit test |  Major | test | stack | stack |
| [HBASE-14539](https://issues.apache.org/jira/browse/HBASE-14539) | Slight improvement of StoreScanner.optimize |  Minor | Performance, Scanners | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14403](https://issues.apache.org/jira/browse/HBASE-14403) | [0.98] Fix TestInterfaceAudienceAnnotations failures |  Major | . | Nick Dimiduk | Andrew Purtell |
| [HBASE-14404](https://issues.apache.org/jira/browse/HBASE-14404) | Backport HBASE-14098 (Allow dropping caches behind compactions) to 0.98 |  Major | . | Andrew Purtell | Liu Shaohui |
| [HBASE-14308](https://issues.apache.org/jira/browse/HBASE-14308) | HTableDescriptor WARN is not actionable |  Minor | Usability | Nick Dimiduk | Lars Francke |


