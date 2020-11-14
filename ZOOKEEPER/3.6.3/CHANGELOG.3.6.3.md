
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

## Release 3.6.3 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3935](https://issues.apache.org/jira/browse/ZOOKEEPER-3935) | Handle float metrics in check\_zookeeper |  Minor | contrib | Mate Szalay-Beko |  |
| [ZOOKEEPER-3841](https://issues.apache.org/jira/browse/ZOOKEEPER-3841) | remove useless codes in the Leader.java |  Minor | server | maoling |  |
| [ZOOKEEPER-3858](https://issues.apache.org/jira/browse/ZOOKEEPER-3858) | Add metrics to track server unavailable time |  Minor | metric system | Jie Huang | Jie Huang |
| [ZOOKEEPER-3798](https://issues.apache.org/jira/browse/ZOOKEEPER-3798) | remove the useless code in the ProposalRequestProcessor#processRequest |  Minor | server | maoling |  |
| [ZOOKEEPER-3952](https://issues.apache.org/jira/browse/ZOOKEEPER-3952) | Remove commons-lang from ZooKeeper |  Minor | server | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3950](https://issues.apache.org/jira/browse/ZOOKEEPER-3950) | Add support for BCFKS key/trust store format |  Major | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3960](https://issues.apache.org/jira/browse/ZOOKEEPER-3960) | Update ZooKeeper client documentation about key file format parameters |  Minor | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3808](https://issues.apache.org/jira/browse/ZOOKEEPER-3808) | correct the documentation about digest.enabled |  Minor | documentation | maoling | Mate Szalay-Beko |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3954](https://issues.apache.org/jira/browse/ZOOKEEPER-3954) | use of uninitialized data in zookeeper-client/zookeeper-client-c/src/zookeeper.c:free\_auth\_completion |  Minor | c client | Michael Hudson-Doyle | Damien Diederen |
| [ZOOKEEPER-3955](https://issues.apache.org/jira/browse/ZOOKEEPER-3955) | added a shebang or a 'shell' directive to lastRevision.sh |  Major | . | Joydeep Sen Gupta |  |
| [ZOOKEEPER-3983](https://issues.apache.org/jira/browse/ZOOKEEPER-3983) | C client test suite hangs forever 'sss' is configured in /etc/nsswitch.conf |  Major | c client, tests | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3911](https://issues.apache.org/jira/browse/ZOOKEEPER-3911) | Data inconsistency caused by DIFF sync uncommitted log |  Critical | quorum, server | lixun | Michael Han |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3774](https://issues.apache.org/jira/browse/ZOOKEEPER-3774) | Close quorum socket asynchronously on the leader to avoid ping being blocked by long socket closing time |  Minor | server | Jie Huang | Jie Huang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3981](https://issues.apache.org/jira/browse/ZOOKEEPER-3981) | Flaky test MultipleAddressTest::testGetValidAddressWithNotValid |  Minor | tests | Michael Han | Michael Han |


