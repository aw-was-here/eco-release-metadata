
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

## Release 3.5.3 - Unreleased (as of 2017-01-19)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1962](https://issues.apache.org/jira/browse/ZOOKEEPER-1962) | Add a CLI command to recursively list a znode and children |  Minor | java client | Gautam Gopalakrishnan | Gautam Gopalakrishnan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2505](https://issues.apache.org/jira/browse/ZOOKEEPER-2505) | Use shared library instead of static library in C client unit test |  Minor | c client | Michael Han | Michael Han |
| [ZOOKEEPER-2489](https://issues.apache.org/jira/browse/ZOOKEEPER-2489) | Upgrade Jetty dependency to a recent stable release version. |  Major | server | Michael Han | Edward Ribeiro |
| [ZOOKEEPER-2507](https://issues.apache.org/jira/browse/ZOOKEEPER-2507) | C unit test improvement: line break between 'ZooKeeper server started' and 'Running' |  Minor | tests | Michael Han | Michael Han |
| [ZOOKEEPER-2557](https://issues.apache.org/jira/browse/ZOOKEEPER-2557) | Update gitignore to account for other file extensions |  Trivial | . | Edward Ribeiro | Edward Ribeiro |
| [ZOOKEEPER-2594](https://issues.apache.org/jira/browse/ZOOKEEPER-2594) | Use TLS for downloading artifacts during build |  Blocker | build | Olaf Flebbe | Olaf Flebbe |
| [ZOOKEEPER-2479](https://issues.apache.org/jira/browse/ZOOKEEPER-2479) | Add 'electionTimeTaken' value in LeaderMXBean and FollowerMXBean |  Major | quorum | Rakesh R | Rakesh R |
| [ZOOKEEPER-2655](https://issues.apache.org/jira/browse/ZOOKEEPER-2655) | Improve NIOServerCnxn#isZKServerRunning to reflect the semantics correctly |  Minor | server | Rakesh R | Rakesh R |
| [ZOOKEEPER-2620](https://issues.apache.org/jira/browse/ZOOKEEPER-2620) | Add comments to testReadOnlySnapshotDir and testReadOnlyTxnLogDir indicating that the tests will fail when run as root |  Major | tests | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2511](https://issues.apache.org/jira/browse/ZOOKEEPER-2511) | Implement AutoCloseable in ZooKeeper.java |  Major | . | Abraham Fine | Abraham Fine |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1927](https://issues.apache.org/jira/browse/ZOOKEEPER-1927) | zkServer.sh fails to read dataDir (and others) from zoo.cfg on Solaris 10 (grep issue, manifests as FAILED TO WRITE PID). |  Major | scripts | Ed Schmed | Chris Nauroth |
| [ZOOKEEPER-1898](https://issues.apache.org/jira/browse/ZOOKEEPER-1898) | ZooKeeper Java cli shell always returns "0" as exit code |  Critical | java client | Srinath Mantripragada | Abraham Fine |
| [ZOOKEEPER-2477](https://issues.apache.org/jira/browse/ZOOKEEPER-2477) | documentation should refer to Java cli shell and not C cli shell |  Major | documentation | Patrick Hunt | Abraham Fine |
| [ZOOKEEPER-1256](https://issues.apache.org/jira/browse/ZOOKEEPER-1256) | ClientPortBindTest is failing on Mac OS X |  Major | tests | Daniel Gómez Ferro | Flavio Junqueira |
| [ZOOKEEPER-2442](https://issues.apache.org/jira/browse/ZOOKEEPER-2442) | Socket leak in QuorumCnxManager connectOne |  Major | quorum, server | Michael Han | Michael Han |
| [ZOOKEEPER-2498](https://issues.apache.org/jira/browse/ZOOKEEPER-2498) | Potential resource leak in C client when processing unexpected / out of order response |  Major | c client | Michael Han | Michael Han |
| [ZOOKEEPER-2500](https://issues.apache.org/jira/browse/ZOOKEEPER-2500) | Fix compilation warnings for CliException classes |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2074](https://issues.apache.org/jira/browse/ZOOKEEPER-2074) | Incorrect exit codes for "./zkCli.sh cmd arg" |  Minor | . | Surendra Singh Lilhore | Abraham Fine |
| [ZOOKEEPER-2247](https://issues.apache.org/jira/browse/ZOOKEEPER-2247) | Zookeeper service becomes unavailable when leader fails to write transaction log |  Critical | . | Arshad Mohammad | Rakesh R |
| [ZOOKEEPER-2548](https://issues.apache.org/jira/browse/ZOOKEEPER-2548) | zooInspector does not start on Windows |  Major | contrib | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2558](https://issues.apache.org/jira/browse/ZOOKEEPER-2558) | Potential memory leak in recordio.c |  Minor | c client | Michael Han | Michael Han |
| [ZOOKEEPER-2536](https://issues.apache.org/jira/browse/ZOOKEEPER-2536) | When provide path for "dataDir" with trailing space, it is taking correct path (by trucating space) for snapshot but creating temporary file with some junk folder name for zookeeper\_server.pid |  Major | server | Rakesh Kumar Singh | Rakesh Kumar Singh |
| [ZOOKEEPER-2539](https://issues.apache.org/jira/browse/ZOOKEEPER-2539) | Throwing nullpointerException when run the command "config -c" when client port is mentioned as separate and not like new style |  Minor | java client | Rakesh Kumar Singh | Rakesh Kumar Singh |
| [ZOOKEEPER-2172](https://issues.apache.org/jira/browse/ZOOKEEPER-2172) | Cluster crashes when reconfig a new node as a participant |  Critical | leaderElection, quorum, server | Ziyou Wang | Arshad Mohammad |
| [ZOOKEEPER-2579](https://issues.apache.org/jira/browse/ZOOKEEPER-2579) | ZooKeeper server should verify that dataDir and snapDir are writeable before starting |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2611](https://issues.apache.org/jira/browse/ZOOKEEPER-2611) | zoo\_remove\_watchers - can remove the wrong watch |  Critical | c client | Eyal leshem | Eyal leshem |
| [ZOOKEEPER-2467](https://issues.apache.org/jira/browse/ZOOKEEPER-2467) | NullPointerException when redo Command is passed negative value |  Minor | java client | Joshi Shankar | Rakesh Kumar Singh |
| [ZOOKEEPER-2606](https://issues.apache.org/jira/browse/ZOOKEEPER-2606) | SaslServerCallbackHandler#handleAuthorizeCallback() should log the exception |  Minor | . | Ted Yu | Ted Yu |
| [ZOOKEEPER-2014](https://issues.apache.org/jira/browse/ZOOKEEPER-2014) | Only admin should be allowed to reconfig a cluster |  Blocker | server | Raul Gutierrez Segales | Michael Han |
| [ZOOKEEPER-2628](https://issues.apache.org/jira/browse/ZOOKEEPER-2628) | Investigate and fix findbug warnings |  Major | . | Michael Han | Michael Han |
| [ZOOKEEPER-2636](https://issues.apache.org/jira/browse/ZOOKEEPER-2636) | Fix C build break. |  Blocker | jute | Michael Han | Michael Han |
| [ZOOKEEPER-2627](https://issues.apache.org/jira/browse/ZOOKEEPER-2627) | Remove ZRWSERVERFOUND from C client and replace handle\_error with something more semantically explicit for r/w server reconnect. |  Major | c client | Michael Han | Michael Han |
| [ZOOKEEPER-2635](https://issues.apache.org/jira/browse/ZOOKEEPER-2635) | Regenerate documentation |  Blocker | documentation | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2470](https://issues.apache.org/jira/browse/ZOOKEEPER-2470) | ServerConfig#parse(String[])  ignores tickTime |  Trivial | server | Alexander Shraer | Edward Ribeiro |
| [ZOOKEEPER-2517](https://issues.apache.org/jira/browse/ZOOKEEPER-2517) | jute.maxbuffer is ignored |  Blocker | . | Benjamin Jaton | Arshad Mohammad |
| [ZOOKEEPER-2465](https://issues.apache.org/jira/browse/ZOOKEEPER-2465) | Documentation copyright notice is out of date. |  Blocker | documentation | Chris Nauroth | Edward Ribeiro |
| [ZOOKEEPER-2383](https://issues.apache.org/jira/browse/ZOOKEEPER-2383) | Startup race in ZooKeeperServer |  Blocker | jmx, server | Steve Rowe | Rakesh R |
| [ZOOKEEPER-2647](https://issues.apache.org/jira/browse/ZOOKEEPER-2647) | Fix TestReconfigServer.cc |  Blocker | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-2651](https://issues.apache.org/jira/browse/ZOOKEEPER-2651) | Missing src/pom.template in release |  Major | build | Christopher Tubbs | Rakesh R |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2482](https://issues.apache.org/jira/browse/ZOOKEEPER-2482) | Flaky Test: org.apache.zookeeper.test.ClientPortBindTest.testBindByAddress |  Major | server, tests | Michael Han | Michael Han |
| [ZOOKEEPER-2508](https://issues.apache.org/jira/browse/ZOOKEEPER-2508) | Many ZooKeeper tests are flaky because they proceed with zk operation without connecting to ZooKeeper server. |  Major | tests | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2484](https://issues.apache.org/jira/browse/ZOOKEEPER-2484) | Flaky Test: org.apache.zookeeper.test.LoadFromLogTest.testLoadFailure |  Major | server, tests | Michael Han | Michael Han |
| [ZOOKEEPER-2656](https://issues.apache.org/jira/browse/ZOOKEEPER-2656) | Fix ServerConfigTest#testValidArguments test case failures |  Major | . | Rakesh R | Michael Han |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2152](https://issues.apache.org/jira/browse/ZOOKEEPER-2152) | Intermittent failure in TestReconfig.cc |  Major | c client | Michi Mutsuzaki | Michael Han |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2658](https://issues.apache.org/jira/browse/ZOOKEEPER-2658) | Trunk / branch-3.5 build broken. |  Critical | . | Michael Han | Michael Han |


