
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

## Release 0.19.3 - 2009-05-27



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1424](https://issues.apache.org/jira/browse/HBASE-1424) | have shell print regioninfo and location on first load if DEBUG enabled |  Major | . | stack | stack |
| [HBASE-1008](https://issues.apache.org/jira/browse/HBASE-1008) | [performance] The replay of logs on server crash takes way too long |  Blocker | . | stack | Jean-Daniel Cryans |
| [HBASE-1420](https://issues.apache.org/jira/browse/HBASE-1420) | add abliity to add and remove (table) indexes on existing tables |  Major | Client, regionserver | Clint Morgan | Clint Morgan |
| [HBASE-1430](https://issues.apache.org/jira/browse/HBASE-1430) | Read the logs in batches during log splitting to avoid OOME |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1418](https://issues.apache.org/jira/browse/HBASE-1418) | Transacitonal improvments and fixes |  Major | Client, regionserver | Clint Morgan | Clint Morgan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1344](https://issues.apache.org/jira/browse/HBASE-1344) | WARN IllegalStateException: Cannot set a region as open if it has not been pending |  Major | . | stack | stack |
| [HBASE-1431](https://issues.apache.org/jira/browse/HBASE-1431) | NPE in HTable.checkAndSave when row doesn't exist |  Trivial | regionserver | Guilherme Mauro Germoglio Barbosa | Guilherme Mauro Germoglio Barbosa |
| [HBASE-1401](https://issues.apache.org/jira/browse/HBASE-1401) | close HLog (and open new one) if there hasnt been edits in N minutes/hours |  Blocker | . | ryan rawson | stack |
| [HBASE-1421](https://issues.apache.org/jira/browse/HBASE-1421) | Processing a regionserver message -- OPEN, CLOSE, SPLIT, etc. -- and if we're carrying more than one message in payload, if exception, all messages that follow are dropped on floor |  Blocker | . | stack | stack |
| [HBASE-1386](https://issues.apache.org/jira/browse/HBASE-1386) | NPE in housekeeping |  Major | . | stack | stack |
| [HBASE-1435](https://issues.apache.org/jira/browse/HBASE-1435) | HRegionServer is using wrong info bind address from hbase-site.xml |  Major | regionserver | Lars George | Lars George |
| [HBASE-1441](https://issues.apache.org/jira/browse/HBASE-1441) | NPE in ProcessRegionStatusChange#getMetaRegion |  Major | . | stack | stack |
| [HBASE-1443](https://issues.apache.org/jira/browse/HBASE-1443) | Back out  1058-2-v1 from 0.19 branch |  Major | . | stack | stack |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1362](https://issues.apache.org/jira/browse/HBASE-1362) | .META. may not come back if regionserver crashes |  Major | . | ryan rawson | Nitay Joffe |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1413](https://issues.apache.org/jira/browse/HBASE-1413) | fall back to filesystem block size default if hbase.regionserver.hlog.blocksize is not specified |  Minor | . | Andrew Purtell | stack |


