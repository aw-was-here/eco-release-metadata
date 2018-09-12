
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

## Release 3.4.11 - 2017-11-09



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2890](https://issues.apache.org/jira/browse/ZOOKEEPER-2890) | Local automatic variable is left uninitialized and then freed. |  Critical | c client | Alexander A. Strelets | Alexander A. Strelets |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2875](https://issues.apache.org/jira/browse/ZOOKEEPER-2875) | Add ant task for running OWASP dependency report |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-1703](https://issues.apache.org/jira/browse/ZOOKEEPER-1703) | Please add instructions for running the tutorial |  Minor | documentation | Hayden Schultz | Andor Molnar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2788](https://issues.apache.org/jira/browse/ZOOKEEPER-2788) | The define of MAX\_CONNECTION\_ATTEMPTS in QuorumCnxManager.java seems useless, should it be removed? |  Minor | leaderElection, quorum | Jiafu Jiang | Abraham Fine |
| [ZOOKEEPER-1748](https://issues.apache.org/jira/browse/ZOOKEEPER-1748) | TCP keepalive for leader election connections |  Minor | leaderElection | Antal Sasvári | Ben Sherman |
| [ZOOKEEPER-2856](https://issues.apache.org/jira/browse/ZOOKEEPER-2856) | ZooKeeperSaslClient#respondToServer should log exception message of SaslException |  Minor | . | Pan Yuxuan | Pan Yuxuan |
| [ZOOKEEPER-1669](https://issues.apache.org/jira/browse/ZOOKEEPER-1669) | Operations to server will be timed-out while thousands of sessions expired same time |  Major | server | tokoot | Cheney Sun |
| [ZOOKEEPER-2864](https://issues.apache.org/jira/browse/ZOOKEEPER-2864) | Add script to run a java api compatibility tool |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2870](https://issues.apache.org/jira/browse/ZOOKEEPER-2870) | Improve the efficiency of AtomicFileOutputStream |  Major | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-2880](https://issues.apache.org/jira/browse/ZOOKEEPER-2880) | Rename README.txt to README.md |  Minor | other | Michael Han | Manoj Mallela |
| [ZOOKEEPER-2829](https://issues.apache.org/jira/browse/ZOOKEEPER-2829) | Interface usability / compatibility improvements through Java annotation. |  Major | java client, server | Michael Han | Abraham Fine |
| [ZOOKEEPER-2887](https://issues.apache.org/jira/browse/ZOOKEEPER-2887) | define dependency versions in build.xml to be easily overridden in build.properties |  Major | build | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-2915](https://issues.apache.org/jira/browse/ZOOKEEPER-2915) | Use "strict" conflict management in ivy |  Major | . | Abraham Fine | Abraham Fine |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1643](https://issues.apache.org/jira/browse/ZOOKEEPER-1643) | Windows: fetch\_and\_add not 64bit-compatible, may not be correct |  Major | c client | Erik Anderson | Erik Anderson |
| [ZOOKEEPER-2743](https://issues.apache.org/jira/browse/ZOOKEEPER-2743) | Netty connection leaks JMX connection bean upon connection close in certain race conditions. |  Major | server | Michael Han | Michael Han |
| [ZOOKEEPER-2722](https://issues.apache.org/jira/browse/ZOOKEEPER-2722) | Flaky Test: org.apache.zookeeper.test.ReadOnlyModeTest.testSessionEstablishment |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2758](https://issues.apache.org/jira/browse/ZOOKEEPER-2758) | Typo: transasction --\> transaction |  Trivial | . | Jeff Widman | Jeff Widman |
| [ZOOKEEPER-2759](https://issues.apache.org/jira/browse/ZOOKEEPER-2759) | Flaky test: org.apache.zookeeper.server.quorum.QuorumCnxManagerTest.testNoAuthLearnerConnectToAuthRequiredServerWithHigherSid |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2785](https://issues.apache.org/jira/browse/ZOOKEEPER-2785) | Server inappropriately throttles connections under load before SASL completes |  Critical | server | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [ZOOKEEPER-2774](https://issues.apache.org/jira/browse/ZOOKEEPER-2774) | Ephemeral znode will not be removed when sesstion timeout, if the system time of ZooKeeper node changes unexpectedly. |  Major | server | Jiafu Jiang | Jiafu Jiang |
| [ZOOKEEPER-2691](https://issues.apache.org/jira/browse/ZOOKEEPER-2691) | recreateSocketAddresses may recreate the unreachable IP address |  Minor | . | Jiafu Jiang | Jiafu Jiang |
| [ZOOKEEPER-2798](https://issues.apache.org/jira/browse/ZOOKEEPER-2798) | Fix flaky test: org.apache.zookeeper.test.ReadOnlyModeTest.testConnectionEvents |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2775](https://issues.apache.org/jira/browse/ZOOKEEPER-2775) | ZK Client not able to connect with Xid out of order error |  Critical | java client | Bhupendra Kumar Jain | Mohammad Arshad |
| [ZOOKEEPER-2728](https://issues.apache.org/jira/browse/ZOOKEEPER-2728) | Clean up findbug warnings in branch-3.4 |  Major | . | Rakesh R | Rakesh R |
| [ZOOKEEPER-2818](https://issues.apache.org/jira/browse/ZOOKEEPER-2818) | Improve the ZooKeeper#setACL  java doc |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [ZOOKEEPER-2811](https://issues.apache.org/jira/browse/ZOOKEEPER-2811) | PurgeTxnLog#validateAndGetFile: return tag has no arguments. |  Minor | documentation | Michael Han | Michael Han |
| [ZOOKEEPER-2740](https://issues.apache.org/jira/browse/ZOOKEEPER-2740) | Port ZOOKEEPER-2737 to branch-3.4 |  Critical | server | Michael Han | Michael Han |
| [ZOOKEEPER-2841](https://issues.apache.org/jira/browse/ZOOKEEPER-2841) | ZooKeeper public include files leak porting changes |  Major | c client | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-2614](https://issues.apache.org/jira/browse/ZOOKEEPER-2614) | Port ZOOKEEPER-1576 to branch3.4 |  Major | . | Vishal Khandelwal | Thomas Schüttel |
| [ZOOKEEPER-2355](https://issues.apache.org/jira/browse/ZOOKEEPER-2355) | Ephemeral node is never deleted if follower fails while reading the proposal packet |  Critical | quorum, server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2786](https://issues.apache.org/jira/browse/ZOOKEEPER-2786) | Flaky test: org.apache.zookeeper.test.ClientTest.testNonExistingOpCode |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2859](https://issues.apache.org/jira/browse/ZOOKEEPER-2859) | CMake build doesn't support OS X |  Major | . | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-2874](https://issues.apache.org/jira/browse/ZOOKEEPER-2874) | Windows Debug builds don't link with \`/MTd\` |  Major | . | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-2861](https://issues.apache.org/jira/browse/ZOOKEEPER-2861) | Main-Class JAR manifest attribute is incorrect |  Minor | build | Yaniv Kunda | Yaniv Kunda |
| [ZOOKEEPER-2349](https://issues.apache.org/jira/browse/ZOOKEEPER-2349) | Update documentation for snapCount |  Minor | documentation | Raghavendra Prabhu | maoling |
| [ZOOKEEPER-2777](https://issues.apache.org/jira/browse/ZOOKEEPER-2777) | There is a typo in zk.py which prevents from using/compiling it. |  Major | contrib | Frederic Leger | Nikhil Bhide |
| [ZOOKEEPER-2809](https://issues.apache.org/jira/browse/ZOOKEEPER-2809) | Unnecessary stack-trace in server when the client disconnect unexpectedly |  Minor | server | Paul Millar | Mark Fenes |
| [ZOOKEEPER-2905](https://issues.apache.org/jira/browse/ZOOKEEPER-2905) | Don't include \`config.h\` in \`zookeeper.h\` |  Major | . | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-2906](https://issues.apache.org/jira/browse/ZOOKEEPER-2906) | The OWASP dependency check jar should not be included in the default classpath |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2908](https://issues.apache.org/jira/browse/ZOOKEEPER-2908) | quorum.auth.MiniKdcTest.testKerberosLogin failing with NPE on java 9 |  Blocker | security, tests | Patrick Hunt | Mark Fenes |
| [ZOOKEEPER-2914](https://issues.apache.org/jira/browse/ZOOKEEPER-2914) | compiler warning using java 9 |  Minor | build | Patrick Hunt | Andor Molnar |
| [ZOOKEEPER-2909](https://issues.apache.org/jira/browse/ZOOKEEPER-2909) | Create ant task to generate ivy dependency reports |  Major | . | Abraham Fine | Abraham Fine |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2686](https://issues.apache.org/jira/browse/ZOOKEEPER-2686) | Flaky Test: org.apache.zookeeper.test.WatcherTest. |  Major | tests | Michael Han | Michael Han |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2729](https://issues.apache.org/jira/browse/ZOOKEEPER-2729) | Cleanup findbug warnings in branch-3.4: Correctness Warnings |  Major | . | Rakesh R | Abraham Fine |
| [ZOOKEEPER-2749](https://issues.apache.org/jira/browse/ZOOKEEPER-2749) | Cleanup findbug warnings in branch-3.4: Experimental Warnings |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2707](https://issues.apache.org/jira/browse/ZOOKEEPER-2707) | Fix "Unexpected bean exists!" issue in WatcherTests |  Major | tests | Abraham Fine | Michael Han |
| [ZOOKEEPER-2754](https://issues.apache.org/jira/browse/ZOOKEEPER-2754) | Set up Apache Jenkins job that runs the flaky test analyzer script. |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2732](https://issues.apache.org/jira/browse/ZOOKEEPER-2732) | Cleanup findbug warnings in branch-3.4: Performance Warnings |  Major | . | Rakesh R | Abraham Fine |
| [ZOOKEEPER-2733](https://issues.apache.org/jira/browse/ZOOKEEPER-2733) | Cleanup findbug warnings in branch-3.4: Dodgy code Warnings |  Major | . | Rakesh R | Abraham Fine |
| [ZOOKEEPER-2731](https://issues.apache.org/jira/browse/ZOOKEEPER-2731) | Cleanup findbug warnings in branch-3.4: Malicious code vulnerability Warnings |  Major | . | Rakesh R | Abraham Fine |
| [ZOOKEEPER-2762](https://issues.apache.org/jira/browse/ZOOKEEPER-2762) | Multithreaded correctness Warnings |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2730](https://issues.apache.org/jira/browse/ZOOKEEPER-2730) | Cleanup findbug warnings in branch-3.4: Disable Internationalization Warnings |  Major | . | Rakesh R | Janek P |


