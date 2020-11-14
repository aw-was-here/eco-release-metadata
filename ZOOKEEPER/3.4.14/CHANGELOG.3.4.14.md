
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

## Release 3.4.14 - 2019-04-02



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1815](https://issues.apache.org/jira/browse/ZOOKEEPER-1815) | Tolerate incorrectly set system hostname in tests |  Trivial | tests | some one |  |
| [ZOOKEEPER-3077](https://issues.apache.org/jira/browse/ZOOKEEPER-3077) | Build native C library outside of source directory |  Trivial | build | Kent R. Spillner | Kent R. Spillner |
| [ZOOKEEPER-3094](https://issues.apache.org/jira/browse/ZOOKEEPER-3094) | Make BufferSizeTest reliable |  Minor | tests | Mohamed Jeelani | Mohamed Jeelani |
| [ZOOKEEPER-3262](https://issues.apache.org/jira/browse/ZOOKEEPER-3262) | Update dependencies flagged by OWASP report |  Blocker | security | Enrico Olivelli | Enrico Olivelli |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3009](https://issues.apache.org/jira/browse/ZOOKEEPER-3009) | Potential NPE in NIOServerCnxnFactory |  Major | . | lujie | lujie |
| [ZOOKEEPER-3148](https://issues.apache.org/jira/browse/ZOOKEEPER-3148) | Fix Kerberos tests on branch 3.4 and JDK11 |  Critical | kerberos | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3156](https://issues.apache.org/jira/browse/ZOOKEEPER-3156) | ZOOKEEPER-2184 causes kerberos principal to not have resolved host name |  Blocker | java client | Robert Joseph Evans | Robert Joseph Evans |
| [ZOOKEEPER-3162](https://issues.apache.org/jira/browse/ZOOKEEPER-3162) | Broken lock semantics in C client lock-recipe |  Major | c client | Andrea Reale | Andrea Reale |
| [ZOOKEEPER-3217](https://issues.apache.org/jira/browse/ZOOKEEPER-3217) | owasp job flagging slf4j on trunk |  Critical | . | Patrick D. Hunt | Enrico Olivelli |
| [ZOOKEEPER-3210](https://issues.apache.org/jira/browse/ZOOKEEPER-3210) | Typo in zookeeperInternals doc |  Trivial | . | Stanislav Knot |  |
| [ZOOKEEPER-3265](https://issues.apache.org/jira/browse/ZOOKEEPER-3265) | Build failure on branch-3.4 |  Major | build | Zsombor Gegesy | Zsombor Gegesy |
| [ZOOKEEPER-1392](https://issues.apache.org/jira/browse/ZOOKEEPER-1392) | Should not allow to read ACL when not authorized to read node |  Major | server | Thomas Weise | Bruce Gao |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3022](https://issues.apache.org/jira/browse/ZOOKEEPER-3022) | Step 1.1 - Create docs and it maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3030](https://issues.apache.org/jira/browse/ZOOKEEPER-3030) | Step 1.3 - Create zk-contrib maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3033](https://issues.apache.org/jira/browse/ZOOKEEPER-3033) | Step 1.2 - Create zk-recipes maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3031](https://issues.apache.org/jira/browse/ZOOKEEPER-3031) | Step 1.4 - Create zk-client maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3080](https://issues.apache.org/jira/browse/ZOOKEEPER-3080) | Step 1.5 - Separate jute structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3153](https://issues.apache.org/jira/browse/ZOOKEEPER-3153) | Create MarkDown files and build process for them |  Major | documentation | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3154](https://issues.apache.org/jira/browse/ZOOKEEPER-3154) | Update release process to use the MarkDown solution |  Major | . | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3032](https://issues.apache.org/jira/browse/ZOOKEEPER-3032) | Step 1.6 - Create zk-server maven structure |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3155](https://issues.apache.org/jira/browse/ZOOKEEPER-3155) | Remove Forrest XMLs and their build process from the project |  Blocker | . | Tamas Penzes | Tamas Penzes |
| [ZOOKEEPER-3029](https://issues.apache.org/jira/browse/ZOOKEEPER-3029) | Create pom files for jute, server and client |  Blocker | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3225](https://issues.apache.org/jira/browse/ZOOKEEPER-3225) | Create code coverage analysis with maven build |  Blocker | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3226](https://issues.apache.org/jira/browse/ZOOKEEPER-3226) | Activate C Client with a profile, disabled by default |  Major | build, c client | Enrico Olivelli | Norbert Kalmár |
| [ZOOKEEPER-3171](https://issues.apache.org/jira/browse/ZOOKEEPER-3171) | Create pom.xml for recipes and contrib |  Blocker | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3223](https://issues.apache.org/jira/browse/ZOOKEEPER-3223) | Configure Spotbugs |  Blocker | build, scripts | Norbert Kalmár | Enrico Olivelli |
| [ZOOKEEPER-3256](https://issues.apache.org/jira/browse/ZOOKEEPER-3256) | Enable OWASP checks  to Maven build |  Major | security | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-3122](https://issues.apache.org/jira/browse/ZOOKEEPER-3122) | Verify build after maven migration and the end artifact |  Major | build, scripts | Norbert Kalmár | Norbert Kalmár |
| [ZOOKEEPER-3275](https://issues.apache.org/jira/browse/ZOOKEEPER-3275) | Fix release targets: package, tar, mvn-deploy |  Major | build | Andor Molnar | Andor Molnar |
| [ZOOKEEPER-3224](https://issues.apache.org/jira/browse/ZOOKEEPER-3224) | CI integration with maven |  Blocker | build, scripts | Norbert Kalmár | Enrico Olivelli |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-3062](https://issues.apache.org/jira/browse/ZOOKEEPER-3062) | introduce fsync.warningthresholdms constant for FileTxnLog LOG.warn message |  Minor | . | Christine Poerschke | Christine Poerschke |
| [ZOOKEEPER-3120](https://issues.apache.org/jira/browse/ZOOKEEPER-3120) | add NetBeans nbproject directory to .gitignore |  Minor | . | Enrico Olivelli | Enrico Olivelli |
| [ZOOKEEPER-925](https://issues.apache.org/jira/browse/ZOOKEEPER-925) | Consider maven site generation to replace our forrest site and documentation generation |  Major | documentation | Patrick D. Hunt | Tamas Penzes |
| [ZOOKEEPER-3230](https://issues.apache.org/jira/browse/ZOOKEEPER-3230) | Add Apache NetBeans Maven project files to .gitignore |  Major | other | Enrico Olivelli | Enrico Olivelli |


