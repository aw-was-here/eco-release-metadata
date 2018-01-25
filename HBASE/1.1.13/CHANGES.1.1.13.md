
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
# Apache HBase Changelog

## Release 1.1.13 - 2017-12-11

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18577](https://issues.apache.org/jira/browse/HBASE-18577) | shaded client includes several non-relocated third party dependencies |  Critical | Client | Sean Busbey | Sean Busbey |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19189](https://issues.apache.org/jira/browse/HBASE-19189) | Ad-hoc test job for running a subset of tests lots of times |  Major | build | Sean Busbey | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18631](https://issues.apache.org/jira/browse/HBASE-18631) | Allow configuration of ChaosMonkey properties via hbase-site |  Minor | integration tests | Josh Elser | Josh Elser |
| [HBASE-18675](https://issues.apache.org/jira/browse/HBASE-18675) | Making {max,min}SessionTimeout configurable for MiniZooKeeperCluster |  Minor | test, Zookeeper | Cesar Delgado | Cesar Delgado |
| [HBASE-19052](https://issues.apache.org/jira/browse/HBASE-19052) | FixedFileTrailer should recognize CellComparatorImpl class in branch-1.x |  Critical | HFile | Ted Yu | Ted Yu |
| [HBASE-19140](https://issues.apache.org/jira/browse/HBASE-19140) | hbase-cleanup.sh uses deprecated call to remove files in hdfs |  Trivial | scripts | Artem Ervits | Artem Ervits |
| [HBASE-19228](https://issues.apache.org/jira/browse/HBASE-19228) | nightly job should gather machine stats. |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19227](https://issues.apache.org/jira/browse/HBASE-19227) | Nightly jobs should archive JVM dumpstream files |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19489](https://issues.apache.org/jira/browse/HBASE-19489) | Check against only the latest maintenance release in pre-commit hadoopcheck. |  Minor | . | Appy | Appy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18125](https://issues.apache.org/jira/browse/HBASE-18125) | HBase shell disregards spaces at the end of a split key in a split file |  Major | shell | Ashu Pachauri | Chenxi Tong |
| [HBASE-18679](https://issues.apache.org/jira/browse/HBASE-18679) | YARN may null Counters object and cause an NPE in ITBLL |  Trivial | integration tests | Josh Elser | Josh Elser |
| [HBASE-18665](https://issues.apache.org/jira/browse/HBASE-18665) | ReversedScannerCallable invokes getRegionLocations incorrectly |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-14745](https://issues.apache.org/jira/browse/HBASE-14745) | Shade the last few dependencies in hbase-shaded-client |  Blocker | Client, dependencies | Elliott Clark | Elliott Clark |
| [HBASE-18818](https://issues.apache.org/jira/browse/HBASE-18818) | TestConnectionImplemenation fails |  Major | test | stack | stack |
| [HBASE-18940](https://issues.apache.org/jira/browse/HBASE-18940) | branch-2 (and probably others) fail check of generated source artifact |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-18934](https://issues.apache.org/jira/browse/HBASE-18934) | precommit on branch-1 isn't supposed to run against hadoop 3 |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-18998](https://issues.apache.org/jira/browse/HBASE-18998) | processor.getRowsToLock() always assumes there is some row being locked |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18505](https://issues.apache.org/jira/browse/HBASE-18505) | Our build/yetus personality will run tests on individual modules and then on all (i.e. 'root'). Should do one or other |  Critical | build | stack | Mike Drob |
| [HBASE-19038](https://issues.apache.org/jira/browse/HBASE-19038) | precommit mvn install should run from root on patch |  Major | build | Mike Drob | Mike Drob |
| [HBASE-19020](https://issues.apache.org/jira/browse/HBASE-19020) | TestXmlParsing exception checking relies on a particular xml implementation without declaring it. |  Major | dependencies, REST | Sean Busbey | Sean Busbey |
| [HBASE-19055](https://issues.apache.org/jira/browse/HBASE-19055) | Backport HBASE-19042 to other active branches |  Blocker | build | Duo Zhang | Duo Zhang |
| [HBASE-19061](https://issues.apache.org/jira/browse/HBASE-19061) | enforcer NPE on hbase-shaded-invariants |  Blocker | build | Mike Drob | Mike Drob |
| [HBASE-19060](https://issues.apache.org/jira/browse/HBASE-19060) | "Hadoop check" test is running all the time instead of just when changes to java |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19039](https://issues.apache.org/jira/browse/HBASE-19039) | refactor shadedjars test to only run on java changes. |  Major | build | Mike Drob | Sean Busbey |
| [HBASE-19058](https://issues.apache.org/jira/browse/HBASE-19058) | The wget isn't installed in building docker image |  Major | build | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19066](https://issues.apache.org/jira/browse/HBASE-19066) | Correct the directory of openjdk-8 for jenkins |  Major | build | Chia-Ping Tsai | Sean Busbey |
| [HBASE-18438](https://issues.apache.org/jira/browse/HBASE-18438) | Precommit doesn't warn about unused imports |  Critical | build | Mike Drob | Chia-Ping Tsai |
| [HBASE-19030](https://issues.apache.org/jira/browse/HBASE-19030) | nightly runs should attempt to log test results after archiving |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-19137](https://issues.apache.org/jira/browse/HBASE-19137) | Nightly test should make junit reports optional rather than attempt archive after reporting. |  Critical | build | stack | Sean Busbey |
| [HBASE-19124](https://issues.apache.org/jira/browse/HBASE-19124) | Move HBase-Nightly source artifact creation test from JenkinsFile to a script in dev-support |  Major | test | Appy | Sean Busbey |
| [HBASE-19184](https://issues.apache.org/jira/browse/HBASE-19184) | clean up nightly source artifact test to match expectations from switch to git-archive |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19229](https://issues.apache.org/jira/browse/HBASE-19229) | Nightly script to check source artifact should not do a destructive git operation without opt-in |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19249](https://issues.apache.org/jira/browse/HBASE-19249) | test for "hbase antipatterns" should check \_count\_ of occurance rather than text of |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19223](https://issues.apache.org/jira/browse/HBASE-19223) | Remove references to Date Tiered compaction from branch-1.2 and branch-1.1 ref guide |  Critical | Compaction, documentation | chilianyi | Sean Busbey |
| [HBASE-19393](https://issues.apache.org/jira/browse/HBASE-19393) | HTTP 413 FULL head while accessing HBase UI using SSL. |  Major | UI | Sergey Soldatov | Sergey Soldatov |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18957](https://issues.apache.org/jira/browse/HBASE-18957) | add test that confirms 2 FamilyFilters in a FilterList using MUST\_PASS\_ONE operator will return results that match either of the FamilyFilters and revert as needed to make it pass. |  Critical | Filters | Sean Busbey | Peter Somogyi |
| [HBASE-18980](https://issues.apache.org/jira/browse/HBASE-18980) | Address issues found by error-prone in hbase-hadoop2-compat |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-18867](https://issues.apache.org/jira/browse/HBASE-18867) | maven enforcer plugin needs update to work with jdk9 |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-19070](https://issues.apache.org/jira/browse/HBASE-19070) | temporarily make the mvnsite nightly test non-voting. |  Major | build | Sean Busbey | Sean Busbey |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18833](https://issues.apache.org/jira/browse/HBASE-18833) | Ensure precommit personality is up to date on all active branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-19097](https://issues.apache.org/jira/browse/HBASE-19097) | update testing to use Apache Yetus Test Patch version 0.6.0 |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-16459](https://issues.apache.org/jira/browse/HBASE-16459) | Remove unused hbase shell --format option |  Trivial | shell | Dima Spivak | Dima Spivak |


