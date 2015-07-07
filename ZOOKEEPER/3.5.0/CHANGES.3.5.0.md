
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

## Release 3.5.0 - 2014-08-04

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1459](https://issues.apache.org/jira/browse/ZOOKEEPER-1459) | Standalone ZooKeeperServer is not closing the transaction log files on shutdown |  Major | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1408](https://issues.apache.org/jira/browse/ZOOKEEPER-1408) | CLI: sort output of ls command |  Minor | java client | Hartmut Lang | Hartmut Lang |
| [ZOOKEEPER-1344](https://issues.apache.org/jira/browse/ZOOKEEPER-1344) | ZooKeeper client multi-update command is not considering the Chroot request |  Critical | java client | Rakesh R | Rakesh R |
| [ZOOKEEPER-1294](https://issues.apache.org/jira/browse/ZOOKEEPER-1294) | One of the zookeeper server is not accepting any requests |  Major | server | amith | kavita sharma |
| [ZOOKEEPER-1263](https://issues.apache.org/jira/browse/ZOOKEEPER-1263) | fix handling of min/max session timeout value initialization |  Major | server | Patrick Hunt | Rakesh R |
| [ZOOKEEPER-1189](https://issues.apache.org/jira/browse/ZOOKEEPER-1189) | For an invalid snapshot file(less than 10bytes size) RandomAccessFile stream is leaking. |  Major | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1149](https://issues.apache.org/jira/browse/ZOOKEEPER-1149) | users cannot migrate from 3.4-\>3.3-\>3.4 server code against a single datadir |  Blocker | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1100](https://issues.apache.org/jira/browse/ZOOKEEPER-1100) | Killed (or missing) SendThread will cause hanging threads |  Major | java client | Gunnar Wagenknecht |  |
| [ZOOKEEPER-271](https://issues.apache.org/jira/browse/ZOOKEEPER-271) | Better command line parsing in ZookeeperMain. |  Minor | java client | Mahadev konar | Hartmut Lang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1887](https://issues.apache.org/jira/browse/ZOOKEEPER-1887) | C implementation of removeWatches |  Major | c client | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-1829](https://issues.apache.org/jira/browse/ZOOKEEPER-1829) | Umbrella jira for removing watches that are no longer of interest |  Critical | java client, server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1355](https://issues.apache.org/jira/browse/ZOOKEEPER-1355) | Add zk.updateServerList(newServerList) |  Major | c client, java client | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1297](https://issues.apache.org/jira/browse/ZOOKEEPER-1297) | Add stat information to create() call |  Major | java client | Gunnar Wagenknecht | Lenni Kuff |
| [ZOOKEEPER-1161](https://issues.apache.org/jira/browse/ZOOKEEPER-1161) | Provide an option for disabling auto-creation of the data directory |  Major | scripts, server | Roman Shaposhnik | Patrick Hunt |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2179](https://issues.apache.org/jira/browse/ZOOKEEPER-2179) | Typo in Watcher.java |  Trivial | server | Eunchan Kim |  |
| [ZOOKEEPER-1986](https://issues.apache.org/jira/browse/ZOOKEEPER-1986) | refactor log trace on touchSession |  Minor | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1982](https://issues.apache.org/jira/browse/ZOOKEEPER-1982) | Refactor (touch\|add)Session in SessionTrackerImpl.java |  Minor | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1968](https://issues.apache.org/jira/browse/ZOOKEEPER-1968) | Make Jetty dependencies optional in ivy.xml |  Major | server | Patrick Hunt | Bill Havanki |
| [ZOOKEEPER-1953](https://issues.apache.org/jira/browse/ZOOKEEPER-1953) | Add solution and project files to enable build with current Visual Studio editions (VS 2012/2013) - 32-bit and 64-bit. |  Major | c client | Patrick Hunt | Orion Hodson |
| [ZOOKEEPER-1946](https://issues.apache.org/jira/browse/ZOOKEEPER-1946) | Server logging should reflect dynamically reconfigured address |  Minor | server | Niko Vuokko | Niko Vuokko |
| [ZOOKEEPER-1815](https://issues.apache.org/jira/browse/ZOOKEEPER-1815) | Tolerate incorrectly set system hostname in tests |  Trivial | tests | some one |  |
| [ZOOKEEPER-1796](https://issues.apache.org/jira/browse/ZOOKEEPER-1796) | Move common code from {Follower, Observer}ZooKeeperServer into LearnerZooKeeperServer |  Trivial | . | Raul Gutierrez Segales |  |
| [ZOOKEEPER-1778](https://issues.apache.org/jira/browse/ZOOKEEPER-1778) | Use static final Logger objects |  Minor | . | Rakesh R | Rakesh R |
| [ZOOKEEPER-1771](https://issues.apache.org/jira/browse/ZOOKEEPER-1771) | ZooInspector authentication |  Minor | contrib | Benjamin Jaton | Benjamin Jaton |
| [ZOOKEEPER-1766](https://issues.apache.org/jira/browse/ZOOKEEPER-1766) | Consistent log severity level guards and statements |  Minor | . | Jackie Chang | Jackie Chang |
| [ZOOKEEPER-1759](https://issues.apache.org/jira/browse/ZOOKEEPER-1759) | Adding ability to allow READ operations for authenticated users,  versus keeping ACLs wide open for READ |  Major | server | Yuliya Feldman | Yuliya Feldman |
| [ZOOKEEPER-1758](https://issues.apache.org/jira/browse/ZOOKEEPER-1758) | Add documentation for zookeeper.observer.syncEnabled flag |  Minor | . | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-1746](https://issues.apache.org/jira/browse/ZOOKEEPER-1746) | AsyncCallback.\*Callback don't have any Javadoc |  Major | documentation | Tsuyoshi Ozawa | Hongchao Deng |
| [ZOOKEEPER-1728](https://issues.apache.org/jira/browse/ZOOKEEPER-1728) | Better error message when reconfig invoked in standalone mode |  Minor | . | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1715](https://issues.apache.org/jira/browse/ZOOKEEPER-1715) | Upgrade netty version |  Major | . | Sean Bridges | Sean Bridges |
| [ZOOKEEPER-1701](https://issues.apache.org/jira/browse/ZOOKEEPER-1701) | When new and old config have the same version, no need to write new config to disk or create new connections |  Minor | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1691](https://issues.apache.org/jira/browse/ZOOKEEPER-1691) | Add a flag to disable standalone mode |  Major | quorum | Michi Mutsuzaki | Helen Hastings |
| [ZOOKEEPER-1679](https://issues.apache.org/jira/browse/ZOOKEEPER-1679) | c client: use -Wdeclaration-after-statement |  Minor | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1666](https://issues.apache.org/jira/browse/ZOOKEEPER-1666) | Avoid Reverse DNS lookup if the hostname in connection string is literal IP address. |  Major | java client | George Cao | George Cao |
| [ZOOKEEPER-1638](https://issues.apache.org/jira/browse/ZOOKEEPER-1638) | Redundant zk.getZKDatabase().clear(); |  Trivial | . | Alexander Shraer | neil bhakta |
| [ZOOKEEPER-1627](https://issues.apache.org/jira/browse/ZOOKEEPER-1627) | Add org.apache.zookeeper.common to exported packages in OSGi MANIFEST headers |  Major | . | Arnoud Glimmerveen | Arnoud Glimmerveen |
| [ZOOKEEPER-1619](https://issues.apache.org/jira/browse/ZOOKEEPER-1619) | Allow spaces in URL |  Minor | java client | Todd Nine | Edward Ribeiro |
| [ZOOKEEPER-1615](https://issues.apache.org/jira/browse/ZOOKEEPER-1615) | minor typos in ZooKeeper Programmer's Guide web page |  Trivial | documentation | Evan Zacks | Evan Zacks |
| [ZOOKEEPER-1601](https://issues.apache.org/jira/browse/ZOOKEEPER-1601) | document changes for multi-threaded CommitProcessor and NIOServerCnxn |  Major | documentation | Patrick Hunt | Thawan Kooburat |
| [ZOOKEEPER-1598](https://issues.apache.org/jira/browse/ZOOKEEPER-1598) | Ability to support more digits in the version string |  Major | build | Raja Aluri | Raja Aluri |
| [ZOOKEEPER-1584](https://issues.apache.org/jira/browse/ZOOKEEPER-1584) | Adding mvn-install target for deploying the zookeeper artifacts to .m2 repository. |  Minor | build | Ashish Singh | Ashish Singh |
| [ZOOKEEPER-1583](https://issues.apache.org/jira/browse/ZOOKEEPER-1583) | Document maxClientCnxns in conf/zoo\_sample.cfg |  Critical | documentation | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-1574](https://issues.apache.org/jira/browse/ZOOKEEPER-1574) | mismatched CR/LF endings in text files |  Minor | . | Raja Aluri | Raja Aluri |
| [ZOOKEEPER-1572](https://issues.apache.org/jira/browse/ZOOKEEPER-1572) | Add an async interface for multi request |  Major | java client | Sijie Guo | Sijie Guo |
| [ZOOKEEPER-1564](https://issues.apache.org/jira/browse/ZOOKEEPER-1564) | Allow JUnit test build with IBM Java |  Major | tests | Paulo Ricardo Paz Vital | Paulo Ricardo Paz Vital |
| [ZOOKEEPER-1552](https://issues.apache.org/jira/browse/ZOOKEEPER-1552) | Enable sync request processor in Observer |  Major | quorum, server | Thawan Kooburat | Flavio Junqueira |
| [ZOOKEEPER-1510](https://issues.apache.org/jira/browse/ZOOKEEPER-1510) | Should not log SASL errors for non-secure usage |  Minor | java client | Todd Lipcon | Todd Lipcon |
| [ZOOKEEPER-1505](https://issues.apache.org/jira/browse/ZOOKEEPER-1505) | Multi-thread CommitProcessor |  Major | server | Jay Shrauner | Jay Shrauner |
| [ZOOKEEPER-1503](https://issues.apache.org/jira/browse/ZOOKEEPER-1503) | remove redundant JAAS configuration code in SaslAuthTest and SaslAuthFailTest |  Major | . | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1497](https://issues.apache.org/jira/browse/ZOOKEEPER-1497) | Allow server-side SASL login with JAAS configuration to be programmatically set (rather than only by reading JAAS configuration file) |  Major | server | Matteo Bertozzi | Matteo Bertozzi |
| [ZOOKEEPER-1481](https://issues.apache.org/jira/browse/ZOOKEEPER-1481) | allow the C cli to run exists with a watcher |  Major | c client | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1454](https://issues.apache.org/jira/browse/ZOOKEEPER-1454) | Document how to run autoreconf if cppunit is installed in a non-standard directory |  Trivial | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1435](https://issues.apache.org/jira/browse/ZOOKEEPER-1435) | cap space usage of default log4j rolling policy |  Major | scripts | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1433](https://issues.apache.org/jira/browse/ZOOKEEPER-1433) | improve ZxidRolloverTest (test seems flakey) |  Major | tests | Wing Yew Poon | Patrick Hunt |
| [ZOOKEEPER-1432](https://issues.apache.org/jira/browse/ZOOKEEPER-1432) | Add javadoc and debug logging for checkACL() method in PrepRequestProcessor |  Major | server | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1413](https://issues.apache.org/jira/browse/ZOOKEEPER-1413) | Use on-disk transaction log for learner sync up |  Minor | server | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-1400](https://issues.apache.org/jira/browse/ZOOKEEPER-1400) | Allow logging via callback instead of raw FILE pointer |  Major | c client | Marshall McMullen | Michi Mutsuzaki |
| [ZOOKEEPER-1397](https://issues.apache.org/jira/browse/ZOOKEEPER-1397) | Remove BookKeeper documentation links |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1390](https://issues.apache.org/jira/browse/ZOOKEEPER-1390) | some expensive debug code not protected by a check for debug |  Major | server | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-1389](https://issues.apache.org/jira/browse/ZOOKEEPER-1389) | it would be nice if start-foreground used exec $JAVA in order to get rid of the intermediate shell process |  Major | scripts, server | Roman Shaposhnik | Roman Shaposhnik |
| [ZOOKEEPER-1377](https://issues.apache.org/jira/browse/ZOOKEEPER-1377) | add support for dumping a snapshot file content (similar to LogFormatter) |  Major | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1346](https://issues.apache.org/jira/browse/ZOOKEEPER-1346) | Add Jetty HTTP server support for four letter words. |  Major | server | Camille Fournier | Bill Havanki |
| [ZOOKEEPER-1345](https://issues.apache.org/jira/browse/ZOOKEEPER-1345) | Add a .gitignore file with general exclusions and Eclipse project files excluded |  Trivial | build | Harsh J | Harsh J |
| [ZOOKEEPER-1342](https://issues.apache.org/jira/browse/ZOOKEEPER-1342) | quorum Listener & LearnerCnxAcceptor are missing thread names |  Minor | quorum | Rakesh R | Rakesh R |
| [ZOOKEEPER-1335](https://issues.apache.org/jira/browse/ZOOKEEPER-1335) | Add support for --config to zkEnv.sh to specify a config directory different than what is expected |  Major | . | Arpit Gupta | Arpit Gupta |
| [ZOOKEEPER-1324](https://issues.apache.org/jira/browse/ZOOKEEPER-1324) | Remove Duplicate NEWLEADER packets from the Leader to the Follower. |  Critical | quorum | Mahadev konar | Flavio Junqueira |
| [ZOOKEEPER-1322](https://issues.apache.org/jira/browse/ZOOKEEPER-1322) | Cleanup/fix logging in Quorum code. |  Major | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1321](https://issues.apache.org/jira/browse/ZOOKEEPER-1321) | Add number of client connections metric in JMX and srvr |  Major | . | Neha Narkhede | Neha Narkhede |
| [ZOOKEEPER-1293](https://issues.apache.org/jira/browse/ZOOKEEPER-1293) | Remove unused readyToStart from Leader.java |  Trivial | server, tests | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1292](https://issues.apache.org/jira/browse/ZOOKEEPER-1292) | FLETest is flaky |  Major | leaderElection | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1239](https://issues.apache.org/jira/browse/ZOOKEEPER-1239) | add logging/stats to identify fsync stalls |  Major | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1232](https://issues.apache.org/jira/browse/ZOOKEEPER-1232) | remove unused o.a.z.server.util.Profiler |  Minor | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1229](https://issues.apache.org/jira/browse/ZOOKEEPER-1229) | C client hashtable\_remove redundantly calls hash function |  Trivial | c client | Eric Abbott | Harsh J |
| [ZOOKEEPER-1219](https://issues.apache.org/jira/browse/ZOOKEEPER-1219) | LeaderElectionSupport recipe is unnecessarily dispatching the READY\_START event even if the ELECTED node stopped/expired simultaneously. |  Major | recipes | Rakesh R | Rakesh R |
| [ZOOKEEPER-1175](https://issues.apache.org/jira/browse/ZOOKEEPER-1175) | DataNode references parent node for no reason |  Minor | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1170](https://issues.apache.org/jira/browse/ZOOKEEPER-1170) | Fix compiler (eclipse) warnings: unused imports, unused variables, missing generics |  Minor | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1147](https://issues.apache.org/jira/browse/ZOOKEEPER-1147) | Add support for local sessions |  Major | server | Vishal Kathuria | Thawan Kooburat |
| [ZOOKEEPER-1096](https://issues.apache.org/jira/browse/ZOOKEEPER-1096) | Leader communication should listen on specified IP, not wildcard address |  Minor | server | Jared Cantwell | Germán Blanco |
| [ZOOKEEPER-1019](https://issues.apache.org/jira/browse/ZOOKEEPER-1019) | zkfuse doesn't list dependency on boost in README |  Major | contrib | Karel Vervaeke | Raul Gutierrez Segales |
| [ZOOKEEPER-927](https://issues.apache.org/jira/browse/ZOOKEEPER-927) | there are currently 24 RAT warnings in the build -- address directly or via exclusions |  Minor | build | Patrick Hunt | Michi Mutsuzaki |
| [ZOOKEEPER-756](https://issues.apache.org/jira/browse/ZOOKEEPER-756) | some cleanup and improvements for zooinspector |  Major | contrib | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-751](https://issues.apache.org/jira/browse/ZOOKEEPER-751) | Recipe heading refers to 'recoverable' but should be 'revocable' |  Minor | documentation | Adam Rosien | Michi Mutsuzaki |
| [ZOOKEEPER-721](https://issues.apache.org/jira/browse/ZOOKEEPER-721) | Minor cleanup related to the log4j version change from 1.2.15 -\> 1.2.16 |  Minor | build | Paolo Castagna | Sean Busbey |
| [ZOOKEEPER-716](https://issues.apache.org/jira/browse/ZOOKEEPER-716) | dump server memory detail to the log during startup |  Minor | server | Patrick Hunt | Michi Mutsuzaki |
| [ZOOKEEPER-657](https://issues.apache.org/jira/browse/ZOOKEEPER-657) | Cut down the running time of ZKDatabase corruption. |  Major | tests | Mahadev konar | Michi Mutsuzaki |
| [ZOOKEEPER-556](https://issues.apache.org/jira/browse/ZOOKEEPER-556) | Startup messages should account for common error of missing leading slash in config files |  Major | server | Ted Dunning | Thomas Koch |
| [ZOOKEEPER-107](https://issues.apache.org/jira/browse/ZOOKEEPER-107) | Allow dynamic changes to server cluster membership |  Major | server | Patrick Hunt | Alexander Shraer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1999](https://issues.apache.org/jira/browse/ZOOKEEPER-1999) | Converting CRLF to LF in DynamicConfigBackwardCompatibilityTest |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1992](https://issues.apache.org/jira/browse/ZOOKEEPER-1992) | backward compatibility of zoo.cfg |  Blocker | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1984](https://issues.apache.org/jira/browse/ZOOKEEPER-1984) | testLeaderTimesoutOnNewQuorum is a flakey test |  Major | tests | Patrick Hunt | Alexander Shraer |
| [ZOOKEEPER-1974](https://issues.apache.org/jira/browse/ZOOKEEPER-1974) | winvs2008 jenkins job failing with "unresolved external symbol" |  Blocker | c client | Patrick Hunt | Flavio Junqueira |
| [ZOOKEEPER-1973](https://issues.apache.org/jira/browse/ZOOKEEPER-1973) | Jetty Server changes broke ibm6 support |  Major | server | Patrick Hunt | Bill Havanki |
| [ZOOKEEPER-1969](https://issues.apache.org/jira/browse/ZOOKEEPER-1969) | Fix Port Already In Use for JettyAdminServerTest |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1966](https://issues.apache.org/jira/browse/ZOOKEEPER-1966) | VS and line breaks |  Major | c client | Orion Hodson | Orion Hodson |
| [ZOOKEEPER-1964](https://issues.apache.org/jira/browse/ZOOKEEPER-1964) | Fix Flaky Test in ReconfigTest.java |  Minor | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1945](https://issues.apache.org/jira/browse/ZOOKEEPER-1945) | deb - zkCli.sh, zkServer.sh and zkEnv.sh regression caused by ZOOKEEPER-1663 |  Major | . | Mark Flickinger | Mark Flickinger |
| [ZOOKEEPER-1939](https://issues.apache.org/jira/browse/ZOOKEEPER-1939) | ReconfigRecoveryTest.testNextConfigUnreachable is failing |  Major | tests | Rakesh R | Rakesh R |
| [ZOOKEEPER-1933](https://issues.apache.org/jira/browse/ZOOKEEPER-1933) | Windows release build of zk client cannot connect to zk server |  Major | c client | Norris Lee | Orion Hodson |
| [ZOOKEEPER-1926](https://issues.apache.org/jira/browse/ZOOKEEPER-1926) | Unit tests should only use build/test/data for data |  Major | tests | Enis Soztutar | Enis Soztutar |
| [ZOOKEEPER-1923](https://issues.apache.org/jira/browse/ZOOKEEPER-1923) | A typo in zookeeperStarted document |  Major | documentation | Chengwei Yang | Chengwei Yang |
| [ZOOKEEPER-1913](https://issues.apache.org/jira/browse/ZOOKEEPER-1913) | Invalid manifest files due to bogus revision property value |  Major | build | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-1911](https://issues.apache.org/jira/browse/ZOOKEEPER-1911) | REST contrib module does not include all required files when packaged |  Major | . | Sean Mackrory | Sean Mackrory |
| [ZOOKEEPER-1910](https://issues.apache.org/jira/browse/ZOOKEEPER-1910) | RemoveWatches wrongly removes the watcher if multiple watches exists on a path |  Major | java client, server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1909](https://issues.apache.org/jira/browse/ZOOKEEPER-1909) | removeWatches doesn't return NOWATCHER when there is no watch set |  Major | server | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-1906](https://issues.apache.org/jira/browse/ZOOKEEPER-1906) | zkpython: invalid data in GetData for empty node |  Major | contrib-bindings | Nikita Vetoshkin | Nikita Vetoshkin |
| [ZOOKEEPER-1901](https://issues.apache.org/jira/browse/ZOOKEEPER-1901) | [JDK8] Sort children for comparison in AsyncOps tests |  Minor | tests | Andrew Purtell | Andrew Purtell |
| [ZOOKEEPER-1900](https://issues.apache.org/jira/browse/ZOOKEEPER-1900) |  NullPointerException in truncate |  Blocker | . | Steven Bower | Camille Fournier |
| [ZOOKEEPER-1897](https://issues.apache.org/jira/browse/ZOOKEEPER-1897) | ZK Shell/Cli not processing commands |  Major | java client, scripts | Cameron Gandevia | stack |
| [ZOOKEEPER-1895](https://issues.apache.org/jira/browse/ZOOKEEPER-1895) | update all notice files, copyright, etc... with the new year - 2014 |  Blocker | . | Patrick Hunt | Michi Mutsuzaki |
| [ZOOKEEPER-1894](https://issues.apache.org/jira/browse/ZOOKEEPER-1894) | ObserverTest.testObserver fails consistently |  Major | quorum | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1891](https://issues.apache.org/jira/browse/ZOOKEEPER-1891) | StaticHostProviderTest.testUpdateLoadBalancing times out |  Major | java client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1888](https://issues.apache.org/jira/browse/ZOOKEEPER-1888) | ZkCli.cmd commands fail with "'java' is not recognized as an internal or external command" |  Major | . | Ivan Mitic | Ivan Mitic |
| [ZOOKEEPER-1883](https://issues.apache.org/jira/browse/ZOOKEEPER-1883) | C client unit test failures |  Minor | c client, tests | Abhiraj Butala | Raul Gutierrez Segales |
| [ZOOKEEPER-1878](https://issues.apache.org/jira/browse/ZOOKEEPER-1878) | Inconsistent behavior in autocreation of dataDir and dataLogDir |  Major | quorum | Rakesh R | Rakesh R |
| [ZOOKEEPER-1877](https://issues.apache.org/jira/browse/ZOOKEEPER-1877) | Malformed ACL Id can crash server with skipACL=yes |  Critical | server | Chris Chen | Chris Chen |
| [ZOOKEEPER-1870](https://issues.apache.org/jira/browse/ZOOKEEPER-1870) | flakey test in StandaloneDisabledTest.startSingleServerTest |  Blocker | tests | Patrick Hunt | Helen Hastings |
| [ZOOKEEPER-1864](https://issues.apache.org/jira/browse/ZOOKEEPER-1864) | quorumVerifier is null when creating a QuorumPeerConfig from parsing a Properties object |  Major | server | some one | Michi Mutsuzaki |
| [ZOOKEEPER-1863](https://issues.apache.org/jira/browse/ZOOKEEPER-1863) | Race condition in commit processor leading to out of order request completion, xid mismatch on client. |  Blocker | server | Dutch T. Meyer | Dutch T. Meyer |
| [ZOOKEEPER-1862](https://issues.apache.org/jira/browse/ZOOKEEPER-1862) | ServerCnxnTest.testServerCnxnExpiry is intermittently failing |  Major | tests | Rakesh R | Rakesh R |
| [ZOOKEEPER-1861](https://issues.apache.org/jira/browse/ZOOKEEPER-1861) | ConcurrentHashMap isn't used properly in QuorumCnxManager |  Minor | . | Ted Yu | Ted Yu |
| [ZOOKEEPER-1860](https://issues.apache.org/jira/browse/ZOOKEEPER-1860) | Async versions of reconfig don't actually throw KeeperException nor InterruptedException |  Major | java client | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-1851](https://issues.apache.org/jira/browse/ZOOKEEPER-1851) | Follower and Observer Request Processors Do Not Forward create2 Requests |  Blocker | quorum | Chris Chen | Chris Chen |
| [ZOOKEEPER-1844](https://issues.apache.org/jira/browse/ZOOKEEPER-1844) | TruncateTest fails on windows |  Critical | server | Michi Mutsuzaki | Rakesh R |
| [ZOOKEEPER-1843](https://issues.apache.org/jira/browse/ZOOKEEPER-1843) | Oddity in ByteBufferInputStream skip |  Minor | . | Justin SB | Bill Havanki |
| [ZOOKEEPER-1839](https://issues.apache.org/jira/browse/ZOOKEEPER-1839) | Deadlock in NettyServerCnxn |  Critical | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1836](https://issues.apache.org/jira/browse/ZOOKEEPER-1836) | addrvec\_next() fails to set next parameter if addrvec\_hasnext() returns false |  Trivial | c client | Dutch T. Meyer | Dutch T. Meyer |
| [ZOOKEEPER-1835](https://issues.apache.org/jira/browse/ZOOKEEPER-1835) | dynamic configuration file renaming fails on Windows |  Major | quorum | Bruno Freudensprung | Bruno Freudensprung |
| [ZOOKEEPER-1821](https://issues.apache.org/jira/browse/ZOOKEEPER-1821) | very ugly warning when compiling load\_gen.c |  Major | c client | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1819](https://issues.apache.org/jira/browse/ZOOKEEPER-1819) | DeserializationPerfTest calls method with wrong arguments |  Minor | tests | Daniel Knightly | Daniel Knightly |
| [ZOOKEEPER-1812](https://issues.apache.org/jira/browse/ZOOKEEPER-1812) | ZooInspector reconnection always fails if first connection fails |  Minor | contrib | Benjamin Jaton | Benjamin Jaton |
| [ZOOKEEPER-1811](https://issues.apache.org/jira/browse/ZOOKEEPER-1811) | The ZooKeeperSaslClient service name principal is hardcoded to "zookeeper" |  Major | java client | Harsh J | Harsh J |
| [ZOOKEEPER-1810](https://issues.apache.org/jira/browse/ZOOKEEPER-1810) | Add version to FLE notifications for trunk |  Major | leaderElection | Flavio Junqueira | Germán Blanco |
| [ZOOKEEPER-1799](https://issues.apache.org/jira/browse/ZOOKEEPER-1799) | SaslAuthFailDesignatedClientTest.testAuth fails frequently on SUSE |  Minor | tests | Jeffrey Zhong | Jeffrey Zhong |
| [ZOOKEEPER-1798](https://issues.apache.org/jira/browse/ZOOKEEPER-1798) | Fix race condition in testNormalObserverRun |  Blocker | . | Flavio Junqueira | Thawan Kooburat |
| [ZOOKEEPER-1797](https://issues.apache.org/jira/browse/ZOOKEEPER-1797) | PurgeTxnLog may delete data logs during roll |  Blocker | server | Derek Dagit | Rakesh R |
| [ZOOKEEPER-1795](https://issues.apache.org/jira/browse/ZOOKEEPER-1795) | unable to build c client on ubuntu |  Blocker | c client | Patrick Hunt | Raul Gutierrez Segales |
| [ZOOKEEPER-1791](https://issues.apache.org/jira/browse/ZOOKEEPER-1791) | ZooKeeper package includes unnecessary jars that are part of the package. |  Major | build | Mahadev konar | Mahadev konar |
| [ZOOKEEPER-1789](https://issues.apache.org/jira/browse/ZOOKEEPER-1789) | 3.4.x observer causes NPE on 3.5.0 (trunk) participants |  Critical | . | Raul Gutierrez Segales | Alexander Shraer |
| [ZOOKEEPER-1786](https://issues.apache.org/jira/browse/ZOOKEEPER-1786) | ZooKeeper data model documentation is incorrect |  Minor | documentation | Niraj Tolia | Niraj Tolia |
| [ZOOKEEPER-1783](https://issues.apache.org/jira/browse/ZOOKEEPER-1783) | Distinguish initial configuration from first established configuration |  Major | quorum, server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1781](https://issues.apache.org/jira/browse/ZOOKEEPER-1781) | ZooKeeper Server fails if snapCount is set to 1 |  Minor | quorum | Takashi Ohnishi | Takashi Ohnishi |
| [ZOOKEEPER-1779](https://issues.apache.org/jira/browse/ZOOKEEPER-1779) | ReconfigTest littering the source root with test files |  Critical | tests | Patrick Hunt | Abhiraj Butala |
| [ZOOKEEPER-1774](https://issues.apache.org/jira/browse/ZOOKEEPER-1774) | QuorumPeerMainTest fails consistently with "complains about host" assertion failure |  Blocker | quorum, tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1773](https://issues.apache.org/jira/browse/ZOOKEEPER-1773) | incorrect reference to jline version/lib in docs |  Major | documentation | Patrick Hunt | Manikumar Reddy |
| [ZOOKEEPER-1770](https://issues.apache.org/jira/browse/ZOOKEEPER-1770) | NullPointerException in SnapshotFormatter |  Minor | . | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1769](https://issues.apache.org/jira/browse/ZOOKEEPER-1769) | ZooInspector can't display node data/metadata/ACLs |  Minor | contrib | Benjamin Jaton | Benjamin Jaton |
| [ZOOKEEPER-1765](https://issues.apache.org/jira/browse/ZOOKEEPER-1765) | Update code conventions link on "How to contribute" page |  Trivial | documentation | Flavio Junqueira | Patrick Hunt |
| [ZOOKEEPER-1756](https://issues.apache.org/jira/browse/ZOOKEEPER-1756) | zookeeper\_interest() in C client can return a timeval of 0 |  Major | c client | Eric Lindvall | Eric Lindvall |
| [ZOOKEEPER-1755](https://issues.apache.org/jira/browse/ZOOKEEPER-1755) | Concurrent operations of four letter 'dump' ephemeral command and killSession causing NPE |  Major | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1754](https://issues.apache.org/jira/browse/ZOOKEEPER-1754) | Read-only server allows to create znode |  Critical | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1753](https://issues.apache.org/jira/browse/ZOOKEEPER-1753) | ClientCnxn is not properly releasing the resources, which are used to ping RwServer |  Major | java client | Rakesh R | Rakesh R |
| [ZOOKEEPER-1751](https://issues.apache.org/jira/browse/ZOOKEEPER-1751) | ClientCnxn#run could miss the second ping or connection get dropped before a ping |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [ZOOKEEPER-1750](https://issues.apache.org/jira/browse/ZOOKEEPER-1750) | Race condition producing NPE in NIOServerCnxn.toString |  Minor | server | Helen Hastings | Rakesh R |
| [ZOOKEEPER-1745](https://issues.apache.org/jira/browse/ZOOKEEPER-1745) | Wrong Import-Package in the META-INF/MANIFEST.MF of zookeeper 3.4.5 bundle |  Major | server | Xilai Dai | Jean-Baptiste Onofré |
| [ZOOKEEPER-1744](https://issues.apache.org/jira/browse/ZOOKEEPER-1744) | clientPortAddress breaks "zkServer.sh status" |  Critical | scripts | Nick Ohanian | Nick Ohanian |
| [ZOOKEEPER-1733](https://issues.apache.org/jira/browse/ZOOKEEPER-1733) | FLETest#testLE is flaky on windows boxes |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [ZOOKEEPER-1732](https://issues.apache.org/jira/browse/ZOOKEEPER-1732) | ZooKeeper server unable to join established ensemble |  Blocker | leaderElection | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1725](https://issues.apache.org/jira/browse/ZOOKEEPER-1725) | Zookeeper Dynamic Conf writes out hostnames when IPs are supplied |  Minor | . | Justin SB | Michi Mutsuzaki |
| [ZOOKEEPER-1719](https://issues.apache.org/jira/browse/ZOOKEEPER-1719) | zkCli.sh, zkServer.sh and zkEnv.sh regression caused by ZOOKEEPER-1663 |  Major | . | Marshall McMullen | Marshall McMullen |
| [ZOOKEEPER-1714](https://issues.apache.org/jira/browse/ZOOKEEPER-1714) | perl client segfaults if ZOO\_READ\_ACL\_UNSAFE constant is used |  Minor | contrib-bindings | Botond Hejj | Botond Hejj |
| [ZOOKEEPER-1713](https://issues.apache.org/jira/browse/ZOOKEEPER-1713) | wrong time calculation in zkfuse.cc |  Trivial | . | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1706](https://issues.apache.org/jira/browse/ZOOKEEPER-1706) | Typo in Double Barriers example |  Minor | documentation | Jingguo Yao | Jingguo Yao |
| [ZOOKEEPER-1702](https://issues.apache.org/jira/browse/ZOOKEEPER-1702) | ZooKeeper client may write operation packets before receiving successful response to connection request, can cause TCP RST |  Major | java client | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-1700](https://issues.apache.org/jira/browse/ZOOKEEPER-1700) | FLETest consistently failing - setLastSeenQuorumVerifier seems to be hanging |  Critical | quorum | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1699](https://issues.apache.org/jira/browse/ZOOKEEPER-1699) | Leader should timeout and give up leadership when losing quorum of last proposed configuration |  Blocker | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1697](https://issues.apache.org/jira/browse/ZOOKEEPER-1697) | large snapshots can cause continuous quorum failure |  Critical | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1696](https://issues.apache.org/jira/browse/ZOOKEEPER-1696) | Fail to run zookeeper client on Weblogic application server |  Critical | java client | Dmitry Konstantinov | Jeffrey Zhong |
| [ZOOKEEPER-1695](https://issues.apache.org/jira/browse/ZOOKEEPER-1695) | Inconsistent error code and type for new errors introduced by dynamic reconfiguration |  Blocker | server | Thawan Kooburat | Michi Mutsuzaki |
| [ZOOKEEPER-1683](https://issues.apache.org/jira/browse/ZOOKEEPER-1683) | ZooKeeper client NPE when updating server list on disconnected client |  Major | java client | Shevek | Alexander Shraer |
| [ZOOKEEPER-1673](https://issues.apache.org/jira/browse/ZOOKEEPER-1673) | Zookeeper don't support cidr in expression in ACL with ip scheme |  Minor | . | Lipin Dmitriy | Craig Condit |
| [ZOOKEEPER-1672](https://issues.apache.org/jira/browse/ZOOKEEPER-1672) | zookeeper client does not accept "-members" option in reconfig command |  Trivial | java client | Xiaoshuang Wang | Xiaoshuang Wang |
| [ZOOKEEPER-1670](https://issues.apache.org/jira/browse/ZOOKEEPER-1670) | zookeeper should set a default value for SERVER\_JVMFLAGS and CLIENT\_JVMFLAGS so that memory usage is controlled |  Major | . | Arpit Gupta | Flavio Junqueira |
| [ZOOKEEPER-1667](https://issues.apache.org/jira/browse/ZOOKEEPER-1667) | Watch event isn't handled correctly when a client reestablish to a server |  Blocker | server | Jacky007 | Flavio Junqueira |
| [ZOOKEEPER-1663](https://issues.apache.org/jira/browse/ZOOKEEPER-1663) | scripts don't work when path contains spaces |  Minor | scripts | Amichai Rothman | Amichai Rothman |
| [ZOOKEEPER-1662](https://issues.apache.org/jira/browse/ZOOKEEPER-1662) | Fix to two small bugs in ReconfigTest.testPortChange() |  Minor | tests | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1659](https://issues.apache.org/jira/browse/ZOOKEEPER-1659) | Add JMX support for dynamic reconfiguration |  Blocker | server | Alexander Shraer | Rakesh R |
| [ZOOKEEPER-1657](https://issues.apache.org/jira/browse/ZOOKEEPER-1657) | Increased CPU usage by unnecessary SASL checks |  Major | java client | Gunnar Wagenknecht | Philip K. Warren |
| [ZOOKEEPER-1655](https://issues.apache.org/jira/browse/ZOOKEEPER-1655) | Make jline dependency optional in maven pom |  Major | build | Thomas Weise | Thomas Weise |
| [ZOOKEEPER-1648](https://issues.apache.org/jira/browse/ZOOKEEPER-1648) | Fix WatcherTest in JDK7 |  Minor | tests | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-1647](https://issues.apache.org/jira/browse/ZOOKEEPER-1647) | OSGi package import/export changes not applied to bin-jar |  Major | . | Arnoud Glimmerveen | Arnoud Glimmerveen |
| [ZOOKEEPER-1646](https://issues.apache.org/jira/browse/ZOOKEEPER-1646) | mt c client tests fail on Ubuntu Raring |  Blocker | c client, tests | James Page | Patrick Hunt |
| [ZOOKEEPER-1645](https://issues.apache.org/jira/browse/ZOOKEEPER-1645) | ZooKeeper OSGi package imports not complete |  Major | . | Arnoud Glimmerveen | Arnoud Glimmerveen |
| [ZOOKEEPER-1643](https://issues.apache.org/jira/browse/ZOOKEEPER-1643) | Windows: fetch\_and\_add not 64bit-compatible, may not be correct |  Major | c client | Erik Anderson |  |
| [ZOOKEEPER-1642](https://issues.apache.org/jira/browse/ZOOKEEPER-1642) | Leader loading database twice |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1641](https://issues.apache.org/jira/browse/ZOOKEEPER-1641) | Using slope=positive results in a jagged ganglia graph of packets rcvd/sent |  Minor | contrib | Ben Hartshorne | Ben Hartshorne |
| [ZOOKEEPER-1632](https://issues.apache.org/jira/browse/ZOOKEEPER-1632) | fix memory leaks in cli\_st |  Minor | c client | Colin Patrick McCabe | Flavio Junqueira |
| [ZOOKEEPER-1629](https://issues.apache.org/jira/browse/ZOOKEEPER-1629) | testTransactionLogCorruption occasionally fails |  Major | tests | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1628](https://issues.apache.org/jira/browse/ZOOKEEPER-1628) | Documented list of allowable characters in ZK doc not in line with code |  Major | documentation, java client | Gabriel Reid | Gabriel Reid |
| [ZOOKEEPER-1625](https://issues.apache.org/jira/browse/ZOOKEEPER-1625) | zkServer.sh is looking for clientPort in config file, but it may no longer be there with ZK-1411 |  Major | scripts | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1624](https://issues.apache.org/jira/browse/ZOOKEEPER-1624) | PrepRequestProcessor abort multi-operation incorrectly |  Critical | server | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-1622](https://issues.apache.org/jira/browse/ZOOKEEPER-1622) | session ids will be negative in the year 2022 |  Trivial | . | Eric Newton | Eric Newton |
| [ZOOKEEPER-1620](https://issues.apache.org/jira/browse/ZOOKEEPER-1620) | NIOServerCnxnFactory (new code introduced in ZK-1504) opens selectors but never closes them |  Major | server | Alexander Shraer | Thawan Kooburat |
| [ZOOKEEPER-1613](https://issues.apache.org/jira/browse/ZOOKEEPER-1613) | The documentation still points to 2008 in the copyright notice |  Trivial | documentation | Edward Ribeiro | Edward Ribeiro |
| [ZOOKEEPER-1610](https://issues.apache.org/jira/browse/ZOOKEEPER-1610) | Some classes are using == or != to compare Long/String objects instead of .equals() |  Critical | java client, quorum | Edward Ribeiro | Edward Ribeiro |
| [ZOOKEEPER-1606](https://issues.apache.org/jira/browse/ZOOKEEPER-1606) | intermittent failures in ZkDatabaseCorruptionTest on jenkins |  Major | tests | Patrick Hunt | lixiaofeng |
| [ZOOKEEPER-1603](https://issues.apache.org/jira/browse/ZOOKEEPER-1603) | StaticHostProviderTest testUpdateClientMigrateOrNot hangs |  Blocker | tests | Patrick Hunt | Flavio Junqueira |
| [ZOOKEEPER-1602](https://issues.apache.org/jira/browse/ZOOKEEPER-1602) | a change to QuorumPeerConfig's API broke compatibility with HBase |  Blocker | server | Patrick Hunt | Alexander Shraer |
| [ZOOKEEPER-1597](https://issues.apache.org/jira/browse/ZOOKEEPER-1597) | Windows build failing |  Major | build, c client | Alexander Shraer | Michi Mutsuzaki |
| [ZOOKEEPER-1596](https://issues.apache.org/jira/browse/ZOOKEEPER-1596) | Zab1\_0Test should ensure that the file is closed |  Major | . | Enis Soztutar | Enis Soztutar |
| [ZOOKEEPER-1591](https://issues.apache.org/jira/browse/ZOOKEEPER-1591) | Windows build is broken because inttypes.h doesn't exist |  Major | c client | Michi Mutsuzaki | Marshall McMullen |
| [ZOOKEEPER-1590](https://issues.apache.org/jira/browse/ZOOKEEPER-1590) | Patch to add zk.updateServerList(newServerList) broke the build |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1585](https://issues.apache.org/jira/browse/ZOOKEEPER-1585) | make dist for src/c broken in trunk |  Major | c client | Raul Gutierrez Segales |  |
| [ZOOKEEPER-1581](https://issues.apache.org/jira/browse/ZOOKEEPER-1581) | change copyright in notice to 2012 |  Major | build | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-1578](https://issues.apache.org/jira/browse/ZOOKEEPER-1578) | org.apache.zookeeper.server.quorum.Zab1\_0Test failed due to hard code with 33556 port |  Major | . | Li Ping Zhang | Li Ping Zhang |
| [ZOOKEEPER-1576](https://issues.apache.org/jira/browse/ZOOKEEPER-1576) | Zookeeper cluster - failed to connect to cluster if one of the provided IPs causes java.net.UnknownHostException |  Major | server | Tally Tsabary | Edward Ribeiro |
| [ZOOKEEPER-1575](https://issues.apache.org/jira/browse/ZOOKEEPER-1575) | adding .gitattributes to prevent CRLF and LF mismatches for source and text files |  Major | . | Raja Aluri | Raja Aluri |
| [ZOOKEEPER-1573](https://issues.apache.org/jira/browse/ZOOKEEPER-1573) | Unable to load database due to missing parent node |  Critical | server | Thawan Kooburat | Vinayakumar B |
| [ZOOKEEPER-1562](https://issues.apache.org/jira/browse/ZOOKEEPER-1562) | Memory leaks in zoo\_multi API |  Trivial | c client | Deepak Jagtap | Deepak Jagtap |
| [ZOOKEEPER-1560](https://issues.apache.org/jira/browse/ZOOKEEPER-1560) | Zookeeper client hangs on creation of large nodes |  Major | java client | Igor Motov | Skye Wanderman-Milne |
| [ZOOKEEPER-1557](https://issues.apache.org/jira/browse/ZOOKEEPER-1557) | jenkins jdk7 test failure in testBadSaslAuthNotifiesWatch |  Major | server, tests | Patrick Hunt | Eugene Koontz |
| [ZOOKEEPER-1554](https://issues.apache.org/jira/browse/ZOOKEEPER-1554) | Can't use zookeeper client without SASL |  Blocker | . | Guillaume Nodet |  |
| [ZOOKEEPER-1553](https://issues.apache.org/jira/browse/ZOOKEEPER-1553) | Findbugs configuration is missing some dependencies |  Minor | build | Sean Busbey | Sean Busbey |
| [ZOOKEEPER-1551](https://issues.apache.org/jira/browse/ZOOKEEPER-1551) | Observers ignore txns that come after snapshot and UPTODATE |  Blocker | quorum, server | Thawan Kooburat | Thawan Kooburat |
| [ZOOKEEPER-1540](https://issues.apache.org/jira/browse/ZOOKEEPER-1540) | ZOOKEEPER-1411 breaks backwards compatibility |  Major | . | Andrew Ferguson |  |
| [ZOOKEEPER-1538](https://issues.apache.org/jira/browse/ZOOKEEPER-1538) | Improve space handling in zkServer.sh and zkEnv.sh |  Trivial | . | Andrew Ferguson | Andrew Ferguson |
| [ZOOKEEPER-1536](https://issues.apache.org/jira/browse/ZOOKEEPER-1536) | c client : memory leak in winport.c |  Major | c client | brooklin | brooklin |
| [ZOOKEEPER-1535](https://issues.apache.org/jira/browse/ZOOKEEPER-1535) | ZK Shell/Cli re-executes last command on exit |  Major | scripts | Stu Hood | Edward Ribeiro |
| [ZOOKEEPER-1533](https://issues.apache.org/jira/browse/ZOOKEEPER-1533) | Correct the documentation of the args for the JavaExample doc. |  Minor | documentation | Warren Turkal |  |
| [ZOOKEEPER-1522](https://issues.apache.org/jira/browse/ZOOKEEPER-1522) | intermittent failures in Zab test due to NPE in recursiveDelete test function |  Major | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1521](https://issues.apache.org/jira/browse/ZOOKEEPER-1521) | LearnerHandler initLimit/syncLimit problems specifying follower socket timeout limits |  Critical | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1514](https://issues.apache.org/jira/browse/ZOOKEEPER-1514) | FastLeaderElection - leader ignores the round information when joining a quorum |  Critical | quorum | Patrick Hunt | Flavio Junqueira |
| [ZOOKEEPER-1513](https://issues.apache.org/jira/browse/ZOOKEEPER-1513) | "Unreasonable length" exception while starting a server. |  Major | server | Patrick Hunt | Skye Wanderman-Milne |
| [ZOOKEEPER-1501](https://issues.apache.org/jira/browse/ZOOKEEPER-1501) | Nagios plugin always returns OK when it cannot connect to zookeeper |  Major | contrib | Brian Sutherland | Brian Sutherland |
| [ZOOKEEPER-1499](https://issues.apache.org/jira/browse/ZOOKEEPER-1499) | clientPort config changes not backwards-compatible |  Blocker | server | Camille Fournier | Alexander Shraer |
| [ZOOKEEPER-1496](https://issues.apache.org/jira/browse/ZOOKEEPER-1496) | Ephemeral node not getting cleared even after client has exited |  Critical | server | suja s | Rakesh R |
| [ZOOKEEPER-1495](https://issues.apache.org/jira/browse/ZOOKEEPER-1495) | ZK client hangs when using a function not available on the server. |  Minor | server | Nicolas Liochon | Nicolas Liochon |
| [ZOOKEEPER-1494](https://issues.apache.org/jira/browse/ZOOKEEPER-1494) | C client: socket leak after receive timeout in zookeeper\_interest() |  Major | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1493](https://issues.apache.org/jira/browse/ZOOKEEPER-1493) | C Client: zookeeper\_process doesn't invoke completion callback if zookeeper\_close has been called |  Major | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1490](https://issues.apache.org/jira/browse/ZOOKEEPER-1490) |  If the configured log directory does not exist zookeeper will not start. Better to create the directory and start |  Minor | scripts | suja s | suja s |
| [ZOOKEEPER-1489](https://issues.apache.org/jira/browse/ZOOKEEPER-1489) | Data loss after truncate on transaction log |  Blocker | server | Christian Ziech | Patrick Hunt |
| [ZOOKEEPER-1483](https://issues.apache.org/jira/browse/ZOOKEEPER-1483) | Fix leader election recipe documentation |  Major | documentation | Ankur | Michi Mutsuzaki |
| [ZOOKEEPER-1478](https://issues.apache.org/jira/browse/ZOOKEEPER-1478) | Small bug in QuorumTest.testFollowersStartAfterLeader( ) |  Minor | tests | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1474](https://issues.apache.org/jira/browse/ZOOKEEPER-1474) | Cannot build Zookeeper with IBM Java: use of Sun MXBean classes |  Major | build | Adalberto Medeiros | Paulo Ricardo Paz Vital |
| [ZOOKEEPER-1471](https://issues.apache.org/jira/browse/ZOOKEEPER-1471) | Jute generates invalid C++ code |  Minor | jute | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1466](https://issues.apache.org/jira/browse/ZOOKEEPER-1466) | QuorumCnxManager.shutdown missing synchronization |  Blocker | quorum | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1465](https://issues.apache.org/jira/browse/ZOOKEEPER-1465) | Cluster availability following new leader election takes a long time with large datasets - is correlated to dataset size |  Critical | leaderElection | Alex Gvozdenovic | Camille Fournier |
| [ZOOKEEPER-1451](https://issues.apache.org/jira/browse/ZOOKEEPER-1451) | C API improperly logs getaddrinfo failures on Linux when using glibc |  Trivial | c client | Stephen Tyree | Stephen Tyree |
| [ZOOKEEPER-1448](https://issues.apache.org/jira/browse/ZOOKEEPER-1448) | Node+Quota creation in transaction log can crash leader startup |  Critical | server | Botond Hejj | Flavio Junqueira |
| [ZOOKEEPER-1440](https://issues.apache.org/jira/browse/ZOOKEEPER-1440) | Spurious log error messages when QuorumCnxManager is shutting down |  Minor | quorum, server | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-1439](https://issues.apache.org/jira/browse/ZOOKEEPER-1439) | c sdk: core in log\_env for lack of checking the output argument \*pwp\* of getpwuid\_r |  Major | c client | Yubing Yin | Yubing Yin |
| [ZOOKEEPER-1437](https://issues.apache.org/jira/browse/ZOOKEEPER-1437) | Client uses session before SASL authentication complete |  Major | java client | Thomas Weise | Eugene Koontz |
| [ZOOKEEPER-1431](https://issues.apache.org/jira/browse/ZOOKEEPER-1431) | zkpython: async calls leak memory |  Major | contrib-bindings | johan rydberg | Kapil Thangavelu |
| [ZOOKEEPER-1427](https://issues.apache.org/jira/browse/ZOOKEEPER-1427) | Writing to local files is done non-atomically |  Critical | server | Todd Lipcon | Patrick Hunt |
| [ZOOKEEPER-1419](https://issues.apache.org/jira/browse/ZOOKEEPER-1419) | Leader election never settles for a 5-node cluster |  Blocker | leaderElection | Jeremy Stribling | Flavio Junqueira |
| [ZOOKEEPER-1417](https://issues.apache.org/jira/browse/ZOOKEEPER-1417) | investigate differences in client last zxid handling btw c and java clients |  Major | c client, java client | Patrick Hunt | Thawan Kooburat |
| [ZOOKEEPER-1412](https://issues.apache.org/jira/browse/ZOOKEEPER-1412) | java client watches inconsistently triggered on reconnect |  Blocker | server | Botond Hejj | Patrick Hunt |
| [ZOOKEEPER-1406](https://issues.apache.org/jira/browse/ZOOKEEPER-1406) | dpkg init scripts don't restart - missing check\_priv\_sep\_dir |  Major | scripts | Chris Beauchamp | Chris Beauchamp |
| [ZOOKEEPER-1403](https://issues.apache.org/jira/browse/ZOOKEEPER-1403) | zkCli.sh script quoting issue |  Minor | scripts | James Page | James Page |
| [ZOOKEEPER-1395](https://issues.apache.org/jira/browse/ZOOKEEPER-1395) | node-watcher double-free redux |  Critical | c client, contrib-bindings | Mike Lundy | Mike Lundy |
| [ZOOKEEPER-1388](https://issues.apache.org/jira/browse/ZOOKEEPER-1388) | Client side 'PathValidation' is missing for the multi-transaction api. |  Major | java client | Rakesh R | Rakesh R |
| [ZOOKEEPER-1387](https://issues.apache.org/jira/browse/ZOOKEEPER-1387) | Wrong epoch file created |  Minor | quorum | Benjamin Busjaeger | Benjamin Reed |
| [ZOOKEEPER-1386](https://issues.apache.org/jira/browse/ZOOKEEPER-1386) | avoid flaky URL redirection in "ant javadoc" : replace "http://java.sun.com/javase/6/docs/api/" with "http://download.oracle.com/javase/6/docs/api/" |  Minor | documentation | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1384](https://issues.apache.org/jira/browse/ZOOKEEPER-1384) | test-cppunit overrides LD\_LIBRARY\_PATH and fails if gcc is in non-standard location |  Minor | build, tests | Jay Shrauner | Jay Shrauner |
| [ZOOKEEPER-1382](https://issues.apache.org/jira/browse/ZOOKEEPER-1382) | Zookeeper server holds onto dead/expired session ids in the watch data structures |  Critical | server | Neha Narkhede | Germán Blanco |
| [ZOOKEEPER-1380](https://issues.apache.org/jira/browse/ZOOKEEPER-1380) | zkperl: \_zk\_release\_watch doesn't remove items properly from the watch list |  Major | contrib-bindings | Botond Hejj | Botond Hejj |
| [ZOOKEEPER-1379](https://issues.apache.org/jira/browse/ZOOKEEPER-1379) | 'printwatches, redo, history and connect '. client commands always print usage. This is not necessary |  Minor | java client | kavita sharma | Edward Ribeiro |
| [ZOOKEEPER-1374](https://issues.apache.org/jira/browse/ZOOKEEPER-1374) | C client multi-threaded test suite fails to compile on ARM architectures. |  Minor | c client | James Page | James Page |
| [ZOOKEEPER-1373](https://issues.apache.org/jira/browse/ZOOKEEPER-1373) | Hardcoded SASL login context name clashes with Hadoop security configuration override |  Major | java client | Thomas Weise | Eugene Koontz |
| [ZOOKEEPER-1367](https://issues.apache.org/jira/browse/ZOOKEEPER-1367) | Data inconsistencies and unexpired ephemeral nodes after cluster restart |  Blocker | server | Jeremy Stribling | Benjamin Reed |
| [ZOOKEEPER-1361](https://issues.apache.org/jira/browse/ZOOKEEPER-1361) | Leader.lead iterates over 'learners' set without proper synchronisation |  Major | . | Henry Robinson | Henry Robinson |
| [ZOOKEEPER-1358](https://issues.apache.org/jira/browse/ZOOKEEPER-1358) | In StaticHostProviderTest.java, testNextDoesNotSleepForZero tests that hostProvider.next(0) doesn't sleep by checking that the latency of this call is less than 10sec |  Trivial | . | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1357](https://issues.apache.org/jira/browse/ZOOKEEPER-1357) | Zab1\_0Test uses hard-wired port numbers. Specifically, it uses the same port for leader in two different tests. The second test periodically fails complaining that the port is still in use. |  Minor | tests | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1354](https://issues.apache.org/jira/browse/ZOOKEEPER-1354) | AuthTest.testBadAuthThenSendOtherCommands fails intermittently |  Major | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1353](https://issues.apache.org/jira/browse/ZOOKEEPER-1353) | C client test suite fails consistently |  Minor | c client, tests | Clint Byrum | Clint Byrum |
| [ZOOKEEPER-1352](https://issues.apache.org/jira/browse/ZOOKEEPER-1352) | server.InvalidSnapshotTest is using connection timeouts that are too short |  Major | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1351](https://issues.apache.org/jira/browse/ZOOKEEPER-1351) | invalid test verification in MultiTransactionTest |  Major | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1343](https://issues.apache.org/jira/browse/ZOOKEEPER-1343) | getEpochToPropose should check if lastAcceptedEpoch is greater or equal than epoch |  Critical | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1340](https://issues.apache.org/jira/browse/ZOOKEEPER-1340) | multi problem - typical user operations are generating ERROR level messages in the server |  Major | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1339](https://issues.apache.org/jira/browse/ZOOKEEPER-1339) | C clien doesn't build with --enable-debug |  Major | c client | Jakub Lekstan | Eric Liang |
| [ZOOKEEPER-1338](https://issues.apache.org/jira/browse/ZOOKEEPER-1338) | class cast exceptions may be thrown by multi ErrorResult class (invalid equals) |  Major | java client | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1336](https://issues.apache.org/jira/browse/ZOOKEEPER-1336) | javadoc for multi is confusing, references functionality that doesn't seem to exist |  Major | java client | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1334](https://issues.apache.org/jira/browse/ZOOKEEPER-1334) | Zookeeper 3.4.x is not OSGi compliant - MANIFEST.MF is flawed |  Major | . | Claus Ibsen | Claus Ibsen |
| [ZOOKEEPER-1333](https://issues.apache.org/jira/browse/ZOOKEEPER-1333) | NPE in FileTxnSnapLog when restarting a cluster |  Blocker | server | Andrew McNair | Patrick Hunt |
| [ZOOKEEPER-1331](https://issues.apache.org/jira/browse/ZOOKEEPER-1331) | Typo in docs: acheive -\> achieve |  Minor | documentation | Andrew Ash | Andrew Ash |
| [ZOOKEEPER-1327](https://issues.apache.org/jira/browse/ZOOKEEPER-1327) | there are still remnants of hadoop urls |  Major | . | Benjamin Reed | Harsh J |
| [ZOOKEEPER-1323](https://issues.apache.org/jira/browse/ZOOKEEPER-1323) | c client doesn't compile on freebsd |  Major | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1319](https://issues.apache.org/jira/browse/ZOOKEEPER-1319) | Missing data after restarting+expanding a cluster |  Blocker | . | Jeremy Stribling | Patrick Hunt |
| [ZOOKEEPER-1318](https://issues.apache.org/jira/browse/ZOOKEEPER-1318) | In Python binding, get\_children (and get and exists, and probably others) with expired session doesn't raise exception properly |  Major | contrib-bindings | Jim Fulton | Henry Robinson |
| [ZOOKEEPER-1317](https://issues.apache.org/jira/browse/ZOOKEEPER-1317) | Possible segfault in zookeeper\_init |  Minor | c client | Akira Kitada | Akira Kitada |
| [ZOOKEEPER-1316](https://issues.apache.org/jira/browse/ZOOKEEPER-1316) | zookeeper\_init leaks memory if chroot is just '/' |  Minor | c client | Akira Kitada | Akira Kitada |
| [ZOOKEEPER-1315](https://issues.apache.org/jira/browse/ZOOKEEPER-1315) | zookeeper\_init always reports sessionPasswd=\<hidden\> |  Minor | c client | Akira Kitada | Akira Kitada |
| [ZOOKEEPER-1311](https://issues.apache.org/jira/browse/ZOOKEEPER-1311) | ZooKeeper test jar is broken |  Blocker | . | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-1307](https://issues.apache.org/jira/browse/ZOOKEEPER-1307) | zkCli.sh is exiting when an Invalid ACL exception is thrown from setACL command through client |  Minor | java client | amith | kavita sharma |
| [ZOOKEEPER-1305](https://issues.apache.org/jira/browse/ZOOKEEPER-1305) | zookeeper.c:prepend\_string func can dereference null ptr |  Major | c client | Daniel Lescohier | Daniel Lescohier |
| [ZOOKEEPER-1277](https://issues.apache.org/jira/browse/ZOOKEEPER-1277) | servers stop serving when lower 32bits of zxid roll over |  Critical | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1273](https://issues.apache.org/jira/browse/ZOOKEEPER-1273) | Copy'n'pasted unit test |  Trivial | tests | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1271](https://issues.apache.org/jira/browse/ZOOKEEPER-1271) | testEarlyLeaderAbandonment failing on solaris - clients not retrying connection |  Blocker | java client | Patrick Hunt | Mahadev konar |
| [ZOOKEEPER-1270](https://issues.apache.org/jira/browse/ZOOKEEPER-1270) | testEarlyLeaderAbandonment failing intermittently, quorum formed, no serving. |  Blocker | server | Patrick Hunt | Flavio Junqueira |
| [ZOOKEEPER-1269](https://issues.apache.org/jira/browse/ZOOKEEPER-1269) | Multi deserialization issues |  Major | server | Camille Fournier | Camille Fournier |
| [ZOOKEEPER-1268](https://issues.apache.org/jira/browse/ZOOKEEPER-1268) | problems with read only mode, intermittent test failures and ERRORs in the log |  Blocker | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1264](https://issues.apache.org/jira/browse/ZOOKEEPER-1264) | FollowerResyncConcurrencyTest failing intermittently |  Blocker | tests | Patrick Hunt | Camille Fournier |
| [ZOOKEEPER-1262](https://issues.apache.org/jira/browse/ZOOKEEPER-1262) | Documentation for Lock recipe has major flaw |  Major | documentation | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-1256](https://issues.apache.org/jira/browse/ZOOKEEPER-1256) | ClientPortBindTest is failing on Mac OS X |  Major | tests | Daniel Gómez Ferro | Daniel Gómez Ferro |
| [ZOOKEEPER-1241](https://issues.apache.org/jira/browse/ZOOKEEPER-1241) | Typo in ZooKeeper Recipes and Solutions documentation |  Minor | documentation | Jingguo Yao | Jingguo Yao |
| [ZOOKEEPER-1238](https://issues.apache.org/jira/browse/ZOOKEEPER-1238) | when the linger time was changed for NIO the patch missed Netty |  Major | server | Patrick Hunt | Skye Wanderman-Milne |
| [ZOOKEEPER-1236](https://issues.apache.org/jira/browse/ZOOKEEPER-1236) | Security uses proprietary Sun APIs |  Major | server | Patrick Hunt | Adalberto Medeiros |
| [ZOOKEEPER-1222](https://issues.apache.org/jira/browse/ZOOKEEPER-1222) | getACL should only call DataTree.copyStat when passed in stat is not null |  Minor | java client | Camille Fournier | Michi Mutsuzaki |
| [ZOOKEEPER-1220](https://issues.apache.org/jira/browse/ZOOKEEPER-1220) | ./zkCli.sh 'create' command is throwing ArrayIndexOutOfBoundsException |  Major | scripts | kavita sharma | kavita sharma |
| [ZOOKEEPER-1214](https://issues.apache.org/jira/browse/ZOOKEEPER-1214) | QuorumPeer should unregister only its previsously registered MBeans instead of use MBeanRegistry.unregisterAll() method. |  Major | quorum | César Álvarez Núñez | César Álvarez Núñez |
| [ZOOKEEPER-1212](https://issues.apache.org/jira/browse/ZOOKEEPER-1212) | zkServer.sh stop action is not conformat with LSB para 20.2 Init Script Actions |  Major | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [ZOOKEEPER-1208](https://issues.apache.org/jira/browse/ZOOKEEPER-1208) | Ephemeral node not removed after the client session is long gone |  Blocker | . | kishore gopalakrishna | Patrick Hunt |
| [ZOOKEEPER-1206](https://issues.apache.org/jira/browse/ZOOKEEPER-1206) | Sequential node creation does not use always use digits in node name given certain Locales. |  Minor | server | Mark Miller | Mark Miller |
| [ZOOKEEPER-1203](https://issues.apache.org/jira/browse/ZOOKEEPER-1203) | Zookeeper systest is missing Junit Classes |  Major | tests | Prashant Gokhale | Prashant Gokhale |
| [ZOOKEEPER-1194](https://issues.apache.org/jira/browse/ZOOKEEPER-1194) | Two possible race conditions during leader establishment |  Major | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1192](https://issues.apache.org/jira/browse/ZOOKEEPER-1192) | Leader.waitForEpochAck() checks waitingForNewEpoch instead of checking electionFinished |  Critical | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1190](https://issues.apache.org/jira/browse/ZOOKEEPER-1190) | ant package is not including many of the bin scripts in the package (zkServer.sh for example) |  Blocker | build | Patrick Hunt | Eric Yang |
| [ZOOKEEPER-1185](https://issues.apache.org/jira/browse/ZOOKEEPER-1185) | Send AuthFailed event to client if SASL authentication fails |  Major | java client | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1184](https://issues.apache.org/jira/browse/ZOOKEEPER-1184) | jute generated files are not being cleaned up via "ant clean" |  Major | build | Patrick Hunt | Thomas Koch |
| [ZOOKEEPER-1181](https://issues.apache.org/jira/browse/ZOOKEEPER-1181) | Fix problems with Kerberos TGT renewal |  Major | java client, server | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1179](https://issues.apache.org/jira/browse/ZOOKEEPER-1179) | NettyServerCnxn does not properly close socket on 4 letter word requests |  Critical | server | Camille Fournier | Rakesh R |
| [ZOOKEEPER-1174](https://issues.apache.org/jira/browse/ZOOKEEPER-1174) | FD leak when network unreachable |  Critical | java client | Ted Dunning | Ted Dunning |
| [ZOOKEEPER-1163](https://issues.apache.org/jira/browse/ZOOKEEPER-1163) | Memory leak in zk\_hashtable.c:do\_insert\_watcher\_object() |  Major | c client | Anupam Chanda |  |
| [ZOOKEEPER-1089](https://issues.apache.org/jira/browse/ZOOKEEPER-1089) | zkServer.sh status does not work due to invalid option of nc |  Major | scripts | Bill Au | Roman Shaposhnik |
| [ZOOKEEPER-1062](https://issues.apache.org/jira/browse/ZOOKEEPER-1062) | Net-ZooKeeper: Net::ZooKeeper consumes 100% cpu on wait |  Major | contrib-bindings | Patrick Hunt | Botond Hejj |
| [ZOOKEEPER-1057](https://issues.apache.org/jira/browse/ZOOKEEPER-1057) | zookeeper c-client, connection to offline server fails to successfully fallback to second zk host |  Blocker | c client | Woody Anderson | Michi Mutsuzaki |
| [ZOOKEEPER-1050](https://issues.apache.org/jira/browse/ZOOKEEPER-1050) | zooinspector shell scripts do not work |  Trivial | contrib | Chris Burroughs | Will Johnson |
| [ZOOKEEPER-1048](https://issues.apache.org/jira/browse/ZOOKEEPER-1048) | addauth command does not work in cli\_mt/cli\_st |  Major | c client | allengao |  |
| [ZOOKEEPER-973](https://issues.apache.org/jira/browse/ZOOKEEPER-973) | bind() could fail on Leader because it does not setReuseAddress on its ServerSocket |  Trivial | server | Vishal Kher | Harsh J |
| [ZOOKEEPER-877](https://issues.apache.org/jira/browse/ZOOKEEPER-877) | zkpython does not work with python3.1 |  Major | contrib-bindings | TuxRacer | Daniel Enman |
| [ZOOKEEPER-876](https://issues.apache.org/jira/browse/ZOOKEEPER-876) | Unnecessary snapshot transfers between new leader and followers |  Minor | . | Diogo | Diogo |
| [ZOOKEEPER-786](https://issues.apache.org/jira/browse/ZOOKEEPER-786) | Exception in ZooKeeper.toString |  Minor | java client | Stephen Green | Thomas Koch |
| [ZOOKEEPER-732](https://issues.apache.org/jira/browse/ZOOKEEPER-732) | Improper translation of error into Python exception |  Minor | contrib-bindings | Gustavo Niemeyer | Lei Zhang |
| [ZOOKEEPER-653](https://issues.apache.org/jira/browse/ZOOKEEPER-653) | hudson failure in LETest |  Major | quorum, server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-642](https://issues.apache.org/jira/browse/ZOOKEEPER-642) | "exceeded deadline by N ms" floods logs |  Major | c client | Dale Johnson | Marc Celani |
| [ZOOKEEPER-602](https://issues.apache.org/jira/browse/ZOOKEEPER-602) | log all exceptions not caught by ZK threads |  Blocker | java client, server | Patrick Hunt | Rakesh R |
| [ZOOKEEPER-87](https://issues.apache.org/jira/browse/ZOOKEEPER-87) | Follower does not shut itself down if its too far behind the leader. |  Critical | quorum | Mahadev konar | Germán Blanco |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1718](https://issues.apache.org/jira/browse/ZOOKEEPER-1718) | Support JLine 2 |  Critical | . | Christopher Tubbs | Manikumar Reddy |
| [ZOOKEEPER-1337](https://issues.apache.org/jira/browse/ZOOKEEPER-1337) | multi's "Transaction" class is missing tests. |  Minor | java client | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1328](https://issues.apache.org/jira/browse/ZOOKEEPER-1328) | Misplaced assertion for the test case 'FLELostMessageTest' and not identifying misfunctions |  Major | leaderElection | Rakesh R | Rakesh R |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1989](https://issues.apache.org/jira/browse/ZOOKEEPER-1989) | backward compatibility of zoo.cfg |  Blocker | tests | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1988](https://issues.apache.org/jira/browse/ZOOKEEPER-1988) | new test patch to verify dynamic reconfig backward compatibility |  Major | tests | Raul Gutierrez Segales | Alexander Shraer |
| [ZOOKEEPER-1981](https://issues.apache.org/jira/browse/ZOOKEEPER-1981) | Fix Dodgy Code Warnings identified by findbugs 2.0.3 |  Minor | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1979](https://issues.apache.org/jira/browse/ZOOKEEPER-1979) | Fix Performance Warnings found by Findbugs 2.0.3 |  Minor | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1975](https://issues.apache.org/jira/browse/ZOOKEEPER-1975) | Turn off "internationalization warnings" in findbugs exclude file |  Major | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1972](https://issues.apache.org/jira/browse/ZOOKEEPER-1972) | Fix invalid volatile long/int increment (++) |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1904](https://issues.apache.org/jira/browse/ZOOKEEPER-1904) | WatcherTest#testWatchAutoResetWithPending is failing |  Major | tests | Rakesh R | Rakesh R |
| [ZOOKEEPER-1874](https://issues.apache.org/jira/browse/ZOOKEEPER-1874) | Add proper teardown/cleanups in ReconfigTest to shutdown quorumpeer |  Major | tests | Rakesh R |  |
| [ZOOKEEPER-1873](https://issues.apache.org/jira/browse/ZOOKEEPER-1873) | Unnecessarily InstanceNotFoundException is coming when unregister failed jmxbeans |  Major | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1867](https://issues.apache.org/jira/browse/ZOOKEEPER-1867) | Bug in ZkDatabaseCorruptionTest |  Major | tests | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1858](https://issues.apache.org/jira/browse/ZOOKEEPER-1858) | JMX checks - potential race conditions while stopping and starting server |  Major | . | Rakesh R | Rakesh R |
| [ZOOKEEPER-1857](https://issues.apache.org/jira/browse/ZOOKEEPER-1857) | PrepRequestProcessotTest doesn't shutdown ZooKeeper server |  Major | tests | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1852](https://issues.apache.org/jira/browse/ZOOKEEPER-1852) | ServerCnxnFactory instance is not properly cleanedup |  Major | tests | Rakesh R | Rakesh R |
| [ZOOKEEPER-1849](https://issues.apache.org/jira/browse/ZOOKEEPER-1849) | Need to properly tear down tests in various cases |  Blocker | tests | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1837](https://issues.apache.org/jira/browse/ZOOKEEPER-1837) | Fix JMXEnv checks (potential race conditions) |  Major | tests | Germán Blanco | Germán Blanco |
| [ZOOKEEPER-1834](https://issues.apache.org/jira/browse/ZOOKEEPER-1834) | Catch IOException in FileTxnLog |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1831](https://issues.apache.org/jira/browse/ZOOKEEPER-1831) | Document remove watches details to the guide |  Major | documentation | Rakesh R | Rakesh R |
| [ZOOKEEPER-1830](https://issues.apache.org/jira/browse/ZOOKEEPER-1830) | Support command line shell for removing watches |  Critical | . | Rakesh R | Rakesh R |
| [ZOOKEEPER-1730](https://issues.apache.org/jira/browse/ZOOKEEPER-1730) | Make ZooKeeper easier to test - support simulating a session expiration |  Major | java client | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-1414](https://issues.apache.org/jira/browse/ZOOKEEPER-1414) | QuorumPeerMainTest.testQuorum, testBadPackets are failing intermittently |  Minor | server, tests | Rakesh R | Rakesh R |
| [ZOOKEEPER-1411](https://issues.apache.org/jira/browse/ZOOKEEPER-1411) | Consolidate membership management, distinguish between static and dynamic configuration parameters |  Major | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1291](https://issues.apache.org/jira/browse/ZOOKEEPER-1291) | AcceptedEpoch not updated at leader before it proposes the epoch to followers |  Major | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1282](https://issues.apache.org/jira/browse/ZOOKEEPER-1282) | Learner.java not following Zab 1.0 protocol - setCurrentEpoch should be done upon receipt of NEWLEADER (before acking it) and not upon receipt of UPTODATE |  Major | server | Alexander Shraer | Benjamin Reed |
| [ZOOKEEPER-1253](https://issues.apache.org/jira/browse/ZOOKEEPER-1253) | return value of DataTree.createNode is never used |  Trivial | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1252](https://issues.apache.org/jira/browse/ZOOKEEPER-1252) | remove unused method o.a.z.test.AxyncTest.restart() |  Trivial | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1247](https://issues.apache.org/jira/browse/ZOOKEEPER-1247) | dead code in PrepRequestProcessor.pRequest multi case |  Major | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1246](https://issues.apache.org/jira/browse/ZOOKEEPER-1246) | Dead code in PrepRequestProcessor catch Exception block |  Blocker | . | Thomas Koch | Camille Fournier |
| [ZOOKEEPER-1227](https://issues.apache.org/jira/browse/ZOOKEEPER-1227) | Zookeeper logs is showing -1 as min/max session timeout if there is no sessiontimeout value configured |  Minor | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1221](https://issues.apache.org/jira/browse/ZOOKEEPER-1221) | Provide accessors for Request.{hdr\|txn} |  Minor | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1216](https://issues.apache.org/jira/browse/ZOOKEEPER-1216) | Fix more eclipse compiler warnings, also in Tests |  Minor | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1213](https://issues.apache.org/jira/browse/ZOOKEEPER-1213) | ZooKeeper server startup fails if configured only with the 'minSessionTimeout' and not 'maxSessionTimeout' |  Major | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1201](https://issues.apache.org/jira/browse/ZOOKEEPER-1201) | Clean SaslServerCallbackHandler.java |  Blocker | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1200](https://issues.apache.org/jira/browse/ZOOKEEPER-1200) | Remove obsolete DataTreeBuilder |  Major | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1191](https://issues.apache.org/jira/browse/ZOOKEEPER-1191) | Synchronization issue - wait not in guarded block |  Minor | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1113](https://issues.apache.org/jira/browse/ZOOKEEPER-1113) | QuorumMaj counts the number of ACKs but does not check who sent the ACK |  Minor | quorum | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1044](https://issues.apache.org/jira/browse/ZOOKEEPER-1044) | Allow dynamic changes to roles of a peer |  Major | quorum | Vishal Kher | Alexander Shraer |
| [ZOOKEEPER-827](https://issues.apache.org/jira/browse/ZOOKEEPER-827) | enable r/o mode in C client library |  Major | . | Sergey Doroshenko | Raul Gutierrez Segales |
| [ZOOKEEPER-442](https://issues.apache.org/jira/browse/ZOOKEEPER-442) | need a way to remove watches that are no longer of interest |  Critical | java client, server | Benjamin Reed | Rakesh R |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1326](https://issues.apache.org/jira/browse/ZOOKEEPER-1326) | The CLI commands "delete" and "rmr" are confusing. Can we have "delete" + "deleteall" instead? |  Trivial | java client | Harsh J | Harsh J |
| [ZOOKEEPER-1938](https://issues.apache.org/jira/browse/ZOOKEEPER-1938) | bump version in the C library as we prepare for 3.5.0 release |  Trivial | c client | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-1918](https://issues.apache.org/jira/browse/ZOOKEEPER-1918) | Add 64 bit Windows as a supported development platform |  Minor | documentation | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1509](https://issues.apache.org/jira/browse/ZOOKEEPER-1509) | Please update documentation to reflect updated FreeBSD support. |  Major | . | George Neville-Neil | George Neville-Neil |
| [ZOOKEEPER-1430](https://issues.apache.org/jira/browse/ZOOKEEPER-1430) | add maven deploy support to the build |  Blocker | build | Patrick Hunt | Giridharan Kesavan |
| [ZOOKEEPER-1193](https://issues.apache.org/jira/browse/ZOOKEEPER-1193) | Remove upgrade code |  Minor | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1182](https://issues.apache.org/jira/browse/ZOOKEEPER-1182) | Make findbugs usable in Eclipse |  Minor | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1176](https://issues.apache.org/jira/browse/ZOOKEEPER-1176) | Remove dead code and basic cleanup in DataTree |  Major | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-899](https://issues.apache.org/jira/browse/ZOOKEEPER-899) | Update Netty version in trunk to 3.2.2 |  Major | build | Thomas Koch | Thomas Koch |


