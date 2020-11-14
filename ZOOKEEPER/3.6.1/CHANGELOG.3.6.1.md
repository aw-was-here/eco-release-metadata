
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

## Release 3.6.1 - 2020-04-30



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3712](https://issues.apache.org/jira/browse/ZOOKEEPER-3712) | Add setKeepAlive support for NIOServerCnxn |  Major | server | Pierre Yin | Pierre Yin |
| [ZOOKEEPER-3689](https://issues.apache.org/jira/browse/ZOOKEEPER-3689) | zkCli/ZooKeeperMain relies on system properties for TLS config |  Major | security, server | Ron Dagostino | Sankalp Bhatia |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3708](https://issues.apache.org/jira/browse/ZOOKEEPER-3708) | Move Logging Code into Logging Guard in Learner |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3685](https://issues.apache.org/jira/browse/ZOOKEEPER-3685) | Use JDK Arrays Equals for Jute |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3686](https://issues.apache.org/jira/browse/ZOOKEEPER-3686) | Use JDK Arrays hashCode for Jute |  Minor | jute | David Mollitor | David Mollitor |
| [ZOOKEEPER-3741](https://issues.apache.org/jira/browse/ZOOKEEPER-3741) | Fix ZooKeeper 3.5 C client build on Fedora8 |  Major | c client | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3755](https://issues.apache.org/jira/browse/ZOOKEEPER-3755) | Use maven to create fatjar |  Major | build, contrib-fatjar | Sushant Mane | Sushant Mane |
| [ZOOKEEPER-3785](https://issues.apache.org/jira/browse/ZOOKEEPER-3785) | Make sources buildable with JDK14 |  Critical | build | Enrico Olivelli | Enrico Olivelli |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3737](https://issues.apache.org/jira/browse/ZOOKEEPER-3737) | Unable to eliminate log4j1 transitive dependency |  Major | jmx, server | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3706](https://issues.apache.org/jira/browse/ZOOKEEPER-3706) | ZooKeeper.close() would leak SendThread when the network is broken |  Major | java client | Pierre Yin | Pierre Yin |
| [ZOOKEEPER-2164](https://issues.apache.org/jira/browse/ZOOKEEPER-2164) | fast leader election keeps failing |  Major | leaderElection | Michi Mutsuzaki | Mate Szalay-Beko |
| [ZOOKEEPER-3745](https://issues.apache.org/jira/browse/ZOOKEEPER-3745) | Update copyright notices from 2019 to 2020 |  Major | . | Zili Chen | Zili Chen |
| [ZOOKEEPER-3758](https://issues.apache.org/jira/browse/ZOOKEEPER-3758) | Update from 3.5.7 to 3.6.0 does not work |  Major | server | Agostino Sarubbo | Mate Szalay-Beko |
| [ZOOKEEPER-3739](https://issues.apache.org/jira/browse/ZOOKEEPER-3739) | Remove use of com.sun.nio.file.SensitivityWatchEventModifier |  Major | build, server | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3756](https://issues.apache.org/jira/browse/ZOOKEEPER-3756) | Members failing to rejoin quorum |  Major | leaderElection | Dai Shi | Mate Szalay-Beko |
| [ZOOKEEPER-3760](https://issues.apache.org/jira/browse/ZOOKEEPER-3760) | remove a useless throwing CliException |  Major | . | Jinjiang Ling |  |
| [ZOOKEEPER-3769](https://issues.apache.org/jira/browse/ZOOKEEPER-3769) | fast leader election does not end if leader is taken down |  Major | leaderElection | Lasaro Camargos | Mate Szalay-Beko |
| [ZOOKEEPER-3780](https://issues.apache.org/jira/browse/ZOOKEEPER-3780) | restore Version.getRevision() to be backward compatible |  Critical | . | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3726](https://issues.apache.org/jira/browse/ZOOKEEPER-3726) | invalid ipv6 address comparison in C client |  Major | c client | Vladislav Tyulbashev | Mate Szalay-Beko |
| [ZOOKEEPER-3793](https://issues.apache.org/jira/browse/ZOOKEEPER-3793) | Request throttling is broken when RequestThrottler is disabled or configured incorrectly. |  Critical | server | Michael Han | Michael Han |
| [ZOOKEEPER-3738](https://issues.apache.org/jira/browse/ZOOKEEPER-3738) | Avoid use of broken codehaus properties-maven-plugin |  Major | build | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3797](https://issues.apache.org/jira/browse/ZOOKEEPER-3797) | Conflict between fatjar and full-build Maven profiles in branch-3.6 |  Blocker | build | Enrico Olivelli | Enrico Olivelli |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3763](https://issues.apache.org/jira/browse/ZOOKEEPER-3763) | Restore ZKUtil.deleteRecursive in order to help compatibility of applications with 3.5 and 3.6 |  Critical | java client | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3677](https://issues.apache.org/jira/browse/ZOOKEEPER-3677) | owasp checker failing for - CVE-2019-17571 Apache Log4j 1.2 deserialization of untrusted data in SocketServer |  Major | security | Patrick D. Hunt | Enrico Olivelli |
| [ZOOKEEPER-3669](https://issues.apache.org/jira/browse/ZOOKEEPER-3669) | Use switch Statement in ClientCnxn SendThread |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3751](https://issues.apache.org/jira/browse/ZOOKEEPER-3751) | upgrade jackson-databind to 2.10 from 2.9 |  Critical | security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3794](https://issues.apache.org/jira/browse/ZOOKEEPER-3794) | upgrade netty to address CVE-2020-11612 |  Blocker | security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3802](https://issues.apache.org/jira/browse/ZOOKEEPER-3802) | RAT check fails on fatjar module |  Blocker | build | Enrico Olivelli | Christopher Tubbs |


