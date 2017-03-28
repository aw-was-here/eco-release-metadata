
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

## Release 1.1.10 - Unreleased (as of 2017-03-28)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15328](https://issues.apache.org/jira/browse/HBASE-15328) | Unvalidated Redirect in HMaster |  Minor | security | stack | Sean Busbey |
| [HBASE-17675](https://issues.apache.org/jira/browse/HBASE-17675) | ReplicationEndpoint should choose new sinks if a SaslException occurs |  Major | . | churro morales | churro morales |
| [HBASE-17677](https://issues.apache.org/jira/browse/HBASE-17677) | ServerName parsing from directory name should be more robust to errors from guava's HostAndPort |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-17682](https://issues.apache.org/jira/browse/HBASE-17682) | Region stuck in merging\_new state indefinitely |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17688](https://issues.apache.org/jira/browse/HBASE-17688) | MultiRowRangeFilter not working correctly if given same start and stop RowKey |  Minor | . | Ravi Ahuj | Jingcheng Du |
| [HBASE-17722](https://issues.apache.org/jira/browse/HBASE-17722) | Metrics subsystem stop/start messages add a lot of useless bulk to operational logging |  Trivial | metrics | Andrew Purtell | Andrew Purtell |
| [HBASE-17717](https://issues.apache.org/jira/browse/HBASE-17717) | Incorrect ZK ACL set for HBase superuser |  Critical | security, Zookeeper | Shreya Bhat | Josh Elser |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17561](https://issues.apache.org/jira/browse/HBASE-17561) | table status page should escape values that may contain arbitrary characters. |  Major | master, UI | Sean Busbey | Sean Busbey |


