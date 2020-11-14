
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
# Apache 1.5.0 Changelog

## Release 1.2.0 - 2018-12-18



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1421](https://issues.apache.org/jira/browse/KNOX-1421) | Enable OWASP Dependency Check |  Major | Build | Albert Baker | Kevin Risden |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1549](https://issues.apache.org/jira/browse/KNOX-1549) | KnoxSSO should support signing keys per topology |  Major | KnoxSSO | Kevin Risden | Kevin Risden |
| [KNOX-1343](https://issues.apache.org/jira/browse/KNOX-1343) | Support Ganglia for Knox |  Minor | Server | Mert Hocanin | Kevin Risden |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1401](https://issues.apache.org/jira/browse/KNOX-1401) | Add HAL+JSON To the List of JSON Content Types |  Major | . | William Watson |  |
| [KNOX-1112](https://issues.apache.org/jira/browse/KNOX-1112) | KnoxShell support for managing simple descriptors |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-1411](https://issues.apache.org/jira/browse/KNOX-1411) | WEBHBASE service discovery references incorrect property for the port |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-1444](https://issues.apache.org/jira/browse/KNOX-1444) | Upgrade to ASF POM version 21 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1441](https://issues.apache.org/jira/browse/KNOX-1441) | Enable spotbugs for static build checking |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1442](https://issues.apache.org/jira/browse/KNOX-1442) | Enable forbiddenapis for static build checking |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1460](https://issues.apache.org/jira/browse/KNOX-1460) | Zookeeper tests should call close() instead of stop() |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1461](https://issues.apache.org/jira/browse/KNOX-1461) | Remove JRE/JDK 1.7 check introduced by KNOX-769 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1443](https://issues.apache.org/jira/browse/KNOX-1443) | Add checkstyle to enforce coding style |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1440](https://issues.apache.org/jira/browse/KNOX-1440) | WEBHDFS: retry should not be attempted for datanode write failures |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-1464](https://issues.apache.org/jira/browse/KNOX-1464) | Remove explicit guava dependency from gateway-server InstrUtils |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1465](https://issues.apache.org/jira/browse/KNOX-1465) | Remove explicit guava dependency from gateway-provider-ha |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1466](https://issues.apache.org/jira/browse/KNOX-1466) | Remove explicit guava dependency from gateway-provider-rewrite-func-inbound-query-param |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1467](https://issues.apache.org/jira/browse/KNOX-1467) | Remove explicit guava dependency from gateway-provider-security-preauth |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1468](https://issues.apache.org/jira/browse/KNOX-1468) | Remove explicit guava dependency from gateway-service-nifi |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1359](https://issues.apache.org/jira/browse/KNOX-1359) | Disable kerberos debugging by default |  Major | Server | Kevin Minder | Kevin Risden |
| [KNOX-1475](https://issues.apache.org/jira/browse/KNOX-1475) | Bump shrinkwrap dependency versions |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1477](https://issues.apache.org/jira/browse/KNOX-1477) | Bump commons-\* dependency versions |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1478](https://issues.apache.org/jira/browse/KNOX-1478) | Support running checkstyle from submodules |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1479](https://issues.apache.org/jira/browse/KNOX-1479) | Replace Mockito usage with EasyMock |  Major | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1474](https://issues.apache.org/jira/browse/KNOX-1474) | Bump apacheds dependency version to 2.0.0-AM24 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1448](https://issues.apache.org/jira/browse/KNOX-1448) | Maven pom dependency cleanup |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1291](https://issues.apache.org/jira/browse/KNOX-1291) | ssl.include\|exclude.ciphers & ssl.exclude.protocols support comma or pipe separated lists |  Minor | . | Khalid Diriye | Kevin Risden |
| [KNOX-1501](https://issues.apache.org/jira/browse/KNOX-1501) | Upgrade hadoop to 3.1.1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1511](https://issues.apache.org/jira/browse/KNOX-1511) | Enable forbiddenapis commons-io signatures |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1512](https://issues.apache.org/jira/browse/KNOX-1512) | Replace deprecated EasyMock new Capture() calls |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1484](https://issues.apache.org/jira/browse/KNOX-1484) | Bump version dependencies Oct 2018 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1518](https://issues.apache.org/jira/browse/KNOX-1518) | Large HDFS file downloads are incomplete when content is gzipped |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-1521](https://issues.apache.org/jira/browse/KNOX-1521) | Implement UrlRewriteRequestStream methods for performance |  Major | Server | Kevin Risden | Kevin Risden |
| [KNOX-1522](https://issues.apache.org/jira/browse/KNOX-1522) | Add HA support for HadoopAuthProvider |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1528](https://issues.apache.org/jira/browse/KNOX-1528) | Remove hadoop-common dependency from gateway-spi module |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1011](https://issues.apache.org/jira/browse/KNOX-1011) | Add ldap.port system property to configure LDAP demo server port |  Critical | KnoxSSO | Ayub Pathan | Attila Csoma |
| [KNOX-1537](https://issues.apache.org/jira/browse/KNOX-1537) | Cleanup gateway-group no value errors |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1538](https://issues.apache.org/jira/browse/KNOX-1538) | Remove TODO Auto-generated |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-16](https://issues.apache.org/jira/browse/KNOX-16) | Implement IdentityAsserterHttpServletRequestWrapper.ServletInputStreamWrapper methods for performance |  Major | Server | Kevin Minder | Kevin Risden |
| [KNOX-1530](https://issues.apache.org/jira/browse/KNOX-1530) | Improve Gzip Compression Handling Performance |  Critical | . | Kevin Risden | Kevin Risden |
| [KNOX-1544](https://issues.apache.org/jira/browse/KNOX-1544) | KnoxTokenCredentialCollector should not call System.exit() |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-1540](https://issues.apache.org/jira/browse/KNOX-1540) | Use StandardCharsets where possible |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1547](https://issues.apache.org/jira/browse/KNOX-1547) | Add Ability to set the Truststore Location and Password to KnoxShell |  Major | . | Larry McCay | Larry McCay |
| [KNOX-1546](https://issues.apache.org/jira/browse/KNOX-1546) | Fix javadoc errors and warnings |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1545](https://issues.apache.org/jira/browse/KNOX-1545) | KnoxTokenCredentialCollector should expose the type of the collected token |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-1554](https://issues.apache.org/jira/browse/KNOX-1554) | Allow Knox site to be built with JDK 11 |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-1553](https://issues.apache.org/jira/browse/KNOX-1553) | Update documentation to reference org.apache.knox instead of org.apache.hadoop.gateway |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-1555](https://issues.apache.org/jira/browse/KNOX-1555) | Update DOAP file |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1516](https://issues.apache.org/jira/browse/KNOX-1516) | Upgrade Jetty to 9.4.12 |  Blocker | . | Kevin Risden | Kevin Risden |
| [KNOX-1630](https://issues.apache.org/jira/browse/KNOX-1630) | Generate sha256 and sha512 checksums instead of md5 and sha1 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1640](https://issues.apache.org/jira/browse/KNOX-1640) | Documentation improvements |  Major | Site | Lars Francke | Lars Francke |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1415](https://issues.apache.org/jira/browse/KNOX-1415) | Upgrade Jetty to 9.2.25 |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1412](https://issues.apache.org/jira/browse/KNOX-1412) | Failure while executing a \`curl\` command using Content-Type: text/xml" "Content-Encoding: gzip" |  Major | Server | Ernani Pereira de Mattos Junior | Sandeep More |
| [KNOX-1420](https://issues.apache.org/jira/browse/KNOX-1420) | Add app.css path for Zeppelin's style sheet |  Major | Server | Prabhjyot Singh | Prabhjyot Singh |
| [KNOX-1422](https://issues.apache.org/jira/browse/KNOX-1422) | Whitelisting not working as expected for knoxauth redirects |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1424](https://issues.apache.org/jira/browse/KNOX-1424) | knox renaming "app" to "/gateway/ui\_ns1/zeppelin/app" |  Major | Server | Sameer Shaikh |  |
| [KNOX-1417](https://issues.apache.org/jira/browse/KNOX-1417) | Upgrade Bouncy Castle Dependency from Pac4J |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1416](https://issues.apache.org/jira/browse/KNOX-1416) | Upgrade Spring Framework to 4.3.17 |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1434](https://issues.apache.org/jira/browse/KNOX-1434) | Visiting Knox Admin UI forces subsequent requests to other services redirect to HTTPS |  Critical | AdminUI | Vipin Rathor |  |
| [KNOX-1445](https://issues.apache.org/jira/browse/KNOX-1445) | Ensure that gateway-adapter module classes have @Deprecated annotation |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-720](https://issues.apache.org/jira/browse/KNOX-720) | Knox DSL - Ensure that HTTP client is closed on shutdown |  Major | ClientDSL | Marco Battaglia | Kevin Risden |
| [KNOX-1459](https://issues.apache.org/jira/browse/KNOX-1459) | Remove testng assertions |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1093](https://issues.apache.org/jira/browse/KNOX-1093) | KNOX Not Handling safemode state of one of the NameNode In HA state |  Major | Server | Rajesh Chandramohan | Matthew Sharp |
| [KNOX-1436](https://issues.apache.org/jira/browse/KNOX-1436) | AbstractHdfsHaDispatch failoverRequest - Improve Failover Logging |  Minor | . | Matthew Sharp | Matthew Sharp |
| [KNOX-1505](https://issues.apache.org/jira/browse/KNOX-1505) | Knox should close CuratorFramework clients when finished |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1430](https://issues.apache.org/jira/browse/KNOX-1430) | Potential output stream handle leak when copyLarge files in streamResponse |  Major | Server | Guang Yang | Guang Yang |
| [KNOX-1429](https://issues.apache.org/jira/browse/KNOX-1429) | HadoopAuthFilter avoid logging sensitive values |  Major | . | Larry McCay | Kevin Risden |
| [KNOX-1523](https://issues.apache.org/jira/browse/KNOX-1523) | XML parsing cleanup |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1529](https://issues.apache.org/jira/browse/KNOX-1529) | gateway-shell-release doesn't include shaded jar |  Blocker | . | Kevin Risden | Kevin Risden |
| [KNOX-1520](https://issues.apache.org/jira/browse/KNOX-1520) | markbook refers to wrong parent-pom version |  Minor | Site | Lars Francke | Lars Francke |
| [KNOX-1519](https://issues.apache.org/jira/browse/KNOX-1519) | Fix 404s in the documentation |  Trivial | Site | Lars Francke | Lars Francke |
| [KNOX-1152](https://issues.apache.org/jira/browse/KNOX-1152) | Guard Against Missing Subject in Identity Assertion |  Minor | Server | Richard Kellog Jr. | Richard Kellog Jr. |
| [KNOX-1218](https://issues.apache.org/jira/browse/KNOX-1218) | LDAP Group Lookup appears twice in User Guide TOC |  Major | Site | Philip Zampino | Kevin Risden |
| [KNOX-1526](https://issues.apache.org/jira/browse/KNOX-1526) | Upgrade Jetty to 9.2.26 |  Major | . | Larry McCay | Larry McCay |
| [KNOX-1433](https://issues.apache.org/jira/browse/KNOX-1433) | RMHaBaseDispatcher Class Cleanup - SafeModeException |  Minor | . | Matthew Sharp | Kevin Risden |
| [KNOX-1541](https://issues.apache.org/jira/browse/KNOX-1541) | Rename Hadoop class in KnoxShell to KnoxSession |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-1556](https://issues.apache.org/jira/browse/KNOX-1556) | [Rewrite Rule] Apache Ambari Favicon and link to NOTICE.txt does not work when using Knox Gateway |  Major | . | Jaimin Jetly | Jaimin Jetly |
| [KNOX-1557](https://issues.apache.org/jira/browse/KNOX-1557) | Knox service cannot be added to proxied Ambari (through Knox) because master password field is readonly |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1405](https://issues.apache.org/jira/browse/KNOX-1405) | Download page must link to KEYS and contain verification details |  Major | Release | Sebb | Larry McCay |
| [KNOX-1558](https://issues.apache.org/jira/browse/KNOX-1558) | KnoxToken service returns wrong content type and content length values |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-1596](https://issues.apache.org/jira/browse/KNOX-1596) | YARNUIV2 Remove policies from service.xml |  Major | . | Sunil G | Sunil G |
| [KNOX-1577](https://issues.apache.org/jira/browse/KNOX-1577) | Knox automatically derived dispatch whitelist doesn't seem to actually match the knox domain |  Critical | Server | Kat Petre | Philip Zampino |
| [KNOX-1602](https://issues.apache.org/jira/browse/KNOX-1602) | JsonFilterReader should handle strings, numbers, booleans, and null at root |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1098](https://issues.apache.org/jira/browse/KNOX-1098) | Livy proxyUser should be added when not present |  Major | Server | Jeffrey Rodriguez | Kevin Risden |
| [KNOX-1165](https://issues.apache.org/jira/browse/KNOX-1165) | Another unnamed CacheManager already exists in the same VM |  Critical | Server, Site | Ernani Pereira de Mattos Junior | Kevin Risden |
| [KNOX-1612](https://issues.apache.org/jira/browse/KNOX-1612) | GatewayAdminTopologyFuncTest#testPutTopology ClassNotFoundException |  Blocker | . | Kevin Risden | Kevin Risden |
| [KNOX-1616](https://issues.apache.org/jira/browse/KNOX-1616) | Fix portmapping with Jetty 9.4 |  Blocker | . | Kevin Risden | Kevin Risden |
| [KNOX-1207](https://issues.apache.org/jira/browse/KNOX-1207) | YARN V1 UI and MapReduce Job History UI - Rewrite rule bugs |  Major | . | Guang Yang | Kevin Risden |
| [KNOX-1639](https://issues.apache.org/jira/browse/KNOX-1639) | java.lang.IllegalStateException: No org.apache.tomcat.InstanceManager set in ServletContext |  Blocker | . | Kevin Risden | Kevin Risden |
| [KNOX-1645](https://issues.apache.org/jira/browse/KNOX-1645) | Improve JSESSIONID handling |  Blocker | . | Kevin Risden | Kevin Risden |
| [KNOX-1651](https://issues.apache.org/jira/browse/KNOX-1651) | Cleanup \*IdentityAsserterMessages interfaces |  Blocker | . | Kevin Risden | Kevin Risden |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1548](https://issues.apache.org/jira/browse/KNOX-1548) | Improve ZooKeeperConfigurationMonitorTest to not use Thread.sleep() |  Minor | . | Kevin Risden | Kevin Risden |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1451](https://issues.apache.org/jira/browse/KNOX-1451) | Setup base checkstyle plugin |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1452](https://issues.apache.org/jira/browse/KNOX-1452) | Enable checkstyle no tabs in source file rule |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1453](https://issues.apache.org/jira/browse/KNOX-1453) | Enable checkstyle no unused imports rule |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1454](https://issues.apache.org/jira/browse/KNOX-1454) | Enable checkstyle no wildcard imports rule |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1449](https://issues.apache.org/jira/browse/KNOX-1449) | Ensure all pom.xml files have same header |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1450](https://issues.apache.org/jira/browse/KNOX-1450) | Remove redundant configurations from pom.xml |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1455](https://issues.apache.org/jira/browse/KNOX-1455) | Enable checkstyle ASF header check rule |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1457](https://issues.apache.org/jira/browse/KNOX-1457) | Add mailing lists to top level pom |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1470](https://issues.apache.org/jira/browse/KNOX-1470) | Remove surefire-version and failsafe-version properties |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1471](https://issues.apache.org/jira/browse/KNOX-1471) | Remove unused genson dependency |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1472](https://issues.apache.org/jira/browse/KNOX-1472) | Remove explicit surefire plugin block in child poms |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1473](https://issues.apache.org/jira/browse/KNOX-1473) | Remove plugin versions that are from parent ASF pom |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1463](https://issues.apache.org/jira/browse/KNOX-1463) | Use maven-dependency-plugin to ensure all dependencies are declared |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1480](https://issues.apache.org/jira/browse/KNOX-1480) | Remove cobertura-maven-plugin |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1481](https://issues.apache.org/jira/browse/KNOX-1481) | Remove javancss-maven-plugin |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1482](https://issues.apache.org/jira/browse/KNOX-1482) | Migrate to maven-site-plugin reportSets |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1456](https://issues.apache.org/jira/browse/KNOX-1456) | Move dependency versions to top level pom properties |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1490](https://issues.apache.org/jira/browse/KNOX-1490) | Upgrade buildnumber-maven-plugin to 1.4 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1486](https://issues.apache.org/jira/browse/KNOX-1486) | Upgrade commons-lang3 to 3.8.1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1499](https://issues.apache.org/jira/browse/KNOX-1499) | Upgrade cors-filter to 2.6 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1485](https://issues.apache.org/jira/browse/KNOX-1485) | Upgrade bcprov-jdk15on to 1.60 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1495](https://issues.apache.org/jira/browse/KNOX-1495) | Upgrade httpclient to 4.5.6 and httpcore to 4.4.10 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1494](https://issues.apache.org/jira/browse/KNOX-1494) | Upgrade groovy to 2.5.2 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1492](https://issues.apache.org/jira/browse/KNOX-1492) | Upgrade jna to 4.5.2 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1491](https://issues.apache.org/jira/browse/KNOX-1491) | Upgrade jline to 2.14.6 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1497](https://issues.apache.org/jira/browse/KNOX-1497) | Upgrade jansi to 1.17.1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1500](https://issues.apache.org/jira/browse/KNOX-1500) | Upgrade rest-assured to 3.1.1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1498](https://issues.apache.org/jira/browse/KNOX-1498) | Upgrade maven-enforcer-plugin to 3.0.0-M2 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1496](https://issues.apache.org/jira/browse/KNOX-1496) | Upgrade maven-bundle-plugin to 4.0.0 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1493](https://issues.apache.org/jira/browse/KNOX-1493) | Upgrade joda-time to 2.10 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1487](https://issues.apache.org/jira/browse/KNOX-1487) | Upgrade easymock to 3.6 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1489](https://issues.apache.org/jira/browse/KNOX-1489) | Upgrade jericho-html to 3.4 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1503](https://issues.apache.org/jira/browse/KNOX-1503) | Upgrade slf4j to 1.7.25 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1488](https://issues.apache.org/jira/browse/KNOX-1488) | Upgrade curator to 4.0.1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1504](https://issues.apache.org/jira/browse/KNOX-1504) | Upgrade eclipselink to 2.7.3 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1508](https://issues.apache.org/jira/browse/KNOX-1508) | Upgrade taglibs-standard-spec and taglibs-standard-impl to 1.2.5 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1506](https://issues.apache.org/jira/browse/KNOX-1506) | Upgrade protobuf-java to 3.6.1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1507](https://issues.apache.org/jira/browse/KNOX-1507) | Upgrade okhttp to 2.7.5 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1510](https://issues.apache.org/jira/browse/KNOX-1510) | Upgrade nimbus-jose-jwt to 6.0.2 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1509](https://issues.apache.org/jira/browse/KNOX-1509) | Upgrade pac4j dependencies |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1513](https://issues.apache.org/jira/browse/KNOX-1513) | Upgrade spring-core to 5.0.9.RELEASE |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1514](https://issues.apache.org/jira/browse/KNOX-1514) | Upgrade jackson to 2.9.7 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1515](https://issues.apache.org/jira/browse/KNOX-1515) | Upgrade shiro to 1.4.0 and ehcache to 2.6.11 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1534](https://issues.apache.org/jira/browse/KNOX-1534) | Avoid try/catch checking for gzip stream |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1532](https://issues.apache.org/jira/browse/KNOX-1532) | Only decompress/recompress when there are rewrite rules |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1533](https://issues.apache.org/jira/browse/KNOX-1533) | Disable httpclient transparent content decompression |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1535](https://issues.apache.org/jira/browse/KNOX-1535) | Remove custom gzip helper stream - use commons-compress |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1531](https://issues.apache.org/jira/browse/KNOX-1531) | Remove gzip handler added by KNOX-732 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1580](https://issues.apache.org/jira/browse/KNOX-1580) | YARN v1 UI - Scheduler - "Dump scheduler logs" link broken |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1578](https://issues.apache.org/jira/browse/KNOX-1578) | JobHistory UI - Broken "ResourceManager" and "NodeManager" links |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1587](https://issues.apache.org/jira/browse/KNOX-1587) | YARN v1 UI - Fix Spark history links |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1581](https://issues.apache.org/jira/browse/KNOX-1581) | YARN v1 UI - Application - Node and logs links broken |  Major | . | Kevin Risden | Kevin Risden |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1402](https://issues.apache.org/jira/browse/KNOX-1402) | Upgrade to Apache parent pom version 20 |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-543](https://issues.apache.org/jira/browse/KNOX-543) | Add documentation and configuration examples to the user guide for replaybuffersize |  Major | Site | Kristopher Kane | Matthew Sharp |
| [KNOX-542](https://issues.apache.org/jira/browse/KNOX-542) | Add replayBufferSize defaults to the sandbox topology |  Major | . | Kristopher Kane | Matthew Sharp |
| [KNOX-1536](https://issues.apache.org/jira/browse/KNOX-1536) | Replace redundant types with the diamond operator |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1539](https://issues.apache.org/jira/browse/KNOX-1539) | Put the array declaration after the type |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1542](https://issues.apache.org/jira/browse/KNOX-1542) | Upgrade to EasyMock 4.0.1 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1408](https://issues.apache.org/jira/browse/KNOX-1408) | Remove the Roadmap confluence wiki page |  Major | . | Sebb | Kevin Risden |
| [KNOX-1407](https://issues.apache.org/jira/browse/KNOX-1407) | Please delete old releases from mirroring system |  Major | . | Sebb | Kevin Risden |
| [KNOX-1543](https://issues.apache.org/jira/browse/KNOX-1543) | Update documentation for KNOX-1531 |  Blocker | Site | Kevin Risden | Kevin Risden |
| [KNOX-1637](https://issues.apache.org/jira/browse/KNOX-1637) | ant verify-stage should check knoxshell artifacts |  Minor | . | Kevin Risden | Kevin Risden |


