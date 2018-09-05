
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

## Release 0.94.26 - 2014-12-26



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12279](https://issues.apache.org/jira/browse/HBASE-12279) | Generated thrift files were generated with the wrong parameters |  Major | . | Niels Basjes | Niels Basjes |
| [HBASE-12491](https://issues.apache.org/jira/browse/HBASE-12491) | TableMapReduceUtil.findContainingJar() NPE |  Major | mapreduce | Solomon Duskis | Solomon Duskis |
| [HBASE-12635](https://issues.apache.org/jira/browse/HBASE-12635) | Delete acl notify znode of table after the table is deleted |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12657](https://issues.apache.org/jira/browse/HBASE-12657) | The Region is not being split and far exceeds the desired maximum size. |  Major | Compaction | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12692](https://issues.apache.org/jira/browse/HBASE-12692) | NPE from SnapshotManager#stop |  Minor | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12739](https://issues.apache.org/jira/browse/HBASE-12739) | Avoid too large identifier of ZooKeeperWatcher |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |


