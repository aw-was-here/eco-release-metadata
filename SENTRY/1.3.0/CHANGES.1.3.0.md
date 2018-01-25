
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

## Release 1.3.0 - 2014-05-13



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-19](https://issues.apache.org/jira/browse/SENTRY-19) | Add support for solr index-level authorization |  Major | . | Gregory Chanan | Gregory Chanan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-6](https://issues.apache.org/jira/browse/SENTRY-6) | Use one policy editor exclusively in all the end to end tests |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-13](https://issues.apache.org/jira/browse/SENTRY-13) | Move createConnection to HiveServer Implementation (from Context) |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-20](https://issues.apache.org/jira/browse/SENTRY-20) | Sentry should throw an exception if testing.mode is not set on non-secure cluster |  Major | . | Mohit Sabharwal | Shreepadma Venugopalan |
| [SENTRY-4](https://issues.apache.org/jira/browse/SENTRY-4) | Rename Configuration properties that mention hive but are sentry related |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-11](https://issues.apache.org/jira/browse/SENTRY-11) | Normalize the user:group mapping for end to end tests |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-12](https://issues.apache.org/jira/browse/SENTRY-12) | Write the policy file to hdfs when using UnmanagedHiveServer |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-10](https://issues.apache.org/jira/browse/SENTRY-10) | Change the inheritance model of Abstract FileSystem classes to composition along with a Factory class, which allows us to use different FS implementations. |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-41](https://issues.apache.org/jira/browse/SENTRY-41) | Enable sentry end to end tests to run on a real cluster |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-49](https://issues.apache.org/jira/browse/SENTRY-49) | Fix spacing in InvalidConfigurationException |  Minor | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-62](https://issues.apache.org/jira/browse/SENTRY-62) | Solr binding should create a solr-usable Configuration to pass to the BackendProvider |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-68](https://issues.apache.org/jira/browse/SENTRY-68) | Give sentry-solr-binding the ability to authenticate via kerberos |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-71](https://issues.apache.org/jira/browse/SENTRY-71) | Solr Update authorization tests for Sentry |  Major | . | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-70](https://issues.apache.org/jira/browse/SENTRY-70) | Solr Query authorization tests for Sentry |  Major | . | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-86](https://issues.apache.org/jira/browse/SENTRY-86) | Additional logging for Solr/Sentry end to end tests |  Minor | . | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-83](https://issues.apache.org/jira/browse/SENTRY-83) | Sentry Solr Tests should have a dependency on solr-sentry-handlers |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-102](https://issues.apache.org/jira/browse/SENTRY-102) | Remove download-hadoop profile requirement and cache downloads |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-111](https://issues.apache.org/jira/browse/SENTRY-111) | Setup automated patch testing |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-112](https://issues.apache.org/jira/browse/SENTRY-112) | Add test-output directory to .gitignore |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-113](https://issues.apache.org/jira/browse/SENTRY-113) | Fix Sentry Precommit tests |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-80](https://issues.apache.org/jira/browse/SENTRY-80) | Create a Sentry Logo |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-119](https://issues.apache.org/jira/browse/SENTRY-119) | Reduce tarball size by excluding third party directory |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-124](https://issues.apache.org/jira/browse/SENTRY-124) | Create bin packaging |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-168](https://issues.apache.org/jira/browse/SENTRY-168) | Sentry-168: Trivial fixes to README and pom.xml |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-171](https://issues.apache.org/jira/browse/SENTRY-171) | Bump up hive and hadoop versions from SNAPSHOT to released bits |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-18](https://issues.apache.org/jira/browse/SENTRY-18) | Add sentry-tests-hive to assembly src |  Minor | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-29](https://issues.apache.org/jira/browse/SENTRY-29) | InvalidConfigurationException lacks license header, rat check fails |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-30](https://issues.apache.org/jira/browse/SENTRY-30) | StaticUserGroup lacks license header |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-23](https://issues.apache.org/jira/browse/SENTRY-23) | CREATE TEMPORARY FUNCTION fails when Hive warehouse is on hdfs |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-54](https://issues.apache.org/jira/browse/SENTRY-54) | Fix TestPrivilegesAtFunctionScope.testFuncPrivileges1 |  Critical | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-58](https://issues.apache.org/jira/browse/SENTRY-58) | Fix compilation error in TestURI.java |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [SENTRY-51](https://issues.apache.org/jira/browse/SENTRY-51) | kinit before hdfs file system operations does not work in hive e2e tests |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-60](https://issues.apache.org/jira/browse/SENTRY-60) | TestSolrAuthzBinding does not properly test negative cases |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-53](https://issues.apache.org/jira/browse/SENTRY-53) | Fix test failures caused by SENTRY-41 |  Critical | . | Shreepadma Venugopalan | Sravya Tirukkovalur |
| [SENTRY-52](https://issues.apache.org/jira/browse/SENTRY-52) | E2E tests need to use fully qualified URI while creating test base directories |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-63](https://issues.apache.org/jira/browse/SENTRY-63) | Hive queries with temporary UDF return error UnsupportedOperationException |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-64](https://issues.apache.org/jira/browse/SENTRY-64) | Break Circular dependency between sentry-binding-solr and sentry-core |  Blocker | . | Shreepadma Venugopalan | Gregory Chanan |
| [SENTRY-66](https://issues.apache.org/jira/browse/SENTRY-66) | Allow Sentry e2e tests to use HS2 LDAP authentication in cluster mode |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-73](https://issues.apache.org/jira/browse/SENTRY-73) | solrconfig.xml should specify SecureAdminHandlers |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-78](https://issues.apache.org/jira/browse/SENTRY-78) | UDFs can't be referenced in a CTAS when Sentry is enabled for Hive |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [SENTRY-79](https://issues.apache.org/jira/browse/SENTRY-79) | Solr/Sentry test filter should pass request headers |  Major | . | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-85](https://issues.apache.org/jira/browse/SENTRY-85) | The JDBC connection from hive test framework should use a userid that's supported by default test resource |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-87](https://issues.apache.org/jira/browse/SENTRY-87) | Sentry depends on SNAPSHOT release of Hadoop that is no longer available |  Minor | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-89](https://issues.apache.org/jira/browse/SENTRY-89) | Sentry WildCardPermission always ends a / to the URI |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-92](https://issues.apache.org/jira/browse/SENTRY-92) | Queries fail when hive.exec.scratchdir is not equal to hive.exec.local.scratchdir |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [SENTRY-90](https://issues.apache.org/jira/browse/SENTRY-90) | Normalize scratch path for comparison |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-45](https://issues.apache.org/jira/browse/SENTRY-45) | Sentry allows access to /tmp/hive-{user.name}\_foo directory without permissions |  Major | . | Sravya Tirukkovalur | Prasad Mujumdar |
| [SENTRY-108](https://issues.apache.org/jira/browse/SENTRY-108) | Add eclipse formatter to pom.xml |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-120](https://issues.apache.org/jira/browse/SENTRY-120) | Unit tests fail on Macs due to path comparision |  Major | . | Brock Noland | Sravya Tirukkovalur |
| [SENTRY-163](https://issues.apache.org/jira/browse/SENTRY-163) | Fix CHANGELOG.txt in sentry 1.3.0 release branch |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-173](https://issues.apache.org/jira/browse/SENTRY-173) | Add tag for 1.2.0 and 1.3.0 releases on git/github |  Major | . | Mark Grover |  |
| [SENTRY-329](https://issues.apache.org/jira/browse/SENTRY-329) | Alter table rename fails when we enable data objects and privileges syncing via hive meta store |  Major | . | Sravya Tirukkovalur | Prasad Mujumdar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-69](https://issues.apache.org/jira/browse/SENTRY-69) | Solr Sentry e2e test framework and simple test |  Major | . | Gregory Chanan | Gregory Chanan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-16](https://issues.apache.org/jira/browse/SENTRY-16) | Move sentry-tests to sentry-tests-hive package |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-17](https://issues.apache.org/jira/browse/SENTRY-17) | Separate sentry-provider to hive specific and non-specific packages |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-33](https://issues.apache.org/jira/browse/SENTRY-33) | Add new Hive UDFs to Sentry whitelist |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [SENTRY-26](https://issues.apache.org/jira/browse/SENTRY-26) | Separate sentry-core to hive specific and non-specific packages |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-38](https://issues.apache.org/jira/browse/SENTRY-38) | Cleanup Roles/DBRoles |  Minor | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-34](https://issues.apache.org/jira/browse/SENTRY-34) | Create  sentry-core-model-search module |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-42](https://issues.apache.org/jira/browse/SENTRY-42) | Create sentry-provider-policy-search module - RoleValidators, Permissions, Authorizables |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-27](https://issues.apache.org/jira/browse/SENTRY-27) | Refactor to be able to support different provider backends (e.g. db vs file) |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-35](https://issues.apache.org/jira/browse/SENTRY-35) | Create sentry-provider-policy-search module |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-36](https://issues.apache.org/jira/browse/SENTRY-36) | Create sentry-binding-solr module |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-43](https://issues.apache.org/jira/browse/SENTRY-43) | Refactor into policy specific modules |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-88](https://issues.apache.org/jira/browse/SENTRY-88) | Solr Collection Admin tests (CREATE,DELETE,RELOAD) |  Major | . | Vamsee Yarlagadda | Vamsee Yarlagadda |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-39](https://issues.apache.org/jira/browse/SENTRY-39) | Rename class in "search" module to Search |  Major | . | Brock Noland | Gregory Chanan |
| [SENTRY-9](https://issues.apache.org/jira/browse/SENTRY-9) | Refactoring to support search |  Major | . | Brock Noland | Gregory Chanan |
| [SENTRY-107](https://issues.apache.org/jira/browse/SENTRY-107) | Upgrade hadoop on master |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-94](https://issues.apache.org/jira/browse/SENTRY-94) | 1.3.0 Release |  Major | . | Karthik Ramachandran | Karthik Ramachandran |


