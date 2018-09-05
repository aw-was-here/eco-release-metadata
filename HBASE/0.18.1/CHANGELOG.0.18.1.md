
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

## Release 0.18.1 - 2008-10-27



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-920](https://issues.apache.org/jira/browse/HBASE-920) | Make region balancing sloppier |  Major | . | stack | stack |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-891](https://issues.apache.org/jira/browse/HBASE-891) | HRS.validateValuesLength throws IOE, gets caught in the retries |  Major | Client | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-906](https://issues.apache.org/jira/browse/HBASE-906) | [shell] Truncates output |  Major | . | stack | stack |
| [HBASE-909](https://issues.apache.org/jira/browse/HBASE-909) | the version string in build.xml is wrong |  Trivial | build | Rong-En Fan | Rong-En Fan |
| [HBASE-912](https://issues.apache.org/jira/browse/HBASE-912) | PE is broken when other tables exist |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-925](https://issues.apache.org/jira/browse/HBASE-925) | HRS NPE on way out if no master to connect to |  Major | . | stack | stack |
| [HBASE-928](https://issues.apache.org/jira/browse/HBASE-928) | NPE throwing RetriesExhaustedException |  Major | . | stack | stack |
| [HBASE-924](https://issues.apache.org/jira/browse/HBASE-924) | Update hadoop in lib on 0.18 hbase branch to 0.18.1 |  Major | . | stack | Jim Kellerman |
| [HBASE-930](https://issues.apache.org/jira/browse/HBASE-930) | RegionServer stuck: HLog: Could not append. Requesting close of log java.io.IOException: Could not get block locations. Aborting... |  Major | . | stack | stack |
| [HBASE-933](https://issues.apache.org/jira/browse/HBASE-933) | missing hbase.regions.slop in hbase-default.xml for 0.18 branch |  Trivial | . | Rong-En Fan | stack |
| [HBASE-926](https://issues.apache.org/jira/browse/HBASE-926) | If no master, regionservers should hang out rather than fail on connection and shut themselves down |  Blocker | . | stack | Jim Kellerman |
| [HBASE-946](https://issues.apache.org/jira/browse/HBASE-946) | Row with 55k deletes timesout scanner lease |  Blocker | . | stack | stack |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-918](https://issues.apache.org/jira/browse/HBASE-918) | Region balancing during startup makes cluster unstable |  Blocker | master | Jim Kellerman | Jim Kellerman |


