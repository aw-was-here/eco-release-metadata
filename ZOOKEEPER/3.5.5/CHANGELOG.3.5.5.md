
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

## Release 3.5.5 - Unreleased (as of 2018-07-29)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3066](https://issues.apache.org/jira/browse/ZOOKEEPER-3066) | Expose on JMX of Followers the id of the current leader |  Major | jmx, leaderElection, quorum | Enrico Olivelli | Enrico Olivelli |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3043](https://issues.apache.org/jira/browse/ZOOKEEPER-3043) | QuorumKerberosHostBasedAuthTest fails on Linux box: Unable to parse:includedir /etc/krb5.conf.d/ |  Major | build, kerberos, tests | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3019](https://issues.apache.org/jira/browse/ZOOKEEPER-3019) | Add a metric to track number of slow fsyncs |  Major | jmx, server | Norbert Kalmar | Norbert Kalmar |
| [ZOOKEEPER-3063](https://issues.apache.org/jira/browse/ZOOKEEPER-3063) | Track outstanding changes with ArrayDeque |  Trivial | server | Yisong Yue | Yisong Yue |
| [ZOOKEEPER-2368](https://issues.apache.org/jira/browse/ZOOKEEPER-2368) | Client watches are not disconnected on close |  Major | . | Timothy Ward | Timothy Ward |
| [ZOOKEEPER-2873](https://issues.apache.org/jira/browse/ZOOKEEPER-2873) | print error and/or abort on invalid server definition |  Minor | server | Christopher Smith | Norbert Kalmar |
| [ZOOKEEPER-3083](https://issues.apache.org/jira/browse/ZOOKEEPER-3083) | Remove some redundant and noisy log lines |  Trivial | server | Brian Nixon | Brian Nixon |
| [ZOOKEEPER-3077](https://issues.apache.org/jira/browse/ZOOKEEPER-3077) | Build native C library outside of source directory |  Trivial | build | Kent R. Spillner | Kent R. Spillner |
| [ZOOKEEPER-3097](https://issues.apache.org/jira/browse/ZOOKEEPER-3097) | Use Runnable instead of Thread for working items in WorkerService to improve the throughput of CommitProcessor |  Minor | server | Fangmin Lv | Fangmin Lv |
| [ZOOKEEPER-3094](https://issues.apache.org/jira/browse/ZOOKEEPER-3094) | Make BufferSizeTest reliable |  Minor | tests | Mohamed Jeelani | Mohamed Jeelani |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3041](https://issues.apache.org/jira/browse/ZOOKEEPER-3041) | Typo in error message, affects log analysis |  Trivial | . | Hugh O'Brien | Hugh O'Brien |
| [ZOOKEEPER-3050](https://issues.apache.org/jira/browse/ZOOKEEPER-3050) | owasp ant target is highlighting jetty version needs to be updated |  Blocker | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-3051](https://issues.apache.org/jira/browse/ZOOKEEPER-3051) | owasp complaining about jackson version used |  Blocker | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-2993](https://issues.apache.org/jira/browse/ZOOKEEPER-2993) | .ignore file prevents adding src/java/main/org/apache/jute/compiler/generated dir to git repo |  Minor | build | jason wang | jason wang |
| [ZOOKEEPER-1919](https://issues.apache.org/jira/browse/ZOOKEEPER-1919) | Update the C implementation of removeWatches to have it match ZOOKEEPER-1910 |  Blocker | c client | Raul Gutierrez Segales | Raul Gutierrez Segales |
| [ZOOKEEPER-2317](https://issues.apache.org/jira/browse/ZOOKEEPER-2317) | Non-OSGi compatible version |  Blocker | build | Markus Tippmann | Sachin |
| [ZOOKEEPER-2920](https://issues.apache.org/jira/browse/ZOOKEEPER-2920) | Upgrade OWASP Dependency Check to 3.2.1 |  Major | build | Abraham Fine | Patrick Hunt |
| [ZOOKEEPER-3009](https://issues.apache.org/jira/browse/ZOOKEEPER-3009) | Potential NPE in NIOServerCnxnFactory |  Major | . | lujie | lujie |
| [ZOOKEEPER-2184](https://issues.apache.org/jira/browse/ZOOKEEPER-2184) | Zookeeper Client should re-resolve hosts when connection attempts fail |  Blocker | java client | Robert P. Thille | Andor Molnar |
| [ZOOKEEPER-3059](https://issues.apache.org/jira/browse/ZOOKEEPER-3059) | EventThread leak in case of Sasl AuthFailed |  Critical | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [ZOOKEEPER-3042](https://issues.apache.org/jira/browse/ZOOKEEPER-3042) | testFailedTxnAsPartOfQuorumLoss is flaky |  Minor | tests | Bogdan Kanivets | Bogdan Kanivets |
| [ZOOKEEPER-3093](https://issues.apache.org/jira/browse/ZOOKEEPER-3093) | sync zerror(int rc) with newest error definitions |  Trivial | c client | Kent R. Spillner | Kent R. Spillner |
| [ZOOKEEPER-2251](https://issues.apache.org/jira/browse/ZOOKEEPER-2251) | Add Client side packet response timeout to avoid infinite wait. |  Critical | java client | nijel | Mohammad Arshad |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2955](https://issues.apache.org/jira/browse/ZOOKEEPER-2955) | Enable Clover code coverage report |  Major | tests | Mark Fenes | Mark Fenes |
| [ZOOKEEPER-2968](https://issues.apache.org/jira/browse/ZOOKEEPER-2968) | Add C client code coverage tests |  Major | tests | Mark Fenes | Mark Fenes |
| [ZOOKEEPER-3074](https://issues.apache.org/jira/browse/ZOOKEEPER-3074) | Flaky test:org.apache.zookeeper.server.ServerStatsTest.testLatencyMetrics |  Minor | tests | maoling | maoling |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3022](https://issues.apache.org/jira/browse/ZOOKEEPER-3022) | Step 1.1 - Create docs and it maven structure |  Major | build, scripts | Norbert Kalmar | Norbert Kalmar |
| [ZOOKEEPER-2940](https://issues.apache.org/jira/browse/ZOOKEEPER-2940) | Deal with maxbuffer as it relates to large requests from clients |  Major | jute, server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3033](https://issues.apache.org/jira/browse/ZOOKEEPER-3033) | Step 1.2 - Create zk-recipes maven structure |  Major | build, scripts | Norbert Kalmar | Norbert Kalmar |


