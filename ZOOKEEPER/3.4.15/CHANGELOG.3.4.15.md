
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

## Release 3.4.15 - Unreleased (as of 2020-11-14)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2894](https://issues.apache.org/jira/browse/ZOOKEEPER-2894) | Memory and completions leak on zookeeper\_close |  Critical | c client | Alexander A. Strelets | Alexander A. Strelets |
| [ZOOKEEPER-2891](https://issues.apache.org/jira/browse/ZOOKEEPER-2891) | Invalid processing of zookeeper\_close for mutli-request |  Critical | c client | Alexander A. Strelets | Alexander A. Strelets |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3519](https://issues.apache.org/jira/browse/ZOOKEEPER-3519) | upgrade dependency-check to 5.2.1 |  Major | build-infrastructure | Patrick D. Hunt | Patrick D. Hunt |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3105](https://issues.apache.org/jira/browse/ZOOKEEPER-3105) | Character coding problem occur when create a node using python3 |  Major | contrib | yang hao |  |
| [ZOOKEEPER-1636](https://issues.apache.org/jira/browse/ZOOKEEPER-1636) | c-client crash when zoo\_amulti failed |  Critical | c client | Thawan Kooburat | Michael K. Edwards |
| [ZOOKEEPER-3253](https://issues.apache.org/jira/browse/ZOOKEEPER-3253) | client should not send requests with cxid=-4, -2, or -1 |  Minor | java client | Samuel Just | Samuel Just |
| [ZOOKEEPER-3304](https://issues.apache.org/jira/browse/ZOOKEEPER-3304) | Maven build of "loggraph" is broken on branch-3.4 |  Major | build, contrib | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-2621](https://issues.apache.org/jira/browse/ZOOKEEPER-2621) | ZooKeeper doesn't start on MINGW32 (Windows) |  Major | scripts | Amichai Rothman | Amichai Rothman |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3028](https://issues.apache.org/jira/browse/ZOOKEEPER-3028) | Create assembly in pom.xml |  Blocker | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3046](https://issues.apache.org/jira/browse/ZOOKEEPER-3046) | testManyChildWatchersAutoReset is flaky |  Minor | tests | Bogdan Kanivets | Bogdan Kanivets |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3441](https://issues.apache.org/jira/browse/ZOOKEEPER-3441) | OWASP is flagging jackson-databind-2.9.9.jar for CVE-2019-12814 |  Critical | build, security | Enrico Olivelli | Patrick D. Hunt |


