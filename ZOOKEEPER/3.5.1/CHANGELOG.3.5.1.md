
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

## Release 3.5.1 - 2015-09-02

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1504](https://issues.apache.org/jira/browse/ZOOKEEPER-1504) | Multi-thread NIOServerCnxn |  Major | server | Jay Shrauner | Thawan Kooburat |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2163](https://issues.apache.org/jira/browse/ZOOKEEPER-2163) | Introduce new ZNode type: container |  Major | c client, java client, server | Jordan Zimmerman | Jordan Zimmerman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1994](https://issues.apache.org/jira/browse/ZOOKEEPER-1994) | Backup config files. |  Major | server | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1948](https://issues.apache.org/jira/browse/ZOOKEEPER-1948) | Enable JMX remote monitoring |  Major | server | Biju Nair | Biju Nair |
| [ZOOKEEPER-2066](https://issues.apache.org/jira/browse/ZOOKEEPER-2066) | Updates to README.txt |  Minor | . | Wendy Smoak | Camille Fournier |
| [ZOOKEEPER-2079](https://issues.apache.org/jira/browse/ZOOKEEPER-2079) | Stop daemon with "kill" rather than "kill -9" |  Minor | scripts | Guillaume ALAUX | Guillaume ALAUX |
| [ZOOKEEPER-1963](https://issues.apache.org/jira/browse/ZOOKEEPER-1963) | Make JDK 7 the minimum requirement for Zookeeper |  Major | build | Edward Carter | Hongchao Deng |
| [ZOOKEEPER-2110](https://issues.apache.org/jira/browse/ZOOKEEPER-2110) | Typo fixes in the ZK documentation |  Minor | documentation | Jeffrey Schroeder | Jeffrey Schroeder |
| [ZOOKEEPER-2107](https://issues.apache.org/jira/browse/ZOOKEEPER-2107) | zookeeper client should support custom HostProviders |  Major | java client | Robert Kamphuis | Robert Kamphuis |
| [ZOOKEEPER-2149](https://issues.apache.org/jira/browse/ZOOKEEPER-2149) | Logging of client address when socket connection established |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2176](https://issues.apache.org/jira/browse/ZOOKEEPER-2176) | Unclear error message should be info not error |  Major | quorum | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2183](https://issues.apache.org/jira/browse/ZOOKEEPER-2183) | Concurrent Testing Processes and Port Assignments |  Major | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2126](https://issues.apache.org/jira/browse/ZOOKEEPER-2126) | Improve exit log messsage of EventThread and SendThread by adding SessionId |  Major | java client | zhihai xu | Surendra Singh Lilhore |
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
| [ZOOKEEPER-1907](https://issues.apache.org/jira/browse/ZOOKEEPER-1907) | Improve Thread handling |  Major | server | Rakesh R | Rakesh R |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2008](https://issues.apache.org/jira/browse/ZOOKEEPER-2008) | System test fails due to missing leader election port |  Minor | contrib-fatjar | Kfir Lev-Ari | Kfir Lev-Ari |
| [ZOOKEEPER-2006](https://issues.apache.org/jira/browse/ZOOKEEPER-2006) | Standalone mode won't take client port from dynamic config |  Major | server | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2013](https://issues.apache.org/jira/browse/ZOOKEEPER-2013) | typos in zookeeperProgrammers |  Trivial | documentation | Tim Chambers | Tim Chambers |
| [ZOOKEEPER-2030](https://issues.apache.org/jira/browse/ZOOKEEPER-2030) | dynamicConfigFile should have an absolute path, not a relative path, to the dynamic configuration file |  Minor | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-2039](https://issues.apache.org/jira/browse/ZOOKEEPER-2039) | Jute compareBytes incorrect comparison index |  Minor | jute | Ian Dimayuga | Ian Dimayuga |
| [ZOOKEEPER-2026](https://issues.apache.org/jira/browse/ZOOKEEPER-2026) | Startup order in ServerCnxnFactory-ies is wrong |  Minor | jmx, server | Stevo Slavic | Stevo Slavic |
| [ZOOKEEPER-1917](https://issues.apache.org/jira/browse/ZOOKEEPER-1917) | Apache Zookeeper logs cleartext admin passwords |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2049](https://issues.apache.org/jira/browse/ZOOKEEPER-2049) | Yosemite build failure: htonll conflict |  Major | . | Till Toenshoff | Till Toenshoff |
| [ZOOKEEPER-2052](https://issues.apache.org/jira/browse/ZOOKEEPER-2052) | Unable to delete a node when the node has no children |  Major | server | Yip Ng | Hongchao Deng |
| [ZOOKEEPER-1987](https://issues.apache.org/jira/browse/ZOOKEEPER-1987) | unable to restart 3 node cluster |  Blocker | tests | Patrick Hunt | Alexander Shraer |
| [ZOOKEEPER-2060](https://issues.apache.org/jira/browse/ZOOKEEPER-2060) | Trace bug in NettyServerCnxnFactory |  Major | server | Ian Dimayuga | Ian Dimayuga |
| [ZOOKEEPER-2064](https://issues.apache.org/jira/browse/ZOOKEEPER-2064) | Prevent resource leak in various classes |  Critical | . | Ted Yu | Ted Yu |
| [ZOOKEEPER-1784](https://issues.apache.org/jira/browse/ZOOKEEPER-1784) | Logic to process INFORMANDACTIVATE packets in syncWithLeader seems bogus |  Major | . | Raul Gutierrez Segales | Raul Gutierrez Segales |
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
| [ZOOKEEPER-2062](https://issues.apache.org/jira/browse/ZOOKEEPER-2062) | RemoveWatchesTest takes forever to run |  Major | tests | Flavio Junqueira | Chris Nauroth |
| [ZOOKEEPER-2171](https://issues.apache.org/jira/browse/ZOOKEEPER-2171) | avoid reverse lookups in QuorumCnxManager |  Major | quorum | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2182](https://issues.apache.org/jira/browse/ZOOKEEPER-2182) | Several test suites are not running during pre-commit, because their names do not end with "Test". |  Major | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2190](https://issues.apache.org/jira/browse/ZOOKEEPER-2190) | In StandaloneDisabledTest, testReconfig() shouldn't take leaving servers as joining servers |  Major | tests | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2186](https://issues.apache.org/jira/browse/ZOOKEEPER-2186) | QuorumCnxManager#receiveConnection may crash with random input |  Major | server | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2124](https://issues.apache.org/jira/browse/ZOOKEEPER-2124) | Allow Zookeeper version string to have underscore '\_' |  Major | . | Jerry He | Chris Nauroth |
| [ZOOKEEPER-2187](https://issues.apache.org/jira/browse/ZOOKEEPER-2187) | remove duplicated code between CreateRequest{,2} |  Minor | c client, java client, server | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2198](https://issues.apache.org/jira/browse/ZOOKEEPER-2198) | Set default test.junit.threads to 1. |  Minor | build | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2178](https://issues.apache.org/jira/browse/ZOOKEEPER-2178) | Native client fails compilation on Windows. |  Major | c client | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2197](https://issues.apache.org/jira/browse/ZOOKEEPER-2197) | non-ascii character in FinalRequestProcessor.java |  Minor | . | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-2096](https://issues.apache.org/jira/browse/ZOOKEEPER-2096) | C client builds with incorrect error codes in VisualStudio 2010+ |  Major | build, c client | Vitaly Stakhovsky | Vitaly Stakhovsky |
| [ZOOKEEPER-2213](https://issues.apache.org/jira/browse/ZOOKEEPER-2213) | Empty path in Set crashes server and prevents restart |  Blocker | server | Brian Brazil | Hongchao Deng |
| [ZOOKEEPER-2212](https://issues.apache.org/jira/browse/ZOOKEEPER-2212) | distributed race condition related to QV version |  Critical | quorum | Akihiro Suda | Akihiro Suda |
| [ZOOKEEPER-2210](https://issues.apache.org/jira/browse/ZOOKEEPER-2210) | clock\_gettime is not available in os x |  Major | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-2193](https://issues.apache.org/jira/browse/ZOOKEEPER-2193) | reconfig command completes even if parameter is wrong obviously |  Major | leaderElection, server | Yasuhito Fukuda | Yasuhito Fukuda |
| [ZOOKEEPER-2221](https://issues.apache.org/jira/browse/ZOOKEEPER-2221) | Zookeeper JettyAdminServer server should start on configured IP. |  Major | server | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [ZOOKEEPER-2224](https://issues.apache.org/jira/browse/ZOOKEEPER-2224) | Four letter command hangs when network is slow |  Minor | java client | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2235](https://issues.apache.org/jira/browse/ZOOKEEPER-2235) | License update |  Blocker | . | Flavio Junqueira | Flavio Junqueira |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2017](https://issues.apache.org/jira/browse/ZOOKEEPER-2017) | New tests for reconfig failure cases |  Minor | tests | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-2032](https://issues.apache.org/jira/browse/ZOOKEEPER-2032) | ReconfigBackupTest didn't clean up resources. |  Minor | tests | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2204](https://issues.apache.org/jira/browse/ZOOKEEPER-2204) | LearnerSnapshotThrottlerTest.testHighContentionWithTimeout fails occasionally |  Minor | . | Donny Nadolny | Donny Nadolny |


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


