
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

## Release 2.0.0 - 2017-12-07



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1477](https://issues.apache.org/jira/browse/SENTRY-1477) | Sentry clients should retry with another server when they get connection errors |  Major | Core | Alexander Kolbasov | Li Li |
| [SENTRY-1606](https://issues.apache.org/jira/browse/SENTRY-1606) | Sentry HDFS Sync should survive in presence of  bad paths objects |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1721](https://issues.apache.org/jira/browse/SENTRY-1721) | Unit test failures in TestSentryStore due to changeId miscount |  Major | Sentry | Na Li | Na Li |
| [SENTRY-1895](https://issues.apache.org/jira/browse/SENTRY-1895) | Sentry should handle the case of multiple notifications with the same ID |  Major | Sentry | Alexander Kolbasov | Sergio Peña |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1881](https://issues.apache.org/jira/browse/SENTRY-1881) | PrivilegeOperatePersistence throws wrong type of exceptions |  Major | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1853](https://issues.apache.org/jira/browse/SENTRY-1853) | Add the log level access mechanism |  Major | . | Donghui Xu | Donghui Xu |
| [SENTRY-2027](https://issues.apache.org/jira/browse/SENTRY-2027) | Create mechanism of delivering commands via WebUI |  Major | . | Vadim Spector | Vadim Spector |
| [SENTRY-1475](https://issues.apache.org/jira/browse/SENTRY-1475) | Integrate Sentry with Solr 7 authorization framework |  Major | Sentry, Solr Plugin | Hrishikesh Gadre | Hrishikesh Gadre |
| [SENTRY-1446](https://issues.apache.org/jira/browse/SENTRY-1446) | Upgrade httpmime (Sentry) to 4.3.6 or greater. |  Major | Sentry | Anne Yu |  |
| [SENTRY-872](https://issues.apache.org/jira/browse/SENTRY-872) | Uber jira for HMS HA + Sentry HA redesign |  Critical | Hdfs Plugin | Sravya Tirukkovalur | Alexander Kolbasov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1404](https://issues.apache.org/jira/browse/SENTRY-1404) | Use the new INodeAttributesProvider API in sentry-hdfs |  Major | Hdfs Plugin | Colin P. McCabe | Hao Hao |
| [SENTRY-1120](https://issues.apache.org/jira/browse/SENTRY-1120) | Show role / privileges info in Sentry Service Webpage |  Major | . | Li Li | Li Li |
| [SENTRY-1501](https://issues.apache.org/jira/browse/SENTRY-1501) | SentryStore shouldn't synchronize openTransaction() and commitUpdateTransaction() |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1533](https://issues.apache.org/jira/browse/SENTRY-1533) | Sentry console metrics reporting interval should be configurable |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1518](https://issues.apache.org/jira/browse/SENTRY-1518) | Add metrics for SentryStore transactions |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1517](https://issues.apache.org/jira/browse/SENTRY-1517) | SentryStore should actually use function getMSentryRole to get roles |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1525](https://issues.apache.org/jira/browse/SENTRY-1525) | Provide script to run Sentry directly from the repo |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1557](https://issues.apache.org/jira/browse/SENTRY-1557) | getRolesForGroups() does too many trips to the the DB |  Minor | Sentry | Alexander Kolbasov | Vamsee Yarlagadda |
| [SENTRY-1582](https://issues.apache.org/jira/browse/SENTRY-1582) | Comments to clarify the intent of string manipulation methods in SentryStore.java |  Major | Sentry | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1581](https://issues.apache.org/jira/browse/SENTRY-1581) | Provide Log4J metrics reporter |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1577](https://issues.apache.org/jira/browse/SENTRY-1577) | Support "create function using jar" for hive when Sentry is enabled |  Major | Hive Binding | Aihua Xu | Aihua Xu |
| [SENTRY-1594](https://issues.apache.org/jira/browse/SENTRY-1594) | TransactionBlock should become generic |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1507](https://issues.apache.org/jira/browse/SENTRY-1507) | Sentry should use Datanucleus version of javax.jdo |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1599](https://issues.apache.org/jira/browse/SENTRY-1599) | CloseablePersistenceManager is no longer needed |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1615](https://issues.apache.org/jira/browse/SENTRY-1615) | SentryStore should not allocate empty objects that are immediately returned |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1604](https://issues.apache.org/jira/browse/SENTRY-1604) | Sentry JSON message factory: Need more information in alter partition event |  Major | Sentry | Nachiket Vaidya | Nachiket Vaidya |
| [SENTRY-1633](https://issues.apache.org/jira/browse/SENTRY-1633) | Disable mvn failIfNotTest flag |  Trivial | Test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [SENTRY-1636](https://issues.apache.org/jira/browse/SENTRY-1636) | Remove thrift dependency on fb303 |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1625](https://issues.apache.org/jira/browse/SENTRY-1625) | PrivilegeOperatePersistence can use QueryParamBuilder |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1642](https://issues.apache.org/jira/browse/SENTRY-1642) | Integrate Sentry build with Error Prone |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1556](https://issues.apache.org/jira/browse/SENTRY-1556) | Simplify privilege cleaning |  Minor | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1710](https://issues.apache.org/jira/browse/SENTRY-1710) | Reduce datanucleus key cache size for MSentryPermChange and MSentryPathChange tables to avoid holes in change IDs |  Major | Sentry | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [SENTRY-1691](https://issues.apache.org/jira/browse/SENTRY-1691) | TransactionManager should use try-with-resource for timers |  Minor | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1742](https://issues.apache.org/jira/browse/SENTRY-1742) | Upgrade to Maven surefire plugin v2.2 |  Major | Sentry | Alexander Kolbasov | Jan Hentschel |
| [SENTRY-1730](https://issues.apache.org/jira/browse/SENTRY-1730) | Remove FileInputStream/FileOutputStream |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1744](https://issues.apache.org/jira/browse/SENTRY-1744) | Simplify creation of DelegateSentryStore |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1811](https://issues.apache.org/jira/browse/SENTRY-1811) | Optimize data structures used in HDFS sync |  Major | . | Misha Dmitriev | Misha Dmitriev |
| [SENTRY-1823](https://issues.apache.org/jira/browse/SENTRY-1823) | Fix the sentryShell script to support other types |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1827](https://issues.apache.org/jira/browse/SENTRY-1827) | Minimize TPathsDump thrift message used in HDFS sync |  Major | . | Misha Dmitriev | Misha Dmitriev |
| [SENTRY-1873](https://issues.apache.org/jira/browse/SENTRY-1873) | Upgrade PMD plugin and fix related issues |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1820](https://issues.apache.org/jira/browse/SENTRY-1820) | Add JSON file reporter for Sentry metrics |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1816](https://issues.apache.org/jira/browse/SENTRY-1816) | Sentry client classes should be AutoCloseable |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1892](https://issues.apache.org/jira/browse/SENTRY-1892) | Reduce memory consumption of HMSPath$Entry and TPathEntry |  Major | Hdfs Plugin | Misha Dmitriev | Misha Dmitriev |
| [SENTRY-1822](https://issues.apache.org/jira/browse/SENTRY-1822) | Allow multiple Sentry reporters. |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1905](https://issues.apache.org/jira/browse/SENTRY-1905) | How to contribute to documentation |  Minor | Docs | Coral | Coral |
| [SENTRY-1903](https://issues.apache.org/jira/browse/SENTRY-1903) | TransactionManager shows retried transactions starting from 0 |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1907](https://issues.apache.org/jira/browse/SENTRY-1907) | Potential memory optimization when handling big full snapshots. |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1906](https://issues.apache.org/jira/browse/SENTRY-1906) | Sentry clients to retry connections to server with delay to avoid failing fast |  Minor | . | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-967](https://issues.apache.org/jira/browse/SENTRY-967) | Use the Maven Dependency Plugin to download artifacts for the Sqoop tests |  Trivial | Test | Colm O hEigeartaigh | Brian Towles |
| [SENTRY-1909](https://issues.apache.org/jira/browse/SENTRY-1909) | Improvements for memory usage when full path snapshot is sent from Sentry to NN |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1932](https://issues.apache.org/jira/browse/SENTRY-1932) | Improve logging for HMSPath |  Major | Sentry | Alexander Kolbasov | Arjun Mishra |
| [SENTRY-1921](https://issues.apache.org/jira/browse/SENTRY-1921) | Make SentryServiceFactory.create static and all calling instances use the static call |  Minor | Service | Brian Towles | Jan Hentschel |
| [SENTRY-1938](https://issues.apache.org/jira/browse/SENTRY-1938) | Sentry logs to provide more relevant information |  Minor | . | Vamsee Yarlagadda | Arjun Mishra |
| [SENTRY-1937](https://issues.apache.org/jira/browse/SENTRY-1937) | Optimize performance for listing sentry roles by group name |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1943](https://issues.apache.org/jira/browse/SENTRY-1943) | Update Guava to 14.0 |  Major | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1958](https://issues.apache.org/jira/browse/SENTRY-1958) | Bump to Hive version 2.0 |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1968](https://issues.apache.org/jira/browse/SENTRY-1968) | Remove sentry-binding-hive-hmsfollower-v2 module after Hive 2.0 version bump |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1962](https://issues.apache.org/jira/browse/SENTRY-1962) | Merge hive 2.0 authz1/authz2 profile dependencies |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1966](https://issues.apache.org/jira/browse/SENTRY-1966) | Improve logging of HMS sync data (paths and permissions) flowing from Sentry to NameNode |  Major | . | Vadim Spector | Vadim Spector |
| [SENTRY-1963](https://issues.apache.org/jira/browse/SENTRY-1963) | Sentry JSON reporter should use regular implementation for local file system |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1210](https://issues.apache.org/jira/browse/SENTRY-1210) | Refactor the SentryShellSolr and SentryShellKafka |  Major | . | Colin Ma | Colm O hEigeartaigh |
| [SENTRY-1973](https://issues.apache.org/jira/browse/SENTRY-1973) | Use KafkaPrivilegeModel to retrieve Kafka validators |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1974](https://issues.apache.org/jira/browse/SENTRY-1974) | Consolidate the Solr + Kafka PrivilegeValidators into a single GenericPrivilegeValidator |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1981](https://issues.apache.org/jira/browse/SENTRY-1981) | Bump codehale metrics version to latest 3.0.2 version |  Minor | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1988](https://issues.apache.org/jira/browse/SENTRY-1988) | Bump slf4j version from 1.6.0 to 1.7.25 (latest version) |  Minor | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1975](https://issues.apache.org/jira/browse/SENTRY-1975) | Add sqoop support to SentryShellGeneric |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1979](https://issues.apache.org/jira/browse/SENTRY-1979) | Consolidate code for converting Hive privilege objects to Strings |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1996](https://issues.apache.org/jira/browse/SENTRY-1996) | Rename Sqoop SentryAuthorizationHander |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1453](https://issues.apache.org/jira/browse/SENTRY-1453) | Enable passing sentry client cache configs from kafka conf |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-2009](https://issues.apache.org/jira/browse/SENTRY-2009) | Upgrade Surefire plugin |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1989](https://issues.apache.org/jira/browse/SENTRY-1989) | Bump Kafka version from 0.9 to 0.11 |  Major | Sentry | Sergio Peña | kalyan kumar kalvagadda |
| [SENTRY-2015](https://issues.apache.org/jira/browse/SENTRY-2015) | Refactor Command implementations |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-2013](https://issues.apache.org/jira/browse/SENTRY-2013) | Align the SentryGenericServiceClient and SentryPolicyServiceClient a bit more closely |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1992](https://issues.apache.org/jira/browse/SENTRY-1992) | Improve parameter handling for SentryGenericProviderBackend |  Major | . | Mano Kovacs | Mano Kovacs |
| [SENTRY-2031](https://issues.apache.org/jira/browse/SENTRY-2031) | Add trigger mechanism for Sentry to pull full path snapshot from HMS |  Major | . | Vadim Spector | Vadim Spector |
| [SENTRY-1639](https://issues.apache.org/jira/browse/SENTRY-1639) | Refactor thrift clients configuration constants |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2038](https://issues.apache.org/jira/browse/SENTRY-2038) | Some ShellCommand improvements |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-2048](https://issues.apache.org/jira/browse/SENTRY-2048) | Bump Hive version to 2.3.2 |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2042](https://issues.apache.org/jira/browse/SENTRY-2042) | Support file based Sentry provider for Solr plugin |  Major | . | Hrishikesh Gadre | Hrishikesh Gadre |
| [SENTRY-1812](https://issues.apache.org/jira/browse/SENTRY-1812) | Provide interactive Sentry CLI |  Major | Sentry | Alexander Kolbasov | Colm O hEigeartaigh |
| [SENTRY-2062](https://issues.apache.org/jira/browse/SENTRY-2062) | Support the new Hive 2.3.2 DbNotificationListener |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2076](https://issues.apache.org/jira/browse/SENTRY-2076) | Some test artifacts are not defined at test scope |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1896](https://issues.apache.org/jira/browse/SENTRY-1896) | Optimize retrieving entities by other entity types |  Major | Sentry | Arjun Mishra | Arjun Mishra |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1336](https://issues.apache.org/jira/browse/SENTRY-1336) | Fix PMD violation in testSentryServiceGauges |  Major | Sentry | Anne Yu | Rahul Sharma |
| [SENTRY-1378](https://issues.apache.org/jira/browse/SENTRY-1378) | Login fails for a secure Sentry Web UI |  Major | . | Rahul Sharma | Rahul Sharma |
| [SENTRY-1331](https://issues.apache.org/jira/browse/SENTRY-1331) | Add a kerberos end to end test case to access isActive and isHa metrics. |  Major | Hdfs Plugin | Rahul Sharma | Rahul Sharma |
| [SENTRY-1498](https://issues.apache.org/jira/browse/SENTRY-1498) | Move SentryAdminServlet from sentry-service to sentry-provider |  Critical | Sentry | Li Li | Li Li |
| [SENTRY-1313](https://issues.apache.org/jira/browse/SENTRY-1313) | Database prefix is not honoured when executing grant statement |  Critical | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1270](https://issues.apache.org/jira/browse/SENTRY-1270) | Improve error handling - Database with malformed URI causes NPE in HMS plugin during DDL |  Major | . | Lenni Kuff | Sravya Tirukkovalur |
| [SENTRY-1260](https://issues.apache.org/jira/browse/SENTRY-1260) | Improve error handling - ArrayIndexOutOfBoundsException in PathsUpdate.parsePath can cause MetastoreCacheInitializer intialization to fail |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1491](https://issues.apache.org/jira/browse/SENTRY-1491) | Sentry transactions are not rolled back immediately when commit fails |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1524](https://issues.apache.org/jira/browse/SENTRY-1524) | sentry-dist is missing dependency on sentry-hdfs-dist |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1476](https://issues.apache.org/jira/browse/SENTRY-1476) | SentryStore is subject to JDQL injection |  Major | Core | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1526](https://issues.apache.org/jira/browse/SENTRY-1526) | Sentry processed stays alive after being killed |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1586](https://issues.apache.org/jira/browse/SENTRY-1586) | [unit test] Race condition between metastore server/client could cause connection refused errors |  Major | Test | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1534](https://issues.apache.org/jira/browse/SENTRY-1534) | Oracle supports serializable instead of repeatable-read |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1515](https://issues.apache.org/jira/browse/SENTRY-1515) | Cleanup exception handling in SentryStore |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1532](https://issues.apache.org/jira/browse/SENTRY-1532) | Sentry Web UI isn't working |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1602](https://issues.apache.org/jira/browse/SENTRY-1602) | Code cleanup for Sentry JSON message factory for hive notifications |  Major | Sentry | Nachiket Vaidya | Nachiket Vaidya |
| [SENTRY-1624](https://issues.apache.org/jira/browse/SENTRY-1624) | DefaultSentryValidator doesn't correctly construct SentryOnFailureHookContextImpl |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1609](https://issues.apache.org/jira/browse/SENTRY-1609) | DelegateSentryStore is subject to JDQL injection |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1546](https://issues.apache.org/jira/browse/SENTRY-1546) | Generic Policy provides bad error messages for Sentry exceptions |  Minor | . | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1663](https://issues.apache.org/jira/browse/SENTRY-1663) | UpdateableAuthzPermissions has mutable static fields |  Minor | Sentry | Alexander Kolbasov | Jan Hentschel |
| [SENTRY-1658](https://issues.apache.org/jira/browse/SENTRY-1658) | Null pointer dereference in SentryShellHive |  Minor | Sentry | Alexander Kolbasov | Jan Hentschel |
| [SENTRY-1692](https://issues.apache.org/jira/browse/SENTRY-1692) | ZK namespace configuration doesn't work |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1644](https://issues.apache.org/jira/browse/SENTRY-1644) | Partition ACLs disappear after renaming Hive table with partitions |  Major | Hdfs Plugin | Hao Hao | Lei (Eddy) Xu |
| [SENTRY-1548](https://issues.apache.org/jira/browse/SENTRY-1548) | Setting GrantOption to UNSET upsets Sentry |  Minor | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1661](https://issues.apache.org/jira/browse/SENTRY-1661) | SentryStore has a couple of public static fields that are not final |  Minor | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1727](https://issues.apache.org/jira/browse/SENTRY-1727) | HMSPathsDumper.cloneToEntry should set authzObjToEntries properly |  Major | . | Hao Hao | Lei (Eddy) Xu |
| [SENTRY-1699](https://issues.apache.org/jira/browse/SENTRY-1699) | MetastoreCacheInitializer shouldn't use Preconditions for HMS data |  Major | Sentry | Alexander Kolbasov |  |
| [SENTRY-1749](https://issues.apache.org/jira/browse/SENTRY-1749) | HMSFollower uses incorrect keytab for HMS connection |  Critical | Sentry | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1759](https://issues.apache.org/jira/browse/SENTRY-1759) | UpdatableCache leaks connections |  Critical | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1745](https://issues.apache.org/jira/browse/SENTRY-1745) | Bundle sentry-core-common into sentry-hdfs-dist to avoid NN failing with NoClassDefFoundError |  Major | . | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1646](https://issues.apache.org/jira/browse/SENTRY-1646) | Unable to truncate table \<database\>.\<tablename\>; from "default" databases |  Critical | Hive Plugin | Eric Lin | Yongzhi Chen |
| [SENTRY-1785](https://issues.apache.org/jira/browse/SENTRY-1785) | Fix TestKrbConnectionTimeout test |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1783](https://issues.apache.org/jira/browse/SENTRY-1783) | alterSentryRoleGrantPrivilegeCore does more persistence work than required |  Major | sentrystore | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1788](https://issues.apache.org/jira/browse/SENTRY-1788) | Sentry Store may use JDO object after the associated data is removed in DB |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1739](https://issues.apache.org/jira/browse/SENTRY-1739) | Sentry Kafka tests do not stop periodic update after the test end |  Major | kafka-integration, Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1801](https://issues.apache.org/jira/browse/SENTRY-1801) | Sentry Namenode Plugin should handle unknown permissions |  Major | Sentry | kalyan kumar kalvagadda | Alexander Kolbasov |
| [SENTRY-1681](https://issues.apache.org/jira/browse/SENTRY-1681) | SentryHdfsServiceException is an unchecked exception |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1665](https://issues.apache.org/jira/browse/SENTRY-1665) | cross-site scripting vulnerability in ConfServlet |  Major | Sentry | Alexander Kolbasov | Brian Towles |
| [SENTRY-1850](https://issues.apache.org/jira/browse/SENTRY-1850) | Duplicate dependency in the sentry-binding-hive pom |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1852](https://issues.apache.org/jira/browse/SENTRY-1852) | Refactor HMSFollower without renaming file |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1868](https://issues.apache.org/jira/browse/SENTRY-1868) | SentryStore should set loadResultsAtCommit to false when query result isn't needed |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1874](https://issues.apache.org/jira/browse/SENTRY-1874) | Do not require quiet HMS when taking initial HMS snapshot |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1889](https://issues.apache.org/jira/browse/SENTRY-1889) | HMSFollower should log better detailed error message if it cannot connect to HMS |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1890](https://issues.apache.org/jira/browse/SENTRY-1890) | HMSFollower keep getting full snapshot when HDFS is disabled |  Critical | Sentry | Na Li | Na Li |
| [SENTRY-1897](https://issues.apache.org/jira/browse/SENTRY-1897) | Rename sentry property to provide the list of sentry servers |  Major | . | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1898](https://issues.apache.org/jira/browse/SENTRY-1898) | Sentry no longer supports creating more than ~15 partitions at once |  Blocker | Sentry | Na Li | Na Li |
| [SENTRY-1888](https://issues.apache.org/jira/browse/SENTRY-1888) | Sentry might not fetch all HMS duplicated events IDs when requested |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1886](https://issues.apache.org/jira/browse/SENTRY-1886) | Add 1.8.0 -\> 2.0.0 upgrade SQL scripts |  Blocker | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1913](https://issues.apache.org/jira/browse/SENTRY-1913) | Incorrect constraints on AUTHZ\_PATHS\_MAPPING.AUTHZ\_OBJ\_NAME |  Blocker | . | Alexander Kolbasov | Vamsee Yarlagadda |
| [SENTRY-1916](https://issues.apache.org/jira/browse/SENTRY-1916) | Sentry should not store paths outside of the prefix |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1919](https://issues.apache.org/jira/browse/SENTRY-1919) | Sentry should prevent two snapshots from being sent to HDFS |  Major | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1927](https://issues.apache.org/jira/browse/SENTRY-1927) | PathImageRetriever should minimize size of the serialized message when creating path dumps |  Major | . | Arjun Mishra | Arjun Mishra |
| [SENTRY-1915](https://issues.apache.org/jira/browse/SENTRY-1915) | Sentry is doing a lot of work to convert list of paths to HMSPaths structure |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1928](https://issues.apache.org/jira/browse/SENTRY-1928) | HMSFollower should close HMS connections when an error to HMS occurs |  Critical | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1929](https://issues.apache.org/jira/browse/SENTRY-1929) | When full HMS snapshot is created all higher notifications should be purged |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1931](https://issues.apache.org/jira/browse/SENTRY-1931) | NameNode only gets full snapshot once |  Major | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1918](https://issues.apache.org/jira/browse/SENTRY-1918) | NN snapshot should not be served while HMS snapshot is collected |  Major | Sentry | Alexander Kolbasov | Brian Towles |
| [SENTRY-1939](https://issues.apache.org/jira/browse/SENTRY-1939) | Resetting the CounterWait during full snapshot has to be handled across all sentry servers |  Critical | Sentry | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1933](https://issues.apache.org/jira/browse/SENTRY-1933) | hive-authz2 build fails because SentryJSONAlterPartitionMessage is not compatible |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1934](https://issues.apache.org/jira/browse/SENTRY-1934) | SQL Index name is too long for Oracle 11.2 |  Major | Sentry | Na Li | Na Li |
| [SENTRY-1941](https://issues.apache.org/jira/browse/SENTRY-1941) | Add log4j2.properties file to sentry-hive-tests-v2 |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1940](https://issues.apache.org/jira/browse/SENTRY-1940) | Sentry should time out threads waiting for notifications |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1946](https://issues.apache.org/jira/browse/SENTRY-1946) | getPathsUpdatesFrom() got its boolean logic inversed which results in sending two snapshots at the same time |  Major | . | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1942](https://issues.apache.org/jira/browse/SENTRY-1942) | Bump BoneCP version from 0.7.1 to 0.8.0 |  Major | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1416](https://issues.apache.org/jira/browse/SENTRY-1416) | kafka-sentry tool's service name's default is different from KafkaSentryAuthorizer's default service name |  Major | kafka-integration | Ashish Singh | Ashish Singh |
| [SENTRY-1983](https://issues.apache.org/jira/browse/SENTRY-1983) | Several commit/rollback errors happen in oracle12c-r1 due to current isolation level |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1990](https://issues.apache.org/jira/browse/SENTRY-1990) | Use same hadoop.version to hadoop-aws dependencies |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1984](https://issues.apache.org/jira/browse/SENTRY-1984) | Decrease number of max idle connections for Sentry clients |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1987](https://issues.apache.org/jira/browse/SENTRY-1987) | Remove pom code related to non-existing TestSentryAuthorizationProvider class |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1985](https://issues.apache.org/jira/browse/SENTRY-1985) | Sentry should log in stdout when it is ready to serve requests |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1994](https://issues.apache.org/jira/browse/SENTRY-1994) | Bump Shiro dependency version to 1.4.0 |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1995](https://issues.apache.org/jira/browse/SENTRY-1995) | Bump Derby dependency version to 10.13.1.1 |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1231](https://issues.apache.org/jira/browse/SENTRY-1231) | Sentry doesn't secure index location uri, when do "CREATE INDEX LOCATION ''/uri" |  Blocker | Sentry | Anne Yu | Sergio Peña |
| [SENTRY-1667](https://issues.apache.org/jira/browse/SENTRY-1667) | Switching to Jetty v9 library |  Major | . | Vadim Spector | Sergio Peña |
| [SENTRY-2014](https://issues.apache.org/jira/browse/SENTRY-2014) | Incorrect handling of HDFS paths with multiple slashes |  Major | . | Vadim Spector | Vadim Spector |
| [SENTRY-2020](https://issues.apache.org/jira/browse/SENTRY-2020) | Fix testConsumeCycleWithInsufficientPrivileges test failure in kafka e2e tests. |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1712](https://issues.apache.org/jira/browse/SENTRY-1712) | Add trigger mechanism for Sentry to push full path snapshot to Name Node |  Major | Sentry | Na Li | Vadim Spector |
| [SENTRY-2028](https://issues.apache.org/jira/browse/SENTRY-2028) | Avoid datanucleus to create/update database schema |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1997](https://issues.apache.org/jira/browse/SENTRY-1997) | Bump sqoop dependency version to 1.99.7 |  Major | Sentry | kalyan kumar kalvagadda | Colm O hEigeartaigh |
| [SENTRY-2033](https://issues.apache.org/jira/browse/SENTRY-2033) | Fix TestDbPrivilegeCleanupOnDrop to use SentryMetastorePostEventListenerNotificationLog |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2036](https://issues.apache.org/jira/browse/SENTRY-2036) | sentry\_sync\_notifications() should set ID when it returns errors |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-2035](https://issues.apache.org/jira/browse/SENTRY-2035) | Metrics should move to destination atomically |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-2017](https://issues.apache.org/jira/browse/SENTRY-2017) | Fix Sentry e2e tests to use SentryMetastorePostEventListenerNotificationLog |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2018](https://issues.apache.org/jira/browse/SENTRY-2018) | Remove SentryMetastorePostEventListener and SentryMetastorePostEventListenerBase classes |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2037](https://issues.apache.org/jira/browse/SENTRY-2037) | Remove not needed sentry-binding-hive-v2 dependency from the main pom.xml |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1574](https://issues.apache.org/jira/browse/SENTRY-1574) | SentryMetastorePostEventListener class is not used by anything |  Minor | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-2032](https://issues.apache.org/jira/browse/SENTRY-2032) | Leading Slashes need to removed when creating HMS path entries |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2047](https://issues.apache.org/jira/browse/SENTRY-2047) | isTableEmptyCore method in SentryStore has references to MAuthzPathsMapping when it should be generic |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-1397](https://issues.apache.org/jira/browse/SENTRY-1397) | Add Notification log tests for Hive commands which do not change obj- location |  Major | Hdfs Plugin, Test | Sravya Tirukkovalur | kalyan kumar kalvagadda |
| [SENTRY-1514](https://issues.apache.org/jira/browse/SENTRY-1514) | Massive Solr Unit Test Failures found, disable them for now. |  Major | Sentry, Solr Plugin, Test | Anne Yu | Venkatesh Ramasamy |
| [SENTRY-1509](https://issues.apache.org/jira/browse/SENTRY-1509) | Disable solr unit tests from e2e runs.are becoming flaky |  Major | Sentry, Solr Plugin | Anne Yu | Hrishikesh Gadre |
| [SENTRY-1640](https://issues.apache.org/jira/browse/SENTRY-1640) | Implement HMS Notification barrier on the HMS plugin side |  Critical | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1993](https://issues.apache.org/jira/browse/SENTRY-1993) | StringIndexOutOfBoundsException in HMSPathsDumper.java |  Major | . | Misha Dmitriev | Misha Dmitriev |
| [SENTRY-2046](https://issues.apache.org/jira/browse/SENTRY-2046) | Create a full snapshot if AUTHZ\_PATHS\_SNAPSHOT\_ID is empty, even if HMS and Sentry Notifications are in sync |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2066](https://issues.apache.org/jira/browse/SENTRY-2066) | DB name is not set for AlterTable |  Critical | Sentry | Na Li | Na Li |
| [SENTRY-2021](https://issues.apache.org/jira/browse/SENTRY-2021) | MR session ACLs in Hive binding does not handle all types of ACLs |  Major | Hive Binding | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [SENTRY-2024](https://issues.apache.org/jira/browse/SENTRY-2024) | Drop Index that includes AUTHZ\_OBJ\_NAME |  Critical | Sentry | Na Li | Na Li |
| [SENTRY-2068](https://issues.apache.org/jira/browse/SENTRY-2068) | Disable HTTP TRACE method from the Sentry Web Server |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2072](https://issues.apache.org/jira/browse/SENTRY-2072) | log4j2 dependencies brought by Hive 2 are causing conflicts with Sentry log4j |  Blocker | Sentry | Sergio Peña | kalyan kumar kalvagadda |
| [SENTRY-2073](https://issues.apache.org/jira/browse/SENTRY-2073) | Remove snapshot from version 2.0.0-SNAPSHOT in SentryService.html |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2079](https://issues.apache.org/jira/browse/SENTRY-2079) | Sentry HA leader monitor does not work due to a mix of curator versions in the classpath |  Blocker | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2082](https://issues.apache.org/jira/browse/SENTRY-2082) | Exclude javax.servlet-3.0.0.v201112011016.jar from Sentry dist |  Blocker | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2084](https://issues.apache.org/jira/browse/SENTRY-2084) | Exclude javax.jms:jms from sentry distribution |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2081](https://issues.apache.org/jira/browse/SENTRY-2081) | Automate the generation LICENSE.txt based on distributed jars |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2086](https://issues.apache.org/jira/browse/SENTRY-2086) | Sentry distribution source does not build due to missing modules |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1982](https://issues.apache.org/jira/browse/SENTRY-1982) | Release sentry 2.0.0 upstream |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1134](https://issues.apache.org/jira/browse/SENTRY-1134) | Add user defined udf test case |  Major | Sentry | Anne Yu | Ke Jia |
| [SENTRY-1503](https://issues.apache.org/jira/browse/SENTRY-1503) | Remove all sequence ID checks from TestSentryStore |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1497](https://issues.apache.org/jira/browse/SENTRY-1497) | create a sentry scale test tool to add various objects and privileges into Sentry and HMS |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1489](https://issues.apache.org/jira/browse/SENTRY-1489) | Categorize e2e tests into slow and regular tests, so that can adapt the timeout and etc. |  Major | Sentry | Anne Yu | Anne Yu |
| [SENTRY-1387](https://issues.apache.org/jira/browse/SENTRY-1387) | Add HDFS sync tests for drop partition for external/implicit locations |  Major | . | Sravya Tirukkovalur | Nachiket Vaidya |
| [SENTRY-1809](https://issues.apache.org/jira/browse/SENTRY-1809) | Use Apache Curator in the Kafka tests |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1458](https://issues.apache.org/jira/browse/SENTRY-1458) | Remove unused file from Kafka tests |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-2054](https://issues.apache.org/jira/browse/SENTRY-2054) | Unit tests must create temporary files under the Maven target directory |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2058](https://issues.apache.org/jira/browse/SENTRY-2058) | CLONE - Set hadoop.tmp.dir to the maven build directory configured on java.io.tmpdir |  Major | Sentry | sachin malhotra | Sergio Peña |
| [SENTRY-2057](https://issues.apache.org/jira/browse/SENTRY-2057) | Set hadoop.tmp.dir to the maven build directory configured on java.io.tmpdir |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2052](https://issues.apache.org/jira/browse/SENTRY-2052) | Reduce TestSentryStore time by setting transaction retries to 1 and other refactors |  Minor | Sentry | Sergio Peña | Sergio Peña |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1316](https://issues.apache.org/jira/browse/SENTRY-1316) | Implement Sentry leadership election |  Major | . | Sravya Tirukkovalur | Colin P. McCabe |
| [SENTRY-1325](https://issues.apache.org/jira/browse/SENTRY-1325) | Store HMSPaths in Sentry DB to allow fast failover |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-1324](https://issues.apache.org/jira/browse/SENTRY-1324) | Add sentry specific test cases to use NotificationLog |  Major | Hdfs Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1365](https://issues.apache.org/jira/browse/SENTRY-1365) | Upgrading SQL script for HMSPaths persistence |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1317](https://issues.apache.org/jira/browse/SENTRY-1317) | Implement fencing required for active/standby |  Major | Core | Sravya Tirukkovalur | Colin P. McCabe |
| [SENTRY-1329](https://issues.apache.org/jira/browse/SENTRY-1329) | Adapt SentryMetaStorePostEventListener to write HMS notification logs |  Major | Hdfs Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1398](https://issues.apache.org/jira/browse/SENTRY-1398) | Fix TestLeaderStatus#testRacingClients |  Minor | Core | Colin P. McCabe | Colin P. McCabe |
| [SENTRY-1403](https://issues.apache.org/jira/browse/SENTRY-1403) | Move SentryHDFSServiceClient code from hdfs-common into hdfs-service |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1399](https://issues.apache.org/jira/browse/SENTRY-1399) | Integrate Fencer with SentryStore |  Major | Hdfs Plugin | Colin P. McCabe | Colin P. McCabe |
| [SENTRY-1415](https://issues.apache.org/jira/browse/SENTRY-1415) | [Test hook] Provide a hook to stop the active sentry sevice |  Major | Hdfs Plugin | Sravya Tirukkovalur | Rahul Sharma |
| [SENTRY-1321](https://issues.apache.org/jira/browse/SENTRY-1321) | Implement HMSFollower in Sentry service which reads the NotificationLog entries |  Major | Hdfs Plugin | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-1411](https://issues.apache.org/jira/browse/SENTRY-1411) | The sentry client should retry RPCs if it gets a SentryStandbyException (SentryPolicyServiceClient - pool version) |  Major | Hdfs Plugin | Colin P. McCabe | Hao Hao |
| [SENTRY-1371](https://issues.apache.org/jira/browse/SENTRY-1371) | Rework fetching Hive Paths state |  Major | Service | Colin P. McCabe | Hao Hao |
| [SENTRY-1413](https://issues.apache.org/jira/browse/SENTRY-1413) | Changes to get the Fencer working with Oracle and MySQL |  Major | Hdfs Plugin | Colin P. McCabe | Rahul Sharma |
| [SENTRY-1478](https://issues.apache.org/jira/browse/SENTRY-1478) | Disable fencing in Sentry store for Active/Active |  Major | Core | Hao Hao | Li Li |
| [SENTRY-1463](https://issues.apache.org/jira/browse/SENTRY-1463) | Ensure HMS point-in-time snapshot consistency |  Major | Sentry | Hao Hao | Hao Hao |
| [SENTRY-1510](https://issues.apache.org/jira/browse/SENTRY-1510) | Add option to use non pool model for sentry client |  Major | . | Li Li | Li Li |
| [SENTRY-1422](https://issues.apache.org/jira/browse/SENTRY-1422) | JDO deadlocks while processing grant while a background thread processes Notificationlogs |  Major | Hdfs Plugin | Sravya Tirukkovalur | Colin Ma |
| [SENTRY-1522](https://issues.apache.org/jira/browse/SENTRY-1522) | Port SENTRY-1505 to sentry-ha\_redesign branch |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1553](https://issues.apache.org/jira/browse/SENTRY-1553) | Port SENTRY1517 to sentry-ha-redesign branch |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1554](https://issues.apache.org/jira/browse/SENTRY-1554) | Port SENTRY-1518 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1583](https://issues.apache.org/jira/browse/SENTRY-1583) | Refactor ZK/Curator code |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1499](https://issues.apache.org/jira/browse/SENTRY-1499) | Add feature flag for using NotifcationLog |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1538](https://issues.apache.org/jira/browse/SENTRY-1538) | Create schema for storing HMS path change and Sentry permission change. |  Major | Sentry | Alexander Kolbasov | Hao Hao |
| [SENTRY-1428](https://issues.apache.org/jira/browse/SENTRY-1428) | Only leader should follow HMS updates |  Major | Core | Sravya Tirukkovalur | Alexander Kolbasov |
| [SENTRY-1596](https://issues.apache.org/jira/browse/SENTRY-1596) | Hive tests failing for sentry-ha-redesign branch |  Major | Sentry | Alexander Kolbasov | Hao Hao |
| [SENTRY-1598](https://issues.apache.org/jira/browse/SENTRY-1598) | Port SENTRY-1507 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1607](https://issues.apache.org/jira/browse/SENTRY-1607) | Backport SENTRY-1134 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1595](https://issues.apache.org/jira/browse/SENTRY-1595) | Backport SENTRY-1577 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1535](https://issues.apache.org/jira/browse/SENTRY-1535) | HMS Follower should update HDFS plugin paths |  Major | Sentry | Alexander Kolbasov | Hao Hao |
| [SENTRY-1619](https://issues.apache.org/jira/browse/SENTRY-1619) | Fix the secure HMS connection code in HMSFollower |  Major | Hdfs Plugin | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1536](https://issues.apache.org/jira/browse/SENTRY-1536) | Refactor SentryStore transaction management to allow for extra TransanctionBlocks for a single permission update |  Major | Sentry | Alexander Kolbasov | Hao Hao |
| [SENTRY-1621](https://issues.apache.org/jira/browse/SENTRY-1621) | HMSFollower to retry connecting to HMS upon connection loss |  Major | Hive Binding | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1487](https://issues.apache.org/jira/browse/SENTRY-1487) | Renaming SQL script for HMSPaths persistence |  Major | Hdfs Plugin | Hao Hao | kalyan kumar kalvagadda |
| [SENTRY-1622](https://issues.apache.org/jira/browse/SENTRY-1622) | Backport SENTRY-1615 to sentry-ha-redesign branch |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1623](https://issues.apache.org/jira/browse/SENTRY-1623) | Typo for notification log feature flag |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1628](https://issues.apache.org/jira/browse/SENTRY-1628) | In HMSFollower failing of catching error causes the executor to halt |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1634](https://issues.apache.org/jira/browse/SENTRY-1634) | HMSFollower should not check isLoadMetastoreConfig when trying to connect to HMS |  Major | Hdfs Plugin | Hao Hao | Vamsee Yarlagadda |
| [SENTRY-1632](https://issues.apache.org/jira/browse/SENTRY-1632) | Make HMSFollower initialDelay and run period configurable |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1448](https://issues.apache.org/jira/browse/SENTRY-1448) | Store processed notification sequence ID in database |  Major | Sentry | Alexander Kolbasov | Hao Hao |
| [SENTRY-1635](https://issues.apache.org/jira/browse/SENTRY-1635) | Limit HMS connections only to the leader of the sentry servers |  Minor | Hdfs Plugin | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1611](https://issues.apache.org/jira/browse/SENTRY-1611) | Purge MSentryPerm/PathChange tables |  Major | Hdfs Plugin | Hao Hao | Lei (Eddy) Xu |
| [SENTRY-1559](https://issues.apache.org/jira/browse/SENTRY-1559) | Remove fencing support |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1600](https://issues.apache.org/jira/browse/SENTRY-1600) | Define Thrift API for HMS to Sentry notification barrier |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1637](https://issues.apache.org/jira/browse/SENTRY-1637) | Periodically purge Delta change tables. |  Major | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [SENTRY-1612](https://issues.apache.org/jira/browse/SENTRY-1612) | HMSFollower should persist full HMS snapshot into SentryDB if there is not one. |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1617](https://issues.apache.org/jira/browse/SENTRY-1617) | Fetch Hive Paths point-in-time full snapshot during Sentry startup |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1645](https://issues.apache.org/jira/browse/SENTRY-1645) | Port SENTRY-1642 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1569](https://issues.apache.org/jira/browse/SENTRY-1569) | Upgrading SQL scripts for persist Perm/Path change |  Major | Hdfs Plugin | Hao Hao | kalyan kumar kalvagadda |
| [SENTRY-1388](https://issues.apache.org/jira/browse/SENTRY-1388) | Make HiveConf and Hive client jars available to Sentry deamon |  Major | Hdfs Plugin | Colin P. McCabe | Vamsee Yarlagadda |
| [SENTRY-1601](https://issues.apache.org/jira/browse/SENTRY-1601) | Implement HMS Notification barrier on the server side |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1566](https://issues.apache.org/jira/browse/SENTRY-1566) | Make full Perm/Path snapshot available for NN plugin |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1650](https://issues.apache.org/jira/browse/SENTRY-1650) | Port SENTRY-1360 to sentry-ha-redesign |  Major | Hdfs Plugin | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1575](https://issues.apache.org/jira/browse/SENTRY-1575) | Backport SENTRY-1404 to Sentry-ha-redesign branch |  Major | Hdfs Plugin | Hao Hao | Alexander Kolbasov |
| [SENTRY-1652](https://issues.apache.org/jira/browse/SENTRY-1652) | Port SENTRY-1464 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1655](https://issues.apache.org/jira/browse/SENTRY-1655) | Port SENTRY-1471 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1656](https://issues.apache.org/jira/browse/SENTRY-1656) | Port Sentry-1459 to sentry-ha-redesign |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1675](https://issues.apache.org/jira/browse/SENTRY-1675) | sentry-hdfs-dist should include sentry-core-common after refactor SentryHDFSServiceClientDefaultImpl |  Major | . | Hao Hao | kalyan kumar kalvagadda |
| [SENTRY-1613](https://issues.apache.org/jira/browse/SENTRY-1613) | Add propagating logic for Perm/Path updates in Sentry service |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1670](https://issues.apache.org/jira/browse/SENTRY-1670) | Expose current HMS notification ID as a Sentry gauge (metric) |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1680](https://issues.apache.org/jira/browse/SENTRY-1680) | MetastoreCacheInitializer is lo longer used and should be removed |  Major | Sentry | Alexander Kolbasov | Jan Hentschel |
| [SENTRY-1677](https://issues.apache.org/jira/browse/SENTRY-1677) | Add metrics to measure how much time to get Delta Path/Perm Updates |  Minor | Hdfs Plugin | Hao Hao | Alexander Kolbasov |
| [SENTRY-1676](https://issues.apache.org/jira/browse/SENTRY-1676) | FullUpdateInitializer#createInitialUpdate should not throw RuntimeException |  Minor | Hdfs Plugin | Lei (Eddy) Xu | Alexander Kolbasov |
| [SENTRY-1684](https://issues.apache.org/jira/browse/SENTRY-1684) | FullUpdateInitializer has a race condition in handling results list |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1643](https://issues.apache.org/jira/browse/SENTRY-1643) | AutoIncrement ChangeID of MSentryPermChange/MSentryPathChange may be error-prone |  Critical | Hdfs Plugin | Hao Hao | Lei (Eddy) Xu |
| [SENTRY-1629](https://issues.apache.org/jira/browse/SENTRY-1629) | Current MAuthzPathsMapping table definition may cause error 'Duplicate entry XX for key PRIMARY' |  Critical | Hdfs Plugin | Hao Hao | kalyan kumar kalvagadda |
| [SENTRY-1690](https://issues.apache.org/jira/browse/SENTRY-1690) | sql changed needed for AUTHZ\_PATH table |  Critical | Hdfs Plugin | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1638](https://issues.apache.org/jira/browse/SENTRY-1638) | Update SQL script of MSentryPathChange table to add a column for notification ID |  Critical | Hdfs Plugin | Hao Hao | kalyan kumar kalvagadda |
| [SENTRY-1686](https://issues.apache.org/jira/browse/SENTRY-1686) | Port SENTRY-1548 to sentry-ha-redesign branch |  Critical | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1674](https://issues.apache.org/jira/browse/SENTRY-1674) | HMSFollower shouldn't print the same value of notification ID multiple times |  Minor | Sentry | Alexander Kolbasov | Na Li |
| [SENTRY-1587](https://issues.apache.org/jira/browse/SENTRY-1587) | Refactor SentryStore transaction to persist a single path transcation bundled with corresponding delta path change |  Critical | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1608](https://issues.apache.org/jira/browse/SENTRY-1608) | Converting Sentry to a stateless service |  Major | Hdfs Plugin | Hao Hao | Hao Hao |
| [SENTRY-1711](https://issues.apache.org/jira/browse/SENTRY-1711) | HMSFollower shouldn't call processNotificationEvents() unless there are events |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1685](https://issues.apache.org/jira/browse/SENTRY-1685) | Port SENTRY-1489 to sentry-ha-redesign branch |  Major | Sentry | Alexander Kolbasov | Na Li |
| [SENTRY-1687](https://issues.apache.org/jira/browse/SENTRY-1687) | FullUpdateInitializer can be more efficient |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1700](https://issues.apache.org/jira/browse/SENTRY-1700) | FullUpdateInitializer should not use preconditions to verify HMS data |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1698](https://issues.apache.org/jira/browse/SENTRY-1698) | PathsUpdate.parsePath() calls FileSystem.getDefaultUri() way too often |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1578](https://issues.apache.org/jira/browse/SENTRY-1578) | Suport secure ZK configuration for leader election |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1673](https://issues.apache.org/jira/browse/SENTRY-1673) | Improve error reporting from FullUpdateInitializer |  Critical | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1725](https://issues.apache.org/jira/browse/SENTRY-1725) | Include response status in TSentrySyncIDResponse |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1593](https://issues.apache.org/jira/browse/SENTRY-1593) | Implement client failover for Generic and NN clients |  Blocker | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1718](https://issues.apache.org/jira/browse/SENTRY-1718) | TestSentryStore often fails in setup() |  Major | Sentry | Alexander Kolbasov | Na Li |
| [SENTRY-1734](https://issues.apache.org/jira/browse/SENTRY-1734) | Create/Alter/Drop database/table should check corresponding property before drop privileges |  Critical | . | Hao Hao | Alexander Kolbasov |
| [SENTRY-1695](https://issues.apache.org/jira/browse/SENTRY-1695) | Waiting for HMS notifications from Thrift should be interruptible |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1709](https://issues.apache.org/jira/browse/SENTRY-1709) | Avoid randomizing the servers at client side based on configuration. |  Minor | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1649](https://issues.apache.org/jira/browse/SENTRY-1649) | Initialize HMSFollower when sentry server actually starts |  Critical | Hdfs Plugin | Hao Hao | Na Li |
| [SENTRY-1733](https://issues.apache.org/jira/browse/SENTRY-1733) | Add log message for key store file path |  Major | Sentry | Na Li | Na Li |
| [SENTRY-1756](https://issues.apache.org/jira/browse/SENTRY-1756) | Passive nodes should still follow latest notification ID |  Critical | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1726](https://issues.apache.org/jira/browse/SENTRY-1726) | sql changes to store last notification-id processed |  Critical | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1717](https://issues.apache.org/jira/browse/SENTRY-1717) | Sentry should emit log messages when it is ready to serve requests. |  Major | Sentry | Alexander Kolbasov | Na Li |
| [SENTRY-1763](https://issues.apache.org/jira/browse/SENTRY-1763) | Fix the config string for server load balancing |  Minor | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1765](https://issues.apache.org/jira/browse/SENTRY-1765) | CounterWait.update should be less strict |  Major | Sentry | Na Li | Alexander Kolbasov |
| [SENTRY-1758](https://issues.apache.org/jira/browse/SENTRY-1758) | Improve Sentry memory usage by interning object names |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1751](https://issues.apache.org/jira/browse/SENTRY-1751) | HMSFollower should not persist empty full snapshot |  Critical | Sentry | Na Li | kalyan kumar kalvagadda |
| [SENTRY-1716](https://issues.apache.org/jira/browse/SENTRY-1716) | HMSFollower doesn't need to save path info when HDFS sync is disabled |  Major | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1768](https://issues.apache.org/jira/browse/SENTRY-1768) | Avoid detaching object on transaction exit when it isn't needed |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1757](https://issues.apache.org/jira/browse/SENTRY-1757) | Avoid using local hive meta store with wrong configuration |  Blocker | Sentry | Na Li | Na Li |
| [SENTRY-1770](https://issues.apache.org/jira/browse/SENTRY-1770) | Avoid more detaches on commit |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1736](https://issues.apache.org/jira/browse/SENTRY-1736) | Generic service client should support Kerberos |  Major | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1772](https://issues.apache.org/jira/browse/SENTRY-1772) | Permissions created before table creation are not reflected in HDFS ACLs |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1669](https://issues.apache.org/jira/browse/SENTRY-1669) | HMSFollower should read current processed notification ID from database every time it runs |  Blocker | Hdfs Plugin | Hao Hao | kalyan kumar kalvagadda |
| [SENTRY-1705](https://issues.apache.org/jira/browse/SENTRY-1705) | Do not start HMSFollower if Hive isn't configured |  Major | Sentry | Alexander Kolbasov | Na Li |
| [SENTRY-1776](https://issues.apache.org/jira/browse/SENTRY-1776) | SentryStore should clear SENTRY\_HMS\_NOTIFICATION\_ID while clearing store |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1777](https://issues.apache.org/jira/browse/SENTRY-1777) | Generic clients are not able to connect to sentry server with kerberos enabled. |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1774](https://issues.apache.org/jira/browse/SENTRY-1774) | HMSFollower should always depend on persisted information to decide is full snapshot is needed |  Blocker | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1773](https://issues.apache.org/jira/browse/SENTRY-1773) | Delta change cleaner should leave way more then a single entry intact |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1780](https://issues.apache.org/jira/browse/SENTRY-1780) | FullUpdateInitializer does not kill the threads whenever getFullHMSSnapshot throws an exception |  Major | Sentry | Sergio Peña | Alexander Kolbasov |
| [SENTRY-1793](https://issues.apache.org/jira/browse/SENTRY-1793) | Reenable ignored unit tests from TestHDFSIntegrationEnd2End |  Minor | Sentry, Test | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1795](https://issues.apache.org/jira/browse/SENTRY-1795) | Delta tables should not have holes |  Major | Sentry | Alexander Kolbasov | Lei (Eddy) Xu |
| [SENTRY-1792](https://issues.apache.org/jira/browse/SENTRY-1792) | Ensure DB to sort delta changes by CHANGE\_ID |  Major | Sentry | Na Li | Vamsee Yarlagadda |
| [SENTRY-1713](https://issues.apache.org/jira/browse/SENTRY-1713) | Enable TestHDFSIntegrationEnd2End.testEnd2End |  Major | Hdfs Plugin | Hao Hao | Lei (Eddy) Xu |
| [SENTRY-1737](https://issues.apache.org/jira/browse/SENTRY-1737) | SentryTransportFactory may use incorrect kerberos principal |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1800](https://issues.apache.org/jira/browse/SENTRY-1800) | Flaky testConcurrentUpdateChanges test |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1580](https://issues.apache.org/jira/browse/SENTRY-1580) | Provide pooled client connection model with HA |  Critical | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1735](https://issues.apache.org/jira/browse/SENTRY-1735) | Sentry Clients should not log every connection request |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1738](https://issues.apache.org/jira/browse/SENTRY-1738) | Inefficient connection management by retrying invocation handler |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1799](https://issues.apache.org/jira/browse/SENTRY-1799) | Fix flaky HDFS END2END tests |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1796](https://issues.apache.org/jira/browse/SENTRY-1796) | Add better debug logging for retrieving the delta changes |  Minor | Sentry | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-1794](https://issues.apache.org/jira/browse/SENTRY-1794) | HMSFollower not persisting last processed notifications when partition is altered |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1791](https://issues.apache.org/jira/browse/SENTRY-1791) | Sentry Clients failover not working with kerberos enabled |  Major | Hdfs Plugin, Hive Plugin | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1782](https://issues.apache.org/jira/browse/SENTRY-1782) | Add an HMS image ID to the thrift schema definition for hdfs/sentry requests |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1427](https://issues.apache.org/jira/browse/SENTRY-1427) | Test TGT renewals in HMSFollower |  Major | Hdfs Plugin, Sentry | Sravya Tirukkovalur | Vamsee Yarlagadda |
| [SENTRY-1806](https://issues.apache.org/jira/browse/SENTRY-1806) | Improve memory handling for HDFS sync |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1805](https://issues.apache.org/jira/browse/SENTRY-1805) | Define a DB schema for HMS generation IDs |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1781](https://issues.apache.org/jira/browse/SENTRY-1781) | Persist new HMS snapshots with a new generation ID. |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1814](https://issues.apache.org/jira/browse/SENTRY-1814) | Provide unit test for LeaderStatusMonitor |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1821](https://issues.apache.org/jira/browse/SENTRY-1821) | Transactions could fail to commit to the database under load |  Major | Sentry | Vamsee Yarlagadda | Alexander Kolbasov |
| [SENTRY-1824](https://issues.apache.org/jira/browse/SENTRY-1824) | SentryStore may serialize transactions that rely on unique key |  Major | Sentry | Alexander Kolbasov | Na Li |
| [SENTRY-1830](https://issues.apache.org/jira/browse/SENTRY-1830) | Create new release version 2.0.0 on JIRA |  Major | Sentry | Sergio Peña | Alexander Kolbasov |
| [SENTRY-1828](https://issues.apache.org/jira/browse/SENTRY-1828) | Rename version in sentry-ha-redesign branch to 2.0.0-SNAPSHOT |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1815](https://issues.apache.org/jira/browse/SENTRY-1815) | Send new HMS snapshots to HDFS requesting an old generation ID |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1817](https://issues.apache.org/jira/browse/SENTRY-1817) | Deprecate SENTRY\_HA\_ENABLED and all tests that use it |  Major | Sentry | Alexander Kolbasov | Na Li |
| [SENTRY-1630](https://issues.apache.org/jira/browse/SENTRY-1630) | out of sequence error in HMSFollower |  Blocker | Hdfs Plugin | Hao Hao | Alexander Kolbasov |
| [SENTRY-1833](https://issues.apache.org/jira/browse/SENTRY-1833) | Expose current set of IDs as Sentry metrics |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1696](https://issues.apache.org/jira/browse/SENTRY-1696) | Expose time spent creating the initial snapshot as a metric |  Minor | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1798](https://issues.apache.org/jira/browse/SENTRY-1798) | Provide names for HMSFollower and cleaner threads |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1697](https://issues.apache.org/jira/browse/SENTRY-1697) | Deprecate feature flag for enabling notification log |  Blocker | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1762](https://issues.apache.org/jira/browse/SENTRY-1762) | notification id's in SENTRY\_HMS\_NOTIFICATION\_ID should be purged periodically |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1769](https://issues.apache.org/jira/browse/SENTRY-1769) | Refactor HMSFollower Class |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1851](https://issues.apache.org/jira/browse/SENTRY-1851) | Revert HMSFollower refactoring change |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1760](https://issues.apache.org/jira/browse/SENTRY-1760) | HMSFollower should detect when a full snapshot from HMS is required |  Blocker | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1825](https://issues.apache.org/jira/browse/SENTRY-1825) | Dropping a Hive database/table doesn't cleanup the permissions associated with it |  Critical | . | Vamsee Yarlagadda | Na Li |
| [SENTRY-1764](https://issues.apache.org/jira/browse/SENTRY-1764) | HMSFollower should check for leader status after each event processed |  Critical | Sentry | Alexander Kolbasov | kalyan kumar kalvagadda |
| [SENTRY-1755](https://issues.apache.org/jira/browse/SENTRY-1755) | Add HMSFollower per-operation metrics |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1860](https://issues.apache.org/jira/browse/SENTRY-1860) | Update CHANGELOG on master to reflect 1.8.0 changes |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1849](https://issues.apache.org/jira/browse/SENTRY-1849) | Fix the pom file to use appropriate hive dependencies based on hive-authz profile |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1869](https://issues.apache.org/jira/browse/SENTRY-1869) | Try to use pool with idle connections first |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-1834](https://issues.apache.org/jira/browse/SENTRY-1834) |  Fix build failures when hive-authz2 profile is enabled. |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1839](https://issues.apache.org/jira/browse/SENTRY-1839) | Fork files from sentry-binding-hive-common package to sentry-binding-hive and sentry-binding-hive-v2 packages |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1847](https://issues.apache.org/jira/browse/SENTRY-1847) | Integrate sentry with Hive 2.0.0 |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1843](https://issues.apache.org/jira/browse/SENTRY-1843) | Fork sentry-binding-hive-follower package to support Hive 2.x |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1854](https://issues.apache.org/jira/browse/SENTRY-1854) | HMSFollower should handle notifications even if HDFS sync is disabled. |  Major | Sentry | Na Li | Na Li |
| [SENTRY-1430](https://issues.apache.org/jira/browse/SENTRY-1430) | Test Sentry HA Tasks |  Major | Sentry, Test | Anne Yu | Vamsee Yarlagadda |
| [SENTRY-1729](https://issues.apache.org/jira/browse/SENTRY-1729) | Test secure ZK connections |  Major | Sentry | Alexander Kolbasov |  |
| [SENTRY-1732](https://issues.apache.org/jira/browse/SENTRY-1732) | Test concurrent roles/groups/privs operations |  Major | Sentry | Alexander Kolbasov |  |
| [SENTRY-1856](https://issues.apache.org/jira/browse/SENTRY-1856) | Persisting HMS snapshot and the notification-id to database in same transaction |  Major | Sentry | kalyan kumar kalvagadda | Na Li |
| [SENTRY-1803](https://issues.apache.org/jira/browse/SENTRY-1803) | HMSFollower should handle the case of multiple notifications with the same ID |  Major | Sentry | Alexander Kolbasov | Sergio Peña |
| [SENTRY-1978](https://issues.apache.org/jira/browse/SENTRY-1978) | Move the hive-authz2 grant/revoke implementation into the sentry-binding-hive module |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1980](https://issues.apache.org/jira/browse/SENTRY-1980) | Move the hive-authz2 HMS client filtering implementation into the sentry-binding-hive module |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1998](https://issues.apache.org/jira/browse/SENTRY-1998) | Create release version 2.1.0 in Jira |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2001](https://issues.apache.org/jira/browse/SENTRY-2001) | Remove snapshot from version 2.0.0-SNAPSHOT in pom file |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2002](https://issues.apache.org/jira/browse/SENTRY-2002) | Update CHANGELOG on 2.0.0 and master branchs to reflect the changes |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2000](https://issues.apache.org/jira/browse/SENTRY-2000) | Cut 2.0.0 branch |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1999](https://issues.apache.org/jira/browse/SENTRY-1999) | Sanitize issues that are outstanding for 2.0.0 release |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2003](https://issues.apache.org/jira/browse/SENTRY-2003) | Create tag Release-2.0.0 |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2005](https://issues.apache.org/jira/browse/SENTRY-2005) | Run vote on Release-2.0.0 |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2004](https://issues.apache.org/jira/browse/SENTRY-2004) | Create Release-2.0.0 |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2093](https://issues.apache.org/jira/browse/SENTRY-2093) | Close JIRA version for 2.0.0 |  Major | Sentry | kalyan kumar kalvagadda | Sergio Peña |
| [SENTRY-2007](https://issues.apache.org/jira/browse/SENTRY-2007) | Finish Release-2.0.0 |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2006](https://issues.apache.org/jira/browse/SENTRY-2006) | Release artifacts for 2.0.0 |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2061](https://issues.apache.org/jira/browse/SENTRY-2061) | Prepare release notes for 2.0.0 release |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2360](https://issues.apache.org/jira/browse/SENTRY-2360) | Update the pom file in 2.0 branch |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1520](https://issues.apache.org/jira/browse/SENTRY-1520) | Provide mechanism for triggering HMS full snapshot |  Major | . | Sravya Tirukkovalur | Vadim Spector |
| [SENTRY-1859](https://issues.apache.org/jira/browse/SENTRY-1859) | Prepare master for next release (2.0.0) |  Blocker | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1899](https://issues.apache.org/jira/browse/SENTRY-1899) | Remove support for HIVE 1.x |  Blocker | Sentry | Hrishikesh Gadre | Sergio Peña |
| [SENTRY-1970](https://issues.apache.org/jira/browse/SENTRY-1970) | Configure PreCommit-SENTRY-Build to build and test against JDK8 |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-1893](https://issues.apache.org/jira/browse/SENTRY-1893) | Bump the minimum java version to 8 |  Major | . | Hrishikesh Gadre | Sergio Peña |
| [SENTRY-1838](https://issues.apache.org/jira/browse/SENTRY-1838) | Support Hive 2.1.1 for sentry 2.0 |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1480](https://issues.apache.org/jira/browse/SENTRY-1480) | A upgrade tool to migrate Solr/Sentry permissions |  Major | Solr Plugin | Hrishikesh Gadre | Hrishikesh Gadre |


