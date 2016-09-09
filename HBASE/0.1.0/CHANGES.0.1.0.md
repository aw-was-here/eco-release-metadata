
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

## Release 0.1.0 - 2008-03-27



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-79](https://issues.apache.org/jira/browse/HBASE-79) | [hbase] When HBase needs to be migrated, it should display a message on stdout, not just in the logs |  Blocker | util | Bryan Duxbury | Jim Kellerman |
| [HBASE-515](https://issues.apache.org/jira/browse/HBASE-515) | At least double default timeouts between regionserver and master |  Blocker | . | stack |  |
| [HBASE-506](https://issues.apache.org/jira/browse/HBASE-506) | When an exception has to escape ServerCallable due to exhausted retries, show all the exceptions that lead to this situation |  Major | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-456](https://issues.apache.org/jira/browse/HBASE-456) | Clearly state which ports need to be opened in order to run HBase |  Blocker | documentation | Chris Kline |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-688](https://issues.apache.org/jira/browse/HBASE-688) | Method expecting HBaseConfiguration throw NPE when given Configuration |  Minor | . | Stu Hood | stack |
| [HBASE-425](https://issues.apache.org/jira/browse/HBASE-425) | Fix doc. so it accomodates new hbase untethered context |  Major | . | stack | stack |
| [HBASE-421](https://issues.apache.org/jira/browse/HBASE-421) | TestRegionServerExit broken |  Critical | test | Jim Kellerman | Jim Kellerman |
| [HBASE-426](https://issues.apache.org/jira/browse/HBASE-426) | hbase can't find remote filesystem |  Blocker | . | stack |  |
| [HBASE-446](https://issues.apache.org/jira/browse/HBASE-446) | Fully qualified hbase.rootdir doesn't work |  Blocker | . | stack | Jim Kellerman |
| [HBASE-281](https://issues.apache.org/jira/browse/HBASE-281) | Shell should allow deletions in .META. and -ROOT- tables |  Blocker | util | Bryan Duxbury | Edward J. Yoon |
| [HBASE-480](https://issues.apache.org/jira/browse/HBASE-480) | Tool to manually merge two regions |  Minor | . | stack |  |
| [HBASE-477](https://issues.apache.org/jira/browse/HBASE-477) | Add support for an HBASE\_CLASSPATH |  Minor | . | stack |  |
| [HBASE-490](https://issues.apache.org/jira/browse/HBASE-490) | Doubly-assigned .META.; master uses one and clients another |  Blocker | master | stack |  |
| [HBASE-496](https://issues.apache.org/jira/browse/HBASE-496) | impossible state for createLease writes 400k lines in about 15seconds |  Major | . | stack |  |
| [HBASE-472](https://issues.apache.org/jira/browse/HBASE-472) | Passing on edits, we dump all to log |  Major | . | stack |  |
| [HBASE-495](https://issues.apache.org/jira/browse/HBASE-495) | No server address listed in .META. |  Major | master | stack |  |
| [HBASE-251](https://issues.apache.org/jira/browse/HBASE-251) | [hbase] Stuck replaying the edits of crashed machine |  Blocker | master | stack | Jim Kellerman |
| [HBASE-433](https://issues.apache.org/jira/browse/HBASE-433) | region server should deleted restore log after successfull restore |  Blocker | regionserver | Billy Pearson | Jim Kellerman |
| [HBASE-27](https://issues.apache.org/jira/browse/HBASE-27) | [hbase] hregioninfo cell empty in meta table |  Blocker | master | stack | Jim Kellerman |
| [HBASE-501](https://issues.apache.org/jira/browse/HBASE-501) | Empty region server address in info:server entry and a startcode of -1 in .META. |  Blocker | . | stack |  |
| [HBASE-510](https://issues.apache.org/jira/browse/HBASE-510) | HConnectionManger.listTables returns empty list if exception (though there may be many tables present) |  Minor | Client | stack | Bryan Duxbury |
| [HBASE-516](https://issues.apache.org/jira/browse/HBASE-516) | HStoreFile.finalKey does not update the final key if it is not the top region of a split region |  Blocker | . | Jim Kellerman | Jim Kellerman |
| [HBASE-524](https://issues.apache.org/jira/browse/HBASE-524) | Problems with getFull |  Critical | regionserver | Bryan Duxbury | Bryan Duxbury |
| [HBASE-514](https://issues.apache.org/jira/browse/HBASE-514) | table 'does not exist' when it does |  Major | Client | stack | Bryan Duxbury |
| [HBASE-497](https://issues.apache.org/jira/browse/HBASE-497) | RegionServer needs to recover if datanode goes down |  Blocker | . | Michael Bieniosek | Bryan Duxbury |
| [HBASE-537](https://issues.apache.org/jira/browse/HBASE-537) | We no longer wait on hdfs to exit safe mode |  Blocker | . | stack | Jim Kellerman |
| [HBASE-527](https://issues.apache.org/jira/browse/HBASE-527) | RegexpRowFilter does not work when there are columns from multiple families |  Blocker | Filters | Clint Morgan | Jim Kellerman |
| [HBASE-476](https://issues.apache.org/jira/browse/HBASE-476) | RegexpRowFilter behaves incorectly when there are multiple store files |  Blocker | Filters | Clint Morgan | Jim Kellerman |
| [HBASE-534](https://issues.apache.org/jira/browse/HBASE-534) | Double-assignment at SPLIT-time (WAS: Stores retaining references to long-deleted mapfiles) |  Blocker | . | stack |  |
| [HBASE-545](https://issues.apache.org/jira/browse/HBASE-545) | NPE in TTMR in branch |  Major | . | stack |  |
| [HBASE-431](https://issues.apache.org/jira/browse/HBASE-431) | javadoc links are broke |  Major | . | stack |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5](https://issues.apache.org/jira/browse/HBASE-5) | Components definition |  Critical | . | Edward J. Yoon | Jim Kellerman |
| [HBASE-408](https://issues.apache.org/jira/browse/HBASE-408) | Add .classpath and .project to svn:ignore list |  Trivial | . | Edward J. Yoon | Edward J. Yoon |
| [HBASE-413](https://issues.apache.org/jira/browse/HBASE-413) | add mailing list to gmane.org |  Minor | . | Billy Pearson |  |
| [HBASE-482](https://issues.apache.org/jira/browse/HBASE-482) | package-level javadoc should have example client or at least point at the FAQ |  Blocker | documentation | Andy Lee | Bryan Duxbury |
| [HBASE-403](https://issues.apache.org/jira/browse/HBASE-403) | Fix build after move of hbase in svn |  Major | build | stack |  |
| [HBASE-494](https://issues.apache.org/jira/browse/HBASE-494) | Up IPC version on 0.1 branch so we cannot mistakenly connect with a hbase from 0.16.0 |  Major | . | stack |  |
| [HBASE-530](https://issues.apache.org/jira/browse/HBASE-530) | Upgrade hadoop to 0.16.1 in 0.1 branch |  Major | . | stack |  |
| [HBASE-526](https://issues.apache.org/jira/browse/HBASE-526) | Add documentation src and build to the 0.1 branch |  Major | documentation | stack |  |
| [HBASE-483](https://issues.apache.org/jira/browse/HBASE-483) | Merge tool won't merge two overlapping regions |  Blocker | . | stack | Jim Kellerman |


