
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

## Release 1.4.0 - 2020-04-26



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1694](https://issues.apache.org/jira/browse/KNOX-1694) | Portmapping to lock down a topology only to a given port |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1967](https://issues.apache.org/jira/browse/KNOX-1967) | Add a service definition for Impala Hiveserver2 |  Major | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [KNOX-1952](https://issues.apache.org/jira/browse/KNOX-1952) | Add Apache NiFi Registry dispatch/service definition/etc |  Major | . | Kevin Risden | Koji Kawamura |
| [KNOX-1992](https://issues.apache.org/jira/browse/KNOX-1992) | Add a service definition for Impala's debug web pages |  Major | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [KNOX-2149](https://issues.apache.org/jira/browse/KNOX-2149) | Knox JWTTokenProvider - JWT verification with OIDC provider by invoking JWKS verification url |  Major | KnoxSSO | Saravanan Sathyamoorthy | Neeraj Verma |
| [KNOX-2157](https://issues.apache.org/jira/browse/KNOX-2157) | Knox should check if it's actually up&running |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2160](https://issues.apache.org/jira/browse/KNOX-2160) | Introduce a Hadoop XML type descriptor format |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2128](https://issues.apache.org/jira/browse/KNOX-2128) | Custom DataSource and SQL Commands for KnoxShell and KnoxShellTable |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2186](https://issues.apache.org/jira/browse/KNOX-2186) | Cloudera Manager integration - filter services |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2188](https://issues.apache.org/jira/browse/KNOX-2188) | Cloudera Manager integration - discovery parameters handling |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2190](https://issues.apache.org/jira/browse/KNOX-2190) | Cloudera Manager integration - advance service discovery handling on topology level |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2206](https://issues.apache.org/jira/browse/KNOX-2206) | Cloudera Manager - Service Discovery - log exclusion of a service due to configuration issues |  Major | cm-discovery | Sandor Molnar | Sandor Molnar |
| [KNOX-2161](https://issues.apache.org/jira/browse/KNOX-2161) | Allow descriptors to be read-only on Admin UI |  Major | AdminUI | Sandor Molnar | Sandor Molnar |
| [KNOX-2249](https://issues.apache.org/jira/browse/KNOX-2249) | Add Spark 3 History Server definition |  Major | . | Vladislav Glinskiy | Vladislav Glinskiy |
| [KNOX-2226](https://issues.apache.org/jira/browse/KNOX-2226) | Add home page to Knox |  Major | Homepage | Sandor Molnar | Sandor Molnar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1919](https://issues.apache.org/jira/browse/KNOX-1919) | Enhance redirectToUrl parameter handling in knoxsso.xml |  Major | KnoxSSO | Sandor Molnar | Sandor Molnar |
| [KNOX-1816](https://issues.apache.org/jira/browse/KNOX-1816) | Execute shellcheck on our Linux scripts |  Minor | KnoxCLI, KnoxShell, Server | Sandor Molnar | Sandor Molnar |
| [KNOX-1933](https://issues.apache.org/jira/browse/KNOX-1933) | [Livy UI] Yarn application and driver log links are broken |  Major | . | Ankur Gupta | Ankur Gupta |
| [KNOX-1956](https://issues.apache.org/jira/browse/KNOX-1956) | Improve AdminUI development by using angular proxy conf |  Minor | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-1959](https://issues.apache.org/jira/browse/KNOX-1959) | HadoopAuthCookieStore should not read krb5 login config each time |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1963](https://issues.apache.org/jira/browse/KNOX-1963) | Ranger API service should proxy xusers/users and and xusers/groups |  Minor | . | Vishal Suvagia | Vishal Suvagia |
| [KNOX-1913](https://issues.apache.org/jira/browse/KNOX-1913) | Bump version dependencies July 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1934](https://issues.apache.org/jira/browse/KNOX-1934) | Setting value of knoxsso.cookie.secure.only based on ssl.enabled in gateway.site |  Minor | KnoxSSO, Server | Abhishek Shukla | Sandor Molnar |
| [KNOX-2002](https://issues.apache.org/jira/browse/KNOX-2002) | Add a KnoxShellTable to Represent and Render Output in Tabular Format |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-1965](https://issues.apache.org/jira/browse/KNOX-1965) | Bump version dependencies August 2019 |  Major | . | Kevin Risden | Sandor Molnar |
| [KNOX-2016](https://issues.apache.org/jira/browse/KNOX-2016) | KnoxShellTable SQL Builder, Col Select, Sort |  Major | . | Larry McCay | Larry McCay |
| [KNOX-2013](https://issues.apache.org/jira/browse/KNOX-2013) | CM discovery - Add Phoenix to auto discovery |  Major | cm-discovery | Istvan Toth | Istvan Toth |
| [KNOX-2021](https://issues.apache.org/jira/browse/KNOX-2021) | Improvements/Suggestions in gateway-docker |  Trivial | docker | Abhishek Shukla | Abhishek Shukla |
| [KNOX-2022](https://issues.apache.org/jira/browse/KNOX-2022) | KnoxShellTable - Introduce Schema for DataTypes of Columns |  Major | KnoxShell | Larry McCay | Sandor Molnar |
| [KNOX-2027](https://issues.apache.org/jira/browse/KNOX-2027) | Need a reverse order sort on a table based on a column. |  Major | KnoxShell | Ljmiv | Ljmiv |
| [KNOX-2009](https://issues.apache.org/jira/browse/KNOX-2009) | Bump version dependencies September 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2018](https://issues.apache.org/jira/browse/KNOX-2018) | KnoxShellTable Filtering needs greaterThan and lessThan, equals Methods |  Major | KnoxShell | Larry McCay | Ljmiv |
| [KNOX-2024](https://issues.apache.org/jira/browse/KNOX-2024) | KnoxShellTable - Case Insensitive Operations with Col Names |  Major | KnoxShell | Larry McCay | Ljmiv |
| [KNOX-2023](https://issues.apache.org/jira/browse/KNOX-2023) | KnoxShellTable - Record the Creation Sequence of Tables |  Major | KnoxShell | Larry McCay | Sandor Molnar |
| [KNOX-2052](https://issues.apache.org/jira/browse/KNOX-2052) | KnoxShellTable mean, median, and mode methods |  Major | KnoxShell | Ljmiv | Ljmiv |
| [KNOX-2060](https://issues.apache.org/jira/browse/KNOX-2060) | Extend KnoxShellTable statistics methods to work with columns of Strings |  Major | KnoxShell | Ljmiv | Ljmiv |
| [KNOX-2066](https://issues.apache.org/jira/browse/KNOX-2066) | Composite Authz Provider |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-2053](https://issues.apache.org/jira/browse/KNOX-2053) | Add Service Definition Management to Admin API |  Major | Server | Larry McCay | Sandor Molnar |
| [KNOX-2056](https://issues.apache.org/jira/browse/KNOX-2056) | Add Service Definitions management on admin UI |  Major | AdminUI | Sandor Molnar | Sandor Molnar |
| [KNOX-2072](https://issues.apache.org/jira/browse/KNOX-2072) | Add a service definition for the Apache Kudu web UI |  Major | . | Adar Dembo | Adar Dembo |
| [KNOX-2068](https://issues.apache.org/jira/browse/KNOX-2068) | Make it possible to add a new service definition from the admin UI |  Major | AdminUI | Sandor Molnar | Sandor Molnar |
| [KNOX-2025](https://issues.apache.org/jira/browse/KNOX-2025) | KnoxShellTable - Join Builder on Method should accept Col Names |  Major | KnoxShell | Larry McCay | Ljmiv |
| [KNOX-2049](https://issues.apache.org/jira/browse/KNOX-2049) | Bump version dependencies October 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-1878](https://issues.apache.org/jira/browse/KNOX-1878) | Enforce single version of dependencies |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2104](https://issues.apache.org/jira/browse/KNOX-2104) | Admin UI should display the same page after successful resource operation |  Minor | AdminUI | Sandor Molnar | Sandor Molnar |
| [KNOX-2122](https://issues.apache.org/jira/browse/KNOX-2122) | Code cleanup from static code analysis |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2129](https://issues.apache.org/jira/browse/KNOX-2129) | Improve deprecated javadoc |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2131](https://issues.apache.org/jira/browse/KNOX-2131) | Fixing bugs found in sonarcloud - 2019 Nov |  Minor | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2138](https://issues.apache.org/jira/browse/KNOX-2138) | Add documentation for X-XSS-Protection option in WebAppSec Provider |  Minor | Site | Vipin Rathor | Vipin Rathor |
| [KNOX-2005](https://issues.apache.org/jira/browse/KNOX-2005) | Improvements to KnoxShellTable |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2076](https://issues.apache.org/jira/browse/KNOX-2076) | Bump version dependencies November 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2145](https://issues.apache.org/jira/browse/KNOX-2145) | WhitelistUtils should have an HTTPS\_ONLY template |  Major | Server | Kevin Risden | Kevin Risden |
| [KNOX-2132](https://issues.apache.org/jira/browse/KNOX-2132) | JDBCKnoxShellTableBuilder should have optional username and password fields |  Major | KnoxShell | Sandor Molnar | Larry McCay |
| [KNOX-2136](https://issues.apache.org/jira/browse/KNOX-2136) | Caching for keystore-based AliasService implementation |  Major | Server | Philip Zampino | Sandor Molnar |
| [KNOX-2151](https://issues.apache.org/jira/browse/KNOX-2151) | HIVE\_ON\_TEZ HS2 Discovery doesn't work |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-2147](https://issues.apache.org/jira/browse/KNOX-2147) | Keep username and password out of KnoxShellTableCallHistory |  Major | KnoxShell | Larry McCay | Sandor Molnar |
| [KNOX-2152](https://issues.apache.org/jira/browse/KNOX-2152) | Disable Ambari cluster configuration monitoring by default |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-2162](https://issues.apache.org/jira/browse/KNOX-2162) | Log no rewrite rule found at DEBUG level |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1742](https://issues.apache.org/jira/browse/KNOX-1742) | Simple SQL Client in KnoxShell for access to JDBC datasources |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2141](https://issues.apache.org/jira/browse/KNOX-2141) | Bump version dependencies December 2019 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2204](https://issues.apache.org/jira/browse/KNOX-2204) | KnoxLine NPE list datasources when directories don't exist |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2208](https://issues.apache.org/jira/browse/KNOX-2208) | AclsAuthorizationFilter should log access at DEBUG level |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2163](https://issues.apache.org/jira/browse/KNOX-2163) | Bump version dependencies January 2020 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2224](https://issues.apache.org/jira/browse/KNOX-2224) | KnoxLine and KnoxShell DataSource and Select Command Alignment |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2227](https://issues.apache.org/jira/browse/KNOX-2227) | Strip Leading and Trailing Whitespace from Headers in KnoxShellTable |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-1926](https://issues.apache.org/jira/browse/KNOX-1926) | Cloudera Manager discovery improvements |  Major | cm-discovery | Kevin Risden | Philip Zampino |
| [KNOX-2189](https://issues.apache.org/jira/browse/KNOX-2189) | KnoxShellTable.select() must handle whitespace |  Minor | KnoxShell | Larry McCay | Ljmiv |
| [KNOX-2238](https://issues.apache.org/jira/browse/KNOX-2238) | CM discovery - Add TLS support to Phoenix auto discovery |  Major | cm-discovery | Istvan Toth | Istvan Toth |
| [KNOX-2250](https://issues.apache.org/jira/browse/KNOX-2250) | maven-antrun-plugin use target instead of tasks |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-2216](https://issues.apache.org/jira/browse/KNOX-2216) | Bump version dependencies February 2020 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2285](https://issues.apache.org/jira/browse/KNOX-2285) | Change gateway.server.header.enabled default to false |  Major | Server | Kevin Risden | Kevin Risden |
| [KNOX-2305](https://issues.apache.org/jira/browse/KNOX-2305) | Blacklist Maven 3.6.2 and move cloudera repository to child pom |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2287](https://issues.apache.org/jira/browse/KNOX-2287) | Add a KnoxCLI command to convert topologies to providers and descriptors |  Major | KnoxCLI | Sandeep More | Sandeep More |
| [KNOX-2301](https://issues.apache.org/jira/browse/KNOX-2301) | Trigger discovery for descriptors at gateway start time |  Major | Server | J.Andreina | Philip Zampino |
| [KNOX-2307](https://issues.apache.org/jira/browse/KNOX-2307) | CSVKnoxShellTableBuilder must support quoted strings and embedded commas |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2308](https://issues.apache.org/jira/browse/KNOX-2308) | Add sortNumeric to KnoxShellTable for Cols that are numeric but values are String |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2240](https://issues.apache.org/jira/browse/KNOX-2240) | KnoxShell Custom Command for WEBHDFS Use |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2205](https://issues.apache.org/jira/browse/KNOX-2205) | KnoxLine Connection timesout too quickly with Hive |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2310](https://issues.apache.org/jira/browse/KNOX-2310) | Add aggregate method to KnoxShellTable |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2268](https://issues.apache.org/jira/browse/KNOX-2268) | Bump version dependencies March 2020 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2341](https://issues.apache.org/jira/browse/KNOX-2341) | KnoxShell Custom Commands need Description and Usage Details |  Major | ClientDSL | Larry McCay | Larry McCay |
| [KNOX-2313](https://issues.apache.org/jira/browse/KNOX-2313) | Document KnoxShell Enhancements from KIP-14 |  Major | Site | Larry McCay | Larry McCay |
| [KNOX-2339](https://issues.apache.org/jira/browse/KNOX-2339) | Add Github Actions for CI |  Major | Build, Tests | Kevin Risden | Kevin Risden |
| [KNOX-2345](https://issues.apache.org/jira/browse/KNOX-2345) | KnoxShellTable must handle NULL cols |  Major | KnoxShell | Larry McCay | Larry McCay |
| [KNOX-2353](https://issues.apache.org/jira/browse/KNOX-2353) | Disable CM descriptor monitoring by default |  Major | Server | Sandor Molnar | Sandor Molnar |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1744](https://issues.apache.org/jira/browse/KNOX-1744) |  [Spark History UI Service] Executor logs (stdout/stderr) links are broken |  Minor | . | Nicolas Colomer | Ankur Gupta |
| [KNOX-1948](https://issues.apache.org/jira/browse/KNOX-1948) | Knox Parser fails to properly handle comma seperated list of urls |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1955](https://issues.apache.org/jira/browse/KNOX-1955) | Admin UI should handle gateway.path change |  Major | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-1589](https://issues.apache.org/jira/browse/KNOX-1589) | YARN V2 UI - Rewrite rule bugs |  Major | . | Kevin Risden | Prabhu Joseph |
| [KNOX-1964](https://issues.apache.org/jira/browse/KNOX-1964) | YARN v1 UI - ContainerLogs link broken for Running Jobs |  Major | . | Prabhu Joseph | Prabhu Joseph |
| [KNOX-1968](https://issues.apache.org/jira/browse/KNOX-1968) | YARN UI V2 proxied via Knox does not rewrite Spark stderr/stdout links |  Major | . | Prabhu Joseph | Prabhu Joseph |
| [KNOX-1986](https://issues.apache.org/jira/browse/KNOX-1986) | POST request with Content-Type: application/xml and empty payload fails with XMLStreamException |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1988](https://issues.apache.org/jira/browse/KNOX-1988) | [Spark History UI Service] Executor logs (stdout/stderr) links should point to YARN UI v2 |  Minor | . | Wing Yew Poon | Wing Yew Poon |
| [KNOX-1989](https://issues.apache.org/jira/browse/KNOX-1989) | Document port mapping lockdown |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1957](https://issues.apache.org/jira/browse/KNOX-1957) | gateway.sh doesn't handle KNOX\_GATEWAY\_DBG\_OPTS env var correctly |  Major | Server | Philip Zampino | Sandor Molnar |
| [KNOX-1995](https://issues.apache.org/jira/browse/KNOX-1995) | If a rule doesn't match, shouldn't error. Need to handle null case |  Major | . | J.Andreina | Kevin Risden |
| [KNOX-1994](https://issues.apache.org/jira/browse/KNOX-1994) | Update Ranger API service definition to allow separate URL patterns |  Minor | . | Vishal Suvagia | Vishal Suvagia |
| [KNOX-1999](https://issues.apache.org/jira/browse/KNOX-1999) | Atlas UI proxied via Knox: hdfs LOCATION field has the location set to https:// instead of hdfs:// |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-2000](https://issues.apache.org/jira/browse/KNOX-2000) | KnoxSession should not set javax.security.auth.useSubjectCredsOnly |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-2001](https://issues.apache.org/jira/browse/KNOX-2001) | KnoxSession should log a warning message when useSubjectCredsOnly is false |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-1788](https://issues.apache.org/jira/browse/KNOX-1788) | Add HTTP X-XSS-Protection to WebAppSec provider config wizard |  Major | AdminUI | Philip Zampino | Sandor Molnar |
| [KNOX-2007](https://issues.apache.org/jira/browse/KNOX-2007) | TestHashicorpVaultAliasService fails if a process is already bound to port 8200 |  Major | Tests | Adar Dembo | Kevin Risden |
| [KNOX-2008](https://issues.apache.org/jira/browse/KNOX-2008) | YARN UI - RM Home Link is broken |  Major | . | Prabhu Joseph | Prabhu Joseph |
| [KNOX-2011](https://issues.apache.org/jira/browse/KNOX-2011) | RangerUI created multiple sessions when going via Knox |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-2012](https://issues.apache.org/jira/browse/KNOX-2012) | Ranger admin session not being re-used until the initial login is complete when knox trusted proxy is enabled |  Major | . | Sandeep More | Sandeep More |
| [KNOX-1998](https://issues.apache.org/jira/browse/KNOX-1998) | WebHDFS rewrite.xml does not have rewrite rule for Location field in json |  Major | Server | Lokesh Jain | Lokesh Jain |
| [KNOX-1914](https://issues.apache.org/jira/browse/KNOX-1914) | Dynamic population of Admin UI service discovery type options |  Major | AdminUI | Philip Zampino | Sandor Molnar |
| [KNOX-1987](https://issues.apache.org/jira/browse/KNOX-1987) | knox failed to start because knoxcli failed with "java.lang.NoSuchFieldError: DEFAULT\_XML\_TYPE\_ATTRIBUTE" |  Major | KnoxCLI | shanyu zhao | shanyu zhao |
| [KNOX-1996](https://issues.apache.org/jira/browse/KNOX-1996) | For websocket connections, backend url generated is incorrect - has an extra '/' in path |  Major | Server | Rajat Goel | Rajat Goel |
| [KNOX-2014](https://issues.apache.org/jira/browse/KNOX-2014) | ATLASSESSIONID cookie missing when Atlas UI proxied via Knox |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-2015](https://issues.apache.org/jira/browse/KNOX-2015) | Need the ability to blacklist certain cookies with ConfigurableDispatch |  Major | Server | Sandeep More | Sandor Molnar |
| [KNOX-2061](https://issues.apache.org/jira/browse/KNOX-2061) | ConfigurableHADispatch needs to be wired up |  Major | Server | Kevin Risden | Kevin Risden |
| [KNOX-2064](https://issues.apache.org/jira/browse/KNOX-2064) | KnoxSSO knoxsso.token.ttl should not default to -1 |  Major | KnoxSSO | Kevin Risden | Kevin Risden |
| [KNOX-2063](https://issues.apache.org/jira/browse/KNOX-2063) | KnoxShellTable javadoc failures |  Minor | KnoxShell | Kevin Risden | Ljmiv |
| [KNOX-2067](https://issues.apache.org/jira/browse/KNOX-2067) | KnoxToken service support for renewal and revocation |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-2070](https://issues.apache.org/jira/browse/KNOX-2070) | SSOCookieFederationFilter NPE |  Major | KnoxSSO | Kevin Risden | Kevin Risden |
| [KNOX-2075](https://issues.apache.org/jira/browse/KNOX-2075) | Druid coordinator ui is broken |  Minor | . | kongyichao | kongyichao |
| [KNOX-2071](https://issues.apache.org/jira/browse/KNOX-2071) | Configurable maximum token lifetime for TokenStateService |  Minor | Server | Philip Zampino | Philip Zampino |
| [KNOX-2105](https://issues.apache.org/jira/browse/KNOX-2105) | KnoxShell support for token renewal and revocation |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-2100](https://issues.apache.org/jira/browse/KNOX-2100) | knoxshell doesn't setup logging correctly |  Major | KnoxShell | Kevin Risden | Sandor Molnar |
| [KNOX-2099](https://issues.apache.org/jira/browse/KNOX-2099) | knoxshell buildTrustStore doesn't work on a url without a port |  Major | KnoxShell | Kevin Risden | Sandor Molnar |
| [KNOX-2103](https://issues.apache.org/jira/browse/KNOX-2103) | responseExcludeHeaders should be case insensitive |  Trivial | . | In Park | Sandor Molnar |
| [KNOX-1997](https://issues.apache.org/jira/browse/KNOX-1997) | For websocket connections, seeing java.lang.NullPointerException when a data frame arrives on websocket while connection is still being setup |  Major | Server | Rajat Goel | Rajat Goel |
| [KNOX-2130](https://issues.apache.org/jira/browse/KNOX-2130) | Handle InterruptedException better |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2127](https://issues.apache.org/jira/browse/KNOX-2127) | ZooKeeperAliasService mishandles mixed-case alias keys properly |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-2074](https://issues.apache.org/jira/browse/KNOX-2074) | Tracking UI of flink session is broken in YARNUI |  Minor | . | kongyichao | kongyichao |
| [KNOX-2140](https://issues.apache.org/jira/browse/KNOX-2140) | RequestUpdateHandler.ForwardedRequest#getRequestURL needs to return a valid URL |  Major | Server | Kevin Risden | Kevin Risden |
| [KNOX-2133](https://issues.apache.org/jira/browse/KNOX-2133) | Ensure that Knox always validates TLS |  Critical | Server, Tests | Kevin Risden | Kevin Risden |
| [KNOX-2135](https://issues.apache.org/jira/browse/KNOX-2135) | YARNUIV2 RM Log Links broken when routed through Knox |  Minor | . | Deepashree Gandhi | Deepashree Gandhi |
| [KNOX-2123](https://issues.apache.org/jira/browse/KNOX-2123) | Log4jAuditor.auditLog causes NPE pushing to MDC |  Major | . | Kevin Risden | Sandor Molnar |
| [KNOX-2134](https://issues.apache.org/jira/browse/KNOX-2134) | Add caching to ZookeeperRemoteAliasService |  Major | Server | Philip Zampino | Sandor Molnar |
| [KNOX-2154](https://issues.apache.org/jira/browse/KNOX-2154) | KNOX service should be added during topology generation |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2155](https://issues.apache.org/jira/browse/KNOX-2155) | KnoxSSO should handle multiple cookies with the same name |  Major | KnoxSSO | Kevin Risden | Kevin Risden |
| [KNOX-2148](https://issues.apache.org/jira/browse/KNOX-2148) | ZEPPELINUI service definition should pass query parameters for API |  Major | . | Abhishek Shukla | Prabhjyot Singh |
| [KNOX-2101](https://issues.apache.org/jira/browse/KNOX-2101) | knoxshell doesn't handle invalid TLS well |  Major | KnoxShell | Kevin Risden | Ljmiv |
| [KNOX-718](https://issues.apache.org/jira/browse/KNOX-718) | KnoxSSO login page doesn't display any feedback on error |  Major | KnoxSSO | Krishna Pandey | Kevin Risden |
| [KNOX-2200](https://issues.apache.org/jira/browse/KNOX-2200) | DefaultKeystoreService can lose entries under concurrent access |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2202](https://issues.apache.org/jira/browse/KNOX-2202) | Knox should use UTF-8 as default encoding instead of ISO-8859-1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2222](https://issues.apache.org/jira/browse/KNOX-2222) | Fix HBase UI Proxying for HBCK Report page |  Minor | . | Sakthi | Sakthi |
| [KNOX-2223](https://issues.apache.org/jira/browse/KNOX-2223) | HS2 cookie not stored in HadoopAuthCookieStore |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2229](https://issues.apache.org/jira/browse/KNOX-2229) | Knox shouldn't exclude Kerby since it is used by Hadoop |  Major | Build, Server | Kevin Risden | Kevin Risden |
| [KNOX-2231](https://issues.apache.org/jira/browse/KNOX-2231) | KnoxSSO OIDC integration broken |  Major | KnoxSSO | Sandeep More | Sandeep More |
| [KNOX-2239](https://issues.apache.org/jira/browse/KNOX-2239) | Websocket not picking up configured truststore |  Major | Server | J.Andreina | Sandeep More |
| [KNOX-2258](https://issues.apache.org/jira/browse/KNOX-2258) | Add new rewrite rule in Livy service for handling redirect requests to /ui |  Major | Server | J.Andreina | Abhishek Shukla |
| [KNOX-2265](https://issues.apache.org/jira/browse/KNOX-2265) | Cloudera Manager discovery - check configs by their related names |  Major | cm-discovery | J.Andreina | Sandor Molnar |
| [KNOX-2269](https://issues.apache.org/jira/browse/KNOX-2269) | Make homepage working with default topology |  Major | . | Sandor Molnar | Sandor Molnar |
| [KNOX-2261](https://issues.apache.org/jira/browse/KNOX-2261) | Fix context path for HBase Web UI in service.xml |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2260](https://issues.apache.org/jira/browse/KNOX-2260) | Fix context path for Kudu UI in service.xml |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2259](https://issues.apache.org/jira/browse/KNOX-2259) | Fix context path for Impala UI in service.xml |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2267](https://issues.apache.org/jira/browse/KNOX-2267) | Ambari/CM discovery - Needs to point to configured truststore |  Major | cm-discovery | Kevin Risden | Kevin Risden |
| [KNOX-2266](https://issues.apache.org/jira/browse/KNOX-2266) | Tokens Should Include a Unique Identifier |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-2284](https://issues.apache.org/jira/browse/KNOX-2284) | CM descriptors do not get picked up at Gateway start |  Major | Server | J.Andreina | Sandor Molnar |
| [KNOX-2286](https://issues.apache.org/jira/browse/KNOX-2286) | Rephrase misleading logs about provider/descriptor/topology monitoring |  Minor | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2289](https://issues.apache.org/jira/browse/KNOX-2289) | Query string encryption password never created due to GatewayServices is being null |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2291](https://issues.apache.org/jira/browse/KNOX-2291) | Improve WebAppSec docs around cors.enabled |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-2296](https://issues.apache.org/jira/browse/KNOX-2296) | Multiple instances of a service has the same link on home page |  Major | Homepage | J.Andreina | Sandor Molnar |
| [KNOX-2300](https://issues.apache.org/jira/browse/KNOX-2300) | Missing Livy/Solr UI gateway url on Knox Home page |  Major | Homepage | J.Andreina | Sandor Molnar |
| [KNOX-2299](https://issues.apache.org/jira/browse/KNOX-2299) |  Invalid Hive JDBC url on Knox Home page |  Major | Homepage | Sandor Molnar | Sandor Molnar |
| [KNOX-2262](https://issues.apache.org/jira/browse/KNOX-2262) | Accessing hbase logs through knox exposes hbase endpoint url instead of routing through knox |  Major | . | J.Andreina | Istvan Toth |
| [KNOX-2317](https://issues.apache.org/jira/browse/KNOX-2317) | Open UI services from Knox Home page on new tabs |  Minor | Homepage | J.Andreina | Sandor Molnar |
| [KNOX-2315](https://issues.apache.org/jira/browse/KNOX-2315) | Zookeeper kerberos remote configuration registry broken |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-2304](https://issues.apache.org/jira/browse/KNOX-2304) | CM discovery - cluster config monitor needs to be aware of all relevant CM event types |  Major | cm-discovery | Philip Zampino | Larry McCay |
| [KNOX-2146](https://issues.apache.org/jira/browse/KNOX-2146) | Docs: Knox JWT token signature verification using public key |  Minor | Site | Matei C. | Sandeep More |
| [KNOX-2312](https://issues.apache.org/jira/browse/KNOX-2312) | Document KnoxCLI command to convert topologies to providers and descriptors |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1718](https://issues.apache.org/jira/browse/KNOX-1718) | Look at ApacheDS LDAP ERROR messages |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2340](https://issues.apache.org/jira/browse/KNOX-2340) | AliasBasedTokenStateServiceTest failure |  Major | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2321](https://issues.apache.org/jira/browse/KNOX-2321) | HDFS UI rewrite rules should handle LogLevel |  Major | . | Bharat Viswanadham | Lokesh Jain |
| [KNOX-2350](https://issues.apache.org/jira/browse/KNOX-2350) | Make sure CM configuration monitor handles event w/o COMMAND and/or COMMAND\_STATUS attributes |  Major | cm-discovery | J.Andreina | Sandor Molnar |
| [KNOX-2376](https://issues.apache.org/jira/browse/KNOX-2376) | Correct confusing HBASEJARS service |  Major | Server | Josh Elser | Josh Elser |
| [KNOX-2381](https://issues.apache.org/jira/browse/KNOX-2381) | Tracking UI of flink session is broken in YARNUIV2 |  Major | . | Matyas Orhidi | Matyas Orhidi |
| [KNOX-2387](https://issues.apache.org/jira/browse/KNOX-2387) | KnoxSSO broken on recent Chrome browsers (version \> 80) |  Major | KnoxSSO | Sandeep More | Sandeep More |
| [KNOX-2393](https://issues.apache.org/jira/browse/KNOX-2393) | Add a configurable list of paths that SSOCookieProvider can ignore |  Major | KnoxSSO | Sandeep More | Sandeep More |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1990](https://issues.apache.org/jira/browse/KNOX-1990) | Fix intermittent JUnit test failures in RemoteConfigurationRegistryJAASConfigTest |  Major | Tests | Sandor Molnar | Sandor Molnar |
| [KNOX-2057](https://issues.apache.org/jira/browse/KNOX-2057) | KnoxShellTableCallHistoryTest failure |  Major | Tests | Kevin Risden | Sandor Molnar |
| [KNOX-2121](https://issues.apache.org/jira/browse/KNOX-2121) | Zookeeper - Reduce amount of resources required to run tests |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2062](https://issues.apache.org/jira/browse/KNOX-2062) | RemoteConfigurationMonitorTest failures in Travis CI |  Major | Build, Tests | Sandor Molnar | Kevin Risden |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1593](https://issues.apache.org/jira/browse/KNOX-1593) | YARN v2 UI - Application - View logs for running application |  Major | . | Kevin Risden | Prabhu Joseph |
| [KNOX-1928](https://issues.apache.org/jira/browse/KNOX-1928) | CM discovery - Multiple of same url are added to descriptor? |  Major | cm-discovery | Kevin Risden | Philip Zampino |
| [KNOX-1927](https://issues.apache.org/jira/browse/KNOX-1927) | CM discovery - ZEPPELINUI / ZEPPELINWS urls are not discovered |  Major | cm-discovery | Kevin Risden | Philip Zampino |
| [KNOX-1588](https://issues.apache.org/jira/browse/KNOX-1588) | YARN v2 UI - Make sure that Spark and MR Job history links are handled |  Minor | . | Kevin Risden | Prabhu Joseph |
| [KNOX-1940](https://issues.apache.org/jira/browse/KNOX-1940) | Upgrade commons-text to 1.7 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1943](https://issues.apache.org/jira/browse/KNOX-1943) | Upgrade dependency-check-maven to 5.2.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-1941](https://issues.apache.org/jira/browse/KNOX-1941) | Upgrade joda-time to 2.10.3 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1936](https://issues.apache.org/jira/browse/KNOX-1936) | Upgrade log4j2 to 2.12.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1938](https://issues.apache.org/jira/browse/KNOX-1938) | Upgrade nimbus-jose-jwt to 7.5.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1944](https://issues.apache.org/jira/browse/KNOX-1944) | Upgrade protobuf-java to 3.9.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1945](https://issues.apache.org/jira/browse/KNOX-1945) | Upgrade spring-vault to 2.1.3.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1942](https://issues.apache.org/jira/browse/KNOX-1942) | Upgrade spotbugs-maven-plugin to 3.1.12.1 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-1937](https://issues.apache.org/jira/browse/KNOX-1937) | Upgrade testcontainers to 1.11.4 |  Trivial | Tests | Kevin Risden | Kevin Risden |
| [KNOX-1949](https://issues.apache.org/jira/browse/KNOX-1949) | CM discovery - Improve efficiency of discovery |  Major | cm-discovery | Philip Zampino | Philip Zampino |
| [KNOX-1950](https://issues.apache.org/jira/browse/KNOX-1950) | YARN v2 UI - Tools - Yarn Daemon Logs - /logs/stacks link broken |  Major | . | Prabhu Joseph | Prabhu Joseph |
| [KNOX-1939](https://issues.apache.org/jira/browse/KNOX-1939) | Upgrade jackson-databind to 2.9.9.1 |  Trivial | . | Kevin Risden | Zsombor Gegesy |
| [KNOX-1929](https://issues.apache.org/jira/browse/KNOX-1929) | CM discovery - HIVE URLs not discovered when HIVE\_ON\_TEZ is deployed |  Major | cm-discovery | Philip Zampino | Philip Zampino |
| [KNOX-1590](https://issues.apache.org/jira/browse/KNOX-1590) | YARN v2 UI - Application - ApplicationMaster link is broken |  Major | . | Kevin Risden | Prabhu Joseph |
| [KNOX-1958](https://issues.apache.org/jira/browse/KNOX-1958) | YARN v2 UI - internal links of History and ApplicationMaster Pages |  Major | . | Prabhu Joseph | Prabhu Joseph |
| [KNOX-1930](https://issues.apache.org/jira/browse/KNOX-1930) | CM discovery - JOBTRACKER URLs not discovered |  Major | cm-discovery | Philip Zampino | Philip Zampino |
| [KNOX-1966](https://issues.apache.org/jira/browse/KNOX-1966) | Upgrade jackson-databind to 2.9.9.2 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1969](https://issues.apache.org/jira/browse/KNOX-1969) | Upgrade jackson-databind to 2.9.9.3 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1971](https://issues.apache.org/jira/browse/KNOX-1971) | Upgrade Hashicorp Vault test to vault:1.2.1 |  Minor | Tests | Kevin Risden | Sandor Molnar |
| [KNOX-1980](https://issues.apache.org/jira/browse/KNOX-1980) | Upgrade checkstyle to 8.23 |  Trivial | Build | Kevin Risden | Sandor Molnar |
| [KNOX-1973](https://issues.apache.org/jira/browse/KNOX-1973) | Upgrade cloudera-manager-api to 6.3.0 |  Minor | cm-discovery | Kevin Risden | Sandor Molnar |
| [KNOX-1976](https://issues.apache.org/jira/browse/KNOX-1976) | Upgrade dependency-check-maven to 5.2.1 |  Trivial | Build | Kevin Risden | Sandor Molnar |
| [KNOX-1972](https://issues.apache.org/jira/browse/KNOX-1972) | Upgrade groovy to 2.5.8 |  Trivial | KnoxShell | Kevin Risden | Sandor Molnar |
| [KNOX-1975](https://issues.apache.org/jira/browse/KNOX-1975) | Upgrade slf4j to 1.7.27 |  Trivial | . | Kevin Risden | Sandor Molnar |
| [KNOX-1982](https://issues.apache.org/jira/browse/KNOX-1982) | Upgrade testcontainers to 1.12.0 |  Minor | Tests | Kevin Risden | Sandor Molnar |
| [KNOX-1984](https://issues.apache.org/jira/browse/KNOX-1984) | Upgrade jna to 5.4.0 |  Minor | . | Kevin Risden | Sandor Molnar |
| [KNOX-1985](https://issues.apache.org/jira/browse/KNOX-1985) | Upgrade javax.annotation-api to 1.3.2 |  Trivial | . | Kevin Risden | Sandor Molnar |
| [KNOX-1978](https://issues.apache.org/jira/browse/KNOX-1978) | Upgrade nimbus-jose-jwt to 7.7 |  Minor | . | Kevin Risden | Sandor Molnar |
| [KNOX-1983](https://issues.apache.org/jira/browse/KNOX-1983) | Upgrade commons-codec to 1.13 |  Minor | . | Kevin Risden | Sandor Molnar |
| [KNOX-1979](https://issues.apache.org/jira/browse/KNOX-1979) | Upgrade dockerfile-maven-plugin to 1.4.12 |  Trivial | Build, docker | Kevin Risden | Sandor Molnar |
| [KNOX-1974](https://issues.apache.org/jira/browse/KNOX-1974) | Upgrade protobuf-java to 3.9.1 |  Trivial | . | Kevin Risden | Sandor Molnar |
| [KNOX-1977](https://issues.apache.org/jira/browse/KNOX-1977) | Upgrade spotbugs-maven-plugin to 3.1.12.2 |  Trivial | Build | Kevin Risden | Sandor Molnar |
| [KNOX-1981](https://issues.apache.org/jira/browse/KNOX-1981) | Upgrade spring-core to 5.1.9.RELEASE |  Trivial | . | Kevin Risden | Sandor Molnar |
| [KNOX-2010](https://issues.apache.org/jira/browse/KNOX-2010) | Upgrade zookeeper to 3.5.5 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2028](https://issues.apache.org/jira/browse/KNOX-2028) | Upgrade jackson to 2.9.10 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2043](https://issues.apache.org/jira/browse/KNOX-2043) | Upgrade bcprov-jdk15on to 1.63 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2032](https://issues.apache.org/jira/browse/KNOX-2032) | Upgrade cglib to 3.3.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2039](https://issues.apache.org/jira/browse/KNOX-2039) | Upgrade checkstyle to 8.24 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2040](https://issues.apache.org/jira/browse/KNOX-2040) | Upgrade commons-text to 1.8 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2047](https://issues.apache.org/jira/browse/KNOX-2047) | Upgrade dependency-check-maven to 5.2.2 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-2046](https://issues.apache.org/jira/browse/KNOX-2046) | Upgrade hadoop to 3.2.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2033](https://issues.apache.org/jira/browse/KNOX-2033) | Upgrade commons-beanutils to 1.9.4 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2036](https://issues.apache.org/jira/browse/KNOX-2036) | Upgrade cors-filter to 2.8 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2030](https://issues.apache.org/jira/browse/KNOX-2030) | Upgrade frontend-maven-plugin to 1.8.0 |  Minor | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-2038](https://issues.apache.org/jira/browse/KNOX-2038) | Upgrade guava to 28.1-jre |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2034](https://issues.apache.org/jira/browse/KNOX-2034) | Upgrade jetty to 9.4.20.v20190813 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2045](https://issues.apache.org/jira/browse/KNOX-2045) | Upgrade joda-time to 2.10.4 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2029](https://issues.apache.org/jira/browse/KNOX-2029) | Upgrade log4j2 to 2.12.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2035](https://issues.apache.org/jira/browse/KNOX-2035) | Upgrade maven-bundle-plugin to 4.2.1 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-2037](https://issues.apache.org/jira/browse/KNOX-2037) | Upgrade nimbus-jose-jwt to 7.8 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2048](https://issues.apache.org/jira/browse/KNOX-2048) | Upgrade pac4j to 3.8.2 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2044](https://issues.apache.org/jira/browse/KNOX-2044) | Upgrade protobuf-java to 3.10.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2041](https://issues.apache.org/jira/browse/KNOX-2041) | Upgrade rest-assured to 4.1.1 |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2031](https://issues.apache.org/jira/browse/KNOX-2031) | Upgrade slf4j to 1.7.28 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2042](https://issues.apache.org/jira/browse/KNOX-2042) | Upgrade testcontainers to 1.12.1 |  Trivial | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2050](https://issues.apache.org/jira/browse/KNOX-2050) | Upgrade jackson to 2.10.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2051](https://issues.apache.org/jira/browse/KNOX-2051) | Upgrade asm to 7.2 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2058](https://issues.apache.org/jira/browse/KNOX-2058) | Upgrade commons-compress to 1.19 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2059](https://issues.apache.org/jira/browse/KNOX-2059) | Upgrade bcprov-jdk15on to 1.64 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2065](https://issues.apache.org/jira/browse/KNOX-2065) | Upgrade nimbus-jose-jwt to 8.1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2087](https://issues.apache.org/jira/browse/KNOX-2087) | Upgrade jetty to 9.4.22.v20191022 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2092](https://issues.apache.org/jira/browse/KNOX-2092) | Upgrade jna to 5.5.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2089](https://issues.apache.org/jira/browse/KNOX-2089) | Upgrade joda-time to 2.10.5 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2085](https://issues.apache.org/jira/browse/KNOX-2085) | Upgrade metrics to 4.1.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2084](https://issues.apache.org/jira/browse/KNOX-2084) | Upgrade nimbus-jose-jwt to 8.2 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2078](https://issues.apache.org/jira/browse/KNOX-2078) | Upgrade rest-assured to 4.1.2 |  Trivial | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2093](https://issues.apache.org/jira/browse/KNOX-2093) | Upgrade slf4j to 1.7.29 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2077](https://issues.apache.org/jira/browse/KNOX-2077) | Upgrade spring-core to 5.2.0.RELEASE |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2088](https://issues.apache.org/jira/browse/KNOX-2088) | Upgrade spring-vault to 2.1.4.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2081](https://issues.apache.org/jira/browse/KNOX-2081) | Upgrade zookeeper to 3.5.6 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2090](https://issues.apache.org/jira/browse/KNOX-2090) | Upgrade javax.inject to 2.4.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2079](https://issues.apache.org/jira/browse/KNOX-2079) | Upgrade jacoco-maven-plugin to 0.8.5 |  Trivial | Build, Tests | Kevin Risden | Kevin Risden |
| [KNOX-2083](https://issues.apache.org/jira/browse/KNOX-2083) | Upgrade hamcrest to 2.2 |  Major | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2080](https://issues.apache.org/jira/browse/KNOX-2080) | Upgrade forbiddenapis to 2.7 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2091](https://issues.apache.org/jira/browse/KNOX-2091) | Upgrade findsecbugs to 1.10.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2086](https://issues.apache.org/jira/browse/KNOX-2086) | Upgrade eclipselink to 2.7.5 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2082](https://issues.apache.org/jira/browse/KNOX-2082) | Upgrade dockerfile-maven-plugin to 1.4.13 |  Trivial | Build, docker | Kevin Risden | Kevin Risden |
| [KNOX-2094](https://issues.apache.org/jira/browse/KNOX-2094) | Upgrade httpcore to 4.4.12 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-1842](https://issues.apache.org/jira/browse/KNOX-1842) | Upgrade httpclient to 4.5.10 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2109](https://issues.apache.org/jira/browse/KNOX-2109) | Upgrade nimbus-jose-jwt to 8.2.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2108](https://issues.apache.org/jira/browse/KNOX-2108) | Upgrade pac4j to 3.8.3 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2106](https://issues.apache.org/jira/browse/KNOX-2106) | Upgrade spring-core to 5.2.1.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2107](https://issues.apache.org/jira/browse/KNOX-2107) | Upgrade spring-vault to 2.2.0.RELEASE |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2110](https://issues.apache.org/jira/browse/KNOX-2110) | Upgrade xmlsec to 2.1.4 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2111](https://issues.apache.org/jira/browse/KNOX-2111) | Upgrade java-support to 7.5.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2112](https://issues.apache.org/jira/browse/KNOX-2112) | Upgrade dom4j to 2.1.1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2113](https://issues.apache.org/jira/browse/KNOX-2113) | Upgrade mina-core to 2.0.21 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2118](https://issues.apache.org/jira/browse/KNOX-2118) | Upgrade checkstyle to 8.26 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2120](https://issues.apache.org/jira/browse/KNOX-2120) | Upgrade easymock to 4.1 |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2119](https://issues.apache.org/jira/browse/KNOX-2119) | Upgrade jackson to 2.10.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2117](https://issues.apache.org/jira/browse/KNOX-2117) | Upgrade testcontainers to 1.12.3 |  Trivial | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2142](https://issues.apache.org/jira/browse/KNOX-2142) | Upgrade jetty to 9.4.24.v20191120 |  Minor | Server | Kevin Risden | Kevin Risden |
| [KNOX-2143](https://issues.apache.org/jira/browse/KNOX-2143) | Upgrade shiro to 1.4.2 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-1962](https://issues.apache.org/jira/browse/KNOX-1962) | CM discovery - Avoid reading krb5 login config multiple times |  Minor | cm-discovery | Kevin Risden | Philip Zampino |
| [KNOX-1935](https://issues.apache.org/jira/browse/KNOX-1935) | CM discovery - Hue should not have both LB and non LB |  Major | cm-discovery | Kevin Risden | Philip Zampino |
| [KNOX-1921](https://issues.apache.org/jira/browse/KNOX-1921) | CM discovery - Hue Load balancer HTTP/HTTPS scheme |  Major | cm-discovery | Jean-Francois Desjeans Gauthier | Philip Zampino |
| [KNOX-1931](https://issues.apache.org/jira/browse/KNOX-1931) | CM discovery - WEBHBASE URLs not discovered |  Major | cm-discovery | Philip Zampino | Philip Zampino |
| [KNOX-1932](https://issues.apache.org/jira/browse/KNOX-1932) | CM discovery - WEBHCAT URLs not discovered |  Major | cm-discovery | Philip Zampino | Philip Zampino |
| [KNOX-1970](https://issues.apache.org/jira/browse/KNOX-1970) | CM discovery - Add Impala HS2 to auto discovery |  Major | cm-discovery | Thomas Tauber-Marshall | Philip Zampino |
| [KNOX-2156](https://issues.apache.org/jira/browse/KNOX-2156) | CM discovery - KUDUUI discovery |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-1951](https://issues.apache.org/jira/browse/KNOX-1951) | CM discovery - NIFI should be auto discovered |  Major | cm-discovery | Kevin Risden | Sandeep More |
| [KNOX-2158](https://issues.apache.org/jira/browse/KNOX-2158) | CM discovery - NIFI-REGISTRY should be auto discovered |  Major | cm-discovery | Kevin Risden | Sandeep More |
| [KNOX-2178](https://issues.apache.org/jira/browse/KNOX-2178) | Upgrade woodstox-core to 6.0.3 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2181](https://issues.apache.org/jira/browse/KNOX-2181) | Upgrade testcontainers to 1.12.4 |  Trivial | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2183](https://issues.apache.org/jira/browse/KNOX-2183) | Upgrade spring-core to 5.2.2.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2175](https://issues.apache.org/jira/browse/KNOX-2175) | Upgrade slf4j to 1.7.30 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2180](https://issues.apache.org/jira/browse/KNOX-2180) | Upgrade protobuf-java to 3.11.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2173](https://issues.apache.org/jira/browse/KNOX-2173) | Upgrade nimbus-jose-jwt to 8.4 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2179](https://issues.apache.org/jira/browse/KNOX-2179) | Upgrade metrics to 4.1.2 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2184](https://issues.apache.org/jira/browse/KNOX-2184) | Upgrade maven-enforcer-plugin to 3.0.0-M3 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-2177](https://issues.apache.org/jira/browse/KNOX-2177) | Upgrade log4j to 2.13.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2170](https://issues.apache.org/jira/browse/KNOX-2170) | Upgrade junit to 1.14 |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2174](https://issues.apache.org/jira/browse/KNOX-2174) | Upgrade jetty to 9.4.25.v20191220 |  Trivial | Server | Kevin Risden | Kevin Risden |
| [KNOX-2169](https://issues.apache.org/jira/browse/KNOX-2169) | Upgrade jackson to 2.10.2 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2165](https://issues.apache.org/jira/browse/KNOX-2165) | Upgrade httpcore to 4.4.13 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2172](https://issues.apache.org/jira/browse/KNOX-2172) | Upgrade guava to 28.2-jre |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2166](https://issues.apache.org/jira/browse/KNOX-2166) | Upgrade apache pom to 22 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2164](https://issues.apache.org/jira/browse/KNOX-2164) | Upgrade asm to 7.3.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2182](https://issues.apache.org/jira/browse/KNOX-2182) | Upgrade aspectj to 1.9.5 |  Trivial | KnoxShell | Kevin Risden | Kevin Risden |
| [KNOX-2171](https://issues.apache.org/jira/browse/KNOX-2171) | Upgrade checkstyle to 8.28 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2176](https://issues.apache.org/jira/browse/KNOX-2176) | Upgrade cloudera-manager-api to 7.0.3 |  Major | cm-discovery | Kevin Risden | Kevin Risden |
| [KNOX-2168](https://issues.apache.org/jira/browse/KNOX-2168) | Upgrade commons-codec to 1.14 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2185](https://issues.apache.org/jira/browse/KNOX-2185) | Upgrade dependency-check-maven to 5.2.4 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-2167](https://issues.apache.org/jira/browse/KNOX-2167) | Upgrade frontend-maven-plugin to 1.9.1 |  Major | AdminUI, Build | Kevin Risden | Kevin Risden |
| [KNOX-2196](https://issues.apache.org/jira/browse/KNOX-2196) | Upgrade caffeine to 2.8.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2197](https://issues.apache.org/jira/browse/KNOX-2197) | Upgrade dependency-check-maven to 5.3.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2198](https://issues.apache.org/jira/browse/KNOX-2198) | Upgrade groovy to 2.5.9 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2192](https://issues.apache.org/jira/browse/KNOX-2192) | Upgrade httpclient to 4.5.11 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2195](https://issues.apache.org/jira/browse/KNOX-2195) | Upgrade jetty to 9.4.26.v20200117 |  Minor | Server | Kevin Risden | Kevin Risden |
| [KNOX-2193](https://issues.apache.org/jira/browse/KNOX-2193) | Upgrade rest-assured to 4.2.0 |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2199](https://issues.apache.org/jira/browse/KNOX-2199) | Upgrade spring-core to 5.2.3.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2194](https://issues.apache.org/jira/browse/KNOX-2194) | Upgrade spring-vault to 2.2.1.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2191](https://issues.apache.org/jira/browse/KNOX-2191) | Upgrade testcontainers to 1.12.5 |  Trivial | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2203](https://issues.apache.org/jira/browse/KNOX-2203) | Upgrade admin-ui npm dependencies |  Major | AdminUI | Kevin Risden | Kevin Risden |
| [KNOX-2217](https://issues.apache.org/jira/browse/KNOX-2217) | Upgrade apache pom to 23 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2219](https://issues.apache.org/jira/browse/KNOX-2219) | Upgrade checkstyle to 8.29 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2218](https://issues.apache.org/jira/browse/KNOX-2218) | Upgrade easymock to 4.2 |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2220](https://issues.apache.org/jira/browse/KNOX-2220) | Upgrade nimbus-jose-jwt to 8.5 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2248](https://issues.apache.org/jira/browse/KNOX-2248) | Upgrade cryptacular to 1.2.4 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2245](https://issues.apache.org/jira/browse/KNOX-2245) | Upgrade maven-checkstyle-plugin to 3.1.1 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-2242](https://issues.apache.org/jira/browse/KNOX-2242) | Upgrade metrics to 4.1.3 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2241](https://issues.apache.org/jira/browse/KNOX-2241) | Upgrade nimbus-jose-jwt to 8.8 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2246](https://issues.apache.org/jira/browse/KNOX-2246) | Upgrade protobuf-java to 3.11.4 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2244](https://issues.apache.org/jira/browse/KNOX-2244) | Upgrade spotbugs to 4.0.0 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2247](https://issues.apache.org/jira/browse/KNOX-2247) | Upgrade zookeeper to 3.5.7 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2243](https://issues.apache.org/jira/browse/KNOX-2243) | Upgrade groovy to 3.0.1 |  Major | KnoxShell | Kevin Risden | Kevin Risden |
| [KNOX-2263](https://issues.apache.org/jira/browse/KNOX-2263) | Docker - make sure not to put anything except version in the tag |  Major | docker | Kevin Risden | Kevin Risden |
| [KNOX-2273](https://issues.apache.org/jira/browse/KNOX-2273) | Upgrade checkstyle to 8.30 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2280](https://issues.apache.org/jira/browse/KNOX-2280) | Upgrade cors-filter to 2.9 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2282](https://issues.apache.org/jira/browse/KNOX-2282) | Upgrade curator to 4.3.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2281](https://issues.apache.org/jira/browse/KNOX-2281) | Upgrade eclipselink to 2.7.6 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2272](https://issues.apache.org/jira/browse/KNOX-2272) | Upgrade jackson to 2.10.3 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2278](https://issues.apache.org/jira/browse/KNOX-2278) | Upgrade jetty to 9.4.27.v20200227 |  Minor | Server | Kevin Risden | Kevin Risden |
| [KNOX-2274](https://issues.apache.org/jira/browse/KNOX-2274) | Upgrade log4j2 to 2.13.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2276](https://issues.apache.org/jira/browse/KNOX-2276) | Upgrade metrics to 4.1.4 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2271](https://issues.apache.org/jira/browse/KNOX-2271) | Upgrade nimbus-jose-jwt to 8.9 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2279](https://issues.apache.org/jira/browse/KNOX-2279) | Upgrade spring-core to 5.2.4.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2277](https://issues.apache.org/jira/browse/KNOX-2277) | Upgrade spring-vault to 2.2.2.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2270](https://issues.apache.org/jira/browse/KNOX-2270) | Upgrade testcontainers to 1.13.0 |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2275](https://issues.apache.org/jira/browse/KNOX-2275) | Upgrade woodstox-core to 6.1.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2295](https://issues.apache.org/jira/browse/KNOX-2295) | Improve UI services display on Knox Home page |  Major | Homepage | Sandor Molnar | Sandor Molnar |
| [KNOX-2319](https://issues.apache.org/jira/browse/KNOX-2319) | Upgrade commons-compress to 1.20 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2320](https://issues.apache.org/jira/browse/KNOX-2320) | Upgrade xmlsec to 2.1.5 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2325](https://issues.apache.org/jira/browse/KNOX-2325) | Upgrade asm to 8.0.1 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2326](https://issues.apache.org/jira/browse/KNOX-2326) | Upgrade bcprov-jdk15on to 1.65 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2328](https://issues.apache.org/jira/browse/KNOX-2328) | Upgrade checkstyle to 8.31 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2327](https://issues.apache.org/jira/browse/KNOX-2327) | Upgrade commons-lang3 to 3.10 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2329](https://issues.apache.org/jira/browse/KNOX-2329) | Upgrade dependency-check-maven to 5.3.2 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2323](https://issues.apache.org/jira/browse/KNOX-2323) | Upgrade groovy to 3.0.3 |  Trivial | KnoxShell | Kevin Risden | Kevin Risden |
| [KNOX-2336](https://issues.apache.org/jira/browse/KNOX-2336) | Upgrade httpclient to 4.5.12 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2334](https://issues.apache.org/jira/browse/KNOX-2334) | Upgrade maven-dependency-plugin to 3.1.2 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-2324](https://issues.apache.org/jira/browse/KNOX-2324) | Upgrade metrics to 4.1.6 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2332](https://issues.apache.org/jira/browse/KNOX-2332) | Upgrade spotbugs-maven-plugin to 4.0.0 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2331](https://issues.apache.org/jira/browse/KNOX-2331) | Upgrade spotbugs to 4.0.1 |  Trivial | Build | Kevin Risden | Kevin Risden |
| [KNOX-2330](https://issues.apache.org/jira/browse/KNOX-2330) | Upgrade spring-core to 5.2.5.RELEASE |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2333](https://issues.apache.org/jira/browse/KNOX-2333) | Upgrade rest-assured to 4.3.0 |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2322](https://issues.apache.org/jira/browse/KNOX-2322) | Upgrade nimbus-jose-jwt to 8.14.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2338](https://issues.apache.org/jira/browse/KNOX-2338) | Upgrade apacheds.directory.server.version to 2.0.0.AM26 |  Minor | . | Kevin Risden | Kevin Risden |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1993](https://issues.apache.org/jira/browse/KNOX-1993) | Documenting new default of knoxsso.cookie.secure.only |  Major | Release | Sandor Molnar | Sandor Molnar |
| [KNOX-2017](https://issues.apache.org/jira/browse/KNOX-2017) | Make Cloudera repository available in Knox's parent POM |  Critical | Build | Sandor Molnar | Sandor Molnar |
| [KNOX-2026](https://issues.apache.org/jira/browse/KNOX-2026) | Accept Impala's authentication cookies |  Major | Server | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [KNOX-2098](https://issues.apache.org/jira/browse/KNOX-2098) | OWASP Add Nov 2019 suppressions for false positives |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2114](https://issues.apache.org/jira/browse/KNOX-2114) | Add OWASP suppression for cas-client-core |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2115](https://issues.apache.org/jira/browse/KNOX-2115) | Improve .travis.yml |  Minor | Build, Tests | Kevin Risden | Kevin Risden |
| [KNOX-2116](https://issues.apache.org/jira/browse/KNOX-2116) | com.nimbusds:lang-tag needs a fixed version |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2055](https://issues.apache.org/jira/browse/KNOX-2055) | Document ConfigurableDispatch |  Minor | Site | Sandor Molnar | Sandor Molnar |
| [KNOX-2257](https://issues.apache.org/jira/browse/KNOX-2257) | Documentation for KNOX-932 / KNOX-2285 gateway.server.header.enabled |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-2290](https://issues.apache.org/jira/browse/KNOX-2290) | Remove http references from Knox site |  Major | Site | Kevin Risden | Kevin Risden |
| [KNOX-2293](https://issues.apache.org/jira/browse/KNOX-2293) | Mutual TLS docs can be improved |  Minor | Site | Kevin Risden | Kevin Risden |
| [KNOX-2292](https://issues.apache.org/jira/browse/KNOX-2292) | Update Knox website to point to new downloads location |  Major | Site | Kevin Risden | Kevin Risden |


