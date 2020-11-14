
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

## Release 3.5.7 - 2020-02-14



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3388](https://issues.apache.org/jira/browse/ZOOKEEPER-3388) | Allow client port to support plaintext and encrypted connections simultaneously |  Minor | server | Brian Nixon |  |
| [ZOOKEEPER-3453](https://issues.apache.org/jira/browse/ZOOKEEPER-3453) | missing 'SET' in zkCli on windows |  Minor | . | Jorg Heymans |  |
| [ZOOKEEPER-1467](https://issues.apache.org/jira/browse/ZOOKEEPER-1467) | Make server principal configurable at client side. |  Major | java client | Laxman | Sujith Simon |
| [ZOOKEEPER-3627](https://issues.apache.org/jira/browse/ZOOKEEPER-3627) | Update Jackson to 2.9.10.1 and the Owasp plugin to 5.2.4 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [ZOOKEEPER-3638](https://issues.apache.org/jira/browse/ZOOKEEPER-3638) | Update Jetty to 9.4.24.v20191120 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [ZOOKEEPER-3482](https://issues.apache.org/jira/browse/ZOOKEEPER-3482) | SASL (Kerberos) Authentication with SSL for clients and Quorum |  Major | server | Jörn Franke | Mate Szalay-Beko |
| [ZOOKEEPER-3708](https://issues.apache.org/jira/browse/ZOOKEEPER-3708) | Move Logging Code into Logging Guard in Learner |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3715](https://issues.apache.org/jira/browse/ZOOKEEPER-3715) | Kerberos Authentication related tests fail for new JDK versions |  Major | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3703](https://issues.apache.org/jira/browse/ZOOKEEPER-3703) | Publish a Test-Jar from ZooKeeper Server |  Major | tests | Jordan Zimmerman | Jordan Zimmerman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3496](https://issues.apache.org/jira/browse/ZOOKEEPER-3496) | Transaction larger than jute.maxbuffer makes ZooKeeper unavailable |  Critical | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2282](https://issues.apache.org/jira/browse/ZOOKEEPER-2282) | chroot not stripped from path in asynchronous callbacks |  Critical | c client | Andrew Grasso | Andrew Grasso |
| [ZOOKEEPER-3590](https://issues.apache.org/jira/browse/ZOOKEEPER-3590) | Zookeeper is unable to set the zookeeper.sasl.client.canonicalize.hostname using system variable |  Minor | java client | Aristotelhs |  |
| [ZOOKEEPER-3633](https://issues.apache.org/jira/browse/ZOOKEEPER-3633) | AdminServer commands throw NPE when only secure client port is used |  Major | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3644](https://issues.apache.org/jira/browse/ZOOKEEPER-3644) | Data loss after upgrading standalone ZK server 3.4.14 to 3.5.6 with snapshot.trust.empty=true |  Blocker | server | Manikumar | Michael Han |
| [ZOOKEEPER-3667](https://issues.apache.org/jira/browse/ZOOKEEPER-3667) | set jute.maxbuffer hexadecimal number throw parseInt error |  Major | java client | bright.zhou | Sujith Simon |
| [ZOOKEEPER-3613](https://issues.apache.org/jira/browse/ZOOKEEPER-3613) | ZKConfig fails to return proper value on getBoolean() when user accidentally includes spaces at the end of the value |  Minor | server | Scott Guminy | Sujith Simon |
| [ZOOKEEPER-3699](https://issues.apache.org/jira/browse/ZOOKEEPER-3699) | upgrade jackson-databind to address CVE-2019-20330 |  Blocker | security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3716](https://issues.apache.org/jira/browse/ZOOKEEPER-3716) | upgrade netty 4.1.42 to address CVE-2019-20444 CVE-2019-20445 |  Blocker | security, server | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-1105](https://issues.apache.org/jira/browse/ZOOKEEPER-1105) | c client zookeeper\_close not send CLOSE\_OP request to server |  Major | c client | jiang guangran | Mate Szalay-Beko |
| [ZOOKEEPER-3719](https://issues.apache.org/jira/browse/ZOOKEEPER-3719) | C Client compilation issues in 3.5.7-rc |  Major | c client | Damien Diederen | Damien Diederen |
| [ZOOKEEPER-3718](https://issues.apache.org/jira/browse/ZOOKEEPER-3718) | Generated source tarball is missing some files |  Major | . | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3674](https://issues.apache.org/jira/browse/ZOOKEEPER-3674) | zookeeper.ssl.clientAuth ignored |  Major | security, server | Ron Dagostino |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3677](https://issues.apache.org/jira/browse/ZOOKEEPER-3677) | owasp checker failing for - CVE-2019-17571 Apache Log4j 1.2 deserialization of untrusted data in SocketServer |  Major | security | Patrick D. Hunt | Enrico Olivelli |
| [ZOOKEEPER-3704](https://issues.apache.org/jira/browse/ZOOKEEPER-3704) | upgrade maven dependency-check to 5.3.0 |  Major | build, security | Patrick D. Hunt | Patrick D. Hunt |


