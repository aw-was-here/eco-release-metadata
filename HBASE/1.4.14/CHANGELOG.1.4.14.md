
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

## Release 1.4.14 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24032](https://issues.apache.org/jira/browse/HBASE-24032) | [RSGroup] Assign created tables to respective rsgroup automatically instead of manual operations |  Major | master, rsgroup | Reid Chan | Reid Chan |
| [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | Use a fair ReentrantReadWriteLock for the region close lock |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24148](https://issues.apache.org/jira/browse/HBASE-24148) | Upgrade Thrift to 0.13.0: 0.12.0 has outstanding CVEs. |  Major | Thrift | Tamas Penzes | Tamas Penzes |
| [HBASE-24229](https://issues.apache.org/jira/browse/HBASE-24229) | [Build] Pin rubocop version \<= 0.81 |  Major | build | Reid Chan | Reid Chan |
| [HBASE-24355](https://issues.apache.org/jira/browse/HBASE-24355) | Fix typos in the HStore#compact annotation |  Minor | . | kangkang.guo | kangkang.guo |
| [HBASE-24351](https://issues.apache.org/jira/browse/HBASE-24351) | Backport HBASE-24302 to branch-1 |  Major | . | Wellington Chevreuil | Wellington Chevreuil |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24016](https://issues.apache.org/jira/browse/HBASE-24016) | Change nightly poll from cron @daily to pollSCM @daily; i.e. run nightly if a change ONLY |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24017](https://issues.apache.org/jira/browse/HBASE-24017) | Turn down flakey rerun rate on all but hot branches |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24040](https://issues.apache.org/jira/browse/HBASE-24040) | WALFactory.Providers.multiwal causes StackOverflowError |  Minor | wal | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24121](https://issues.apache.org/jira/browse/HBASE-24121) | [Authorization] ServiceAuthorizationManager isn't dynamically updatable. And it should be. |  Major | rpc, security | Reid Chan | Reid Chan |
| [HBASE-24174](https://issues.apache.org/jira/browse/HBASE-24174) | Fix findbugs warning on ServiceAuthorizationManager |  Major | . | Reid Chan | Reid Chan |
| [HBASE-24213](https://issues.apache.org/jira/browse/HBASE-24213) | Backport the pre commit changes for HBASE-24169 to all branches |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24190](https://issues.apache.org/jira/browse/HBASE-24190) | Make kerberos value of hbase.security.authentication property case insensitive |  Major | . | Yuanliang Zhang | Rushabh Shah |
| [HBASE-24499](https://issues.apache.org/jira/browse/HBASE-24499) | Use a client property for SaslConnection MAX\_ATTEMPTS (currently hardcoded to 5) |  Minor | Client, security | Ravi Kishore Valeti | Ravi Kishore Valeti |
| [HBASE-24739](https://issues.apache.org/jira/browse/HBASE-24739) | [Build] branch-1's build seems broken because of pylint |  Blocker | build | Reid Chan | Reid Chan |
| [HBASE-24794](https://issues.apache.org/jira/browse/HBASE-24794) | hbase.rowlock.wait.duration should not be \<= 0 |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-24807](https://issues.apache.org/jira/browse/HBASE-24807) | Backport HBASE-20417 to branch-1 |  Major | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-25204](https://issues.apache.org/jira/browse/HBASE-25204) | Nightly job failed as  the name of jdk and maven changed |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24816](https://issues.apache.org/jira/browse/HBASE-24816) | Remove unused credential hbaseqa-at-asf-jira |  Major | build, tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-25090](https://issues.apache.org/jira/browse/HBASE-25090) | CompactionConfiguration logs unrealistic store file sizes |  Minor | Compaction | Nick Dimiduk | Zhuoyue Huang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | Relocate test-only REST "client" from src/ to test/ and mark Private |  Major | REST, security | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24009](https://issues.apache.org/jira/browse/HBASE-24009) | Backport the personality changes in HBASE-23989 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-24218](https://issues.apache.org/jira/browse/HBASE-24218) | Add hadoop 3.2.x in hadoop check |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24841](https://issues.apache.org/jira/browse/HBASE-24841) | Change the jenkins job urls in our jenkinsfile |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-24876](https://issues.apache.org/jira/browse/HBASE-24876) | Fix the flaky job url in hbase-personality.sh |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-25107](https://issues.apache.org/jira/browse/HBASE-25107) | Migrate flaky reporting jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25132](https://issues.apache.org/jira/browse/HBASE-25132) | Migrate flaky test jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25133](https://issues.apache.org/jira/browse/HBASE-25133) | Migrate HBase Nightly jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25154](https://issues.apache.org/jira/browse/HBASE-25154) | Set java.io.tmpdir to project build directory to avoid writing std\*deferred files to /tmp |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-25163](https://issues.apache.org/jira/browse/HBASE-25163) | Increase the timeout value for nightly jobs |  Major | jenkins, scripts, test | Duo Zhang | Duo Zhang |
| [HBASE-25194](https://issues.apache.org/jira/browse/HBASE-25194) | Do not publish workspace in flaky find job |  Major | jenkins | Duo Zhang | Duo Zhang |
| [HBASE-25203](https://issues.apache.org/jira/browse/HBASE-25203) | Change the reference url to flaky list in our jenkins jobs |  Major | flakies, jenkins | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | Move Jira-attached file precommit definition from script in Jenkins config to dev-support |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24200](https://issues.apache.org/jira/browse/HBASE-24200) | Upgrade to Yetus 0.12.0 |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-25228](https://issues.apache.org/jira/browse/HBASE-25228) | Delete dev-support/jenkins\_precommit\_jira\_yetus.sh |  Minor | build | Nick Dimiduk | Nick Dimiduk |


