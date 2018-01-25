
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

## Release 1.8.0 - 2017-08-07



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-711](https://issues.apache.org/jira/browse/SENTRY-711) | Implement grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-785](https://issues.apache.org/jira/browse/SENTRY-785) | Allow export of sentry for a specific auth object |  Major | . | Sravya Tirukkovalur | Colin Ma |
| [SENTRY-912](https://issues.apache.org/jira/browse/SENTRY-912) | Sentry integration with Apache Kafka |  Major | kafka-integration | Dapeng Sun | Ashish Singh |
| [SENTRY-1154](https://issues.apache.org/jira/browse/SENTRY-1154) | Uber Jira for enabling Sentry with blob storage |  Major | Sentry | Hao Hao | Hao Hao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-480](https://issues.apache.org/jira/browse/SENTRY-480) | Create import tool that will load policy file about Solr into the DB store |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-999](https://issues.apache.org/jira/browse/SENTRY-999) | Refactor the sentry to integrate with external components quickly |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1076](https://issues.apache.org/jira/browse/SENTRY-1076) | Add SSL support, print version info on Sentry Service webpage |  Major | . | Li Li | Li Li |
| [SENTRY-1206](https://issues.apache.org/jira/browse/SENTRY-1206) | Add document for how to integrate with Sentry |  Major | Docs | Colin Ma | Colin Ma |
| [SENTRY-1220](https://issues.apache.org/jira/browse/SENTRY-1220) | Improve the import/export to support user scope |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1233](https://issues.apache.org/jira/browse/SENTRY-1233) | Logging improvements to SentryConfigToolSolr |  Major | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-1251](https://issues.apache.org/jira/browse/SENTRY-1251) | Move PolicyFileConstants to sentry-core-common |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1229](https://issues.apache.org/jira/browse/SENTRY-1229) | Add caching to SentryGenericProviderBackend |  Major | . | Ashish Singh | Ashish Singh |
| [SENTRY-1168](https://issues.apache.org/jira/browse/SENTRY-1168) | Fix some "major" issues identified by Sonarqube |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1269](https://issues.apache.org/jira/browse/SENTRY-1269) | Converter vs Convertor is inconsistent |  Minor | Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-1254](https://issues.apache.org/jira/browse/SENTRY-1254) | Upgrading SQL script for implement grant user to role |  Major | Hive Plugin | Dapeng Sun | Ke Jia |
| [SENTRY-1297](https://issues.apache.org/jira/browse/SENTRY-1297) | wget is not a default command on mac |  Minor | Build | Zephyr Guo |  |
| [SENTRY-67](https://issues.apache.org/jira/browse/SENTRY-67) | Complete Hive Integration points |  Critical | . | Brock Noland |  |
| [SENTRY-1205](https://issues.apache.org/jira/browse/SENTRY-1205) | Refactor the code for sentry-provider-db and create sentry-service module |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1290](https://issues.apache.org/jira/browse/SENTRY-1290) | Performance improvement for ResourceAuthorizationProvider |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1404](https://issues.apache.org/jira/browse/SENTRY-1404) | Use the new INodeAttributesProvider API in sentry-hdfs |  Major | Hdfs Plugin | Colin P. McCabe | Hao Hao |
| [SENTRY-1436](https://issues.apache.org/jira/browse/SENTRY-1436) | Move PolicyFiles from sentry-provider-file to sentry-core-common |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1406](https://issues.apache.org/jira/browse/SENTRY-1406) | Refactor: move AuthorizationProvider out of sentry-provider-common |  Major | Sentry | Colin Ma | Colin Ma |
| [SENTRY-1450](https://issues.apache.org/jira/browse/SENTRY-1450) | Have privilege converter set by Kafka binding |  Major | . | Ashish Singh | Ashish Singh |
| [SENTRY-1120](https://issues.apache.org/jira/browse/SENTRY-1120) | Show role / privileges info in Sentry Service Webpage |  Major | . | Li Li | Li Li |
| [SENTRY-1512](https://issues.apache.org/jira/browse/SENTRY-1512) | Refactor the database transaction management |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1505](https://issues.apache.org/jira/browse/SENTRY-1505) | CommitContext isn't used by anything and should be removed |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1501](https://issues.apache.org/jira/browse/SENTRY-1501) | SentryStore shouldn't synchronize openTransaction() and commitUpdateTransaction() |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1533](https://issues.apache.org/jira/browse/SENTRY-1533) | Sentry console metrics reporting interval should be configurable |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1518](https://issues.apache.org/jira/browse/SENTRY-1518) | Add metrics for SentryStore transactions |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1517](https://issues.apache.org/jira/browse/SENTRY-1517) | SentryStore should actually use function getMSentryRole to get roles |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1525](https://issues.apache.org/jira/browse/SENTRY-1525) | Provide script to run Sentry directly from the repo |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1557](https://issues.apache.org/jira/browse/SENTRY-1557) | getRolesForGroups() does too many trips to the the DB |  Minor | Sentry | Alexander Kolbasov | Vamsee Yarlagadda |
| [SENTRY-1564](https://issues.apache.org/jira/browse/SENTRY-1564) | Improve error detection and reporting in MetastoreCacheInitializer.java |  Major | . | Vadim Spector | Vadim Spector |
| [SENTRY-1582](https://issues.apache.org/jira/browse/SENTRY-1582) | Comments to clarify the intent of string manipulation methods in SentryStore.java |  Major | Sentry | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1581](https://issues.apache.org/jira/browse/SENTRY-1581) | Provide Log4J metrics reporter |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1577](https://issues.apache.org/jira/browse/SENTRY-1577) | Support "create function using jar" for hive when Sentry is enabled |  Major | Hive Binding | Aihua Xu | Aihua Xu |
| [SENTRY-1594](https://issues.apache.org/jira/browse/SENTRY-1594) | TransactionBlock should become generic |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1507](https://issues.apache.org/jira/browse/SENTRY-1507) | Sentry should use Datanucleus version of javax.jdo |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1599](https://issues.apache.org/jira/browse/SENTRY-1599) | CloseablePersistenceManager is no longer needed |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1615](https://issues.apache.org/jira/browse/SENTRY-1615) | SentryStore should not allocate empty objects that are immediately returned |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1633](https://issues.apache.org/jira/browse/SENTRY-1633) | Disable mvn failIfNotTest flag |  Trivial | Test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [SENTRY-1636](https://issues.apache.org/jira/browse/SENTRY-1636) | Remove thrift dependency on fb303 |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1625](https://issues.apache.org/jira/browse/SENTRY-1625) | PrivilegeOperatePersistence can use QueryParamBuilder |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1642](https://issues.apache.org/jira/browse/SENTRY-1642) | Integrate Sentry build with Error Prone |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1556](https://issues.apache.org/jira/browse/SENTRY-1556) | Simplify privilege cleaning |  Minor | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1742](https://issues.apache.org/jira/browse/SENTRY-1742) | Upgrade to Maven surefire plugin v2.2 |  Major | Sentry | Alexander Kolbasov | Jan Hentschel |
| [SENTRY-1730](https://issues.apache.org/jira/browse/SENTRY-1730) | Remove FileInputStream/FileOutputStream |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1516](https://issues.apache.org/jira/browse/SENTRY-1516) | Add gpg configuration to the root pom to enable deployment to Maven Central |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1235](https://issues.apache.org/jira/browse/SENTRY-1235) | Some pom changes |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1744](https://issues.apache.org/jira/browse/SENTRY-1744) | Simplify creation of DelegateSentryStore |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1811](https://issues.apache.org/jira/browse/SENTRY-1811) | Optimize data structures used in HDFS sync |  Major | . | Misha Dmitriev | Misha Dmitriev |
| [SENTRY-1823](https://issues.apache.org/jira/browse/SENTRY-1823) | Fix the sentryShell script to support other types |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1846](https://issues.apache.org/jira/browse/SENTRY-1846) | Use a consistent configuration variable for the sentry provider property |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1827](https://issues.apache.org/jira/browse/SENTRY-1827) | Minimize TPathsDump thrift message used in HDFS sync |  Major | . | Misha Dmitriev | Misha Dmitriev |
| [SENTRY-1836](https://issues.apache.org/jira/browse/SENTRY-1836) | Add sentry web service config in service template |  Minor | Sentry | Donghui Xu | Donghui Xu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-933](https://issues.apache.org/jira/browse/SENTRY-933) | Some UTs in TestPrivilegesAtFunctionScope should have two arguments for “org.apache.hadoop.hive.ql.udf.generic.GenericUDFPrintf” |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1184](https://issues.apache.org/jira/browse/SENTRY-1184) | Clean up HMSPaths.renameAuthzObject |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1213](https://issues.apache.org/jira/browse/SENTRY-1213) | Remove unnecessary file |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1212](https://issues.apache.org/jira/browse/SENTRY-1212) | Small authorization and compatibility checking bugs in Sentry conversion tool |  Major | Service, Solr Plugin | Gregory Chanan | Gregory Chanan |
| [SENTRY-1190](https://issues.apache.org/jira/browse/SENTRY-1190) | IMPORT TABLE silently fails if Sentry is enabled |  Major | . | Reuben Kuhnert | Reuben Kuhnert |
| [SENTRY-1215](https://issues.apache.org/jira/browse/SENTRY-1215) | Sentry's db provider makes privileges case insensitive. |  Major | . | Ashish Singh | Ashish Singh |
| [SENTRY-1193](https://issues.apache.org/jira/browse/SENTRY-1193) | Add SQL upgrade script for 1.8.0 |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1216](https://issues.apache.org/jira/browse/SENTRY-1216) | [unit test failure] disable sentry ha tests for now; add time out for each test class/method; fix trainsient junit time out issue |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1001](https://issues.apache.org/jira/browse/SENTRY-1001) | Improve usability of URIs and URI privileges |  Major | URI | Lenni Kuff | Hao Hao |
| [SENTRY-1218](https://issues.apache.org/jira/browse/SENTRY-1218) | [unit test failure] testFuncPrivileges1 takes more than 180s to finish so keep failing the test suites |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1201](https://issues.apache.org/jira/browse/SENTRY-1201) | Sentry ignores database prefix for MSCK statement |  Major | Hive Binding | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1228](https://issues.apache.org/jira/browse/SENTRY-1228) | SimpleFileProviderBackend error message missing spaces |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-1253](https://issues.apache.org/jira/browse/SENTRY-1253) | SentryShellKafka is incorrectly setting component as "KAFKA" |  Major | . | Ashish Singh | Ashish Singh |
| [SENTRY-1252](https://issues.apache.org/jira/browse/SENTRY-1252) | grantServerPrivilege and revokeServerPrivilege should treat "\*" and "ALL" as synonyms when action is not explicitly specified |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1265](https://issues.apache.org/jira/browse/SENTRY-1265) | Sentry service should not require a TGT as it is not talking to other kerberos services as a client |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1230](https://issues.apache.org/jira/browse/SENTRY-1230) | Add basic testing workflow to test Sentry with Hive storage on S3 |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1294](https://issues.apache.org/jira/browse/SENTRY-1294) | Fix the management problem for dependency's version |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1236](https://issues.apache.org/jira/browse/SENTRY-1236) | Bump thrift version to 0.9.3 |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-947](https://issues.apache.org/jira/browse/SENTRY-947) | Improve error message in HDFS NN Plugin when unable to connect to Sentry |  Major | Hdfs Plugin | Lenni Kuff | Venkatesh Ramasamy |
| [SENTRY-887](https://issues.apache.org/jira/browse/SENTRY-887) | Sentry Hive binding fails with NPE when authorizing permanent Hive UDFs |  Major | Hive Plugin, Sentry | Lenni Kuff |  |
| [SENTRY-1320](https://issues.apache.org/jira/browse/SENTRY-1320) | truncate table db\_name.table\_name fails |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [SENTRY-1302](https://issues.apache.org/jira/browse/SENTRY-1302) | Update Hive V2 after moving Exception to sentry-core-common module |  Major | . | Ke Jia | Ke Jia |
| [SENTRY-1346](https://issues.apache.org/jira/browse/SENTRY-1346) | add a test case into hdfs acl e2e suite to test a db.tbl without partition, can take more than certain number groups |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-1345](https://issues.apache.org/jira/browse/SENTRY-1345) | ACLS on table folder disappear after insert for unpartitioned tables |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1311](https://issues.apache.org/jira/browse/SENTRY-1311) | Improve usability of URI privileges by supporting mixed use of URIs with and without scheme |  Major | URI | Vadim Spector | VS |
| [SENTRY-1376](https://issues.apache.org/jira/browse/SENTRY-1376) | Fix alter property case correctly - Deletes ACLS on the table |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-320](https://issues.apache.org/jira/browse/SENTRY-320) | show role grant group groupname should not throw an exception if group doesnt exist in db |  Major | . | Sravya Tirukkovalur | Ke Jia |
| [SENTRY-1354](https://issues.apache.org/jira/browse/SENTRY-1354) | add column level test cases for select ... group by, order by and where in V2 |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1334](https://issues.apache.org/jira/browse/SENTRY-1334) | [column level privileges] test and add test for CTAS and Create View AS SELECT (cross databases cases) |  Major | Sentry | Anne Yu | Ke Jia |
| [SENTRY-1094](https://issues.apache.org/jira/browse/SENTRY-1094) | SentryMetastorePostEventListener.onAlterTable should check for null dereference |  Major | Sentry | Hao Hao | Ke Jia |
| [SENTRY-1209](https://issues.apache.org/jira/browse/SENTRY-1209) | Sentry does not block Hive's cross-schema table renames |  Critical | Core, Hive Binding, Hive Plugin, Sentry | Ruslan Dautkhanov | Colin Ma |
| [SENTRY-1357](https://issues.apache.org/jira/browse/SENTRY-1357) | SentryMetastorePostEventListenerBase.onAlterTable should check for null dereference |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1401](https://issues.apache.org/jira/browse/SENTRY-1401) | In V2, show role grant group groupname should not throw an exception if group doesnt exist in db. |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1438](https://issues.apache.org/jira/browse/SENTRY-1438) | Move PolicyFiles from sentry-provider-file to sentry-core-common in V2 |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1405](https://issues.apache.org/jira/browse/SENTRY-1405) | Add test for "show grant role on all " command in V2 |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1250](https://issues.apache.org/jira/browse/SENTRY-1250) | Document kafka integration with sentry |  Major | kafka-integration, Sentry | Anne Yu | Ashish Singh |
| [SENTRY-1447](https://issues.apache.org/jira/browse/SENTRY-1447) | When s3 is configured as HDFS defaultFS and Hive Warehouse Dir, need to fix some e2e test failures. For example, TestDbHdfsMaxGroups.java. |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1464](https://issues.apache.org/jira/browse/SENTRY-1464) | Sentry e2e test failure in org.apache.sentry.tests.e2e.dbprovider.TestDbUriPermissions.testAlterPartitionLocationPrivileges |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1471](https://issues.apache.org/jira/browse/SENTRY-1471) | TestHDFSIntegrationBase.java implements HDFS ACL checking and query verification incorrectly |  Major | Sentry | Vadim Spector | Vadim Spector |
| [SENTRY-1486](https://issues.apache.org/jira/browse/SENTRY-1486) | Sentry should use repeatable-read consistency level |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1459](https://issues.apache.org/jira/browse/SENTRY-1459) | Alter view with HMS Client fails with "java.lang.IllegalArgumentException: Can not create a Path from a null string" |  Major | . | Sravya Tirukkovalur | Ankur Gupta |
| [SENTRY-1504](https://issues.apache.org/jira/browse/SENTRY-1504) | NPE in log4j.properties parsing |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1312](https://issues.apache.org/jira/browse/SENTRY-1312) | HDFS\_PERMISSION\_DEFAULT does not parse correctly |  Major | Hdfs Plugin | Zephyr Guo | Zephyr Guo |
| [SENTRY-1313](https://issues.apache.org/jira/browse/SENTRY-1313) | Database prefix is not honoured when executing grant statement |  Critical | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1270](https://issues.apache.org/jira/browse/SENTRY-1270) | Improve error handling - Database with malformed URI causes NPE in HMS plugin during DDL |  Major | . | Lenni Kuff | Sravya Tirukkovalur |
| [SENTRY-1260](https://issues.apache.org/jira/browse/SENTRY-1260) | Improve error handling - ArrayIndexOutOfBoundsException in PathsUpdate.parsePath can cause MetastoreCacheInitializer intialization to fail |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1491](https://issues.apache.org/jira/browse/SENTRY-1491) | Sentry transactions are not rolled back immediately when commit fails |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1524](https://issues.apache.org/jira/browse/SENTRY-1524) | sentry-dist is missing dependency on sentry-hdfs-dist |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1508](https://issues.apache.org/jira/browse/SENTRY-1508) | MetastorePlugin.java does not handle properly initialization failure |  Critical | . | Vadim Spector | Vadim Spector |
| [SENTRY-1476](https://issues.apache.org/jira/browse/SENTRY-1476) | SentryStore is subject to JDQL injection |  Major | Core | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1526](https://issues.apache.org/jira/browse/SENTRY-1526) | Sentry processed stays alive after being killed |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1586](https://issues.apache.org/jira/browse/SENTRY-1586) | [unit test] Race condition between metastore server/client could cause connection refused errors |  Major | Test | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1534](https://issues.apache.org/jira/browse/SENTRY-1534) | Oracle supports serializable instead of repeatable-read |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1515](https://issues.apache.org/jira/browse/SENTRY-1515) | Cleanup exception handling in SentryStore |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1532](https://issues.apache.org/jira/browse/SENTRY-1532) | Sentry Web UI isn't working |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1605](https://issues.apache.org/jira/browse/SENTRY-1605) | SENTRY-1508 need to be fixed because of Kerberos initialization issue |  Major | . | Vadim Spector | Vadim Spector |
| [SENTRY-1624](https://issues.apache.org/jira/browse/SENTRY-1624) | DefaultSentryValidator doesn't correctly construct SentryOnFailureHookContextImpl |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1609](https://issues.apache.org/jira/browse/SENTRY-1609) | DelegateSentryStore is subject to JDQL injection |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1546](https://issues.apache.org/jira/browse/SENTRY-1546) | Generic Policy provides bad error messages for Sentry exceptions |  Minor | . | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1663](https://issues.apache.org/jira/browse/SENTRY-1663) | UpdateableAuthzPermissions has mutable static fields |  Minor | Sentry | Alexander Kolbasov | Jan Hentschel |
| [SENTRY-1658](https://issues.apache.org/jira/browse/SENTRY-1658) | Null pointer dereference in SentryShellHive |  Minor | Sentry | Alexander Kolbasov | Jan Hentschel |
| [SENTRY-1683](https://issues.apache.org/jira/browse/SENTRY-1683) | MetastoreCacheInitializer has a race condition in handling results list |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1644](https://issues.apache.org/jira/browse/SENTRY-1644) | Partition ACLs disappear after renaming Hive table with partitions |  Major | Hdfs Plugin | Hao Hao | Lei (Eddy) Xu |
| [SENTRY-1548](https://issues.apache.org/jira/browse/SENTRY-1548) | Setting GrantOption to UNSET upsets Sentry |  Minor | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1727](https://issues.apache.org/jira/browse/SENTRY-1727) | HMSPathsDumper.cloneToEntry should set authzObjToEntries properly |  Major | . | Hao Hao | Lei (Eddy) Xu |
| [SENTRY-1759](https://issues.apache.org/jira/browse/SENTRY-1759) | UpdatableCache leaks connections |  Critical | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1646](https://issues.apache.org/jira/browse/SENTRY-1646) | Unable to truncate table \<database\>.\<tablename\>; from "default" databases |  Critical | Hive Plugin | Eric Lin | Yongzhi Chen |
| [SENTRY-1785](https://issues.apache.org/jira/browse/SENTRY-1785) | Fix TestKrbConnectionTimeout test |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1783](https://issues.apache.org/jira/browse/SENTRY-1783) | alterSentryRoleGrantPrivilegeCore does more persistence work than required |  Major | sentrystore | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1788](https://issues.apache.org/jira/browse/SENTRY-1788) | Sentry Store may use JDO object after the associated data is removed in DB |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1801](https://issues.apache.org/jira/browse/SENTRY-1801) | Sentry Namenode Plugin should handle unknown permissions |  Major | Sentry | kalyan kumar kalvagadda | Alexander Kolbasov |
| [SENTRY-1665](https://issues.apache.org/jira/browse/SENTRY-1665) | cross-site scripting vulnerability in ConfServlet |  Major | Sentry | Alexander Kolbasov | Brian Towles |
| [SENTRY-418](https://issues.apache.org/jira/browse/SENTRY-418) | org.mortbay.log package accidentally picked up in a few test classes |  Minor | . | Tuong Truong | Colm O hEigeartaigh |
| [SENTRY-1845](https://issues.apache.org/jira/browse/SENTRY-1845) | LOAD + OVERWRITE not supported in Hive v2. plugin |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1844](https://issues.apache.org/jira/browse/SENTRY-1844) | When setting web authentication type to none, sentry fails to start |  Major | Sentry | Donghui Xu | Donghui Xu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1108](https://issues.apache.org/jira/browse/SENTRY-1108) | Improve surefire execution to run tests concurrently |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-583](https://issues.apache.org/jira/browse/SENTRY-583) | Add boundary condition test coverage to HDFS synchronization test suite around max #of groups |  Major | . | Lenni Kuff | Anne Yu |
| [SENTRY-1266](https://issues.apache.org/jira/browse/SENTRY-1266) | Add ConfigTool tests to skipSlowAndNotThreadSafeTests blacklist |  Major | Test | Gregory Chanan | Gregory Chanan |
| [SENTRY-858](https://issues.apache.org/jira/browse/SENTRY-858) | Add a test case for - Database prefix is not honoured when executing grant statement |  Minor | Hive Plugin, Sentry | Subroto Sanyal | Rahul Sharma |
| [SENTRY-1299](https://issues.apache.org/jira/browse/SENTRY-1299) | Add a test case to verify SentryStore#verifySentryStoreSchema works |  Major | . | Sravya Tirukkovalur | Colin Ma |
| [SENTRY-1134](https://issues.apache.org/jira/browse/SENTRY-1134) | Add user defined udf test case |  Major | Sentry | Anne Yu | Ke Jia |
| [SENTRY-1391](https://issues.apache.org/jira/browse/SENTRY-1391) | Add more test cases for perm and temp UDF |  Major | UDF | Hao Hao | Hao Hao |
| [SENTRY-1390](https://issues.apache.org/jira/browse/SENTRY-1390) | Add test cases to ensure usability of URI privileges for HMS binding |  Major | URI | Hao Hao | Hao Hao |
| [SENTRY-1402](https://issues.apache.org/jira/browse/SENTRY-1402) | Add TestGrantUserToRole to V2 |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1503](https://issues.apache.org/jira/browse/SENTRY-1503) | Remove all sequence ID checks from TestSentryStore |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1497](https://issues.apache.org/jira/browse/SENTRY-1497) | create a sentry scale test tool to add various objects and privileges into Sentry and HMS |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1489](https://issues.apache.org/jira/browse/SENTRY-1489) | Categorize e2e tests into slow and regular tests, so that can adapt the timeout and etc. |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1809](https://issues.apache.org/jira/browse/SENTRY-1809) | Use Apache Curator in the Kafka tests |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1004](https://issues.apache.org/jira/browse/SENTRY-1004) | Create CommonPrivilege for external component |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1090](https://issues.apache.org/jira/browse/SENTRY-1090) | Improvement for CommonPrivilege |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1042](https://issues.apache.org/jira/browse/SENTRY-1042) | Create CommonPolicy for external component |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1092](https://issues.apache.org/jira/browse/SENTRY-1092) | Move Class KeyValue and PolicyConstants to sentry-core-common |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1091](https://issues.apache.org/jira/browse/SENTRY-1091) | Create Model for specific components |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1089](https://issues.apache.org/jira/browse/SENTRY-1089) | Move validator from sentry-policy-xxx to sentry-core-model-xxx |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1104](https://issues.apache.org/jira/browse/SENTRY-1104) | Add method in Privilege model to create privilege validators |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1093](https://issues.apache.org/jira/browse/SENTRY-1093) | Refactor the constructor of PolicyEngine |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1123](https://issues.apache.org/jira/browse/SENTRY-1123) | Add test cases for Hive, Solr, Index, Sqoop with the CommonPrivilege |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1127](https://issues.apache.org/jira/browse/SENTRY-1127) | Move test cases from sentry-policy-xxx to sentry-binding-xxx |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1074](https://issues.apache.org/jira/browse/SENTRY-1074) | Refactor ResourceAuthorizationProvider with CommonPrivilege and CommonPolicy |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1103](https://issues.apache.org/jira/browse/SENTRY-1103) | Authorizable names' case sensitivity must be decided by plugins |  Major | . | Ashish Singh | Colin Ma |
| [SENTRY-1158](https://issues.apache.org/jira/browse/SENTRY-1158) | Remove unnecessary sentry-policy-xxx |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1166](https://issues.apache.org/jira/browse/SENTRY-1166) | Update default value for sentry.hive.server in Sentry wiki |  Major | . | Li Li | Li Li |
| [SENTRY-1160](https://issues.apache.org/jira/browse/SENTRY-1160) | Enable dist for kafka-binding |  Major | kafka-integration | Dapeng Sun | Dapeng Sun |
| [SENTRY-1176](https://issues.apache.org/jira/browse/SENTRY-1176) | Update thrift API for export with specific auth object |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1177](https://issues.apache.org/jira/browse/SENTRY-1177) | Update SentryStore for export with specific auth object |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1178](https://issues.apache.org/jira/browse/SENTRY-1178) | Update Sentry Policy Service for export with specific auth object |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-727](https://issues.apache.org/jira/browse/SENTRY-727) | Update jdo model for grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-726](https://issues.apache.org/jira/browse/SENTRY-726) | Update thrift API for grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-728](https://issues.apache.org/jira/browse/SENTRY-728) | Update audit log for grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-729](https://issues.apache.org/jira/browse/SENTRY-729) | Update binding-hive for grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-730](https://issues.apache.org/jira/browse/SENTRY-730) | Update policy engine for grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-731](https://issues.apache.org/jira/browse/SENTRY-731) | Update provider-backend for grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-734](https://issues.apache.org/jira/browse/SENTRY-734) | Update SentryPolicyStoreProcessor for grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-735](https://issues.apache.org/jira/browse/SENTRY-735) | Update AuthorizationProvider and e2e test for grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-733](https://issues.apache.org/jira/browse/SENTRY-733) | Update notification handler for grant user to role |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1179](https://issues.apache.org/jira/browse/SENTRY-1179) | Update Sentry config tool for export with specific auth object |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1203](https://issues.apache.org/jira/browse/SENTRY-1203) | Rebase the code |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1153](https://issues.apache.org/jira/browse/SENTRY-1153) | Ensure AccessURI work with S3 |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1175](https://issues.apache.org/jira/browse/SENTRY-1175) | Improve usability of URI privileges when granting URIs |  Major | URI | Hao Hao | Hao Hao |
| [SENTRY-1199](https://issues.apache.org/jira/browse/SENTRY-1199) | Update wiki page for export with specific auth object |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1214](https://issues.apache.org/jira/browse/SENTRY-1214) | Make Kafka resources/ Kafka Model case sensitive |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1070](https://issues.apache.org/jira/browse/SENTRY-1070) | Rename kafka.superusers -\> super.users based on kafka docs |  Major | . | Ashish Singh | Ashish Singh |
| [SENTRY-1221](https://issues.apache.org/jira/browse/SENTRY-1221) | Improve the SentryStore and thrift api for import/export with user scope |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1225](https://issues.apache.org/jira/browse/SENTRY-1225) | Improve SentryPolicyServiceClientDefaultImpl to support user section with import/export |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1222](https://issues.apache.org/jira/browse/SENTRY-1222) | Improve SentryIniPolicyFileFormatter to support user section in .ini file |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1208](https://issues.apache.org/jira/browse/SENTRY-1208) | Make HOST implied in privileges if not specified explicitly. |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1115](https://issues.apache.org/jira/browse/SENTRY-1115) | Add caching to avoid huge performance hit |  Major | . | Ashish Singh | Ashish Singh |
| [SENTRY-1086](https://issues.apache.org/jira/browse/SENTRY-1086) | Add permission check and test case for alter db set owner |  Minor | . | Sravya Tirukkovalur | Ke Jia |
| [SENTRY-1026](https://issues.apache.org/jira/browse/SENTRY-1026) | Fix PMD tag for unused field. |  Major | . | Dapeng Sun | Ke Jia |
| [SENTRY-1278](https://issues.apache.org/jira/browse/SENTRY-1278) | DB2 upgrade SQL script for implement grant user to role |  Major | Hive Plugin | Ke Jia | Ke Jia |
| [SENTRY-1263](https://issues.apache.org/jira/browse/SENTRY-1263) | Postgres upgrade SQL script for implement grant user to role |  Major | Hive Plugin | Ke Jia | Ke Jia |
| [SENTRY-1262](https://issues.apache.org/jira/browse/SENTRY-1262) | Oracle upgrade SQL script for implement grant user to role |  Major | Hive Plugin | Ke Jia | Ke Jia |
| [SENTRY-1261](https://issues.apache.org/jira/browse/SENTRY-1261) | Derby upgrade SQL script for implement grant user to role |  Major | Hive Plugin | Ke Jia | Ke Jia |
| [SENTRY-1258](https://issues.apache.org/jira/browse/SENTRY-1258) | Mysql upgrade SQL script for implement grant user to role |  Major | Hive Plugin | Dapeng Sun | Ke Jia |
| [SENTRY-1289](https://issues.apache.org/jira/browse/SENTRY-1289) | Move exception to sentry-core-common module |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1292](https://issues.apache.org/jira/browse/SENTRY-1292) | Reorder DBModelAction EnumSet |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1293](https://issues.apache.org/jira/browse/SENTRY-1293) | Avoid converting string permission to Privilege object |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1272](https://issues.apache.org/jira/browse/SENTRY-1272) | Enable ALTERVIEW\_RENAME and ALTERVIEW\_AS  operation in hive binding |  Major | Hive Binding | Ke Jia | Ke Jia |
| [SENTRY-1283](https://issues.apache.org/jira/browse/SENTRY-1283) | Enable alter table operation without outputs in hive binding |  Major | Hive Binding | Ke Jia | Ke Jia |
| [SENTRY-1304](https://issues.apache.org/jira/browse/SENTRY-1304) | Enable CREATEMACRO and DROPMACRO  operations in hive binding |  Major | . | Ke Jia | Ke Jia |
| [SENTRY-1319](https://issues.apache.org/jira/browse/SENTRY-1319) | Add metrics for isActive and isHA |  Major | Hdfs Plugin | Colin P. McCabe | Rahul Sharma |
| [SENTRY-1286](https://issues.apache.org/jira/browse/SENTRY-1286) | Create sentry-service-common module |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1337](https://issues.apache.org/jira/browse/SENTRY-1337) | Move GroupMappingService from sentry-provider-common to sentry-core-common |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1344](https://issues.apache.org/jira/browse/SENTRY-1344) | Move AuthorizationComponent from sentry-provider-common to sentry-core-common |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1348](https://issues.apache.org/jira/browse/SENTRY-1348) | Move HA related class from sentry-provider-db to sentry-service-common |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1287](https://issues.apache.org/jira/browse/SENTRY-1287) | Create sentry-service-server module |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1288](https://issues.apache.org/jira/browse/SENTRY-1288) | Create sentry-service-client module |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1369](https://issues.apache.org/jira/browse/SENTRY-1369) | Fix compile error for sentry-binding-hive-v2 |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1363](https://issues.apache.org/jira/browse/SENTRY-1363) | Clean all pom.xml |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-1360](https://issues.apache.org/jira/browse/SENTRY-1360) | Refactor grantPrivilege of Sentry Client |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-1361](https://issues.apache.org/jira/browse/SENTRY-1361) | Refactor revokePrivilege of Sentry Client |  Major | . | Dapeng Sun | Ke Jia |
| [SENTRY-1349](https://issues.apache.org/jira/browse/SENTRY-1349) | Add permission check and test case for alter db set owner in V2 |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1394](https://issues.apache.org/jira/browse/SENTRY-1394) | Fix compile error for sentry-test-hive-v2 |  Major | Hive V2 | Colin Ma | Colin Ma |
| [SENTRY-1351](https://issues.apache.org/jira/browse/SENTRY-1351) | Enable alter table operation without outputs  in V2 |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1352](https://issues.apache.org/jira/browse/SENTRY-1352) | Enable CREATEMACRO and DROPMACRO operations in V2 |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1358](https://issues.apache.org/jira/browse/SENTRY-1358) | Implement Grant role\_name To User user\_name in V2 |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1327](https://issues.apache.org/jira/browse/SENTRY-1327) | Enable "show grant role roleName on all" command |  Major | . | Ke Jia | Ke Jia |
| [SENTRY-1291](https://issues.apache.org/jira/browse/SENTRY-1291) | SimpleCacheProviderBackend.getPrivileges should return the permission based on authorizationhierarchy |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1359](https://issues.apache.org/jira/browse/SENTRY-1359) | Implement SHOW ROLE GRANT USER user\_name in V2 |  Major | Hive V2 | Ke Jia | Ke Jia |
| [SENTRY-1024](https://issues.apache.org/jira/browse/SENTRY-1024) | Document for Sentry Kafka integration |  Major | . | Dapeng Sun | Ashish Singh |
| [SENTRY-1454](https://issues.apache.org/jira/browse/SENTRY-1454) | Fix intermittent time out issue for TestHDFSIntegration |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1377](https://issues.apache.org/jira/browse/SENTRY-1377) | improve handling of failures, both in tests and after-test cleanup, in TestHDFSIntegration.java |  Major | Sentry | Vadim Spector | Vadim Spector |
| [SENTRY-1652](https://issues.apache.org/jira/browse/SENTRY-1652) | Port SENTRY-1464 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1655](https://issues.apache.org/jira/browse/SENTRY-1655) | Port SENTRY-1471 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1656](https://issues.apache.org/jira/browse/SENTRY-1656) | Port Sentry-1459 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1857](https://issues.apache.org/jira/browse/SENTRY-1857) | Create new branch (branch-1.8) based on master |  Major | Sentry | Sergio Peña | Alexander Kolbasov |
| [SENTRY-1858](https://issues.apache.org/jira/browse/SENTRY-1858) | Rename version from 1.8.0-SNAPSHOT -\> 1.8.0 |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1860](https://issues.apache.org/jira/browse/SENTRY-1860) | Update CHANGELOG on master to reflect 1.8.0 changes |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1861](https://issues.apache.org/jira/browse/SENTRY-1861) | Create tag release-1.8.0 |  Major | Sentry | Sergio Peña | kalyan kumar kalvagadda |
| [SENTRY-1870](https://issues.apache.org/jira/browse/SENTRY-1870) | Update 1.8.0 NOTICE.txt file to reflect 2017 copyright |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1862](https://issues.apache.org/jira/browse/SENTRY-1862) | Create 1.8.0 artifacts. sign and upload to sentry package repo |  Major | Sentry | Sergio Peña | Colm O hEigeartaigh |
| [SENTRY-1863](https://issues.apache.org/jira/browse/SENTRY-1863) | Update Sentry website to reflect 1.8.0 release |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1865](https://issues.apache.org/jira/browse/SENTRY-1865) | Update 'How to release' page with 1.8.0 experience |  Major | Sentry | Sergio Peña | Sergio Peña |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1131](https://issues.apache.org/jira/browse/SENTRY-1131) | Add document for Generate audit trail for Sentry generic model in wiki |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-950](https://issues.apache.org/jira/browse/SENTRY-950) | add column level test cases for select ... group by, order by and where |  Major | . | Anne Yu | Ke Jia |
| [SENTRY-1456](https://issues.apache.org/jira/browse/SENTRY-1456) | SENTRY-1454 follow up: Commit message and rat check failure |  Blocker | . | Sravya Tirukkovalur | Anne Yu |
| [SENTRY-1520](https://issues.apache.org/jira/browse/SENTRY-1520) | Provide mechanism for triggering HMS full snapshot |  Major | . | Sravya Tirukkovalur | Vadim Spector |
| [SENTRY-1171](https://issues.apache.org/jira/browse/SENTRY-1171) | Please delete old releases from mirroring system |  Major | . | Sebb | Colm O hEigeartaigh |
| [SENTRY-1829](https://issues.apache.org/jira/browse/SENTRY-1829) | Release Sentry 1.8.0 |  Critical | Sentry | Sergio Peña | Sergio Peña |


