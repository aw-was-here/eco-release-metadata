
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

## Release 1.2.8 - 2018-10-20



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Minor | tooling | Mike Drob | Colin Garcia |
| [HBASE-21103](https://issues.apache.org/jira/browse/HBASE-21103) | nightly test cache of yetus install needs to be more thorough in verification |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes |  Minor | Operability | Wellington Chevreuil | Wellington Chevreuil |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21166](https://issues.apache.org/jira/browse/HBASE-21166) | Creating a CoprocessorHConnection re-retrieves the cluster id from ZK |  Major | Client, Zookeeper | Lars Hofhansl | Lars Hofhansl |
| [HBASE-21179](https://issues.apache.org/jira/browse/HBASE-21179) | Fix the number of actions in responseTooSlow log |  Major | logging, rpc | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21203](https://issues.apache.org/jira/browse/HBASE-21203) | TestZKMainServer#testCommandLineWorks won't pass with default 4lw whitelist |  Minor | test, Zookeeper | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21228](https://issues.apache.org/jira/browse/HBASE-21228) | Memory leak since AbstractFSWAL caches Thread object and never clean later |  Critical | wal | Allan Yang | Allan Yang |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell should not be returned if it does not match QualifierFilter |  Critical | Filters | Guangxu Cheng | Guangxu Cheng |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21189](https://issues.apache.org/jira/browse/HBASE-21189) | flaky job should gather machine stats |  Minor | test | Sean Busbey | Sean Busbey |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-21302](https://issues.apache.org/jira/browse/HBASE-21302) | Release 1.2.8 |  Major | community | Sean Busbey | Sean Busbey |


