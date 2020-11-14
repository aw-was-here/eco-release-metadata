
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

## Release 3.5.5 - 2019-05-20



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2169](https://issues.apache.org/jira/browse/ZOOKEEPER-2169) | Enable creation of nodes with TTLs |  Major | c client, java client, jute, server | Camille Fournier | Jordan Zimmerman |
| [ZOOKEEPER-3066](https://issues.apache.org/jira/browse/ZOOKEEPER-3066) | Expose on JMX of Followers the id of the current leader |  Major | jmx, leaderElection, quorum | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-2933](https://issues.apache.org/jira/browse/ZOOKEEPER-2933) | Ability to monitor the jute.maxBuffer usage in real-time |  Major | jute, server | Andor Molnar | Andor Molnar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3043](https://issues.apache.org/jira/browse/ZOOKEEPER-3043) | QuorumKerberosHostBasedAuthTest fails on Linux box: Unable to parse:includedir /etc/krb5.conf.d/ |  Major | build, kerberos, tests | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3019](https://issues.apache.org/jira/browse/ZOOKEEPER-3019) | Add a metric to track number of slow fsyncs |  Major | jmx, server | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3063](https://issues.apache.org/jira/browse/ZOOKEEPER-3063) | Track outstanding changes with ArrayDeque |  Trivial | server | Yisong Yue | Yisong Yue |
| [ZOOKEEPER-2368](https://issues.apache.org/jira/browse/ZOOKEEPER-2368) | Client watches are not disconnected on close |  Major | . | Timothy James Ward | Timothy James Ward |
| [ZOOKEEPER-2873](https://issues.apache.org/jira/browse/ZOOKEEPER-2873) | print error and/or abort on invalid server definition |  Minor | server | Christopher Smith | Norbert Kalmár |
| [ZOOKEEPER-3083](https://issues.apache.org/jira/browse/ZOOKEEPER-3083) | Remove some redundant and noisy log lines |  Trivial | server | Brian Nixon | Brian Nixon |
| [ZOOKEEPER-3077](https://issues.apache.org/jira/browse/ZOOKEEPER-3077) | Build native C library outside of source directory |  Trivial | build | Kent R. Spillner | Kent R. Spillner |
| [ZOOKEEPER-3097](https://issues.apache.org/jira/browse/ZOOKEEPER-3097) | Use Runnable instead of Thread for working items in WorkerService to improve the throughput of CommitProcessor |  Minor | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-3094](https://issues.apache.org/jira/browse/ZOOKEEPER-3094) | Make BufferSizeTest reliable |  Minor | tests | Mohamed Jeelani | Mohamed Jeelani |
| [ZOOKEEPER-3110](https://issues.apache.org/jira/browse/ZOOKEEPER-3110) | Improve the closeSession throughput in PrepRequestProcessor |  Minor | quorum | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-3159](https://issues.apache.org/jira/browse/ZOOKEEPER-3159) | Flaky: ClientRequestTimeoutTest.testClientRequestTimeout |  Major | tests | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-1908](https://issues.apache.org/jira/browse/ZOOKEEPER-1908) | setAcl should be have a recursive function |  Major | scripts, server | Kevin Odell | Reid Chan |
| [ZOOKEEPER-3152](https://issues.apache.org/jira/browse/ZOOKEEPER-3152) | Port ZK netty stack to netty 4 |  Minor | java client, server | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3228](https://issues.apache.org/jira/browse/ZOOKEEPER-3228) | [TLS] Fix key usage extension in test certs |  Minor | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3235](https://issues.apache.org/jira/browse/ZOOKEEPER-3235) | Enable secure processing and disallow DTDs in the SAXParserFactory |  Major | jute | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [ZOOKEEPER-3195](https://issues.apache.org/jira/browse/ZOOKEEPER-3195) | TLS - disable client-initiated renegotiation |  Major | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3250](https://issues.apache.org/jira/browse/ZOOKEEPER-3250) | typo in doc - zookeeperInternals |  Trivial | documentation | liwenjie |  |
| [ZOOKEEPER-3236](https://issues.apache.org/jira/browse/ZOOKEEPER-3236) | Upgrade BouncyCastle |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [ZOOKEEPER-2825](https://issues.apache.org/jira/browse/ZOOKEEPER-2825) | 1. Remove unnecessary import; 2. \`contains\` instead of \`indexOf \> -1\` for more readable; 3. Standardize \`StringBuilder#append\` usage for CLIENT module |  Minor | java client | Benedict Jin | Benedict Jin |
| [ZOOKEEPER-2826](https://issues.apache.org/jira/browse/ZOOKEEPER-2826) | Code refactoring for \`CLI\` module |  Minor | java client | Benedict Jin | Benedict Jin |
| [ZOOKEEPER-3273](https://issues.apache.org/jira/browse/ZOOKEEPER-3273) | Sync BouncyCastle version in Maven build and Ant  build |  Blocker | build | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3262](https://issues.apache.org/jira/browse/ZOOKEEPER-3262) | Update dependencies flagged by OWASP report |  Blocker | security | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3276](https://issues.apache.org/jira/browse/ZOOKEEPER-3276) | Make X509UtilTest.testCreateSSLServerSocketWithPort less flaky |  Trivial | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3272](https://issues.apache.org/jira/browse/ZOOKEEPER-3272) | Clean up netty4 code per Norman Maurer's review comments |  Minor | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3277](https://issues.apache.org/jira/browse/ZOOKEEPER-3277) | Add trace listener in NettyServerCnxnFactory only if trace logging is enabled |  Trivial | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3274](https://issues.apache.org/jira/browse/ZOOKEEPER-3274) | Use CompositeByteBuf to queue data in NettyServerCnxn |  Major | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3312](https://issues.apache.org/jira/browse/ZOOKEEPER-3312) | Upgrade Jetty to 9.4.15.v20190215 |  Major | security, server | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3369](https://issues.apache.org/jira/browse/ZOOKEEPER-3369) | Maven release artifacts cleanup |  Major | build | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3372](https://issues.apache.org/jira/browse/ZOOKEEPER-3372) | Cleanup pom.xml in order to let Maven clients import as few dependencies as possible |  Major | java client | Enrico Olivelli | Enrico Olivelli |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3041](https://issues.apache.org/jira/browse/ZOOKEEPER-3041) | Typo in error message, affects log analysis |  Trivial | . | Hugh O'Brien | Hugh O'Brien |
| [ZOOKEEPER-3050](https://issues.apache.org/jira/browse/ZOOKEEPER-3050) | owasp ant target is highlighting jetty version needs to be updated |  Blocker | server | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3051](https://issues.apache.org/jira/browse/ZOOKEEPER-3051) | owasp complaining about jackson version used |  Blocker | server | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-2993](https://issues.apache.org/jira/browse/ZOOKEEPER-2993) | .ignore file prevents adding src/java/main/org/apache/jute/compiler/generated dir to git repo |  Minor | build | jason wang | jason wang |
| [ZOOKEEPER-1919](https://issues.apache.org/jira/browse/ZOOKEEPER-1919) | Update the C implementation of removeWatches to have it match ZOOKEEPER-1910 |  Blocker | c client | Raúl Gutiérrez Segalés | Raúl Gutiérrez Segalés |
| [ZOOKEEPER-2317](https://issues.apache.org/jira/browse/ZOOKEEPER-2317) | Non-OSGi compatible version |  Blocker | build | Markus Tippmann | Sachin |
| [ZOOKEEPER-2920](https://issues.apache.org/jira/browse/ZOOKEEPER-2920) | Upgrade OWASP Dependency Check to 3.2.1 |  Major | build | Abraham Fine | Patrick D. Hunt |
| [ZOOKEEPER-3009](https://issues.apache.org/jira/browse/ZOOKEEPER-3009) | Potential NPE in NIOServerCnxnFactory |  Major | . | lujie | lujie |
| [ZOOKEEPER-2184](https://issues.apache.org/jira/browse/ZOOKEEPER-2184) | Zookeeper Client should re-resolve hosts when connection attempts fail |  Blocker | java client | Robert P. Thille | Andor Molnar |
| [ZOOKEEPER-3059](https://issues.apache.org/jira/browse/ZOOKEEPER-3059) | EventThread leak in case of Sasl AuthFailed |  Critical | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [ZOOKEEPER-3042](https://issues.apache.org/jira/browse/ZOOKEEPER-3042) | testFailedTxnAsPartOfQuorumLoss is flaky |  Minor | tests | Bogdan Kanivets | Bogdan Kanivets |
| [ZOOKEEPER-3093](https://issues.apache.org/jira/browse/ZOOKEEPER-3093) | sync zerror(int rc) with newest error definitions |  Trivial | c client | Kent R. Spillner | Kent R. Spillner |
| [ZOOKEEPER-2251](https://issues.apache.org/jira/browse/ZOOKEEPER-2251) | Add Client side packet response timeout to avoid infinite wait. |  Critical | java client | nijel | Mohammad Arshad |
| [ZOOKEEPER-3104](https://issues.apache.org/jira/browse/ZOOKEEPER-3104) | Potential data inconsistency due to NEWLEADER packet being sent too early during SNAP sync |  Critical | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-2913](https://issues.apache.org/jira/browse/ZOOKEEPER-2913) | testEphemeralNodeDeletion is flaky |  Major | tests | Patrick D. Hunt | maoling |
| [ZOOKEEPER-3127](https://issues.apache.org/jira/browse/ZOOKEEPER-3127) | Fixing potential data inconsistency due to update last processed zxid with partial multi-op txn |  Critical | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-3131](https://issues.apache.org/jira/browse/ZOOKEEPER-3131) | org.apache.zookeeper.server.WatchManager resource leak |  Major | server | ChaoWang | Fangmin Lv |
| [ZOOKEEPER-1990](https://issues.apache.org/jira/browse/ZOOKEEPER-1990) | suspicious instantiation of java Random instances |  Critical | . | Patrick D. Hunt | Norbert Kalmár |
| [ZOOKEEPER-2261](https://issues.apache.org/jira/browse/ZOOKEEPER-2261) | When only secureClientPort is configured connections, configuration, connection\_stat\_reset, and stats admin commands throw NullPointerException |  Major | . | Mohammad Arshad | Andor Molnar |
| [ZOOKEEPER-1823](https://issues.apache.org/jira/browse/ZOOKEEPER-1823) | zkTxnLogToolkit -dump should support printing transaction data as a string |  Trivial | server | Raúl Gutiérrez Segalés | maoling |
| [ZOOKEEPER-3165](https://issues.apache.org/jira/browse/ZOOKEEPER-3165) | Java 9: X509UtilTest.testCreateSSLContextWithoutTrustStorePassword fails |  Major | tests | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3113](https://issues.apache.org/jira/browse/ZOOKEEPER-3113) | EphemeralType.get() fails to verify ephemeralOwner when currentElapsedTime() is small enough |  Critical | server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3156](https://issues.apache.org/jira/browse/ZOOKEEPER-3156) | ZOOKEEPER-2184 causes kerberos principal to not have resolved host name |  Blocker | java client | Robert Joseph Evans | Robert Joseph Evans |
| [ZOOKEEPER-3125](https://issues.apache.org/jira/browse/ZOOKEEPER-3125) | Pzxid inconsistent issue when replaying a txn for a deleted node |  Blocker | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-3162](https://issues.apache.org/jira/browse/ZOOKEEPER-3162) | Broken lock semantics in C client lock-recipe |  Major | c client | Andrea Reale | Andrea Reale |
| [ZOOKEEPER-2822](https://issues.apache.org/jira/browse/ZOOKEEPER-2822) | Wrong \`ObjectName\` about \`MBeanServer\` in JMX module |  Minor | jmx | Benedict Jin | Benedict Jin |
| [ZOOKEEPER-2778](https://issues.apache.org/jira/browse/ZOOKEEPER-2778) | Potential server deadlock between follower sync with leader and follower receiving external connection requests. |  Blocker | quorum | Michael Han | Michael K. Edwards |
| [ZOOKEEPER-1636](https://issues.apache.org/jira/browse/ZOOKEEPER-1636) | c-client crash when zoo\_amulti failed |  Critical | c client | Thawan Kooburat | Michael K. Edwards |
| [ZOOKEEPER-1818](https://issues.apache.org/jira/browse/ZOOKEEPER-1818) | Correctly handle potential inconsistent zxid/electionEpoch and peerEpoch during leader election |  Blocker | . | Flavio Paiva Junqueira | Fangmin Lv |
| [ZOOKEEPER-3217](https://issues.apache.org/jira/browse/ZOOKEEPER-3217) | owasp job flagging slf4j on trunk |  Critical | . | Patrick D. Hunt | Enrico Olivelli |
| [ZOOKEEPER-3210](https://issues.apache.org/jira/browse/ZOOKEEPER-3210) | Typo in zookeeperInternals doc |  Trivial | . | Stanislav Knot |  |
| [ZOOKEEPER-3265](https://issues.apache.org/jira/browse/ZOOKEEPER-3265) | Build failure on branch-3.4 |  Major | build | Zsombor Gegesy | Zsombor Gegesy |
| [ZOOKEEPER-1392](https://issues.apache.org/jira/browse/ZOOKEEPER-1392) | Should not allow to read ACL when not authorized to read node |  Major | server | Thomas Weise | Bruce Gao |
| [ZOOKEEPER-2284](https://issues.apache.org/jira/browse/ZOOKEEPER-2284) | LogFormatter and SnapshotFormatter does not handle FileNotFoundException gracefully |  Minor | . | Mohammad Arshad | maoling |
| [ZOOKEEPER-3034](https://issues.apache.org/jira/browse/ZOOKEEPER-3034) | Facing issues while building from source |  Minor | build | Namrata Bhave | Balazs Meszaros |
| [ZOOKEEPER-3253](https://issues.apache.org/jira/browse/ZOOKEEPER-3253) | client should not send requests with cxid=-4, -2, or -1 |  Minor | java client | Samuel Just | Samuel Just |
| [ZOOKEEPER-2474](https://issues.apache.org/jira/browse/ZOOKEEPER-2474) | add a way for client to reattach to a session when using ZKClientConfig |  Major | java client | Timothy James Ward | maoling |
| [ZOOKEEPER-2621](https://issues.apache.org/jira/browse/ZOOKEEPER-2621) | ZooKeeper doesn't start on MINGW32 (Windows) |  Major | scripts | Amichai Rothman | Amichai Rothman |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2955](https://issues.apache.org/jira/browse/ZOOKEEPER-2955) | Enable Clover code coverage report |  Major | tests | Mark Fenes | Mark Fenes |
| [ZOOKEEPER-2968](https://issues.apache.org/jira/browse/ZOOKEEPER-2968) | Add C client code coverage tests |  Major | tests | Mark Fenes | Mark Fenes |
| [ZOOKEEPER-3074](https://issues.apache.org/jira/browse/ZOOKEEPER-3074) | Flaky test:org.apache.zookeeper.server.ServerStatsTest.testLatencyMetrics |  Minor | tests | maoling | maoling |
| [ZOOKEEPER-1441](https://issues.apache.org/jira/browse/ZOOKEEPER-1441) | Some test cases are failing because Port bind issue. |  Major | server, tests | kavita sharma | Andor Molnar |
| [ZOOKEEPER-3204](https://issues.apache.org/jira/browse/ZOOKEEPER-3204) | Reconfig tests are constantly failing on 3.5 after applying Java 11 fix |  Blocker | tests | Andor Molnar | Andor Molnar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3022](https://issues.apache.org/jira/browse/ZOOKEEPER-3022) | Step 1.1 - Create docs and it maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-2940](https://issues.apache.org/jira/browse/ZOOKEEPER-2940) | Deal with maxbuffer as it relates to large requests from clients |  Major | jute, server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3030](https://issues.apache.org/jira/browse/ZOOKEEPER-3030) | Step 1.3 - Create zk-contrib maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3033](https://issues.apache.org/jira/browse/ZOOKEEPER-3033) | Step 1.2 - Create zk-recipes maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3031](https://issues.apache.org/jira/browse/ZOOKEEPER-3031) | Step 1.4 - Create zk-client maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3080](https://issues.apache.org/jira/browse/ZOOKEEPER-3080) | Step 1.5 - Separate jute structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3153](https://issues.apache.org/jira/browse/ZOOKEEPER-3153) | Create MarkDown files and build process for them |  Major | documentation | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3154](https://issues.apache.org/jira/browse/ZOOKEEPER-3154) | Update release process to use the MarkDown solution |  Major | . | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-236](https://issues.apache.org/jira/browse/ZOOKEEPER-236) | SSL Support for Atomic Broadcast protocol |  Major | quorum, security, server | Benjamin Reed | Andor Molnar |
| [ZOOKEEPER-3032](https://issues.apache.org/jira/browse/ZOOKEEPER-3032) | Step 1.6 - Create zk-server maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3173](https://issues.apache.org/jira/browse/ZOOKEEPER-3173) | Quorum TLS - support PEM trust/key stores |  Major | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3175](https://issues.apache.org/jira/browse/ZOOKEEPER-3175) | Quorum TLS - test improvements |  Major | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3155](https://issues.apache.org/jira/browse/ZOOKEEPER-3155) | Remove Forrest XMLs and their build process from the project |  Blocker | . | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3193](https://issues.apache.org/jira/browse/ZOOKEEPER-3193) | Flaky: org.apache.zookeeper.test.SaslAuthFailNotifyTest |  Major | tests | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3172](https://issues.apache.org/jira/browse/ZOOKEEPER-3172) | Quorum TLS - fix port unification to allow rolling upgrades |  Major | security, server | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3194](https://issues.apache.org/jira/browse/ZOOKEEPER-3194) | Quorum TLS - fix copy/paste bug in ZKTrustManager |  Minor | security | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3174](https://issues.apache.org/jira/browse/ZOOKEEPER-3174) | Quorum TLS - support reloading trust/key store |  Major | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3222](https://issues.apache.org/jira/browse/ZOOKEEPER-3222) | Flaky: multiple intermittent segfaults in C++ tests |  Major | c client | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3029](https://issues.apache.org/jira/browse/ZOOKEEPER-3029) | Create pom files for jute, server and client |  Blocker | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3225](https://issues.apache.org/jira/browse/ZOOKEEPER-3225) | Create code coverage analysis with maven build |  Blocker | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3226](https://issues.apache.org/jira/browse/ZOOKEEPER-3226) | Activate C Client with a profile, disabled by default |  Major | build, c client | Enrico Olivelli | Norbert Kalmár |
| [ZOOKEEPER-3171](https://issues.apache.org/jira/browse/ZOOKEEPER-3171) | Create pom.xml for recipes and contrib |  Blocker | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3202](https://issues.apache.org/jira/browse/ZOOKEEPER-3202) | Flaky test: org.apache.zookeeper.test.ClientSSLTest.testClientServerSSL |  Major | . | Michael K. Edwards | Michael K. Edwards |
| [ZOOKEEPER-3223](https://issues.apache.org/jira/browse/ZOOKEEPER-3223) | Configure Spotbugs |  Blocker | build, scripts | Norbert Kalmár | Enrico Olivelli |
| [ZOOKEEPER-3176](https://issues.apache.org/jira/browse/ZOOKEEPER-3176) | Quorum TLS - add SSL config options |  Major | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3229](https://issues.apache.org/jira/browse/ZOOKEEPER-3229) | [TLS] add AES-256 ciphers to default cipher list |  Minor | . | Ilya Maykov | Ilya Maykov |
| [ZOOKEEPER-3256](https://issues.apache.org/jira/browse/ZOOKEEPER-3256) | Enable OWASP checks  to Maven build |  Major | security | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3275](https://issues.apache.org/jira/browse/ZOOKEEPER-3275) | Fix release targets: package, tar, mvn-deploy |  Major | build | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3028](https://issues.apache.org/jira/browse/ZOOKEEPER-3028) | Create assembly in pom.xml |  Blocker | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3285](https://issues.apache.org/jira/browse/ZOOKEEPER-3285) | Move assembly into its own sub-module |  Blocker | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3224](https://issues.apache.org/jira/browse/ZOOKEEPER-3224) | CI integration with maven |  Blocker | build, scripts | Norbert Kalmár | Enrico Olivelli |
| [ZOOKEEPER-2750](https://issues.apache.org/jira/browse/ZOOKEEPER-2750) | Document SSL Support for Atomic Broadcast protocol |  Major | . | Abraham Fine | Andor Molnar |
| [ZOOKEEPER-3046](https://issues.apache.org/jira/browse/ZOOKEEPER-3046) | testManyChildWatchersAutoReset is flaky |  Minor | tests | Bogdan Kanivets | Bogdan Kanivets |
| [ZOOKEEPER-2168](https://issues.apache.org/jira/browse/ZOOKEEPER-2168) | Add C APIs for new createContainer Methods |  Major | c client | Jordan Zimmerman | Balazs Meszaros |
| [ZOOKEEPER-3375](https://issues.apache.org/jira/browse/ZOOKEEPER-3375) | Docs enhancements for 3.5 release |  Major | documentation | Andor Molnar | Andor Molnar |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3062](https://issues.apache.org/jira/browse/ZOOKEEPER-3062) | introduce fsync.warningthresholdms constant for FileTxnLog LOG.warn message |  Minor | . | Christine Poerschke | Christine Poerschke |
| [ZOOKEEPER-3120](https://issues.apache.org/jira/browse/ZOOKEEPER-3120) | add NetBeans nbproject directory to .gitignore |  Minor | . | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-925](https://issues.apache.org/jira/browse/ZOOKEEPER-925) | Consider maven site generation to replace our forrest site and documentation generation |  Major | documentation | Patrick D. Hunt | Tamas Penzes |
| [ZOOKEEPER-3230](https://issues.apache.org/jira/browse/ZOOKEEPER-3230) | Add Apache NetBeans Maven project files to .gitignore |  Major | other | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3197](https://issues.apache.org/jira/browse/ZOOKEEPER-3197) | Improve documentation in ZooKeeperServer.superSecret |  Trivial | . | Colm O hEigeartaigh |  |
| [ZOOKEEPER-3254](https://issues.apache.org/jira/browse/ZOOKEEPER-3254) | Drop 'beta' qualifier from Branch 3.5 |  Major | build | Enrico Olivelli | Enrico Olivelli |


