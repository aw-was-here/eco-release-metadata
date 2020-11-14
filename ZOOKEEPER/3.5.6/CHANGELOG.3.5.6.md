
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

## Release 3.5.6 - 2019-10-17



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2894](https://issues.apache.org/jira/browse/ZOOKEEPER-2894) | Memory and completions leak on zookeeper\_close |  Critical | c client | Alexander A. Strelets | Alexander A. Strelets |
| [ZOOKEEPER-2891](https://issues.apache.org/jira/browse/ZOOKEEPER-2891) | Invalid processing of zookeeper\_close for mutli-request |  Critical | c client | Alexander A. Strelets | Alexander A. Strelets |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3263](https://issues.apache.org/jira/browse/ZOOKEEPER-3263) | Illegal reflective access in zookeer's kerberosUtil |  Major | . | Pradeep Bansal | Andor Molnar |
| [ZOOKEEPER-3370](https://issues.apache.org/jira/browse/ZOOKEEPER-3370) | Remove SVN specific revision generation |  Major | build | Zili Chen | Zili Chen |
| [ZOOKEEPER-3494](https://issues.apache.org/jira/browse/ZOOKEEPER-3494) | No need to depend on netty-all (SSL) |  Major | . | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3519](https://issues.apache.org/jira/browse/ZOOKEEPER-3519) | upgrade dependency-check to 5.2.1 |  Major | build-infrastructure | Patrick D. Hunt | Patrick D. Hunt |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3105](https://issues.apache.org/jira/browse/ZOOKEEPER-3105) | Character coding problem occur when create a node using python3 |  Major | contrib | yang hao |  |
| [ZOOKEEPER-2694](https://issues.apache.org/jira/browse/ZOOKEEPER-2694) | sync CLI command does not wait for result from server |  Major | java client | Mohammad Arshad | maoling |
| [ZOOKEEPER-3404](https://issues.apache.org/jira/browse/ZOOKEEPER-3404) | BouncyCastle upgrade to 1.61 might cause flaky test issues |  Major | tests | Andor Molnar |  |
| [ZOOKEEPER-3405](https://issues.apache.org/jira/browse/ZOOKEEPER-3405) | owasp flagging jackson-databind |  Critical | . | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3433](https://issues.apache.org/jira/browse/ZOOKEEPER-3433) | zkpython build broken after maven migration |  Major | contrib-bindings | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3440](https://issues.apache.org/jira/browse/ZOOKEEPER-3440) | Fix Apache RAT check by excluding binary files (images) |  Critical | build, documentation | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3498](https://issues.apache.org/jira/browse/ZOOKEEPER-3498) | In zookeeper-jute project generated source should not be in target\\classes folder |  Major | build | Mohammad Arshad | Zili Chen |
| [ZOOKEEPER-3320](https://issues.apache.org/jira/browse/ZOOKEEPER-3320) | Leader election port stop listen when hostname unresolvable for some time |  Major | leaderElection | Igor Skokov | Igor Skokov |
| [ZOOKEEPER-3510](https://issues.apache.org/jira/browse/ZOOKEEPER-3510) | Frequent 'zkServer.sh stop' failures when running C test suite |  Minor | . | Damien Diederen |  |
| [ZOOKEEPER-3518](https://issues.apache.org/jira/browse/ZOOKEEPER-3518) | owasp check flagging jackson-databind 2.9.9.1 |  Blocker | security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3056](https://issues.apache.org/jira/browse/ZOOKEEPER-3056) | Fails to load database with missing snapshot file but valid transaction log file |  Critical | server | Michael Han | Michael Han |
| [ZOOKEEPER-3552](https://issues.apache.org/jira/browse/ZOOKEEPER-3552) | Source tarbal for branch-3.5 does not set execution permissions to "configure" file |  Blocker | build, c client | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3559](https://issues.apache.org/jira/browse/ZOOKEEPER-3559) | Update Jackson to 2.9.10 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [ZOOKEEPER-3563](https://issues.apache.org/jira/browse/ZOOKEEPER-3563) | dependency check failing on 3.4 and 3.5 branches - CVE-2019-16869 on Netty |  Blocker | security | Patrick D. Hunt |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3455](https://issues.apache.org/jira/browse/ZOOKEEPER-3455) | Java 13 build failure on trunk: UnifiedServerSocketTest.testConnectWithoutSSLToStrictServer |  Major | tests | Andor Molnar | Mate Szalay-Beko |
| [ZOOKEEPER-3542](https://issues.apache.org/jira/browse/ZOOKEEPER-3542) | X509UtilTest#testClientRenegotiationFails is flaky on JDK8 + linux on machines with 2 cores |  Critical | build, tests | Enrico Olivelli | Enrico Olivelli |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2609](https://issues.apache.org/jira/browse/ZOOKEEPER-2609) | Add TTL Node APIs to C client |  Major | c client, java client, jute, server | Jordan Zimmerman | Balazs Meszaros |
| [ZOOKEEPER-3443](https://issues.apache.org/jira/browse/ZOOKEEPER-3443) | Add support for PKCS12 trust/key stores |  Major | server | Ivan Yurchenko | Ivan Yurchenko |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3362](https://issues.apache.org/jira/browse/ZOOKEEPER-3362) | Create a simple checkstyle file |  Major | build | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3441](https://issues.apache.org/jira/browse/ZOOKEEPER-3441) | OWASP is flagging jackson-databind-2.9.9.jar for CVE-2019-12814 |  Critical | build, security | Enrico Olivelli | Patrick D. Hunt |
| [ZOOKEEPER-3463](https://issues.apache.org/jira/browse/ZOOKEEPER-3463) | Enable warning messages in maven compiler plugin |  Major | build | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3539](https://issues.apache.org/jira/browse/ZOOKEEPER-3539) | Fix branch-3.5 after upgrade on ASF CI |  Blocker | build, build-infrastructure | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3545](https://issues.apache.org/jira/browse/ZOOKEEPER-3545) | Fix LICENSE files for netty dependency |  Blocker | build | Enrico Olivelli | Enrico Olivelli |


