
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
# Apache Sentry Changelog

## Release 1.6.0 - 2015-09-22



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-612](https://issues.apache.org/jira/browse/SENTRY-612) | Sqoop2 integration with sentry |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-778](https://issues.apache.org/jira/browse/SENTRY-778) | CredentialProvider for Sentry DB password |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-804](https://issues.apache.org/jira/browse/SENTRY-804) | Add Audit Log Support for Solr Sentry Handlers |  Major | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-197](https://issues.apache.org/jira/browse/SENTRY-197) | Create tool to dump and load of entire Sentry service |  Major | . | Jarek Jarcec Cecho | Colin Ma |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-626](https://issues.apache.org/jira/browse/SENTRY-626) | Test case improvement |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-696](https://issues.apache.org/jira/browse/SENTRY-696) | Improve Metastoreplugin Cache Initialization time |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-720](https://issues.apache.org/jira/browse/SENTRY-720) | Patch related files should be excluded from version control |  Minor | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-723](https://issues.apache.org/jira/browse/SENTRY-723) | Clean unused methods in HiveAuthzBindingHook |  Minor | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-695](https://issues.apache.org/jira/browse/SENTRY-695) | Sentry service should read the hadoop group mapping properties from core-site |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-740](https://issues.apache.org/jira/browse/SENTRY-740) | Move the class PolicyFileConstants and KeyValue to provider-common |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-767](https://issues.apache.org/jira/browse/SENTRY-767) | SENTRY jenkins support test the patch for branch |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-774](https://issues.apache.org/jira/browse/SENTRY-774) | \*.rej files should be added to rat ignore list |  Minor | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-776](https://issues.apache.org/jira/browse/SENTRY-776) | Sentry client should support cache based kerberos ticket for secure zookeeper connection |  Major | Service | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-647](https://issues.apache.org/jira/browse/SENTRY-647) | Add e2e tests for Sqoop Sentry integration |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-530](https://issues.apache.org/jira/browse/SENTRY-530) | Add thrift protocol version check |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-755](https://issues.apache.org/jira/browse/SENTRY-755) | HDFS access of data files should be disabled for user with privileges only on some columns |  Major | Hdfs Plugin, Hive Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-821](https://issues.apache.org/jira/browse/SENTRY-821) | Add thrift protocol version check for generic model |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-843](https://issues.apache.org/jira/browse/SENTRY-843) | Add the link of wiki page in README.md |  Minor | . | shenguoquan | shenguoquan |
| [SENTRY-590](https://issues.apache.org/jira/browse/SENTRY-590) | Client factory for generic authorization model |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-833](https://issues.apache.org/jira/browse/SENTRY-833) | Sentry blog page is out of date |  Major | Docs | Lenni Kuff | Anne Yu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-683](https://issues.apache.org/jira/browse/SENTRY-683) | HDFS service client should ensure the kerberos ticket validity before new service connection |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-676](https://issues.apache.org/jira/browse/SENTRY-676) | Address Sentry HA issues in secure cluster |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-670](https://issues.apache.org/jira/browse/SENTRY-670) | Fix the Sentry build to remove snapshot and non apache dependencies |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-687](https://issues.apache.org/jira/browse/SENTRY-687) | Handle authorization for 'select \<expr\>' hive queries |  Major | . | Prasad Mujumdar | Yibing Shi |
| [SENTRY-698](https://issues.apache.org/jira/browse/SENTRY-698) | Uncaught OutOfMemoryError |  Major | . | Sean Mackrory | Colin Ma |
| [SENTRY-296](https://issues.apache.org/jira/browse/SENTRY-296) | Sentry Service Client does not allow for connection pooling |  Major | . | Lenni Kuff | Colin Ma |
| [SENTRY-703](https://issues.apache.org/jira/browse/SENTRY-703) | Calls to add\_partition fail when passed a Partition object with a null location |  Major | . | Richard Williams | Prasad Mujumdar |
| [SENTRY-678](https://issues.apache.org/jira/browse/SENTRY-678) | Sentry-Solr Binding may not load group mapping service correctly |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-596](https://issues.apache.org/jira/browse/SENTRY-596) | The jar files of sentry binary and source code should publish to maven central |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-699](https://issues.apache.org/jira/browse/SENTRY-699) | Memory leak when running Sentry w/ HiveServer2 |  Major | . | Lenni Kuff | Prasad Mujumdar |
| [SENTRY-702](https://issues.apache.org/jira/browse/SENTRY-702) | Hive binding should support RELOAD command |  Major | . | Prasad Mujumdar | Dapeng Sun |
| [SENTRY-717](https://issues.apache.org/jira/browse/SENTRY-717) | Fix the UDF whitelist format for functions row\_number and unbase64 |  Major | . | Prasad Mujumdar | Colin Ma |
| [SENTRY-736](https://issues.apache.org/jira/browse/SENTRY-736) | Add a new constructor to HadoopGroupMappingService |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-227](https://issues.apache.org/jira/browse/SENTRY-227) | Fix for "Unsupported entity type DUMMYPARTITION" |  Major | Hive Plugin | Lars Francke | Lars Francke |
| [SENTRY-744](https://issues.apache.org/jira/browse/SENTRY-744) | DB provider client should support grantServerPrivilege() method without action for backward compatibility |  Major | Service | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-750](https://issues.apache.org/jira/browse/SENTRY-750) | Use the Sqoop Server principal as the requester when removing the Sqoop resource |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-752](https://issues.apache.org/jira/browse/SENTRY-752) | Sentry service audit log file name format should be consistent |  Major | Service | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-763](https://issues.apache.org/jira/browse/SENTRY-763) | Remove multiple .gitignore files |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-766](https://issues.apache.org/jira/browse/SENTRY-766) | Fixed the broken builds link on the sentry site web page |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-721](https://issues.apache.org/jira/browse/SENTRY-721) | HDFS Cascading permissions not applied to child file ACLs if a direct grant exists |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-777](https://issues.apache.org/jira/browse/SENTRY-777) | SentryServiceIntegrationBase#after() should be run under client subject |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-789](https://issues.apache.org/jira/browse/SENTRY-789) | Jenkins should support test branch with special character |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-788](https://issues.apache.org/jira/browse/SENTRY-788) | Fix mysql and postgres scripts of generalized model |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-791](https://issues.apache.org/jira/browse/SENTRY-791) | java.lang.AbstractMethodError when using HDFS sync |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-794](https://issues.apache.org/jira/browse/SENTRY-794) | TestHDFSIntegrationWithHA#testEnd2End fails |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-797](https://issues.apache.org/jira/browse/SENTRY-797) | TestHDFSIntegration#testEndToEnd is flaky |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-800](https://issues.apache.org/jira/browse/SENTRY-800) | Oracle: first run A1.Scope invalid identifier |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-792](https://issues.apache.org/jira/browse/SENTRY-792) | Throw underlying exception if SentryService start fails |  Critical | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-802](https://issues.apache.org/jira/browse/SENTRY-802) | SentryService: Log error if you processor cannot be registered. |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-803](https://issues.apache.org/jira/browse/SENTRY-803) | TestLinkEndToEnd.testUpdateDtestUpdateDeleteLinkeleteLink test failure: SentryAlreadyExistsException: Role: role4 |  Major | Sqoop plugin | Anne Yu | Anne Yu |
| [SENTRY-805](https://issues.apache.org/jira/browse/SENTRY-805) | Reclassify CoreAdminHandler Actions |  Major | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-796](https://issues.apache.org/jira/browse/SENTRY-796) | Fix log levels in SentryAuthorizationInfo |  Minor | . | Sravya Tirukkovalur | Colin Ma |
| [SENTRY-806](https://issues.apache.org/jira/browse/SENTRY-806) | Fix unit test failure: TestMetastoreEndToEnd.testPartionInsert, java.lang.RuntimeException: Cannot make directory: hdfs://localhost:60362/tmp/hive-jenkins/hive\_2015-07-09\_21-50-34\_878\_9035087593722312500-1 |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-799](https://issues.apache.org/jira/browse/SENTRY-799) | Fix sentry unit test error: TestDbEndToEnd.testBasic: Table t1 already exists |  Major | Hive Plugin | Anne Yu | Anne Yu |
| [SENTRY-801](https://issues.apache.org/jira/browse/SENTRY-801) | Update README: Does not compile with JDK8 |  Blocker | . | Sravya Tirukkovalur | Colin Ma |
| [SENTRY-790](https://issues.apache.org/jira/browse/SENTRY-790) | Remove MetaStoreClient interface |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-808](https://issues.apache.org/jira/browse/SENTRY-808) | Change default protocol version to V2 |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-823](https://issues.apache.org/jira/browse/SENTRY-823) | Clean up roles properly in TestHDFSIntegration |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-822](https://issues.apache.org/jira/browse/SENTRY-822) | OutOfMemory in hive e2e test |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-825](https://issues.apache.org/jira/browse/SENTRY-825) | SecureAdminHandler no longer pulls collection name for create correctly |  Major | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-810](https://issues.apache.org/jira/browse/SENTRY-810) | CTAS without location is not verified properly |  Major | Hive Plugin | Ryan P | Ryan P |
| [SENTRY-827](https://issues.apache.org/jira/browse/SENTRY-827) | Server Scope always grants ALL |  Major | . | Ryan P | Ryan P |
| [SENTRY-829](https://issues.apache.org/jira/browse/SENTRY-829) | Fix all sentry hive test failure in TestDbCrossDbOps class: create database/table, grant select on table to role, but drop database then recreate it, privileges are removed. |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-834](https://issues.apache.org/jira/browse/SENTRY-834) | Fix hive e2e real cluster failures in TestDbConnections, TestDbExportImportPrivileges, TestDbJDBCInterface |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-780](https://issues.apache.org/jira/browse/SENTRY-780) | HDFS Plugin should not execute path callbacks for views |  Major | Hdfs Plugin, Hive Plugin | Prasad Mujumdar | Ryan P |
| [SENTRY-842](https://issues.apache.org/jira/browse/SENTRY-842) | Fix typos in pom.xml |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-836](https://issues.apache.org/jira/browse/SENTRY-836) | Refactor test TestDatabaseProvider.java: make each test case independent from other tests, not assume any external states/data |  Major | . | Anne Yu | Sravya Tirukkovalur |
| [SENTRY-850](https://issues.apache.org/jira/browse/SENTRY-850) | Fix dbprovider test failures when run on a real cluster or setMetastoreListener = true, when db/tab gets recreated their associated privileges will be deleted. |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-830](https://issues.apache.org/jira/browse/SENTRY-830) | Enable setMetastoreListener in the tests so that we can debug flaky test failures from local testing enviroment |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-605](https://issues.apache.org/jira/browse/SENTRY-605) | For locations using HDFS synchronization, users should not be allowed access to HDFS files if column-level restrictions are present |  Major | . | Lenni Kuff | Sravya Tirukkovalur |
| [SENTRY-839](https://issues.apache.org/jira/browse/SENTRY-839) | posexplode() missing from HIVE\_UDF\_WHITE\_LIST |  Major | Hive Plugin | Grisha Trubetskoy | Li Li |
| [SENTRY-856](https://issues.apache.org/jira/browse/SENTRY-856) | [unit test] Sentry unit tests failures when it run at new Jenkins nodes |  Major | Sentry | Lenni Kuff | Dapeng Sun |
| [SENTRY-739](https://issues.apache.org/jira/browse/SENTRY-739) | when user doesn't have admin privileges, show grant throw exception, better improve error message |  Major | Hive Plugin | Anne Yu | Colin Ma |
| [SENTRY-847](https://issues.apache.org/jira/browse/SENTRY-847) | [column level privilege] if grant column level privilege to user, show columns in table shouldn't require extra table level privilege |  Major | . | Anne Yu | shenguoquan |
| [SENTRY-860](https://issues.apache.org/jira/browse/SENTRY-860) | Fix intermittent test failure for TestPrivilegesAtFunctionScope.testFuncPrivileges1 |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-746](https://issues.apache.org/jira/browse/SENTRY-746) | After revoke select from view, select fails with a confusing error message |  Major | Core | Anne Yu | Colin Ma |
| [SENTRY-841](https://issues.apache.org/jira/browse/SENTRY-841) | Revoke on SERVER scope breaks Client API, allows any string to be passed in |  Major | Service | Lenni Kuff | Ryan P |
| [SENTRY-902](https://issues.apache.org/jira/browse/SENTRY-902) | SimpleDBProviderBackend should retry the authrization process properly |  Major | . | Yibing Shi | Yibing Shi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-485](https://issues.apache.org/jira/browse/SENTRY-485) | Add test coverage for auditing in E2E, secure environment |  Major | . | Lenni Kuff | Colin Ma |
| [SENTRY-824](https://issues.apache.org/jira/browse/SENTRY-824) | Enable column level privileges e2e tests on real cluster runs |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-741](https://issues.apache.org/jira/browse/SENTRY-741) | Add a test case for hive query which creates dummy partition |  Minor | Hive Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-155](https://issues.apache.org/jira/browse/SENTRY-155) | Add concurrent access tests for DB store store |  Major | . | Prasad Mujumdar | Anne Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-645](https://issues.apache.org/jira/browse/SENTRY-645) | Add sqoop authorizable model for sentry authorization |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-681](https://issues.apache.org/jira/browse/SENTRY-681) | Update the versions on trunk after branching |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-537](https://issues.apache.org/jira/browse/SENTRY-537) | Refactor AbstractTestWithHiveServer to cut down some test cases runtime |  Major | . | Xiaomeng Huang | Colin Ma |
| [SENTRY-646](https://issues.apache.org/jira/browse/SENTRY-646) | Add Sqoop policy engine  for sentry authorization |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-697](https://issues.apache.org/jira/browse/SENTRY-697) | Test parallel cache loading with large metastore |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-600](https://issues.apache.org/jira/browse/SENTRY-600) | Extend SentryClient by SentryClientInvocationHandler |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-601](https://issues.apache.org/jira/browse/SENTRY-601) | Create connection pool factory |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-644](https://issues.apache.org/jira/browse/SENTRY-644) | Sentry Sqoop binding framework for role-based authorization |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-661](https://issues.apache.org/jira/browse/SENTRY-661) | Ensure Sqoop Sentry authorizaiton works with sentry service |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-621](https://issues.apache.org/jira/browse/SENTRY-621) | Add new thrift interface for import/export in sentry |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-656](https://issues.apache.org/jira/browse/SENTRY-656) | Update SentryStore for import/export feature |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-622](https://issues.apache.org/jira/browse/SENTRY-622) | Update SentryService for import/export feature |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-623](https://issues.apache.org/jira/browse/SENTRY-623) | Create processor to deal with the file format for import/export feature |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-657](https://issues.apache.org/jira/browse/SENTRY-657) | Update SentryConfigTool for import/export feature |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-828](https://issues.apache.org/jira/browse/SENTRY-828) | Cleanup the unnecessary ProviderBackend |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-863](https://issues.apache.org/jira/browse/SENTRY-863) | Create release branch for 1.6.0 |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-864](https://issues.apache.org/jira/browse/SENTRY-864) | Update the version to 1.7.0-incubating-SNAPSHOT on trunk after branch-1.6.0 created |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-865](https://issues.apache.org/jira/browse/SENTRY-865) | Update change log for 1.6.0 release |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-867](https://issues.apache.org/jira/browse/SENTRY-867) | Remove SNAPSHOT from branch-1.6.0 |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-868](https://issues.apache.org/jira/browse/SENTRY-868) | Create rc of 1.6.0 for VOTE |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-894](https://issues.apache.org/jira/browse/SENTRY-894) | Upload the artifacts of 1.6.0 and announce the release |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-866](https://issues.apache.org/jira/browse/SENTRY-866) | Update sentry website after 1.6.0 release |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-895](https://issues.apache.org/jira/browse/SENTRY-895) | Published a blog to apache with new features of 1.6.0 and update wiki release page |  Major | . | Dapeng Sun | Dapeng Sun |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-692](https://issues.apache.org/jira/browse/SENTRY-692) | Add schema creation scripts for 1.6.0 version |  Major | . | Prasad Mujumdar | Colin Ma |
| [SENTRY-771](https://issues.apache.org/jira/browse/SENTRY-771) | Add documentation for Delegated GRANT and REVOKE |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-772](https://issues.apache.org/jira/browse/SENTRY-772) | Add documentation for Sentry Webserver Authentication and Authorization |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-779](https://issues.apache.org/jira/browse/SENTRY-779) | Add documentation for Sentry Client Connection Pool |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-818](https://issues.apache.org/jira/browse/SENTRY-818) | Add document for “Sqoop2 integration with Sentry” |  Major | . | Dapeng Sun | shenguoquan |
| [SENTRY-684](https://issues.apache.org/jira/browse/SENTRY-684) | Upgrade to Apache Curator 2.7.1 |  Major | . | Prasad Mujumdar | Dapeng Sun |
| [SENTRY-757](https://issues.apache.org/jira/browse/SENTRY-757) | Add documentation for import/export feature |  Major | . | Sravya Tirukkovalur | Colin Ma |
| [SENTRY-758](https://issues.apache.org/jira/browse/SENTRY-758) | Add test cases for partition columns with column level privileges |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-889](https://issues.apache.org/jira/browse/SENTRY-889) | Update sentry website after 1.5.1 release |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-903](https://issues.apache.org/jira/browse/SENTRY-903) | Refresh and update Sentry Tutorials: https://blogs.apache.org/sentry/entry/getting\_started |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-857](https://issues.apache.org/jira/browse/SENTRY-857) | Apache Sentry 1.6.0 Release |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-809](https://issues.apache.org/jira/browse/SENTRY-809) | Add document to wiki for the feature "protect metadata read privilege" |  Major | . | Colin Ma | Colin Ma |


