
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
# Apache Ranger Changelog

## Release 1.0.0 - Unreleased (as of 2018-02-01)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1372](https://issues.apache.org/jira/browse/RANGER-1372) | There are some errors when I used 'sudo ranger-usersync start' command to run the Ranger UserSync Process in ubuntu 16.04. |  Major | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1416](https://issues.apache.org/jira/browse/RANGER-1416) | SunX509 is the hardcoded Algorithm for SSL |  Major | plugins | Uday Kale | Colm O hEigeartaigh |
| [RANGER-1412](https://issues.apache.org/jira/browse/RANGER-1412) | Start hadoop failed after enabling ranger HDFS plugins |  Critical | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1386](https://issues.apache.org/jira/browse/RANGER-1386) | ranger hdfs-plugin function not revoked after execute disable-hdfs-plugin.sh which cause hadoop-hdfs authorization failed. |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1400](https://issues.apache.org/jira/browse/RANGER-1400) | Enabling Ranger HDFS Plugins failed when hadoop program and Ranger HDFS Plugin are not in the same path. |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1519](https://issues.apache.org/jira/browse/RANGER-1519) | Error occurred after execute enable-hive-plugin.sh |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1525](https://issues.apache.org/jira/browse/RANGER-1525) | Some users hope that the execute programs and install configuration file of the Ranger Admin can be deployed separately when they integrate Ranger into the big data platform or business systems to uniform install Ranger. |  Major | admin | peng.jianhua | peng.jianhua |
| [RANGER-1540](https://issues.apache.org/jira/browse/RANGER-1540) | Log is very important for big data platform. The main purpose of log analysis is that we need to know who is running the service, in which machine running service, which service out of the problem. The ranger security admin should support the feature. |  Major | admin | peng.jianhua | peng.jianhua |
| [RANGER-1541](https://issues.apache.org/jira/browse/RANGER-1541) | The assignment logic is inconsistent for the value of the RANGER\_ADMIN\_HOME variable in Ranger Admin. It will cause a serious failure. |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1568](https://issues.apache.org/jira/browse/RANGER-1568) | Similar to RANGER-1540, the Ranger UserSync should also support the same new feature. |  Major | usersync | peng.jianhua | peng.jianhua |
| [RANGER-1542](https://issues.apache.org/jira/browse/RANGER-1542) | Exceptions occured when I test connection during create a new service for atlas-plugin |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1613](https://issues.apache.org/jira/browse/RANGER-1613) | There is one defect in start script for ranger-usersync process |  Major | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1662](https://issues.apache.org/jira/browse/RANGER-1662) | The user is easy to configure the wrong format's data for 'YARN REST URL' property when adding a new yarn service. It will cause testconnection fail. |  Minor | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1668](https://issues.apache.org/jira/browse/RANGER-1668) | Do some code improvement in setup.sh of security-admin |  Minor | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1503](https://issues.apache.org/jira/browse/RANGER-1503) | Add tips to make jdbc.url parameter easy for users to use when create hive-plugin service |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1693](https://issues.apache.org/jira/browse/RANGER-1693) | The pidf's assignment logic in ranger-kms-initd should be consistent with the pidf's assignment logic in ranger-kms |  Major | kms | peng.jianhua | peng.jianhua |
| [RANGER-1698](https://issues.apache.org/jira/browse/RANGER-1698) | Write audit log to solr failure. |  Critical | admin, audit, kms | peng.jianhua | peng.jianhua |
| [RANGER-1731](https://issues.apache.org/jira/browse/RANGER-1731) | Guava dependency cause build problems |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1788](https://issues.apache.org/jira/browse/RANGER-1788) | Install Ranger admin failure. |  Critical | admin | peng.jianhua | peng.jianhua |
| [RANGER-1791](https://issues.apache.org/jira/browse/RANGER-1791) | The JAVA\_HOME property is invalid in install.properties for Solr for Ranger Audits. The solr started fail after installed and configured Solr for Ranger Audits |  Major | audit | peng.jianhua | peng.jianhua |
| [RANGER-1810](https://issues.apache.org/jira/browse/RANGER-1810) | Ranger supports plugin to enable, monitor and manage apache Sqoop2 |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1846](https://issues.apache.org/jira/browse/RANGER-1846) | This JAVA\_VERSION\_REQUIRED configuration item is invalid in security admin installer, we should enable it to control the necessary java version. |  Major | admin | peng.jianhua | peng.jianhua |
| [RANGER-1856](https://issues.apache.org/jira/browse/RANGER-1856) | Installation and access logic are inconsistent for the pid of kms program. Like security admin, they should be consistent. |  Major | kms | peng.jianhua | peng.jianhua |
| [RANGER-1859](https://issues.apache.org/jira/browse/RANGER-1859) | Fix new findBugs in HdfsClient.java |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1858](https://issues.apache.org/jira/browse/RANGER-1858) | ranger-admin start fail when policymgr\_http\_enabled equal to false. |  Critical | admin | peng.jianhua | peng.jianhua |
| [RANGER-1860](https://issues.apache.org/jira/browse/RANGER-1860) | Provide a new service interface prompt function framework to resolved the defect of the current service interface, increase the flexibility of the function, improve user ease of use |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1848](https://issues.apache.org/jira/browse/RANGER-1848) | Implement getLinkList/getJobList in SqoopClient for Ranger Sqoop2 plugin |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1797](https://issues.apache.org/jira/browse/RANGER-1797) | Tomcat Security Vulnerability Alert. The version of the tomcat for ranger should upgrade to 7.0.82. |  Major | admin | peng.jianhua | peng.jianhua |
| [RANGER-1905](https://issues.apache.org/jira/browse/RANGER-1905) | NoClassDefFoundError from the built zip/tar.gz, created by the maven-assembly-plugin |  Blocker | admin | Zsombor Gegesy | Zsombor Gegesy |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1508](https://issues.apache.org/jira/browse/RANGER-1508) | The browser returns garbled when we login ranger security admin in non-English environment. We need support the internationalization function to solve this problem. |  Critical | admin | peng.jianhua | peng.jianhua |
| [RANGER-1523](https://issues.apache.org/jira/browse/RANGER-1523) | Add AtlasResourceMapper implementation for Apache Storm |  Major | tagsync | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1575](https://issues.apache.org/jira/browse/RANGER-1575) | Some users hope that the pid file of the Ranger Admin can be unified management when they integrate Ranger into the big data platform or business systems to uniform install and run Ranger. |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1614](https://issues.apache.org/jira/browse/RANGER-1614) | Similar to RANGER-1575, the Ranger UserSync should also support the same new feature. |  Minor | usersync | peng.jianhua | peng.jianhua |
| [RANGER-1627](https://issues.apache.org/jira/browse/RANGER-1627) | Tagsync should also be able to support pid file name customization like admin and usersync |  Minor | tagsync | Yujie Li | Yujie Li |
| [RANGER-1660](https://issues.apache.org/jira/browse/RANGER-1660) | Similar to RANGER-1575, the kms should also support the same new feature. |  Minor | kms | peng.jianhua | peng.jianhua |
| [RANGER-1692](https://issues.apache.org/jira/browse/RANGER-1692) | Similar to RANGER-1540, the Ranger kms should also support the same new feature. |  Minor | kms | peng.jianhua | peng.jianhua |
| [RANGER-1669](https://issues.apache.org/jira/browse/RANGER-1669) | We need to support the original functionality of hive：show grant user username |  Critical | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1766](https://issues.apache.org/jira/browse/RANGER-1766) | Execute "grant all" command failure in beeline mode when user used Ranger hive plugin |  Critical | plugins, Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1735](https://issues.apache.org/jira/browse/RANGER-1735) | Support representing nested group memberships in Ranger Admin |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1647](https://issues.apache.org/jira/browse/RANGER-1647) | Allow Ranger policy conditions to use tag attributes and values in Ranger |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1844](https://issues.apache.org/jira/browse/RANGER-1844) | Ranger admin support hdfs HA configuration when creating hdfs service. |  Major | plugins, Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1929](https://issues.apache.org/jira/browse/RANGER-1929) | The ranger should support the View policy. |  Major | admin | peng.jianhua | peng.jianhua |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1370](https://issues.apache.org/jira/browse/RANGER-1370) | createdByUserId is stored in public static field |  Major | Ranger | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1371](https://issues.apache.org/jira/browse/RANGER-1371) | No need to write field initializers for default values, and types where the diamond operator could suffice |  Major | Ranger | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1384](https://issues.apache.org/jira/browse/RANGER-1384) | Replace old asm version |  Major | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1376](https://issues.apache.org/jira/browse/RANGER-1376) | Several different jersey/jackson library is used |  Major | Ranger | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1399](https://issues.apache.org/jira/browse/RANGER-1399) | Do some code improvement in Java method SolrUtil.searchResources |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1393](https://issues.apache.org/jira/browse/RANGER-1393) | RangerAuditFields generic type is incorrectly specified |  Minor | Ranger | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1419](https://issues.apache.org/jira/browse/RANGER-1419) | Do some code improvement in Java method XTrxLogService.searchXTrxLogs |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1426](https://issues.apache.org/jira/browse/RANGER-1426) | Change return type of RangerBaseService.validateConfig |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1318](https://issues.apache.org/jira/browse/RANGER-1318) | Consolidate XML configuration parsing |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1441](https://issues.apache.org/jira/browse/RANGER-1441) | Remove MapUtils.EMPTY\_MAP |  Trivial | tagsync | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1388](https://issues.apache.org/jira/browse/RANGER-1388) | Improve error messages in AtlasKafkaResourceMapper |  Minor | tagsync | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1468](https://issues.apache.org/jira/browse/RANGER-1468) | To make the search tips of Plugin-Status consistent with others |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1377](https://issues.apache.org/jira/browse/RANGER-1377) | Improve codestyle, java api usage |  Major | Ranger | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1457](https://issues.apache.org/jira/browse/RANGER-1457) | Move COMPONENT\_INSTALL\_DIR\_NAME to install.properties for Yarn plugin |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1504](https://issues.apache.org/jira/browse/RANGER-1504) | There are errors information in solr\_for\_audit\_setup installer. |  Trivial | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1505](https://issues.apache.org/jira/browse/RANGER-1505) | Remove KeyProtector code in KMS |  Major | kms | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1514](https://issues.apache.org/jira/browse/RANGER-1514) | Remove EasyMock dependency |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1516](https://issues.apache.org/jira/browse/RANGER-1516) | Remove remaining \*-plugin-install.properties |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1518](https://issues.apache.org/jira/browse/RANGER-1518) | Do some code improvement for the error message in PolicyMgrUserGroupBuilder.java |  Trivial | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1497](https://issues.apache.org/jira/browse/RANGER-1497) | Improvement of unit test coverage for ranger |  Major | Ranger | Deepak Sharma | Deepak Sharma |
| [RANGER-1527](https://issues.apache.org/jira/browse/RANGER-1527) | Make curator dependencies consistent |  Major | kms | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1526](https://issues.apache.org/jira/browse/RANGER-1526) | Error class names in the printed logs |  Minor | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1534](https://issues.apache.org/jira/browse/RANGER-1534) | Fix the spelling in HiveConnectionMgr |  Trivial | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1433](https://issues.apache.org/jira/browse/RANGER-1433) | Enabled secure processing feature |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1532](https://issues.apache.org/jira/browse/RANGER-1532) | Friendly groups page delete function display, and other pages of the same function in sync |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1539](https://issues.apache.org/jira/browse/RANGER-1539) | Improve, modify print log display method name |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1478](https://issues.apache.org/jira/browse/RANGER-1478) | Refactor RangerPolicyEngineOptions, RangerConfiguration is looked up too many times |  Minor | plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1533](https://issues.apache.org/jira/browse/RANGER-1533) | Fix the spelling in HiveConnectionMgr |  Trivial | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1436](https://issues.apache.org/jira/browse/RANGER-1436) | Turn Ranger deny policy & except condition blocks ON by default |  Major | Ranger | Srikanth Venkat | Abhay Kulkarni |
| [RANGER-1546](https://issues.apache.org/jira/browse/RANGER-1546) | Code Improvement To Follow Best Practices |  Major | Ranger | bhavik patel | bhavik patel |
| [RANGER-1471](https://issues.apache.org/jira/browse/RANGER-1471) | Remember filters on all tabs of Ranger Audits page |  Major | Ranger | bhavik patel | bhavik patel |
| [RANGER-1543](https://issues.apache.org/jira/browse/RANGER-1543) | Fix the spelling in RangerBaseUdf |  Trivial | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1528](https://issues.apache.org/jira/browse/RANGER-1528) | Update Maven jar plugin |  Major | build-infra | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1450](https://issues.apache.org/jira/browse/RANGER-1450) | Avoid path traversal attacks when reading XML files |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1529](https://issues.apache.org/jira/browse/RANGER-1529) | Remove tez dependency from Hive/HDFS plugins |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1549](https://issues.apache.org/jira/browse/RANGER-1549) | Add COMPONENT\_INSTALL\_DIR\_NAME to the Storm install.properties |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1585](https://issues.apache.org/jira/browse/RANGER-1585) | Do some code improvement for the error logs in RangerBasePlugin.java |  Minor | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1590](https://issues.apache.org/jira/browse/RANGER-1590) | Modify code for the error logs in ranger\\knox-agent\\src\\main\\java\\org\\apache\\ranger\\services\\knox\\client\\KnoxClient.java |  Major | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1598](https://issues.apache.org/jira/browse/RANGER-1598) |  make the  tips of group and user consistent with others in en.js |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1597](https://issues.apache.org/jira/browse/RANGER-1597) | The log is inconsistent with the code in RangerServiceDefHelper class,update it to ensure their consistency. |  Trivial | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1593](https://issues.apache.org/jira/browse/RANGER-1593) | Avoid Classloading default AtlasResourceMappers |  Minor | tagsync | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1570](https://issues.apache.org/jira/browse/RANGER-1570) | Finish cleaning up Mockito stubs |  Major | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1587](https://issues.apache.org/jira/browse/RANGER-1587) | Cleanup Ranger KMS service dependencies |  Major | kms | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1616](https://issues.apache.org/jira/browse/RANGER-1616) | Upgrade to Mockito 2 |  Major | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1634](https://issues.apache.org/jira/browse/RANGER-1634) | Extra debug logging for user sync |  Minor | usersync | Rob Vesse |  |
| [RANGER-1673](https://issues.apache.org/jira/browse/RANGER-1673) | The default plugin configuration file is not readable |  Trivial | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1706](https://issues.apache.org/jira/browse/RANGER-1706) | Running CI on Travis |  Major | Ranger | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1721](https://issues.apache.org/jira/browse/RANGER-1721) | HBase plugins use deprecated code |  Major | plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1722](https://issues.apache.org/jira/browse/RANGER-1722) | Duplicate code for exception wrapping in BaseClient |  Minor | plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1728](https://issues.apache.org/jira/browse/RANGER-1728) | Upgrade PMD plugin and fix related issues |  Trivial | build-infra | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1697](https://issues.apache.org/jira/browse/RANGER-1697) | Update NiFi service def |  Minor | plugins | Matt Gilman | Nikhil Purbhe |
| [RANGER-1785](https://issues.apache.org/jira/browse/RANGER-1785) | Remove ranger-hive-utils module |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1807](https://issues.apache.org/jira/browse/RANGER-1807) | Static object  can be used directly at start() method for RangerHdfsAuthorizer class |  Trivial | plugins | WangYuan | WangYuan |
| [RANGER-1799](https://issues.apache.org/jira/browse/RANGER-1799) | Knox Ranger test coverity fixes |  Trivial | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1822](https://issues.apache.org/jira/browse/RANGER-1822) | Remove ssoEnabled accessors in RangerSSOAuthenticationFilter |  Trivial | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1839](https://issues.apache.org/jira/browse/RANGER-1839) | Add the ability to specify SSO token audiences |  Minor | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1845](https://issues.apache.org/jira/browse/RANGER-1845) | Add support to configure JWT signature algorithms |  Minor | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1874](https://issues.apache.org/jira/browse/RANGER-1874) | ranger README.txt should be add tar and sqoop-plugin desc |  Minor | Ranger | WangYuan | WangYuan |
| [RANGER-1881](https://issues.apache.org/jira/browse/RANGER-1881) | Code duplication in console handling in KMS |  Major | kms | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1877](https://issues.apache.org/jira/browse/RANGER-1877) | The ranger policies json file should be formatted when exported  at ranger service manager. |  Minor | admin, Ranger | WangYuan | WangYuan |
| [RANGER-1895](https://issues.apache.org/jira/browse/RANGER-1895) | Simplify Storm dependencies |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1910](https://issues.apache.org/jira/browse/RANGER-1910) | Simplify the maven dependency management of the Yarn plugin for Ranger .solr-solrj can be removed from the pom.xml file of the plugin-yarn |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1916](https://issues.apache.org/jira/browse/RANGER-1916) | Remove duplicate code and optimize code in AtlasClient.class |  Minor | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1915](https://issues.apache.org/jira/browse/RANGER-1915) | Optimize the code and keep the code style consistent in the RangerAdminRESTClient class |  Major | admin | peng.jianhua | peng.jianhua |
| [RANGER-1906](https://issues.apache.org/jira/browse/RANGER-1906) | Simplify Atlas plugin dependency management |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1917](https://issues.apache.org/jira/browse/RANGER-1917) | Remove solr dependency from Kafka + Sqoop modules |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1867](https://issues.apache.org/jira/browse/RANGER-1867) | Update nimbus-jose-jwt to 4.41.2 |  Major | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1893](https://issues.apache.org/jira/browse/RANGER-1893) | Update HBase dependency to 1.2.6 |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1849](https://issues.apache.org/jira/browse/RANGER-1849) | Remove PasswordGenerator and FileStoreUtil |  Trivial | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1922](https://issues.apache.org/jira/browse/RANGER-1922) | Simplify HBase dependencies |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1923](https://issues.apache.org/jira/browse/RANGER-1923) | Simplify Hive dependencies |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1920](https://issues.apache.org/jira/browse/RANGER-1920) | Remove SOLR dependencies from the KMS service + plugins |  Major | kms, plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1925](https://issues.apache.org/jira/browse/RANGER-1925) | Remove invalid code from plugin script. |  Major | kms, plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1924](https://issues.apache.org/jira/browse/RANGER-1924) | Simplify ranger-hdfs plugin remove gson.jar in ranger/src/main/assembly/hdfs-agent.xml |  Minor | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1927](https://issues.apache.org/jira/browse/RANGER-1927) | Upgrade Hive to 2.3.2 |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1926](https://issues.apache.org/jira/browse/RANGER-1926) | Upgrade Storm dependency to 1.1.1 |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1936](https://issues.apache.org/jira/browse/RANGER-1936) | Upgrade Ranger to use Java 1.8 |  Major | admin, plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1938](https://issues.apache.org/jira/browse/RANGER-1938) | Solr for Audit setup doesn't use DocValues effectively |  Major | audit | Kevin Risden | Kevin Risden |
| [RANGER-689](https://issues.apache.org/jira/browse/RANGER-689) | For Solr plugin, use resources folders for adding Ranger properties |  Major | plugins | Don Bosco Durai | Colm O hEigeartaigh |
| [RANGER-1954](https://issues.apache.org/jira/browse/RANGER-1954) | Specify a version for the native-maven-plugin |  Trivial | Ranger | Colm O hEigeartaigh | Colm O hEigeartaigh |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1374](https://issues.apache.org/jira/browse/RANGER-1374) | When exceptions occur during using ChangePasswordUtil tool to update admin password, the program doesn't record error messages. |  Minor | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1289](https://issues.apache.org/jira/browse/RANGER-1289) | Error occured in Ranger KMS function |  Major | kms | Qiang Zhang | Qiang Zhang |
| [RANGER-1381](https://issues.apache.org/jira/browse/RANGER-1381) | Add hadoop-common.jar as dependency to ranger-hive-utils package to avoid build failure |  Major | plugins | Ramesh Mani | Ramesh Mani |
| [RANGER-1385](https://issues.apache.org/jira/browse/RANGER-1385) | UnixAuthenticationService may fails in Widows  as the  "/" is different from "\\" |  Critical | audit | Qiang Zhang | Qiang Zhang |
| [RANGER-1396](https://issues.apache.org/jira/browse/RANGER-1396) | There are error logs in SecureClientLogin class |  Trivial | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1383](https://issues.apache.org/jira/browse/RANGER-1383) | Support for using resource-matcher for filtering policies within a service if service-resource is provided in the filter |  Major | admin | Deepak Sharma | Abhay Kulkarni |
| [RANGER-1397](https://issues.apache.org/jira/browse/RANGER-1397) | Error method name in the printed logs |  Trivial | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1387](https://issues.apache.org/jira/browse/RANGER-1387) | Remove unused SQL\_CONNECTOR\_JAR in install.properties of ranger plugin |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1414](https://issues.apache.org/jira/browse/RANGER-1414) | Ranger Hive Authorizer API for row-filtering and column-masking need only return those tables that need masking/filtering |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1403](https://issues.apache.org/jira/browse/RANGER-1403) | There is a problem in buildks class when delete invalid keystore file. |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1401](https://issues.apache.org/jira/browse/RANGER-1401) | Add consolidated db schema script for SQLServer DB flavor |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1408](https://issues.apache.org/jira/browse/RANGER-1408) | When the error occurs, the system does not record the error message in RangerServiceService class |  Trivial | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1348](https://issues.apache.org/jira/browse/RANGER-1348) | Atlas Autocompletion not working properly |  Major | admin | Colm O hEigeartaigh | Qiang Zhang |
| [RANGER-1420](https://issues.apache.org/jira/browse/RANGER-1420) | Some error log information in ranger policy module |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1418](https://issues.apache.org/jira/browse/RANGER-1418) | In yarn plugin, there are some wrong logs. |  Trivial | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1405](https://issues.apache.org/jira/browse/RANGER-1405) | groups are not shown if exact user name is passed in search filter |  Major | Ranger | Deepak Sharma | Mehul Parikh |
| [RANGER-1424](https://issues.apache.org/jira/browse/RANGER-1424) | Log should be changed to info level |  Minor | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1431](https://issues.apache.org/jira/browse/RANGER-1431) | Do some code improvement in Java method AuthSessionService.mapEntityToViewBean |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1434](https://issues.apache.org/jira/browse/RANGER-1434) | Enable Group Search First causes issues when "Enable Group Sync" is disabled |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1432](https://issues.apache.org/jira/browse/RANGER-1432) | Do some code improvement in UserMgr.java |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1439](https://issues.apache.org/jira/browse/RANGER-1439) | Spelling error for "fileStats" in the hdfs-agent\\src\\main\\java\\org\\apache\\ranger\\services\\hdfs\\client\\HdfsClient.java. "fileStatus" instead of "fileStats". |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1435](https://issues.apache.org/jira/browse/RANGER-1435) | Allow different files to be specified for unix based usersync |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1430](https://issues.apache.org/jira/browse/RANGER-1430) | There are some duplicate keys in some js files |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1444](https://issues.apache.org/jira/browse/RANGER-1444) | Do some code improvement in security admin module |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1404](https://issues.apache.org/jira/browse/RANGER-1404) | Few HIVERangerAuthorizerTest UT fails with Permission denied intermittently |  Major | plugins | Yesha Vora | Qiang Zhang |
| [RANGER-1402](https://issues.apache.org/jira/browse/RANGER-1402) | NPE if there is a problem with the HiveClient driverClassName |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1354](https://issues.apache.org/jira/browse/RANGER-1354) | Error on Atlas plugin install |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1446](https://issues.apache.org/jira/browse/RANGER-1446) | Ranger Solr Plugin does not work when the collection list in the request is empty |  Critical | plugins | Yan | Yan |
| [RANGER-1447](https://issues.apache.org/jira/browse/RANGER-1447) | Enable ranger-hbase-plugin failed after execute enable-hbase-plugin.sh |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1321](https://issues.apache.org/jira/browse/RANGER-1321) | Provide a mechanism to create service-specific default policies |  Major | Ranger | Ramesh Mani | Abhay Kulkarni |
| [RANGER-1437](https://issues.apache.org/jira/browse/RANGER-1437) | Disable optimization for tag download to include only tags that have policies |  Minor | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1451](https://issues.apache.org/jira/browse/RANGER-1451) | Incorrect error message for hadoop security authentication |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1460](https://issues.apache.org/jira/browse/RANGER-1460) | Hdfs authorizer uses hadoop-acls to allow access with one allowing tag policy and no resource policy |  Major | plugins | Deepak Sharma | Abhay Kulkarni |
| [RANGER-1458](https://issues.apache.org/jira/browse/RANGER-1458) | Starting Yarn failed after installing Ranger Yarn Plugin |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1463](https://issues.apache.org/jira/browse/RANGER-1463) | Good coding practices per static code analysis |  Minor | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1462](https://issues.apache.org/jira/browse/RANGER-1462) | Fix the spelling error in Solr Authorization |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1456](https://issues.apache.org/jira/browse/RANGER-1456) | Fix the spelling error in HDFS plugin |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1461](https://issues.apache.org/jira/browse/RANGER-1461) | The printing error of callback in ConsolePromptCallbackHandler |  Minor | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1415](https://issues.apache.org/jira/browse/RANGER-1415) | The ranger can be opened when the user enters http://localhost:6080/ in the browser address bar. But request policy from hadoop to ranger will failed after installing hdfs plugin if we set POLICY\_MGR\_URL equal to http://localhost:6080/. |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1465](https://issues.apache.org/jira/browse/RANGER-1465) | Parse properties file error for kms |  Major | kms | peng.jianhua | peng.jianhua |
| [RANGER-1452](https://issues.apache.org/jira/browse/RANGER-1452) | The install program used SOLR\_RANGER\_COLLECTION attribute value in Install and Configure Solr for Ranger Audits. But there is no corresponding setting in install.properties. So the user can only used fixed value during installing. |  Minor | admin | peng.jianhua |  |
| [RANGER-1449](https://issues.apache.org/jira/browse/RANGER-1449) | There is logical inconsistency for RANGER\_PID\_DIR\_PATH in security admin |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1472](https://issues.apache.org/jira/browse/RANGER-1472) | tag downloads fail with error "XXServiceResourceElement.findTaggedResourcesInServiceId" |  Major | Ranger | Deepak Sharma | Abhay Kulkarni |
| [RANGER-1470](https://issues.apache.org/jira/browse/RANGER-1470) | The logic of the solr\_for\_audit\_setup installer parsing the properites file is inconsistent with the other installers. It treated these attributes as environment variable. There are security risks in the solr\_for\_audit\_setup installer. |  Major | admin | peng.jianhua | peng.jianhua |
| [RANGER-1469](https://issues.apache.org/jira/browse/RANGER-1469) | The user group would be duplicate created if the user group existed during installing Ranger Policy Admin. |  Trivial | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1392](https://issues.apache.org/jira/browse/RANGER-1392) | Hive test connection is failing even if jdbc.url configured is correct in Ranger 0.7.0 |  Major | Ranger | Deepak Sharma | Sailaja Polavarapu |
| [RANGER-1476](https://issues.apache.org/jira/browse/RANGER-1476) | External users not editable through Ranger UI |  Critical | Ranger | Anuja Leekha | Nitin Galave |
| [RANGER-1467](https://issues.apache.org/jira/browse/RANGER-1467) | The password is not set after the user is created by install program during installing Ranger Policy Admin. We should set password like db user. |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1473](https://issues.apache.org/jira/browse/RANGER-1473) | There is invalid clause in the installer for Install and Configure Solr for Ranger Audits |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1477](https://issues.apache.org/jira/browse/RANGER-1477) | 'show databases' fails with access-denied when user doesn't have access to some of the databases |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1427](https://issues.apache.org/jira/browse/RANGER-1427) | Remove dead code from XResourceService |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1474](https://issues.apache.org/jira/browse/RANGER-1474) | On SP12, hive policy page opens up with UDF as default under resources, rather than table. |  Major | Ranger | Anuja Leekha | Nitin Galave |
| [RANGER-1479](https://issues.apache.org/jira/browse/RANGER-1479) | Plugins couldnt load settings xml files from the classpath, if they are inside a jar |  Major | plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1489](https://issues.apache.org/jira/browse/RANGER-1489) | Solr plugin fails to get client address |  Minor | plugins | Yan | Yan |
| [RANGER-1482](https://issues.apache.org/jira/browse/RANGER-1482) | 'Ranger KMS' repo is not getting created in manual installation |  Major | Ranger | Mehul Parikh | Abhay Kulkarni |
| [RANGER-1484](https://issues.apache.org/jira/browse/RANGER-1484) | RangerUI: Escape of policy condition text entered in the policy form. |  Major | Ranger | Madhan Neethiraj | Nitin Galave |
| [RANGER-1455](https://issues.apache.org/jira/browse/RANGER-1455) | Incorrect conf dir in scripts for Hadoop |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1369](https://issues.apache.org/jira/browse/RANGER-1369) | There is invalid group error when install Solr for Ranger Audits |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1506](https://issues.apache.org/jira/browse/RANGER-1506) | Some directorys were created repeatedly in code segment that all ownership is given to $SOLR\_USER. |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1509](https://issues.apache.org/jira/browse/RANGER-1509) | Add version number to ldapconfigcheck.jar |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1511](https://issues.apache.org/jira/browse/RANGER-1511) | Different global variable saved the same configuration file path in unixauthservice. The code logic is inconsistent. |  Major | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1445](https://issues.apache.org/jira/browse/RANGER-1445) | Incorrect error message for searching in Audit page |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1515](https://issues.apache.org/jira/browse/RANGER-1515) | Run updatepolicymgrpassword.sh and updatepolicymgrpassword.py to update policy mgr password failed. |  Major | usersync | peng.jianhua | peng.jianhua |
| [RANGER-1517](https://issues.apache.org/jira/browse/RANGER-1517) | In RangerBasePlugin.java  LOG.debug spelling error |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1364](https://issues.apache.org/jira/browse/RANGER-1364) | MySQLPLRunner take wrong start index when traverse the resultSet metadata |  Major | admin | zhangxiong |  |
| [RANGER-1520](https://issues.apache.org/jira/browse/RANGER-1520) | Some codes do not follow the python language development rules in usersync. They are messy. |  Minor | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1530](https://issues.apache.org/jira/browse/RANGER-1530) | NPE in HadoopConfigHolder |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1531](https://issues.apache.org/jira/browse/RANGER-1531) | Good coding practice while parsing XML documents in Ranger |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1538](https://issues.apache.org/jira/browse/RANGER-1538) | Duplicated code,in  AtlasClient class for client = Client.create(); |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1536](https://issues.apache.org/jira/browse/RANGER-1536) | Error information in the printed logs |  Minor | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1490](https://issues.apache.org/jira/browse/RANGER-1490) | Increase size of sort\_order column of x\_policy\_resource\_map |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1535](https://issues.apache.org/jira/browse/RANGER-1535) | Add tag attributes to audit log record |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1522](https://issues.apache.org/jira/browse/RANGER-1522) | Update consolidated db schema script for SQLServer DB flavor to reduce execution time |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1499](https://issues.apache.org/jira/browse/RANGER-1499) | Upgrade Tomcat version |  Major | Ranger | Velmurugan Periasamy | bhavik patel |
| [RANGER-1550](https://issues.apache.org/jira/browse/RANGER-1550) | HDFS test connection and resource lookup failing |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1553](https://issues.apache.org/jira/browse/RANGER-1553) | Audit log record for 'show databases' hive command contains all tags |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1556](https://issues.apache.org/jira/browse/RANGER-1556) | Provide keyadmin user with privileges to read ranger kms audits |  Major | Ranger | Ankita Sinha | Ankita Sinha |
| [RANGER-1475](https://issues.apache.org/jira/browse/RANGER-1475) | some users missed to be sync if they are syncd from openldap If deltasync is enabled |  Major | Ranger | Deepak Sharma | Deepak Sharma |
| [RANGER-1557](https://issues.apache.org/jira/browse/RANGER-1557) | Add Nifi as default in supported component list |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1500](https://issues.apache.org/jira/browse/RANGER-1500) | Add support to exclude/disable SSL protocols. |  Critical | Ranger | Ayub Pathan | bhavik patel |
| [RANGER-1560](https://issues.apache.org/jira/browse/RANGER-1560) | Code Improvement To Follow Best Practices |  Major | Ranger | Ankita Sinha | Ankita Sinha |
| [RANGER-1544](https://issues.apache.org/jira/browse/RANGER-1544) | Misaligned input boxes and cleanup on Reports Search |  Trivial | admin | Anna Shaverdian | Anna Shaverdian |
| [RANGER-1554](https://issues.apache.org/jira/browse/RANGER-1554) | Ranger AD search filter is not get honored when logging into admin UI |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1562](https://issues.apache.org/jira/browse/RANGER-1562) | HDFS test connection is failing due to null pointer exception |  Major | Ranger | Deepak Sharma | Ankita Sinha |
| [RANGER-1558](https://issues.apache.org/jira/browse/RANGER-1558) | UI Hints Popover Hides after mouse moves away from small Info I icon |  Trivial | admin | Anna Shaverdian | Anna Shaverdian |
| [RANGER-1564](https://issues.apache.org/jira/browse/RANGER-1564) | The SQL\_CONNECTOR\_JAR properity had been deleted in RANGER-1387. The invalid code should also be deleted to keep the code consistent. |  Minor | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1547](https://issues.apache.org/jira/browse/RANGER-1547) | The XmlConfigChanger does not have any error messages when some exceptions occur. |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1571](https://issues.apache.org/jira/browse/RANGER-1571) | Code Improvement To Follow Best Practices |  Major | Ranger | bhavik patel | bhavik patel |
| [RANGER-1574](https://issues.apache.org/jira/browse/RANGER-1574) | The XAAUDIT.DB.PASSWORD property had been deleted in RANGER-900. The related redundant code should be deleted for plugin installer. |  Minor | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1576](https://issues.apache.org/jira/browse/RANGER-1576) | Show attribute values to tags column in audit log |  Major | admin, Ranger | Gautam Borad | Gautam Borad |
| [RANGER-1577](https://issues.apache.org/jira/browse/RANGER-1577) | Update Ranger-WASB servicedefinition to remove Execute permission and disallow policies with a trailing slash |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-1579](https://issues.apache.org/jira/browse/RANGER-1579) | WASB policy edit page is not opening |  Major | Ranger | Deepak Sharma | Nitin Galave |
| [RANGER-1581](https://issues.apache.org/jira/browse/RANGER-1581) | Ranger plugins need to support additional date formats for tag attribute values |  Major | plugins | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1586](https://issues.apache.org/jira/browse/RANGER-1586) | There is "cannot resolve symbol 'serviceName'" error in ServiceSolrClient class. |  Trivial | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1411](https://issues.apache.org/jira/browse/RANGER-1411) | Permissions tab pages display are not reasonable |  Major | admin, Ranger | Haihui Xu | Haihui Xu |
| [RANGER-1545](https://issues.apache.org/jira/browse/RANGER-1545) | The associated AUDIT database configuration has been removed in enable\_hive\_plugin.sh. But the corresponding code has not been deleted. We should remove redundant code to keep consistency. |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1589](https://issues.apache.org/jira/browse/RANGER-1589) | Ranger build fails when python3 is the default |  Minor | Ranger | Denes Bodo |  |
| [RANGER-1591](https://issues.apache.org/jira/browse/RANGER-1591) | The log is inconsistent with the code in ServiceDBStore class,update it to ensure their consistency. |  Trivial | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1583](https://issues.apache.org/jira/browse/RANGER-1583) | Test connections are failing for plugins after upgrade |  Major | Ranger | bhavik patel | bhavik patel |
| [RANGER-1596](https://issues.apache.org/jira/browse/RANGER-1596) | The log name is incorrect in Log4JAuditDestination.java. |  Minor | audit | Qiang Zhang | Qiang Zhang |
| [RANGER-1592](https://issues.apache.org/jira/browse/RANGER-1592) | Do code improvement for static  fields and Log  in the  AtlasClient.java |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1601](https://issues.apache.org/jira/browse/RANGER-1601) | The log name is incorrect in ValuePrinter.java |  Trivial | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1603](https://issues.apache.org/jira/browse/RANGER-1603) | Code improvement as recommended by good coding practices |  Major | plugins | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1599](https://issues.apache.org/jira/browse/RANGER-1599) | Different developers use different log directories in the Ranger Admin installation script. Its processing logic is chaotic. We should  optimize this logic. |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1602](https://issues.apache.org/jira/browse/RANGER-1602) | Include / Exclude toggle not working for same level resources |  Major | admin, Ranger | Gautam Borad | Nitin Galave |
| [RANGER-1607](https://issues.apache.org/jira/browse/RANGER-1607) | Ranger service check failed on SLES11.3 cluster with sslv3 alert handshake failure |  Major | Ranger | Ankita Sinha | Ankita Sinha |
| [RANGER-1605](https://issues.apache.org/jira/browse/RANGER-1605) | These invalid codes that were copied have not been deleted in db\_setup.py for the Ranger admin |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1611](https://issues.apache.org/jira/browse/RANGER-1611) | The init\_logfiles function had been removed in RANGER-1599. The segment code that calls the init\_logfiles function should also be removed in setup.sh for Ranger Admin. |  Major | admin | peng.jianhua | peng.jianhua |
| [RANGER-1584](https://issues.apache.org/jira/browse/RANGER-1584) | Allow tagsync to support log directory from Ambari configuration |  Minor | tagsync | Yujie Li | Yujie Li |
| [RANGER-1617](https://issues.apache.org/jira/browse/RANGER-1617) | The Ranger build failure in windows environment |  Major | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1608](https://issues.apache.org/jira/browse/RANGER-1608) | SOLR resource lookup fails with basic auth |  Major | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1612](https://issues.apache.org/jira/browse/RANGER-1612) | When servicedef is accessed, one of the properties "enableDenyAndExceptionsInPolicies" is returned as "false" if there is no value set for it. |  Major | Ranger | Anuja Leekha | Pradeep Agrawal |
| [RANGER-1618](https://issues.apache.org/jira/browse/RANGER-1618) | PasswordUtil is not thread-safe |  Major | plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1620](https://issues.apache.org/jira/browse/RANGER-1620) | Fix kafka-ranger-env.sh script to not throw error when it is sourced from bash |  Critical | plugins | Gautam Borad | Gautam Borad |
| [RANGER-1619](https://issues.apache.org/jira/browse/RANGER-1619) | Ranger Hive Plugin fails to check the URI when the location doesn't exist |  Major | Ranger | Ramesh Mani | Madhan Neethiraj |
| [RANGER-1481](https://issues.apache.org/jira/browse/RANGER-1481) | Capture cluster name in ranger audit info |  Major | Ranger | bhavik patel | bhavik patel |
| [RANGER-1622](https://issues.apache.org/jira/browse/RANGER-1622) | Error installing Knox plugin using KNOX\_HOME |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1628](https://issues.apache.org/jira/browse/RANGER-1628) | Good coding practice suggested by static code analysis |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1631](https://issues.apache.org/jira/browse/RANGER-1631) | create temp function failing with permission issues |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-1630](https://issues.apache.org/jira/browse/RANGER-1630) | StormClient doesn't decrypt password |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1621](https://issues.apache.org/jira/browse/RANGER-1621) | Fix knox pom to pick up base knox version |  Trivial | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1600](https://issues.apache.org/jira/browse/RANGER-1600) | In install.properties, I configured the testusr user and the testgroup groups that not exist in system. The error “chown: invalid user: testusr:testgroup” occured during installed the hbase plugin. |  Major | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1625](https://issues.apache.org/jira/browse/RANGER-1625) | Upgrade SOLR dependency to 5.5.4 |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1604](https://issues.apache.org/jira/browse/RANGER-1604) | DB based auditing had been removed in RANGER-900. But some configurations and codes are not removed accordingly in Ranger Admin. It often makes the user feel confused such as RANGER-1286. |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1582](https://issues.apache.org/jira/browse/RANGER-1582) | Support KNOX SSO Token based authentication on Ranger REST API calls |  Major | Ranger | Ankita Sinha | Ankita Sinha |
| [RANGER-1636](https://issues.apache.org/jira/browse/RANGER-1636) | Remove the pmd check error |  Minor | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1640](https://issues.apache.org/jira/browse/RANGER-1640) | HBase Test Connection does not work when creating a service |  Major | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1641](https://issues.apache.org/jira/browse/RANGER-1641) | Like security admin and usersync, the kms installer should chech whether the user group exists before creating the user group. |  Major | kms | Qiang Zhang | Qiang Zhang |
| [RANGER-1555](https://issues.apache.org/jira/browse/RANGER-1555) | Ranger UI : Audit Menu-\> Admin tab diff view pop-up does not come up. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1642](https://issues.apache.org/jira/browse/RANGER-1642) | Policies listed on 2nd page and onwards of Policy Landing page don't reflect any edits on them |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1648](https://issues.apache.org/jira/browse/RANGER-1648) | Ranger Kafka Plugin now should use the Short name from Kafka Session Object |  Major | plugins, Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-1652](https://issues.apache.org/jira/browse/RANGER-1652) | Clean invalid code for kms installer to improve code clarity and execution efficiency. |  Minor | kms | peng.jianhua | peng.jianhua |
| [RANGER-1657](https://issues.apache.org/jira/browse/RANGER-1657) | Like ranger admin and usersync, the password should be set after the user is created by installer during installing kms. |  Major | kms | Qiang Zhang | Qiang Zhang |
| [RANGER-1646](https://issues.apache.org/jira/browse/RANGER-1646) | Error messages in RangerRESTClient aren't helpful |  Major | plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1658](https://issues.apache.org/jira/browse/RANGER-1658) | Solr  gives NPE while printing the AuthorizationContext in INFO and DEBUG log |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-813](https://issues.apache.org/jira/browse/RANGER-813) | Script to install Solr for Ranger Audits doesn't work in Suse |  Major | . | Don Bosco Durai | Don Bosco Durai |
| [RANGER-1653](https://issues.apache.org/jira/browse/RANGER-1653) | Proxying Ranger UI does not work with Ranger-KnoxSSO |  Major | Ranger | Ankita Sinha | Ankita Sinha |
| [RANGER-1671](https://issues.apache.org/jira/browse/RANGER-1671) | The admin service can't audit to Solr using Basic Authentication |  Major | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1659](https://issues.apache.org/jira/browse/RANGER-1659) | Similar to RANGER-1599, Different developers use different log directories in the kms installation script. Its processing logic is chaotic. We should optimize this logic. |  Minor | kms | peng.jianhua | peng.jianhua |
| [RANGER-1438](https://issues.apache.org/jira/browse/RANGER-1438) | Useless configuration in unixauthservice pom.xml lead to project compiler error in eclipse |  Minor | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1639](https://issues.apache.org/jira/browse/RANGER-1639) | Ranger KMS should validate key name before importing into DB |  Major | Ranger | Ankita Sinha | Ankita Sinha |
| [RANGER-1666](https://issues.apache.org/jira/browse/RANGER-1666) | Ranger UI should consider "recursiveSupported" attribute value at each resource level to Store the Policy |  Critical | Ranger | Ramesh Mani | Nitin Galave |
| [RANGER-1683](https://issues.apache.org/jira/browse/RANGER-1683) | Fix the failing Kerberos tests on Jenkins |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1679](https://issues.apache.org/jira/browse/RANGER-1679) | Export Policy not working when Knox proxy is Enabled |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1689](https://issues.apache.org/jira/browse/RANGER-1689) | Add support for defining recursive policies for WASB service def |  Major | Ranger | Ramesh Mani |  |
| [RANGER-1686](https://issues.apache.org/jira/browse/RANGER-1686) | Log file name format of usersync and security admin should be consistent. |  Minor | usersync | peng.jianhua | peng.jianhua |
| [RANGER-1688](https://issues.apache.org/jira/browse/RANGER-1688) | The version file did not exist in ranger-1.0.0-SNAPSHOT-kms.tar.gz. The result was that the VERSION variable can only get a fixed 0.5.0 value when installed ranger kms. |  Major | kms | peng.jianhua | peng.jianhua |
| [RANGER-1638](https://issues.apache.org/jira/browse/RANGER-1638) | Improve the password validation from Ranger API |  Major | admin | Mehul Parikh | Ankita Sinha |
| [RANGER-1696](https://issues.apache.org/jira/browse/RANGER-1696) | Request to get all policies for hive or hbase service-type does not include policies that apply to specific child resource(such as table in hive/column family in hbase) |  Major | Ranger | Deepak Sharma | Abhay Kulkarni |
| [RANGER-1709](https://issues.apache.org/jira/browse/RANGER-1709) | kms test case write logs to log file |  Minor | kms | peng.jianhua | peng.jianhua |
| [RANGER-1690](https://issues.apache.org/jira/browse/RANGER-1690) | Ranger usersync created error users. Ranger usersync got System Virtual User Group Name instead of real group name when built the unix user list. |  Major | usersync | peng.jianhua | Ankita Sinha |
| [RANGER-1714](https://issues.apache.org/jira/browse/RANGER-1714) | Disable dynamic sorting of policies when trie pre-filter is enabled |  Major | plugins | Madhan Neethiraj |  |
| [RANGER-1713](https://issues.apache.org/jira/browse/RANGER-1713) | Hive testConnection failed after used ldap authentication in Hive. |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1502](https://issues.apache.org/jira/browse/RANGER-1502) | Solr shutdown does not cause the audit log file to be flushed and closed. |  Major | audit, plugins | Yan | Yan |
| [RANGER-1501](https://issues.apache.org/jira/browse/RANGER-1501) | Audit Flush to HDFS does not actually cause the audit logs to be flushed to HDFS |  Major | audit | Yan | Yan |
| [RANGER-1708](https://issues.apache.org/jira/browse/RANGER-1708) | Remove tag services from service type and service name filters under Access Audit. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1723](https://issues.apache.org/jira/browse/RANGER-1723) | The Ranger doesn't support solr6. In the HttpSolrClient class of solr6, the setMaxRetries function has been removed, which causes ranger to fail to compile. |  Major | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1649](https://issues.apache.org/jira/browse/RANGER-1649) | Ranger Solr Plugin fails to refresh policy due to failure in ticket renewal mechanism |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-1734](https://issues.apache.org/jira/browse/RANGER-1734) | Close the connection in the HIVERangerAuthorizerTest |  Trivial | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1733](https://issues.apache.org/jira/browse/RANGER-1733) | Duplicate RangerDaoManager fields in the services |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1661](https://issues.apache.org/jira/browse/RANGER-1661) | Default policy for KMS audits is pointing to incorrect location |  Major | Ranger | Ali Bajwa |  |
| [RANGER-1676](https://issues.apache.org/jira/browse/RANGER-1676) | Policy Details popup from Access audit page not displaying details of masking policy |  Major | Ranger | suja s | Nitin Galave |
| [RANGER-1724](https://issues.apache.org/jira/browse/RANGER-1724) | On Report listing page for masking/row filter policies show only mask/row filter conditions |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1632](https://issues.apache.org/jira/browse/RANGER-1632) | Users are not sync'd when sAMAccountName is different than CN associated with groups |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1740](https://issues.apache.org/jira/browse/RANGER-1740) | There is a exception when the ranger\_credential\_helper.py was executed. |  Major | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1741](https://issues.apache.org/jira/browse/RANGER-1741) | The initd ran repeatedly when ranger-usersync-services.sh was running |  Major | usersync | peng.jianhua | peng.jianhua |
| [RANGER-1743](https://issues.apache.org/jira/browse/RANGER-1743) | Comment lines have not been filtered out when the populate\_global\_dict function parsed install.properties in security-admin/scripts/restrict\_permissions.py. Like RANGER-1284, we should modify it. |  Major | admin | peng.jianhua | peng.jianhua |
| [RANGER-1742](https://issues.apache.org/jira/browse/RANGER-1742) | Like setup.sh, the set\_globals.sh should check whether the user group exists before created user group in security admin. |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1747](https://issues.apache.org/jira/browse/RANGER-1747) | Usersync: LDAP Paged results seems to be ignored in Ranger |  Major | Ranger, usersync | Endre Kovacs | Sailaja Polavarapu |
| [RANGER-1744](https://issues.apache.org/jira/browse/RANGER-1744) | Similar to RANGER-1541, the assignment logic is inconsistent for the value of the RANGER\_ADMIN\_HOME variable in changeusernameutil.py and changepasswordutil.py. It will cause a serious failure. |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1746](https://issues.apache.org/jira/browse/RANGER-1746) | The prompt message is incorrect when test hdfs connection and check 'dfs.ha.namenodes.[nameservice ID]' to be mandatory. |  Minor | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1751](https://issues.apache.org/jira/browse/RANGER-1751) | The importJCEKSKeys.sh and DBMK2HSM.sh will throw an exception when the JAVA\_HOME is equal to null. |  Minor | kms | peng.jianhua | peng.jianhua |
| [RANGER-1726](https://issues.apache.org/jira/browse/RANGER-1726) | Users are not getting deleted when Knox proxy is Enabled. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1753](https://issues.apache.org/jira/browse/RANGER-1753) | Fix error message spelling mistake in XKeyREST.java |  Trivial | kms | Willie Engelbrecht |  |
| [RANGER-1755](https://issues.apache.org/jira/browse/RANGER-1755) | hbase system tablename is old version in ranger-hbase-plugin |  Major | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1754](https://issues.apache.org/jira/browse/RANGER-1754) | group deletion message is wrong , it give User deleted successfully instead of group |  Major | admin | Deepak Sharma | Deepak Sharma |
| [RANGER-1763](https://issues.apache.org/jira/browse/RANGER-1763) | The logic of the expansion button in the Edit Policy page is error. The user must click twice to collapse Conditions. |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1752](https://issues.apache.org/jira/browse/RANGER-1752) | When "dfs.nameservices" configures multiple nameservice id and then test hdfs connection, verifying "dfs.client.failover.proxy.provider.[dfs.nameservices]" is incorrect |  Minor | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1771](https://issues.apache.org/jira/browse/RANGER-1771) | Improve performance of merging lists of policyEvaluators returned by Trie |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1769](https://issues.apache.org/jira/browse/RANGER-1769) | The update\_property.py should exit the loop to improve execution efficiency once the attribute value is set. |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1750](https://issues.apache.org/jira/browse/RANGER-1750) | In Nifi default policy is getting created with policyitem without any user/group but permission set for the same. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1732](https://issues.apache.org/jira/browse/RANGER-1732) | Collection added to itself |  Trivial | audit | JC | peng.jianhua |
| [RANGER-1777](https://issues.apache.org/jira/browse/RANGER-1777) | The Ranger can not refresh screen and hide child menu when user clicks menu |  Major | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1776](https://issues.apache.org/jira/browse/RANGER-1776) | ranger-plugin-audit always show error. |  Major | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1651](https://issues.apache.org/jira/browse/RANGER-1651) | Improve Ranger and Ranger KMS REST Api documentation |  Major | admin | Mehul Parikh | Mehul Parikh |
| [RANGER-1682](https://issues.apache.org/jira/browse/RANGER-1682) | Clicking on export service after session timeout gets stuck indefinitely |  Major | Ranger | Aditya Sirna | Nitin Galave |
| [RANGER-1730](https://issues.apache.org/jira/browse/RANGER-1730) | Utility script that will list the users with a given role |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-1786](https://issues.apache.org/jira/browse/RANGER-1786) | Need warning on external user role change. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1787](https://issues.apache.org/jira/browse/RANGER-1787) | User has to fill up all the allow and deny conditions items to create a knox policy. |  Minor | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1772](https://issues.apache.org/jira/browse/RANGER-1772) | EmbeddedServiceDefsUtil.java should print exception info in try-catch{} |  Trivial | Ranger | peng.jianhua | WangYuan |
| [RANGER-1798](https://issues.apache.org/jira/browse/RANGER-1798) |  Here is a error in getTableList() when get table-list info for HiveClient class |  Minor | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1794](https://issues.apache.org/jira/browse/RANGER-1794) | The warning information is incorrect in getRangerServiceByService of ServiceMgr class |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1803](https://issues.apache.org/jira/browse/RANGER-1803) | Json may be analysis a null value at tests[] for test\_resourcematcher\_default.json |  Minor | Ranger | WangYuan | WangYuan |
| [RANGER-1804](https://issues.apache.org/jira/browse/RANGER-1804) | The exception information is error when judge password for RangerKeyStoreProvider class |  Minor | Ranger | WangYuan | WangYuan |
| [RANGER-1767](https://issues.apache.org/jira/browse/RANGER-1767) | Hive tests fail if Hive is already running on the machine |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1800](https://issues.apache.org/jira/browse/RANGER-1800) | Usersync fails to update users and groups during incremental sync with nested groups and group first search enabled |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1801](https://issues.apache.org/jira/browse/RANGER-1801) | group user mapping updates to ranger admin fail when the mapping is already existed in ranger DB. |  Major | admin, Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1748](https://issues.apache.org/jira/browse/RANGER-1748) | User is unable to update existing policy while importing policy from file |  Major | Ranger | bhavik patel | bhavik patel |
| [RANGER-1727](https://issues.apache.org/jira/browse/RANGER-1727) | Ranger allows user to change an external user's password with 'null' old password |  Major | Ranger | Pradeep Agrawal | Fatima Amjad Khan |
| [RANGER-1802](https://issues.apache.org/jira/browse/RANGER-1802) | Here is a error in getStatusResponse() when post data exception for AtlasClient class |  Minor | plugins | Qiang Zhang | peng.jianhua |
| [RANGER-1790](https://issues.apache.org/jira/browse/RANGER-1790) | From the ease of use point of view, Select / Deselect All and other checkbox should be associated in add/edit permissions pop window. |  Minor | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1812](https://issues.apache.org/jira/browse/RANGER-1812) | Object HTableDescriptor can be used directly at getTableList() method for HBaseClient class |  Minor | plugins, Ranger | WangYuan | WangYuan |
| [RANGER-1779](https://issues.apache.org/jira/browse/RANGER-1779) | last resource gets duplicated during update policy if policy is created through public api rest call |  Major | admin | Deepak Sharma | Nikhil Purbhe |
| [RANGER-1756](https://issues.apache.org/jira/browse/RANGER-1756) | Handle role related restrictions for users having User role |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1765](https://issues.apache.org/jira/browse/RANGER-1765) | Add unique key constraint in x\_group and x\_group\_users table |  Critical | Ranger | bhavik patel | bhavik patel |
| [RANGER-1814](https://issues.apache.org/jira/browse/RANGER-1814) | Static code analyser suggest to ensure closing Reader |  Minor | plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1818](https://issues.apache.org/jira/browse/RANGER-1818) | Good coding practice in Ranger recommended by static code analysis |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-1819](https://issues.apache.org/jira/browse/RANGER-1819) | Not able to delete group that is having special character(ampersand) from ranger admin |  Major | Ranger | Deepak Sharma | Nitin Galave |
| [RANGER-1816](https://issues.apache.org/jira/browse/RANGER-1816) | When the error occurs, the system does not record the error message |  Trivial | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1813](https://issues.apache.org/jira/browse/RANGER-1813) | The drop-down box name "database" is not showing full when edit hive policy |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-1815](https://issues.apache.org/jira/browse/RANGER-1815) | Fix invalid code and error logic for the BaseDao class |  Minor | audit | peng.jianhua | peng.jianhua |
| [RANGER-1826](https://issues.apache.org/jira/browse/RANGER-1826) | Import of bulk policies is causing OOM and Apparent Deadlock |  Major | Ranger | Deepak Sharma | Pradeep Agrawal |
| [RANGER-1176](https://issues.apache.org/jira/browse/RANGER-1176) | Ranger admin does not allow to create / update a policy with only delegate admin permission |  Minor | admin | Vipin Rathor | Nitin Galave |
| [RANGER-1836](https://issues.apache.org/jira/browse/RANGER-1836) | LOG class is imported error for RangerServiceService class |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1835](https://issues.apache.org/jira/browse/RANGER-1835) | The installer of the security admin should not repeatedly add a user to the same group. |  Minor | admin | peng.jianhua | peng.jianhua |
| [RANGER-1832](https://issues.apache.org/jira/browse/RANGER-1832) | Export REST API should return exact matching results if polResource param is provided |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1838](https://issues.apache.org/jira/browse/RANGER-1838) | Refactor Jisql dependencies |  Major | Ranger | Velmurugan Periasamy | Pradeep Agrawal |
| [RANGER-1820](https://issues.apache.org/jira/browse/RANGER-1820) | Duplicate entries should be deleted before creation of unique index on x\_group and x\_group\_users table |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1853](https://issues.apache.org/jira/browse/RANGER-1853) | Masking functions based on custom masking of string types fails to unescape quotes properly. |  Major | Ranger | Srikanth Venkat | Nitin Galave |
| [RANGER-1828](https://issues.apache.org/jira/browse/RANGER-1828) | Good coding practice-add additional headers in ranger |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1857](https://issues.apache.org/jira/browse/RANGER-1857) | The value of RANGER\_KMS\_HOME logic is not correct in dba\_script.py and db\_setup.py, Like db\_setup.py in admin, we should optimize them. |  Minor | kms | peng.jianhua | peng.jianhua |
| [RANGER-1862](https://issues.apache.org/jira/browse/RANGER-1862) | generalName.get(1)  cause IndexOutOfBoundsException in NiFiClient |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1863](https://issues.apache.org/jira/browse/RANGER-1863) | Optimize the code and keep the code style consistent, remove the invalid code in the RemoteUnixLoginModule class |  Minor | usersync | peng.jianhua | peng.jianhua |
| [RANGER-1870](https://issues.apache.org/jira/browse/RANGER-1870) | Modify the logic for buildUnixUserList and parseMembers  method in UnixUserGroupBuilder class |  Minor | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1876](https://issues.apache.org/jira/browse/RANGER-1876) | Incorrect conf dir location for Yarn install script |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1875](https://issues.apache.org/jira/browse/RANGER-1875) | The installer of the kms should not repeatedly add a user to the same group. |  Minor | kms | peng.jianhua | peng.jianhua |
| [RANGER-1879](https://issues.apache.org/jira/browse/RANGER-1879) | Yarn disable plugin script doesn't work |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1868](https://issues.apache.org/jira/browse/RANGER-1868) | Good coding practice in Ranger recommended by static code analysis |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1884](https://issues.apache.org/jira/browse/RANGER-1884) | Default Policy is not created for Ranger KMS and Tag service |  Critical | Ranger | bhavik patel | bhavik patel |
| [RANGER-1864](https://issues.apache.org/jira/browse/RANGER-1864) | Resources are not rendering correctly in policy create/edit page. |  Major | Ranger | Madhan Neethiraj | Nitin Galave |
| [RANGER-1861](https://issues.apache.org/jira/browse/RANGER-1861) | There are errors when the "ranger-kms start" command was executed. |  Major | kms | peng.jianhua | peng.jianhua |
| [RANGER-1896](https://issues.apache.org/jira/browse/RANGER-1896) |  Remove deprecated extractedCommonCriterias call from the SearchUtil |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1887](https://issues.apache.org/jira/browse/RANGER-1887) |  serviceDef.getResources().get(0).getName(); case IndexOutOfBoundsException in RangerServiceTag.class And  print error in RangerServiceStorm |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1903](https://issues.apache.org/jira/browse/RANGER-1903) | Simplify the maven dependency management of the Hdfs plugin for Ranger. |  Minor | plugins | peng.jianhua | peng.jianhua |
| [RANGER-1901](https://issues.apache.org/jira/browse/RANGER-1901) | Similar to RANGER-1846, the JAVA\_VERSION\_REQUIRED configuration item is invalid in kms installer, we should enable it to control the necessary java version. |  Minor | kms | peng.jianhua | peng.jianhua |
| [RANGER-1914](https://issues.apache.org/jira/browse/RANGER-1914) | Modify crypt\_algo\_array.length to avoid java.lang.ArrayIndexOutOfBoundsException in PasswordUtils.class |  Minor | Ranger | peng.jianhua | peng.jianhua |
| [RANGER-1707](https://issues.apache.org/jira/browse/RANGER-1707) |  Update RangerHdfsAuthorizer for changes in traverse checks since Hadoop 2.8 |  Major | plugins | Zsombor Gegesy | Abhay Kulkarni |
| [RANGER-1898](https://issues.apache.org/jira/browse/RANGER-1898) | Simplify Knox plugin dependency management |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1873](https://issues.apache.org/jira/browse/RANGER-1873) | Fix  property handling in RangerKMSDB |  Major | kms | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1921](https://issues.apache.org/jira/browse/RANGER-1921) | Fix coverity warnings in RangerHdfsAuthorizer |  Major | plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1912](https://issues.apache.org/jira/browse/RANGER-1912) | Ranger setup fails with mariadb/mysql when binary logging is enabled |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1931](https://issues.apache.org/jira/browse/RANGER-1931) | Remove use of maven-shade-plugin from Ranger build scripts |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1933](https://issues.apache.org/jira/browse/RANGER-1933) | Improvement on Ranger-usersync log configuration |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1897](https://issues.apache.org/jira/browse/RANGER-1897) | TagSync should replace use of V1 Atlas APIs with V2 APIs for efficient tag-download from Atlas |  Major | tagsync | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-1781](https://issues.apache.org/jira/browse/RANGER-1781) | RangerUI :Policy create/edit form should display only relevant accesses based on the user-selected resource. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1934](https://issues.apache.org/jira/browse/RANGER-1934) | Optimize the init method in BaseAuditHandler class to avoid ArrayIndexOutOfBoundsException |  Minor | audit | peng.jianhua | peng.jianhua |
| [RANGER-1878](https://issues.apache.org/jira/browse/RANGER-1878) | The exception infomation print error for RangerPolicyServiceBase.java |  Minor | admin, Ranger | WangYuan | WangYuan |
| [RANGER-1944](https://issues.apache.org/jira/browse/RANGER-1944) | Action filter for Admin Audit is not working |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1952](https://issues.apache.org/jira/browse/RANGER-1952) | Allow user's email Address to be blank on emailchange API as per RANGER-978 |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1957](https://issues.apache.org/jira/browse/RANGER-1957) | Ranger Usersync is not syncing users or groups periodically when incremental sync is enabled. |  Major | Ranger, usersync | David Villarreal | Sailaja Polavarapu |
| [RANGER-1825](https://issues.apache.org/jira/browse/RANGER-1825) | Ranger Tagsync is giving  NoClassDefFoundError |  Critical | Ranger | suja s | Nikhil Purbhe |
| [RANGER-1956](https://issues.apache.org/jira/browse/RANGER-1956) | Update CredentialBuilder module |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1960](https://issues.apache.org/jira/browse/RANGER-1960) | HBase auth does not take table namespace into consideration for deleting snapshot |  Major | plugins | Tomas Sokorai |  |
| [RANGER-1962](https://issues.apache.org/jira/browse/RANGER-1962) | Simplify Ranger API for reporting results of access authorization |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1953](https://issues.apache.org/jira/browse/RANGER-1953) | improvement on user-group page listing |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1965](https://issues.apache.org/jira/browse/RANGER-1965) | Prevent NPE on decrypting a null password |  Minor | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1421](https://issues.apache.org/jira/browse/RANGER-1421) | Add tag based authorization tests for the supported components |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1498](https://issues.apache.org/jira/browse/RANGER-1498) | Remove unnecessary mockito stubs |  Major | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1524](https://issues.apache.org/jira/browse/RANGER-1524) | Add tag based authorization tests for Apache Storm |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1594](https://issues.apache.org/jira/browse/RANGER-1594) | Fix HBase tests to work with HBase 1.2.x |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1588](https://issues.apache.org/jira/browse/RANGER-1588) | Simplify Storm Test config |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1580](https://issues.apache.org/jira/browse/RANGER-1580) | Update Kafka tests to work with 0.10.1.1 |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1656](https://issues.apache.org/jira/browse/RANGER-1656) | Add kerberos tests for the Kafka plugin |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1635](https://issues.apache.org/jira/browse/RANGER-1635) | Stop writing keystore files to the home directory |  Trivial | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1663](https://issues.apache.org/jira/browse/RANGER-1663) | Make Kafka GSS test more robust |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1637](https://issues.apache.org/jira/browse/RANGER-1637) | Address coverity errors in the admin tests |  Major | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1770](https://issues.apache.org/jira/browse/RANGER-1770) | Add tests for the Knox plugin |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1842](https://issues.apache.org/jira/browse/RANGER-1842) | Don't catch Throwables in the test code |  Trivial | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1827](https://issues.apache.org/jira/browse/RANGER-1827) | micro benchmark for policy evaluation |  Minor | Ranger | Endre Kovacs | Endre Kovacs |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1493](https://issues.apache.org/jira/browse/RANGER-1493) | Policy engine updates to support tag-based masking policies |  Major | plugins | Madhan Neethiraj | Abhay Kulkarni |
| [RANGER-1494](https://issues.apache.org/jira/browse/RANGER-1494) | Tag service-def updates to support masking policies |  Major | admin | Madhan Neethiraj | Abhay Kulkarni |
| [RANGER-1492](https://issues.apache.org/jira/browse/RANGER-1492) | UI updates to support tag-based masking policies |  Major | admin | Madhan Neethiraj | Nitin Galave |
| [RANGER-1830](https://issues.apache.org/jira/browse/RANGER-1830) | Write unit test for RANGER-1810 |  Minor | plugins | Qiang Zhang | Qiang Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1491](https://issues.apache.org/jira/browse/RANGER-1491) | Automatically map group of external users to Administrator Role |  Major | Ranger | Attila Kanto | bhavik patel |
| [RANGER-1157](https://issues.apache.org/jira/browse/RANGER-1157) | Handle the review suggestions from Josh Elser - during IPMC vote for ranger-0.6.1 (incubating) release |  Major | documentation | Selvamohan Neethiraj | Colm O hEigeartaigh |


