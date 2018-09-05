
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

## Release 0.1.2 - 2008-05-13



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-46](https://issues.apache.org/jira/browse/HBASE-46) | Robust start and stop for cluster, regionserver |  Major | master, regionserver, scripts | Bryan Duxbury | Jim Kellerman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-580](https://issues.apache.org/jira/browse/HBASE-580) | remove hadoop-examples from hbase |  Major | . | stack |  |
| [HBASE-578](https://issues.apache.org/jira/browse/HBASE-578) | Upgrade branch to 0.16.3 hadoop (if it works) |  Blocker | . | stack | Jim Kellerman |
| [HBASE-572](https://issues.apache.org/jira/browse/HBASE-572) | Backport HBASE-512 to 0.1 branch |  Blocker | regionserver | Bryan Duxbury | Jim Kellerman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-561](https://issues.apache.org/jira/browse/HBASE-561) | HBase package does not include LICENSE.txt nor build.xml |  Blocker | . | stack |  |
| [HBASE-577](https://issues.apache.org/jira/browse/HBASE-577) | NPE getting scanner |  Blocker | . | stack | Jim Kellerman |
| [HBASE-574](https://issues.apache.org/jira/browse/HBASE-574) | HBase does not load hadoop native libs |  Blocker | io | Rong-En Fan | stack |
| [HBASE-573](https://issues.apache.org/jira/browse/HBASE-573) | HBase does not read hadoop-\*.xml for dfs configuration after moving out hadoop/contrib |  Blocker | . | Rong-En Fan | stack |
| [HBASE-11](https://issues.apache.org/jira/browse/HBASE-11) | [hbase] Unexpected exits corrupt DFS |  Major | regionserver | Bryan Duxbury | Jim Kellerman |
| [HBASE-12](https://issues.apache.org/jira/browse/HBASE-12) | when hbase regionserver restarts, it says "impossible state for createLease()" |  Minor | regionserver | Michael Bieniosek | stack |
| [HBASE-559](https://issues.apache.org/jira/browse/HBASE-559) | MR example job to count table rows |  Blocker | . | stack | stack |
| [HBASE-575](https://issues.apache.org/jira/browse/HBASE-575) | hbase master dies with stack overflow error if rootdir isn't qualified |  Blocker | . | Michael Bieniosek | Jim Kellerman |
| [HBASE-582](https://issues.apache.org/jira/browse/HBASE-582) | HBase 554 forgot to clear results on each iteration caused by a filter |  Blocker | regionserver | Clint Morgan |  |
| [HBASE-532](https://issues.apache.org/jira/browse/HBASE-532) | Odd interaction between HRegion.get, HRegion.deleteAll and compactions |  Blocker | . | Jim Kellerman | stack |
| [HBASE-590](https://issues.apache.org/jira/browse/HBASE-590) | HBase migration tool does not get correct FileSystem or root directory if configuration is not correct. |  Blocker | util | Jim Kellerman | Jim Kellerman |
| [HBASE-595](https://issues.apache.org/jira/browse/HBASE-595) | RowFilterInterface.rowProcessed() is called \*before\* fhe final filtering decision is made |  Major | Filters | Clint Morgan |  |
| [HBASE-586](https://issues.apache.org/jira/browse/HBASE-586) | HRegion runs HStore memcache snapshotting -- fix it so only HStore knows about workings of memcache |  Critical | . | stack | stack |
| [HBASE-588](https://issues.apache.org/jira/browse/HBASE-588) | Still a 'hole' in scanners, even after HBASE-532 |  Blocker | . | stack | stack |
| [HBASE-604](https://issues.apache.org/jira/browse/HBASE-604) | Don't allow CLASSPATH from environment pollute the hbase CLASSPATH |  Blocker | . | stack |  |
| [HBASE-608](https://issues.apache.org/jira/browse/HBASE-608) | HRegionServer::getThisIP() checks hadoop config var for dns interface name |  Major | regionserver | Jim R. Wilson |  |
| [HBASE-609](https://issues.apache.org/jira/browse/HBASE-609) | Master doesn't see regionserver edits because of clock skew |  Blocker | . | stack | stack |
| [HBASE-618](https://issues.apache.org/jira/browse/HBASE-618) | We always compact if 2 files, regardless of the compaction threshold setting |  Blocker | . | stack |  |
| [HBASE-619](https://issues.apache.org/jira/browse/HBASE-619) | Fix 'logs' link in UI |  Major | . | stack |  |
| [HBASE-478](https://issues.apache.org/jira/browse/HBASE-478) | offlining of table does not run reliably |  Critical | . | stack | Jim Kellerman |
| [HBASE-620](https://issues.apache.org/jira/browse/HBASE-620) | testmergetool failing in branch and trunk since hbase-618 went in |  Major | . | stack | stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-607](https://issues.apache.org/jira/browse/HBASE-607) | MultiRegionTable.makeMultiRegionTable is not deterministic enough for regression tests |  Major | test | Jim Kellerman | Jim Kellerman |


