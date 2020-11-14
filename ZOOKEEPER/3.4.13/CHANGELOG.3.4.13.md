
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

## Release 3.4.13 - 2018-07-17



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2994](https://issues.apache.org/jira/browse/ZOOKEEPER-2994) | Tool required to recover log and snapshot entries with CRC errors |  Major | . | Andor Molnar | Andor Molnar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3012](https://issues.apache.org/jira/browse/ZOOKEEPER-3012) | Fix unit test: testDataDirAndDataLogDir should not use hardcode test folders |  Major | server, tests | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3043](https://issues.apache.org/jira/browse/ZOOKEEPER-3043) | QuorumKerberosHostBasedAuthTest fails on Linux box: Unable to parse:includedir /etc/krb5.conf.d/ |  Major | build, kerberos, tests | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3019](https://issues.apache.org/jira/browse/ZOOKEEPER-3019) | Add a metric to track number of slow fsyncs |  Major | jmx, server | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-2873](https://issues.apache.org/jira/browse/ZOOKEEPER-2873) | print error and/or abort on invalid server definition |  Minor | server | Christopher Smith | Norbert Kalmár |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3007](https://issues.apache.org/jira/browse/ZOOKEEPER-3007) | Potential NPE in ReferenceCountedACLCache#deserialize |  Major | . | lujie | lujie |
| [ZOOKEEPER-3027](https://issues.apache.org/jira/browse/ZOOKEEPER-3027) | Accidently removed public API of FileTxnLog.setPreallocSize() |  Major | server | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-2988](https://issues.apache.org/jira/browse/ZOOKEEPER-2988) | NPE triggered if server receives a vote for a server id not in their voting view |  Minor | leaderElection | Brian Nixon | Brian Nixon |
| [ZOOKEEPER-2959](https://issues.apache.org/jira/browse/ZOOKEEPER-2959) | ignore accepted epoch and LEADERINFO ack from observers when a newly elected leader computes new epoch |  Blocker | . | xiangyq000 | Bogdan Kanivets |
| [ZOOKEEPER-3039](https://issues.apache.org/jira/browse/ZOOKEEPER-3039) | TxnLogToolkit uses Scanner badly |  Major | . | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3041](https://issues.apache.org/jira/browse/ZOOKEEPER-3041) | Typo in error message, affects log analysis |  Trivial | . | Hugh O'Brien | Hugh O'Brien |
| [ZOOKEEPER-2993](https://issues.apache.org/jira/browse/ZOOKEEPER-2993) | .ignore file prevents adding src/java/main/org/apache/jute/compiler/generated dir to git repo |  Minor | build | jason wang | jason wang |
| [ZOOKEEPER-2920](https://issues.apache.org/jira/browse/ZOOKEEPER-2920) | Upgrade OWASP Dependency Check to 3.2.1 |  Major | build | Abraham Fine | Patrick D. Hunt |
| [ZOOKEEPER-2184](https://issues.apache.org/jira/browse/ZOOKEEPER-2184) | Zookeeper Client should re-resolve hosts when connection attempts fail |  Blocker | java client | Robert P. Thille | Andor Molnar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2415](https://issues.apache.org/jira/browse/ZOOKEEPER-2415) | SessionTest is using Thread deprecated API. |  Major | tests | Flavio Paiva Junqueira | Andor Molnar |
| [ZOOKEEPER-2955](https://issues.apache.org/jira/browse/ZOOKEEPER-2955) | Enable Clover code coverage report |  Major | tests | Mark Fenes | Mark Fenes |
| [ZOOKEEPER-2968](https://issues.apache.org/jira/browse/ZOOKEEPER-2968) | Add C client code coverage tests |  Major | tests | Mark Fenes | Mark Fenes |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-2980](https://issues.apache.org/jira/browse/ZOOKEEPER-2980) | Backport ZOOKEEPER-2939 Deal with maxbuffer as it relates to proposals |  Major | server | Andor Molnar | Andor Molnar |


