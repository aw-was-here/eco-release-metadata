
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

## Release 3.4.10 - 2017-03-30



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1045](https://issues.apache.org/jira/browse/ZOOKEEPER-1045) | Support Quorum Peer mutual authentication via SASL |  Critical | quorum, security | Eugene Joseph Koontz | Rakesh Radhakrishnan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2507](https://issues.apache.org/jira/browse/ZOOKEEPER-2507) | C unit test improvement: line break between 'ZooKeeper server started' and 'Running' |  Minor | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2557](https://issues.apache.org/jira/browse/ZOOKEEPER-2557) | Update gitignore to account for other file extensions |  Trivial | . | Edward Ribeiro | Edward Ribeiro |
| [ZOOKEEPER-2594](https://issues.apache.org/jira/browse/ZOOKEEPER-2594) | Use TLS for downloading artifacts during build |  Blocker | build | Olaf Flebbe | Olaf Flebbe |
| [ZOOKEEPER-2479](https://issues.apache.org/jira/browse/ZOOKEEPER-2479) | Add 'electionTimeTaken' value in LeaderMXBean and FollowerMXBean |  Major | quorum | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-2620](https://issues.apache.org/jira/browse/ZOOKEEPER-2620) | Add comments to testReadOnlySnapshotDir and testReadOnlyTxnLogDir indicating that the tests will fail when run as root |  Major | tests | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2682](https://issues.apache.org/jira/browse/ZOOKEEPER-2682) | Make it optional to fail build on test failure |  Minor | build, tests | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2672](https://issues.apache.org/jira/browse/ZOOKEEPER-2672) | Remove CHANGE.txt |  Major | build | Michael Han | Michael Han |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2558](https://issues.apache.org/jira/browse/ZOOKEEPER-2558) | Potential memory leak in recordio.c |  Minor | c client | Michael Han | Michael Han |
| [ZOOKEEPER-2579](https://issues.apache.org/jira/browse/ZOOKEEPER-2579) | ZooKeeper server should verify that dataDir and snapDir are writeable before starting |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2467](https://issues.apache.org/jira/browse/ZOOKEEPER-2467) | NullPointerException when redo Command is passed negative value |  Minor | java client | Joshi Shankar | Rakesh Kumar Singh |
| [ZOOKEEPER-2606](https://issues.apache.org/jira/browse/ZOOKEEPER-2606) | SaslServerCallbackHandler#handleAuthorizeCallback() should log the exception |  Minor | . | Ted Yu | Ted Yu |
| [ZOOKEEPER-2542](https://issues.apache.org/jira/browse/ZOOKEEPER-2542) | Update NOTICE file with Netty notice in 3.4 |  Blocker | . | Flavio Paiva Junqueira | Rakesh Radhakrishnan |
| [ZOOKEEPER-2552](https://issues.apache.org/jira/browse/ZOOKEEPER-2552) | Revisit release note doc and remove the items which are not related to the released version |  Major | . | Rakesh Radhakrishnan | Edward Ribeiro |
| [ZOOKEEPER-2470](https://issues.apache.org/jira/browse/ZOOKEEPER-2470) | ServerConfig#parse(String[])  ignores tickTime |  Trivial | server | Alexander Shraer | Edward Ribeiro |
| [ZOOKEEPER-2646](https://issues.apache.org/jira/browse/ZOOKEEPER-2646) | Java target in branch 3.4 doesn't match documentation |  Major | . | Flavio Paiva Junqueira | Flavio Paiva Junqueira |
| [ZOOKEEPER-2652](https://issues.apache.org/jira/browse/ZOOKEEPER-2652) | Fix HierarchicalQuorumTest.java |  Major | . | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-2465](https://issues.apache.org/jira/browse/ZOOKEEPER-2465) | Documentation copyright notice is out of date. |  Blocker | documentation | Chris Nauroth | Edward Ribeiro |
| [ZOOKEEPER-2383](https://issues.apache.org/jira/browse/ZOOKEEPER-2383) | Startup race in ZooKeeperServer |  Blocker | jmx, server | Steven Rowe | Rakesh Radhakrishnan |
| [ZOOKEEPER-2651](https://issues.apache.org/jira/browse/ZOOKEEPER-2651) | Missing src/pom.template in release |  Major | build | Christopher Tubbs | Rakesh Radhakrishnan |
| [ZOOKEEPER-2633](https://issues.apache.org/jira/browse/ZOOKEEPER-2633) | Build failure in contrib/zkfuse with gcc 6.x |  Minor | contrib-zkfuse | Raghavendra Prabhu | Raghavendra Prabhu |
| [ZOOKEEPER-2574](https://issues.apache.org/jira/browse/ZOOKEEPER-2574) | PurgeTxnLog can inadvertently delete required txn log files |  Major | server | Abhishek Rai | Abhishek Rai |
| [ZOOKEEPER-2671](https://issues.apache.org/jira/browse/ZOOKEEPER-2671) | Fix compilation error in branch-3.4 |  Major | server | Mohammad Arshad | Rakesh Radhakrishnan |
| [ZOOKEEPER-2573](https://issues.apache.org/jira/browse/ZOOKEEPER-2573) | Modify Info.REVISION to adapt git repo |  Major | build, server | Mohammad Arshad | Edward Ribeiro |
| [ZOOKEEPER-2622](https://issues.apache.org/jira/browse/ZOOKEEPER-2622) | ZooTrace.logQuorumPacket does nothing |  Trivial | . | Flavio Paiva Junqueira | Flavio Paiva Junqueira |
| [ZOOKEEPER-2044](https://issues.apache.org/jira/browse/ZOOKEEPER-2044) | CancelledKeyException in zookeeper branch-3.4 |  Minor | server | shamjith antholi | Michael Han |
| [ZOOKEEPER-2680](https://issues.apache.org/jira/browse/ZOOKEEPER-2680) | Correct DataNode.getChildren() inconsistent behaviour. |  Major | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2689](https://issues.apache.org/jira/browse/ZOOKEEPER-2689) | Fix Kerberos Authentication related test cases |  Critical | tests | Mohammad Arshad | Rakesh Radhakrishnan |
| [ZOOKEEPER-2617](https://issues.apache.org/jira/browse/ZOOKEEPER-2617) | correct a few spelling typos |  Trivial | . | tony mancill | tony mancill |
| [ZOOKEEPER-2678](https://issues.apache.org/jira/browse/ZOOKEEPER-2678) | Large databases take a long time to regain a quorum |  Major | server | Robert Joseph Evans | Robert Joseph Evans |
| [ZOOKEEPER-2696](https://issues.apache.org/jira/browse/ZOOKEEPER-2696) | Eclipse ant task no longer determines correct classpath for tests after ZOOKEEPER-2689 |  Major | build | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2693](https://issues.apache.org/jira/browse/ZOOKEEPER-2693) | DOS attack on wchp/wchc four letter words (4lw) |  Blocker | security, server | Patrick D. Hunt | Michael Han |
| [ZOOKEEPER-2710](https://issues.apache.org/jira/browse/ZOOKEEPER-2710) | Regenerate documentation for branch-3.4 release |  Major | documentation | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-2726](https://issues.apache.org/jira/browse/ZOOKEEPER-2726) | Patch for ZOOKEEPER-2693 introduces potential race condition |  Major | . | Kyle Nusbaum | Kyle Nusbaum |
| [ZOOKEEPER-2712](https://issues.apache.org/jira/browse/ZOOKEEPER-2712) | MiniKdc test case intermittently failing due to principal not found in Kerberos database |  Critical | tests | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-2706](https://issues.apache.org/jira/browse/ZOOKEEPER-2706) | checkstyle broken on branch-3.4 |  Major | . | Abraham Fine | Abraham Fine |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2502](https://issues.apache.org/jira/browse/ZOOKEEPER-2502) | Flaky Test: org.apache.zookeeper.server.quorum.CnxManagerTest.testCnxFromFutureVersion |  Major | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2650](https://issues.apache.org/jira/browse/ZOOKEEPER-2650) | Test Improvement by adding more QuorumPeer Auth related test cases |  Major | . | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-2656](https://issues.apache.org/jira/browse/ZOOKEEPER-2656) | Fix ServerConfigTest#testValidArguments test case failures |  Major | . | Rakesh Radhakrishnan | Michael Han |
| [ZOOKEEPER-2664](https://issues.apache.org/jira/browse/ZOOKEEPER-2664) | ClientPortBindTest#testBindByAddress may fail due to "No such device" exception |  Major | . | Ted Yu | Ted Yu |
| [ZOOKEEPER-2665](https://issues.apache.org/jira/browse/ZOOKEEPER-2665) | Port QA github pull request build to branch 3.4 and 3.5 |  Major | build | Flavio Paiva Junqueira | Enrico Olivelli |
| [ZOOKEEPER-2716](https://issues.apache.org/jira/browse/ZOOKEEPER-2716) | Flaky Test: org.apache.zookeeper.server.SessionTrackerTest.testAddSessionAfterSessionExpiry |  Major | server, tests | Michael Han | Michael Han |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2692](https://issues.apache.org/jira/browse/ZOOKEEPER-2692) | Fix race condition in testWatchAutoResetWithPending |  Major | tests | Abraham Fine | Abraham Fine |


