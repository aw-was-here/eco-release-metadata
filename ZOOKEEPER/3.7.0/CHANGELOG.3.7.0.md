
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

## Release 3.7.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3681](https://issues.apache.org/jira/browse/ZOOKEEPER-3681) | Add s390x support for Travis build |  Major | . | Sangita Nalkar | Enrico Olivelli |
| [ZOOKEEPER-1112](https://issues.apache.org/jira/browse/ZOOKEEPER-1112) | Add support for C client for SASL authentication |  Major | . | Eugene Joseph Koontz | Damien Diederen |
| [ZOOKEEPER-3714](https://issues.apache.org/jira/browse/ZOOKEEPER-3714) | Add (Cyrus) SASL authentication support to Perl client |  Major | contrib-bindings | Damien Diederen | Damien Diederen |
| [ZOOKEEPER-3948](https://issues.apache.org/jira/browse/ZOOKEEPER-3948) | Introduce a deterministic runtime behavior injection framework for ZooKeeperServer testing |  Major | server, tests | Michael Han | Michael Han |
| [ZOOKEEPER-3969](https://issues.apache.org/jira/browse/ZOOKEEPER-3969) | Add whoami  API and Cli command |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-3959](https://issues.apache.org/jira/browse/ZOOKEEPER-3959) | Allow multiple superUsers with SASL |  Minor | server | Damien Diederen | Damien Diederen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3582](https://issues.apache.org/jira/browse/ZOOKEEPER-3582) | refactor the async api call to lambda style |  Minor | server | maoling |  |
| [ZOOKEEPER-3640](https://issues.apache.org/jira/browse/ZOOKEEPER-3640) | Implement "batch mode" in cli\_mt |  Minor | c client | Damien Diederen | Damien Diederen |
| [ZOOKEEPER-3638](https://issues.apache.org/jira/browse/ZOOKEEPER-3638) | Update Jetty to 9.4.24.v20191120 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [ZOOKEEPER-3679](https://issues.apache.org/jira/browse/ZOOKEEPER-3679) | Upgrade maven-compiler-plugin For ZooKeeper-jute |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3649](https://issues.apache.org/jira/browse/ZOOKEEPER-3649) | ls -s CLI need a line break |  Minor | scripts | maoling | Rabi Kumar K C |
| [ZOOKEEPER-3411](https://issues.apache.org/jira/browse/ZOOKEEPER-3411) | remove the deprecated CLI: ls2 and rmr |  Minor | scripts | maoling | Rabi Kumar K C |
| [ZOOKEEPER-3678](https://issues.apache.org/jira/browse/ZOOKEEPER-3678) | Remove Redundant GroupID from Maven POMs |  Trivial | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3694](https://issues.apache.org/jira/browse/ZOOKEEPER-3694) | Use Map computeIfAbsent in AvgMinMaxCounterSet Class |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3663](https://issues.apache.org/jira/browse/ZOOKEEPER-3663) | Clean Up ZNodeName Class |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3666](https://issues.apache.org/jira/browse/ZOOKEEPER-3666) | remove the deprecated LogFormatter tool |  Minor | scripts | maoling | Nishanth Entoor |
| [ZOOKEEPER-3482](https://issues.apache.org/jira/browse/ZOOKEEPER-3482) | SASL (Kerberos) Authentication with SSL for clients and Quorum |  Major | server | Jörn Franke | Mate Szalay-Beko |
| [ZOOKEEPER-3567](https://issues.apache.org/jira/browse/ZOOKEEPER-3567) | Add SSL support for the zk python client |  Major | c client, contrib | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3708](https://issues.apache.org/jira/browse/ZOOKEEPER-3708) | Move Logging Code into Logging Guard in Learner |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3682](https://issues.apache.org/jira/browse/ZOOKEEPER-3682) | Stop initializing new SSL connection if ZK server is shutting down |  Minor | server | Jie Huang |  |
| [ZOOKEEPER-3741](https://issues.apache.org/jira/browse/ZOOKEEPER-3741) | Fix ZooKeeper 3.5 C client build on Fedora8 |  Major | c client | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3427](https://issues.apache.org/jira/browse/ZOOKEEPER-3427) | Introduce SnapshotComparer that assists debugging with snapshots. |  Major | server | Michael Han | Maya Wang |
| [ZOOKEEPER-3683](https://issues.apache.org/jira/browse/ZOOKEEPER-3683) | Discard requests that are delayed longer than a configured threshold |  Minor | server | Jie Huang | Jie Huang |
| [ZOOKEEPER-3728](https://issues.apache.org/jira/browse/ZOOKEEPER-3728) | move traceMask calculation logic into the trace log in the FinalRequestProcessor#processRequest |  Minor | server | maoling | Brittany Barnes |
| [ZOOKEEPER-3767](https://issues.apache.org/jira/browse/ZOOKEEPER-3767) | fix a large amount of maven build warnings |  Major | . | maoling | Zili Chen |
| [ZOOKEEPER-3581](https://issues.apache.org/jira/browse/ZOOKEEPER-3581) | use factory design pattern to refactor ZooKeeperMain |  Minor | . | maoling |  |
| [ZOOKEEPER-3785](https://issues.apache.org/jira/browse/ZOOKEEPER-3785) | Make sources buildable with JDK14 |  Critical | build | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3786](https://issues.apache.org/jira/browse/ZOOKEEPER-3786) | Simplify generation of VersionInfoMain and Info |  Major | build | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3788](https://issues.apache.org/jira/browse/ZOOKEEPER-3788) | Add m2e configuration in pom.xml for Eclipse developers |  Minor | build | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3790](https://issues.apache.org/jira/browse/ZOOKEEPER-3790) | zkpython: Minor compilation and testing issues |  Minor | . | Damien Diederen | Damien Diederen |
| [ZOOKEEPER-3811](https://issues.apache.org/jira/browse/ZOOKEEPER-3811) | cleaning up the code,A static field should be directly referred by its class name |  Minor | server | xavierzw |  |
| [ZOOKEEPER-3791](https://issues.apache.org/jira/browse/ZOOKEEPER-3791) | Miscellaneous Maven improvements |  Major | build, tests | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3796](https://issues.apache.org/jira/browse/ZOOKEEPER-3796) | Skip Learner Request made to ObserverMaster from going to next processor |  Minor | server | Mayank Tuteja |  |
| [ZOOKEEPER-3805](https://issues.apache.org/jira/browse/ZOOKEEPER-3805) | NIOServerCnxnFactory static block has no used code |  Minor | server | javhu |  |
| [ZOOKEEPER-3761](https://issues.apache.org/jira/browse/ZOOKEEPER-3761) | upgrade JLine jar dependency |  Minor | server | maoling |  |
| [ZOOKEEPER-3690](https://issues.apache.org/jira/browse/ZOOKEEPER-3690) | Improving leader efficiency via not processing learner's requests in commit processor |  Minor | . | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-3101](https://issues.apache.org/jira/browse/ZOOKEEPER-3101) | Add comment reminding users to add cases to zerror when adding values to ZOO\_ERRORS |  Trivial | . | Kent R. Spillner | Kent R. Spillner |
| [ZOOKEEPER-3883](https://issues.apache.org/jira/browse/ZOOKEEPER-3883) | new UncaughtExceptionHandler object with lambda |  Minor | server | wenshuai.zhang |  |
| [ZOOKEEPER-3831](https://issues.apache.org/jira/browse/ZOOKEEPER-3831) | Add a test that does a minimal validation of Apache Curator |  Minor | tests | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-3913](https://issues.apache.org/jira/browse/ZOOKEEPER-3913) | Upgrade to Netty 4.1.50.Final |  Major | . | odidev | Enrico Olivelli |
| [ZOOKEEPER-3893](https://issues.apache.org/jira/browse/ZOOKEEPER-3893) | Enhance documentation for property ssl.clientAuth |  Minor | . | Sankalp Bhatia | Sankalp Bhatia |
| [ZOOKEEPER-3935](https://issues.apache.org/jira/browse/ZOOKEEPER-3935) | Handle float metrics in check\_zookeeper |  Minor | contrib | Mate Szalay-Beko |  |
| [ZOOKEEPER-3941](https://issues.apache.org/jira/browse/ZOOKEEPER-3941) | Upgrade commons-cli to 1.4 |  Major | server | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3952](https://issues.apache.org/jira/browse/ZOOKEEPER-3952) | Remove commons-lang from ZooKeeper |  Minor | server | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3950](https://issues.apache.org/jira/browse/ZOOKEEPER-3950) | Add support for BCFKS key/trust store format |  Major | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3956](https://issues.apache.org/jira/browse/ZOOKEEPER-3956) | Remove json-simple from ZooKeeper |  Major | contrib, server | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3960](https://issues.apache.org/jira/browse/ZOOKEEPER-3960) | Update ZooKeeper client documentation about key file format parameters |  Minor | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3808](https://issues.apache.org/jira/browse/ZOOKEEPER-3808) | correct the documentation about digest.enabled |  Minor | documentation | maoling | Mate Szalay-Beko |
| [ZOOKEEPER-3561](https://issues.apache.org/jira/browse/ZOOKEEPER-3561) | Generalize target authentication scheme for ZooKeeper authentication enforcement. |  Major | server | Michael Han | Mohammad Arshad |
| [ZOOKEEPER-3722](https://issues.apache.org/jira/browse/ZOOKEEPER-3722) | make logs of ResponseCache more readable |  Minor | server | maoling | Nishanth Entoor |
| [ZOOKEEPER-3971](https://issues.apache.org/jira/browse/ZOOKEEPER-3971) | Auto close resources with try catch block |  Minor | . | Furkan Kamaci |  |
| [ZOOKEEPER-3926](https://issues.apache.org/jira/browse/ZOOKEEPER-3926) | make the rc constant in the ClientCnxn |  Minor | server | maoling | Damien Diederen |
| [ZOOKEEPER-2649](https://issues.apache.org/jira/browse/ZOOKEEPER-2649) | The ZooKeeper do not write in log session ID in which the client has been authenticated. |  Trivial | server | Alex Zhou | Alex Zhou |
| [ZOOKEEPER-3342](https://issues.apache.org/jira/browse/ZOOKEEPER-3342) | Use StandardCharsets |  Major | server | David Mollitor | David Mollitor |
| [ZOOKEEPER-3958](https://issues.apache.org/jira/browse/ZOOKEEPER-3958) | Update dependency versions and eliminate java docs warnings |  Major | server | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3662](https://issues.apache.org/jira/browse/ZOOKEEPER-3662) | Remove NPE Possibility in Follower Class |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3688](https://issues.apache.org/jira/browse/ZOOKEEPER-3688) | Use StandardCharsets UTF-8 in Jute toString |  Minor | jute | David Mollitor | David Mollitor |
| [ZOOKEEPER-3687](https://issues.apache.org/jira/browse/ZOOKEEPER-3687) | Jute Use JDK hashCode Methods for Native Types |  Major | jute | David Mollitor | David Mollitor |
| [ZOOKEEPER-3833](https://issues.apache.org/jira/browse/ZOOKEEPER-3833) | Do Not Override Plugin Versions from Apache Parent POM |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3836](https://issues.apache.org/jira/browse/ZOOKEEPER-3836) | Use Commons and JDK Functions in ClientBase |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3839](https://issues.apache.org/jira/browse/ZOOKEEPER-3839) | ReconfigBackupTest Remove getFileContent |  Minor | . | David Mollitor | David Mollitor |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3651](https://issues.apache.org/jira/browse/ZOOKEEPER-3651) | NettyServerCnxnFactoryTest is flaky |  Major | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3653](https://issues.apache.org/jira/browse/ZOOKEEPER-3653) | Audit Log feature fails in a stand alone zookeeper setup |  Major | audit | Sujith Simon | Sujith Simon |
| [ZOOKEEPER-3644](https://issues.apache.org/jira/browse/ZOOKEEPER-3644) | Data loss after upgrading standalone ZK server 3.4.14 to 3.5.6 with snapshot.trust.empty=true |  Blocker | server | Manikumar | Michael Han |
| [ZOOKEEPER-3656](https://issues.apache.org/jira/browse/ZOOKEEPER-3656) | SyncRequestProcessor doesn't update lastFlushTime correctly on observers |  Major | . | Eric Hammerle |  |
| [ZOOKEEPER-3667](https://issues.apache.org/jira/browse/ZOOKEEPER-3667) | set jute.maxbuffer hexadecimal number throw parseInt error |  Major | java client | bright.zhou | Sujith Simon |
| [ZOOKEEPER-3613](https://issues.apache.org/jira/browse/ZOOKEEPER-3613) | ZKConfig fails to return proper value on getBoolean() when user accidentally includes spaces at the end of the value |  Minor | server | Scott Guminy | Sujith Simon |
| [ZOOKEEPER-3699](https://issues.apache.org/jira/browse/ZOOKEEPER-3699) | upgrade jackson-databind to address CVE-2019-20330 |  Blocker | security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3698](https://issues.apache.org/jira/browse/ZOOKEEPER-3698) | NoRouteToHostException when starting large ZooKeeper cluster on localhost |  Major | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3710](https://issues.apache.org/jira/browse/ZOOKEEPER-3710) | [trivial bug] fix compile error in PurgeTxnTest introduced by ZOOKEEPER-3231 |  Trivial | tests | maoling | maoling |
| [ZOOKEEPER-1105](https://issues.apache.org/jira/browse/ZOOKEEPER-1105) | c client zookeeper\_close not send CLOSE\_OP request to server |  Major | c client | jiang guangran | Mate Szalay-Beko |
| [ZOOKEEPER-3737](https://issues.apache.org/jira/browse/ZOOKEEPER-3737) | Unable to eliminate log4j1 transitive dependency |  Major | jmx, server | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-2164](https://issues.apache.org/jira/browse/ZOOKEEPER-2164) | fast leader election keeps failing |  Major | leaderElection | Michi Mutsuzaki | Mate Szalay-Beko |
| [ZOOKEEPER-3748](https://issues.apache.org/jira/browse/ZOOKEEPER-3748) | Resolve release requirements in download page |  Major | . | Zili Chen | Zili Chen |
| [ZOOKEEPER-3745](https://issues.apache.org/jira/browse/ZOOKEEPER-3745) | Update copyright notices from 2019 to 2020 |  Major | . | Zili Chen | Zili Chen |
| [ZOOKEEPER-3739](https://issues.apache.org/jira/browse/ZOOKEEPER-3739) | Remove use of com.sun.nio.file.SensitivityWatchEventModifier |  Major | build, server | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3654](https://issues.apache.org/jira/browse/ZOOKEEPER-3654) | Incorrect \*\_CFLAGS handling in Automake |  Major | c client | Damien Diederen | Damien Diederen |
| [ZOOKEEPER-2836](https://issues.apache.org/jira/browse/ZOOKEEPER-2836) | QuorumCnxManager.Listener Thread Better handling of SocketTimeoutException |  Critical | leaderElection, quorum | Amarjeet Singh | gaoshu |
| [ZOOKEEPER-3769](https://issues.apache.org/jira/browse/ZOOKEEPER-3769) | fast leader election does not end if leader is taken down |  Major | leaderElection | Lasaro Camargos | Mate Szalay-Beko |
| [ZOOKEEPER-3780](https://issues.apache.org/jira/browse/ZOOKEEPER-3780) | restore Version.getRevision() to be backward compatible |  Critical | . | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3782](https://issues.apache.org/jira/browse/ZOOKEEPER-3782) | Replace filter with list comprehension for returning list in zk-merge-pr.py |  Major | . | Zili Chen | Zili Chen |
| [ZOOKEEPER-3726](https://issues.apache.org/jira/browse/ZOOKEEPER-3726) | invalid ipv6 address comparison in C client |  Major | c client | Vladislav Tyulbashev | Mate Szalay-Beko |
| [ZOOKEEPER-3793](https://issues.apache.org/jira/browse/ZOOKEEPER-3793) | Request throttling is broken when RequestThrottler is disabled or configured incorrectly. |  Critical | server | Michael Han | Michael Han |
| [ZOOKEEPER-3738](https://issues.apache.org/jira/browse/ZOOKEEPER-3738) | Avoid use of broken codehaus properties-maven-plugin |  Major | build | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3579](https://issues.apache.org/jira/browse/ZOOKEEPER-3579) | handle NPE gracefully when the watch parameter of zookeeper java client is null |  Minor | java client | maoling | Zili Chen |
| [ZOOKEEPER-3215](https://issues.apache.org/jira/browse/ZOOKEEPER-3215) | Handle Java 9/11 additions of covariant return types to java.nio.ByteBuffer methods |  Minor | . | V | Andor Molnar |
| [ZOOKEEPER-3772](https://issues.apache.org/jira/browse/ZOOKEEPER-3772) | JettyAdminServer should not allow HTTP TRACE method |  Major | . | Jinjiang Ling |  |
| [ZOOKEEPER-3818](https://issues.apache.org/jira/browse/ZOOKEEPER-3818) | fix zkServer.sh status command to support SSL-only server |  Critical | security | Aishwarya Soni | lujie |
| [ZOOKEEPER-1998](https://issues.apache.org/jira/browse/ZOOKEEPER-1998) | C library calls getaddrinfo unconditionally from zookeeper\_interest |  Major | c client | Raúl Gutiérrez Segalés | Damien Diederen |
| [ZOOKEEPER-3832](https://issues.apache.org/jira/browse/ZOOKEEPER-3832) | ZKHostnameVerifier rejects valid certificates with subjectAltNames |  Major | server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3829](https://issues.apache.org/jira/browse/ZOOKEEPER-3829) | Zookeeper refuses request after node expansion |  Major | server | benwang li | Mate Szalay-Beko |
| [ZOOKEEPER-3865](https://issues.apache.org/jira/browse/ZOOKEEPER-3865) | fix backward-compatibility for ZooKeeperServer constructor |  Blocker | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3878](https://issues.apache.org/jira/browse/ZOOKEEPER-3878) | Client connection fails if IPV6 is not enclosed in square brackets |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-3112](https://issues.apache.org/jira/browse/ZOOKEEPER-3112) | fd leak due to UnresolvedAddressException on connect. |  Critical | java client | Tianzhou Wang |  |
| [ZOOKEEPER-3891](https://issues.apache.org/jira/browse/ZOOKEEPER-3891) | ZKCli commands give wrong error message "Authentication is not valid" for insufficient permissions |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-3876](https://issues.apache.org/jira/browse/ZOOKEEPER-3876) | zkServer.sh status command fails when IPV6 is configured |  Minor | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-3895](https://issues.apache.org/jira/browse/ZOOKEEPER-3895) | Client side NullPointerException in case of empty Multi operation |  Blocker | java client | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3885](https://issues.apache.org/jira/browse/ZOOKEEPER-3885) | zoo\_aremove\_watches segfault: zk\_hashtable needs locking! |  Major | c client | Tudor Bosman |  |
| [ZOOKEEPER-3905](https://issues.apache.org/jira/browse/ZOOKEEPER-3905) | Race condition causes sessions to be created for clients even though their certificate authentication has failed |  Major | . | Karan Mehta | Andor Molnar |
| [ZOOKEEPER-3801](https://issues.apache.org/jira/browse/ZOOKEEPER-3801) | Fix Jenkins link in pom |  Major | build | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3863](https://issues.apache.org/jira/browse/ZOOKEEPER-3863) | Do not track global sessions in ReadOnlyZooKeeperServer |  Minor | server | Jie Huang | Jie Huang |
| [ZOOKEEPER-3937](https://issues.apache.org/jira/browse/ZOOKEEPER-3937) | C client: avoid out-of-order packets during SASL negotiation |  Major | c client | Damien Diederen | Damien Diederen |
| [ZOOKEEPER-3944](https://issues.apache.org/jira/browse/ZOOKEEPER-3944) | zookeeper c api sasl client memory leak |  Major | c client | Xiaotian Qi |  |
| [ZOOKEEPER-3954](https://issues.apache.org/jira/browse/ZOOKEEPER-3954) | use of uninitialized data in zookeeper-client/zookeeper-client-c/src/zookeeper.c:free\_auth\_completion |  Minor | c client | Michael Hudson-Doyle | Damien Diederen |
| [ZOOKEEPER-3951](https://issues.apache.org/jira/browse/ZOOKEEPER-3951) | Compile Error in Zookeeper.c without SASL |  Major | c client | Parag | Damien Diederen |
| [ZOOKEEPER-3955](https://issues.apache.org/jira/browse/ZOOKEEPER-3955) | added a shebang or a 'shell' directive to lastRevision.sh |  Major | . | Joydeep Sen Gupta |  |
| [ZOOKEEPER-3983](https://issues.apache.org/jira/browse/ZOOKEEPER-3983) | C client test suite hangs forever 'sss' is configured in /etc/nsswitch.conf |  Major | c client, tests | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3992](https://issues.apache.org/jira/browse/ZOOKEEPER-3992) | addWatch api should check the null watch |  Minor | java client | maoling | Damien Diederen |
| [ZOOKEEPER-3911](https://issues.apache.org/jira/browse/ZOOKEEPER-3911) | Data inconsistency caused by DIFF sync uncommitted log |  Critical | quorum, server | lixun | Michael Han |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3575](https://issues.apache.org/jira/browse/ZOOKEEPER-3575) | Moving sending packets in Learner to a separate thread |  Major | server | Jie Huang |  |
| [ZOOKEEPER-3574](https://issues.apache.org/jira/browse/ZOOKEEPER-3574) | Close quorum socket asynchronously to avoid server shutdown stalled by long socket closing time |  Major | server | Jie Huang | Jie Huang |
| [ZOOKEEPER-837](https://issues.apache.org/jira/browse/ZOOKEEPER-837) | cyclic dependency ClientCnxn, ZooKeeper |  Major | java client | Patrick Datko | Zili Chen |
| [ZOOKEEPER-3845](https://issues.apache.org/jira/browse/ZOOKEEPER-3845) | Add metric JVM\_PAUSE\_TIME |  Minor | metric system | Jie Huang | Jie Huang |
| [ZOOKEEPER-3856](https://issues.apache.org/jira/browse/ZOOKEEPER-3856) | Add a couple metrics to track inflight diff syncs and snap syncs |  Minor | metric system | Jie Huang | Jie Huang |
| [ZOOKEEPER-3859](https://issues.apache.org/jira/browse/ZOOKEEPER-3859) | Add a couple request processor metrics |  Minor | metric system | Jie Huang |  |
| [ZOOKEEPER-3852](https://issues.apache.org/jira/browse/ZOOKEEPER-3852) | Upgrade jUnit in ZooKeeper-Jute |  Major | jute | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3872](https://issues.apache.org/jira/browse/ZOOKEEPER-3872) | Upgrade jUnit in ZooKeeper-server |  Major | server | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3855](https://issues.apache.org/jira/browse/ZOOKEEPER-3855) | Upgrade jUnit in ZooKeeper-Metrics-providers |  Major | metric system | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3854](https://issues.apache.org/jira/browse/ZOOKEEPER-3854) | Upgrade jUnit in ZooKeeper-Recipes |  Major | recipes | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3862](https://issues.apache.org/jira/browse/ZOOKEEPER-3862) | Re-enable deprecation check after finishing jUnit upgrade |  Blocker | tests | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3953](https://issues.apache.org/jira/browse/ZOOKEEPER-3953) | Update hamcrest-library to version 2.2 |  Minor | . | Tamas Penzes | Tamas Penzes |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3763](https://issues.apache.org/jira/browse/ZOOKEEPER-3763) | Restore ZKUtil.deleteRecursive in order to help compatibility of applications with 3.5 and 3.6 |  Critical | java client | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3415](https://issues.apache.org/jira/browse/ZOOKEEPER-3415) | convert internal logic to use java 8 streams |  Trivial | . | Brian Nixon |  |
| [ZOOKEEPER-3695](https://issues.apache.org/jira/browse/ZOOKEEPER-3695) | Source release tarball does not match repository in 3.6.0 |  Blocker | build | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3677](https://issues.apache.org/jira/browse/ZOOKEEPER-3677) | owasp checker failing for - CVE-2019-17571 Apache Log4j 1.2 deserialization of untrusted data in SocketServer |  Major | security | Patrick D. Hunt | Enrico Olivelli |
| [ZOOKEEPER-3669](https://issues.apache.org/jira/browse/ZOOKEEPER-3669) | Use switch Statement in ClientCnxn SendThread |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3704](https://issues.apache.org/jira/browse/ZOOKEEPER-3704) | upgrade maven dependency-check to 5.3.0 |  Major | build, security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3734](https://issues.apache.org/jira/browse/ZOOKEEPER-3734) | upgrade jackson-databind to address CVE-2020-8840 |  Blocker | security | Patrick D. Hunt | Enrico Olivelli |
| [ZOOKEEPER-3733](https://issues.apache.org/jira/browse/ZOOKEEPER-3733) | Fix issues reported in 3.6.0rc3 |  Blocker | . | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3751](https://issues.apache.org/jira/browse/ZOOKEEPER-3751) | upgrade jackson-databind to 2.10 from 2.9 |  Critical | security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3794](https://issues.apache.org/jira/browse/ZOOKEEPER-3794) | upgrade netty to address CVE-2020-11612 |  Blocker | security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3817](https://issues.apache.org/jira/browse/ZOOKEEPER-3817) | owasp failing due to CVE-2020-9488 |  Blocker | security | Patrick D. Hunt | Mate Szalay-Beko |
| [ZOOKEEPER-3896](https://issues.apache.org/jira/browse/ZOOKEEPER-3896) | Migrate Jenkins jobs to ci-hadoop.apache.org |  Major | build-infrastructure | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3957](https://issues.apache.org/jira/browse/ZOOKEEPER-3957) | Create Owasp check build on new Jenkins instance |  Major | build | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3962](https://issues.apache.org/jira/browse/ZOOKEEPER-3962) | Create .asf.yaml file for ZooKeeper repo |  Major | . | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3981](https://issues.apache.org/jira/browse/ZOOKEEPER-3981) | Flaky test MultipleAddressTest::testGetValidAddressWithNotValid |  Minor | tests | Michael Han | Michael Han |
| [ZOOKEEPER-3696](https://issues.apache.org/jira/browse/ZOOKEEPER-3696) | Support alternative algorithms for ACL digest |  Blocker | security | Patrick D. Hunt | maoling |
| [ZOOKEEPER-3980](https://issues.apache.org/jira/browse/ZOOKEEPER-3980) | Fix Jenkinsfiles with new tool names |  Blocker | build-infrastructure | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3967](https://issues.apache.org/jira/browse/ZOOKEEPER-3967) | Jetty License Update |  Major | license | Michael Han | Michael Han |


