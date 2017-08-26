
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

## Release 3.5.4 - Unreleased (as of 2017-08-26)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2744](https://issues.apache.org/jira/browse/ZOOKEEPER-2744) | Typos in the comments of ZooKeeper class |  Trivial | . | Ethan Li | Abraham Fine |
| [ZOOKEEPER-2638](https://issues.apache.org/jira/browse/ZOOKEEPER-2638) | ZooKeeper should log which serverCnxnFactory is used during startup |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2662](https://issues.apache.org/jira/browse/ZOOKEEPER-2662) | Export a metric for txn log sync times |  Major | . | Andrew Purtell | Edward Ribeiro |
| [ZOOKEEPER-2697](https://issues.apache.org/jira/browse/ZOOKEEPER-2697) | Handle graceful stop of ZookKeeper client |  Critical | java client | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-2767](https://issues.apache.org/jira/browse/ZOOKEEPER-2767) | Correct the exception messages in X509Util if truststore location or password is not configured |  Trivial | java client, server | Abhishek Kumar | Abhishek Kumar |
| [ZOOKEEPER-2788](https://issues.apache.org/jira/browse/ZOOKEEPER-2788) | The define of MAX\_CONNECTION\_ATTEMPTS in QuorumCnxManager.java seems useless, should it be removed? |  Minor | leaderElection, quorum | Jiang Jiafu | Abraham Fine |
| [ZOOKEEPER-2359](https://issues.apache.org/jira/browse/ZOOKEEPER-2359) | ZooKeeper client has unnecessary logs for watcher removal errors |  Major | java client | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-1748](https://issues.apache.org/jira/browse/ZOOKEEPER-1748) | TCP keepalive for leader election connections |  Minor | leaderElection | Antal Sasvári | Ben Sherman |
| [ZOOKEEPER-2815](https://issues.apache.org/jira/browse/ZOOKEEPER-2815) | 1. Using try clause to close resource; 2. Others code refactoring for PERSISTENCE module |  Major | server | Benedict Jin | Benedict Jin |
| [ZOOKEEPER-2816](https://issues.apache.org/jira/browse/ZOOKEEPER-2816) | Code refactoring for \`ZK\_SERVER\` module |  Major | server | Benedict Jin | Benedict Jin |
| [ZOOKEEPER-2856](https://issues.apache.org/jira/browse/ZOOKEEPER-2856) | ZooKeeperSaslClient#respondToServer should log exception message of SaslException |  Minor | . | Pan Yuxuan | Pan Yuxuan |
| [ZOOKEEPER-2865](https://issues.apache.org/jira/browse/ZOOKEEPER-2865) | Reconfig Causes Inconsistent Configuration file among the nodes |  Trivial | documentation | Jeffrey F. Lukman | Alexander Shraer |
| [ZOOKEEPER-2864](https://issues.apache.org/jira/browse/ZOOKEEPER-2864) | Add script to run a java api compatibility tool |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2870](https://issues.apache.org/jira/browse/ZOOKEEPER-2870) | Improve the efficiency of AtomicFileOutputStream |  Major | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-2880](https://issues.apache.org/jira/browse/ZOOKEEPER-2880) | Rename README.txt to README.md |  Minor | other | Michael Han | Manoj Mallela |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2725](https://issues.apache.org/jira/browse/ZOOKEEPER-2725) | Upgrading to a global session fails with a multiop |  Major | server | Brian Nixon | Brian Nixon |
| [ZOOKEEPER-2743](https://issues.apache.org/jira/browse/ZOOKEEPER-2743) | Netty connection leaks JMX connection bean upon connection close in certain race conditions. |  Major | server | Michael Han | Michael Han |
| [ZOOKEEPER-2722](https://issues.apache.org/jira/browse/ZOOKEEPER-2722) | Flaky Test: org.apache.zookeeper.test.ReadOnlyModeTest.testSessionEstablishment |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2747](https://issues.apache.org/jira/browse/ZOOKEEPER-2747) | Fix ZooKeeperAdmin Compilation Warning |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2758](https://issues.apache.org/jira/browse/ZOOKEEPER-2758) | Typo: transasction --\> transaction |  Trivial | . | Jeff Widman | Jeff Widman |
| [ZOOKEEPER-2316](https://issues.apache.org/jira/browse/ZOOKEEPER-2316) | comment does not match code logic |  Trivial | server | sunhaitao | Umesh Panchaksharaiah |
| [ZOOKEEPER-2785](https://issues.apache.org/jira/browse/ZOOKEEPER-2785) | Server inappropriately throttles connections under load before SASL completes |  Critical | server | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [ZOOKEEPER-2757](https://issues.apache.org/jira/browse/ZOOKEEPER-2757) | Incorrect path crashes zkCli |  Minor | . | Flavio Junqueira | Abraham Fine |
| [ZOOKEEPER-2797](https://issues.apache.org/jira/browse/ZOOKEEPER-2797) | Invalid TTL from misbehaving client nukes zookeeper |  Major | security, server | Patrick White | Patrick White |
| [ZOOKEEPER-2798](https://issues.apache.org/jira/browse/ZOOKEEPER-2798) | Fix flaky test: org.apache.zookeeper.test.ReadOnlyModeTest.testConnectionEvents |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2775](https://issues.apache.org/jira/browse/ZOOKEEPER-2775) | ZK Client not able to connect with Xid out of order error |  Critical | java client | Bhupendra Kumar Jain | Mohammad Arshad |
| [ZOOKEEPER-2808](https://issues.apache.org/jira/browse/ZOOKEEPER-2808) | ACL with index 1 might be removed if it's only being used once |  Critical | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-1782](https://issues.apache.org/jira/browse/ZOOKEEPER-1782) | zookeeper.superUser is not as super as superDigest |  Major | . | Robert Joseph Evans | Robert Joseph Evans |
| [ZOOKEEPER-2818](https://issues.apache.org/jira/browse/ZOOKEEPER-2818) | Improve the ZooKeeper#setACL  java doc |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [ZOOKEEPER-2819](https://issues.apache.org/jira/browse/ZOOKEEPER-2819) | Changing membership configuration via rolling restart does not work on 3.5.x. |  Critical | quorum, server | Michael Han | Michael Han |
| [ZOOKEEPER-2841](https://issues.apache.org/jira/browse/ZOOKEEPER-2841) | ZooKeeper public include files leak porting changes |  Major | c client | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-2355](https://issues.apache.org/jira/browse/ZOOKEEPER-2355) | Ephemeral node is never deleted if follower fails while reading the proposal packet |  Critical | quorum, server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2852](https://issues.apache.org/jira/browse/ZOOKEEPER-2852) | Snapshot size factor is not read from system property |  Major | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-2862](https://issues.apache.org/jira/browse/ZOOKEEPER-2862) | Incorrect javadoc syntax for web links in StaticHostProvider.java |  Major | documentation, java client | Michael Han | Michael Han |
| [ZOOKEEPER-2853](https://issues.apache.org/jira/browse/ZOOKEEPER-2853) | The lastZxidSeen in FileTxnLog.java is never being assigned |  Minor | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-2786](https://issues.apache.org/jira/browse/ZOOKEEPER-2786) | Flaky test: org.apache.zookeeper.test.ClientTest.testNonExistingOpCode |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2859](https://issues.apache.org/jira/browse/ZOOKEEPER-2859) | CMake build doesn't support OS X |  Major | . | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-2874](https://issues.apache.org/jira/browse/ZOOKEEPER-2874) | Windows Debug builds don't link with \`/MTd\` |  Major | . | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-2861](https://issues.apache.org/jira/browse/ZOOKEEPER-2861) | Main-Class JAR manifest attribute is incorrect |  Minor | build | Yaniv Kunda | Yaniv Kunda |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2746](https://issues.apache.org/jira/browse/ZOOKEEPER-2746) | Leader hand-off during dynamic reconfig is best effort, while test always expects it |  Major | . | Michael Han | Michael Han |
| [ZOOKEEPER-2742](https://issues.apache.org/jira/browse/ZOOKEEPER-2742) | Few test cases of org.apache.zookeeper.ZooKeeperTest fails in Windows |  Trivial | tests | Abhishek Kumar | Abhishek Kumar |
| [ZOOKEEPER-2796](https://issues.apache.org/jira/browse/ZOOKEEPER-2796) | Test org.apache.zookeeper.ZooKeeperTest.testCreateNodeWithoutData is broken by ZOOKEEPER-2757 |  Minor | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2577](https://issues.apache.org/jira/browse/ZOOKEEPER-2577) | Flaky Test: org.apache.zookeeper.server.quorum.ReconfigDuringLeaderSyncTest.testDuringLeaderSync |  Major | tests | Michael Han | Michael Han |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2754](https://issues.apache.org/jira/browse/ZOOKEEPER-2754) | Set up Apache Jenkins job that runs the flaky test analyzer script. |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2792](https://issues.apache.org/jira/browse/ZOOKEEPER-2792) | [QP MutualAuth]: Port ZOOKEEPER-1045 implementation from branch-3.4 to branch-3.5 |  Major | quorum, security | Rakesh R | Michael Han |


