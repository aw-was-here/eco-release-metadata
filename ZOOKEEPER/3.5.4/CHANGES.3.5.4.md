
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

## Release 3.5.4 - Unreleased (as of 2017-05-12)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2744](https://issues.apache.org/jira/browse/ZOOKEEPER-2744) | Typos in the comments of ZooKeeper class |  Trivial | . | Ethan Li | Abraham Fine |
| [ZOOKEEPER-2638](https://issues.apache.org/jira/browse/ZOOKEEPER-2638) | ZooKeeper should log which serverCnxnFactory is used during startup |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2662](https://issues.apache.org/jira/browse/ZOOKEEPER-2662) | Export a metric for txn log sync times |  Major | . | Andrew Purtell | Edward Ribeiro |
| [ZOOKEEPER-2697](https://issues.apache.org/jira/browse/ZOOKEEPER-2697) | Handle graceful stop of ZookKeeper client |  Critical | java client | Enrico Olivelli |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2725](https://issues.apache.org/jira/browse/ZOOKEEPER-2725) | Upgrading to a global session fails with a multiop |  Major | server | Brian Nixon |  |
| [ZOOKEEPER-2743](https://issues.apache.org/jira/browse/ZOOKEEPER-2743) | Netty connection leaks JMX connection bean upon connection close in certain race conditions. |  Major | server | Michael Han | Michael Han |
| [ZOOKEEPER-2722](https://issues.apache.org/jira/browse/ZOOKEEPER-2722) | Flaky Test: org.apache.zookeeper.test.ReadOnlyModeTest.testSessionEstablishment |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2747](https://issues.apache.org/jira/browse/ZOOKEEPER-2747) | Fix ZooKeeperAdmin Compilation Warning |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2758](https://issues.apache.org/jira/browse/ZOOKEEPER-2758) | Typo: transasction --\> transaction |  Trivial | . | Jeff Widman |  |
| [ZOOKEEPER-2316](https://issues.apache.org/jira/browse/ZOOKEEPER-2316) | comment does not match code logic |  Trivial | server | sunhaitao |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2746](https://issues.apache.org/jira/browse/ZOOKEEPER-2746) | Leader hand-off during dynamic reconfig is best effort, while test always expects it |  Major | . | Michael Han | Michael Han |
| [ZOOKEEPER-2742](https://issues.apache.org/jira/browse/ZOOKEEPER-2742) | Few test cases of org.apache.zookeeper.ZooKeeperTest fails in Windows |  Trivial | tests | Abhishek Kumar | Abhishek Kumar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2754](https://issues.apache.org/jira/browse/ZOOKEEPER-2754) | Set up Apache Jenkins job that runs the flaky test analyzer script. |  Major | tests | Michael Han | Michael Han |


