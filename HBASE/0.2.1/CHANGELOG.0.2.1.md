
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

## Release 0.2.1 - 2008-09-13



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-801](https://issues.apache.org/jira/browse/HBASE-801) | [hbase] When a table haven't disable, shell could response in a  "user friendly" way. |  Trivial | build | PeterL in | Jean-Daniel Cryans |
| [HBASE-816](https://issues.apache.org/jira/browse/HBASE-816) | TableMap should survive USE |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-813](https://issues.apache.org/jira/browse/HBASE-813) | Add a row counter in the new shell |  Minor | scripts | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-806](https://issues.apache.org/jira/browse/HBASE-806) | Change HbaseMapWritable and RowResult to implement SortedMap instead of Map |  Major | . | Jim Kellerman | Jonathan Gray |
| [HBASE-849](https://issues.apache.org/jira/browse/HBASE-849) | Speed improvement in JenkinsHash |  Major | util | Andrzej Bialecki |  |
| [HBASE-834](https://issues.apache.org/jira/browse/HBASE-834) | 'Major' compactions and upper bound on files we compact at any one time |  Blocker | . | stack | Billy Pearson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-552](https://issues.apache.org/jira/browse/HBASE-552) | Bloom filter bugs |  Major | . | Andrzej Bialecki |  |
| [HBASE-805](https://issues.apache.org/jira/browse/HBASE-805) | Remove unnecessary getRow overloads in HRS |  Major | regionserver | Jonathan Gray | Jim Kellerman |
| [HBASE-811](https://issues.apache.org/jira/browse/HBASE-811) | HTD is not fully copyable |  Minor | Client | Andrew Purtell | Andrew Purtell |
| [HBASE-729](https://issues.apache.org/jira/browse/HBASE-729) | client region/metadata cache should have a public method for invalidating entries |  Minor | Client | Andrew Purtell | Andrew Purtell |
| [HBASE-819](https://issues.apache.org/jira/browse/HBASE-819) | Remove DOS-style ^M carriage returns from all code where found |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-812](https://issues.apache.org/jira/browse/HBASE-812) | Compaction needs little better skip algo |  Critical | regionserver | Billy Pearson | Daniel Leffel |
| [HBASE-818](https://issues.apache.org/jira/browse/HBASE-818) | Deadlock running 'flushSomeRegions' |  Blocker | . | stack | Andrew Purtell |
| [HBASE-820](https://issues.apache.org/jira/browse/HBASE-820) | Need mainline to flush when 'Blocking updates' goes up. |  Blocker | . | stack | Jean-Daniel Cryans |
| [HBASE-821](https://issues.apache.org/jira/browse/HBASE-821) | UnknownScanner happens too often. |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-824](https://issues.apache.org/jira/browse/HBASE-824) | Bug in Hlog we print array of byes for region name |  Trivial | regionserver | Billy Pearson | Billy Pearson |
| [HBASE-825](https://issues.apache.org/jira/browse/HBASE-825) | master logs showing byte[] in place of string on logging |  Trivial | master | Billy Pearson | Billy Pearson |
| [HBASE-808](https://issues.apache.org/jira/browse/HBASE-808) | MAX\_VERSIONS not respected. |  Blocker | . | stack |  |
| [HBASE-809](https://issues.apache.org/jira/browse/HBASE-809) | Deletall doesn't and inserts after delete don't work as expected. |  Major | . | stack |  |
| [HBASE-831](https://issues.apache.org/jira/browse/HBASE-831) | committing BatchUpdate with no row should complain |  Minor | . | Michael Bieniosek | Andrew Purtell |
| [HBASE-830](https://issues.apache.org/jira/browse/HBASE-830) | Debugging HCM.locateRegionInMeta is painful |  Minor | Client | Jean-Daniel Cryans |  |
| [HBASE-833](https://issues.apache.org/jira/browse/HBASE-833) | Doing an insert with an unknown family throws a NPE in HRS |  Trivial | regionserver | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-822](https://issues.apache.org/jira/browse/HBASE-822) | Update thrift README and HBase.thrift to use thrift 20080411 |  Major | . | stack |  |
| [HBASE-697](https://issues.apache.org/jira/browse/HBASE-697) | thrift idl needs update/edit to match new 0.2 API (and to fix bugs) |  Major | . | stack | Tim Sell |
| [HBASE-810](https://issues.apache.org/jira/browse/HBASE-810) | Prevent temporary deadlocks when, during a scan with write operations, the region splits |  Blocker | . | Jean-Daniel Cryans |  |
| [HBASE-843](https://issues.apache.org/jira/browse/HBASE-843) | Deleting and recreating a table in a single process does not work |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-762](https://issues.apache.org/jira/browse/HBASE-762) | deleteFamily takes timestamp, should only take row and family.  Javadoc describes both cases but only implements the timestamp case. |  Minor | Client, IPC/RPC, regionserver | Jonathan Gray | Izaak Rubin |
| [HBASE-768](https://issues.apache.org/jira/browse/HBASE-768) | [Migration] This message 'java.io.IOException: Install 0.1.x of hbase and run its migration first' is useless |  Major | . | stack | Izaak Rubin |
| [HBASE-826](https://issues.apache.org/jira/browse/HBASE-826) | delete table followed by recreation results in honked table |  Blocker | . | stack | stack |
| [HBASE-858](https://issues.apache.org/jira/browse/HBASE-858) | HBase-799 Created an error in util.migration.v5.HColumnDescriptor |  Blocker | util | Izaak Rubin | Jean-Daniel Cryans |
| [HBASE-855](https://issues.apache.org/jira/browse/HBASE-855) | compaction can return less versions then we should in some cases |  Major | regionserver | Billy Pearson | Billy Pearson |
| [HBASE-832](https://issues.apache.org/jira/browse/HBASE-832) | Problem with row keys beginnig with characters \< than ',' and the region location cache |  Blocker | Client, regionserver | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-860](https://issues.apache.org/jira/browse/HBASE-860) | IndexTableReduce doesnt write the column name as the lucene index field properly. |  Major | . | Ryan Smith |  |
| [HBASE-864](https://issues.apache.org/jira/browse/HBASE-864) | Deadlock in regionserver |  Major | . | stack |  |
| [HBASE-872](https://issues.apache.org/jira/browse/HBASE-872) | Getting exceptions in shell when creating/disabling tables |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-871](https://issues.apache.org/jira/browse/HBASE-871) | Major compaction periodicity should be specifyable at the column family level, not cluster wide |  Major | . | stack | Jonathan Gray |
| [HBASE-868](https://issues.apache.org/jira/browse/HBASE-868) | Incrementing binary rows cause strange behavior once table splits |  Blocker | . | Jonathan Gray | Jonathan Gray |
| [HBASE-881](https://issues.apache.org/jira/browse/HBASE-881) | If a server's lease times out or the server dies, All regions will get reassigned even split or offline ones. |  Blocker | . | Jim Kellerman | Jean-Daniel Cryans |
| [HBASE-877](https://issues.apache.org/jira/browse/HBASE-877) | HCM is unable to find table with multiple regions which contains binary |  Blocker | . | Jonathan Gray | Jonathan Gray |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-799](https://issues.apache.org/jira/browse/HBASE-799) | Deprecate all remaining methods that take Text as a parameter |  Blocker | . | Jim Kellerman | Jean-Daniel Cryans |
| [HBASE-752](https://issues.apache.org/jira/browse/HBASE-752) | HBase 0.2.1 should be based on Hadoop 0.17.2.1 |  Blocker | . | Rong-En Fan | Jim Kellerman |


