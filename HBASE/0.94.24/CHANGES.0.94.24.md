
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

## Release 0.94.24 - 2014-10-04



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12090](https://issues.apache.org/jira/browse/HBASE-12090) | Bytes: more Unsafe, more Faster |  Major | Performance | Vladimir Rodionov | Vladimir Rodionov |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12020](https://issues.apache.org/jira/browse/HBASE-12020) | String formatting on each RPC Invoke |  Minor | IPC/RPC | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12022](https://issues.apache.org/jira/browse/HBASE-12022) | Payloads on Failure attempt to serialize the byte[] into strings. |  Trivial | IPC/RPC | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11405](https://issues.apache.org/jira/browse/HBASE-11405) | Multiple invocations of hbck in parallel disables balancer permanently |  Major | Balancer, hbck | bharath v | bharath v |
| [HBASE-11957](https://issues.apache.org/jira/browse/HBASE-11957) | Backport to 0.94 HBASE-5974 Scanner retry behavior with RPC timeout on next() seems incorrect |  Critical | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12114](https://issues.apache.org/jira/browse/HBASE-12114) | Meta table cache hashing may access the wrong table |  Major | Client | He Liangliang | He Liangliang |
| [HBASE-12019](https://issues.apache.org/jira/browse/HBASE-12019) | hbase-daemon.sh overwrite HBASE\_ROOT\_LOGGER and HBASE\_SECURITY\_LOGGER variables |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | Reduce the effective scope of GLOBAL CREATE and ADMIN permission |  Major | security | Andrew Purtell | Andrew Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11923](https://issues.apache.org/jira/browse/HBASE-11923) | Potential race condition in RecoverableZookeeper.checkZk() |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11963](https://issues.apache.org/jira/browse/HBASE-11963) | Synchronize peer cluster replication connection attempts |  Major | . | Andrew Purtell | Maddineni Sukumar |
| [HBASE-12023](https://issues.apache.org/jira/browse/HBASE-12023) | HRegion.applyFamilyMapToMemstore creates too many iterator objects. |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12077](https://issues.apache.org/jira/browse/HBASE-12077) | FilterLists create many ArrayList$Itr objects per row. |  Major | . | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12103](https://issues.apache.org/jira/browse/HBASE-12103) | Backport HFileV1Detector to 0.94 |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12113](https://issues.apache.org/jira/browse/HBASE-12113) | Backport to 0.94: HBASE-5525 Truncate and preserve region boundaries option |  Minor | shell | Sean Busbey | Sean Busbey |


