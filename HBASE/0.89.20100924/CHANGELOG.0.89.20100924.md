
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

## Release 0.89.20100924 - 2010-10-06



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3033](https://issues.apache.org/jira/browse/HBASE-3033) | [replication] ReplicationSink.replicateEntries improvements |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3035](https://issues.apache.org/jira/browse/HBASE-3035) | Bandaid for HBASE-2990 |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3763](https://issues.apache.org/jira/browse/HBASE-3763) | Add Bloom Block Index Support |  Minor | io, regionserver | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4465](https://issues.apache.org/jira/browse/HBASE-4465) | Lazy-seek optimization for StoreFile scanners |  Major | . | Mikhail Bautin | Mikhail Bautin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2643](https://issues.apache.org/jira/browse/HBASE-2643) | Figure how to deal with eof splitting logs |  Blocker | . | stack | Nicolas Spiegelberg |
| [HBASE-2997](https://issues.apache.org/jira/browse/HBASE-2997) | Performance fixes - profiler driven |  Critical | . | ryan rawson | ryan rawson |
| [HBASE-2941](https://issues.apache.org/jira/browse/HBASE-2941) | port HADOOP-6713 - threading scalability for RPC reads - to HBase |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3006](https://issues.apache.org/jira/browse/HBASE-3006) | Reading compressed HFile blocks causes way too many DFS RPC calls severly impacting performance |  Critical | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-2992](https://issues.apache.org/jira/browse/HBASE-2992) | [replication] MalformedObjectNameException in ReplicationMetrics |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2989](https://issues.apache.org/jira/browse/HBASE-2989) | [replication] RSM won't cleanup after locking if 0 peers |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3008](https://issues.apache.org/jira/browse/HBASE-3008) | Memstore.updateColumnValue passes wrong flag to heapSizeChange |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3081](https://issues.apache.org/jira/browse/HBASE-3081) | Log Splitting & Replay: Distinguish between Network IOE and Parsing IOE |  Major | io, master, regionserver, Replication | Nicolas Spiegelberg | Nicolas Spiegelberg |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4344](https://issues.apache.org/jira/browse/HBASE-4344) | Persist memstoreTS to disk |  Major | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4345](https://issues.apache.org/jira/browse/HBASE-4345) | Ensure that Scanners that read from the storefiles respect MVCC |  Major | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4343](https://issues.apache.org/jira/browse/HBASE-4343) | Get the TestAcidGuarantee unit test to fail consistently |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3034](https://issues.apache.org/jira/browse/HBASE-3034) | Revert the regions assignment part of HBASE-2694 (and pals) for 0.89 |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |


