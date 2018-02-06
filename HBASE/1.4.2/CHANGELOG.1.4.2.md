
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

## Release 1.4.2 - Unreleased (as of 2018-02-06)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19917](https://issues.apache.org/jira/browse/HBASE-19917) | Improve RSGroupBasedLoadBalancer#filterServers() to be more efficient |  Minor | rsgroup | Xiang Li | Xiang Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19871](https://issues.apache.org/jira/browse/HBASE-19871) | delete.rb should require user to provide the column |  Major | shell | Romil Choksi | Chia-Ping Tsai |
| [HBASE-19892](https://issues.apache.org/jira/browse/HBASE-19892) | Checking 'patch attach' and yetus 0.7.0 and move to Yetus 0.7.0 |  Major | . | stack | stack |
| [HBASE-19728](https://issues.apache.org/jira/browse/HBASE-19728) | Add lock to filesCompacting in all place. |  Major | . | binlijin | binlijin |
| [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | Up yetus proclimit on nightlies |  Major | . | stack | stack |
| [HBASE-19934](https://issues.apache.org/jira/browse/HBASE-19934) | HBaseSnapshotException when read replicas is enabled and online snapshot is taken after region splitting |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19877](https://issues.apache.org/jira/browse/HBASE-19877) | hbase-common and hbase-zookeeper don't add the log4j.properties to the resource path for testing |  Critical | test | Chia-Ping Tsai | Chia-Ping Tsai |


