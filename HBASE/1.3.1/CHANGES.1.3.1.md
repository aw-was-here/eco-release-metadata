
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

## Release 1.3.1 - Unreleased (as of 2017-01-19)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16562](https://issues.apache.org/jira/browse/HBASE-16562) | ITBLL should fail to start if misconfigured |  Major | integration tests | Andrew Purtell | Heng Chen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15635](https://issues.apache.org/jira/browse/HBASE-15635) | Mean age of Blocks in cache (seconds) on webUI should be greater than zero |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16939](https://issues.apache.org/jira/browse/HBASE-16939) | ExportSnapshot: set owner and permission on right directory |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16948](https://issues.apache.org/jira/browse/HBASE-16948) | Fix inconsistency between HRegion and Region javadoc on getRowLock |  Major | . | stack | stack |
| [HBASE-17387](https://issues.apache.org/jira/browse/HBASE-17387) | Reduce the overhead of exception report in RegionActionResult for multi() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-17445](https://issues.apache.org/jira/browse/HBASE-17445) | Count size of serialized exceptions in checking max result size quota |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17475](https://issues.apache.org/jira/browse/HBASE-17475) | Stack overflow in AsyncProcess if retry too much |  Major | API, Client | Allan Yang | Allan Yang |
| [HBASE-17289](https://issues.apache.org/jira/browse/HBASE-17289) | Avoid adding a replication peer named "lock" |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15386](https://issues.apache.org/jira/browse/HBASE-15386) | PREFETCH\_BLOCKS\_ON\_OPEN in HColumnDescriptor is ignored |  Major | BucketCache | stack | stack |


