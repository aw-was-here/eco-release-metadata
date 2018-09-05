
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

## Release 1.1.11 - 2017-06-19



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17944](https://issues.apache.org/jira/browse/HBASE-17944) | Removed unused JDK version parsing from ClassSize. |  Minor | build | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [HBASE-17514](https://issues.apache.org/jira/browse/HBASE-17514) | Warn when Thrift Server 1 is configured for proxy users but not the HTTP transport |  Minor | Thrift, Usability | Sean Busbey | lv zehui |
| [HBASE-17817](https://issues.apache.org/jira/browse/HBASE-17817) | Make Regionservers log which tables it removed coprocessors from when aborting |  Major | Coprocessors, regionserver | Steen Manniche | Steen Manniche |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17937](https://issues.apache.org/jira/browse/HBASE-17937) | Memstore size becomes negative in case of expensive postPut/Delete Coprocessor call |  Major | regionserver | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17862](https://issues.apache.org/jira/browse/HBASE-17862) | Condition that always returns true |  Trivial | Client | JC | JC |
| [HBASE-17985](https://issues.apache.org/jira/browse/HBASE-17985) | Inline package manage updates with package installation in Yetus Dockerfile |  Blocker | . | Josh Elser | Josh Elser |
| [HBASE-17534](https://issues.apache.org/jira/browse/HBASE-17534) | SecureBulkLoadClient squashes DoNotRetryIOExceptions from the server |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-18026](https://issues.apache.org/jira/browse/HBASE-18026) | ProtobufUtil seems to do extra array copying |  Minor | . | Vincent Poon | Vincent Poon |
| [HBASE-17352](https://issues.apache.org/jira/browse/HBASE-17352) | Fix hbase-assembly build with bash 4 |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-18081](https://issues.apache.org/jira/browse/HBASE-18081) | The way we process connection preamble in SimpleRpcServer is broken |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-18077](https://issues.apache.org/jira/browse/HBASE-18077) | Update JUnit license to EPL from CPL |  Blocker | build, community | Mike Drob | Mike Drob |
| [HBASE-18093](https://issues.apache.org/jira/browse/HBASE-18093) | Overloading the meaning of 'enabled' in Quota Manager to indicate either quota disabled or quota manager not ready is not good |  Minor | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16011](https://issues.apache.org/jira/browse/HBASE-16011) | TableSnapshotScanner and TableSnapshotInputFormat can produce duplicate rows |  Major | snapshots | Youngjoon Kim | Zheng Hu |
| [HBASE-18122](https://issues.apache.org/jira/browse/HBASE-18122) | Scanner id should include ServerName of region server |  Major | . | Phil Yang | Phil Yang |
| [HBASE-18159](https://issues.apache.org/jira/browse/HBASE-18159) | Use OpenJDK7 instead of Oracle JDK7 in pre commit docker file |  Blocker | build | Chia-Ping Tsai | Duo Zhang |
| [HBASE-18066](https://issues.apache.org/jira/browse/HBASE-18066) | Get with closest\_row\_before on "hbase:meta" can return empty Cell during region merge/split |  Major | hbase, regionserver | Andrey Elenskiy | Zheng Hu |
| [HBASE-18168](https://issues.apache.org/jira/browse/HBASE-18168) | NoSuchElementException when rolling the log |  Major | . | Allan Yang | Allan Yang |
| [HBASE-18036](https://issues.apache.org/jira/browse/HBASE-18036) | HBase 1.x : Data locality is not maintained after cluster restart or SSH |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17968](https://issues.apache.org/jira/browse/HBASE-17968) | Update copyright year in NOTICE file |  Trivial | build | Nick Dimiduk | Josh Elser |


