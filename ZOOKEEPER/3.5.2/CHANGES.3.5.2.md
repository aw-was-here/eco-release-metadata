
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

## Release 3.5.2 - Unreleased (as of 2015-12-15)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2326](https://issues.apache.org/jira/browse/ZOOKEEPER-2326) | Include connected server address:port in log |  Minor | java client | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2315](https://issues.apache.org/jira/browse/ZOOKEEPER-2315) | Change client connect zk service timeout log level from Info to Warn level |  Minor | java client | Lin Yiqun |  |
| [ZOOKEEPER-2306](https://issues.apache.org/jira/browse/ZOOKEEPER-2306) | Remove file delete duplicate  code from test code |  Major | tests | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2300](https://issues.apache.org/jira/browse/ZOOKEEPER-2300) | Expose SecureClientPort and SecureClientAddress JMX properties |  Major | jmx | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2191](https://issues.apache.org/jira/browse/ZOOKEEPER-2191) | Continue supporting prior Ant versions that don't implement the threads attribute for the JUnit task. |  Major | build | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2040](https://issues.apache.org/jira/browse/ZOOKEEPER-2040) | Server to log underlying cause of SASL connection problems |  Major | server | Steve Loughran | Steve Loughran |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2340](https://issues.apache.org/jira/browse/ZOOKEEPER-2340) | JMX is disabled even if JMXDISABLE is false |  Minor | . | neha | Arshad Mohammad |
| [ZOOKEEPER-2330](https://issues.apache.org/jira/browse/ZOOKEEPER-2330) | ZooKeeper close API does not close Login thread. |  Major | java client | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2329](https://issues.apache.org/jira/browse/ZOOKEEPER-2329) | Clear javac and javadoc warning from zookeeper |  Minor | . | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2311](https://issues.apache.org/jira/browse/ZOOKEEPER-2311) | assert in setup\_random |  Major | c client | Marshall McMullen |  |
| [ZOOKEEPER-2304](https://issues.apache.org/jira/browse/ZOOKEEPER-2304) | JMX ClientPort from ZooKeeperServerBean incorrect |  Major | jmx | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2302](https://issues.apache.org/jira/browse/ZOOKEEPER-2302) | Some test cases are not running because wrongly named |  Major | tests | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2301](https://issues.apache.org/jira/browse/ZOOKEEPER-2301) | QuorumPeer does not listen on passed client IP in the constructor |  Major | server | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2299](https://issues.apache.org/jira/browse/ZOOKEEPER-2299) | NullPointerException in LocalPeerBean for ClientAddress |  Major | jmx | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2295](https://issues.apache.org/jira/browse/ZOOKEEPER-2295) | TGT refresh time logic is wrong |  Major | . | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2281](https://issues.apache.org/jira/browse/ZOOKEEPER-2281) | ZK Server startup fails if there are spaces in the JAVA\_HOME path |  Minor | scripts | neha | neha |
| [ZOOKEEPER-2279](https://issues.apache.org/jira/browse/ZOOKEEPER-2279) | QuorumPeer  loadDataBase() error message is incorrect |  Major | quorum | sunhaitao | Arshad Mohammad |
| [ZOOKEEPER-2269](https://issues.apache.org/jira/browse/ZOOKEEPER-2269) | NullPointerException  in RemotePeerBean |  Major | jmx | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2268](https://issues.apache.org/jira/browse/ZOOKEEPER-2268) | Zookeeper doc creation fails on windows |  Major | build | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2264](https://issues.apache.org/jira/browse/ZOOKEEPER-2264) | Wrong error message when secureClientPortAddress is configured but secureClientPort is not configured |  Minor | server | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2256](https://issues.apache.org/jira/browse/ZOOKEEPER-2256) | Zookeeper is not using specified JMX port in zkEnv.sh |  Minor | scripts | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2252](https://issues.apache.org/jira/browse/ZOOKEEPER-2252) | Random test case failure in org.apache.zookeeper.test.StaticHostProviderTest |  Minor | . | Arshad Mohammad | Timothy Ward |
| [ZOOKEEPER-2245](https://issues.apache.org/jira/browse/ZOOKEEPER-2245) | SimpleSysTest test cases fails |  Major | . | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2244](https://issues.apache.org/jira/browse/ZOOKEEPER-2244) | On Windows zookeeper fails to restart |  Critical | . | Arshad Mohammad | Arshad Mohammad |
| [ZOOKEEPER-2239](https://issues.apache.org/jira/browse/ZOOKEEPER-2239) | JMX State from LocalPeerBean incorrect |  Major | jmx | Kevin Lee | Kevin Lee |
| [ZOOKEEPER-2229](https://issues.apache.org/jira/browse/ZOOKEEPER-2229) | Several four-letter words are undocumented. |  Major | documentation | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2227](https://issues.apache.org/jira/browse/ZOOKEEPER-2227) | stmk four-letter word fails execution at server while reading trace mask argument. |  Major | server | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2211](https://issues.apache.org/jira/browse/ZOOKEEPER-2211) | PurgeTxnLog does not correctly purge when snapshots and logs are at different locations |  Major | scripts | Wesley Chow | Arshad Mohammad |
| [ZOOKEEPER-2201](https://issues.apache.org/jira/browse/ZOOKEEPER-2201) | Network issues can cause cluster to hang due to near-deadlock |  Critical | . | Donny Nadolny | Donny Nadolny |
| [ZOOKEEPER-2174](https://issues.apache.org/jira/browse/ZOOKEEPER-2174) | JUnit4ZKTestRunner logs test failure for all exceptions even if the test method is annotated with an expected exception. |  Minor | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2156](https://issues.apache.org/jira/browse/ZOOKEEPER-2156) | If JAVA\_HOME is not set zk startup and fetching status command execution result misleads user. |  Major | scripts | J.Andreina | J.Andreina |
| [ZOOKEEPER-2142](https://issues.apache.org/jira/browse/ZOOKEEPER-2142) | JMX ObjectName is incorrect for observers |  Trivial | . | Karol Dudzinski | Edward Ribeiro |
| [ZOOKEEPER-1929](https://issues.apache.org/jira/browse/ZOOKEEPER-1929) | std::length\_error on update children |  Major | contrib-zkfuse | Eduard White |  |
| [ZOOKEEPER-1927](https://issues.apache.org/jira/browse/ZOOKEEPER-1927) | zkServer.sh fails to read dataDir (and others) from zoo.cfg on Solaris 10 (grep issue, manifests as FAILED TO WRITE PID). |  Major | scripts | Ed Schmed | Chris Nauroth |
| [ZOOKEEPER-1853](https://issues.apache.org/jira/browse/ZOOKEEPER-1853) | zkCli.sh can't issue a CREATE command containing spaces in the data |  Minor | java client | sekine coulibaly | Ryan Lamore |
| [ZOOKEEPER-1803](https://issues.apache.org/jira/browse/ZOOKEEPER-1803) | Add description for pzxid in programmer's guide. |  Major | documentation | Leader Ni | Arshad Mohammad |
| [ZOOKEEPER-1371](https://issues.apache.org/jira/browse/ZOOKEEPER-1371) | Remove dependency on log4j in the source code. |  Major | . | Mahadev konar | Arshad Mohammad |
| [ZOOKEEPER-1077](https://issues.apache.org/jira/browse/ZOOKEEPER-1077) | C client lib doesn't build on Solaris |  Critical | build, c client | Tadeusz Andrzej Kadłubowski | Chris Nauroth |
| [ZOOKEEPER-1029](https://issues.apache.org/jira/browse/ZOOKEEPER-1029) | C client bug in zookeeper\_init (if bad hostname is given) |  Blocker | c client | Dheeraj Agrawal | Flavio Junqueira |
| [ZOOKEEPER-706](https://issues.apache.org/jira/browse/ZOOKEEPER-706) | large numbers of watches can cause session re-establishment to fail |  Critical | c client, java client | Patrick Hunt | Chris Thunes |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1872](https://issues.apache.org/jira/browse/ZOOKEEPER-1872) | QuorumPeer is not shutdown in few cases |  Major | . | Rakesh R | Rakesh R |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


