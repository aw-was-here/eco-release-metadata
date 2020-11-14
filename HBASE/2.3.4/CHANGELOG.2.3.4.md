
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

## Release 2.3.4 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-25224](https://issues.apache.org/jira/browse/HBASE-25224) | Maximize sleep for checking meta and namespace regions availability |  Major | master | Peter Somogyi | Peter Somogyi |
| [HBASE-24859](https://issues.apache.org/jira/browse/HBASE-24859) | Optimize in-memory representation of mapreduce TableSplit objects |  Major | mapreduce | Sandeep Pal | Sandeep Pal |
| [HBASE-25240](https://issues.apache.org/jira/browse/HBASE-25240) | gson format of RpcServer.logResponse is abnormal |  Minor | . | wenfeiyi666 | wenfeiyi666 |
| [HBASE-25003](https://issues.apache.org/jira/browse/HBASE-25003) | Backport HBASE-24350 and HBASE-24779 to branch-2.2 & branch-2.3 |  Major | Replication | Tamas Adami | Tamas Adami |
| [HBASE-25267](https://issues.apache.org/jira/browse/HBASE-25267) | Add SSL keystore type and truststore related configs for HBase RESTServer |  Major | REST | Mate Szalay-Beko | Mate Szalay-Beko |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-25090](https://issues.apache.org/jira/browse/HBASE-25090) | CompactionConfiguration logs unrealistic store file sizes |  Minor | Compaction | Nick Dimiduk | Zhuoyue Huang |
| [HBASE-25234](https://issues.apache.org/jira/browse/HBASE-25234) | [Upgrade]Incompatibility in reading RS report from 2.1 RS when Master is upgraded to a version containing HBASE-21406 |  Major | . | Sanjeet Nishad | Michael Stack |
| [HBASE-25238](https://issues.apache.org/jira/browse/HBASE-25238) | Upgrading HBase from 2.2.0 to 2.3.x fails because of “Message missing required fields: state” |  Critical | . | Zhuqi Jin | Michael Stack |
| [HBASE-25276](https://issues.apache.org/jira/browse/HBASE-25276) | Need to throw the original exception in HRegion#openHRegion |  Major | . | Guanghao Zhang | niuyulin |
| [HBASE-25255](https://issues.apache.org/jira/browse/HBASE-25255) | Master fails to initialize when creating rs group table |  Critical | master, rsgroup | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24200](https://issues.apache.org/jira/browse/HBASE-24200) | Upgrade to Yetus 0.12.0 |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-25228](https://issues.apache.org/jira/browse/HBASE-25228) | Delete dev-support/jenkins\_precommit\_jira\_yetus.sh |  Minor | build | Nick Dimiduk | Nick Dimiduk |


