
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

## Release 1.4.7 - Unreleased (as of 2018-08-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20930](https://issues.apache.org/jira/browse/HBASE-20930) | MetaScanner.metaScan should use passed variable for meta table name rather than TableName.META\_TABLE\_NAME |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-20935](https://issues.apache.org/jira/browse/HBASE-20935) | HStore.removeCompactedFiles should log in case it is unable to delete a file |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20895](https://issues.apache.org/jira/browse/HBASE-20895) | NPE in RpcServer#readAndProcess |  Major | rpc | Andrew Purtell | Andrew Purtell |
| [HBASE-20997](https://issues.apache.org/jira/browse/HBASE-20997) | rebuildUserRegions() does not build ReplicaMapping during master switchover |  Major | master | huaxiang sun | huaxiang sun |
| [HBASE-21007](https://issues.apache.org/jira/browse/HBASE-21007) | Memory leak in HBase rest server |  Critical | REST | Bosko Devetak | Bosko Devetak |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20974](https://issues.apache.org/jira/browse/HBASE-20974) | Backport HBASE-20583 (SplitLogWorker should handle FileNotFoundException when split a wal) to branch-1 |  Major | . | Pankaj Kumar | Pankaj Kumar |


