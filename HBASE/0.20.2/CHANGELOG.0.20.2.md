
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

## Release 0.20.2 - 2009-11-19



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1959](https://issues.apache.org/jira/browse/HBASE-1959) | Compress tables during 0.19 to 0.20 migration |  Major | . | Dave Latham | Dave Latham |
| [HBASE-1867](https://issues.apache.org/jira/browse/HBASE-1867) | Tool to regenerate an hbase table from the data files |  Minor | util | elsif | stack |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1899](https://issues.apache.org/jira/browse/HBASE-1899) | Use scanner caching in shell count |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1903](https://issues.apache.org/jira/browse/HBASE-1903) | Enable DEBUG by default |  Major | . | stack |  |
| [HBASE-1918](https://issues.apache.org/jira/browse/HBASE-1918) | Don't do DNS resolving in .META. scanner for each row |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1947](https://issues.apache.org/jira/browse/HBASE-1947) | If HBase starts/stops often in less than 24 hours, you end up with lots of store files |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1953](https://issues.apache.org/jira/browse/HBASE-1953) | Overhaul of overview.html (html fixes, typos, consistency) - no content changes |  Minor | documentation | Lars Francke |  |
| [HBASE-1829](https://issues.apache.org/jira/browse/HBASE-1829) | Make use of start/stop row in TableInputFormat |  Major | . | Lars George | Lars George |
| [HBASE-1968](https://issues.apache.org/jira/browse/HBASE-1968) | Give clients access to the write buffer |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1904](https://issues.apache.org/jira/browse/HBASE-1904) | Add tutorilal for installing HBase on Windows using Cygwin as a test and development environment |  Minor | documentation | Wim Van Leuven |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1905](https://issues.apache.org/jira/browse/HBASE-1905) | Remove unused config. hbase.hstore.blockCache.blockSize |  Major | . | stack | stack |
| [HBASE-1906](https://issues.apache.org/jira/browse/HBASE-1906) | FilterList of prefix and columnvalue not working properly with deletes and multiple values |  Major | . | stack | stack |
| [HBASE-1896](https://issues.apache.org/jira/browse/HBASE-1896) | WhileMatchFilter.reset should call encapsulated filter reset |  Major | Filters | Yoram Kulbak | stack |
| [HBASE-1912](https://issues.apache.org/jira/browse/HBASE-1912) | When adding a secondary index to an existing table, it will cause NPE during re-indexing. |  Minor | . | Mingjui Ray Liao |  |
| [HBASE-1917](https://issues.apache.org/jira/browse/HBASE-1917) | TestScanner.testFilters failing |  Major | . | Andrew Purtell | stack |
| [HBASE-1908](https://issues.apache.org/jira/browse/HBASE-1908) | ROOT not reassigned if only one regionserver left |  Blocker | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1916](https://issues.apache.org/jira/browse/HBASE-1916) | FindBugs and javac warnings cleanup |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1924](https://issues.apache.org/jira/browse/HBASE-1924) | MapReduce Driver lost hsf2sf backporting hbase-1684 |  Major | . | stack |  |
| [HBASE-1777](https://issues.apache.org/jira/browse/HBASE-1777) | column length is not checked before saved to memstore |  Major | Client | Billy Pearson | Amandeep Khurana |
| [HBASE-1895](https://issues.apache.org/jira/browse/HBASE-1895) | HConstants.MAX\_ROW\_LENGTH is incorrectly 64k, should be 32k |  Major | . | ryan rawson | Amandeep Khurana |
| [HBASE-1925](https://issues.apache.org/jira/browse/HBASE-1925) | IllegalAccessError: Has not been initialized (getMaxSequenceId) |  Blocker | . | stack | stack |
| [HBASE-1929](https://issues.apache.org/jira/browse/HBASE-1929) | If hbase-default.xml is not in CP, zk session timeout is 10 secs! |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1927](https://issues.apache.org/jira/browse/HBASE-1927) | Scanners not closed properly in certain circumstances (memory leak) |  Major | regionserver | Erik Rozendaal | Jonathan Gray |
| [HBASE-1934](https://issues.apache.org/jira/browse/HBASE-1934) | NullPointerException in ClientScanner |  Major | . | Daniel Ploeg | Andrew Purtell |
| [HBASE-1921](https://issues.apache.org/jira/browse/HBASE-1921) | When the Master's session times out and there's only one, cluster is wedged |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1946](https://issues.apache.org/jira/browse/HBASE-1946) | Unhandled exception at regionserver |  Major | regionserver | Dmitriy Lyfar | Dmitriy Lyfar |
| [HBASE-1941](https://issues.apache.org/jira/browse/HBASE-1941) | Put's copy feature has a bug. |  Major | Client | Hyunsik Choi |  |
| [HBASE-1682](https://issues.apache.org/jira/browse/HBASE-1682) | IndexedRegion does not properly handle deletes |  Major | . | Andrew McCall | Clint Morgan |
| [HBASE-1954](https://issues.apache.org/jira/browse/HBASE-1954) | Transactional scans do not see newest put. |  Major | . | Clint Morgan | Clint Morgan |
| [HBASE-1919](https://issues.apache.org/jira/browse/HBASE-1919) | code: HRS.delete seems to ignore exceptions it shouldnt |  Major | . | ryan rawson | Jean-Daniel Cryans |
| [HBASE-1951](https://issues.apache.org/jira/browse/HBASE-1951) | Stack overflow when calling HTable.checkAndPut() when deleting a lot of values |  Major | regionserver | Age Mooij | Jean-Daniel Cryans |
| [HBASE-1781](https://issues.apache.org/jira/browse/HBASE-1781) | Weird behavior of WildcardColumnTracker.checkColumn(), looks like recursive loop |  Major | . | Lars George | Jean-Daniel Cryans |
| [HBASE-1949](https://issues.apache.org/jira/browse/HBASE-1949) | KeyValue expiration by Time-to-Live during major compaction is broken |  Major | regionserver | Gary Helmling | Gary Helmling |
| [HBASE-1957](https://issues.apache.org/jira/browse/HBASE-1957) | Get-s can't set a Filter |  Major | Filters | Roman Kalyakin |  |
| [HBASE-1928](https://issues.apache.org/jira/browse/HBASE-1928) | ROOT and META tables stay in transition state (making the system not usable) if the designated regionServer dies before the assignment is complete |  Major | master | Yannis Pavlidis |  |
| [HBASE-1966](https://issues.apache.org/jira/browse/HBASE-1966) | Apply the fix from site/ to remove the forrest dependency on java5 |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1965](https://issues.apache.org/jira/browse/HBASE-1965) | On restart of branch, master complains about not being able to set safe mode |  Major | . | stack | stack |


