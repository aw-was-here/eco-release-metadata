
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

## Release 1.2.6 - Unreleased (as of 2017-03-28)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15941](https://issues.apache.org/jira/browse/HBASE-15941) | HBCK repair should not unsplit healthy splitted region |  Major | hbck | Stephen Yuan Jiang | Esteban Gutierrez |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16630](https://issues.apache.org/jira/browse/HBASE-16630) | Fragmentation in long running Bucket Cache |  Critical | BucketCache | deepankar | deepankar |
| [HBASE-17717](https://issues.apache.org/jira/browse/HBASE-17717) | Incorrect ZK ACL set for HBase superuser |  Critical | security, Zookeeper | Shreya Bhat | Josh Elser |
| [HBASE-17501](https://issues.apache.org/jira/browse/HBASE-17501) | NullPointerException after Datanodes Decommissioned and Terminated |  Minor | Filesystem Integration, Operability | Patrick Dignan | James Moore |
| [HBASE-17780](https://issues.apache.org/jira/browse/HBASE-17780) | BoundedByteBufferPool "At capacity" messages are not actionable |  Minor | . | Andrew Purtell | Andrew Purtell |


