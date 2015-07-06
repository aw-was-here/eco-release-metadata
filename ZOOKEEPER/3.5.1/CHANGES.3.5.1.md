
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

## Release 3.5.1 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2163](https://issues.apache.org/jira/browse/ZOOKEEPER-2163) | Introduce new ZNode type: container |  Major | c client, java client, server | Jordan Zimmerman | Jordan Zimmerman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2208](https://issues.apache.org/jira/browse/ZOOKEEPER-2208) | Log type of unexpected quorum packet in observer loop |  Trivial | server | Akihiro Suda | Hitoshi Mitake |
| [ZOOKEEPER-2207](https://issues.apache.org/jira/browse/ZOOKEEPER-2207) | Enhance error logs with LearnerHandler.packetToString() |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2206](https://issues.apache.org/jira/browse/ZOOKEEPER-2206) | Add missing packet types to LearnerHandler.packetToString() |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2205](https://issues.apache.org/jira/browse/ZOOKEEPER-2205) | Log type of unexpected quorum packet in learner handler loop |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2194](https://issues.apache.org/jira/browse/ZOOKEEPER-2194) | Let DataNode.getChildren() return an unmodifiable view of its children set |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2185](https://issues.apache.org/jira/browse/ZOOKEEPER-2185) | Run server with -XX:+HeapDumpOnOutOfMemoryError and -XX:OnOutOfMemoryError='kill %p'. |  Minor | documentation, scripts | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2183](https://issues.apache.org/jira/browse/ZOOKEEPER-2183) | Concurrent Testing Processes and Port Assignments |  Major | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2176](https://issues.apache.org/jira/browse/ZOOKEEPER-2176) | Unclear error message should be info not error |  Major | quorum | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2126](https://issues.apache.org/jira/browse/ZOOKEEPER-2126) | Improve exit log messsage of EventThread and SendThread by adding SessionId |  Major | java client | zhihai xu | Surendra Singh Lilhore |
| [ZOOKEEPER-2110](https://issues.apache.org/jira/browse/ZOOKEEPER-2110) | Typo fixes in the ZK documentation |  Minor | documentation | Jeffrey Schroeder | Jeffrey Schroeder |
| [ZOOKEEPER-2107](https://issues.apache.org/jira/browse/ZOOKEEPER-2107) | zookeeper client should support custom HostProviders |  Major | java client | Robert Kamphuis | Robert Kamphuis |
| [ZOOKEEPER-2098](https://issues.apache.org/jira/browse/ZOOKEEPER-2098) | QuorumCnxManager: use BufferedOutputStream for initial msg |  Major | quorum, server | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2079](https://issues.apache.org/jira/browse/ZOOKEEPER-2079) | Stop daemon with "kill" rather than "kill -9" |  Minor | scripts | Guillaume ALAUX | Guillaume ALAUX |
| [ZOOKEEPER-1994](https://issues.apache.org/jira/browse/ZOOKEEPER-1994) | Backup config files. |  Major | server | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1963](https://issues.apache.org/jira/browse/ZOOKEEPER-1963) | Make JDK 7 the minimum requirement for Zookeeper |  Major | build | Edward Carter | Hongchao Deng |
| [ZOOKEEPER-1948](https://issues.apache.org/jira/browse/ZOOKEEPER-1948) | Enable JMX remote monitoring |  Major | server | Biju Nair | Biju Nair |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2213](https://issues.apache.org/jira/browse/ZOOKEEPER-2213) | Empty path in Set crashes server and prevents restart |  Blocker | server | Brian Brazil | Hongchao Deng |
| [ZOOKEEPER-2212](https://issues.apache.org/jira/browse/ZOOKEEPER-2212) | distributed race condition related to QV version |  Critical | quorum | Akihiro Suda | Akihiro Suda |
| [ZOOKEEPER-2210](https://issues.apache.org/jira/browse/ZOOKEEPER-2210) | clock\_gettime is not available in os x |  Major | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-2198](https://issues.apache.org/jira/browse/ZOOKEEPER-2198) | Set default test.junit.threads to 1. |  Minor | build | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2190](https://issues.apache.org/jira/browse/ZOOKEEPER-2190) | In StandaloneDisabledTest, testReconfig() shouldn't take leaving servers as joining servers |  Major | tests | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2187](https://issues.apache.org/jira/browse/ZOOKEEPER-2187) | remove duplicated code between CreateRequest{,2} |  Minor | c client, java client, server | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2186](https://issues.apache.org/jira/browse/ZOOKEEPER-2186) | QuorumCnxManager#receiveConnection may crash with random input |  Major | server | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2182](https://issues.apache.org/jira/browse/ZOOKEEPER-2182) | Several test suites are not running during pre-commit, because their names do not end with "Test". |  Major | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2178](https://issues.apache.org/jira/browse/ZOOKEEPER-2178) | Native client fails compilation on Windows. |  Major | c client | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2171](https://issues.apache.org/jira/browse/ZOOKEEPER-2171) | avoid reverse lookups in QuorumCnxManager |  Major | quorum | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2114](https://issues.apache.org/jira/browse/ZOOKEEPER-2114) | jute generated allocate\_\* functions are not externally visible |  Major | c client | Tim Crowder | Tim Crowder |
| [ZOOKEEPER-2111](https://issues.apache.org/jira/browse/ZOOKEEPER-2111) | Not isAlive states should be synchronized in ClientCnxn |  Major | java client | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2073](https://issues.apache.org/jira/browse/ZOOKEEPER-2073) | Memory leak on zookeeper\_close |  Critical | c client | Dave Gosselin | Dave Gosselin |
| [ZOOKEEPER-2072](https://issues.apache.org/jira/browse/ZOOKEEPER-2072) | Netty Server Should Configure Child Channel Pipeline By Specifying ChannelPipelineFactory |  Major | server | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2062](https://issues.apache.org/jira/browse/ZOOKEEPER-2062) | RemoveWatchesTest takes forever to run |  Major | tests | Flavio Junqueira | Chris Nauroth |
| [ZOOKEEPER-2060](https://issues.apache.org/jira/browse/ZOOKEEPER-2060) | Trace bug in NettyServerCnxnFactory |  Major | server | Ian Dimayuga | Ian Dimayuga |
| [ZOOKEEPER-2052](https://issues.apache.org/jira/browse/ZOOKEEPER-2052) | Unable to delete a node when the node has no children |  Major | server | Yip Ng | Hongchao Deng |
| [ZOOKEEPER-2039](https://issues.apache.org/jira/browse/ZOOKEEPER-2039) | Jute compareBytes incorrect comparison index |  Minor | jute | Ian Dimayuga | Ian Dimayuga |
| [ZOOKEEPER-2030](https://issues.apache.org/jira/browse/ZOOKEEPER-2030) | dynamicConfigFile should have an absolute path, not a relative path, to the dynamic configuration file |  Minor | server | Alexander Shraer | Alexander Shraer |
| [ZOOKEEPER-2029](https://issues.apache.org/jira/browse/ZOOKEEPER-2029) | Leader.LearnerCnxAcceptor should handle exceptions in run() |  Minor | quorum | Asad Saeed | Rakesh R |
| [ZOOKEEPER-2026](https://issues.apache.org/jira/browse/ZOOKEEPER-2026) | Startup order in ServerCnxnFactory-ies is wrong |  Minor | jmx, server | Stevo Slavic | Stevo Slavic |
| [ZOOKEEPER-2013](https://issues.apache.org/jira/browse/ZOOKEEPER-2013) | typos in zookeeperProgrammers |  Trivial | documentation | Tim Chambers | Tim Chambers |
| [ZOOKEEPER-2008](https://issues.apache.org/jira/browse/ZOOKEEPER-2008) | System test fails due to missing leader election port |  Minor | contrib-fatjar | Kfir Lev-Ari | Kfir Lev-Ari |
| [ZOOKEEPER-2006](https://issues.apache.org/jira/browse/ZOOKEEPER-2006) | Standalone mode won't take client port from dynamic config |  Major | server | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1987](https://issues.apache.org/jira/browse/ZOOKEEPER-1987) | unable to restart 3 node cluster |  Blocker | tests | Patrick Hunt | Alexander Shraer |
| [ZOOKEEPER-1949](https://issues.apache.org/jira/browse/ZOOKEEPER-1949) | recipes jar not included in the distribution package |  Major | recipes | Rakesh R | Rakesh R |
| [ZOOKEEPER-1893](https://issues.apache.org/jira/browse/ZOOKEEPER-1893) | automake: use serial-tests option |  Minor | c client | Michi Mutsuzaki | Michi Mutsuzaki |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2032](https://issues.apache.org/jira/browse/ZOOKEEPER-2032) | ReconfigBackupTest didn't clean up resources. |  Minor | tests | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2017](https://issues.apache.org/jira/browse/ZOOKEEPER-2017) | New tests for reconfig failure cases |  Minor | tests | Alexander Shraer | Alexander Shraer |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2134](https://issues.apache.org/jira/browse/ZOOKEEPER-2134) | AsyncHammerTest.testHammer fails intermittently |  Blocker | tests | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-2047](https://issues.apache.org/jira/browse/ZOOKEEPER-2047) | testTruncationNullLog fails on windows |  Major | tests | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1660](https://issues.apache.org/jira/browse/ZOOKEEPER-1660) | Add documentation for dynamic reconfiguration |  Blocker | documentation | Alexander Shraer | Reed Wanderman-Milne |
| [ZOOKEEPER-1626](https://issues.apache.org/jira/browse/ZOOKEEPER-1626) | Zookeeper C client should be tolerant of clock adjustments |  Major | c client | Colin Patrick McCabe | Colin Patrick McCabe |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


