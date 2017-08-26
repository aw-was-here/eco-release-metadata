
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

## Release 3.6.0 - Unreleased (as of 2017-08-26)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-27](https://issues.apache.org/jira/browse/ZOOKEEPER-27) | Unique DB identifiers for servers and clients |  Major | c client, java client, server | Patrick Hunt |  |
| [ZOOKEEPER-1504](https://issues.apache.org/jira/browse/ZOOKEEPER-1504) | Multi-thread NIOServerCnxn |  Major | server | Jay Shrauner | Thawan Kooburat |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2163](https://issues.apache.org/jira/browse/ZOOKEEPER-2163) | Introduce new ZNode type: container |  Major | c client, java client, server | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-1962](https://issues.apache.org/jira/browse/ZOOKEEPER-1962) | Add a CLI command to recursively list a znode and children |  Minor | java client | Gautam Gopalakrishnan | Gautam Gopalakrishnan |
| [ZOOKEEPER-2169](https://issues.apache.org/jira/browse/ZOOKEEPER-2169) | Enable creation of nodes with TTLs |  Major | c client, java client, jute, server | Camille Fournier | Jordan Zimmerman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1994](https://issues.apache.org/jira/browse/ZOOKEEPER-1994) | Backup config files. |  Major | server | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1948](https://issues.apache.org/jira/browse/ZOOKEEPER-1948) | Enable JMX remote monitoring |  Major | server | Biju Nair | Biju Nair |
| [ZOOKEEPER-2079](https://issues.apache.org/jira/browse/ZOOKEEPER-2079) | Stop daemon with "kill" rather than "kill -9" |  Minor | scripts | Guillaume ALAUX | Guillaume ALAUX |
| [ZOOKEEPER-1963](https://issues.apache.org/jira/browse/ZOOKEEPER-1963) | Make JDK 7 the minimum requirement for Zookeeper |  Major | build | Edward Carter | Hongchao Deng |
| [ZOOKEEPER-2110](https://issues.apache.org/jira/browse/ZOOKEEPER-2110) | Typo fixes in the ZK documentation |  Minor | documentation | Jeffrey Schroeder | Jeffrey Schroeder |
| [ZOOKEEPER-2107](https://issues.apache.org/jira/browse/ZOOKEEPER-2107) | zookeeper client should support custom HostProviders |  Major | java client | Robert Kamphuis | Robert Kamphuis |
| [ZOOKEEPER-2149](https://issues.apache.org/jira/browse/ZOOKEEPER-2149) | Logging of client address when socket connection established |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2176](https://issues.apache.org/jira/browse/ZOOKEEPER-2176) | Unclear error message should be info not error |  Major | quorum | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2183](https://issues.apache.org/jira/browse/ZOOKEEPER-2183) | Concurrent Testing Processes and Port Assignments |  Major | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2126](https://issues.apache.org/jira/browse/ZOOKEEPER-2126) | Improve exit log messsage of EventThread and SendThread by adding SessionId |  Major | java client | zhihai xu | Surendra Singh Lilhore |
| [ZOOKEEPER-2191](https://issues.apache.org/jira/browse/ZOOKEEPER-2191) | Continue supporting prior Ant versions that don't implement the threads attribute for the JUnit task. |  Major | build | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2179](https://issues.apache.org/jira/browse/ZOOKEEPER-2179) | Typo in Watcher.java |  Trivial | server | Eunchan Kim | Archana T |
| [ZOOKEEPER-2098](https://issues.apache.org/jira/browse/ZOOKEEPER-2098) | QuorumCnxManager: use BufferedOutputStream for initial msg |  Major | quorum, server | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2194](https://issues.apache.org/jira/browse/ZOOKEEPER-2194) | Let DataNode.getChildren() return an unmodifiable view of its children set |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2205](https://issues.apache.org/jira/browse/ZOOKEEPER-2205) | Log type of unexpected quorum packet in learner handler loop |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2206](https://issues.apache.org/jira/browse/ZOOKEEPER-2206) | Add missing packet types to LearnerHandler.packetToString() |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2207](https://issues.apache.org/jira/browse/ZOOKEEPER-2207) | Enhance error logs with LearnerHandler.packetToString() |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2208](https://issues.apache.org/jira/browse/ZOOKEEPER-2208) | Log type of unexpected quorum packet in observer loop |  Trivial | server | Akihiro Suda | Hitoshi Mitake |
| [ZOOKEEPER-2214](https://issues.apache.org/jira/browse/ZOOKEEPER-2214) | Findbugs warning: LearnerHandler.packetToString Dead store to local variable |  Minor | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2185](https://issues.apache.org/jira/browse/ZOOKEEPER-2185) | Run server with -XX:+HeapDumpOnOutOfMemoryError and -XX:OnOutOfMemoryError='kill %p'. |  Minor | documentation, scripts | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2140](https://issues.apache.org/jira/browse/ZOOKEEPER-2140) | NettyServerCnxn and NIOServerCnxn code should be improved |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2223](https://issues.apache.org/jira/browse/ZOOKEEPER-2223) | support method-level JUnit testcase |  Minor | tests | Akihiro Suda | Akihiro Suda |
| [ZOOKEEPER-1423](https://issues.apache.org/jira/browse/ZOOKEEPER-1423) | 4lw and jmx should expose the size of the datadir/datalogdir |  Major | jmx | Patrick Hunt | Edward Ribeiro |
| [ZOOKEEPER-2270](https://issues.apache.org/jira/browse/ZOOKEEPER-2270) | Allow MBeanRegistry to be overridden for better unit tests |  Major | server | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-2040](https://issues.apache.org/jira/browse/ZOOKEEPER-2040) | Server to log underlying cause of SASL connection problems |  Major | server | Steve Loughran | Steve Loughran |
| [ZOOKEEPER-1506](https://issues.apache.org/jira/browse/ZOOKEEPER-1506) | Re-try DNS hostname -\> IP resolution if node connection fails |  Blocker | server | Mike Heffner | Robert P. Thille |
| [ZOOKEEPER-2315](https://issues.apache.org/jira/browse/ZOOKEEPER-2315) | Change client connect zk service timeout log level from Info to Warn level |  Minor | java client | Yiqun Lin | Yiqun Lin |
| [ZOOKEEPER-2326](https://issues.apache.org/jira/browse/ZOOKEEPER-2326) | Include connected server address:port in log |  Minor | java client | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2306](https://issues.apache.org/jira/browse/ZOOKEEPER-2306) | Remove file delete duplicate  code from test code |  Major | tests | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-1907](https://issues.apache.org/jira/browse/ZOOKEEPER-1907) | Improve Thread handling |  Major | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-2378](https://issues.apache.org/jira/browse/ZOOKEEPER-2378) | upgrade ivy to recent version |  Critical | build | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-2373](https://issues.apache.org/jira/browse/ZOOKEEPER-2373) | Licenses section missing from pom file |  Blocker | . | Flavio Junqueira | Patrick Hunt |
| [ZOOKEEPER-2087](https://issues.apache.org/jira/browse/ZOOKEEPER-2087) | Few UX improvements in ZooInspector |  Minor | contrib | Adam Dudczak | Adam Dudczak |
| [ZOOKEEPER-2392](https://issues.apache.org/jira/browse/ZOOKEEPER-2392) | Update netty to 3.7.1.Final |  Minor | build | Hendy Irawan | Hendy Irawan |
| [ZOOKEEPER-2240](https://issues.apache.org/jira/browse/ZOOKEEPER-2240) | Make the three-node minimum more explicit in documentation and on website |  Trivial | documentation | Shawn Heisey | Mohammad Arshad |
| [ZOOKEEPER-2139](https://issues.apache.org/jira/browse/ZOOKEEPER-2139) | Support multiple ZooKeeper client, with different configurations, in a single JVM |  Blocker | java client | Surendra Singh Lilhore | Mohammad Arshad |
| [ZOOKEEPER-2024](https://issues.apache.org/jira/browse/ZOOKEEPER-2024) | Major throughput improvement with mixed workloads |  Major | quorum, server | Kfir Lev-Ari | Kfir Lev-Ari |
| [ZOOKEEPER-2402](https://issues.apache.org/jira/browse/ZOOKEEPER-2402) | Document client side properties |  Major | documentation | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2410](https://issues.apache.org/jira/browse/ZOOKEEPER-2410) | add time unit to 'ELECTION TOOK' log.info message |  Trivial | leaderElection, quorum, server | Christine Poerschke | Christine Poerschke |
| [ZOOKEEPER-2433](https://issues.apache.org/jira/browse/ZOOKEEPER-2433) | ZooKeeperSaslServer: allow user principals in subject |  Major | security | Andy B | Andy B |
| [ZOOKEEPER-2505](https://issues.apache.org/jira/browse/ZOOKEEPER-2505) | Use shared library instead of static library in C client unit test |  Minor | c client | Michael Han | Michael Han |
| [ZOOKEEPER-2489](https://issues.apache.org/jira/browse/ZOOKEEPER-2489) | Upgrade Jetty dependency to a recent stable release version. |  Major | server | Michael Han | Edward Ribeiro |
| [ZOOKEEPER-2507](https://issues.apache.org/jira/browse/ZOOKEEPER-2507) | C unit test improvement: line break between 'ZooKeeper server started' and 'Running' |  Minor | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2557](https://issues.apache.org/jira/browse/ZOOKEEPER-2557) | Update gitignore to account for other file extensions |  Trivial | . | Edward Ribeiro | Edward Ribeiro |
| [ZOOKEEPER-2594](https://issues.apache.org/jira/browse/ZOOKEEPER-2594) | Use TLS for downloading artifacts during build |  Blocker | build | Olaf Flebbe | Olaf Flebbe |
| [ZOOKEEPER-1525](https://issues.apache.org/jira/browse/ZOOKEEPER-1525) | Plumb ZooKeeperServer object into auth plugins |  Major | . | Warren Turkal | Jordan Zimmerman |
| [ZOOKEEPER-2632](https://issues.apache.org/jira/browse/ZOOKEEPER-2632) | Add option to inform JIRA\_PASSWORD at CLI prompt |  Trivial | . | Edward Ribeiro | Edward Ribeiro |
| [ZOOKEEPER-2479](https://issues.apache.org/jira/browse/ZOOKEEPER-2479) | Add 'electionTimeTaken' value in LeaderMXBean and FollowerMXBean |  Major | quorum | Rakesh R | Rakesh R |
| [ZOOKEEPER-2655](https://issues.apache.org/jira/browse/ZOOKEEPER-2655) | Improve NIOServerCnxn#isZKServerRunning to reflect the semantics correctly |  Minor | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-2620](https://issues.apache.org/jira/browse/ZOOKEEPER-2620) | Add comments to testReadOnlySnapshotDir and testReadOnlyTxnLogDir indicating that the tests will fail when run as root |  Major | tests | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2511](https://issues.apache.org/jira/browse/ZOOKEEPER-2511) | Implement AutoCloseable in ZooKeeper.java |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-261](https://issues.apache.org/jira/browse/ZOOKEEPER-261) | Reinitialized servers should not participate in leader election |  Major | leaderElection, quorum | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-2682](https://issues.apache.org/jira/browse/ZOOKEEPER-2682) | Make it optional to fail build on test failure |  Minor | build, tests | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2672](https://issues.apache.org/jira/browse/ZOOKEEPER-2672) | Remove CHANGE.txt |  Major | build | Michael Han | Michael Han |
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
| [ZOOKEEPER-2008](https://issues.apache.org/jira/browse/ZOOKEEPER-2008) | System test fails due to missing leader election port |  Minor | contrib-fatjar | Kfir Lev-Ari | Kfir Lev-Ari |
| [ZOOKEEPER-2006](https://issues.apache.org/jira/browse/ZOOKEEPER-2006) | Standalone mode won't take client port from dynamic config |  Major | server | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2013](https://issues.apache.org/jira/browse/ZOOKEEPER-2013) | typos in zookeeperProgrammers |  Trivial | documentation | Tim Chambers | Tim Chambers |
| [ZOOKEEPER-2030](https://issues.apache.org/jira/browse/ZOOKEEPER-2030) | dynamicConfigFile should have an absolute path, not a relative path, to the dynamic configuration file |  Minor | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-2026](https://issues.apache.org/jira/browse/ZOOKEEPER-2026) | Startup order in ServerCnxnFactory-ies is wrong |  Minor | jmx, server | Stevo Slavic | Stevo Slavic |
| [ZOOKEEPER-2054](https://issues.apache.org/jira/browse/ZOOKEEPER-2054) | test-patch.sh: don't set ulimit -n |  Major | . | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1917](https://issues.apache.org/jira/browse/ZOOKEEPER-1917) | Apache Zookeeper logs cleartext admin passwords |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2058](https://issues.apache.org/jira/browse/ZOOKEEPER-2058) | rat: exclude \*.cer files |  Major | build | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-2049](https://issues.apache.org/jira/browse/ZOOKEEPER-2049) | Yosemite build failure: htonll conflict |  Major | . | Till Toenshoff | Till Toenshoff |
| [ZOOKEEPER-2052](https://issues.apache.org/jira/browse/ZOOKEEPER-2052) | Unable to delete a node when the node has no children |  Major | server | Yip Ng | Hongchao Deng |
| [ZOOKEEPER-2060](https://issues.apache.org/jira/browse/ZOOKEEPER-2060) | Trace bug in NettyServerCnxnFactory |  Major | server | Ian Dimayuga | Ian Dimayuga |
| [ZOOKEEPER-2064](https://issues.apache.org/jira/browse/ZOOKEEPER-2064) | Prevent resource leak in various classes |  Critical | . | Ted Yu | Ted Yu |
| [ZOOKEEPER-2072](https://issues.apache.org/jira/browse/ZOOKEEPER-2072) | Netty Server Should Configure Child Channel Pipeline By Specifying ChannelPipelineFactory |  Major | server | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2111](https://issues.apache.org/jira/browse/ZOOKEEPER-2111) | Not isAlive states should be synchronized in ClientCnxn |  Major | java client | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1366](https://issues.apache.org/jira/browse/ZOOKEEPER-1366) | Zookeeper should be tolerant of clock adjustments |  Critical | . | Ted Dunning | Hongchao Deng |
| [ZOOKEEPER-1949](https://issues.apache.org/jira/browse/ZOOKEEPER-1949) | recipes jar not included in the distribution package |  Major | recipes | Rakesh R | Rakesh R |
| [ZOOKEEPER-2114](https://issues.apache.org/jira/browse/ZOOKEEPER-2114) | jute generated allocate\_\* functions are not externally visible |  Major | c client | Tim Crowder | Tim Crowder |
| [ZOOKEEPER-2073](https://issues.apache.org/jira/browse/ZOOKEEPER-2073) | Memory leak on zookeeper\_close |  Critical | c client | Dave Gosselin | Dave Gosselin |
| [ZOOKEEPER-1952](https://issues.apache.org/jira/browse/ZOOKEEPER-1952) | Default log directory and file name can be changed |  Minor | . | nijel | nijel |
| [ZOOKEEPER-1893](https://issues.apache.org/jira/browse/ZOOKEEPER-1893) | automake: use serial-tests option |  Minor | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-2109](https://issues.apache.org/jira/browse/ZOOKEEPER-2109) | Typo in src/c/src/load\_gen.c |  Trivial | . | Emmanuel Bourg | Surendra Singh Lilhore |
| [ZOOKEEPER-2146](https://issues.apache.org/jira/browse/ZOOKEEPER-2146) | BinaryInputArchive readString should check length before allocating memory |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2056](https://issues.apache.org/jira/browse/ZOOKEEPER-2056) | Zookeeper 3.4.x and 3.5.0-alpha is not OSGi compliant |  Major | . | Keren Dong | Deiwin Sarjas |
| [ZOOKEEPER-2157](https://issues.apache.org/jira/browse/ZOOKEEPER-2157) | Upgrade option should be removed from zkServer.sh usage |  Minor | . | J.Andreina | J.Andreina |
| [ZOOKEEPER-2029](https://issues.apache.org/jira/browse/ZOOKEEPER-2029) | Leader.LearnerCnxAcceptor should handle exceptions in run() |  Minor | quorum | Asad Saeed | Rakesh R |
| [ZOOKEEPER-2173](https://issues.apache.org/jira/browse/ZOOKEEPER-2173) | ZK startup failure should be handled with proper error message |  Major | . | J.Andreina | J.Andreina |
| [ZOOKEEPER-2174](https://issues.apache.org/jira/browse/ZOOKEEPER-2174) | JUnit4ZKTestRunner logs test failure for all exceptions even if the test method is annotated with an expected exception. |  Minor | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2062](https://issues.apache.org/jira/browse/ZOOKEEPER-2062) | RemoveWatchesTest takes forever to run |  Major | tests | Flavio Junqueira | Chris Nauroth |
| [ZOOKEEPER-2171](https://issues.apache.org/jira/browse/ZOOKEEPER-2171) | avoid reverse lookups in QuorumCnxManager |  Major | quorum | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2182](https://issues.apache.org/jira/browse/ZOOKEEPER-2182) | Several test suites are not running during pre-commit, because their names do not end with "Test". |  Major | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2190](https://issues.apache.org/jira/browse/ZOOKEEPER-2190) | In StandaloneDisabledTest, testReconfig() shouldn't take leaving servers as joining servers |  Major | tests | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1077](https://issues.apache.org/jira/browse/ZOOKEEPER-1077) | C client lib doesn't build on Solaris |  Critical | build, c client | Tadeusz Andrzej Kadłubowski | Chris Nauroth |
| [ZOOKEEPER-2156](https://issues.apache.org/jira/browse/ZOOKEEPER-2156) | If JAVA\_HOME is not set zk startup and fetching status command execution result misleads user. |  Major | scripts | J.Andreina | J.Andreina |
| [ZOOKEEPER-2186](https://issues.apache.org/jira/browse/ZOOKEEPER-2186) | QuorumCnxManager#receiveConnection may crash with random input |  Major | server | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2124](https://issues.apache.org/jira/browse/ZOOKEEPER-2124) | Allow Zookeeper version string to have underscore '\_' |  Major | . | Jerry He | Chris Nauroth |
| [ZOOKEEPER-2187](https://issues.apache.org/jira/browse/ZOOKEEPER-2187) | remove duplicated code between CreateRequest{,2} |  Minor | c client, java client, server | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2198](https://issues.apache.org/jira/browse/ZOOKEEPER-2198) | Set default test.junit.threads to 1. |  Minor | build | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2178](https://issues.apache.org/jira/browse/ZOOKEEPER-2178) | Native client fails compilation on Windows. |  Major | c client | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2197](https://issues.apache.org/jira/browse/ZOOKEEPER-2197) | non-ascii character in FinalRequestProcessor.java |  Minor | . | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-2096](https://issues.apache.org/jira/browse/ZOOKEEPER-2096) | C client builds with incorrect error codes in VisualStudio 2010+ |  Major | build, c client | Vitaly Stakhovsky | Vitaly Stakhovsky |
| [ZOOKEEPER-2201](https://issues.apache.org/jira/browse/ZOOKEEPER-2201) | Network issues can cause cluster to hang due to near-deadlock |  Critical | . | Donny Nadolny | Donny Nadolny |
| [ZOOKEEPER-2213](https://issues.apache.org/jira/browse/ZOOKEEPER-2213) | Empty path in Set crashes server and prevents restart |  Blocker | server | Brian Brazil | Hongchao Deng |
| [ZOOKEEPER-706](https://issues.apache.org/jira/browse/ZOOKEEPER-706) | large numbers of watches can cause session re-establishment to fail |  Critical | c client, java client | Patrick Hunt | Chris Thunes |
| [ZOOKEEPER-2212](https://issues.apache.org/jira/browse/ZOOKEEPER-2212) | distributed race condition related to QV version |  Critical | quorum | Akihiro Suda | Akihiro Suda |
| [ZOOKEEPER-2210](https://issues.apache.org/jira/browse/ZOOKEEPER-2210) | clock\_gettime is not available in os x |  Major | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-2193](https://issues.apache.org/jira/browse/ZOOKEEPER-2193) | reconfig command completes even if parameter is wrong obviously |  Major | leaderElection, server | Yasuhito Fukuda | Yasuhito Fukuda |
| [ZOOKEEPER-2221](https://issues.apache.org/jira/browse/ZOOKEEPER-2221) | Zookeeper JettyAdminServer server should start on configured IP. |  Major | server | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [ZOOKEEPER-2224](https://issues.apache.org/jira/browse/ZOOKEEPER-2224) | Four letter command hangs when network is slow |  Minor | java client | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-1927](https://issues.apache.org/jira/browse/ZOOKEEPER-1927) | zkServer.sh fails to read dataDir (and others) from zoo.cfg on Solaris 10 (grep issue, manifests as FAILED TO WRITE PID). |  Major | scripts | Ed Schmed | Chris Nauroth |
| [ZOOKEEPER-2256](https://issues.apache.org/jira/browse/ZOOKEEPER-2256) | Zookeeper is not using specified JMX port in zkEnv.sh |  Minor | scripts | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2264](https://issues.apache.org/jira/browse/ZOOKEEPER-2264) | Wrong error message when secureClientPortAddress is configured but secureClientPort is not configured |  Minor | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2269](https://issues.apache.org/jira/browse/ZOOKEEPER-2269) | NullPointerException  in RemotePeerBean |  Major | jmx | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2245](https://issues.apache.org/jira/browse/ZOOKEEPER-2245) | SimpleSysTest test cases fails |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2279](https://issues.apache.org/jira/browse/ZOOKEEPER-2279) | QuorumPeer  loadDataBase() error message is incorrect |  Major | quorum | sunhaitao | Mohammad Arshad |
| [ZOOKEEPER-1803](https://issues.apache.org/jira/browse/ZOOKEEPER-1803) | Add description for pzxid in programmer's guide. |  Major | documentation | Leader Ni | Mohammad Arshad |
| [ZOOKEEPER-2244](https://issues.apache.org/jira/browse/ZOOKEEPER-2244) | On Windows zookeeper fails to restart |  Critical | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2239](https://issues.apache.org/jira/browse/ZOOKEEPER-2239) | JMX State from LocalPeerBean incorrect |  Major | jmx | Kevin Lee | Kevin Lee |
| [ZOOKEEPER-2302](https://issues.apache.org/jira/browse/ZOOKEEPER-2302) | Some test cases are not running because wrongly named |  Major | tests | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2142](https://issues.apache.org/jira/browse/ZOOKEEPER-2142) | JMX ObjectName is incorrect for observers |  Trivial | . | Karol Dudzinski | Edward Ribeiro |
| [ZOOKEEPER-1853](https://issues.apache.org/jira/browse/ZOOKEEPER-1853) | zkCli.sh can't issue a CREATE command containing spaces in the data |  Minor | java client | sekine coulibaly | Ryan Lamore |
| [ZOOKEEPER-2227](https://issues.apache.org/jira/browse/ZOOKEEPER-2227) | stmk four-letter word fails execution at server while reading trace mask argument. |  Major | server | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-1371](https://issues.apache.org/jira/browse/ZOOKEEPER-1371) | Remove dependency on log4j in the source code. |  Major | . | Mahadev konar | Mohammad Arshad |
| [ZOOKEEPER-2211](https://issues.apache.org/jira/browse/ZOOKEEPER-2211) | PurgeTxnLog does not correctly purge when snapshots and logs are at different locations |  Major | scripts | Wesley Chow | Mohammad Arshad |
| [ZOOKEEPER-2335](https://issues.apache.org/jira/browse/ZOOKEEPER-2335) | Java Compilation Error in ClientCnxn.java |  Major | java client, server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2311](https://issues.apache.org/jira/browse/ZOOKEEPER-2311) | assert in setup\_random |  Major | c client | Marshall McMullen | Marshall McMullen |
| [ZOOKEEPER-2299](https://issues.apache.org/jira/browse/ZOOKEEPER-2299) | NullPointerException in LocalPeerBean for ClientAddress |  Major | jmx | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2295](https://issues.apache.org/jira/browse/ZOOKEEPER-2295) | TGT refresh time logic is wrong |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2281](https://issues.apache.org/jira/browse/ZOOKEEPER-2281) | ZK Server startup fails if there are spaces in the JAVA\_HOME path |  Minor | scripts | neha | neha |
| [ZOOKEEPER-2340](https://issues.apache.org/jira/browse/ZOOKEEPER-2340) | JMX is disabled even if JMXDISABLE is false |  Minor | . | neha | Mohammad Arshad |
| [ZOOKEEPER-2229](https://issues.apache.org/jira/browse/ZOOKEEPER-2229) | Several four-letter words are undocumented. |  Major | documentation | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2252](https://issues.apache.org/jira/browse/ZOOKEEPER-2252) | Random test case failure in org.apache.zookeeper.test.StaticHostProviderTest |  Minor | . | Mohammad Arshad | Timothy Ward |
| [ZOOKEEPER-1029](https://issues.apache.org/jira/browse/ZOOKEEPER-1029) | C client bug in zookeeper\_init (if bad hostname is given) |  Blocker | c client | Dheeraj Agrawal | Flavio Junqueira |
| [ZOOKEEPER-2243](https://issues.apache.org/jira/browse/ZOOKEEPER-2243) | Supported platforms is completely out of date |  Major | . | Ivan Kelly | Chris Nauroth |
| [ZOOKEEPER-2375](https://issues.apache.org/jira/browse/ZOOKEEPER-2375) | Prevent multiple initialization of login object in each ZooKeeperSaslClient instance |  Blocker | java client | yuemeng | yuemeng |
| [ZOOKEEPER-1991](https://issues.apache.org/jira/browse/ZOOKEEPER-1991) | zkServer.sh returns with a zero exit status when a ZooKeeper process is already running |  Minor | scripts | Reed Wanderman-Milne | Biju Nair |
| [ZOOKEEPER-2294](https://issues.apache.org/jira/browse/ZOOKEEPER-2294) | Ant target generate-clover-reports is broken |  Major | build | Charlie Helin | Charlie Helin |
| [ZOOKEEPER-2379](https://issues.apache.org/jira/browse/ZOOKEEPER-2379) | recent commit broke findbugs qabot check |  Blocker | build | Patrick Hunt | Rakesh R |
| [ZOOKEEPER-2133](https://issues.apache.org/jira/browse/ZOOKEEPER-2133) | zkperl: Segmentation fault if getting a node with null value |  Major | contrib-bindings | Botond Hejj | Botond Hejj |
| [ZOOKEEPER-2283](https://issues.apache.org/jira/browse/ZOOKEEPER-2283) | traceFile property is not used in the ZooKeeper,  it should be removed from documentation |  Major | documentation | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2385](https://issues.apache.org/jira/browse/ZOOKEEPER-2385) | Zookeeper trunk build is failing on windows |  Blocker | build | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2388](https://issues.apache.org/jira/browse/ZOOKEEPER-2388) | Unit tests failing on Solaris |  Blocker | tests | Patrick Hunt | Mohammad Arshad |
| [ZOOKEEPER-2393](https://issues.apache.org/jira/browse/ZOOKEEPER-2393) | Revert run-time dependency on log4j and slf4j-log4j12 |  Blocker | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2195](https://issues.apache.org/jira/browse/ZOOKEEPER-2195) | fsync.warningthresholdms in zoo.cfg not working |  Trivial | quorum | David Fan | Biju Nair |
| [ZOOKEEPER-2364](https://issues.apache.org/jira/browse/ZOOKEEPER-2364) | "ant docs" fails on branch-3.5 due to missing releasenotes.xml. |  Blocker | build, documentation | Chris Nauroth | Patrick Hunt |
| [ZOOKEEPER-2413](https://issues.apache.org/jira/browse/ZOOKEEPER-2413) | ContainerManager doesn't close the Timer it creates when stop() is called |  Major | server | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-2235](https://issues.apache.org/jira/browse/ZOOKEEPER-2235) | License update |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2330](https://issues.apache.org/jira/browse/ZOOKEEPER-2330) | ZooKeeper close API does not close Login thread. |  Major | java client | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2405](https://issues.apache.org/jira/browse/ZOOKEEPER-2405) | getTGT() in Login.java mishandles confidential information |  Blocker | kerberos, security, server | Patrick Hunt | Michael Han |
| [ZOOKEEPER-2450](https://issues.apache.org/jira/browse/ZOOKEEPER-2450) | Upgrade Netty version due to security vulnerability (CVE-2014-3488) |  Critical | security, server | Michael Han | Michael Han |
| [ZOOKEEPER-2297](https://issues.apache.org/jira/browse/ZOOKEEPER-2297) | NPE is thrown while creating "key manager" and "trust manager" |  Blocker | server | Anushri | Mohammad Arshad |
| [ZOOKEEPER-1460](https://issues.apache.org/jira/browse/ZOOKEEPER-1460) | IPv6 literal address not supported for quorum members |  Major | quorum | Chris Dolan | Joseph Walton |
| [ZOOKEEPER-2380](https://issues.apache.org/jira/browse/ZOOKEEPER-2380) | Deadlock between leader shutdown and forwarding ACK to the leader |  Blocker | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2366](https://issues.apache.org/jira/browse/ZOOKEEPER-2366) | Reconfiguration of client port causes a socket leak |  Blocker | quorum | Timothy Ward | Flavio Junqueira |
| [ZOOKEEPER-2458](https://issues.apache.org/jira/browse/ZOOKEEPER-2458) | Remove license file for servlet-api dependency |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2459](https://issues.apache.org/jira/browse/ZOOKEEPER-2459) | Update NOTICE file with Netty notice |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1898](https://issues.apache.org/jira/browse/ZOOKEEPER-1898) | ZooKeeper Java cli shell always returns "0" as exit code |  Critical | java client | Srinath Mantripragada | Abraham Fine |
| [ZOOKEEPER-2477](https://issues.apache.org/jira/browse/ZOOKEEPER-2477) | documentation should refer to Java cli shell and not C cli shell |  Major | documentation | Patrick Hunt | Abraham Fine |
| [ZOOKEEPER-1256](https://issues.apache.org/jira/browse/ZOOKEEPER-1256) | ClientPortBindTest is failing on Mac OS X |  Major | tests | Daniel Gómez Ferro | Flavio Junqueira |
| [ZOOKEEPER-2442](https://issues.apache.org/jira/browse/ZOOKEEPER-2442) | Socket leak in QuorumCnxManager connectOne |  Major | quorum, server | Michael Han | Michael Han |
| [ZOOKEEPER-2500](https://issues.apache.org/jira/browse/ZOOKEEPER-2500) | Fix compilation warnings for CliException classes |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2074](https://issues.apache.org/jira/browse/ZOOKEEPER-2074) | Incorrect exit codes for "./zkCli.sh cmd arg" |  Minor | . | Surendra Singh Lilhore | Abraham Fine |
| [ZOOKEEPER-2247](https://issues.apache.org/jira/browse/ZOOKEEPER-2247) | Zookeeper service becomes unavailable when leader fails to write transaction log |  Critical | . | Mohammad Arshad | Rakesh R |
| [ZOOKEEPER-2548](https://issues.apache.org/jira/browse/ZOOKEEPER-2548) | zooInspector does not start on Windows |  Major | contrib | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2558](https://issues.apache.org/jira/browse/ZOOKEEPER-2558) | Potential memory leak in recordio.c |  Minor | c client | Michael Han | Michael Han |
| [ZOOKEEPER-2536](https://issues.apache.org/jira/browse/ZOOKEEPER-2536) | When provide path for "dataDir" with trailing space, it is taking correct path (by trucating space) for snapshot but creating temporary file with some junk folder name for zookeeper\_server.pid |  Major | server | Rakesh Kumar Singh | Rakesh Kumar Singh |
| [ZOOKEEPER-2539](https://issues.apache.org/jira/browse/ZOOKEEPER-2539) | Throwing nullpointerException when run the command "config -c" when client port is mentioned as separate and not like new style |  Minor | java client | Rakesh Kumar Singh | Rakesh Kumar Singh |
| [ZOOKEEPER-2172](https://issues.apache.org/jira/browse/ZOOKEEPER-2172) | Cluster crashes when reconfig a new node as a participant |  Critical | leaderElection, quorum, server | Ziyou Wang | Mohammad Arshad |
| [ZOOKEEPER-2576](https://issues.apache.org/jira/browse/ZOOKEEPER-2576) | After svn to git migration ZooKeeper Precommit jenkins job is failing. |  Blocker | build | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-2579](https://issues.apache.org/jira/browse/ZOOKEEPER-2579) | ZooKeeper server should verify that dataDir and snapDir are writeable before starting |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2611](https://issues.apache.org/jira/browse/ZOOKEEPER-2611) | zoo\_remove\_watchers - can remove the wrong watch |  Critical | c client | Eyal leshem | Eyal leshem |
| [ZOOKEEPER-2467](https://issues.apache.org/jira/browse/ZOOKEEPER-2467) | NullPointerException when redo Command is passed negative value |  Minor | java client | Joshi Shankar | Rakesh Kumar Singh |
| [ZOOKEEPER-2606](https://issues.apache.org/jira/browse/ZOOKEEPER-2606) | SaslServerCallbackHandler#handleAuthorizeCallback() should log the exception |  Minor | . | Ted Yu | Ted Yu |
| [ZOOKEEPER-2014](https://issues.apache.org/jira/browse/ZOOKEEPER-2014) | Only admin should be allowed to reconfig a cluster |  Blocker | server | Raul Gutierrez Segales | Michael Han |
| [ZOOKEEPER-2628](https://issues.apache.org/jira/browse/ZOOKEEPER-2628) | Investigate and fix findbug warnings |  Major | . | Michael Han | Michael Han |
| [ZOOKEEPER-2636](https://issues.apache.org/jira/browse/ZOOKEEPER-2636) | Fix C build break. |  Blocker | jute | Michael Han | Michael Han |
| [ZOOKEEPER-2470](https://issues.apache.org/jira/browse/ZOOKEEPER-2470) | ServerConfig#parse(String[])  ignores tickTime |  Trivial | server | Alexander Shraer | Edward Ribeiro |
| [ZOOKEEPER-2517](https://issues.apache.org/jira/browse/ZOOKEEPER-2517) | jute.maxbuffer is ignored |  Blocker | . | Benjamin Jaton | Mohammad Arshad |
| [ZOOKEEPER-2465](https://issues.apache.org/jira/browse/ZOOKEEPER-2465) | Documentation copyright notice is out of date. |  Blocker | documentation | Chris Nauroth | Edward Ribeiro |
| [ZOOKEEPER-2383](https://issues.apache.org/jira/browse/ZOOKEEPER-2383) | Startup race in ZooKeeperServer |  Blocker | jmx, server | Steve Rowe | Rakesh R |
| [ZOOKEEPER-2647](https://issues.apache.org/jira/browse/ZOOKEEPER-2647) | Fix TestReconfigServer.cc |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2651](https://issues.apache.org/jira/browse/ZOOKEEPER-2651) | Missing src/pom.template in release |  Major | build | Christopher Tubbs | Rakesh R |
| [ZOOKEEPER-2633](https://issues.apache.org/jira/browse/ZOOKEEPER-2633) | Build failure in contrib/zkfuse with gcc 6.x |  Minor | contrib-zkfuse | Raghavendra Prabhu | Raghavendra Prabhu |
| [ZOOKEEPER-2574](https://issues.apache.org/jira/browse/ZOOKEEPER-2574) | PurgeTxnLog can inadvertently delete required txn log files |  Major | server | Abhishek Rai | Abhishek Rai |
| [ZOOKEEPER-2573](https://issues.apache.org/jira/browse/ZOOKEEPER-2573) | Modify Info.REVISION to adapt git repo |  Major | build, server | Mohammad Arshad | Edward Ribeiro |
| [ZOOKEEPER-2622](https://issues.apache.org/jira/browse/ZOOKEEPER-2622) | ZooTrace.logQuorumPacket does nothing |  Trivial | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2680](https://issues.apache.org/jira/browse/ZOOKEEPER-2680) | Correct DataNode.getChildren() inconsistent behaviour. |  Major | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2464](https://issues.apache.org/jira/browse/ZOOKEEPER-2464) | NullPointerException on ContainerManager |  Major | server | Stefano Salmaso | Jordan Zimmerman |
| [ZOOKEEPER-2642](https://issues.apache.org/jira/browse/ZOOKEEPER-2642) | ZooKeeper reconfig API backward compatibility fix |  Blocker | c client, java client | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-2683](https://issues.apache.org/jira/browse/ZOOKEEPER-2683) | RaceConditionTest is flaky |  Major | tests | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2617](https://issues.apache.org/jira/browse/ZOOKEEPER-2617) | correct a few spelling typos |  Trivial | . | tony mancill | tony mancill |
| [ZOOKEEPER-2678](https://issues.apache.org/jira/browse/ZOOKEEPER-2678) | Large databases take a long time to regain a quorum |  Major | server | Robert Joseph Evans | Robert Joseph Evans |
| [ZOOKEEPER-2687](https://issues.apache.org/jira/browse/ZOOKEEPER-2687) | Deadlock while shutting down the Leader server. |  Major | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2693](https://issues.apache.org/jira/browse/ZOOKEEPER-2693) | DOS attack on wchp/wchc four letter words (4lw) |  Blocker | security, server | Patrick Hunt | Michael Han |
| [ZOOKEEPER-2460](https://issues.apache.org/jira/browse/ZOOKEEPER-2460) | Remove javacc dependency from public Maven pom |  Critical | java client | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-2726](https://issues.apache.org/jira/browse/ZOOKEEPER-2726) | Patch for ZOOKEEPER-2693 introduces potential race condition |  Major | . | Kyle Nusbaum | Kyle Nusbaum |
| [ZOOKEEPER-2725](https://issues.apache.org/jira/browse/ZOOKEEPER-2725) | Upgrading to a global session fails with a multiop |  Major | server | Brian Nixon | Brian Nixon |
| [ZOOKEEPER-2635](https://issues.apache.org/jira/browse/ZOOKEEPER-2635) | Regenerate documentation |  Blocker | documentation | Flavio Junqueira | Michael Han |
| [ZOOKEEPER-2735](https://issues.apache.org/jira/browse/ZOOKEEPER-2735) | Typo fixes in some scripts |  Trivial | scripts | Woojin Joe | Woojin Joe |
| [ZOOKEEPER-2737](https://issues.apache.org/jira/browse/ZOOKEEPER-2737) | NettyServerCnxFactory leaks connection if exception happens while writing to a channel. |  Critical | server | Michael Han | Michael Han |
| [ZOOKEEPER-2743](https://issues.apache.org/jira/browse/ZOOKEEPER-2743) | Netty connection leaks JMX connection bean upon connection close in certain race conditions. |  Major | server | Michael Han | Michael Han |
| [ZOOKEEPER-2722](https://issues.apache.org/jira/browse/ZOOKEEPER-2722) | Flaky Test: org.apache.zookeeper.test.ReadOnlyModeTest.testSessionEstablishment |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2747](https://issues.apache.org/jira/browse/ZOOKEEPER-2747) | Fix ZooKeeperAdmin Compilation Warning |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2758](https://issues.apache.org/jira/browse/ZOOKEEPER-2758) | Typo: transasction --\> transaction |  Trivial | . | Jeff Widman | Jeff Widman |
| [ZOOKEEPER-2316](https://issues.apache.org/jira/browse/ZOOKEEPER-2316) | comment does not match code logic |  Trivial | server | sunhaitao | Umesh Panchaksharaiah |
| [ZOOKEEPER-1932](https://issues.apache.org/jira/browse/ZOOKEEPER-1932) | Remove deprecated LeaderElection class |  Major | leaderElection | Michi Mutsuzaki | Michael Han |
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
| [ZOOKEEPER-2804](https://issues.apache.org/jira/browse/ZOOKEEPER-2804) | Node creation fails with NPE if ACLs are null |  Major | . | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [ZOOKEEPER-2861](https://issues.apache.org/jira/browse/ZOOKEEPER-2861) | Main-Class JAR manifest attribute is incorrect |  Minor | build | Yaniv Kunda | Yaniv Kunda |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2017](https://issues.apache.org/jira/browse/ZOOKEEPER-2017) | New tests for reconfig failure cases |  Minor | tests | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-2204](https://issues.apache.org/jira/browse/ZOOKEEPER-2204) | LearnerSnapshotThrottlerTest.testHighContentionWithTimeout fails occasionally |  Minor | . | Donny Nadolny | Donny Nadolny |
| [ZOOKEEPER-2508](https://issues.apache.org/jira/browse/ZOOKEEPER-2508) | Many ZooKeeper tests are flaky because they proceed with zk operation without connecting to ZooKeeper server. |  Major | tests | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2484](https://issues.apache.org/jira/browse/ZOOKEEPER-2484) | Flaky Test: org.apache.zookeeper.test.LoadFromLogTest.testLoadFailure |  Major | server, tests | Michael Han | Michael Han |
| [ZOOKEEPER-2656](https://issues.apache.org/jira/browse/ZOOKEEPER-2656) | Fix ServerConfigTest#testValidArguments test case failures |  Major | . | Rakesh R | Michael Han |
| [ZOOKEEPER-2664](https://issues.apache.org/jira/browse/ZOOKEEPER-2664) | ClientPortBindTest#testBindByAddress may fail due to "No such device" exception |  Major | . | Ted Yu | Ted Yu |
| [ZOOKEEPER-2718](https://issues.apache.org/jira/browse/ZOOKEEPER-2718) | org.apache.zookeeper.server.quorum.StandaloneDisabledTest fails intermittently |  Major | quorum, server, tests | Sneha Kanekar | Michael Han |
| [ZOOKEEPER-2716](https://issues.apache.org/jira/browse/ZOOKEEPER-2716) | Flaky Test: org.apache.zookeeper.server.SessionTrackerTest.testAddSessionAfterSessionExpiry |  Major | server, tests | Michael Han | Michael Han |
| [ZOOKEEPER-2746](https://issues.apache.org/jira/browse/ZOOKEEPER-2746) | Leader hand-off during dynamic reconfig is best effort, while test always expects it |  Major | . | Michael Han | Michael Han |
| [ZOOKEEPER-2686](https://issues.apache.org/jira/browse/ZOOKEEPER-2686) | Flaky Test: org.apache.zookeeper.test.WatcherTest. |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2742](https://issues.apache.org/jira/browse/ZOOKEEPER-2742) | Few test cases of org.apache.zookeeper.ZooKeeperTest fails in Windows |  Trivial | tests | Abhishek Kumar | Abhishek Kumar |
| [ZOOKEEPER-2796](https://issues.apache.org/jira/browse/ZOOKEEPER-2796) | Test org.apache.zookeeper.ZooKeeperTest.testCreateNodeWithoutData is broken by ZOOKEEPER-2757 |  Minor | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2577](https://issues.apache.org/jira/browse/ZOOKEEPER-2577) | Flaky Test: org.apache.zookeeper.server.quorum.ReconfigDuringLeaderSyncTest.testDuringLeaderSync |  Major | tests | Michael Han | Michael Han |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1660](https://issues.apache.org/jira/browse/ZOOKEEPER-1660) | Add documentation for dynamic reconfiguration |  Blocker | documentation | Alexander Shraer | Reed Wanderman-Milne |
| [ZOOKEEPER-2047](https://issues.apache.org/jira/browse/ZOOKEEPER-2047) | testTruncationNullLog fails on windows |  Major | tests | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2069](https://issues.apache.org/jira/browse/ZOOKEEPER-2069) | Netty Support for ClientCnxnSocket |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2119](https://issues.apache.org/jira/browse/ZOOKEEPER-2119) | Netty client docs |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2134](https://issues.apache.org/jira/browse/ZOOKEEPER-2134) | AsyncHammerTest.testHammer fails intermittently |  Blocker | tests | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-2125](https://issues.apache.org/jira/browse/ZOOKEEPER-2125) | SSL on Netty client-server communication |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2123](https://issues.apache.org/jira/browse/ZOOKEEPER-2123) | Provide implementation of X509 AuthenticationProvider |  Minor | . | Hongchao Deng | Ian Dimayuga |
| [ZOOKEEPER-2153](https://issues.apache.org/jira/browse/ZOOKEEPER-2153) | X509 Authentication Documentation |  Major | . | Hongchao Deng | Ian Dimayuga |
| [ZOOKEEPER-1626](https://issues.apache.org/jira/browse/ZOOKEEPER-1626) | Zookeeper C client should be tolerant of clock adjustments |  Major | c client | Colin P. McCabe | Colin P. McCabe |
| [ZOOKEEPER-1872](https://issues.apache.org/jira/browse/ZOOKEEPER-1872) | QuorumPeer is not shutdown in few cases |  Major | . | Rakesh R | Rakesh R |
| [ZOOKEEPER-2396](https://issues.apache.org/jira/browse/ZOOKEEPER-2396) | Login object in ZooKeeperSaslClient is static |  Major | documentation | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2137](https://issues.apache.org/jira/browse/ZOOKEEPER-2137) | Make testPortChange() less flaky |  Major | tests | Hongchao Deng | Michael Han |
| [ZOOKEEPER-2152](https://issues.apache.org/jira/browse/ZOOKEEPER-2152) | Intermittent failure in TestReconfig.cc |  Major | c client | Michi Mutsuzaki | Michael Han |
| [ZOOKEEPER-2080](https://issues.apache.org/jira/browse/ZOOKEEPER-2080) | Fix deadlock in dynamic reconfiguration |  Major | server | Ted Yu | Michael Han |
| [ZOOKEEPER-2692](https://issues.apache.org/jira/browse/ZOOKEEPER-2692) | Fix race condition in testWatchAutoResetWithPending |  Major | tests | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2608](https://issues.apache.org/jira/browse/ZOOKEEPER-2608) | Create CLI option for TTL ephemerals |  Major | c client, java client, jute, server | Camille Fournier | Jordan Zimmerman |
| [ZOOKEEPER-2707](https://issues.apache.org/jira/browse/ZOOKEEPER-2707) | Fix "Unexpected bean exists!" issue in WatcherTests |  Major | tests | Abraham Fine | Michael Han |
| [ZOOKEEPER-2754](https://issues.apache.org/jira/browse/ZOOKEEPER-2754) | Set up Apache Jenkins job that runs the flaky test analyzer script. |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-169](https://issues.apache.org/jira/browse/ZOOKEEPER-169) | Content needed: "Connecting to ZooKeeper" |  Major | documentation | Robbie Scott | Michelle Tan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1604](https://issues.apache.org/jira/browse/ZOOKEEPER-1604) | remove rpm/deb/... packaging |  Major | build | Patrick Hunt | Chris Nauroth |
| [ZOOKEEPER-2658](https://issues.apache.org/jira/browse/ZOOKEEPER-2658) | Trunk / branch-3.5 build broken. |  Critical | . | Michael Han | Michael Han |
| [ZOOKEEPER-2709](https://issues.apache.org/jira/browse/ZOOKEEPER-2709) | Clarify documentation around "auth" ACL scheme |  Minor | documentation | Josh Elser | Josh Elser |


