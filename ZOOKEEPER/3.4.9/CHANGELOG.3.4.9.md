
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

## Release 3.4.9 - 2016-09-03



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2378](https://issues.apache.org/jira/browse/ZOOKEEPER-2378) | upgrade ivy to recent version |  Critical | build | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-2373](https://issues.apache.org/jira/browse/ZOOKEEPER-2373) | Licenses section missing from pom file |  Blocker | . | Flavio Paiva Junqueira | Patrick D. Hunt |
| [ZOOKEEPER-2240](https://issues.apache.org/jira/browse/ZOOKEEPER-2240) | Make the three-node minimum more explicit in documentation and on website |  Trivial | documentation | Shawn Heisey | Mohammad Arshad |
| [ZOOKEEPER-2514](https://issues.apache.org/jira/browse/ZOOKEEPER-2514) | Simplify releasenotes creation for 3.4 branch - consistent with newer branches. |  Critical | documentation | Patrick D. Hunt | Patrick D. Hunt |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2243](https://issues.apache.org/jira/browse/ZOOKEEPER-2243) | Supported platforms is completely out of date |  Major | . | Ivan Kelly | Chris Nauroth |
| [ZOOKEEPER-2375](https://issues.apache.org/jira/browse/ZOOKEEPER-2375) | Prevent multiple initialization of login object in each ZooKeeperSaslClient instance |  Blocker | java client | yuemeng | yuemeng |
| [ZOOKEEPER-2294](https://issues.apache.org/jira/browse/ZOOKEEPER-2294) | Ant target generate-clover-reports is broken |  Major | build | Charlie Helin | Charlie Helin |
| [ZOOKEEPER-2379](https://issues.apache.org/jira/browse/ZOOKEEPER-2379) | recent commit broke findbugs qabot check |  Blocker | build | Patrick D. Hunt | Rakesh Radhakrishnan |
| [ZOOKEEPER-2133](https://issues.apache.org/jira/browse/ZOOKEEPER-2133) | zkperl: Segmentation fault if getting a node with null value |  Major | contrib-bindings | Botond Hejj | Botond Hejj |
| [ZOOKEEPER-2283](https://issues.apache.org/jira/browse/ZOOKEEPER-2283) | traceFile property is not used in the ZooKeeper,  it should be removed from documentation |  Major | documentation | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2385](https://issues.apache.org/jira/browse/ZOOKEEPER-2385) | Zookeeper trunk build is failing on windows |  Blocker | build | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2195](https://issues.apache.org/jira/browse/ZOOKEEPER-2195) | fsync.warningthresholdms in zoo.cfg not working |  Trivial | quorum | David Fan | Biju Nair |
| [ZOOKEEPER-2141](https://issues.apache.org/jira/browse/ZOOKEEPER-2141) | ACL cache in DataTree never removes entries |  Blocker | . | Karol Dudzinski | Adam Milne-Smith |
| [ZOOKEEPER-2405](https://issues.apache.org/jira/browse/ZOOKEEPER-2405) | getTGT() in Login.java mishandles confidential information |  Blocker | kerberos, security, server | Patrick D. Hunt | Michael Han |
| [ZOOKEEPER-2450](https://issues.apache.org/jira/browse/ZOOKEEPER-2450) | Upgrade Netty version due to security vulnerability (CVE-2014-3488) |  Critical | security, server | Michael Han | Michael Han |
| [ZOOKEEPER-2477](https://issues.apache.org/jira/browse/ZOOKEEPER-2477) | documentation should refer to Java cli shell and not C cli shell |  Major | documentation | Patrick D. Hunt | Abraham Fine |
| [ZOOKEEPER-2498](https://issues.apache.org/jira/browse/ZOOKEEPER-2498) | Potential resource leak in C client when processing unexpected / out of order response |  Major | c client | Michael Han | Michael Han |
| [ZOOKEEPER-2452](https://issues.apache.org/jira/browse/ZOOKEEPER-2452) | Back-port ZOOKEEPER-1460 to 3.4 for IPv6 literal address support. |  Critical | quorum | Chris Nauroth | Abraham Fine |
| [ZOOKEEPER-2247](https://issues.apache.org/jira/browse/ZOOKEEPER-2247) | Zookeeper service becomes unavailable when leader fails to write transaction log |  Critical | . | Mohammad Arshad | Rakesh Radhakrishnan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2396](https://issues.apache.org/jira/browse/ZOOKEEPER-2396) | Login object in ZooKeeperSaslClient is static |  Major | documentation | Flavio Paiva Junqueira | Flavio Paiva Junqueira |


