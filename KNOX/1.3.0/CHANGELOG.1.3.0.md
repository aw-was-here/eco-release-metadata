
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

## Release 1.3.0 - 2019-07-23



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1550](https://issues.apache.org/jira/browse/KNOX-1550) | TLS/SSL client certificate authentication provider |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1604](https://issues.apache.org/jira/browse/KNOX-1604) | Enable jacoco for test coverage |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1623](https://issues.apache.org/jira/browse/KNOX-1623) | Kerberos support for KnoxShell |  Major | KnoxShell | Sandeep More | Sandeep More |
| [KNOX-1679](https://issues.apache.org/jira/browse/KNOX-1679) | Admin api to add alias for a given topology |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1719](https://issues.apache.org/jira/browse/KNOX-1719) | User guide for 1.3.0 release |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1285](https://issues.apache.org/jira/browse/KNOX-1285) | Create Apache Knox Dockerfile and image |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1835](https://issues.apache.org/jira/browse/KNOX-1835) | Jupyter Enterprise Gateway - KERNEL\_USERNAME should be added when not present |  Major | . | Jesus Alvarez | Bhanu Teja |
| [KNOX-1855](https://issues.apache.org/jira/browse/KNOX-1855) | Add Service Definition for Cloudera Manager API |  Major | Server | Johnny Tran | Johnny Tran |
| [KNOX-1872](https://issues.apache.org/jira/browse/KNOX-1872) | Update Ranger service definitions to support trusted proxy |  Major | . | Sailaja Polavarapu | Sailaja Polavarapu |
| [KNOX-1862](https://issues.apache.org/jira/browse/KNOX-1862) | Add Service Definition for Hue UI |  Major | Server | Subrata Nandi | Jean-Francois Desjeans Gauthier |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1576](https://issues.apache.org/jira/browse/KNOX-1576) | Document the --master and --generate parameter for the create-master command |  Trivial | KnoxCLI | Lars Francke | Lars Francke |
| [KNOX-1603](https://issues.apache.org/jira/browse/KNOX-1603) | Ensure resources are properly closed |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1605](https://issues.apache.org/jira/browse/KNOX-1605) | Ensure overridden methods have @Override annotation |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1148](https://issues.apache.org/jira/browse/KNOX-1148) | Fix Livy Service Definition to align with Livy API (Spark REST Service) |  Major | Server | Larry McCay | Kevin Risden |
| [KNOX-1458](https://issues.apache.org/jira/browse/KNOX-1458) | Support JDK 9/10/11 |  Blocker | . | Kevin Risden | Kevin Risden |
| [KNOX-1621](https://issues.apache.org/jira/browse/KNOX-1621) | CuratorClientService#createEntry - Avoid race condition when creating znodes |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1626](https://issues.apache.org/jira/browse/KNOX-1626) | indexOf char should use single quotes |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1624](https://issues.apache.org/jira/browse/KNOX-1624) | Ensure streams and readers are properly closed |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1625](https://issues.apache.org/jira/browse/KNOX-1625) | Cleanup cast and type arguments |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1646](https://issues.apache.org/jira/browse/KNOX-1646) | Improve export-cert command - JKS, PEM, JCEKS, PKCS12 |  Minor | KnoxCLI | Lars Francke | Lars Francke |
| [KNOX-1628](https://issues.apache.org/jira/browse/KNOX-1628) | Provide new service definitions for Ranger and Atlas to support trusted proxy |  Major | . | Sailaja Polavarapu | Nixon Rodrigues |
| [KNOX-1649](https://issues.apache.org/jira/browse/KNOX-1649) | Provide new service definitions for Ambari to support trusted proxy |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1562](https://issues.apache.org/jira/browse/KNOX-1562) | Bump version dependencies Nov 2018 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1660](https://issues.apache.org/jira/browse/KNOX-1660) | OWASP Add suppressions for false positives |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1364](https://issues.apache.org/jira/browse/KNOX-1364) | Cookie scoping path should contain the topology name |  Major | . | Laszlo Nardai | Kevin Risden |
| [KNOX-1618](https://issues.apache.org/jira/browse/KNOX-1618) | Add dropwizard metrics-jvm support |  Major | Metrics | Kevin Risden | Kevin Risden |
| [KNOX-1664](https://issues.apache.org/jira/browse/KNOX-1664) | Miscellaneous code cleanup |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1615](https://issues.apache.org/jira/browse/KNOX-1615) | Enable PMD for source analysis |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1672](https://issues.apache.org/jira/browse/KNOX-1672) | Cleanup deprecated API usage |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1638](https://issues.apache.org/jira/browse/KNOX-1638) | Migrate from apacheds-all to specific apacheds dependencies |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1665](https://issues.apache.org/jira/browse/KNOX-1665) | Enable more PMD rulesets |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1677](https://issues.apache.org/jira/browse/KNOX-1677) | Use try-with-resources to ensure that resources are closed |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1678](https://issues.apache.org/jira/browse/KNOX-1678) | Upgrade Jackson to 2.9.8 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1663](https://issues.apache.org/jira/browse/KNOX-1663) | Enforce more Checkstyle rules |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1685](https://issues.apache.org/jira/browse/KNOX-1685) | MockServlet - avoid mutable instance variables |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1702](https://issues.apache.org/jira/browse/KNOX-1702) | Use Boolean.parseBoolean instead of "true".equals |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1703](https://issues.apache.org/jira/browse/KNOX-1703) | Cleanup old System.out debugging lines |  Trivial | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1698](https://issues.apache.org/jira/browse/KNOX-1698) | Enable Travis CI to check Github PRs |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1705](https://issues.apache.org/jira/browse/KNOX-1705) | Integrate gateway-admin-ui into Maven build |  Major | AdminUI, Build | Kevin Risden | Kevin Risden |
| [KNOX-1707](https://issues.apache.org/jira/browse/KNOX-1707) | Gateway Admin UI should have the right version |  Major | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-1708](https://issues.apache.org/jira/browse/KNOX-1708) | Cleanup admin-ui lint errors |  Minor | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-1717](https://issues.apache.org/jira/browse/KNOX-1717) | Enable PMD incremental analysis |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1655](https://issues.apache.org/jira/browse/KNOX-1655) | Bump version dependencies Dec 2018 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1726](https://issues.apache.org/jira/browse/KNOX-1726) | Document Admin API feature to manage aliases |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1728](https://issues.apache.org/jira/browse/KNOX-1728) | Allow custom parameters to be passed to dispatches |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1731](https://issues.apache.org/jira/browse/KNOX-1731) | Gateway Admin UI should not include external js/css |  Major | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-1710](https://issues.apache.org/jira/browse/KNOX-1710) | Reuse JAXBContext since they are thread safe |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1732](https://issues.apache.org/jira/browse/KNOX-1732) | Knox High Availability Documentation - fix path |  Trivial | Site | Abhishek Shukla | Kevin Risden |
| [KNOX-1711](https://issues.apache.org/jira/browse/KNOX-1711) | Provide Endpoint Public Cert for KnoxToken |  Major | KnoxShell, Server | Larry McCay | Larry McCay |
| [KNOX-1559](https://issues.apache.org/jira/browse/KNOX-1559) | Create Dispatch implementation that is configurable via service.xml file |  Major | . | Robert Levas | Kevin Risden |
| [KNOX-1720](https://issues.apache.org/jira/browse/KNOX-1720) | Bump version dependencies Jan 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1758](https://issues.apache.org/jira/browse/KNOX-1758) | New Ant target to start test servers with gateway in debug mode |  Minor | Build | Sandor Molnar | Sandor Molnar |
| [KNOX-1661](https://issues.apache.org/jira/browse/KNOX-1661) | KNOX-1646 export-cert documentation improvement |  Minor | Site | Lars Francke | Lars Francke |
| [KNOX-1709](https://issues.apache.org/jira/browse/KNOX-1709) | Allow tests to run in parallel |  Major | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1777](https://issues.apache.org/jira/browse/KNOX-1777) | Move pac4j version/dependencies to top level pom.xml |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1759](https://issues.apache.org/jira/browse/KNOX-1759) | Improve Github PR Process |  Major | Build | Kevin Risden | Sandor Molnar |
| [KNOX-1162](https://issues.apache.org/jira/browse/KNOX-1162) | Improve diagnostics for conf/krb5JAASLogin.conf misconfiguration |  Minor | Server | Kevin Minder | Sandor Molnar |
| [KNOX-1787](https://issues.apache.org/jira/browse/KNOX-1787) | Create PasswordUtils class in gateway-util-common |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1756](https://issues.apache.org/jira/browse/KNOX-1756) | Knox Gateway TLS Keystore and Alias Should be Configurable |  Major | Server | Robert Levas | Robert Levas |
| [KNOX-1791](https://issues.apache.org/jira/browse/KNOX-1791) | MasterService should be a field on GatewayServices |  Trivial | . | Kevin Risden | Robert Levas |
| [KNOX-1793](https://issues.apache.org/jira/browse/KNOX-1793) | DefaultKeystoreService should not validate the signing key on initialization |  Major | Server | Robert Levas | Robert Levas |
| [KNOX-1418](https://issues.apache.org/jira/browse/KNOX-1418) | Knox Shell command for downloading the public cert from a Knox instance |  Major | KnoxShell | Philip Zampino | Sandor Molnar |
| [KNOX-1561](https://issues.apache.org/jira/browse/KNOX-1561) | Create downloads page with table |  Major | Release, Site | Kevin Risden | Sandor Molnar |
| [KNOX-1789](https://issues.apache.org/jira/browse/KNOX-1789) | Refactor RemoteAliasService to use service loading |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1796](https://issues.apache.org/jira/browse/KNOX-1796) | Update documentation with configurable TLS keystore information |  Minor | Site | Robert Levas | Robert Levas |
| [KNOX-474](https://issues.apache.org/jira/browse/KNOX-474) | Improve Kerberos config validation and diagnostics at startup |  Major | Server | Kevin Minder | Sandor Molnar |
| [KNOX-1687](https://issues.apache.org/jira/browse/KNOX-1687) | Hashicorp Vault RemoteAliasService provider |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1766](https://issues.apache.org/jira/browse/KNOX-1766) | Bump version dependencies Feb 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1815](https://issues.apache.org/jira/browse/KNOX-1815) | Remove Windows scripts |  Major | KnoxCLI, KnoxShell, Server | Sandor Molnar | Sandor Molnar |
| [KNOX-1812](https://issues.apache.org/jira/browse/KNOX-1812) | The Knox Gateway truststore should be configurable |  Major | Server | Robert Levas | Robert Levas |
| [KNOX-1814](https://issues.apache.org/jira/browse/KNOX-1814) | Move directory check to Java layer |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-1804](https://issues.apache.org/jira/browse/KNOX-1804) | Refine Knox related Unix scripts |  Major | . | Sandor Molnar | Sandor Molnar |
| [KNOX-1820](https://issues.apache.org/jira/browse/KNOX-1820) | Cleanup KeystoreService implementations and add unit tests |  Minor | Server | Robert Levas | Robert Levas |
| [KNOX-1111](https://issues.apache.org/jira/browse/KNOX-1111) | 2-way SSL Truststore and Keystore Improvements |  Major | Server | Larry McCay | Robert Levas |
| [KNOX-1818](https://issues.apache.org/jira/browse/KNOX-1818) | Update documentation with configurable truststore information |  Minor | Site | Robert Levas | Robert Levas |
| [KNOX-1837](https://issues.apache.org/jira/browse/KNOX-1837) | Remove ServiceTestResource glassfish Base64 dependency |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1836](https://issues.apache.org/jira/browse/KNOX-1836) | Migrate from commons-lang to commons-lang3 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1806](https://issues.apache.org/jira/browse/KNOX-1806) | Bump version dependencies March 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1819](https://issues.apache.org/jira/browse/KNOX-1819) | Ensure services are started and stopped in the correct order. |  Minor | Server | Robert Levas | Robert Levas |
| [KNOX-1849](https://issues.apache.org/jira/browse/KNOX-1849) | Start gateway/LDAP with exec in foreground |  Critical | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-1859](https://issues.apache.org/jira/browse/KNOX-1859) | Improve alias lookup for HadoopAuthProvider |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1856](https://issues.apache.org/jira/browse/KNOX-1856) | Incorrect error message in case there is no 'gateway-identity' certificate in the configured keystore |  Major | . | Sandor Molnar | Sandor Molnar |
| [KNOX-1838](https://issues.apache.org/jira/browse/KNOX-1838) | Bump version dependencies April 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1867](https://issues.apache.org/jira/browse/KNOX-1867) | Update Knox User Guide about Rewrite of Sensitive Data |  Minor | . | Prabhu Joseph | Prabhu Joseph |
| [KNOX-1876](https://issues.apache.org/jira/browse/KNOX-1876) | Zeppelin should default to trusted proxy for service definition |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1877](https://issues.apache.org/jira/browse/KNOX-1877) | Atlas service definitions should default to trusted proxy |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1881](https://issues.apache.org/jira/browse/KNOX-1881) | DefaultKeystoreService should use Java NIO API locking as well |  Critical | KnoxCLI, Server | Robert Levas | Kevin Risden |
| [KNOX-1610](https://issues.apache.org/jira/browse/KNOX-1610) | Support the Livy UI in the Livy service definition |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1912](https://issues.apache.org/jira/browse/KNOX-1912) | X509CertificateUtil should set CN and SAN |  Major | Server | Kevin Risden | Kevin Risden |
| [KNOX-1871](https://issues.apache.org/jira/browse/KNOX-1871) | Bump version dependencies June 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1915](https://issues.apache.org/jira/browse/KNOX-1915) | X509CertificateUtil SAN should contain fully qualified hostname |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1740](https://issues.apache.org/jira/browse/KNOX-1740) | Add Trusted Proxy Support to Knox |  Major | Server | Larry McCay | Robert Levas |
| [KNOX-1916](https://issues.apache.org/jira/browse/KNOX-1916) | Provide default configuration for Hue in topology |  Minor | . | Jean-Francois Desjeans Gauthier | Jean-Francois Desjeans Gauthier |
| [KNOX-1917](https://issues.apache.org/jira/browse/KNOX-1917) | DefaultKeystoreService should use a shared read lock |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1918](https://issues.apache.org/jira/browse/KNOX-1918) | Atlas API - prevent global HDFS rules from triggering |  Minor | . | Kevin Risden | Kevin Risden |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1552](https://issues.apache.org/jira/browse/KNOX-1552) | DefaultKeystoreService cache doesn't add entries to cache |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1094](https://issues.apache.org/jira/browse/KNOX-1094) | Ensure inner exception is captured on LDAP failure |  Major | Server | Pravin Bhagade | Kevin Risden |
| [KNOX-1403](https://issues.apache.org/jira/browse/KNOX-1403) | Allow KnoxSSOUT to use custom cookie name |  Major | Server | Christopher Jackson | Kevin Risden |
| [KNOX-1619](https://issues.apache.org/jira/browse/KNOX-1619) | RemoteAliasService#entryChanged ArrayIndexOutOfBoundsException |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1650](https://issues.apache.org/jira/browse/KNOX-1650) | Knox Atlas Trusted Proxy with HA provider |  Major | . | Sharmadha S | Nixon Rodrigues |
| [KNOX-1662](https://issues.apache.org/jira/browse/KNOX-1662) | Avoid GatewayTestDriver NPE on ldap stop |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-503](https://issues.apache.org/jira/browse/KNOX-503) | Tests which include expected unreachable hosts fail with wildcard DNS records |  Minor | Tests | Kristopher Kane | Kevin Risden |
| [KNOX-1671](https://issues.apache.org/jira/browse/KNOX-1671) | Cleanup misc logic errors identified by Sonarqube |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1680](https://issues.apache.org/jira/browse/KNOX-1680) | KnoxTokenCredentialCollector results in IndexOutOfBounds exception |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-1647](https://issues.apache.org/jira/browse/KNOX-1647) | Identity Assertion should not modify order of query params |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1683](https://issues.apache.org/jira/browse/KNOX-1683) | Ensure truststorePass is set in KnoxSession |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1684](https://issues.apache.org/jira/browse/KNOX-1684) | Avoid NPE for deployments in GatewayServer |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1686](https://issues.apache.org/jira/browse/KNOX-1686) | XmlFilterReader - Ensure XPath and XPathFactory thread safety |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1688](https://issues.apache.org/jira/browse/KNOX-1688) | Add documentation for the Ambari WS support |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1727](https://issues.apache.org/jira/browse/KNOX-1727) | Values should not be forced in query parameters when proxying through Knox |  Major | Server | Robert Levas | Kevin Risden |
| [KNOX-1733](https://issues.apache.org/jira/browse/KNOX-1733) | Spark History UI Version is Not Correct in the XML |  Major | . | William Watson | Kevin Risden |
| [KNOX-1737](https://issues.apache.org/jira/browse/KNOX-1737) | Remote configuration monitor start should not be attempted if config is not defined |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-1426](https://issues.apache.org/jira/browse/KNOX-1426) | Document cloud federation feature |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1750](https://issues.apache.org/jira/browse/KNOX-1750) | Unable to view descriptor service params |  Major | AdminUI | Philip Zampino | Kevin Risden |
| [KNOX-1755](https://issues.apache.org/jira/browse/KNOX-1755) | Revert upgrade httpclient to 4.5.7 due to HTTPCLIENT-1968 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1757](https://issues.apache.org/jira/browse/KNOX-1757) | DeploymentFactoryTest sporadically fails with timeout |  Minor | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-1792](https://issues.apache.org/jira/browse/KNOX-1792) | AliasService start should only be called once in DefaultGatewayServices |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1191](https://issues.apache.org/jira/browse/KNOX-1191) | Implement Azure AD support for Knox SSO |  Major | KnoxSSO | Sandeep More | Sandeep More |
| [KNOX-1795](https://issues.apache.org/jira/browse/KNOX-1795) | Discrepancies between DEv guide and confluence for KnoxToken sessions in confluence |  Major | KnoxShell | Sandor Molnar | Sandor Molnar |
| [KNOX-1802](https://issues.apache.org/jira/browse/KNOX-1802) | Ranger /service/plugins and healthcheck endpoint needs to be exposed through Knox. |  Major | Server | Mukund Thakur | Mukund Thakur |
| [KNOX-1801](https://issues.apache.org/jira/browse/KNOX-1801) | Master secret is incorrectly assumed when a custom truststore is not specified when clientauth is enabled |  Major | Server | Robert Levas | Robert Levas |
| [KNOX-1803](https://issues.apache.org/jira/browse/KNOX-1803) | Stop redirecting stderr & stdout to a file when the server runs in the foreground |  Minor | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-1825](https://issues.apache.org/jira/browse/KNOX-1825) | Fix documentation for Alias API |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1826](https://issues.apache.org/jira/browse/KNOX-1826) | Replace zip4j with ShrinkWrap |  Minor | Server | Kevin Risden | Kevin Risden |
| [KNOX-1813](https://issues.apache.org/jira/browse/KNOX-1813) | Update documentation to reflect change in default values for HttpClient connection and socket timeout to 20 sec |  Minor | Site | Nilesh Parmar | Kevin Risden |
| [KNOX-1828](https://issues.apache.org/jira/browse/KNOX-1828) | Websocket Parameters Not Being Applied |  Minor | . | Shawn Weeks | Shawn Weeks |
| [KNOX-1832](https://issues.apache.org/jira/browse/KNOX-1832) | KnoxSession handling of JAAS config for kerberos auth is not deterministic |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-1850](https://issues.apache.org/jira/browse/KNOX-1850) | KnoxSession should honor the current subject for Kerberos login |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-1851](https://issues.apache.org/jira/browse/KNOX-1851) | NPE on startup when Zookeeper Remote Alias Service is configured |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1854](https://issues.apache.org/jira/browse/KNOX-1854) | Admin UI read-only topology message typo |  Major | AdminUI | Philip Zampino | Philip Zampino |
| [KNOX-1827](https://issues.apache.org/jira/browse/KNOX-1827) | Knox Fails to Rewrite WebFonts for Zeppelin |  Minor | . | Shawn Weeks | Shawn Weeks |
| [KNOX-1857](https://issues.apache.org/jira/browse/KNOX-1857) | YARNUIV2 fails with Authentication Required with kerberos authentication type |  Major | Server | Prabhu Joseph | Prabhu Joseph |
| [KNOX-1861](https://issues.apache.org/jira/browse/KNOX-1861) | KnoxSession should support configurable useSubjectCredsOnly system property setting |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-1858](https://issues.apache.org/jira/browse/KNOX-1858) | For a configured list of services fix X-Forwarded-Context header to add service name |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1864](https://issues.apache.org/jira/browse/KNOX-1864) | Knox returns HTTP 405 Method Not Allowed error with HTTP PATCH method |  Major | Server | Bob Van Haute | Bob Van Haute |
| [KNOX-1848](https://issues.apache.org/jira/browse/KNOX-1848) | Default to 'zookeeper' as remote alias configuration type in case it is not set in gateway-site.xml |  Minor | Server | Sandeep More | Sandor Molnar |
| [KNOX-1866](https://issues.apache.org/jira/browse/KNOX-1866) | Fix the HBase UI proxying |  Major | . | Josh Elser | Josh Elser |
| [KNOX-627](https://issues.apache.org/jira/browse/KNOX-627) | HBase Master UI through Knox is missing JS and CSS resources |  Major | Server | Sumit Gupta | Josh Elser |
| [KNOX-1868](https://issues.apache.org/jira/browse/KNOX-1868) | HBase UI changes from KNOX-1866 aren't picked up due to service.xml version |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1870](https://issues.apache.org/jira/browse/KNOX-1870) | Zeppelin UI service definition service.xml has wrong version |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1874](https://issues.apache.org/jira/browse/KNOX-1874) | Ignore irrelevant files in service definition directories |  Minor | Server | Todd Lipcon | Todd Lipcon |
| [KNOX-1863](https://issues.apache.org/jira/browse/KNOX-1863) | Document add service name to X-Forwarded-Context header |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1879](https://issues.apache.org/jira/browse/KNOX-1879) | HDFSUI service definition doesn't work with DefaultHaDispatch |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1875](https://issues.apache.org/jira/browse/KNOX-1875) | Cloudera Manager service discovery |  Major | cm-discovery, Server | Philip Zampino | Philip Zampino |
| [KNOX-1880](https://issues.apache.org/jira/browse/KNOX-1880) | Support doAs for Cloudera Manager service discovery API interactions |  Major | cm-discovery, Server | Philip Zampino | Philip Zampino |
| [KNOX-1797](https://issues.apache.org/jira/browse/KNOX-1797) | Remove or update Dependencies confluence page |  Minor | Site | Kevin Risden | Kevin Risden |
| [KNOX-1911](https://issues.apache.org/jira/browse/KNOX-1911) | Support ClouderaManager Service Discovery in Admin UI |  Major | AdminUI, cm-discovery | Philip Zampino | Philip Zampino |
| [KNOX-1922](https://issues.apache.org/jira/browse/KNOX-1922) | Fix DNSName error in org.apache.knox.gateway.util.X509CertificateUtil |  Blocker | KnoxCLI, Server | Sandor Molnar | Sandor Molnar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1600](https://issues.apache.org/jira/browse/KNOX-1600) | Fix false 403/404 GatewayBasicFuncTest failures |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1613](https://issues.apache.org/jira/browse/KNOX-1613) | LDAP related tests time out after waiting 10 seconds |  Major | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1627](https://issues.apache.org/jira/browse/KNOX-1627) | Simplify junit assertions |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1700](https://issues.apache.org/jira/browse/KNOX-1700) | Tests should not extend org.junit.Assert |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1701](https://issues.apache.org/jira/browse/KNOX-1701) | Use hamcrest assertThat instead of junit |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1775](https://issues.apache.org/jira/browse/KNOX-1775) | Cleanup test timeout handling |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1786](https://issues.apache.org/jira/browse/KNOX-1786) | Use mocking to simplify DefaultRemoteConfigurationMonitorTest |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1830](https://issues.apache.org/jira/browse/KNOX-1830) | Fix sporadic Illegal character error in TestHashicorpVaultAliasService |  Minor | Tests | Kevin Risden | Kevin Risden |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1566](https://issues.apache.org/jira/browse/KNOX-1566) | Upgrade checkstyle to 8.14 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1563](https://issues.apache.org/jira/browse/KNOX-1563) | Upgrade dependency-check-maven to 3.3.4 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1573](https://issues.apache.org/jira/browse/KNOX-1573) | Upgrade groovy to 2.5.3 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1571](https://issues.apache.org/jira/browse/KNOX-1571) | Upgrade maven-bundle-plugin to 4.1.0 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1565](https://issues.apache.org/jira/browse/KNOX-1565) | Upgrade spotbugs to 3.1.8 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1570](https://issues.apache.org/jira/browse/KNOX-1570) | Upgrade rest-assured to 3.2.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1575](https://issues.apache.org/jira/browse/KNOX-1575) | Upgrade javax.json to 1.1.3 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1567](https://issues.apache.org/jira/browse/KNOX-1567) | Upgrade joda-time to 2.10.1 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1572](https://issues.apache.org/jira/browse/KNOX-1572) | Upgrade pac4j to 3.3.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1569](https://issues.apache.org/jira/browse/KNOX-1569) | Upgrade j2e-pac4j to 4.1.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1574](https://issues.apache.org/jira/browse/KNOX-1574) | Upgrade jna to 5.0.0 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1564](https://issues.apache.org/jira/browse/KNOX-1564) | Upgrade spring-core to 5.1.2.RELEASE |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1594](https://issues.apache.org/jira/browse/KNOX-1594) | Upgrade dropwizard metrics to 4.0.3 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1598](https://issues.apache.org/jira/browse/KNOX-1598) | Upgrade jetty to 9.4.13.v20181111 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1607](https://issues.apache.org/jira/browse/KNOX-1607) | Upgrade jetty to 9.4.14.v20181114 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1611](https://issues.apache.org/jira/browse/KNOX-1611) | Upgrade guava to 27.0-jre |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1633](https://issues.apache.org/jira/browse/KNOX-1633) | Upgrade dependency-check-maven to 4.0.0 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1635](https://issues.apache.org/jira/browse/KNOX-1635) | Upgrade groovy to 2.5.4 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1636](https://issues.apache.org/jira/browse/KNOX-1636) | Upgrade guava to 27.0.1-jre |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1631](https://issues.apache.org/jira/browse/KNOX-1631) | Upgrade jna to 5.1.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1634](https://issues.apache.org/jira/browse/KNOX-1634) | Upgrade pac4j to 3.4.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1632](https://issues.apache.org/jira/browse/KNOX-1632) | Upgrade spotbugs to 3.1.9 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1599](https://issues.apache.org/jira/browse/KNOX-1599) | Upgrade zookeeper to 3.4.13 and curator-test to 2.13.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1657](https://issues.apache.org/jira/browse/KNOX-1657) | Upgrade easymock to 4.0.2 |  Trivial | Build, Tests | Kevin Risden | Kevin Risden |
| [KNOX-1658](https://issues.apache.org/jira/browse/KNOX-1658) | Upgrade spotbugs-maven-plugin to 3.1.9 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1656](https://issues.apache.org/jira/browse/KNOX-1656) | Upgrade checkstyle to 8.15 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1659](https://issues.apache.org/jira/browse/KNOX-1659) | Upgrade spring-core to 5.1.3.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1666](https://issues.apache.org/jira/browse/KNOX-1666) | Enable PMD best practices ruleset |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1667](https://issues.apache.org/jira/browse/KNOX-1667) | Enable PMD error prone ruleset |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1668](https://issues.apache.org/jira/browse/KNOX-1668) | Enable PMD multithreading ruleset |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1669](https://issues.apache.org/jira/browse/KNOX-1669) | Enable PMD code style rules |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1568](https://issues.apache.org/jira/browse/KNOX-1568) | Upgrade nimbus-jose-jwt to 6.5 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1673](https://issues.apache.org/jira/browse/KNOX-1673) | Upgrade cglib to 3.2.10 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1676](https://issues.apache.org/jira/browse/KNOX-1676) | Enable PMD for tests |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1527](https://issues.apache.org/jira/browse/KNOX-1527) | Bump apacheds dependency version to 2.0.0.AM25 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1681](https://issues.apache.org/jira/browse/KNOX-1681) | Upgrade spotbugs to 3.1.10 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1682](https://issues.apache.org/jira/browse/KNOX-1682) | Upgrade dependency-check-maven to 4.0.1 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1693](https://issues.apache.org/jira/browse/KNOX-1693) | Update Knox wiki with new git url |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-1695](https://issues.apache.org/jira/browse/KNOX-1695) | Email steps to migrate git-wip clone to gitbox |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1691](https://issues.apache.org/jira/browse/KNOX-1691) | Update doap\_Knox with gitbox location |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1690](https://issues.apache.org/jira/browse/KNOX-1690) | Update pom.xml with new git url |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1692](https://issues.apache.org/jira/browse/KNOX-1692) | Update Knox site git url |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-1697](https://issues.apache.org/jira/browse/KNOX-1697) | Upgrade curator to 4.1.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1696](https://issues.apache.org/jira/browse/KNOX-1696) | Upgrade nimbus-jose-jwt to 6.5.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1699](https://issues.apache.org/jira/browse/KNOX-1699) | Update Apache Jenkins Knox job git urls to gitbox |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1714](https://issues.apache.org/jira/browse/KNOX-1714) | Upgrade groovy to 2.5.5 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1713](https://issues.apache.org/jira/browse/KNOX-1713) | Upgrade dropwizard metrics to 4.0.4 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1712](https://issues.apache.org/jira/browse/KNOX-1712) | Upgrade spotbugs-maven-plugin to 3.1.10 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1715](https://issues.apache.org/jira/browse/KNOX-1715) | Upgrade jna to 5.2.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1716](https://issues.apache.org/jira/browse/KNOX-1716) | Upgrade hamcrest to 2.1 |  Major | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1723](https://issues.apache.org/jira/browse/KNOX-1723) | Upgrade dropwizard metrics to 4.0.5 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1722](https://issues.apache.org/jira/browse/KNOX-1722) | Upgrade checkstyle to 8.16 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1724](https://issues.apache.org/jira/browse/KNOX-1724) | Upgrade rat plugin to 0.13 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1721](https://issues.apache.org/jira/browse/KNOX-1721) | Upgrade dependency-check-maven to 4.0.2 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1735](https://issues.apache.org/jira/browse/KNOX-1735) | Upgrade admin-ui bootstrap to 3.4.0 |  Minor | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-1736](https://issues.apache.org/jira/browse/KNOX-1736) | Upgrade rest-assured to 3.3.0 |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1739](https://issues.apache.org/jira/browse/KNOX-1739) | Upgrade spring-core to 5.1.4.RELEASE |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1738](https://issues.apache.org/jira/browse/KNOX-1738) | Upgrade nimbus-jose-jwt to 6.7 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1748](https://issues.apache.org/jira/browse/KNOX-1748) | Upgrade eclipselink to 2.7.4 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1745](https://issues.apache.org/jira/browse/KNOX-1745) | Upgrade hadoop to 3.2.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1747](https://issues.apache.org/jira/browse/KNOX-1747) | Upgrade spotbugs to 3.1.11 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1746](https://issues.apache.org/jira/browse/KNOX-1746) | Upgrade httpcore to 4.4.11 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1753](https://issues.apache.org/jira/browse/KNOX-1753) | Upgrade jacoco-maven-plugin to 0.8.3 |  Trivial | Build, Tests | Kevin Risden | Kevin Risden |
| [KNOX-1752](https://issues.apache.org/jira/browse/KNOX-1752) | Upgrade httpclient to 4.5.7 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1751](https://issues.apache.org/jira/browse/KNOX-1751) | Upgrade checkstyle to 8.17 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1754](https://issues.apache.org/jira/browse/KNOX-1754) | Upgrade pac4j to 3.5.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1768](https://issues.apache.org/jira/browse/KNOX-1768) | Upgrade bcprov-jdk15on to 1.61 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1770](https://issues.apache.org/jira/browse/KNOX-1770) | Upgrade groovy to 2.5.6 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1767](https://issues.apache.org/jira/browse/KNOX-1767) | Upgrade log4j2 to 2.11.2 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1769](https://issues.apache.org/jira/browse/KNOX-1769) | Upgrade nimbus-jose-jwt to 7.0 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1771](https://issues.apache.org/jira/browse/KNOX-1771) | Upgrade spotbugs-maven-plugin to 3.1.11 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1772](https://issues.apache.org/jira/browse/KNOX-1772) | Upgrade angular-cli to 1.7.4 |  Major | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-1773](https://issues.apache.org/jira/browse/KNOX-1773) | Docker start gateway/ldap in the foreground |  Major | docker | Kevin Risden | Kevin Risden |
| [KNOX-1762](https://issues.apache.org/jira/browse/KNOX-1762) | Ensure that PR comments go to JIRA worklog |  Minor | . | Kevin Risden | Sandor Molnar |
| [KNOX-1761](https://issues.apache.org/jira/browse/KNOX-1761) | Ensure that PRs are linked to JIRAs |  Minor | Build | Kevin Risden | Sandor Molnar |
| [KNOX-1760](https://issues.apache.org/jira/browse/KNOX-1760) | Add Github PR template |  Minor | Build | Kevin Risden | Sandor Molnar |
| [KNOX-1764](https://issues.apache.org/jira/browse/KNOX-1764) | Ensure that only squash/rebase/merge commits are allowed from Github UI |  Major | . | Kevin Risden | Sandor Molnar |
| [KNOX-1763](https://issues.apache.org/jira/browse/KNOX-1763) | Update committer/contributor documentation with PR process |  Major | . | Kevin Risden | Sandor Molnar |
| [KNOX-1780](https://issues.apache.org/jira/browse/KNOX-1780) | Upgrade slf4j to 1.7.26 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1782](https://issues.apache.org/jira/browse/KNOX-1782) | Upgrade jetty to 9.4.15.v20190215 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1781](https://issues.apache.org/jira/browse/KNOX-1781) | Upgrade commons-codec to 1.12 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1784](https://issues.apache.org/jira/browse/KNOX-1784) | Upgrade bootstrap to 3.4.1 |  Minor | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-1798](https://issues.apache.org/jira/browse/KNOX-1798) | Upgrade checkstyle to 8.18 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1800](https://issues.apache.org/jira/browse/KNOX-1800) | Upgrade mina-core to 2.0.20 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1799](https://issues.apache.org/jira/browse/KNOX-1799) | Upgrade nimbus-jose-jwt to 7.0.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1808](https://issues.apache.org/jira/browse/KNOX-1808) | Upgrade asm to 7.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1807](https://issues.apache.org/jira/browse/KNOX-1807) | Upgrade curator to 4.2.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1809](https://issues.apache.org/jira/browse/KNOX-1809) | Upgrade spotbugs to 3.1.12 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1811](https://issues.apache.org/jira/browse/KNOX-1811) | Upgrade pac4j to 3.6.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1810](https://issues.apache.org/jira/browse/KNOX-1810) | Upgrade frontend-maven-plugin to 1.7.5 |  Minor | AdminUI, Build | Kevin Risden | Kevin Risden |
| [KNOX-1774](https://issues.apache.org/jira/browse/KNOX-1774) | Introduce environment variables in gateway/knoxcli/ldap/knoxshell scripts for customization |  Major | . | Kevin Risden | Sandor Molnar |
| [KNOX-1822](https://issues.apache.org/jira/browse/KNOX-1822) | Upgrade dependency-check-maven to 5.0.0-M1 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1823](https://issues.apache.org/jira/browse/KNOX-1823) | Upgrade protobuf-java to 3.7.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1824](https://issues.apache.org/jira/browse/KNOX-1824) | Upgrade guava to 27.1-jre |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1844](https://issues.apache.org/jira/browse/KNOX-1844) | Upgrade checkstyle to 8.19 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1847](https://issues.apache.org/jira/browse/KNOX-1847) | Upgrade findsecbugs to 1.9.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1840](https://issues.apache.org/jira/browse/KNOX-1840) | Upgrade protobuf-java to 3.7.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1845](https://issues.apache.org/jira/browse/KNOX-1845) | Upgrade spring-core to 5.1.6.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1846](https://issues.apache.org/jira/browse/KNOX-1846) | Upgrade testcontainers to 1.11.1 |  Minor | Build, Tests | Kevin Risden | Kevin Risden |
| [KNOX-1841](https://issues.apache.org/jira/browse/KNOX-1841) | Upgrade zookeeper to 3.4.14 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1843](https://issues.apache.org/jira/browse/KNOX-1843) | Upgrade dependency-check-maven to 5.0.0-M2 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1889](https://issues.apache.org/jira/browse/KNOX-1889) | Upgrade checkstyle to 8.21 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1900](https://issues.apache.org/jira/browse/KNOX-1900) | Upgrade commons-lang3 to 3.9 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1894](https://issues.apache.org/jira/browse/KNOX-1894) | Upgrade groovy to 2.5.7 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1906](https://issues.apache.org/jira/browse/KNOX-1906) | Upgrade guava to 28.0-jre |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1892](https://issues.apache.org/jira/browse/KNOX-1892) | Upgrade jackson to 2.9.9 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1893](https://issues.apache.org/jira/browse/KNOX-1893) | Upgrade jacoco-maven-plugin to 0.8.4 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1901](https://issues.apache.org/jira/browse/KNOX-1901) | Upgrade jansi to 1.18 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1888](https://issues.apache.org/jira/browse/KNOX-1888) | Upgrade bcprov-jdk15on to 1.62 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1887](https://issues.apache.org/jira/browse/KNOX-1887) | Upgrade dependency-check-maven to 5.0.0 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-1896](https://issues.apache.org/jira/browse/KNOX-1896) | Upgrade cglib to 3.2.12 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1904](https://issues.apache.org/jira/browse/KNOX-1904) | Upgrade jna to 5.3.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1902](https://issues.apache.org/jira/browse/KNOX-1902) | Upgrade maven-bundle-plugin to 4.2.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1895](https://issues.apache.org/jira/browse/KNOX-1895) | Upgrade joda-time to 2.10.2 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1903](https://issues.apache.org/jira/browse/KNOX-1903) | Upgrade frontend-maven-plugin to 1.7.6 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1891](https://issues.apache.org/jira/browse/KNOX-1891) | Upgrade maven-checkstyle-plugin to 3.1.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1898](https://issues.apache.org/jira/browse/KNOX-1898) | Upgrade maven-compiler-plugin to 3.8.1 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1897](https://issues.apache.org/jira/browse/KNOX-1897) | Upgrade metrics to 4.1.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1883](https://issues.apache.org/jira/browse/KNOX-1883) | Upgrade nimbus-jose-jwt to 7.3 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1882](https://issues.apache.org/jira/browse/KNOX-1882) | Upgrade protobuf-java to 3.8.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1899](https://issues.apache.org/jira/browse/KNOX-1899) | Upgrade shiro to 1.4.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1884](https://issues.apache.org/jira/browse/KNOX-1884) | Upgrade spring-core to 5.1.8.RELEASE |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1907](https://issues.apache.org/jira/browse/KNOX-1907) | Upgrade pac4j to 3.7.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1909](https://issues.apache.org/jira/browse/KNOX-1909) | Upgrade javax.annotation-api to 1.3.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1910](https://issues.apache.org/jira/browse/KNOX-1910) | Upgrade rest-assured to 4.0.0 |  Major | Build, Tests | Kevin Risden | Kevin Risden |
| [KNOX-1890](https://issues.apache.org/jira/browse/KNOX-1890) | Upgrade testcontainers to 1.11.3 |  Trivial | Build, Tests | Kevin Risden | Kevin Risden |
| [KNOX-1908](https://issues.apache.org/jira/browse/KNOX-1908) | Upgrade checkstyle to 8.22 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1886](https://issues.apache.org/jira/browse/KNOX-1886) | Upgrade spotbugs-maven-plugin to 3.1.12 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1905](https://issues.apache.org/jira/browse/KNOX-1905) | Upgrade maven-pmd-plugin to 3.12.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1885](https://issues.apache.org/jira/browse/KNOX-1885) | Upgrade jetty to 9.4.19.v20190610 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1923](https://issues.apache.org/jira/browse/KNOX-1923) | Upgrade nodejs to latest LTS v10.16.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1924](https://issues.apache.org/jira/browse/KNOX-1924) | Upgrade org.abstractj.libpam4j 1.9.1 to org.kohsuke.libpam4j 1.11 |  Minor | . | Kevin Risden | Kevin Risden |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1622](https://issues.apache.org/jira/browse/KNOX-1622) | Enable the secure processing feature on all XPathFactory instances |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1689](https://issues.apache.org/jira/browse/KNOX-1689) | Migrate Knox git repo from git-wip to gitbox |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1601](https://issues.apache.org/jira/browse/KNOX-1601) | Documentation for KNOX-1550 - TLS/SSL client certificate authentication provider |  Minor | Site | Kevin Risden | Kevin Risden |
| [KNOX-1560](https://issues.apache.org/jira/browse/KNOX-1560) | Documentation for KNOX-1549 - KnoxSSO should support signing keys per topology |  Minor | Site | Kevin Risden | Kevin Risden |
| [KNOX-1778](https://issues.apache.org/jira/browse/KNOX-1778) | Update Copyright year to 2019 |  Trivial | Site | Kevin Risden | Kevin Risden |
| [KNOX-1805](https://issues.apache.org/jira/browse/KNOX-1805) | Documentation for KNOX-1687 Hashicorp Vault RemoteAliasService provider |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-1925](https://issues.apache.org/jira/browse/KNOX-1925) | KnoxPamRealm code cleanup |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1947](https://issues.apache.org/jira/browse/KNOX-1947) | Document the Cloudera Manager API service definition |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-1946](https://issues.apache.org/jira/browse/KNOX-1946) | Document the Hue UI service definition |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-1954](https://issues.apache.org/jira/browse/KNOX-1954) | Document KNOX-1285 - Create Apache Knox Dockerfile and image |  Major | Site | Kevin Risden | Kevin Risden |


