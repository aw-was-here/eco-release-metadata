
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

## Release 1.5.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-2355](https://issues.apache.org/jira/browse/KNOX-2355) | Update Atlas rewrite.xml for new UI changes |  Major | . | Nixon Rodrigues | Nixon Rodrigues |
| [KNOX-2365](https://issues.apache.org/jira/browse/KNOX-2365) | Let end-users manage (CRUD) shared-providers using the Hadoop Style XML framework |  Major | . | Sandor Molnar | Sandor Molnar |
| [KNOX-2413](https://issues.apache.org/jira/browse/KNOX-2413) | Add JWT support for HadoopAuth provider |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2459](https://issues.apache.org/jira/browse/KNOX-2459) | KNOX-METADATA, KNOXSSOUT and KNOX-SESSSION does not need any URL or param to be added in a topology |  Major | . | Sandor Molnar | Sandor Molnar |
| [KNOX-843](https://issues.apache.org/jira/browse/KNOX-843) | Add support for load balancing multiple clients across backend service instances |  Major | Server | Sam Hjelmfelt | Sandeep More |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1410](https://issues.apache.org/jira/browse/KNOX-1410) | Knox Shell support for remote Alias management |  Major | KnoxShell | Philip Zampino | Philip Zampino |
| [KNOX-2342](https://issues.apache.org/jira/browse/KNOX-2342) | CommonIdentityAssertionFilter calling mapGroupPrincipals Twice |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-2353](https://issues.apache.org/jira/browse/KNOX-2353) | Disable CM descriptor monitoring by default |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2351](https://issues.apache.org/jira/browse/KNOX-2351) | Prevent the CM configuration monitor from being suspended |  Major | cm-discovery | Sandor Molnar | Sandor Molnar |
| [KNOX-2354](https://issues.apache.org/jira/browse/KNOX-2354) | Add minimal service for proxying HBase artifacts from WebUI |  Major | . | Josh Elser | Josh Elser |
| [KNOX-2382](https://issues.apache.org/jira/browse/KNOX-2382) | Log the token when it's expired |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2255](https://issues.apache.org/jira/browse/KNOX-2255) | Enrich service metadata with initial parameters |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2318](https://issues.apache.org/jira/browse/KNOX-2318) | Bump version dependencies April 2020 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2406](https://issues.apache.org/jira/browse/KNOX-2406) | Use dependency bom for dependency management |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2434](https://issues.apache.org/jira/browse/KNOX-2434) | Knox should fallback to JDK default keystore/truststore type instead of hardcoding JKS |  Major | Server | Kevin Risden | Kevin Risden |
| [KNOX-2412](https://issues.apache.org/jira/browse/KNOX-2412) | Add Logout Link to Home Page for Select Authentication Providers |  Major | Homepage | Larry McCay | Larry McCay |
| [KNOX-2403](https://issues.apache.org/jira/browse/KNOX-2403) | Bump version dependencies July 2020 |  Major | . | Kevin Risden |  |
| [KNOX-2461](https://issues.apache.org/jira/browse/KNOX-2461) | Move JWT token display utility to module shared by server and client modules |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-2462](https://issues.apache.org/jira/browse/KNOX-2462) | Let end-users customize credential store type |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2463](https://issues.apache.org/jira/browse/KNOX-2463) | Let end-users customize credential store algorithm |  Major | . | Sandor Molnar | Sandor Molnar |
| [KNOX-2467](https://issues.apache.org/jira/browse/KNOX-2467) | Enable Jetty's X-Forwarded Header Support |  Major | Server | Larry McCay | Larry McCay |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-2350](https://issues.apache.org/jira/browse/KNOX-2350) | Make sure CM configuration monitor handles event w/o COMMAND and/or COMMAND\_STATUS attributes |  Major | cm-discovery | J.Andreina | Sandor Molnar |
| [KNOX-2352](https://issues.apache.org/jira/browse/KNOX-2352) | Knox Token State Eviction Should Be Based on Expiration and Extended Default Grace Period |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-2357](https://issues.apache.org/jira/browse/KNOX-2357) | Descriptor handler should not default discovery type to Ambari |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-2356](https://issues.apache.org/jira/browse/KNOX-2356) | Scroll bar on admin ui required for provider and descriptor details panel |  Major | AdminUI | J.Andreina | Sandor Molnar |
| [KNOX-2348](https://issues.apache.org/jira/browse/KNOX-2348) | knoxcli fails to add alias when remote zookeeper registry is enabled and uses Kerberos |  Major | KnoxCLI | Sandeep More | Sandeep More |
| [KNOX-2367](https://issues.apache.org/jira/browse/KNOX-2367) | Fix rewrite rules for HDFS UI fonts and bootstrap.min.css.map |  Major | Server | Lokesh Jain | Lokesh Jain |
| [KNOX-2369](https://issues.apache.org/jira/browse/KNOX-2369) | Knox throws java.lang.IllegalStateException in case of expired or invalid token |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-2368](https://issues.apache.org/jira/browse/KNOX-2368) | CM Cluster Configuration Monitor Does Not Support Rolling Restart Events |  Major | cm-discovery | Philip Zampino | Philip Zampino |
| [KNOX-2371](https://issues.apache.org/jira/browse/KNOX-2371) | DefaultTopologyService may skip cluster config change processing of valid descriptors |  Major | Server | Philip Zampino | Philip Zampino |
| [KNOX-2383](https://issues.apache.org/jira/browse/KNOX-2383) | Knox token is expired upon immediate token request after creation |  Critical | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2344](https://issues.apache.org/jira/browse/KNOX-2344) | Rename gateway-cm-integration module and related resources |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2397](https://issues.apache.org/jira/browse/KNOX-2397) | knox failed to start with error "java.lang.NoSuchMethodError: org.eclipse.persistence.internal.oxm.mappings.Field.setNestedArray(Z)V" |  Major | Server | zhangbutao | zhangbutao |
| [KNOX-2435](https://issues.apache.org/jira/browse/KNOX-2435) | Fix NiFi and NiFi Registry UI links in Knox UI |  Major | . | Vitaly Brodetskyi | Vitaly Brodetskyi |
| [KNOX-2410](https://issues.apache.org/jira/browse/KNOX-2410) | CM service discovery should handle restart due to stale configurations |  Major | cm-discovery | Sandor Molnar | Sandor Molnar |
| [KNOX-2437](https://issues.apache.org/jira/browse/KNOX-2437) | Websocket URL encoded request |  Major | Server | Andrea Pilo | Andrea Pilo |
| [KNOX-2453](https://issues.apache.org/jira/browse/KNOX-2453) | Zeppelinws fails with error 'Host does not match SNI' |  Major | websockets | Sandeep More | Sandeep More |
| [KNOX-2466](https://issues.apache.org/jira/browse/KNOX-2466) | Document KNOX-843 - load balancing multiple backend services |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-2464](https://issues.apache.org/jira/browse/KNOX-2464) | Make sure Knox CLI uses gateway-site.xml values in ConfigurableEncryptor |  Major | . | Sandor Molnar | Sandor Molnar |
| [KNOX-2347](https://issues.apache.org/jira/browse/KNOX-2347) | Github Actions for shellcheck is failing |  Minor | Tests | Kevin Risden |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-2366](https://issues.apache.org/jira/browse/KNOX-2366) | Expand Knox homepage UI section automatically |  Major | Homepage | Kevin Risden | Sandor Molnar |
| [KNOX-2343](https://issues.apache.org/jira/browse/KNOX-2343) | Improve API services display on Knox Home page |  Major | Homepage | Sandor Molnar | Sandor Molnar |
| [KNOX-2404](https://issues.apache.org/jira/browse/KNOX-2404) | Update AdminUI and Homepage NodeJS dependencies |  Major | AdminUI, Homepage | Kevin Risden | Kevin Risden |
| [KNOX-2221](https://issues.apache.org/jira/browse/KNOX-2221) | Upgrade shiro to 1.5.3 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2405](https://issues.apache.org/jira/browse/KNOX-2405) | Upgrade transitive Netty to 4.1.51.Final |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2417](https://issues.apache.org/jira/browse/KNOX-2417) | Upgrade log4j to 2.13.3 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2415](https://issues.apache.org/jira/browse/KNOX-2415) | Upgrade joda-time to 2.10.6 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2418](https://issues.apache.org/jira/browse/KNOX-2418) | Upgrade jetty to 9.4.30.v20200611 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2419](https://issues.apache.org/jira/browse/KNOX-2419) | Upgrade jackson to 2.11.1 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2416](https://issues.apache.org/jira/browse/KNOX-2416) | Upgrade frontend-maven-plugin to 1.10.0 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2414](https://issues.apache.org/jira/browse/KNOX-2414) | Upgrade dom4j to 2.1.3 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2422](https://issues.apache.org/jira/browse/KNOX-2422) | Upgrade commons-text to 1.9 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2421](https://issues.apache.org/jira/browse/KNOX-2421) | Upgrade commons-lang3 to 3.11 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2427](https://issues.apache.org/jira/browse/KNOX-2427) | Upgrade aspectj to 1.9.6 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2429](https://issues.apache.org/jira/browse/KNOX-2429) | Upgrade bcprov-jdk15on to 1.66 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2430](https://issues.apache.org/jira/browse/KNOX-2430) | Upgrade caffeine to 2.8.5 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2425](https://issues.apache.org/jira/browse/KNOX-2425) | Upgrade checkstyle to 8.35 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2423](https://issues.apache.org/jira/browse/KNOX-2423) | Upgrade commons-io to 2.7 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2426](https://issues.apache.org/jira/browse/KNOX-2426) | Upgrade groovy to 3.0.5 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2424](https://issues.apache.org/jira/browse/KNOX-2424) | Upgrade protobuf-java to 3.12.4 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2431](https://issues.apache.org/jira/browse/KNOX-2431) | Upgrade rest-assured to 4.3.1 |  Trivial | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2432](https://issues.apache.org/jira/browse/KNOX-2432) | Upgrade spotbugs to 4.0.6 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2433](https://issues.apache.org/jira/browse/KNOX-2433) | Upgrade spotbugs-maven-plugin to 4.0.4 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2337](https://issues.apache.org/jira/browse/KNOX-2337) | Upgrade pac4j to 4.0.3 and opensaml to 3.4.5 |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2442](https://issues.apache.org/jira/browse/KNOX-2442) | Upgrade checkstyle to 8.36 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2441](https://issues.apache.org/jira/browse/KNOX-2441) | Upgrade commons-codec to 1.15 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2444](https://issues.apache.org/jira/browse/KNOX-2444) | Upgrade commons-net to 3.7 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2440](https://issues.apache.org/jira/browse/KNOX-2440) | Upgrade dependency-check-maven to 6.0.0 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2446](https://issues.apache.org/jira/browse/KNOX-2446) | Upgrade jackson to 2.11.2 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2443](https://issues.apache.org/jira/browse/KNOX-2443) | Upgrade spotbugs to 4.1.2 |  Minor | Build | Kevin Risden | Kevin Risden |
| [KNOX-2428](https://issues.apache.org/jira/browse/KNOX-2428) | Upgrade metrics to 4.1.12.1 |  Trivial | . | Kevin Risden | Kevin Risden |
| [KNOX-2445](https://issues.apache.org/jira/browse/KNOX-2445) | Upgrade spring to 5.2.8.RELEASE |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2448](https://issues.apache.org/jira/browse/KNOX-2448) | Upgrade exec-maven-plugin to 3.0.0 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2449](https://issues.apache.org/jira/browse/KNOX-2449) | Upgrade jna to 5.6.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2450](https://issues.apache.org/jira/browse/KNOX-2450) | Upgrade maven-bundle-plugin to 5.1.1 |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2452](https://issues.apache.org/jira/browse/KNOX-2452) | Upgrade netty to 4.1.52.Final |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2451](https://issues.apache.org/jira/browse/KNOX-2451) | Upgrade protobuf-java to 3.13.0 |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2447](https://issues.apache.org/jira/browse/KNOX-2447) | Upgrade testcontainers to 1.14.3 |  Minor | Tests | Kevin Risden | Kevin Risden |
| [KNOX-2454](https://issues.apache.org/jira/browse/KNOX-2454) | Upgrade jetty to 9.4.31.v20200723 |  Minor | Server | Kevin Risden | Kevin Risden |
| [KNOX-2455](https://issues.apache.org/jira/browse/KNOX-2455) | Upgrade Shiro to 1.6.0 |  Major | . | Kevin Risden | Sandeep More |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-2346](https://issues.apache.org/jira/browse/KNOX-2346) | Remove unused maxRetryAttempts and retrySleep |  Major | . | Kevin Risden | Kevin Risden |
| [KNOX-2359](https://issues.apache.org/jira/browse/KNOX-2359) | Knox src zip should not include node\_modules folder |  Major | Build | Kevin Risden | Kevin Risden |
| [KNOX-2360](https://issues.apache.org/jira/browse/KNOX-2360) | Add .asf.yaml to link Jira and Github |  Minor | . | Kevin Risden | Kevin Risden |
| [KNOX-2386](https://issues.apache.org/jira/browse/KNOX-2386) | Implement Autodiscovery in Knox for Flink |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2390](https://issues.apache.org/jira/browse/KNOX-2390) | Configure SAML using provider parameters |  Major | Server | Sandor Molnar | Sandor Molnar |
| [KNOX-2399](https://issues.apache.org/jira/browse/KNOX-2399) | Implement ZK token state service |  Major | . | Sandor Molnar | Sandor Molnar |
| [KNOX-2402](https://issues.apache.org/jira/browse/KNOX-2402) | Develop a performance-test framework to test token state service |  Major | . | Sandor Molnar | Sandor Molnar |
| [KNOX-2458](https://issues.apache.org/jira/browse/KNOX-2458) | KnoxAuth - Upgrade to JQuery 3.5.1 |  Minor | KnoxSSO | Kevin Risden | Kevin Risden |
| [KNOX-2408](https://issues.apache.org/jira/browse/KNOX-2408) | Improve AliasBasedTokenState service performance |  Major | Server | Sandor Molnar | Sandor Molnar |


