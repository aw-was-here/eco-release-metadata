
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

## Release 0.1.1 - 2008-04-11



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-548](https://issues.apache.org/jira/browse/HBASE-548) | Tool to online single region |  Minor | . | stack |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-556](https://issues.apache.org/jira/browse/HBASE-556) | Add 0.16.2 to hbase branch -- if it works |  Blocker | . | stack | Jim Kellerman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-550](https://issues.apache.org/jira/browse/HBASE-550) | EOF trying to read reconstruction log stops region deployment |  Blocker | . | stack | stack |
| [HBASE-551](https://issues.apache.org/jira/browse/HBASE-551) | Master stuck splitting server logs in shutdown loop; on each iteration, edits are aggregated up into the millions |  Blocker | . | stack | stack |
| [HBASE-505](https://issues.apache.org/jira/browse/HBASE-505) | Region assignments should never time out so long as the region server reports that it is processing the open request |  Blocker | . | Jim Kellerman | stack |
| [HBASE-552](https://issues.apache.org/jira/browse/HBASE-552) | Bloom filter bugs |  Major | . | Andrzej Bialecki |  |
| [HBASE-555](https://issues.apache.org/jira/browse/HBASE-555) | Only one Worker in HRS; on startup, if assigned tens of regions, havoc of reassignments because open processing is done in series |  Blocker | regionserver | stack | stack |
| [HBASE-547](https://issues.apache.org/jira/browse/HBASE-547) | UI shows hadoop version, not hbase version |  Blocker | . | stack | stack |
| [HBASE-561](https://issues.apache.org/jira/browse/HBASE-561) | HBase package does not include LICENSE.txt nor build.xml |  Blocker | . | stack |  |
| [HBASE-563](https://issues.apache.org/jira/browse/HBASE-563) | TestRowFilterAfterWrite erroneously sets master address to 0.0.0.0:60100 rather than relying on conf |  Blocker | Filters | Jim Kellerman | Jim Kellerman |
| [HBASE-554](https://issues.apache.org/jira/browse/HBASE-554) | filters generate StackOverflowException |  Blocker | Filters | stack | Jim Kellerman |


