
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

## Release 1.3.7 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23207](https://issues.apache.org/jira/browse/HBASE-23207) | Log a region open journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | Use a fair ReentrantReadWriteLock for the region close lock |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24148](https://issues.apache.org/jira/browse/HBASE-24148) | Upgrade Thrift to 0.13.0: 0.12.0 has outstanding CVEs. |  Major | Thrift | Tamas Penzes | Tamas Penzes |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23149](https://issues.apache.org/jira/browse/HBASE-23149) | hbase shouldPerformMajorCompaction logic is not correct |  Major | Compaction | jackylau | jackylau |
| [HBASE-23185](https://issues.apache.org/jira/browse/HBASE-23185) | High cpu usage because getTable()#put() gets config value every time |  Major | Client | Shinya Yoshida | Shinya Yoshida |
| [HBASE-18439](https://issues.apache.org/jira/browse/HBASE-18439) | Subclasses of o.a.h.h.chaos.actions.Action all use the same logger |  Minor | integration tests | Mike Drob | Rabi Kumar K C |
| [HBASE-23261](https://issues.apache.org/jira/browse/HBASE-23261) | Region stuck in transition while splitting |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23698](https://issues.apache.org/jira/browse/HBASE-23698) | Switch central repo to https on branch-1 |  Blocker | tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23825](https://issues.apache.org/jira/browse/HBASE-23825) | Increment proto conversion is broken |  Blocker | Increment | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-24016](https://issues.apache.org/jira/browse/HBASE-24016) | Change nightly poll from cron @daily to pollSCM @daily; i.e. run nightly if a change ONLY |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24017](https://issues.apache.org/jira/browse/HBASE-24017) | Turn down flakey rerun rate on all but hot branches |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24040](https://issues.apache.org/jira/browse/HBASE-24040) | WALFactory.Providers.multiwal causes StackOverflowError |  Minor | wal | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24213](https://issues.apache.org/jira/browse/HBASE-24213) | Backport the pre commit changes for HBASE-24169 to all branches |  Major | scripts | Duo Zhang | Duo Zhang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23793](https://issues.apache.org/jira/browse/HBASE-23793) | Increase maven heap allocation to 4G in Yetus personality |  Major | build, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | Relocate test-only REST "client" from src/ to test/ and mark Private |  Major | REST, security | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24009](https://issues.apache.org/jira/browse/HBASE-24009) | Backport the personality changes in HBASE-23989 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-24218](https://issues.apache.org/jira/browse/HBASE-24218) | Add hadoop 3.2.x in hadoop check |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24841](https://issues.apache.org/jira/browse/HBASE-24841) | Change the jenkins job urls in our jenkinsfile |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-24934](https://issues.apache.org/jira/browse/HBASE-24934) | Remove all jenkins files for 1.3.x |  Major | . | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23219](https://issues.apache.org/jira/browse/HBASE-23219) | Re-enable ZKLess tests for branch-1 (Revert HBASE-14622) |  Trivial | test | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | Log message about CleanerChore delegate initialization should be at INFO |  Minor | master, Operability | Sean Busbey | Rabi Kumar K C |
| [HBASE-23236](https://issues.apache.org/jira/browse/HBASE-23236) | Upgrade to yetus 0.11.1 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-23862](https://issues.apache.org/jira/browse/HBASE-23862) | Fix flaky TestSnapshotFromMaster in 1.x versions |  Major | . | Sakthi | Sakthi |
| [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | Move Jira-attached file precommit definition from script in Jenkins config to dev-support |  Minor | build | Nick Dimiduk | Nick Dimiduk |


