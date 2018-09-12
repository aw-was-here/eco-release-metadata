
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

## Release 3.4.0 - 2011-11-22

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1189](https://issues.apache.org/jira/browse/ZOOKEEPER-1189) | For an invalid snapshot file(less than 10bytes size) RandomAccessFile stream is leaking. |  Major | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-1149](https://issues.apache.org/jira/browse/ZOOKEEPER-1149) | users cannot migrate from 3.4-\>3.3-\>3.4 server code against a single datadir |  Blocker | server | Patrick Hunt | Patrick Hunt |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-729](https://issues.apache.org/jira/browse/ZOOKEEPER-729) | Recursively delete a znode  - zkCli.sh rmr /node |  Major | java client | Karthik K | Karthik K |
| [ZOOKEEPER-747](https://issues.apache.org/jira/browse/ZOOKEEPER-747) | Add C# generation to Jute |  Major | jute | Eric Hauser | Eric Hauser |
| [ZOOKEEPER-464](https://issues.apache.org/jira/browse/ZOOKEEPER-464) | Need procedure to garbage collect ledgers |  Major | contrib-bookkeeper | Flavio Junqueira | Erwin Tam |
| [ZOOKEEPER-744](https://issues.apache.org/jira/browse/ZOOKEEPER-744) | Add monitoring four-letter word |  Major | server | Travis Crawford | Andrei Savu |
| [ZOOKEEPER-799](https://issues.apache.org/jira/browse/ZOOKEEPER-799) | Add tools and recipes for monitoring as a contrib |  Major | contrib | Andrei Savu | Andrei Savu |
| [ZOOKEEPER-808](https://issues.apache.org/jira/browse/ZOOKEEPER-808) | Web-based Administrative Interface |  Major | contrib | Andrei Savu | Andrei Savu |
| [ZOOKEEPER-775](https://issues.apache.org/jira/browse/ZOOKEEPER-775) | A large scale pub/sub system |  Major | contrib | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-465](https://issues.apache.org/jira/browse/ZOOKEEPER-465) | Ledger size in bytes |  Major | contrib-bookkeeper | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-712](https://issues.apache.org/jira/browse/ZOOKEEPER-712) | Bookie recovery |  Major | contrib-bookkeeper | Flavio Junqueira | Erwin Tam |
| [ZOOKEEPER-1012](https://issues.apache.org/jira/browse/ZOOKEEPER-1012) | support distinct JVMFLAGS for zookeeper server in zkServer.sh and zookeeper client in zkCli.sh |  Trivial | server | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1020](https://issues.apache.org/jira/browse/ZOOKEEPER-1020) | Implement function in C client to determine which host you're currently connected to. |  Minor | c client | Stephen Tyree | Stephen Tyree |
| [ZOOKEEPER-965](https://issues.apache.org/jira/browse/ZOOKEEPER-965) | Need a multi-update command to allow multiple znodes to be updated safely |  Major | . | Ted Dunning | Ted Dunning |
| [ZOOKEEPER-992](https://issues.apache.org/jira/browse/ZOOKEEPER-992) | MT Native Version of Windows C Client |  Major | c client | Camille Fournier | Dheeraj Agrawal |
| [ZOOKEEPER-938](https://issues.apache.org/jira/browse/ZOOKEEPER-938) | Support Kerberos authentication of clients. |  Major | java client, server | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-999](https://issues.apache.org/jira/browse/ZOOKEEPER-999) | Create an package integration project |  Major | build | Eric Yang | Eric Yang |
| [ZOOKEEPER-1107](https://issues.apache.org/jira/browse/ZOOKEEPER-1107) | automating log and snapshot cleaning |  Major | server | Jun Rao | Laxman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-724](https://issues.apache.org/jira/browse/ZOOKEEPER-724) | Improve junit test integration - log harness information |  Major | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-631](https://issues.apache.org/jira/browse/ZOOKEEPER-631) | zkpython's C code could do with a style clean-up |  Minor | contrib-bindings | Henry Robinson | Henry Robinson |
| [ZOOKEEPER-636](https://issues.apache.org/jira/browse/ZOOKEEPER-636) | configure.ac has instructions which override the contents of CFLAGS and CXXFLAGS. |  Major | build, c client | Maxim P. Dementiev | Maxim P. Dementiev |
| [ZOOKEEPER-773](https://issues.apache.org/jira/browse/ZOOKEEPER-773) | Log visualisation |  Minor | contrib | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-788](https://issues.apache.org/jira/browse/ZOOKEEPER-788) | Add server id to message logs |  Trivial | contrib | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-789](https://issues.apache.org/jira/browse/ZOOKEEPER-789) | Improve FLE log messages |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-797](https://issues.apache.org/jira/browse/ZOOKEEPER-797) | c client source with AI\_ADDRCONFIG cannot be compiled with early glibc |  Major | c client | Qian Ye | Qian Ye |
| [ZOOKEEPER-821](https://issues.apache.org/jira/browse/ZOOKEEPER-821) | Add ZooKeeper version information to zkpython |  Trivial | contrib-bindings | Rich Schumacher | Rich Schumacher |
| [ZOOKEEPER-765](https://issues.apache.org/jira/browse/ZOOKEEPER-765) | Add python example script |  Minor | contrib-bindings, documentation | Travis Crawford | Andrei Savu |
| [ZOOKEEPER-809](https://issues.apache.org/jira/browse/ZOOKEEPER-809) | Improved REST Interface |  Major | contrib | Andrei Savu | Andrei Savu |
| [ZOOKEEPER-733](https://issues.apache.org/jira/browse/ZOOKEEPER-733) | use netty to handle client connections |  Major | server | Benjamin Reed | Patrick Hunt |
| [ZOOKEEPER-853](https://issues.apache.org/jira/browse/ZOOKEEPER-853) | Make zookeeper.is\_unrecoverable return True or False and not an integer |  Minor | contrib-bindings | Andrei Savu | Andrei Savu |
| [ZOOKEEPER-864](https://issues.apache.org/jira/browse/ZOOKEEPER-864) | Hedwig C++ client improvements |  Major | . | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-862](https://issues.apache.org/jira/browse/ZOOKEEPER-862) | Hedwig created ledgers with hardcoded Bookkeeper ensemble and quorum size.  Make these a server config parameter instead. |  Major | contrib-hedwig | Erwin Tam | Erwin Tam |
| [ZOOKEEPER-926](https://issues.apache.org/jira/browse/ZOOKEEPER-926) | Fork Hadoop common's test-patch.sh and modify for Zookeeper |  Major | build | Nigel Daley | Nigel Daley |
| [ZOOKEEPER-905](https://issues.apache.org/jira/browse/ZOOKEEPER-905) | enhance zkServer.sh for easier zookeeper automation-izing |  Minor | scripts | Nicholas Harteau | Nicholas Harteau |
| [ZOOKEEPER-500](https://issues.apache.org/jira/browse/ZOOKEEPER-500) | Async methods shouldnt throw exceptions |  Major | contrib-bookkeeper | Utkarsh Srivastava | Flavio Junqueira |
| [ZOOKEEPER-977](https://issues.apache.org/jira/browse/ZOOKEEPER-977) | passing null for path\_buffer in zoo\_create |  Major | . | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-980](https://issues.apache.org/jira/browse/ZOOKEEPER-980) | allow configuration parameters for log4j.properties |  Minor | . | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-993](https://issues.apache.org/jira/browse/ZOOKEEPER-993) | Code improvements |  Minor | leaderElection | MIS | MIS |
| [ZOOKEEPER-1018](https://issues.apache.org/jira/browse/ZOOKEEPER-1018) | The connection permutation in get\_addrs uses a weak and inefficient shuffle |  Minor | c client | Stephen Tyree | Stephen Tyree |
| [ZOOKEEPER-1030](https://issues.apache.org/jira/browse/ZOOKEEPER-1030) | Increase default for maxClientCnxns |  Trivial | . | Todd Lipcon | Todd Lipcon |
| [ZOOKEEPER-1094](https://issues.apache.org/jira/browse/ZOOKEEPER-1094) | Small improvements to LeaderElection and Vote classes |  Minor | quorum | Henry Robinson | Henry Robinson |
| [ZOOKEEPER-1103](https://issues.apache.org/jira/browse/ZOOKEEPER-1103) | In QuorumTest, use the same "for ( .. try { break } catch { } )" pattern in testFollowersStartAfterLeaders as in testSessionMove. |  Minor | tests | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1095](https://issues.apache.org/jira/browse/ZOOKEEPER-1095) | Simple leader election recipe |  Major | . | Henry Robinson | E. Sammer |
| [ZOOKEEPER-1143](https://issues.apache.org/jira/browse/ZOOKEEPER-1143) | quorum send & recv workers are missing thread names |  Minor | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1104](https://issues.apache.org/jira/browse/ZOOKEEPER-1104) | CLONE - In QuorumTest, use the same "for ( .. try { break } catch { } )" pattern in testFollowersStartAfterLeaders as in testSessionMove. |  Minor | tests | sreekanth | Eugene Koontz |
| [ZOOKEEPER-1025](https://issues.apache.org/jira/browse/ZOOKEEPER-1025) | zkCli is overly sensitive to to spaces. |  Major | java client | Jonathan Hsieh | Laxman |
| [ZOOKEEPER-1153](https://issues.apache.org/jira/browse/ZOOKEEPER-1153) | Deprecate AuthFLE and LE |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1166](https://issues.apache.org/jira/browse/ZOOKEEPER-1166) | Please add a few svn:ignore properties |  Minor | build | Warren Turkal | Patrick Hunt |
| [ZOOKEEPER-1169](https://issues.apache.org/jira/browse/ZOOKEEPER-1169) | Fix compiler (eclipse) warnings in (generated) jute code |  Minor | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1239](https://issues.apache.org/jira/browse/ZOOKEEPER-1239) | add logging/stats to identify fsync stalls |  Major | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-850](https://issues.apache.org/jira/browse/ZOOKEEPER-850) | Switch from log4j to slf4j |  Major | java client | Olaf Krische | Olaf Krische |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-735](https://issues.apache.org/jira/browse/ZOOKEEPER-735) | cppunit test testipv6 assumes that the machine is ipv6 enabled. |  Major | tests | Mahadev konar | Mahadev konar |
| [ZOOKEEPER-720](https://issues.apache.org/jira/browse/ZOOKEEPER-720) | Use zookeeper-{version}-sources.jar instead of zookeeper-{version}-src.jar to publish sources in the Maven repository |  Trivial | build | Paolo Castagna | Paolo Castagna |
| [ZOOKEEPER-722](https://issues.apache.org/jira/browse/ZOOKEEPER-722) | zkServer.sh uses sh's builtin echo on BSD, behaves incorrectly. |  Minor | scripts | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-741](https://issues.apache.org/jira/browse/ZOOKEEPER-741) | root level create on REST proxy fails |  Critical | contrib | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-742](https://issues.apache.org/jira/browse/ZOOKEEPER-742) | Deallocatng None on writes |  Major | c client, contrib, contrib-bindings | Josh Fraser | Henry Robinson |
| [ZOOKEEPER-746](https://issues.apache.org/jira/browse/ZOOKEEPER-746) | learner outputs session id to log in dec (should be hex) |  Minor | quorum, server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-738](https://issues.apache.org/jira/browse/ZOOKEEPER-738) | zookeeper.jute.h fails to compile with -pedantic |  Major | c client | Patrick Hunt | Jozef Hatala |
| [ZOOKEEPER-734](https://issues.apache.org/jira/browse/ZOOKEEPER-734) | QuorumPeerTestBase.java and ZooKeeperServerMainTest.java do not handle windows path correctly |  Major | tests | Vishal Kher | Vishal Kher |
| [ZOOKEEPER-749](https://issues.apache.org/jira/browse/ZOOKEEPER-749) | OSGi metadata not included in binary only jar |  Critical | build | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-750](https://issues.apache.org/jira/browse/ZOOKEEPER-750) | move maven artifacts into "dist-maven" subdir of the release (package target) |  Major | build | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-758](https://issues.apache.org/jira/browse/ZOOKEEPER-758) | zkpython segfaults on invalid acl with missing key |  Major | contrib-bindings | Kapil Thangavelu | Kapil Thangavelu |
| [ZOOKEEPER-737](https://issues.apache.org/jira/browse/ZOOKEEPER-737) | some 4 letter words may fail with netcat (nc) |  Blocker | server | Patrick Hunt | Mahadev konar |
| [ZOOKEEPER-763](https://issues.apache.org/jira/browse/ZOOKEEPER-763) | Deadlock on close w/ zkpython / c client |  Major | contrib-bindings | Kapil Thangavelu | Henry Robinson |
| [ZOOKEEPER-764](https://issues.apache.org/jira/browse/ZOOKEEPER-764) | Observer elected leader due to inconsistent voting view |  Major | quorum | Flavio Junqueira | Henry Robinson |
| [ZOOKEEPER-766](https://issues.apache.org/jira/browse/ZOOKEEPER-766) | forrest recipes docs don't mention the lock/queue recipe implementations available in the release |  Minor | documentation, recipes | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-774](https://issues.apache.org/jira/browse/ZOOKEEPER-774) | Recipes tests are slightly outdated: they do not compile against JUnit 4.8 |  Minor | recipes | Sergey Doroshenko | Sergey Doroshenko |
| [ZOOKEEPER-769](https://issues.apache.org/jira/browse/ZOOKEEPER-769) | Leader can treat observers as quorum members |  Major | . | Sergey Doroshenko | Sergey Doroshenko |
| [ZOOKEEPER-796](https://issues.apache.org/jira/browse/ZOOKEEPER-796) | zkServer.sh should support an external PIDFILE variable |  Major | scripts | Alex Newman | Alex Newman |
| [ZOOKEEPER-719](https://issues.apache.org/jira/browse/ZOOKEEPER-719) | Add throttling to BookKeeper client |  Major | contrib-bookkeeper | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-814](https://issues.apache.org/jira/browse/ZOOKEEPER-814) | monitoring scripts are missing apache license headers |  Blocker | contrib | Patrick Hunt | Andrei Savu |
| [ZOOKEEPER-783](https://issues.apache.org/jira/browse/ZOOKEEPER-783) | committedLog in ZKDatabase is not properly synchronized |  Critical | server | Henry Robinson | Henry Robinson |
| [ZOOKEEPER-790](https://issues.apache.org/jira/browse/ZOOKEEPER-790) | Last processed zxid set prematurely while establishing leadership |  Blocker | quorum | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-772](https://issues.apache.org/jira/browse/ZOOKEEPER-772) | zkpython segfaults when watcher from async get children is invoked. |  Major | contrib-bindings | Kapil Thangavelu | Henry Robinson |
| [ZOOKEEPER-795](https://issues.apache.org/jira/browse/ZOOKEEPER-795) | eventThread isn't shutdown after a connection "session expired" event coming |  Blocker | java client | mathieu barcikowski | Sergey Doroshenko |
| [ZOOKEEPER-792](https://issues.apache.org/jira/browse/ZOOKEEPER-792) | zkpython memory leak |  Major | contrib-bindings | Lei Zhang | Lei Zhang |
| [ZOOKEEPER-854](https://issues.apache.org/jira/browse/ZOOKEEPER-854) | BookKeeper does not compile due to changes in the ZooKeeper code |  Major | contrib-bookkeeper | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-861](https://issues.apache.org/jira/browse/ZOOKEEPER-861) | Missing the test SSL certificate used for running junit tests. |  Minor | contrib-hedwig | Erwin Tam | Erwin Tam |
| [ZOOKEEPER-785](https://issues.apache.org/jira/browse/ZOOKEEPER-785) |  Zookeeper 3.3.1 shouldn't infinite loop if someone creates a server.0 line |  Major | server | Alex Newman | Patrick Hunt |
| [ZOOKEEPER-867](https://issues.apache.org/jira/browse/ZOOKEEPER-867) | ClientTest is failing on hudson - fd cleanup |  Blocker | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-870](https://issues.apache.org/jira/browse/ZOOKEEPER-870) | Zookeeper trunk build broken. |  Major | . | Mahadev konar | Mahadev konar |
| [ZOOKEEPER-787](https://issues.apache.org/jira/browse/ZOOKEEPER-787) | groupId in deployed pom is wrong |  Blocker | . | Chris Conrad |  |
| [ZOOKEEPER-831](https://issues.apache.org/jira/browse/ZOOKEEPER-831) | BookKeeper: Throttling improved for reads |  Major | contrib-bookkeeper | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-846](https://issues.apache.org/jira/browse/ZOOKEEPER-846) | zookeeper client doesn't shut down cleanly on the close call |  Blocker | java client | Ted Yu | Patrick Hunt |
| [ZOOKEEPER-844](https://issues.apache.org/jira/browse/ZOOKEEPER-844) | handle auth failure in java client |  Major | java client | Camille Fournier | Camille Fournier |
| [ZOOKEEPER-822](https://issues.apache.org/jira/browse/ZOOKEEPER-822) | Leader election taking a long time  to complete |  Blocker | quorum | Vishal Kher | Vishal Kher |
| [ZOOKEEPER-881](https://issues.apache.org/jira/browse/ZOOKEEPER-881) | ZooKeeperServer.loadData loads database twice |  Trivial | server | Jared Cantwell | Jared Cantwell |
| [ZOOKEEPER-855](https://issues.apache.org/jira/browse/ZOOKEEPER-855) | clientPortBindAddress should be clientPortAddress |  Trivial | documentation | Jared Cantwell | Jared Cantwell |
| [ZOOKEEPER-888](https://issues.apache.org/jira/browse/ZOOKEEPER-888) | c-client / zkpython: Double free corruption on node watcher |  Critical | c client, contrib-bindings | Lukas | Lukas |
| [ZOOKEEPER-893](https://issues.apache.org/jira/browse/ZOOKEEPER-893) | ZooKeeper high cpu usage when invalid requests |  Critical | server | Thijs Terlouw | Thijs Terlouw |
| [ZOOKEEPER-804](https://issues.apache.org/jira/browse/ZOOKEEPER-804) | c unit tests failing due to "assertion cptr failed" |  Critical | c client | Patrick Hunt | Michi Mutsuzaki |
| [ZOOKEEPER-820](https://issues.apache.org/jira/browse/ZOOKEEPER-820) | update c unit tests to ensure "zombie" java server processes don't cause failure |  Critical | . | Patrick Hunt | Michi Mutsuzaki |
| [ZOOKEEPER-794](https://issues.apache.org/jira/browse/ZOOKEEPER-794) | Callbacks are not invoked when the client is closed |  Blocker | java client | Alexis Midon | Alexis Midon |
| [ZOOKEEPER-800](https://issues.apache.org/jira/browse/ZOOKEEPER-800) | zoo\_add\_auth returns ZOK if zookeeper handle is in ZOO\_CLOSED\_STATE |  Minor | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-904](https://issues.apache.org/jira/browse/ZOOKEEPER-904) | super digest is not actually acting as a full superuser |  Major | server | Camille Fournier | Camille Fournier |
| [ZOOKEEPER-897](https://issues.apache.org/jira/browse/ZOOKEEPER-897) | C Client seg faults during close |  Major | c client | Jared Cantwell | Jared Cantwell |
| [ZOOKEEPER-898](https://issues.apache.org/jira/browse/ZOOKEEPER-898) | C Client might not cleanup correctly during close |  Trivial | c client | Jared Cantwell | Jared Cantwell |
| [ZOOKEEPER-907](https://issues.apache.org/jira/browse/ZOOKEEPER-907) | Spurious "KeeperErrorCode = Session moved" messages |  Blocker | . | Vishal Kher | Vishal Kher |
| [ZOOKEEPER-884](https://issues.apache.org/jira/browse/ZOOKEEPER-884) | Remove LedgerSequence references from BookKeeper documentation and comments in tests |  Major | contrib-bookkeeper | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-937](https://issues.apache.org/jira/browse/ZOOKEEPER-937) | test -e not available on solaris /bin/sh |  Major | scripts | Erik Hetzner | Erik Hetzner |
| [ZOOKEEPER-957](https://issues.apache.org/jira/browse/ZOOKEEPER-957) | zkCleanup.sh doesn't do anything |  Major | . | Ted Dunning | Ted Dunning |
| [ZOOKEEPER-958](https://issues.apache.org/jira/browse/ZOOKEEPER-958) | Flag to turn off autoconsume in hedwig c++ client |  Major | contrib-hedwig | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-882](https://issues.apache.org/jira/browse/ZOOKEEPER-882) | Startup loads last transaction from snapshot |  Minor | server | Jared Cantwell | Jared Cantwell |
| [ZOOKEEPER-921](https://issues.apache.org/jira/browse/ZOOKEEPER-921) | zkPython incorrectly checks for existence of required ACL elements |  Major | contrib-bindings | Nicholas Knight | Nicholas Knight |
| [ZOOKEEPER-963](https://issues.apache.org/jira/browse/ZOOKEEPER-963) | Make Forrest work with JDK6 |  Major | build, documentation | Carl Steinbach | Carl Steinbach |
| [ZOOKEEPER-962](https://issues.apache.org/jira/browse/ZOOKEEPER-962) | leader/follower coherence issue when follower is receiving a DIFF |  Critical | server | Camille Fournier | ChiaHung Lin |
| [ZOOKEEPER-913](https://issues.apache.org/jira/browse/ZOOKEEPER-913) | Version parser fails to parse "3.3.2-dev" from build.xml. |  Critical | build | Anthony Urso | Patrick Hunt |
| [ZOOKEEPER-902](https://issues.apache.org/jira/browse/ZOOKEEPER-902) | Fix findbug issue in trunk "Malicious code vulnerability" |  Minor | quorum, server | Patrick Hunt | Flavio Junqueira |
| [ZOOKEEPER-985](https://issues.apache.org/jira/browse/ZOOKEEPER-985) | Test BookieRecoveryTest fails on trunk. |  Major | contrib-bookkeeper | Mahadev konar | Flavio Junqueira |
| [ZOOKEEPER-983](https://issues.apache.org/jira/browse/ZOOKEEPER-983) | running zkServer.sh start remotely using ssh hangs |  Minor | scripts | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-976](https://issues.apache.org/jira/browse/ZOOKEEPER-976) | ZooKeeper startup script doesn't use JAVA\_HOME |  Minor | . | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-994](https://issues.apache.org/jira/browse/ZOOKEEPER-994) | "eclipse" target in the build script doesnot include libraray required for test classes in the classpath |  Minor | build | MIS | MIS |
| [ZOOKEEPER-1013](https://issues.apache.org/jira/browse/ZOOKEEPER-1013) | zkServer.sh usage message should mention all startup options |  Trivial | server | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1007](https://issues.apache.org/jira/browse/ZOOKEEPER-1007) | iarchive leak in C client |  Minor | c client | Jeremy Stribling | Jeremy Stribling |
| [ZOOKEEPER-880](https://issues.apache.org/jira/browse/ZOOKEEPER-880) | QuorumCnxManager$SendWorker grows without bounds |  Blocker | . | Jean-Daniel Cryans | Vishal Kher |
| [ZOOKEEPER-1028](https://issues.apache.org/jira/browse/ZOOKEEPER-1028) | In python bindings, zookeeper.set2() should return a stat dict but instead returns None |  Minor | contrib-bindings | Chris Medaglia | Chris Medaglia |
| [ZOOKEEPER-874](https://issues.apache.org/jira/browse/ZOOKEEPER-874) | FileTxnSnapLog.restore does not call listener |  Trivial | leaderElection | Diogo | Diogo |
| [ZOOKEEPER-975](https://issues.apache.org/jira/browse/ZOOKEEPER-975) | new peer goes in LEADING state even if ensemble is online |  Major | . | Vishal Kher | Vishal Kher |
| [ZOOKEEPER-1052](https://issues.apache.org/jira/browse/ZOOKEEPER-1052) | Findbugs warning in QuorumPeer.ResponderThread.run() |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1049](https://issues.apache.org/jira/browse/ZOOKEEPER-1049) | Session expire/close flooding renders heartbeats to delay significantly |  Critical | server | Chang Song | Chang Song |
| [ZOOKEEPER-1033](https://issues.apache.org/jira/browse/ZOOKEEPER-1033) | c client should install includes into INCDIR/zookeeper, not INCDIR/c-client-src |  Minor | c client | Nicholas Harteau | Nicholas Harteau |
| [ZOOKEEPER-1061](https://issues.apache.org/jira/browse/ZOOKEEPER-1061) | Zookeeper stop fails if start called twice |  Major | scripts | Ted Dunning | Ted Dunning |
| [ZOOKEEPER-1059](https://issues.apache.org/jira/browse/ZOOKEEPER-1059) | stat command isses on non-existing node causes NPE |  Major | java client | Bhallamudi Venkata Siva Kamesh | Bhallamudi Venkata Siva Kamesh |
| [ZOOKEEPER-1058](https://issues.apache.org/jira/browse/ZOOKEEPER-1058) | fix typo in opToString for getData |  Trivial | . | Camille Fournier | Camille Fournier |
| [ZOOKEEPER-1083](https://issues.apache.org/jira/browse/ZOOKEEPER-1083) | Javadoc for WatchedEvent not being generated |  Major | . | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-335](https://issues.apache.org/jira/browse/ZOOKEEPER-335) | zookeeper servers should commit the new leader txn to their logs. |  Blocker | server | Mahadev konar | Benjamin Reed |
| [ZOOKEEPER-1060](https://issues.apache.org/jira/browse/ZOOKEEPER-1060) | QuorumPeer takes a long time to shutdown |  Minor | quorum | Vishal Kher | Vishal Kher |
| [ZOOKEEPER-1087](https://issues.apache.org/jira/browse/ZOOKEEPER-1087) | ForceSync VM arguement not working when set to "no" |  Blocker | scripts | Ankit Patel | Nate Putnam |
| [ZOOKEEPER-1068](https://issues.apache.org/jira/browse/ZOOKEEPER-1068) | Documentation and default config suggest incorrect location for Zookeeper state |  Minor | documentation, scripts | Roman Shaposhnik | Roman Shaposhnik |
| [ZOOKEEPER-1097](https://issues.apache.org/jira/browse/ZOOKEEPER-1097) | Quota is not correctly rehydrated on snapshot reload |  Blocker | server | Camille Fournier | Camille Fournier |
| [ZOOKEEPER-1074](https://issues.apache.org/jira/browse/ZOOKEEPER-1074) | zkServer.sh is missing nohup/sleep, which are necessary for remote invocation |  Major | scripts | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1073](https://issues.apache.org/jira/browse/ZOOKEEPER-1073) | address a documentation issue in ZOOKEEPER-1030 |  Minor | documentation | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1046](https://issues.apache.org/jira/browse/ZOOKEEPER-1046) | Creating a new sequential node results in a ZNODEEXISTS error |  Blocker | server | Jeremy Stribling | Vishal Kher |
| [ZOOKEEPER-782](https://issues.apache.org/jira/browse/ZOOKEEPER-782) | Incorrect C API documentation for Watches |  Trivial | c client, documentation | Dave Wright | Mahadev konar |
| [ZOOKEEPER-1063](https://issues.apache.org/jira/browse/ZOOKEEPER-1063) | Dubious synchronization in Zookeeper and ClientCnxnSocketNIO classes |  Critical | java client | Yanick Dufresne | Yanick Dufresne |
| [ZOOKEEPER-1124](https://issues.apache.org/jira/browse/ZOOKEEPER-1124) | Multiop submitted to non-leader always fails due to timeout |  Critical | server | Marshall McMullen | Marshall McMullen |
| [ZOOKEEPER-1069](https://issues.apache.org/jira/browse/ZOOKEEPER-1069) | Calling shutdown() on a QuorumPeer too quickly can lead to a corrupt log |  Critical | quorum, server | Jeremy Stribling | Vishal Kher |
| [ZOOKEEPER-1111](https://issues.apache.org/jira/browse/ZOOKEEPER-1111) | JMXEnv uses System.err instead of logging |  Major | . | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-1027](https://issues.apache.org/jira/browse/ZOOKEEPER-1027) | chroot not transparent in zoo\_create() |  Critical | c client | Thijs Terlouw | Thijs Terlouw |
| [ZOOKEEPER-1109](https://issues.apache.org/jira/browse/ZOOKEEPER-1109) | Zookeeper service is down when SyncRequestProcessor meets any exception. |  Critical | quorum | Laxman | Laxman |
| [ZOOKEEPER-1134](https://issues.apache.org/jira/browse/ZOOKEEPER-1134) | ClientCnxnSocket string comparison using == rather than equals |  Critical | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1119](https://issues.apache.org/jira/browse/ZOOKEEPER-1119) | zkServer stop command incorrectly reading comment lines in zoo.cfg |  Major | scripts | Glen Mazza | Patrick Hunt |
| [ZOOKEEPER-1006](https://issues.apache.org/jira/browse/ZOOKEEPER-1006) | QuorumPeer "Address already in use" -- regression in 3.3.3 |  Minor | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1090](https://issues.apache.org/jira/browse/ZOOKEEPER-1090) | Race condition while taking snapshot can lead to not restoring data tree correctly |  Critical | server | Vishal Kher | Vishal Kher |
| [ZOOKEEPER-1138](https://issues.apache.org/jira/browse/ZOOKEEPER-1138) | release audit failing for a number of new files |  Blocker | . | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1139](https://issues.apache.org/jira/browse/ZOOKEEPER-1139) | jenkins is reporting two warnings, fix these |  Minor | . | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1076](https://issues.apache.org/jira/browse/ZOOKEEPER-1076) | some quorum tests are unnecessarily extending QuorumBase |  Minor | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1101](https://issues.apache.org/jira/browse/ZOOKEEPER-1101) | Upload zookeeper-test maven artifacts to maven repository. |  Major | . | Ivan Kelly | Patrick Hunt |
| [ZOOKEEPER-1142](https://issues.apache.org/jira/browse/ZOOKEEPER-1142) | incorrect stat output |  Blocker | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1144](https://issues.apache.org/jira/browse/ZOOKEEPER-1144) | ZooKeeperServer not starting on leader due to a race condition |  Blocker | . | Vishal Kher | Vishal Kher |
| [ZOOKEEPER-1146](https://issues.apache.org/jira/browse/ZOOKEEPER-1146) | significant regression in client (c/python) performance |  Blocker | c client | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1055](https://issues.apache.org/jira/browse/ZOOKEEPER-1055) | check for duplicate ACLs in addACL() and create() |  Major | . | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1141](https://issues.apache.org/jira/browse/ZOOKEEPER-1141) | zkpython fails tests under python 2.4 |  Major | contrib-bindings | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1034](https://issues.apache.org/jira/browse/ZOOKEEPER-1034) | perl bindings should automatically find the zookeeper c-client headers |  Minor | contrib | Nicholas Harteau | Nicholas Harteau |
| [ZOOKEEPER-1152](https://issues.apache.org/jira/browse/ZOOKEEPER-1152) | Exceptions thrown from handleAuthentication can cause buffer corruption issues in NIOServer |  Major | server | Camille Fournier | Camille Fournier |
| [ZOOKEEPER-1117](https://issues.apache.org/jira/browse/ZOOKEEPER-1117) | zookeeper 3.3.3 fails to build with gcc \>= 4.6.1 on Debian/Ubuntu |  Minor | c client | James Page | James Page |
| [ZOOKEEPER-1140](https://issues.apache.org/jira/browse/ZOOKEEPER-1140) | server shutdown is not stopping threads |  Blocker | server, tests | Patrick Hunt | Laxman |
| [ZOOKEEPER-1051](https://issues.apache.org/jira/browse/ZOOKEEPER-1051) | SIGPIPE in Zookeeper 0.3.\* when send'ing after cluster disconnection |  Minor | c client | Stephen Tyree | Stephen Tyree |
| [ZOOKEEPER-1168](https://issues.apache.org/jira/browse/ZOOKEEPER-1168) | ZooKeeper fails to run with IKVM |  Major | jmx | Andrew Finnell | Andrew Finnell |
| [ZOOKEEPER-1165](https://issues.apache.org/jira/browse/ZOOKEEPER-1165) | better eclipse support in tests |  Minor | tests | Warren Turkal | Warren Turkal |
| [ZOOKEEPER-1154](https://issues.apache.org/jira/browse/ZOOKEEPER-1154) | Data inconsistency when the node(s) with the highest zxid is not present at the time of leader election |  Blocker | quorum | Vishal Kathuria | Vishal Kathuria |
| [ZOOKEEPER-1156](https://issues.apache.org/jira/browse/ZOOKEEPER-1156) | Log truncation truncating log too much - can cause data loss |  Blocker | quorum, server | Vishal Kathuria | Vishal Kathuria |
| [ZOOKEEPER-731](https://issues.apache.org/jira/browse/ZOOKEEPER-731) | Zookeeper#delete  , #create - async versions miss a verb in the javadoc |  Minor | documentation | Karthik K | Thomas Koch |
| [ZOOKEEPER-1108](https://issues.apache.org/jira/browse/ZOOKEEPER-1108) | Various bugs in zoo\_add\_auth in C |  Blocker | c client | Dheeraj Agrawal | Dheeraj Agrawal |
| [ZOOKEEPER-1171](https://issues.apache.org/jira/browse/ZOOKEEPER-1171) | fix build for java 7 |  Minor | build | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-981](https://issues.apache.org/jira/browse/ZOOKEEPER-981) | Hang in zookeeper\_close() in the multi-threaded C client |  Critical | c client | Jeremy Stribling | Jeremy Stribling |
| [ZOOKEEPER-961](https://issues.apache.org/jira/browse/ZOOKEEPER-961) | Watch recovery after disconnection when connection string contains a prefix |  Critical | java client | pmpm47 | Matthias Spycher |
| [ZOOKEEPER-1136](https://issues.apache.org/jira/browse/ZOOKEEPER-1136) | NEW\_LEADER should be queued not sent to match the Zab 1.0 protocol on the twiki |  Blocker | . | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-1185](https://issues.apache.org/jira/browse/ZOOKEEPER-1185) | Send AuthFailed event to client if SASL authentication fails |  Major | java client | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1195](https://issues.apache.org/jira/browse/ZOOKEEPER-1195) | SASL authorizedID being incorrectly set: should use getHostName() rather than getServiceName() |  Major | . | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1203](https://issues.apache.org/jira/browse/ZOOKEEPER-1203) | Zookeeper systest is missing Junit Classes |  Major | tests | Prashant Gokhale | Prashant Gokhale |
| [ZOOKEEPER-1206](https://issues.apache.org/jira/browse/ZOOKEEPER-1206) | Sequential node creation does not use always use digits in node name given certain Locales. |  Minor | server | Mark Miller | Mark Miller |
| [ZOOKEEPER-1174](https://issues.apache.org/jira/browse/ZOOKEEPER-1174) | FD leak when network unreachable |  Critical | java client | Ted Dunning | Ted Dunning |
| [ZOOKEEPER-1190](https://issues.apache.org/jira/browse/ZOOKEEPER-1190) | ant package is not including many of the bin scripts in the package (zkServer.sh for example) |  Blocker | build | Patrick Hunt | Eric Yang |
| [ZOOKEEPER-1212](https://issues.apache.org/jira/browse/ZOOKEEPER-1212) | zkServer.sh stop action is not conformat with LSB para 20.2 Init Script Actions |  Major | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [ZOOKEEPER-1086](https://issues.apache.org/jira/browse/ZOOKEEPER-1086) | zookeeper test jar has non mavenised dependency. |  Major | . | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-1181](https://issues.apache.org/jira/browse/ZOOKEEPER-1181) | Fix problems with Kerberos TGT renewal |  Major | java client, server | Eugene Koontz | Eugene Koontz |
| [ZOOKEEPER-1268](https://issues.apache.org/jira/browse/ZOOKEEPER-1268) | problems with read only mode, intermittent test failures and ERRORs in the log |  Blocker | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1271](https://issues.apache.org/jira/browse/ZOOKEEPER-1271) | testEarlyLeaderAbandonment failing on solaris - clients not retrying connection |  Blocker | java client | Patrick Hunt | Mahadev konar |
| [ZOOKEEPER-1192](https://issues.apache.org/jira/browse/ZOOKEEPER-1192) | Leader.waitForEpochAck() checks waitingForNewEpoch instead of checking electionFinished |  Critical | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1194](https://issues.apache.org/jira/browse/ZOOKEEPER-1194) | Two possible race conditions during leader establishment |  Major | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-1270](https://issues.apache.org/jira/browse/ZOOKEEPER-1270) | testEarlyLeaderAbandonment failing intermittently, quorum formed, no serving. |  Blocker | server | Patrick Hunt | Flavio Junqueira |
| [ZOOKEEPER-1264](https://issues.apache.org/jira/browse/ZOOKEEPER-1264) | FollowerResyncConcurrencyTest failing intermittently |  Blocker | tests | Patrick Hunt | Camille Fournier |
| [ZOOKEEPER-1208](https://issues.apache.org/jira/browse/ZOOKEEPER-1208) | Ephemeral node not removed after the client session is long gone |  Blocker | . | kishore gopalakrishna | Patrick Hunt |
| [ZOOKEEPER-1299](https://issues.apache.org/jira/browse/ZOOKEEPER-1299) | Add winconfig.h file to ignore in release audit. |  Major | . | Mahadev konar | Mahadev konar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-239](https://issues.apache.org/jira/browse/ZOOKEEPER-239) | ZooKeeper System Tests |  Major | c client, java client | Benjamin Reed |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-798](https://issues.apache.org/jira/browse/ZOOKEEPER-798) | Fixup loggraph for FLE changes |  Minor | contrib | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-909](https://issues.apache.org/jira/browse/ZOOKEEPER-909) | Extract NIO specific code from ClientCnxn |  Major | java client | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-908](https://issues.apache.org/jira/browse/ZOOKEEPER-908) | Remove code duplication and inconsistent naming in ClientCnxn.Packet creation |  Minor | server | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1042](https://issues.apache.org/jira/browse/ZOOKEEPER-1042) | Generate zookeeper test jar for maven installation |  Major | contrib-bookkeeper, contrib-hedwig | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-966](https://issues.apache.org/jira/browse/ZOOKEEPER-966) | Client side for multi |  Major | . | Ted Dunning |  |
| [ZOOKEEPER-967](https://issues.apache.org/jira/browse/ZOOKEEPER-967) | Server side decoding and function dispatch |  Major | . | Ted Dunning |  |
| [ZOOKEEPER-784](https://issues.apache.org/jira/browse/ZOOKEEPER-784) | server-side functionality for read-only mode |  Major | server | Sergey Doroshenko | Sergey Doroshenko |
| [ZOOKEEPER-1081](https://issues.apache.org/jira/browse/ZOOKEEPER-1081) | modify leader/follower code to correctly deal with new leader |  Major | server | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-1082](https://issues.apache.org/jira/browse/ZOOKEEPER-1082) | modify leader election to correctly take into account current epoch |  Major | server | Benjamin Reed | Flavio Junqueira |
| [ZOOKEEPER-839](https://issues.apache.org/jira/browse/ZOOKEEPER-839) | deleteRecursive does not belong to the other methods |  Blocker | java client | Patrick Datko | Mahadev konar |
| [ZOOKEEPER-1150](https://issues.apache.org/jira/browse/ZOOKEEPER-1150) | fix for this patch to compile on windows... |  Blocker | c client | Dheeraj Agrawal | Dheeraj Agrawal |
| [ZOOKEEPER-1160](https://issues.apache.org/jira/browse/ZOOKEEPER-1160) | test timeouts are too small |  Major | tests | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-1201](https://issues.apache.org/jira/browse/ZOOKEEPER-1201) | Clean SaslServerCallbackHandler.java |  Blocker | . | Thomas Koch | Thomas Koch |
| [ZOOKEEPER-1246](https://issues.apache.org/jira/browse/ZOOKEEPER-1246) | Dead code in PrepRequestProcessor catch Exception block |  Blocker | . | Thomas Koch | Camille Fournier |
| [ZOOKEEPER-1282](https://issues.apache.org/jira/browse/ZOOKEEPER-1282) | Learner.java not following Zab 1.0 protocol - setCurrentEpoch should be done upon receipt of NEWLEADER (before acking it) and not upon receipt of UPTODATE |  Major | server | Alexander Shraer | Benjamin Reed |
| [ZOOKEEPER-1291](https://issues.apache.org/jira/browse/ZOOKEEPER-1291) | AcceptedEpoch not updated at leader before it proposes the epoch to followers |  Major | server | Alexander Shraer | Alexander Shraer |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-754](https://issues.apache.org/jira/browse/ZOOKEEPER-754) | numerous misspellings "succesfully" |  Major | contrib-bindings, documentation | Thomas Koch | Andrei Savu |


