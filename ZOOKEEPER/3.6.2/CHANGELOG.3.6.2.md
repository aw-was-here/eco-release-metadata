
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

## Release 3.6.2 - 2020-09-09



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3679](https://issues.apache.org/jira/browse/ZOOKEEPER-3679) | Upgrade maven-compiler-plugin For ZooKeeper-jute |  Minor | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3678](https://issues.apache.org/jira/browse/ZOOKEEPER-3678) | Remove Redundant GroupID from Maven POMs |  Trivial | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3790](https://issues.apache.org/jira/browse/ZOOKEEPER-3790) | zkpython: Minor compilation and testing issues |  Minor | . | Damien Diederen | Damien Diederen |
| [ZOOKEEPER-3761](https://issues.apache.org/jira/browse/ZOOKEEPER-3761) | upgrade JLine jar dependency |  Minor | server | maoling |  |
| [ZOOKEEPER-3834](https://issues.apache.org/jira/browse/ZOOKEEPER-3834) | Do Not Set Explicit Test Includes in POM |  Trivial | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3844](https://issues.apache.org/jira/browse/ZOOKEEPER-3844) | Add useful metrics for ZK servers |  Minor | metric system | Jie Huang | Jie Huang |
| [ZOOKEEPER-3831](https://issues.apache.org/jira/browse/ZOOKEEPER-3831) | Add a test that does a minimal validation of Apache Curator |  Minor | tests | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-3913](https://issues.apache.org/jira/browse/ZOOKEEPER-3913) | Upgrade to Netty 4.1.50.Final |  Major | . | odidev | Enrico Olivelli |
| [ZOOKEEPER-3893](https://issues.apache.org/jira/browse/ZOOKEEPER-3893) | Enhance documentation for property ssl.clientAuth |  Minor | . | Sankalp Bhatia | Sankalp Bhatia |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3215](https://issues.apache.org/jira/browse/ZOOKEEPER-3215) | Handle Java 9/11 additions of covariant return types to java.nio.ByteBuffer methods |  Minor | . | V | Andor Molnar |
| [ZOOKEEPER-3772](https://issues.apache.org/jira/browse/ZOOKEEPER-3772) | JettyAdminServer should not allow HTTP TRACE method |  Major | . | Jinjiang Ling |  |
| [ZOOKEEPER-3818](https://issues.apache.org/jira/browse/ZOOKEEPER-3818) | fix zkServer.sh status command to support SSL-only server |  Critical | security | Aishwarya Soni | lujie |
| [ZOOKEEPER-3792](https://issues.apache.org/jira/browse/ZOOKEEPER-3792) | Reconcile document site in 3.5.7 & 3.6.0 |  Major | documentation | Zili Chen | Norbert Kalmár |
| [ZOOKEEPER-3832](https://issues.apache.org/jira/browse/ZOOKEEPER-3832) | ZKHostnameVerifier rejects valid certificates with subjectAltNames |  Major | server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3829](https://issues.apache.org/jira/browse/ZOOKEEPER-3829) | Zookeeper refuses request after node expansion |  Major | server | benwang li | Mate Szalay-Beko |
| [ZOOKEEPER-3857](https://issues.apache.org/jira/browse/ZOOKEEPER-3857) | ZooKeeper 3.6 doesn't build after Curator test committed |  Blocker | . | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3865](https://issues.apache.org/jira/browse/ZOOKEEPER-3865) | fix backward-compatibility for ZooKeeperServer constructor |  Blocker | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3878](https://issues.apache.org/jira/browse/ZOOKEEPER-3878) | Client connection fails if IPV6 is not enclosed in square brackets |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-3112](https://issues.apache.org/jira/browse/ZOOKEEPER-3112) | fd leak due to UnresolvedAddressException on connect. |  Critical | java client | Tianzhou Wang |  |
| [ZOOKEEPER-3876](https://issues.apache.org/jira/browse/ZOOKEEPER-3876) | zkServer.sh status command fails when IPV6 is configured |  Minor | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-3895](https://issues.apache.org/jira/browse/ZOOKEEPER-3895) | Client side NullPointerException in case of empty Multi operation |  Blocker | java client | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3885](https://issues.apache.org/jira/browse/ZOOKEEPER-3885) | zoo\_aremove\_watches segfault: zk\_hashtable needs locking! |  Major | c client | Tudor Bosman |  |
| [ZOOKEEPER-3905](https://issues.apache.org/jira/browse/ZOOKEEPER-3905) | Race condition causes sessions to be created for clients even though their certificate authentication has failed |  Major | . | Karan Mehta | Andor Molnar |
| [ZOOKEEPER-3801](https://issues.apache.org/jira/browse/ZOOKEEPER-3801) | Fix Jenkins link in pom |  Major | build | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3920](https://issues.apache.org/jira/browse/ZOOKEEPER-3920) | Zookeeper clients timeout after leader change due to 0.0.0.0 address when in docker environment |  Major | quorum, server | Andre Price |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3813](https://issues.apache.org/jira/browse/ZOOKEEPER-3813) | FileChangeWatcherTest is broken on Mac |  Minor | tests | Andor Molnar | Andor Molnar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3847](https://issues.apache.org/jira/browse/ZOOKEEPER-3847) | Add a couple metrics to help track Netty memory usage |  Minor | metric system | Jie Huang | Jie Huang |
| [ZOOKEEPER-3846](https://issues.apache.org/jira/browse/ZOOKEEPER-3846) | Add a couple TLS related metrics |  Minor | metric system | Jie Huang | Jie Huang |
| [ZOOKEEPER-3845](https://issues.apache.org/jira/browse/ZOOKEEPER-3845) | Add metric JVM\_PAUSE\_TIME |  Minor | metric system | Jie Huang | Jie Huang |
| [ZOOKEEPER-3856](https://issues.apache.org/jira/browse/ZOOKEEPER-3856) | Add a couple metrics to track inflight diff syncs and snap syncs |  Minor | metric system | Jie Huang | Jie Huang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3817](https://issues.apache.org/jira/browse/ZOOKEEPER-3817) | owasp failing due to CVE-2020-9488 |  Blocker | security | Patrick D. Hunt | Mate Szalay-Beko |
| [ZOOKEEPER-3896](https://issues.apache.org/jira/browse/ZOOKEEPER-3896) | Migrate Jenkins jobs to ci-hadoop.apache.org |  Major | build-infrastructure | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3924](https://issues.apache.org/jira/browse/ZOOKEEPER-3924) | Netty and JLine Licenses are inconsistent with jars in the binary tarball in 3.6.2 rc0 |  Blocker | license | Patrick D. Hunt | Enrico Olivelli |


