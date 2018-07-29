
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

## Release 3.5.4 - 2018-05-17



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2890](https://issues.apache.org/jira/browse/ZOOKEEPER-2890) | Local automatic variable is left uninitialized and then freed. |  Critical | c client | Alexander A. Strelets | Alexander A. Strelets |
| [ZOOKEEPER-2952](https://issues.apache.org/jira/browse/ZOOKEEPER-2952) | Upgrade third party libraries to address vulnerabilities |  Critical | server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-2967](https://issues.apache.org/jira/browse/ZOOKEEPER-2967) | Add check to validate dataDir and dataLogDir parameters at startup |  Major | server | Andor Molnar | Mark Fenes |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2875](https://issues.apache.org/jira/browse/ZOOKEEPER-2875) | Add ant task for running OWASP dependency report |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-1703](https://issues.apache.org/jira/browse/ZOOKEEPER-1703) | Please add instructions for running the tutorial |  Minor | documentation | Hayden Schultz | Andor Molnar |
| [ZOOKEEPER-2994](https://issues.apache.org/jira/browse/ZOOKEEPER-2994) | Tool required to recover log and snapshot entries with CRC errors |  Major | . | Andor Molnar | Andor Molnar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2744](https://issues.apache.org/jira/browse/ZOOKEEPER-2744) | Typos in the comments of ZooKeeper class |  Trivial | . | Ethan Li | Abraham Fine |
| [ZOOKEEPER-2638](https://issues.apache.org/jira/browse/ZOOKEEPER-2638) | ZooKeeper should log which serverCnxnFactory is used during startup |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2662](https://issues.apache.org/jira/browse/ZOOKEEPER-2662) | Export a metric for txn log sync times |  Major | . | Andrew Purtell | Edward Ribeiro |
| [ZOOKEEPER-2697](https://issues.apache.org/jira/browse/ZOOKEEPER-2697) | Handle graceful stop of ZookKeeper client |  Critical | java client | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-2767](https://issues.apache.org/jira/browse/ZOOKEEPER-2767) | Correct the exception messages in X509Util if truststore location or password is not configured |  Trivial | java client, server | Abhishek Kumar | Abhishek Kumar |
| [ZOOKEEPER-2788](https://issues.apache.org/jira/browse/ZOOKEEPER-2788) | The define of MAX\_CONNECTION\_ATTEMPTS in QuorumCnxManager.java seems useless, should it be removed? |  Minor | leaderElection, quorum | Jiafu Jiang | Abraham Fine |
| [ZOOKEEPER-2359](https://issues.apache.org/jira/browse/ZOOKEEPER-2359) | ZooKeeper client has unnecessary logs for watcher removal errors |  Major | java client | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-1748](https://issues.apache.org/jira/browse/ZOOKEEPER-1748) | TCP keepalive for leader election connections |  Minor | leaderElection | Antal Sasvári | Ben Sherman |
| [ZOOKEEPER-2815](https://issues.apache.org/jira/browse/ZOOKEEPER-2815) | 1. Using try clause to close resource; 2. Others code refactoring for PERSISTENCE module |  Major | server | Benedict Jin | Benedict Jin |
| [ZOOKEEPER-2816](https://issues.apache.org/jira/browse/ZOOKEEPER-2816) | Code refactoring for \`ZK\_SERVER\` module |  Major | server | Benedict Jin | Benedict Jin |
| [ZOOKEEPER-2856](https://issues.apache.org/jira/browse/ZOOKEEPER-2856) | ZooKeeperSaslClient#respondToServer should log exception message of SaslException |  Minor | . | Pan Yuxuan | Pan Yuxuan |
| [ZOOKEEPER-2865](https://issues.apache.org/jira/browse/ZOOKEEPER-2865) | Reconfig Causes Inconsistent Configuration file among the nodes |  Trivial | documentation | Jeffrey F. Lukman | Alexander Shraer |
| [ZOOKEEPER-2864](https://issues.apache.org/jira/browse/ZOOKEEPER-2864) | Add script to run a java api compatibility tool |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2870](https://issues.apache.org/jira/browse/ZOOKEEPER-2870) | Improve the efficiency of AtomicFileOutputStream |  Major | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-2880](https://issues.apache.org/jira/browse/ZOOKEEPER-2880) | Rename README.txt to README.md |  Minor | other | Michael Han | Manoj Mallela |
| [ZOOKEEPER-2829](https://issues.apache.org/jira/browse/ZOOKEEPER-2829) | Interface usability / compatibility improvements through Java annotation. |  Major | java client, server | Michael Han | Abraham Fine |
| [ZOOKEEPER-2896](https://issues.apache.org/jira/browse/ZOOKEEPER-2896) | Remove unused imports from org.apache.zookeeper.test.CreateTest.java |  Minor | tests | Nikhil Bhide | Nikhil Bhide |
| [ZOOKEEPER-2887](https://issues.apache.org/jira/browse/ZOOKEEPER-2887) | define dependency versions in build.xml to be easily overridden in build.properties |  Major | build | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-2904](https://issues.apache.org/jira/browse/ZOOKEEPER-2904) | Remove unused imports from org.apache.zookeeper.server.quorum.WatchLeakTest |  Trivial | . | Nikhil Bhide | Nikhil Bhide |
| [ZOOKEEPER-2915](https://issues.apache.org/jira/browse/ZOOKEEPER-2915) | Use "strict" conflict management in ivy |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2950](https://issues.apache.org/jira/browse/ZOOKEEPER-2950) | Add keys for the Zxid from the stat command to check\_zookeeper.py |  Trivial | scripts | Alex Bame | Alex Bame |
| [ZOOKEEPER-2824](https://issues.apache.org/jira/browse/ZOOKEEPER-2824) | \`FileChannel#size\` info should be added to \`FileTxnLog#commit\` to solve the confuse that reason is too large log or too busy disk I/O |  Minor | server | Benedict Jin | Benedict Jin |
| [ZOOKEEPER-2999](https://issues.apache.org/jira/browse/ZOOKEEPER-2999) | CMake build should use target-level commands |  Minor | . | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-3012](https://issues.apache.org/jira/browse/ZOOKEEPER-3012) | Fix unit test: testDataDirAndDataLogDir should not use hardcode test folders |  Major | server, tests | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-2971](https://issues.apache.org/jira/browse/ZOOKEEPER-2971) | Create release notes for 3.5.4 |  Blocker | documentation | Jordan Zimmerman | Patrick Hunt |


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
| [ZOOKEEPER-2349](https://issues.apache.org/jira/browse/ZOOKEEPER-2349) | Update documentation for snapCount |  Minor | documentation | Raghavendra Prabhu | maoling |
| [ZOOKEEPER-2581](https://issues.apache.org/jira/browse/ZOOKEEPER-2581) | Not handled NullPointerException while creating key manager and trustManager |  Major | server | Rakesh Kumar Singh | maoling |
| [ZOOKEEPER-2777](https://issues.apache.org/jira/browse/ZOOKEEPER-2777) | There is a typo in zk.py which prevents from using/compiling it. |  Major | contrib | Frederic Leger | Nikhil Bhide |
| [ZOOKEEPER-2905](https://issues.apache.org/jira/browse/ZOOKEEPER-2905) | Don't include \`config.h\` in \`zookeeper.h\` |  Major | . | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-2906](https://issues.apache.org/jira/browse/ZOOKEEPER-2906) | The OWASP dependency check jar should not be included in the default classpath |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2908](https://issues.apache.org/jira/browse/ZOOKEEPER-2908) | quorum.auth.MiniKdcTest.testKerberosLogin failing with NPE on java 9 |  Blocker | security, tests | Patrick Hunt | Mark Fenes |
| [ZOOKEEPER-2914](https://issues.apache.org/jira/browse/ZOOKEEPER-2914) | compiler warning using java 9 |  Minor | build | Patrick Hunt | Andor Molnar |
| [ZOOKEEPER-2909](https://issues.apache.org/jira/browse/ZOOKEEPER-2909) | Create ant task to generate ivy dependency reports |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2690](https://issues.apache.org/jira/browse/ZOOKEEPER-2690) | Update documentation source for ZOOKEEPER-2574 |  Minor | documentation | Michael Han | Mark Fenes |
| [ZOOKEEPER-2923](https://issues.apache.org/jira/browse/ZOOKEEPER-2923) | The comment of the variable matchSyncs in class CommitProcessor has a mistake. |  Minor | quorum | Jiafu Jiang | Jiafu Jiang |
| [ZOOKEEPER-2934](https://issues.apache.org/jira/browse/ZOOKEEPER-2934) | c versions of election and queue recipes do not compile |  Major | recipes | Abraham Fine | Andor Molnar |
| [ZOOKEEPER-2931](https://issues.apache.org/jira/browse/ZOOKEEPER-2931) | WriteLock recipe: incorrect znode ordering when the sessionId is part of the znode name |  Major | . | Javier Cacheiro |  |
| [ZOOKEEPER-2944](https://issues.apache.org/jira/browse/ZOOKEEPER-2944) | Specify correct overflow value |  Trivial | documentation | Chris Donati |  |
| [ZOOKEEPER-2948](https://issues.apache.org/jira/browse/ZOOKEEPER-2948) | Failing c unit tests on apache jenkins |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2338](https://issues.apache.org/jira/browse/ZOOKEEPER-2338) | c bindings should create socket's with SOCK\_CLOEXEC to avoid fd leaks on fork/exec |  Major | c client | James DeFelice | Radu Brumariu |
| [ZOOKEEPER-2924](https://issues.apache.org/jira/browse/ZOOKEEPER-2924) | Flaky Test: org.apache.zookeeper.test.LoadFromLogTest.testRestoreWithTransactionErrors |  Major | server, tests | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-2951](https://issues.apache.org/jira/browse/ZOOKEEPER-2951) | zkServer.cmd does not start when JAVA\_HOME ends with a \\ |  Major | server | Jorg Heymans |  |
| [ZOOKEEPER-2953](https://issues.apache.org/jira/browse/ZOOKEEPER-2953) | Flaky Test: testNoLogBeforeLeaderEstablishment |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2893](https://issues.apache.org/jira/browse/ZOOKEEPER-2893) | very poor choice of logging if client fails to connect to server |  Major | java client | Paul Millar | Andor Molnar |
| [ZOOKEEPER-2249](https://issues.apache.org/jira/browse/ZOOKEEPER-2249) | CRC check failed when preAllocSize smaller than node data |  Major | . | Benjamin Jaton | Abraham Fine |
| [ZOOKEEPER-2961](https://issues.apache.org/jira/browse/ZOOKEEPER-2961) | Fix testElectionFraud Flakyness |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2964](https://issues.apache.org/jira/browse/ZOOKEEPER-2964) | "Conf" command returns dataDir and dataLogDir opposingly |  Minor | server | Qihong Xu |  |
| [ZOOKEEPER-1580](https://issues.apache.org/jira/browse/ZOOKEEPER-1580) | QuorumPeer.setRunning is not used |  Minor | . | Flavio Junqueira | maoling |
| [ZOOKEEPER-2949](https://issues.apache.org/jira/browse/ZOOKEEPER-2949) | SSL ServerName not set when using hostname, some proxies may failed to proxy the request. |  Major | java client | Feng Shaobao |  |
| [ZOOKEEPER-2978](https://issues.apache.org/jira/browse/ZOOKEEPER-2978) | fix potential null pointer exception when deleting node |  Trivial | java client | achimbab |  |
| [ZOOKEEPER-2845](https://issues.apache.org/jira/browse/ZOOKEEPER-2845) | Data inconsistency issue due to retain database in leader election |  Critical | quorum | Fangmin Lv | Robert Joseph Evans |
| [ZOOKEEPER-2936](https://issues.apache.org/jira/browse/ZOOKEEPER-2936) | Duplicate Keys in log4j.properties config files |  Trivial | contrib, other | Hari Sekhon |  |
| [ZOOKEEPER-2992](https://issues.apache.org/jira/browse/ZOOKEEPER-2992) | The eclipse build target fails due to protocol redirection: http-\>https |  Major | build | Shawn Heisey | Shawn Heisey |
| [ZOOKEEPER-3001](https://issues.apache.org/jira/browse/ZOOKEEPER-3001) | Incorrect log message when try to delete container node |  Trivial | server | Sel-fish Finch | Sel-fish Finch |
| [ZOOKEEPER-2997](https://issues.apache.org/jira/browse/ZOOKEEPER-2997) | CMake should not force static CRT linking |  Major | . | Andrew Schwartzmeyer | Andrew Schwartzmeyer |
| [ZOOKEEPER-2806](https://issues.apache.org/jira/browse/ZOOKEEPER-2806) | Flaky test: org.apache.zookeeper.server.quorum.FLEBackwardElectionRoundTest.testBackwardElectionRound |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-3006](https://issues.apache.org/jira/browse/ZOOKEEPER-3006) | Potential NPE in ZKDatabase#calculateTxnLogSizeLimit |  Major | . | lujie | Edward Ribeiro |
| [ZOOKEEPER-3025](https://issues.apache.org/jira/browse/ZOOKEEPER-3025) | cmake windows build is broken on jenkins |  Blocker | build | Patrick Hunt | Andrew Schwartzmeyer |
| [ZOOKEEPER-3007](https://issues.apache.org/jira/browse/ZOOKEEPER-3007) | Potential NPE in ReferenceCountedACLCache#deserialize |  Major | . | lujie | lujie |
| [ZOOKEEPER-3027](https://issues.apache.org/jira/browse/ZOOKEEPER-3027) | Accidently removed public API of FileTxnLog.setPreallocSize() |  Major | server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-2988](https://issues.apache.org/jira/browse/ZOOKEEPER-2988) | NPE triggered if server receives a vote for a server id not in their voting view |  Minor | leaderElection | Brian Nixon | Brian Nixon |
| [ZOOKEEPER-2982](https://issues.apache.org/jira/browse/ZOOKEEPER-2982) | Re-try DNS hostname -\> IP resolution |  Blocker | server | Eron Wright | Flavio Junqueira |
| [ZOOKEEPER-2901](https://issues.apache.org/jira/browse/ZOOKEEPER-2901) | Session ID that is negative causes mis-calculation of Ephemeral Type |  Blocker | server | Mark Johnson | Jordan Zimmerman |
| [ZOOKEEPER-2959](https://issues.apache.org/jira/browse/ZOOKEEPER-2959) | ignore accepted epoch and LEADERINFO ack from observers when a newly elected leader computes new epoch |  Blocker | . | xiangyq000 | Bogdan Kanivets |
| [ZOOKEEPER-3038](https://issues.apache.org/jira/browse/ZOOKEEPER-3038) | Cleanup some nitpicks in TTL implementation |  Major | server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-1807](https://issues.apache.org/jira/browse/ZOOKEEPER-1807) | Observers spam each other creating connections to the election addr |  Blocker | . | Raul Gutierrez Segales | Alexander Shraer |
| [ZOOKEEPER-3039](https://issues.apache.org/jira/browse/ZOOKEEPER-3039) | TxnLogToolkit uses Scanner badly |  Major | . | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3072](https://issues.apache.org/jira/browse/ZOOKEEPER-3072) | Race condition in throttling |  Major | server | Botond Hejj |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2746](https://issues.apache.org/jira/browse/ZOOKEEPER-2746) | Leader hand-off during dynamic reconfig is best effort, while test always expects it |  Major | . | Michael Han | Michael Han |
| [ZOOKEEPER-2742](https://issues.apache.org/jira/browse/ZOOKEEPER-2742) | Few test cases of org.apache.zookeeper.ZooKeeperTest fails in Windows |  Trivial | tests | Abhishek Kumar | Abhishek Kumar |
| [ZOOKEEPER-2796](https://issues.apache.org/jira/browse/ZOOKEEPER-2796) | Test org.apache.zookeeper.ZooKeeperTest.testCreateNodeWithoutData is broken by ZOOKEEPER-2757 |  Minor | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2577](https://issues.apache.org/jira/browse/ZOOKEEPER-2577) | Flaky Test: org.apache.zookeeper.server.quorum.ReconfigDuringLeaderSyncTest.testDuringLeaderSync |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2415](https://issues.apache.org/jira/browse/ZOOKEEPER-2415) | SessionTest is using Thread deprecated API. |  Major | tests | Flavio Junqueira | Andor Molnar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2754](https://issues.apache.org/jira/browse/ZOOKEEPER-2754) | Set up Apache Jenkins job that runs the flaky test analyzer script. |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2792](https://issues.apache.org/jira/browse/ZOOKEEPER-2792) | [QP MutualAuth]: Port ZOOKEEPER-1045 implementation from branch-3.4 to branch-3.5 |  Major | quorum, security | Rakesh R | Michael Han |
| [ZOOKEEPER-2939](https://issues.apache.org/jira/browse/ZOOKEEPER-2939) | Deal with maxbuffer as it relates to proposals |  Major | jute, server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-2981](https://issues.apache.org/jira/browse/ZOOKEEPER-2981) | Fix build on branch-3.5 for ZOOKEEPER-2939 |  Major | build | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-2903](https://issues.apache.org/jira/browse/ZOOKEEPER-2903) | Port ZOOKEEPER-2901 to 3.5.4 |  Blocker | server | Jordan Zimmerman | Jordan Zimmerman |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2795](https://issues.apache.org/jira/browse/ZOOKEEPER-2795) | Change log level for "ZKShutdownHandler is not registered" error message |  Trivial | . | Andy Chambers | Abraham Fine |
| [ZOOKEEPER-3017](https://issues.apache.org/jira/browse/ZOOKEEPER-3017) | Link libm in CMake on FreeBSD |  Minor | . | David Forsythe | David Forsythe |
| [ZOOKEEPER-3002](https://issues.apache.org/jira/browse/ZOOKEEPER-3002) | Upgrade branches 3.5 and trunk to Java 1.8 |  Major | java client, server | Andor Molnar | Norbert Kalmar |


