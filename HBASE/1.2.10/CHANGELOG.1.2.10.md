
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

## Release 1.2.10 - 2019-01-17



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21567](https://issues.apache.org/jira/browse/HBASE-21567) | Allow overriding configs starting up the shell |  Major | shell | Michael Stack | Michael Stack |
| [HBASE-21520](https://issues.apache.org/jira/browse/HBASE-21520) | TestMultiColumnScanner cost long time when using ROWCOL bloom type |  Major | test | Zheng Hu | Zheng Hu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15752](https://issues.apache.org/jira/browse/HBASE-15752) | ClassNotFoundException is encountered when custom WAL codec is not found in WALPlayer job |  Critical | tooling, wal | Ted Yu | Ted Yu |
| [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | CellCodec Written To WAL Before It's Verified |  Critical | wal | David Mollitor | David Mollitor |
| [HBASE-21504](https://issues.apache.org/jira/browse/HBASE-21504) | If enable FIFOCompactionPolicy, a compaction may write a "empty" hfile whose maxTimeStamp is long max. This kind of hfile will never be archived. |  Critical | Compaction | xuming | Zheng Hu |
| [HBASE-21582](https://issues.apache.org/jira/browse/HBASE-21582) | If call HBaseAdmin#snapshotAsync but forget call isSnapshotFinished, then SnapshotHFileCleaner will skip to run every time |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21592](https://issues.apache.org/jira/browse/HBASE-21592) | quota.addGetResult(r)  throw  NPE |  Major | . | xuqinya | xuqinya |
| [HBASE-21547](https://issues.apache.org/jira/browse/HBASE-21547) | Precommit uses master flaky list for other branches |  Major | test | Peter Somogyi | Peter Somogyi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21686](https://issues.apache.org/jira/browse/HBASE-21686) | Release 1.2.10 |  Major | community | Sean Busbey | Sean Busbey |


