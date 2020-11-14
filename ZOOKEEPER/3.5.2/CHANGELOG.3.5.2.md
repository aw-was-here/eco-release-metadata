
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

## Release 3.5.2 - 2016-07-21



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2191](https://issues.apache.org/jira/browse/ZOOKEEPER-2191) | Continue supporting prior Ant versions that don't implement the threads attribute for the JUnit task. |  Major | build | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2270](https://issues.apache.org/jira/browse/ZOOKEEPER-2270) | Allow MBeanRegistry to be overridden for better unit tests |  Major | server | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-2040](https://issues.apache.org/jira/browse/ZOOKEEPER-2040) | Server to log underlying cause of SASL connection problems |  Major | server | Steve Loughran | Steve Loughran |
| [ZOOKEEPER-2315](https://issues.apache.org/jira/browse/ZOOKEEPER-2315) | Change client connect zk service timeout log level from Info to Warn level |  Minor | java client | Yiqun Lin | Yiqun Lin |
| [ZOOKEEPER-2326](https://issues.apache.org/jira/browse/ZOOKEEPER-2326) | Include connected server address:port in log |  Minor | java client | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2306](https://issues.apache.org/jira/browse/ZOOKEEPER-2306) | Remove file delete duplicate  code from test code |  Major | tests | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2300](https://issues.apache.org/jira/browse/ZOOKEEPER-2300) | Expose SecureClientPort and SecureClientAddress JMX properties |  Major | jmx | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2378](https://issues.apache.org/jira/browse/ZOOKEEPER-2378) | upgrade ivy to recent version |  Critical | build | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-2373](https://issues.apache.org/jira/browse/ZOOKEEPER-2373) | Licenses section missing from pom file |  Blocker | . | Flavio Paiva Junqueira | Patrick D. Hunt |
| [ZOOKEEPER-2087](https://issues.apache.org/jira/browse/ZOOKEEPER-2087) | Few UX improvements in ZooInspector |  Minor | contrib | Adam Dudczak | Adam Dudczak |
| [ZOOKEEPER-2392](https://issues.apache.org/jira/browse/ZOOKEEPER-2392) | Update netty to 3.7.1.Final |  Minor | build | Hendy Irawan | Hendy Irawan |
| [ZOOKEEPER-2240](https://issues.apache.org/jira/browse/ZOOKEEPER-2240) | Make the three-node minimum more explicit in documentation and on website |  Trivial | documentation | Shawn Heisey | Mohammad Arshad |
| [ZOOKEEPER-2139](https://issues.apache.org/jira/browse/ZOOKEEPER-2139) | Support multiple ZooKeeper client, with different configurations, in a single JVM |  Blocker | java client | Surendra Singh Lilhore | Mohammad Arshad |
| [ZOOKEEPER-2402](https://issues.apache.org/jira/browse/ZOOKEEPER-2402) | Document client side properties |  Major | documentation | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2410](https://issues.apache.org/jira/browse/ZOOKEEPER-2410) | add time unit to 'ELECTION TOOK' log.info message |  Trivial | leaderElection, quorum, server | Christine Poerschke | Christine Poerschke |
| [ZOOKEEPER-2433](https://issues.apache.org/jira/browse/ZOOKEEPER-2433) | ZooKeeperSaslServer: allow user principals in subject |  Major | security | Andy B | Andy B |
| [ZOOKEEPER-1504](https://issues.apache.org/jira/browse/ZOOKEEPER-1504) | Multi-thread NIOServerCnxn |  Major | server | Jay Shrauner | Thawan Kooburat |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2174](https://issues.apache.org/jira/browse/ZOOKEEPER-2174) | JUnit4ZKTestRunner logs test failure for all exceptions even if the test method is annotated with an expected exception. |  Minor | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-1077](https://issues.apache.org/jira/browse/ZOOKEEPER-1077) | C client lib doesn't build on Solaris |  Critical | build, c client | Tadeusz Andrzej Kadłubowski | Chris Nauroth |
| [ZOOKEEPER-2156](https://issues.apache.org/jira/browse/ZOOKEEPER-2156) | If JAVA\_HOME is not set zk startup and fetching status command execution result misleads user. |  Major | scripts | J.Andreina | J.Andreina |
| [ZOOKEEPER-2201](https://issues.apache.org/jira/browse/ZOOKEEPER-2201) | Network issues can cause cluster to hang due to near-deadlock |  Critical | . | Donny Nadolny | Donny Nadolny |
| [ZOOKEEPER-706](https://issues.apache.org/jira/browse/ZOOKEEPER-706) | large numbers of watches can cause session re-establishment to fail |  Critical | c client, java client | Patrick D. Hunt | Chris Thunes |
| [ZOOKEEPER-2256](https://issues.apache.org/jira/browse/ZOOKEEPER-2256) | Zookeeper is not using specified JMX port in zkEnv.sh |  Minor | scripts | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2264](https://issues.apache.org/jira/browse/ZOOKEEPER-2264) | Wrong error message when secureClientPortAddress is configured but secureClientPort is not configured |  Minor | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2269](https://issues.apache.org/jira/browse/ZOOKEEPER-2269) | NullPointerException  in RemotePeerBean |  Major | jmx | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2245](https://issues.apache.org/jira/browse/ZOOKEEPER-2245) | SimpleSysTest test cases fails |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2279](https://issues.apache.org/jira/browse/ZOOKEEPER-2279) | QuorumPeer  loadDataBase() error message is incorrect |  Major | quorum | sunhaitao | Mohammad Arshad |
| [ZOOKEEPER-1803](https://issues.apache.org/jira/browse/ZOOKEEPER-1803) | Add description for pzxid in programmer's guide. |  Major | documentation | Leader Ni | Mohammad Arshad |
| [ZOOKEEPER-2244](https://issues.apache.org/jira/browse/ZOOKEEPER-2244) | On Windows zookeeper fails to restart |  Critical | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2268](https://issues.apache.org/jira/browse/ZOOKEEPER-2268) | Zookeeper doc creation fails on windows |  Major | build | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2239](https://issues.apache.org/jira/browse/ZOOKEEPER-2239) | JMX State from LocalPeerBean incorrect |  Major | jmx | Kevin Lee | Kevin Lee |
| [ZOOKEEPER-2302](https://issues.apache.org/jira/browse/ZOOKEEPER-2302) | Some test cases are not running because wrongly named |  Major | tests | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2142](https://issues.apache.org/jira/browse/ZOOKEEPER-2142) | JMX ObjectName is incorrect for observers |  Trivial | . | Karol Dudzinski | Edward Ribeiro |
| [ZOOKEEPER-1853](https://issues.apache.org/jira/browse/ZOOKEEPER-1853) | zkCli.sh can't issue a CREATE command containing spaces in the data |  Minor | java client | sekine coulibaly | Ryan Lamore |
| [ZOOKEEPER-2227](https://issues.apache.org/jira/browse/ZOOKEEPER-2227) | stmk four-letter word fails execution at server while reading trace mask argument. |  Major | server | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-1929](https://issues.apache.org/jira/browse/ZOOKEEPER-1929) | std::length\_error on update children |  Major | contrib-zkfuse | Eduard White | Charles Strahan |
| [ZOOKEEPER-1371](https://issues.apache.org/jira/browse/ZOOKEEPER-1371) | Remove dependency on log4j in the source code. |  Major | . | Mahadev Konar | Mohammad Arshad |
| [ZOOKEEPER-2329](https://issues.apache.org/jira/browse/ZOOKEEPER-2329) | Clear javac and javadoc warning from zookeeper |  Minor | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2211](https://issues.apache.org/jira/browse/ZOOKEEPER-2211) | PurgeTxnLog does not correctly purge when snapshots and logs are at different locations |  Major | scripts | Wesley Chow | Mohammad Arshad |
| [ZOOKEEPER-2335](https://issues.apache.org/jira/browse/ZOOKEEPER-2335) | Java Compilation Error in ClientCnxn.java |  Major | java client, server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2311](https://issues.apache.org/jira/browse/ZOOKEEPER-2311) | assert in setup\_random |  Major | c client | Marshall McMullen | Marshall McMullen |
| [ZOOKEEPER-2304](https://issues.apache.org/jira/browse/ZOOKEEPER-2304) | JMX ClientPort from ZooKeeperServerBean incorrect |  Major | jmx | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2301](https://issues.apache.org/jira/browse/ZOOKEEPER-2301) | QuorumPeer does not listen on passed client IP in the constructor |  Major | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2299](https://issues.apache.org/jira/browse/ZOOKEEPER-2299) | NullPointerException in LocalPeerBean for ClientAddress |  Major | jmx | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2295](https://issues.apache.org/jira/browse/ZOOKEEPER-2295) | TGT refresh time logic is wrong |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2281](https://issues.apache.org/jira/browse/ZOOKEEPER-2281) | ZK Server startup fails if there are spaces in the JAVA\_HOME path |  Minor | scripts | Neha Bathra | Neha Bathra |
| [ZOOKEEPER-2340](https://issues.apache.org/jira/browse/ZOOKEEPER-2340) | JMX is disabled even if JMXDISABLE is false |  Minor | . | Neha Bathra | Mohammad Arshad |
| [ZOOKEEPER-2229](https://issues.apache.org/jira/browse/ZOOKEEPER-2229) | Several four-letter words are undocumented. |  Major | documentation | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2252](https://issues.apache.org/jira/browse/ZOOKEEPER-2252) | Random test case failure in org.apache.zookeeper.test.StaticHostProviderTest |  Minor | . | Mohammad Arshad | Timothy James Ward |
| [ZOOKEEPER-1029](https://issues.apache.org/jira/browse/ZOOKEEPER-1029) | C client bug in zookeeper\_init (if bad hostname is given) |  Blocker | c client | Dheeraj Agrawal | Flavio Paiva Junqueira |
| [ZOOKEEPER-412](https://issues.apache.org/jira/browse/ZOOKEEPER-412) | checkstyle target fails trunk build |  Major | . | Giridharan Kesavan | Akihiro Suda |
| [ZOOKEEPER-2360](https://issues.apache.org/jira/browse/ZOOKEEPER-2360) | Update commons collections version used by tests/releaseaudit |  Blocker | build | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-2243](https://issues.apache.org/jira/browse/ZOOKEEPER-2243) | Supported platforms is completely out of date |  Major | . | Ivan Kelly | Chris Nauroth |
| [ZOOKEEPER-2375](https://issues.apache.org/jira/browse/ZOOKEEPER-2375) | Prevent multiple initialization of login object in each ZooKeeperSaslClient instance |  Blocker | java client | yuemeng | yuemeng |
| [ZOOKEEPER-1991](https://issues.apache.org/jira/browse/ZOOKEEPER-1991) | zkServer.sh returns with a zero exit status when a ZooKeeper process is already running |  Minor | scripts | Reed Wanderman-Milne | Biju Nair |
| [ZOOKEEPER-2294](https://issues.apache.org/jira/browse/ZOOKEEPER-2294) | Ant target generate-clover-reports is broken |  Major | build | Charlie Helin | Charlie Helin |
| [ZOOKEEPER-2379](https://issues.apache.org/jira/browse/ZOOKEEPER-2379) | recent commit broke findbugs qabot check |  Blocker | build | Patrick D. Hunt | Rakesh Radhakrishnan |
| [ZOOKEEPER-2133](https://issues.apache.org/jira/browse/ZOOKEEPER-2133) | zkperl: Segmentation fault if getting a node with null value |  Major | contrib-bindings | Botond Hejj | Botond Hejj |
| [ZOOKEEPER-2283](https://issues.apache.org/jira/browse/ZOOKEEPER-2283) | traceFile property is not used in the ZooKeeper,  it should be removed from documentation |  Major | documentation | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2385](https://issues.apache.org/jira/browse/ZOOKEEPER-2385) | Zookeeper trunk build is failing on windows |  Blocker | build | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2388](https://issues.apache.org/jira/browse/ZOOKEEPER-2388) | Unit tests failing on Solaris |  Blocker | tests | Patrick D. Hunt | Mohammad Arshad |
| [ZOOKEEPER-2393](https://issues.apache.org/jira/browse/ZOOKEEPER-2393) | Revert run-time dependency on log4j and slf4j-log4j12 |  Blocker | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2195](https://issues.apache.org/jira/browse/ZOOKEEPER-2195) | fsync.warningthresholdms in zoo.cfg not working |  Trivial | quorum | David Fan | Biju Nair |
| [ZOOKEEPER-2364](https://issues.apache.org/jira/browse/ZOOKEEPER-2364) | "ant docs" fails on branch-3.5 due to missing releasenotes.xml. |  Blocker | build, documentation | Chris Nauroth | Patrick D. Hunt |
| [ZOOKEEPER-2141](https://issues.apache.org/jira/browse/ZOOKEEPER-2141) | ACL cache in DataTree never removes entries |  Blocker | . | Karol Dudzinski | Adam Milne-Smith |
| [ZOOKEEPER-2413](https://issues.apache.org/jira/browse/ZOOKEEPER-2413) | ContainerManager doesn't close the Timer it creates when stop() is called |  Major | server | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-2235](https://issues.apache.org/jira/browse/ZOOKEEPER-2235) | License update |  Blocker | . | Flavio Paiva Junqueira | Flavio Paiva Junqueira |
| [ZOOKEEPER-2330](https://issues.apache.org/jira/browse/ZOOKEEPER-2330) | ZooKeeper close API does not close Login thread. |  Major | java client | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2405](https://issues.apache.org/jira/browse/ZOOKEEPER-2405) | getTGT() in Login.java mishandles confidential information |  Blocker | kerberos, security, server | Patrick D. Hunt | Michael Han |
| [ZOOKEEPER-2450](https://issues.apache.org/jira/browse/ZOOKEEPER-2450) | Upgrade Netty version due to security vulnerability (CVE-2014-3488) |  Critical | security, server | Michael Han | Michael Han |
| [ZOOKEEPER-2297](https://issues.apache.org/jira/browse/ZOOKEEPER-2297) | NPE is thrown while creating "key manager" and "trust manager" |  Blocker | server | Anushri | Mohammad Arshad |
| [ZOOKEEPER-1460](https://issues.apache.org/jira/browse/ZOOKEEPER-1460) | IPv6 literal address not supported for quorum members |  Major | quorum | Chris Dolan | Joseph Walton |
| [ZOOKEEPER-2380](https://issues.apache.org/jira/browse/ZOOKEEPER-2380) | Deadlock between leader shutdown and forwarding ACK to the leader |  Blocker | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2366](https://issues.apache.org/jira/browse/ZOOKEEPER-2366) | Reconfiguration of client port causes a socket leak |  Blocker | quorum | Timothy James Ward | Flavio Paiva Junqueira |
| [ZOOKEEPER-2458](https://issues.apache.org/jira/browse/ZOOKEEPER-2458) | Remove license file for servlet-api dependency |  Major | . | Flavio Paiva Junqueira | Flavio Paiva Junqueira |
| [ZOOKEEPER-2459](https://issues.apache.org/jira/browse/ZOOKEEPER-2459) | Update NOTICE file with Netty notice |  Blocker | . | Flavio Paiva Junqueira | Flavio Paiva Junqueira |
| [ZOOKEEPER-2323](https://issues.apache.org/jira/browse/ZOOKEEPER-2323) | ZooKeeper client enters into infinite AuthFailedException cycle if its unable to recreate Kerberos ticket |  Major | java client | Mohammad Arshad | Mohammad Arshad |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1872](https://issues.apache.org/jira/browse/ZOOKEEPER-1872) | QuorumPeer is not shutdown in few cases |  Major | . | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-2396](https://issues.apache.org/jira/browse/ZOOKEEPER-2396) | Login object in ZooKeeperSaslClient is static |  Major | documentation | Flavio Paiva Junqueira | Flavio Paiva Junqueira |
| [ZOOKEEPER-2137](https://issues.apache.org/jira/browse/ZOOKEEPER-2137) | Make testPortChange() less flaky |  Major | tests | Hongchao Deng | Michael Han |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1604](https://issues.apache.org/jira/browse/ZOOKEEPER-1604) | remove rpm/deb/... packaging |  Major | build | Patrick D. Hunt | Chris Nauroth |


