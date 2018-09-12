
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

## Release 3.4.6 - 2014-03-10

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1459](https://issues.apache.org/jira/browse/ZOOKEEPER-1459) | Standalone ZooKeeperServer is not closing the transaction log files on shutdown |  Major | server | Rakesh R | Rakesh R |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1564](https://issues.apache.org/jira/browse/ZOOKEEPER-1564) | Allow JUnit test build with IBM Java |  Major | tests | Paulo Ricardo Paz Vital | Paulo Ricardo Paz Vital |
| [ZOOKEEPER-1598](https://issues.apache.org/jira/browse/ZOOKEEPER-1598) | Ability to support more digits in the version string |  Major | build | Raja Aluri | Raja Aluri |
| [ZOOKEEPER-1583](https://issues.apache.org/jira/browse/ZOOKEEPER-1583) | Document maxClientCnxns in conf/zoo\_sample.cfg |  Critical | documentation | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-1584](https://issues.apache.org/jira/browse/ZOOKEEPER-1584) | Adding mvn-install target for deploying the zookeeper artifacts to .m2 repository. |  Minor | build | Ashish Singh | Ashish Singh |
| [ZOOKEEPER-1615](https://issues.apache.org/jira/browse/ZOOKEEPER-1615) | minor typos in ZooKeeper Programmer's Guide web page |  Trivial | documentation | Evan Zacks | Evan Zacks |
| [ZOOKEEPER-1324](https://issues.apache.org/jira/browse/ZOOKEEPER-1324) | Remove Duplicate NEWLEADER packets from the Leader to the Follower. |  Critical | quorum | Mahadev konar | Flavio Junqueira |
| [ZOOKEEPER-1096](https://issues.apache.org/jira/browse/ZOOKEEPER-1096) | Leader communication should listen on specified IP, not wildcard address |  Minor | server | Jared Cantwell | Germán Blanco |
| [ZOOKEEPER-1758](https://issues.apache.org/jira/browse/ZOOKEEPER-1758) | Add documentation for zookeeper.observer.syncEnabled flag |  Minor | . | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-1552](https://issues.apache.org/jira/browse/ZOOKEEPER-1552) | Enable sync request processor in Observer |  Major | quorum, server | Thawan Kooburat | Flavio Junqueira |
| [ZOOKEEPER-1771](https://issues.apache.org/jira/browse/ZOOKEEPER-1771) | ZooInspector authentication |  Minor | contrib | Benjamin Jaton | Benjamin Jaton |
| [ZOOKEEPER-1627](https://issues.apache.org/jira/browse/ZOOKEEPER-1627) | Add org.apache.zookeeper.common to exported packages in OSGi MANIFEST headers |  Major | . | Arnoud Glimmerveen | Arnoud Glimmerveen |
| [ZOOKEEPER-1666](https://issues.apache.org/jira/browse/ZOOKEEPER-1666) | Avoid Reverse DNS lookup if the hostname in connection string is literal IP address. |  Major | java client | George Cao | George Cao |
| [ZOOKEEPER-1019](https://issues.apache.org/jira/browse/ZOOKEEPER-1019) | zkfuse doesn't list dependency on boost in README |  Major | contrib | Karel Vervaeke | Raul Gutierrez Segales |
| [ZOOKEEPER-1715](https://issues.apache.org/jira/browse/ZOOKEEPER-1715) | Upgrade netty version |  Major | . | Sean Bridges | Sean Bridges |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1474](https://issues.apache.org/jira/browse/ZOOKEEPER-1474) | Cannot build Zookeeper with IBM Java: use of Sun MXBean classes |  Major | build | Adalberto Medeiros | Paulo Ricardo Paz Vital |
| [ZOOKEEPER-1596](https://issues.apache.org/jira/browse/ZOOKEEPER-1596) | Zab1\_0Test should ensure that the file is closed |  Major | . | Enis Soztutar | Enis Soztutar |
| [ZOOKEEPER-1513](https://issues.apache.org/jira/browse/ZOOKEEPER-1513) | "Unreasonable length" exception while starting a server. |  Major | server | Patrick Hunt | Skye Wanderman-Milne |
| [ZOOKEEPER-1581](https://issues.apache.org/jira/browse/ZOOKEEPER-1581) | change copyright in notice to 2012 |  Major | build | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-753](https://issues.apache.org/jira/browse/ZOOKEEPER-753) | update log4j dependency from 1.2.15 to 1.2.16 in branch 3.4 |  Major | . | Karthik K | Sean Busbey |
| [ZOOKEEPER-1553](https://issues.apache.org/jira/browse/ZOOKEEPER-1553) | Findbugs configuration is missing some dependencies |  Minor | build | Sean Busbey | Sean Busbey |
| [ZOOKEEPER-1478](https://issues.apache.org/jira/browse/ZOOKEEPER-1478) | Small bug in QuorumTest.testFollowersStartAfterLeader( ) |  Minor | tests | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1387](https://issues.apache.org/jira/browse/ZOOKEEPER-1387) | Wrong epoch file created |  Minor | quorum | Benjamin Busjaeger | Benjamin Reed |
| [ZOOKEEPER-1578](https://issues.apache.org/jira/browse/ZOOKEEPER-1578) | org.apache.zookeeper.server.quorum.Zab1\_0Test failed due to hard code with 33556 port |  Major | . | Li Ping Zhang | Li Ping Zhang |
| [ZOOKEEPER-1334](https://issues.apache.org/jira/browse/ZOOKEEPER-1334) | Zookeeper 3.4.x is not OSGi compliant - MANIFEST.MF is flawed |  Major | . | Claus Ibsen | Claus Ibsen |
| [ZOOKEEPER-1535](https://issues.apache.org/jira/browse/ZOOKEEPER-1535) | ZK Shell/Cli re-executes last command on exit |  Major | scripts | Stu Hood | Edward Ribeiro |
| [ZOOKEEPER-1495](https://issues.apache.org/jira/browse/ZOOKEEPER-1495) | ZK client hangs when using a function not available on the server. |  Minor | server | Nicolas Liochon | Nicolas Liochon |
| [ZOOKEEPER-1613](https://issues.apache.org/jira/browse/ZOOKEEPER-1613) | The documentation still points to 2008 in the copyright notice |  Trivial | documentation | Edward Ribeiro | Edward Ribeiro |
| [ZOOKEEPER-1562](https://issues.apache.org/jira/browse/ZOOKEEPER-1562) | Memory leaks in zoo\_multi API |  Trivial | c client | Deepak Jagtap | Deepak Jagtap |
| [ZOOKEEPER-1645](https://issues.apache.org/jira/browse/ZOOKEEPER-1645) | ZooKeeper OSGi package imports not complete |  Major | . | Arnoud Glimmerveen | Arnoud Glimmerveen |
| [ZOOKEEPER-1648](https://issues.apache.org/jira/browse/ZOOKEEPER-1648) | Fix WatcherTest in JDK7 |  Minor | tests | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-1606](https://issues.apache.org/jira/browse/ZOOKEEPER-1606) | intermittent failures in ZkDatabaseCorruptionTest on jenkins |  Major | tests | Patrick Hunt | lixiaofeng |
| [ZOOKEEPER-1647](https://issues.apache.org/jira/browse/ZOOKEEPER-1647) | OSGi package import/export changes not applied to bin-jar |  Major | . | Arnoud Glimmerveen | Arnoud Glimmerveen |
| [ZOOKEEPER-1633](https://issues.apache.org/jira/browse/ZOOKEEPER-1633) | Introduce a protocol version to connection initiation message |  Major | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1697](https://issues.apache.org/jira/browse/ZOOKEEPER-1697) | large snapshots can cause continuous quorum failure |  Critical | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1706](https://issues.apache.org/jira/browse/ZOOKEEPER-1706) | Typo in Double Barriers example |  Minor | documentation | Jingguo Yao | Jingguo Yao |
| [ZOOKEEPER-1642](https://issues.apache.org/jira/browse/ZOOKEEPER-1642) | Leader loading database twice |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1663](https://issues.apache.org/jira/browse/ZOOKEEPER-1663) | scripts don't work when path contains spaces |  Minor | scripts | Amichai Rothman | Amichai Rothman |
| [ZOOKEEPER-1714](https://issues.apache.org/jira/browse/ZOOKEEPER-1714) | perl client segfaults if ZOO\_READ\_ACL\_UNSAFE constant is used |  Minor | contrib-bindings | Botond Hejj | Botond Hejj |
| [ZOOKEEPER-1719](https://issues.apache.org/jira/browse/ZOOKEEPER-1719) | zkCli.sh, zkServer.sh and zkEnv.sh regression caused by ZOOKEEPER-1663 |  Major | . | Marshall McMullen | Marshall McMullen |
| [ZOOKEEPER-1702](https://issues.apache.org/jira/browse/ZOOKEEPER-1702) | ZooKeeper client may write operation packets before receiving successful response to connection request, can cause TCP RST |  Major | java client | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-1629](https://issues.apache.org/jira/browse/ZOOKEEPER-1629) | testTransactionLogCorruption occasionally fails |  Major | tests | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1731](https://issues.apache.org/jira/browse/ZOOKEEPER-1731) | Unsynchronized access to ServerCnxnFactory.connectionBeans results in deadlock |  Critical | . | Dave Latham | Dave Latham |
| [ZOOKEEPER-1713](https://issues.apache.org/jira/browse/ZOOKEEPER-1713) | wrong time calculation in zkfuse.cc |  Trivial | . | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1379](https://issues.apache.org/jira/browse/ZOOKEEPER-1379) | 'printwatches, redo, history and connect '. client commands always print usage. This is not necessary |  Minor | java client | kavita sharma | Edward Ribeiro |
| [ZOOKEEPER-1448](https://issues.apache.org/jira/browse/ZOOKEEPER-1448) | Node+Quota creation in transaction log can crash leader startup |  Critical | server | Botond Hejj | Flavio Junqueira |
| [ZOOKEEPER-1754](https://issues.apache.org/jira/browse/ZOOKEEPER-1754) | Read-only server allows to create znode |  Critical | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1751](https://issues.apache.org/jira/browse/ZOOKEEPER-1751) | ClientCnxn#run could miss the second ping or connection get dropped before a ping |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [ZOOKEEPER-1657](https://issues.apache.org/jira/browse/ZOOKEEPER-1657) | Increased CPU usage by unnecessary SASL checks |  Major | java client | Gunnar Wagenknecht | Philip K. Warren |
| [ZOOKEEPER-1753](https://issues.apache.org/jira/browse/ZOOKEEPER-1753) | ClientCnxn is not properly releasing the resources, which are used to ping RwServer |  Major | java client | Rakesh R | Rakesh R |
| [ZOOKEEPER-87](https://issues.apache.org/jira/browse/ZOOKEEPER-87) | Follower does not shut itself down if its too far behind the leader. |  Critical | quorum | Mahadev konar | Germán Blanco |
| [ZOOKEEPER-1603](https://issues.apache.org/jira/browse/ZOOKEEPER-1603) | StaticHostProviderTest testUpdateClientMigrateOrNot hangs |  Blocker | tests | Patrick Hunt | Flavio Junqueira |
| [ZOOKEEPER-1696](https://issues.apache.org/jira/browse/ZOOKEEPER-1696) | Fail to run zookeeper client on Weblogic application server |  Critical | java client | Dmitry Konstantinov | Jeffrey Zhong |
| [ZOOKEEPER-1770](https://issues.apache.org/jira/browse/ZOOKEEPER-1770) | NullPointerException in SnapshotFormatter |  Minor | . | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1765](https://issues.apache.org/jira/browse/ZOOKEEPER-1765) | Update code conventions link on "How to contribute" page |  Trivial | documentation | Flavio Junqueira | Patrick Hunt |
| [ZOOKEEPER-1462](https://issues.apache.org/jira/browse/ZOOKEEPER-1462) | Read-only server does not initialize database properly |  Critical | server | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-732](https://issues.apache.org/jira/browse/ZOOKEEPER-732) | Improper translation of error into Python exception |  Minor | contrib-bindings | Gustavo Niemeyer | Lei Zhang |
| [ZOOKEEPER-1750](https://issues.apache.org/jira/browse/ZOOKEEPER-1750) | Race condition producing NPE in NIOServerCnxn.toString |  Minor | server | Helen Hastings | Rakesh R |
| [ZOOKEEPER-1781](https://issues.apache.org/jira/browse/ZOOKEEPER-1781) | ZooKeeper Server fails if snapCount is set to 1 |  Minor | quorum | Takashi Ohnishi | Takashi Ohnishi |
| [ZOOKEEPER-1774](https://issues.apache.org/jira/browse/ZOOKEEPER-1774) | QuorumPeerMainTest fails consistently with "complains about host" assertion failure |  Blocker | quorum, tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-877](https://issues.apache.org/jira/browse/ZOOKEEPER-877) | zkpython does not work with python3.1 |  Major | contrib-bindings | TuxRacer | Daniel Enman |
| [ZOOKEEPER-1551](https://issues.apache.org/jira/browse/ZOOKEEPER-1551) | Observers ignore txns that come after snapshot and UPTODATE |  Blocker | quorum, server | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-1624](https://issues.apache.org/jira/browse/ZOOKEEPER-1624) | PrepRequestProcessor abort multi-operation incorrectly |  Critical | server | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-1610](https://issues.apache.org/jira/browse/ZOOKEEPER-1610) | Some classes are using == or != to compare Long/String objects instead of .equals() |  Critical | java client, quorum | Edward Ribeiro | Edward Ribeiro |
| [ZOOKEEPER-1646](https://issues.apache.org/jira/browse/ZOOKEEPER-1646) | mt c client tests fail on Ubuntu Raring |  Blocker | c client, tests | James Page | Patrick Hunt |
| [ZOOKEEPER-1667](https://issues.apache.org/jira/browse/ZOOKEEPER-1667) | Watch event isn't handled correctly when a client reestablish to a server |  Blocker | server | Jacky007 | Flavio Junqueira |
| [ZOOKEEPER-1799](https://issues.apache.org/jira/browse/ZOOKEEPER-1799) | SaslAuthFailDesignatedClientTest.testAuth fails frequently on SUSE |  Minor | tests | Jeffrey Zhong | Jeffrey Zhong |
| [ZOOKEEPER-1557](https://issues.apache.org/jira/browse/ZOOKEEPER-1557) | jenkins jdk7 test failure in testBadSaslAuthNotifiesWatch |  Major | server, tests | Patrick Hunt | Eugene Koontz |
| [ZOOKEEPER-1744](https://issues.apache.org/jira/browse/ZOOKEEPER-1744) | clientPortAddress breaks "zkServer.sh status" |  Critical | scripts | Nick Ohanian | Nick Ohanian |
| [ZOOKEEPER-1732](https://issues.apache.org/jira/browse/ZOOKEEPER-1732) | ZooKeeper server unable to join established ensemble |  Blocker | leaderElection | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1554](https://issues.apache.org/jira/browse/ZOOKEEPER-1554) | Can't use zookeeper client without SASL |  Blocker | . | Guillaume Nodet |  |
| [ZOOKEEPER-1812](https://issues.apache.org/jira/browse/ZOOKEEPER-1812) | ZooInspector reconnection always fails if first connection fails |  Minor | contrib | Benjamin Jaton | Benjamin Jaton |
| [ZOOKEEPER-1798](https://issues.apache.org/jira/browse/ZOOKEEPER-1798) | Fix race condition in testNormalObserverRun |  Blocker | . | Flavio Junqueira | Thawan Kooburat |
| [ZOOKEEPER-1786](https://issues.apache.org/jira/browse/ZOOKEEPER-1786) | ZooKeeper data model documentation is incorrect |  Minor | documentation | Niraj Tolia | Niraj Tolia |
| [ZOOKEEPER-1597](https://issues.apache.org/jira/browse/ZOOKEEPER-1597) | Windows build failing |  Major | build, c client | Alexander Shraer | Michi Mutsuzaki |
| [ZOOKEEPER-1653](https://issues.apache.org/jira/browse/ZOOKEEPER-1653) | zookeeper fails to start because of inconsistent epoch |  Blocker | quorum | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1821](https://issues.apache.org/jira/browse/ZOOKEEPER-1821) | very ugly warning when compiling load\_gen.c |  Major | c client | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1632](https://issues.apache.org/jira/browse/ZOOKEEPER-1632) | fix memory leaks in cli\_st |  Minor | c client | Colin P. McCabe | Flavio Junqueira |
| [ZOOKEEPER-1382](https://issues.apache.org/jira/browse/ZOOKEEPER-1382) | Zookeeper server holds onto dead/expired session ids in the watch data structures |  Critical | server | Neha Narkhede | Germán Blanco |
| [ZOOKEEPER-1839](https://issues.apache.org/jira/browse/ZOOKEEPER-1839) | Deadlock in NettyServerCnxn |  Critical | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1622](https://issues.apache.org/jira/browse/ZOOKEEPER-1622) | session ids will be negative in the year 2022 |  Trivial | . | Eric Newton | Eric Newton |
| [ZOOKEEPER-1756](https://issues.apache.org/jira/browse/ZOOKEEPER-1756) | zookeeper\_interest() in C client can return a timeval of 0 |  Major | c client | Eric Lindvall | Eric Lindvall |
| [ZOOKEEPER-1388](https://issues.apache.org/jira/browse/ZOOKEEPER-1388) | Client side 'PathValidation' is missing for the multi-transaction api. |  Major | java client | Rakesh R | Rakesh R |
| [ZOOKEEPER-1733](https://issues.apache.org/jira/browse/ZOOKEEPER-1733) | FLETest#testLE is flaky on windows boxes |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [ZOOKEEPER-1057](https://issues.apache.org/jira/browse/ZOOKEEPER-1057) | zookeeper c-client, connection to offline server fails to successfully fallback to second zk host |  Blocker | c client | Woody Anderson | Michi Mutsuzaki |
| [ZOOKEEPER-1238](https://issues.apache.org/jira/browse/ZOOKEEPER-1238) | when the linger time was changed for NIO the patch missed Netty |  Major | server | Patrick Hunt | Skye Wanderman-Milne |
| [ZOOKEEPER-1573](https://issues.apache.org/jira/browse/ZOOKEEPER-1573) | Unable to load database due to missing parent node |  Critical | server | Thawan Kooburat | Vinayakumar B |
| [ZOOKEEPER-1811](https://issues.apache.org/jira/browse/ZOOKEEPER-1811) | The ZooKeeperSaslClient service name principal is hardcoded to "zookeeper" |  Major | java client | Harsh J | Harsh J |
| [ZOOKEEPER-1179](https://issues.apache.org/jira/browse/ZOOKEEPER-1179) | NettyServerCnxn does not properly close socket on 4 letter word requests |  Critical | server | Camille Fournier | Rakesh R |
| [ZOOKEEPER-1844](https://issues.apache.org/jira/browse/ZOOKEEPER-1844) | TruncateTest fails on windows |  Critical | server | Michi Mutsuzaki | Rakesh R |
| [ZOOKEEPER-1755](https://issues.apache.org/jira/browse/ZOOKEEPER-1755) | Concurrent operations of four letter 'dump' ephemeral command and killSession causing NPE |  Major | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1805](https://issues.apache.org/jira/browse/ZOOKEEPER-1805) | "Don't care" value in ZooKeeper election breaks rolling upgrades |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1745](https://issues.apache.org/jira/browse/ZOOKEEPER-1745) | Wrong Import-Package in the META-INF/MANIFEST.MF of zookeeper 3.4.5 bundle |  Major | server | Xilai Dai | Jean-Baptiste Onofré |
| [ZOOKEEPER-805](https://issues.apache.org/jira/browse/ZOOKEEPER-805) | four letter words fail with latest ubuntu nc.openbsd |  Critical | documentation, server | Patrick Hunt |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1558](https://issues.apache.org/jira/browse/ZOOKEEPER-1558) | Leader should not snapshot uncommitted state |  Blocker | quorum | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1808](https://issues.apache.org/jira/browse/ZOOKEEPER-1808) | Add version to FLE notifications for 3.4 branch |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1817](https://issues.apache.org/jira/browse/ZOOKEEPER-1817) | Fix don't care for b3.4 |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1834](https://issues.apache.org/jira/browse/ZOOKEEPER-1834) | Catch IOException in FileTxnLog |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1841](https://issues.apache.org/jira/browse/ZOOKEEPER-1841) | problem in QuorumTest |  Major | tests | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1849](https://issues.apache.org/jira/browse/ZOOKEEPER-1849) | Need to properly tear down tests in various cases |  Blocker | tests | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1852](https://issues.apache.org/jira/browse/ZOOKEEPER-1852) | ServerCnxnFactory instance is not properly cleanedup |  Major | tests | Rakesh R | Rakesh R |
| [ZOOKEEPER-1414](https://issues.apache.org/jira/browse/ZOOKEEPER-1414) | QuorumPeerMainTest.testQuorum, testBadPackets are failing intermittently |  Minor | server, tests | Rakesh R | Rakesh R |
| [ZOOKEEPER-1857](https://issues.apache.org/jira/browse/ZOOKEEPER-1857) | PrepRequestProcessotTest doesn't shutdown ZooKeeper server |  Major | tests | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1837](https://issues.apache.org/jira/browse/ZOOKEEPER-1837) | Fix JMXEnv checks (potential race conditions) |  Major | tests | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1858](https://issues.apache.org/jira/browse/ZOOKEEPER-1858) | JMX checks - potential race conditions while stopping and starting server |  Major | . | Rakesh R | Rakesh R |
| [ZOOKEEPER-1867](https://issues.apache.org/jira/browse/ZOOKEEPER-1867) | Bug in ZkDatabaseCorruptionTest |  Major | tests | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1873](https://issues.apache.org/jira/browse/ZOOKEEPER-1873) | Unnecessarily InstanceNotFoundException is coming when unregister failed jmxbeans |  Major | server | Rakesh R | Rakesh R |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1430](https://issues.apache.org/jira/browse/ZOOKEEPER-1430) | add maven deploy support to the build |  Blocker | build | Patrick Hunt | Giridharan Kesavan |


