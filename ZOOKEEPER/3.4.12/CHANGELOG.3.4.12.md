
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
# Apache Zookeeper Changelog

## Release 3.4.12 - 2018-05-01



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2952](https://issues.apache.org/jira/browse/ZOOKEEPER-2952) | Upgrade third party libraries to address vulnerabilities |  Critical | server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-2967](https://issues.apache.org/jira/browse/ZOOKEEPER-2967) | Add check to validate dataDir and dataLogDir parameters at startup |  Major | server | Andor Molnar | Mark Fenes |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2950](https://issues.apache.org/jira/browse/ZOOKEEPER-2950) | Add keys for the Zxid from the stat command to check\_zookeeper.py |  Trivial | scripts | Alex Bame | Alex Bame |
| [ZOOKEEPER-2962](https://issues.apache.org/jira/browse/ZOOKEEPER-2962) | The function queueEmpty() in FastLeaderElection.Messenger is not used, should be removed. |  Minor | leaderElection | Jiafu Jiang |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2690](https://issues.apache.org/jira/browse/ZOOKEEPER-2690) | Update documentation source for ZOOKEEPER-2574 |  Minor | documentation | Michael Han | Mark Fenes |
| [ZOOKEEPER-2923](https://issues.apache.org/jira/browse/ZOOKEEPER-2923) | The comment of the variable matchSyncs in class CommitProcessor has a mistake. |  Minor | quorum | Jiafu Jiang | Jiafu Jiang |
| [ZOOKEEPER-2931](https://issues.apache.org/jira/browse/ZOOKEEPER-2931) | WriteLock recipe: incorrect znode ordering when the sessionId is part of the znode name |  Major | . | Javier Cacheiro |  |
| [ZOOKEEPER-2944](https://issues.apache.org/jira/browse/ZOOKEEPER-2944) | Specify correct overflow value |  Trivial | documentation | Chris Donati |  |
| [ZOOKEEPER-2948](https://issues.apache.org/jira/browse/ZOOKEEPER-2948) | Failing c unit tests on apache jenkins |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2924](https://issues.apache.org/jira/browse/ZOOKEEPER-2924) | Flaky Test: org.apache.zookeeper.test.LoadFromLogTest.testRestoreWithTransactionErrors |  Major | server, tests | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-2951](https://issues.apache.org/jira/browse/ZOOKEEPER-2951) | zkServer.cmd does not start when JAVA\_HOME ends with a \\ |  Major | server | Jorg Heymans |  |
| [ZOOKEEPER-2953](https://issues.apache.org/jira/browse/ZOOKEEPER-2953) | Flaky Test: testNoLogBeforeLeaderEstablishment |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2893](https://issues.apache.org/jira/browse/ZOOKEEPER-2893) | very poor choice of logging if client fails to connect to server |  Major | java client | Paul Millar | Andor Molnar |
| [ZOOKEEPER-2960](https://issues.apache.org/jira/browse/ZOOKEEPER-2960) | The dataDir and dataLogDir are used opposingly |  Critical | server | Dan Milon | Andor Molnar |
| [ZOOKEEPER-2249](https://issues.apache.org/jira/browse/ZOOKEEPER-2249) | CRC check failed when preAllocSize smaller than node data |  Major | . | Benjamin Jaton | Abraham Fine |
| [ZOOKEEPER-2961](https://issues.apache.org/jira/browse/ZOOKEEPER-2961) | Fix testElectionFraud Flakyness |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2978](https://issues.apache.org/jira/browse/ZOOKEEPER-2978) | fix potential null pointer exception when deleting node |  Trivial | java client | achimbab |  |
| [ZOOKEEPER-2845](https://issues.apache.org/jira/browse/ZOOKEEPER-2845) | Data inconsistency issue due to retain database in leader election |  Critical | quorum | Fangmin Lv | Robert Joseph Evans |
| [ZOOKEEPER-2936](https://issues.apache.org/jira/browse/ZOOKEEPER-2936) | Duplicate Keys in log4j.properties config files |  Trivial | contrib, other | Hari Sekhon |  |
| [ZOOKEEPER-2992](https://issues.apache.org/jira/browse/ZOOKEEPER-2992) | The eclipse build target fails due to protocol redirection: http-\>https |  Major | build | Shawn Heisey | Shawn Heisey |
| [ZOOKEEPER-2806](https://issues.apache.org/jira/browse/ZOOKEEPER-2806) | Flaky test: org.apache.zookeeper.server.quorum.FLEBackwardElectionRoundTest.testBackwardElectionRound |  Major | . | Abraham Fine | Abraham Fine |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2795](https://issues.apache.org/jira/browse/ZOOKEEPER-2795) | Change log level for "ZKShutdownHandler is not registered" error message |  Trivial | . | Andy Chambers | Abraham Fine |


