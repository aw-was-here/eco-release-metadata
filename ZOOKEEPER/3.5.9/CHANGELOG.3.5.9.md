
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

## Release 3.5.9 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3761](https://issues.apache.org/jira/browse/ZOOKEEPER-3761) | upgrade JLine jar dependency |  Minor | server | maoling |  |
| [ZOOKEEPER-3834](https://issues.apache.org/jira/browse/ZOOKEEPER-3834) | Do Not Set Explicit Test Includes in POM |  Trivial | . | David Mollitor | David Mollitor |
| [ZOOKEEPER-3893](https://issues.apache.org/jira/browse/ZOOKEEPER-3893) | Enhance documentation for property ssl.clientAuth |  Minor | . | Sankalp Bhatia | Sankalp Bhatia |
| [ZOOKEEPER-3886](https://issues.apache.org/jira/browse/ZOOKEEPER-3886) | Client connection string should support IPV6 with or without enclosed in square bracket. |  Minor | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-3960](https://issues.apache.org/jira/browse/ZOOKEEPER-3960) | Update ZooKeeper client documentation about key file format parameters |  Minor | . | Mate Szalay-Beko | Mate Szalay-Beko |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3772](https://issues.apache.org/jira/browse/ZOOKEEPER-3772) | JettyAdminServer should not allow HTTP TRACE method |  Major | . | Jinjiang Ling |  |
| [ZOOKEEPER-3818](https://issues.apache.org/jira/browse/ZOOKEEPER-3818) | fix zkServer.sh status command to support SSL-only server |  Critical | security | Aishwarya Soni | lujie |
| [ZOOKEEPER-3792](https://issues.apache.org/jira/browse/ZOOKEEPER-3792) | Reconcile document site in 3.5.7 & 3.6.0 |  Major | documentation | Zili Chen | Norbert Kalmár |
| [ZOOKEEPER-3832](https://issues.apache.org/jira/browse/ZOOKEEPER-3832) | ZKHostnameVerifier rejects valid certificates with subjectAltNames |  Major | server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3829](https://issues.apache.org/jira/browse/ZOOKEEPER-3829) | Zookeeper refuses request after node expansion |  Major | server | benwang li | Mate Szalay-Beko |
| [ZOOKEEPER-3865](https://issues.apache.org/jira/browse/ZOOKEEPER-3865) | fix backward-compatibility for ZooKeeperServer constructor |  Blocker | . | Mate Szalay-Beko | Mate Szalay-Beko |
| [ZOOKEEPER-3112](https://issues.apache.org/jira/browse/ZOOKEEPER-3112) | fd leak due to UnresolvedAddressException on connect. |  Critical | java client | Tianzhou Wang |  |
| [ZOOKEEPER-3885](https://issues.apache.org/jira/browse/ZOOKEEPER-3885) | zoo\_aremove\_watches segfault: zk\_hashtable needs locking! |  Major | c client | Tudor Bosman |  |
| [ZOOKEEPER-3905](https://issues.apache.org/jira/browse/ZOOKEEPER-3905) | Race condition causes sessions to be created for clients even though their certificate authentication has failed |  Major | . | Karan Mehta | Andor Molnar |
| [ZOOKEEPER-3801](https://issues.apache.org/jira/browse/ZOOKEEPER-3801) | Fix Jenkins link in pom |  Major | build | Christopher Tubbs | Christopher Tubbs |
| [ZOOKEEPER-3954](https://issues.apache.org/jira/browse/ZOOKEEPER-3954) | use of uninitialized data in zookeeper-client/zookeeper-client-c/src/zookeeper.c:free\_auth\_completion |  Minor | c client | Michael Hudson-Doyle | Damien Diederen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3896](https://issues.apache.org/jira/browse/ZOOKEEPER-3896) | Migrate Jenkins jobs to ci-hadoop.apache.org |  Major | build-infrastructure | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3925](https://issues.apache.org/jira/browse/ZOOKEEPER-3925) | Update Netty to 4.1.50Final on 3.5 branch |  Blocker | license | Patrick D. Hunt | Enrico Olivelli |


