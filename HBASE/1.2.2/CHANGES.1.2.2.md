
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

## Release 1.2.2 - Unreleased (as of 2016-04-19)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15569](https://issues.apache.org/jira/browse/HBASE-15569) | Make Bytes.toStringBinary faster |  Minor | Performance | Junegunn Choi | Junegunn Choi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15234](https://issues.apache.org/jira/browse/HBASE-15234) | ReplicationLogCleaner can abort due to transient ZK issues |  Critical | master, Replication | Gary Helmling | Gary Helmling |
| [HBASE-15485](https://issues.apache.org/jira/browse/HBASE-15485) | Filter.reset() should not be called between batches |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15587](https://issues.apache.org/jira/browse/HBASE-15587) | FSTableDescriptors.getDescriptor() logs stack trace erronously |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15627](https://issues.apache.org/jira/browse/HBASE-15627) |  Miss space and closing quote in AccessController#checkSystemOrSuperUser |  Minor | security | huaxiang sun | huaxiang sun |
| [HBASE-15621](https://issues.apache.org/jira/browse/HBASE-15621) | Suppress Hbase SnapshotHFile cleaner error  messages when a snaphot is going on |  Minor | snapshots | huaxiang sun | huaxiang sun |
| [HBASE-15636](https://issues.apache.org/jira/browse/HBASE-15636) | hard coded wait time out value in HBaseTestingUtility#waitUntilAllRegionsAssigned might cause test failure |  Minor | integration tests, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15622](https://issues.apache.org/jira/browse/HBASE-15622) | Superusers does not consider the keytab credentials |  Critical | security | Matteo Bertozzi | Matteo Bertozzi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


