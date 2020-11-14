
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

## Release 3.5.8 - 2020-05-11



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3679](https://issues.apache.org/jira/browse/ZOOKEEPER-3679) | Upgrade maven-compiler-plugin For ZooKeeper-jute |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3678](https://issues.apache.org/jira/browse/ZOOKEEPER-3678) | Remove Redundant GroupID from Maven POMs |  Trivial | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3785](https://issues.apache.org/jira/browse/ZOOKEEPER-3785) | Make sources buildable with JDK14 |  Critical | build | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3357](https://issues.apache.org/jira/browse/ZOOKEEPER-3357) | Remove Dead Link from ZooKeeper Programmer's Guide |  Trivial | documentation | David Mollitor | David Mollitor |
| [ZOOKEEPER-3355](https://issues.apache.org/jira/browse/ZOOKEEPER-3355) | Remove 'tbd' From Docs |  Trivial | documentation | David Mollitor | David Mollitor |
| [ZOOKEEPER-3727](https://issues.apache.org/jira/browse/ZOOKEEPER-3727) | Fix 3.5 source tarball to represent the git repository |  Major | . | Norbert Kalmár | Mate Szalay-Beko |
| [ZOOKEEPER-3723](https://issues.apache.org/jira/browse/ZOOKEEPER-3723) | Zookeeper Client should not fail with ZSYSTEMERROR if DNS does not resolve one of the servers in the zk ensemble. |  Minor | c client, java client | Suhas Dantkale |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2307](https://issues.apache.org/jira/browse/ZOOKEEPER-2307) | ZooKeeper not starting because acceptedEpoch is less than the currentEpoch |  Major | server | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-3737](https://issues.apache.org/jira/browse/ZOOKEEPER-3737) | Unable to eliminate log4j1 transitive dependency |  Major | jmx, server | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-2164](https://issues.apache.org/jira/browse/ZOOKEEPER-2164) | fast leader election keeps failing |  Major | leaderElection | Michi Mutsuzaki | Mate Szalay-Beko |
| [ZOOKEEPER-3739](https://issues.apache.org/jira/browse/ZOOKEEPER-3739) | Remove use of com.sun.nio.file.SensitivityWatchEventModifier |  Major | build, server | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3756](https://issues.apache.org/jira/browse/ZOOKEEPER-3756) | Members failing to rejoin quorum |  Major | leaderElection | Dai Shi | Mate Szalay-Beko |
| [ZOOKEEPER-3760](https://issues.apache.org/jira/browse/ZOOKEEPER-3760) | remove a useless throwing CliException |  Major | . | Jinjiang Ling |  |
| [ZOOKEEPER-3769](https://issues.apache.org/jira/browse/ZOOKEEPER-3769) | fast leader election does not end if leader is taken down |  Major | leaderElection | Lasaro Camargos | Mate Szalay-Beko |
| [ZOOKEEPER-3780](https://issues.apache.org/jira/browse/ZOOKEEPER-3780) | restore Version.getRevision() to be backward compatible |  Critical | . | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3726](https://issues.apache.org/jira/browse/ZOOKEEPER-3726) | invalid ipv6 address comparison in C client |  Major | c client | Vladislav Tyulbashev | Mate Szalay-Beko |
| [ZOOKEEPER-3215](https://issues.apache.org/jira/browse/ZOOKEEPER-3215) | Handle Java 9/11 additions of covariant return types to java.nio.ByteBuffer methods |  Minor | . | V | Andor Molnar |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3734](https://issues.apache.org/jira/browse/ZOOKEEPER-3734) | upgrade jackson-databind to address CVE-2020-8840 |  Blocker | security | Patrick D. Hunt | Enrico Olivelli |
| [ZOOKEEPER-3751](https://issues.apache.org/jira/browse/ZOOKEEPER-3751) | upgrade jackson-databind to 2.10 from 2.9 |  Critical | security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3794](https://issues.apache.org/jira/browse/ZOOKEEPER-3794) | upgrade netty to address CVE-2020-11612 |  Blocker | security | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-3817](https://issues.apache.org/jira/browse/ZOOKEEPER-3817) | owasp failing due to CVE-2020-9488 |  Blocker | security | Patrick D. Hunt | Mate Szalay-Beko |


