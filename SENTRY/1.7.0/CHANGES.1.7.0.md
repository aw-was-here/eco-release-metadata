
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

## Release 1.7.0 - 2016-06-15



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-960](https://issues.apache.org/jira/browse/SENTRY-960) | Use hive.server2.builtin.udf.blacklist |  Major | Sentry | Ryan P | Sravya Tirukkovalur |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-812](https://issues.apache.org/jira/browse/SENTRY-812) | Generate audit trail for Sentry generic model when authorization metadata change |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-498](https://issues.apache.org/jira/browse/SENTRY-498) | Sentry integration with Hive authorization framework V2 |  Major | . | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-749](https://issues.apache.org/jira/browse/SENTRY-749) | Create simple shell for sentry |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-906](https://issues.apache.org/jira/browse/SENTRY-906) | Add concurrency sentry client tests |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-995](https://issues.apache.org/jira/browse/SENTRY-995) | Simple Solr Shell |  Major | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-1130](https://issues.apache.org/jira/browse/SENTRY-1130) | Upgrade Hive plugin v2 for hive 2.0.0 |  Major | Hive V2 | Dapeng Sun | Dapeng Sun |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-913](https://issues.apache.org/jira/browse/SENTRY-913) | Thread safe improvement for sqoop binding singleton |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-934](https://issues.apache.org/jira/browse/SENTRY-934) | Update plugin versions |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-952](https://issues.apache.org/jira/browse/SENTRY-952) | Update source to JDK 7 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-565](https://issues.apache.org/jira/browse/SENTRY-565) | Improve performance of filtering Hive SHOW commands |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-970](https://issues.apache.org/jira/browse/SENTRY-970) | Use random free port for Sqoop tests |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-972](https://issues.apache.org/jira/browse/SENTRY-972) | Include sentry-tests-hive hadoop test script in maven project |  Trivial | Test | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-979](https://issues.apache.org/jira/browse/SENTRY-979) | Speed up the build (a bit) |  Trivial | . | Colm O hEigeartaigh |  |
| [SENTRY-973](https://issues.apache.org/jira/browse/SENTRY-973) | Bump hamcrest version |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-957](https://issues.apache.org/jira/browse/SENTRY-957) | Exceptions in MetastoreCacheInitializer should probably not prevent HMS from starting up |  Major | Hdfs Plugin | Sravya Tirukkovalur | Hao Hao |
| [SENTRY-832](https://issues.apache.org/jira/browse/SENTRY-832) | Clean dependences of sentry-provider-db |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1006](https://issues.apache.org/jira/browse/SENTRY-1006) | Add user manual for simple shell |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-986](https://issues.apache.org/jira/browse/SENTRY-986) | Apply PMD plugin to Sentry source |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1015](https://issues.apache.org/jira/browse/SENTRY-1015) | Improve Sentry + Hive error message when user does not have sufficient privileges to perform an operation |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1036](https://issues.apache.org/jira/browse/SENTRY-1036) | Move ProviderConstants from sentry-provider-common to sentry-policy-common |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-993](https://issues.apache.org/jira/browse/SENTRY-993) | list\_sentry\_privileges\_by\_authorizable() gone in API v2 |  Major | . | Romain Rigaux | Hao Hao |
| [SENTRY-1048](https://issues.apache.org/jira/browse/SENTRY-1048) | Fix "Critical" issues identified by analysis.apache.org |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1052](https://issues.apache.org/jira/browse/SENTRY-1052) | Sentry shell should use kerberos requestor and give better error messages for kerberos failures |  Major | Service | Gregory Chanan | Gregory Chanan |
| [SENTRY-520](https://issues.apache.org/jira/browse/SENTRY-520) | Use the twitter Bootstrap kit (or similar) to beautify the Sentry Service webpage |  Major | . | Lenni Kuff | Li Li |
| [SENTRY-1065](https://issues.apache.org/jira/browse/SENTRY-1065) | Make SentryNoSuchObjectException exception error message consistent across all files |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1021](https://issues.apache.org/jira/browse/SENTRY-1021) | Add PMD to Sentry tests |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1078](https://issues.apache.org/jira/browse/SENTRY-1078) | Add servlet for dumping configurations |  Major | . | Li Li | Li Li |
| [SENTRY-1119](https://issues.apache.org/jira/browse/SENTRY-1119) | Allow data engines to specify the ActionFactory from configuration |  Major | Service | Bhooshan Mogal | Bhooshan Mogal |
| [SENTRY-1136](https://issues.apache.org/jira/browse/SENTRY-1136) | Remove /Ping and /HealthCheck from Sentry Service Webpage |  Major | . | Li Li | Li Li |
| [SENTRY-1135](https://issues.apache.org/jira/browse/SENTRY-1135) | Remove deprecated junit.framework dependencies |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1088](https://issues.apache.org/jira/browse/SENTRY-1088) | PathsUpdate should log invalid paths to make troubleshooting easier |  Major | Sentry | Ryan P | Ryan P |
| [SENTRY-1121](https://issues.apache.org/jira/browse/SENTRY-1121) | Update Jetty version |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-878](https://issues.apache.org/jira/browse/SENTRY-878) | collect\_list missing from HIVE\_UDF\_WHITE\_LIST |  Major | Hive Plugin | Li Li | Li Li |
| [SENTRY-884](https://issues.apache.org/jira/browse/SENTRY-884) | Give execute permission by default to paths managed by sentry |  Major | Hdfs Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-881](https://issues.apache.org/jira/browse/SENTRY-881) | Allow some metadata operations with column-level privileges |  Major | Sentry | Lenni Kuff | Lenni Kuff |
| [SENTRY-886](https://issues.apache.org/jira/browse/SENTRY-886) | HDFSIntegration test testAccessToTableDirectory should wait for cache refresh before verification |  Trivial | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-885](https://issues.apache.org/jira/browse/SENTRY-885) | DB name should be case insensitive in HDFS sync plugin |  Major | Hdfs Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-892](https://issues.apache.org/jira/browse/SENTRY-892) | parsePath should handle empty paths well |  Minor | Hdfs Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-900](https://issues.apache.org/jira/browse/SENTRY-900) | User could access sentry metric info by curl without authorization |  Critical | Sentry | Shishaodong | Dapeng Sun |
| [SENTRY-893](https://issues.apache.org/jira/browse/SENTRY-893) | Synchronize calls in SentryClient and create sentry client once per request in SimpleDBProvider |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-888](https://issues.apache.org/jira/browse/SENTRY-888) | Exceptions in Callable tasks in MetaStoreCacheInitializer are being dropped |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-769](https://issues.apache.org/jira/browse/SENTRY-769) | [Improve error handling] Make sure groups in list\_sentry\_privileges\_for\_provider is not empty |  Major | . | Sravya Tirukkovalur | Colin Ma |
| [SENTRY-904](https://issues.apache.org/jira/browse/SENTRY-904) | Set max message size for thrift messages |  Minor | . | Sravya Tirukkovalur | Li Li |
| [SENTRY-914](https://issues.apache.org/jira/browse/SENTRY-914) | Sentry default webserver port needs to change out of ephemeral port range |  Major | Service | Lenni Kuff | Dapeng Sun |
| [SENTRY-936](https://issues.apache.org/jira/browse/SENTRY-936) | getGroup and getUser should always return orginal hdfs values for paths in prefix which are not sentry managed |  Major | Hdfs Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-944](https://issues.apache.org/jira/browse/SENTRY-944) | Setting HDFS rules on Sentry managed hdfs paths should not affect original hdfs rules |  Major | Hdfs Plugin | Sravya Tirukkovalur | Hao Hao |
| [SENTRY-923](https://issues.apache.org/jira/browse/SENTRY-923) | Fix SentryStore getPrivileges when table require "some" |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-945](https://issues.apache.org/jira/browse/SENTRY-945) | Avoid logging all DataNucleus queries when debug logging is enabled |  Major | Sentry | Lenni Kuff | Li Li |
| [SENTRY-962](https://issues.apache.org/jira/browse/SENTRY-962) | Fix SentryStore getPrivileges when column require "some" |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-966](https://issues.apache.org/jira/browse/SENTRY-966) | SqoopAuthBindingSingleton uses bad double check locking idiom |  Major | Sqoop plugin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-965](https://issues.apache.org/jira/browse/SENTRY-965) | Solr /terms request handler broken because of components declaration |  Major | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-835](https://issues.apache.org/jira/browse/SENTRY-835) | Drop table leaves a connection open when using metastorelistener |  Major | . | Anne Yu | Hao Hao |
| [SENTRY-932](https://issues.apache.org/jira/browse/SENTRY-932) | TestColumnEndToEnd error check should non-case sensitive |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-953](https://issues.apache.org/jira/browse/SENTRY-953) | External Partitions which are referenced by more than one table can cause some unexpected behavior with Sentry HDFS sync |  Major | Sentry | Ryan P | Hao Hao |
| [SENTRY-988](https://issues.apache.org/jira/browse/SENTRY-988) | It's better to let SentryAuthorization setter path always fall through and update HDFS |  Major | Hdfs Plugin | Yongjun Zhang | Yongjun Zhang |
| [SENTRY-968](https://issues.apache.org/jira/browse/SENTRY-968) | Uri check needs to be case sensitive |  Major | . | Sravya Tirukkovalur | Li Li |
| [SENTRY-971](https://issues.apache.org/jira/browse/SENTRY-971) | Add profile to enable Hive AuthZ v2 |  Major | Hive V2 | Dapeng Sun | Dapeng Sun |
| [SENTRY-994](https://issues.apache.org/jira/browse/SENTRY-994) | SentryAuthorizationInfoX should override isSentryManaged |  Major | Hdfs Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-826](https://issues.apache.org/jira/browse/SENTRY-826) | TRUNCATE on empty partitioned table in Hive fails |  Major | Hive Plugin | Lenni Kuff | Li Li |
| [SENTRY-991](https://issues.apache.org/jira/browse/SENTRY-991) | Roles of Sentry Permission needs to be case insensitive |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1008](https://issues.apache.org/jira/browse/SENTRY-1008) | Path should be not be updated if the create/drop table/partition event fails |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1018](https://issues.apache.org/jira/browse/SENTRY-1018) | HiveServer is not properly shutdown cause BindException in TestServerConfiguration |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1009](https://issues.apache.org/jira/browse/SENTRY-1009) | Improve TestDatabaseProvider to validate test object names instead of validating vague numbers. |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1003](https://issues.apache.org/jira/browse/SENTRY-1003) | Support "reload" by updating the classpath of Sentry function aux jar path during runtime |  Major | Sentry | Anne Yu | Dapeng Sun |
| [SENTRY-1002](https://issues.apache.org/jira/browse/SENTRY-1002) | PathsUpdate.parsePath(path) will throw an NPE when parsing relative paths |  Major | Sentry | Ryan P | Hao Hao |
| [SENTRY-1037](https://issues.apache.org/jira/browse/SENTRY-1037) | Set "hadoop.security.authentication" to "kerberos" in the Generic Client |  Major | Service, Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-1007](https://issues.apache.org/jira/browse/SENTRY-1007) | Sentry column-level performance for wide tables |  Critical | . | Anne Yu | Dapeng Sun |
| [SENTRY-1044](https://issues.apache.org/jira/browse/SENTRY-1044) | Tables with non-hdfs locations breaks HMS startup |  Critical | Hdfs Plugin | Harsh J | Harsh J |
| [SENTRY-1039](https://issues.apache.org/jira/browse/SENTRY-1039) | Sentry shell tests assume order of option group privileges |  Major | Service | Gregory Chanan | Gregory Chanan |
| [SENTRY-997](https://issues.apache.org/jira/browse/SENTRY-997) | Update HiveAuthorizer of Sentry after HiveAuthorizer interface changes |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1027](https://issues.apache.org/jira/browse/SENTRY-1027) | Fix PMD error for unused field when enable Hive authz V2 |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-998](https://issues.apache.org/jira/browse/SENTRY-998) | TestSentryShellHive test failure with JDK 8 |  Major | . | Colm O hEigeartaigh |  |
| [SENTRY-1050](https://issues.apache.org/jira/browse/SENTRY-1050) | Improve clearAll method to avoid throwing exceptions because of deleting objects created outside of tests. |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1059](https://issues.apache.org/jira/browse/SENTRY-1059) | 'dependencies.dependency.version' for org.apache.sentry:sentry-core-model-kafka:jar is missing. @ line 42, column 17 |  Blocker | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1054](https://issues.apache.org/jira/browse/SENTRY-1054) | Updated Apache Shiro dependency |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1060](https://issues.apache.org/jira/browse/SENTRY-1060) | Improve the SentryAuthFilter error message when authentication failure |  Minor | . | Hao Hao | Hao Hao |
| [SENTRY-1064](https://issues.apache.org/jira/browse/SENTRY-1064) | Fix TestDbOperations#testCaseSensitivity |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-1055](https://issues.apache.org/jira/browse/SENTRY-1055) | Sentry service solr constants refer to clusters rather than services |  Major | Service, Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-1066](https://issues.apache.org/jira/browse/SENTRY-1066) | Sentry oracle upgrade script failed with ORA-0955 duplicate name issue |  Blocker | . | Anne Yu | Anne Yu |
| [SENTRY-1077](https://issues.apache.org/jira/browse/SENTRY-1077) | create a wiki to describe how to run scale script to prepare data and how to run sentry hive e2e tests on the cluster |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-974](https://issues.apache.org/jira/browse/SENTRY-974) | create a sentry test data dump to facilite sentry scale tests |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-989](https://issues.apache.org/jira/browse/SENTRY-989) | RealTimeGet with explicit ids can bypass document level authorization |  Critical | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-1097](https://issues.apache.org/jira/browse/SENTRY-1097) | Fix compilation errors from SentryGenericPolicyProcessor |  Major | Sentry | Anne Yu | Dapeng Sun |
| [SENTRY-1035](https://issues.apache.org/jira/browse/SENTRY-1035) | Generic service does not handle group name casing correctly |  Major | Service | Gregory Chanan | Sravya Tirukkovalur |
| [SENTRY-1095](https://issues.apache.org/jira/browse/SENTRY-1095) | Insert into requires URI privilege on partition location under table. |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1096](https://issues.apache.org/jira/browse/SENTRY-1096) | Fix TestDbOperations#testCaseSensitivity failure on a real cluster |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1099](https://issues.apache.org/jira/browse/SENTRY-1099) | JDK8 autoboxing compilation failure |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1087](https://issues.apache.org/jira/browse/SENTRY-1087) | Capture URI when using Hive Serdes |  Critical | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1058](https://issues.apache.org/jira/browse/SENTRY-1058) | Duplicate junit versions in the root pom |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1105](https://issues.apache.org/jira/browse/SENTRY-1105) | Fix unittest TestMetastoreEndToEnd.testAddPartion |  Major | . | Hao Hao | Sravya Tirukkovalur |
| [SENTRY-1112](https://issues.apache.org/jira/browse/SENTRY-1112) | Change default value of "sentry.hive.server" to empty string |  Minor | Service | Lenni Kuff | Li Li |
| [SENTRY-1116](https://issues.apache.org/jira/browse/SENTRY-1116) | Fix PMD violation for Sentry tests after missing commits |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1114](https://issues.apache.org/jira/browse/SENTRY-1114) | Wrong classname and incorrect \_CMD\_JAR var in sentryShell |  Major | Sentry | Bhooshan Mogal | Bhooshan Mogal |
| [SENTRY-1111](https://issues.apache.org/jira/browse/SENTRY-1111) | Apache Sentry should depend on the same version of metrics-core as hadoop |  Major | Build | Bhooshan Mogal |  |
| [SENTRY-1122](https://issues.apache.org/jira/browse/SENTRY-1122) | Allow Solr Audit Log to Read Impersonator Info |  Major | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-922](https://issues.apache.org/jira/browse/SENTRY-922) | INSERT OVERWRITE DIRECTORY permission not working correctly |  Major | Sentry | Eric Lin | Yibing Shi |
| [SENTRY-1071](https://issues.apache.org/jira/browse/SENTRY-1071) | Update thrift gen-file with maven plugin |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1157](https://issues.apache.org/jira/browse/SENTRY-1157) | Fix Unit Tests TestAclsCrud&TestAuthorize failed |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1169](https://issues.apache.org/jira/browse/SENTRY-1169) | MetastorePlugin#renameAuthzObject log message prints oldpathname as newpathname |  Trivial | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1155](https://issues.apache.org/jira/browse/SENTRY-1155) | Add waiting time for getMetastoreClient for avoiding metastore isn't ready |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1128](https://issues.apache.org/jira/browse/SENTRY-1128) | Add metastore\_db to .gitignore |  Major | Build | Bhooshan Mogal | Bhooshan Mogal |
| [SENTRY-1156](https://issues.apache.org/jira/browse/SENTRY-1156) | TestDbColumnLevelMetaDataOps should add \`use database\` for user session created |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1217](https://issues.apache.org/jira/browse/SENTRY-1217) | NPE for list\_sentry\_privileges\_by\_authorizable when activeRoleSet is not set |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1234](https://issues.apache.org/jira/browse/SENTRY-1234) | JDO exception for list\_sentry\_privileges\_by\_authorizable |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-918](https://issues.apache.org/jira/browse/SENTRY-918) | Upgrade hive version 1.1.0 to the recent ones to include hive side fixes. |  Major | Sentry | Anne Yu |  |
| [SENTRY-1146](https://issues.apache.org/jira/browse/SENTRY-1146) | Sentry TLP: Update sentry website after graduation |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1460](https://issues.apache.org/jira/browse/SENTRY-1460) | Download page: no link to KEYS file, no links to MD5 or SHA hashes |  Major | . | Sebb | Colm O hEigeartaigh |
| [SENTRY-1461](https://issues.apache.org/jira/browse/SENTRY-1461) | Download page has no link to the current release 1.7.0 |  Blocker | . | Sebb | Colm O hEigeartaigh |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-570](https://issues.apache.org/jira/browse/SENTRY-570) | Bug fixing for the test case "TestMetaStoreWithPigHCat" |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-748](https://issues.apache.org/jira/browse/SENTRY-748) | Improve test coverage of Sentry + Hive using complex views |  Major | Core | Anne Yu | Anne Yu |
| [SENTRY-915](https://issues.apache.org/jira/browse/SENTRY-915) | Improve Hive E2E tests for keep consistent with Hive metadata. |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-955](https://issues.apache.org/jira/browse/SENTRY-955) | Add more meta data operation tests for column level privilege |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-958](https://issues.apache.org/jira/browse/SENTRY-958) | TestGrantPrivilege fails on JDK8 |  Trivial | Test | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1109](https://issues.apache.org/jira/browse/SENTRY-1109) | mvn clean install fails with PMD validation: Unnecessary use of fully qualified name 'org.apache.hadoop.hive.metastore.api.Partition' due to existing import 'org.apache.hadoop.hive.metastore.api.Partition' |  Major | Sentry | Anne Yu | Dapeng Sun |
| [SENTRY-869](https://issues.apache.org/jira/browse/SENTRY-869) | Add a test where we have multiple column level privileges for a given role |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1164](https://issues.apache.org/jira/browse/SENTRY-1164) | Fix testCaseSensitivity test failure on a real cluster |  Major | Sentry | Anne Yu | Anne Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-813](https://issues.apache.org/jira/browse/SENTRY-813) | Refactor the AuditMetadataLogEntity to support the audit log for generic mdoel |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-814](https://issues.apache.org/jira/browse/SENTRY-814) | Add new log entity for generic model |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-815](https://issues.apache.org/jira/browse/SENTRY-815) | Update the util to generate the command for audit log |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-816](https://issues.apache.org/jira/browse/SENTRY-816) | Update the util to manage the log entity for audit log |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-817](https://issues.apache.org/jira/browse/SENTRY-817) | Update processor for generic model to generate audit log |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-917](https://issues.apache.org/jira/browse/SENTRY-917) | Improve TestRuntimeMetadataRetrieval for keeping database policies consistent with Hive metadata |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-930](https://issues.apache.org/jira/browse/SENTRY-930) | Improve TestDbDDLAuditLog for keep consistent with Hive metadata. |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-931](https://issues.apache.org/jira/browse/SENTRY-931) | Improve TestDatabaseProvider for keep consistent with Hive metadata. |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-928](https://issues.apache.org/jira/browse/SENTRY-928) | Improve TestDbSentryOnFailureHookLoading for keeping database policies consistent with Hive metadata |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-916](https://issues.apache.org/jira/browse/SENTRY-916) | Improve TestPrivilegesAtTableScope for keep consistent with Hive metadata. |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-925](https://issues.apache.org/jira/browse/SENTRY-925) | Improve TestMetadataPermissions for keep consistent with Hive metadata. |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-926](https://issues.apache.org/jira/browse/SENTRY-926) | Improve TestMetadataObjectRetrieval for keep consistent with Hive metadata. |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-929](https://issues.apache.org/jira/browse/SENTRY-929) | Improve TestDbEndToEnd for keep consistent with Hive metadata. |  Major | Hive Plugin | Dapeng Sun | Dapeng Sun |
| [SENTRY-506](https://issues.apache.org/jira/browse/SENTRY-506) | Default implementation of SentryAccessController to do grant/revoke role/privlege |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-568](https://issues.apache.org/jira/browse/SENTRY-568) | Implement taskFactory V2 to handle special privilege for Sentry |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-505](https://issues.apache.org/jira/browse/SENTRY-505) | Default implementation of SentryAuthorizationValidator to do authorization |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-542](https://issues.apache.org/jira/browse/SENTRY-542) | Extend SentryPolicyServiceClient to implement grant wrapped privilege info for V2 |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-532](https://issues.apache.org/jira/browse/SENTRY-532) | Add unit tests for DefaultSentryAuthorizationValidator |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-592](https://issues.apache.org/jira/browse/SENTRY-592) | Support column level security for V2 |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-603](https://issues.apache.org/jira/browse/SENTRY-603) | Execute on failure hooks for V2 |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-569](https://issues.apache.org/jira/browse/SENTRY-569) | Workaround some operations for Authorization V2 |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-987](https://issues.apache.org/jira/browse/SENTRY-987) | Move general (non specific handler) solr-sentry code to solr-sentry-core package |  Major | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-1012](https://issues.apache.org/jira/browse/SENTRY-1012) | Add core model for Kafka |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1023](https://issues.apache.org/jira/browse/SENTRY-1023) | Create an initial branch for CI |  Major | kafka-integration | Dapeng Sun | Dapeng Sun |
| [SENTRY-1013](https://issues.apache.org/jira/browse/SENTRY-1013) | Add policy engine for Kafka |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1011](https://issues.apache.org/jira/browse/SENTRY-1011) | Add Kafka binding |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1029](https://issues.apache.org/jira/browse/SENTRY-1029) | Address review comments for Kafka model that came after patch got committed. |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1098](https://issues.apache.org/jira/browse/SENTRY-1098) | Make Kafka dependency as provided |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1056](https://issues.apache.org/jira/browse/SENTRY-1056) | Get service name from Kafka's server properties. |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1030](https://issues.apache.org/jira/browse/SENTRY-1030) | Restrict Kafka Cluster authorizable to only have "kafka-cluster" as authorizable's name. |  Major | . | Ashish Singh | Ashish Singh |
| [SENTRY-1057](https://issues.apache.org/jira/browse/SENTRY-1057) | Add implementations for acls' CRUD |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1113](https://issues.apache.org/jira/browse/SENTRY-1113) | Fix test failures due to missing files. |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1014](https://issues.apache.org/jira/browse/SENTRY-1014) | Add end-to-end tests for Kafka |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1142](https://issues.apache.org/jira/browse/SENTRY-1142) | Rebase on master |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1102](https://issues.apache.org/jira/browse/SENTRY-1102) | Merge kafka branch into trunk |  Major | kafka-integration | Ashish Singh | Hao Hao |
| [SENTRY-1138](https://issues.apache.org/jira/browse/SENTRY-1138) | Extract common classes for binding-hive-v1 and binding-hive-v2 |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1159](https://issues.apache.org/jira/browse/SENTRY-1159) | Decouple datanucleus dependences for hive-binding V1 and V2 |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1137](https://issues.apache.org/jira/browse/SENTRY-1137) | Update hive dependence to 2.0.0 |  Major | Hive V2 | Dapeng Sun | Dapeng Sun |
| [SENTRY-1163](https://issues.apache.org/jira/browse/SENTRY-1163) | Enable Jenkins for Hive Authz2 |  Major | Hive V2 | Dapeng Sun | Dapeng Sun |
| [SENTRY-514](https://issues.apache.org/jira/browse/SENTRY-514) | Enable e2e tests for authorization V2 |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-1126](https://issues.apache.org/jira/browse/SENTRY-1126) | Create a email list for jira updates (issues@) |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1144](https://issues.apache.org/jira/browse/SENTRY-1144) | Sentry TLP: Update status page |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1143](https://issues.apache.org/jira/browse/SENTRY-1143) | Sentry TLP: Update the builds with new git repo |  Major | . | Sravya Tirukkovalur | Dapeng Sun |
| [SENTRY-1148](https://issues.apache.org/jira/browse/SENTRY-1148) | Update the maillist of Sentry |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1191](https://issues.apache.org/jira/browse/SENTRY-1191) | update history page of Sentry release |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1147](https://issues.apache.org/jira/browse/SENTRY-1147) | Update Home page of Sentry Web |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1151](https://issues.apache.org/jira/browse/SENTRY-1151) | Update source code host at sentry website |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1149](https://issues.apache.org/jira/browse/SENTRY-1149) | Update committer list of Sentry |  Major | . | Dapeng Sun | Colin Ma |
| [SENTRY-1172](https://issues.apache.org/jira/browse/SENTRY-1172) | Update mailing lists page with new issues@ list |  Major | . | Sravya Tirukkovalur | Dapeng Sun |
| [SENTRY-1186](https://issues.apache.org/jira/browse/SENTRY-1186) | Sentry TLP: Update release download links on website |  Major | . | Sravya Tirukkovalur | Dapeng Sun |
| [SENTRY-1150](https://issues.apache.org/jira/browse/SENTRY-1150) | Update the website svn directory |  Major | . | Dapeng Sun | Colin Ma |
| [SENTRY-1197](https://issues.apache.org/jira/browse/SENTRY-1197) | Update the version to 1.8.0-SNAPSHOT on trunk after branch-1.7.0 created |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1192](https://issues.apache.org/jira/browse/SENTRY-1192) | Add SQL upgrade script for 1.7.0 |  Major | Sentry | Dapeng Sun | Dapeng Sun |
| [SENTRY-589](https://issues.apache.org/jira/browse/SENTRY-589) | Enable dist for authorization V2 |  Major | Hive V2 | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-1152](https://issues.apache.org/jira/browse/SENTRY-1152) | Update Sentry wiki after graduation |  Major | . | Dapeng Sun | Sravya Tirukkovalur |
| [SENTRY-1202](https://issues.apache.org/jira/browse/SENTRY-1202) | Sentry TLP: Other Common post graduation tasks |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1173](https://issues.apache.org/jira/browse/SENTRY-1173) | Sentry TLP: Update pom.xml to new git location |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1162](https://issues.apache.org/jira/browse/SENTRY-1162) | Add shell for Sentry Kafka integration |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1188](https://issues.apache.org/jira/browse/SENTRY-1188) | Fixes to get kerberos auth work. |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1195](https://issues.apache.org/jira/browse/SENTRY-1195) | Update change log for 1.7.0 release |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1194](https://issues.apache.org/jira/browse/SENTRY-1194) | Create branch for 1.7.0 and move jiras with fix version 1.6.0 to 1.7.0 |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1196](https://issues.apache.org/jira/browse/SENTRY-1196) | Remove SNAPSHOT from branch-1.7.0 |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1132](https://issues.apache.org/jira/browse/SENTRY-1132) | Sanitize JIRA for 1.7.0 Release |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1198](https://issues.apache.org/jira/browse/SENTRY-1198) | Cherry-pick Sentry-589,1162,1188,1160,1217,1173 and update the change log |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1211](https://issues.apache.org/jira/browse/SENTRY-1211) | Home page still has Incubator logo in footer |  Major | . | Sebb | Dapeng Sun |
| [SENTRY-1227](https://issues.apache.org/jira/browse/SENTRY-1227) | Cherry-pick Sentry-1121, Sentry-1234 and updated the change log |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1237](https://issues.apache.org/jira/browse/SENTRY-1237) | Generate a new master key-pair for code signing |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1219](https://issues.apache.org/jira/browse/SENTRY-1219) | Create rc of 1.7.0 for VOTE |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1310](https://issues.apache.org/jira/browse/SENTRY-1310) | Upload the artifacts of 1.7.0 and announce the release |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1342](https://issues.apache.org/jira/browse/SENTRY-1342) | Update sentry website after 1.7.0 release |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1343](https://issues.apache.org/jira/browse/SENTRY-1343) | Published a blog to apache with new features of 1.7.0 and update wiki release page |  Major | Sentry | Hao Hao | Hao Hao |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-510](https://issues.apache.org/jira/browse/SENTRY-510) | Metrics collection for Sentry HDFS plugin |  Major | . | Prasad Mujumdar | Li Li |
| [SENTRY-742](https://issues.apache.org/jira/browse/SENTRY-742) | Add describe, show/compute stats tests for column level privileges |  Minor | Hive Plugin | Sravya Tirukkovalur | Anne Yu |
| [SENTRY-984](https://issues.apache.org/jira/browse/SENTRY-984) | add sentry into analysis.apache.org |  Major | . | Anne Yu | Colm O hEigeartaigh |
| [SENTRY-1038](https://issues.apache.org/jira/browse/SENTRY-1038) | More strict checking of SOLR actions in shell |  Major | Service | Gregory Chanan | Gregory Chanan |
| [SENTRY-1017](https://issues.apache.org/jira/browse/SENTRY-1017) | Update Sentry website "people (commiters)" section with new committer (Anne) and PPMC section with a note on new resolution |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1016](https://issues.apache.org/jira/browse/SENTRY-1016) | Update incubator status page with new committer news (Anne) and new resolution (Committer == PPMC during graduation) |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1047](https://issues.apache.org/jira/browse/SENTRY-1047) | Use existing validators in SentryShellSolr |  Major | Service, Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-1032](https://issues.apache.org/jira/browse/SENTRY-1032) | Implement group/role commands in solr shell |  Major | Service | Gregory Chanan | Gregory Chanan |
| [SENTRY-1110](https://issues.apache.org/jira/browse/SENTRY-1110) | Apache Sentry 1.7.0 Release |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1786](https://issues.apache.org/jira/browse/SENTRY-1786) | Update 1.7.0 release history page information at sentry.apache.org |  Minor | Docs, Sentry | Sergio Peña | Sergio Peña |


