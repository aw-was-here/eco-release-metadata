
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

## Release 1.4.12 - 2019-11-29



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22701](https://issues.apache.org/jira/browse/HBASE-22701) | Better handle invalid local directory for DynamicClassLoader |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-23207](https://issues.apache.org/jira/browse/HBASE-23207) | Log a region open journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23228](https://issues.apache.org/jira/browse/HBASE-23228) | Allow for jdk8 specific modules on branch-1 in precommit/nightly testing |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-23245](https://issues.apache.org/jira/browse/HBASE-23245) | All MutableHistogram implementations should remove maxExpected |  Major | metrics | Viraj Jasani | Viraj Jasani |
| [HBASE-23323](https://issues.apache.org/jira/browse/HBASE-23323) | Release 1.4.12 |  Major | build, community | Sean Busbey | Sean Busbey |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23149](https://issues.apache.org/jira/browse/HBASE-23149) | hbase shouldPerformMajorCompaction logic is not correct |  Major | Compaction | jackylau | jackylau |
| [HBASE-23185](https://issues.apache.org/jira/browse/HBASE-23185) | High cpu usage because getTable()#put() gets config value every time |  Major | Client | Shinya Yoshida | Shinya Yoshida |
| [HBASE-18439](https://issues.apache.org/jira/browse/HBASE-18439) | Subclasses of o.a.h.h.chaos.actions.Action all use the same logger |  Minor | integration tests | Mike Drob | Rabi Kumar K C |
| [HBASE-23273](https://issues.apache.org/jira/browse/HBASE-23273) | Table header is not correct on table.jsp when table name is hbase:meta |  Minor | UI | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23287](https://issues.apache.org/jira/browse/HBASE-23287) | WALs not aged off of HDFS because LogCleaner is not added to choreService |  Blocker | wal | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23261](https://issues.apache.org/jira/browse/HBASE-23261) | Region stuck in transition while splitting |  Major | . | Viraj Jasani | Viraj Jasani |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs |  Blocker | dependencies, REST, security | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-23219](https://issues.apache.org/jira/browse/HBASE-23219) | Re-enable ZKLess tests for branch-1 (Revert HBASE-14622) |  Trivial | test | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | Log message about CleanerChore delegate initialization should be at INFO |  Minor | master, Operability | Sean Busbey | Rabi Kumar K C |
| [HBASE-23236](https://issues.apache.org/jira/browse/HBASE-23236) | Upgrade to yetus 0.11.1 |  Major | build | Duo Zhang | Duo Zhang |


