
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

## Release 1.2.9 - 2018-11-27



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21263](https://issues.apache.org/jira/browse/HBASE-21263) | Mention compression algorithm along with other storefile details |  Minor | . | Andrew Kyle Purtell | Subrat Mishra |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21357](https://issues.apache.org/jira/browse/HBASE-21357) | RS should abort if OOM in Reader thread |  Critical | regionserver | Allan Yang | Allan Yang |
| [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | Pre commit build is broken due to surefire plugin crashes |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-21424](https://issues.apache.org/jira/browse/HBASE-21424) | Change flakies and nightlies so scheduled less often |  Major | build | Michael Stack | Michael Stack |
| [HBASE-20604](https://issues.apache.org/jira/browse/HBASE-20604) | ProtobufLogReader#readNext can incorrectly loop to the same position in the stream until the the WAL is rolled |  Critical | Replication, wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-21445](https://issues.apache.org/jira/browse/HBASE-21445) | CopyTable by bulkload will write hfile into yarn's HDFS |  Major | mapreduce | Zheng Hu | Zheng Hu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21347](https://issues.apache.org/jira/browse/HBASE-21347) | Backport HBASE-21200 "Memstore flush doesn't finish because of seekToPreviousRow() in memstore scanner." to branch-1 |  Critical | backport, Scanners | Toshihiro Suzuki | Toshihiro Suzuki |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21493](https://issues.apache.org/jira/browse/HBASE-21493) | Release 1.2.9 |  Major | community | Sean Busbey | Sean Busbey |


