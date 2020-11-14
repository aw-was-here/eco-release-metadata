
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

## Release 2.1.4 - 2019-03-26



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21926](https://issues.apache.org/jira/browse/HBASE-21926) | Profiler servlet |  Major | master, Operability, regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21636](https://issues.apache.org/jira/browse/HBASE-21636) | Enhance the shell scan command to support missing scanner specifications like ReadType, IsolationLevel etc. |  Major | shell | Nihal Jain | Nihal Jain |
| [HBASE-21932](https://issues.apache.org/jira/browse/HBASE-21932) | Use Runtime.getRuntime().halt to terminate regionserver when abort timeout |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21867](https://issues.apache.org/jira/browse/HBASE-21867) | Support multi-threads in HFileArchiver |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21871](https://issues.apache.org/jira/browse/HBASE-21871) | Support to specify a peer table name in VerifyReplication tool |  Major | . | Toshihiro Suzuki | Subrat Mishra |
| [HBASE-21667](https://issues.apache.org/jira/browse/HBASE-21667) | Move to latest ASF Parent POM |  Minor | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22032](https://issues.apache.org/jira/browse/HBASE-22032) | KeyValue validation should check for null byte array |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18484](https://issues.apache.org/jira/browse/HBASE-18484) | VerifyRep by snapshot  does not work when Yarn / SourceHBase / PeerHBase located in different HDFS clusters |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-21854](https://issues.apache.org/jira/browse/HBASE-21854) | Race condition in TestProcedureSkipPersistence |  Minor | proc-v2 | Peter Somogyi | Peter Somogyi |
| [HBASE-21889](https://issues.apache.org/jira/browse/HBASE-21889) | Use thrift 0.12.0 when build thrift by compile-thrift profile |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21890](https://issues.apache.org/jira/browse/HBASE-21890) | Use execute instead of submit to submit a task in RemoteProcedureDispatcher |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21900](https://issues.apache.org/jira/browse/HBASE-21900) | Infinite loop in AsyncMetaRegionLocator if we can not get the location for meta |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21910](https://issues.apache.org/jira/browse/HBASE-21910) | The nonce implementation is wrong for AsyncTable |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21899](https://issues.apache.org/jira/browse/HBASE-21899) | Fix missing variables in slf4j Logger |  Trivial | logging | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-21929](https://issues.apache.org/jira/browse/HBASE-21929) | The checks at the end of TestRpcClientLeaks are not executed |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21942](https://issues.apache.org/jira/browse/HBASE-21942) | [UI] requests per second is incorrect in rsgroup page(rsgroup.jsp) |  Minor | . | xuqinya | xuqinya |
| [HBASE-21943](https://issues.apache.org/jira/browse/HBASE-21943) | The usage of RegionLocations.mergeRegionLocations is wrong for async client |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21961](https://issues.apache.org/jira/browse/HBASE-21961) | Infinite loop in AsyncNonMetaRegionLocator if there is only one region and we tried to locate before a non empty row |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21980](https://issues.apache.org/jira/browse/HBASE-21980) | Fix typo in AbstractTestAsyncTableRegionReplicasRead |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21983](https://issues.apache.org/jira/browse/HBASE-21983) | Should track the scan metrics in AsyncScanSingleRegionRpcRetryingCaller if scan metrics is enabled |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21915](https://issues.apache.org/jira/browse/HBASE-21915) | FileLink$FileLinkInputStream doesn't implement CanUnbuffer |  Major | Filesystem Integration | Josh Elser | Josh Elser |
| [HBASE-21960](https://issues.apache.org/jira/browse/HBASE-21960) | RESTServletContainer not configured for REST Jetty server |  Blocker | REST | Josh Elser | Josh Elser |
| [HBASE-21990](https://issues.apache.org/jira/browse/HBASE-21990) | puppycrawl checkstyle dtds 404... moved to sourceforge |  Major | build | Michael Stack | Michael Stack |
| [HBASE-21800](https://issues.apache.org/jira/browse/HBASE-21800) | RegionServer aborted due to NPE from MetaTableMetrics coprocessor |  Critical | Coprocessors, meta, metrics, Operability | Sakthi | Sakthi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21897](https://issues.apache.org/jira/browse/HBASE-21897) | Set version to 2.1.4-SNAPSHOT for branch-2.1 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19889](https://issues.apache.org/jira/browse/HBASE-19889) | Revert Workaround: Purge User API building from branch-2 so can make a beta-1 |  Major | website | Michael Stack | Sakthi |
| [HBASE-21930](https://issues.apache.org/jira/browse/HBASE-21930) | Deal with ScannerResetException when opening region scanner |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21927](https://issues.apache.org/jira/browse/HBASE-21927) | Always fail the locate request when error occur |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21906](https://issues.apache.org/jira/browse/HBASE-21906) | Backport the CallQueueTooBigException related changes in HBASE-21875 to branch-2.1 |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21976](https://issues.apache.org/jira/browse/HBASE-21976) | Deal with RetryImmediatelyException for batching request |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21978](https://issues.apache.org/jira/browse/HBASE-21978) | Should close AsyncRegistry if we fail to get cluster id when creating AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21934](https://issues.apache.org/jira/browse/HBASE-21934) | RemoteProcedureDispatcher should track the ongoing dispatched calls |  Blocker | proc-v2 | Jingyun Tian | Jingyun Tian |
| [HBASE-21984](https://issues.apache.org/jira/browse/HBASE-21984) | Generate CHANGES.md and RELEASENOTES.md for 2.1.4 |  Major | community, documentation | Duo Zhang | Duo Zhang |
| [HBASE-21985](https://issues.apache.org/jira/browse/HBASE-21985) | Set version as 2.1.4 in branch-2.1 in prep for first RC |  Major | build, community | Duo Zhang | Duo Zhang |
| [HBASE-21997](https://issues.apache.org/jira/browse/HBASE-21997) | Fix hbase-rest findbugs ST\_WRITE\_TO\_STATIC\_FROM\_INSTANCE\_METHOD complaint |  Major | REST | Michael Stack | Michael Stack |
| [HBASE-21999](https://issues.apache.org/jira/browse/HBASE-21999) | [DEBUG] Exit if git returns empty revision! |  Major | build | Michael Stack | Michael Stack |
| [HBASE-22025](https://issues.apache.org/jira/browse/HBASE-22025) | RAT check fails in nightlies; fails on (old) test data files. |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22059](https://issues.apache.org/jira/browse/HBASE-22059) | 2.1 addendum; (check-jar-contents) @ hbase-shaded-check-invariants fails |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22066](https://issues.apache.org/jira/browse/HBASE-22066) | Add markers to CHANGES.md and RELEASENOTES.md |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22022](https://issues.apache.org/jira/browse/HBASE-22022) | nightly fails rat check down in the dev-support/hbase\_nightly\_source-artifact.sh check |  Major | . | Michael Stack | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21968](https://issues.apache.org/jira/browse/HBASE-21968) | Release 2.1.4 |  Major | community | Duo Zhang | Duo Zhang |
| [HBASE-21884](https://issues.apache.org/jira/browse/HBASE-21884) | Fix box/unbox findbugs warning in secure bulk load |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-21057](https://issues.apache.org/jira/browse/HBASE-21057) | upgrade to latest spotbugs |  Minor | community, test | Sean Busbey | Kevin Su |
| [HBASE-22052](https://issues.apache.org/jira/browse/HBASE-22052) | pom cleaning; filter out jersey-core in hadoop2 to match hadoop3 and remove redunant version specifications |  Major | . | Michael Stack | Michael Stack |


