
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

## Release 2.0.0 - 2019-08-07



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2213](https://issues.apache.org/jira/browse/RANGER-2213) | Tomcat Security Vulnerability Alert. The version of the tomcat for ranger should upgrade to 7.0.90. |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2277](https://issues.apache.org/jira/browse/RANGER-2277) | Kylin repository config missing "Common Name for Certificate" |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2288](https://issues.apache.org/jira/browse/RANGER-2288) | Sqoop repository config missing "Common Name for Certificate" |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2244](https://issues.apache.org/jira/browse/RANGER-2244) | Tomcat Security Vulnerability Alert. The version of the tomcat for ranger should upgrade to 7.0.91 or later. |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2303](https://issues.apache.org/jira/browse/RANGER-2303) | Add kylin-plugin infomation to README.txt |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2170](https://issues.apache.org/jira/browse/RANGER-2170) | Ranger supports plugin to enable, monitor and manage Elasticsearch |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2175](https://issues.apache.org/jira/browse/RANGER-2175) | Write install guide for Ranger Elasticsearch plugin RANGER-2170 |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2317](https://issues.apache.org/jira/browse/RANGER-2317) | Enable compilation on JDK11 |  Major | admin, plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2421](https://issues.apache.org/jira/browse/RANGER-2421) | Solr audit fails in Atlas plugin |  Major | audit, plugins | Zsombor Gegesy | Zsombor Gegesy |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2209](https://issues.apache.org/jira/browse/RANGER-2209) | Service Definition for ABFS to support Ranger Authorization |  Major | Ranger | Yuan Gao | Yuan Gao |
| [RANGER-2281](https://issues.apache.org/jira/browse/RANGER-2281) | Support Trusted Proxy in ranger |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2232](https://issues.apache.org/jira/browse/RANGER-2232) | Security Zones feature in Apache Ranger |  Major | admin | Madhan Neethiraj | Abhay Kulkarni |
| [RANGER-2331](https://issues.apache.org/jira/browse/RANGER-2331) | Ranger-KMS - KeySecure HSM Integration |  Major | kms, Ranger | Velmurugan Periasamy | Gautam Borad |
| [RANGER-2354](https://issues.apache.org/jira/browse/RANGER-2354) | Add custom condition at policy level |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2414](https://issues.apache.org/jira/browse/RANGER-2414) | Enhancements to support roles in Ranger policies |  Major | admin, plugins | Madhan Neethiraj | Abhay Kulkarni |
| [RANGER-2443](https://issues.apache.org/jira/browse/RANGER-2443) | Ranger UI support for access via Knox Trusted Proxy |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2425](https://issues.apache.org/jira/browse/RANGER-2425) | Enhance ranger hive plugin to support sql role commands |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2325](https://issues.apache.org/jira/browse/RANGER-2325) | Implement ranger plugin for Ozone |  Major | plugins, Ranger | Sailaja Polavarapu | Sailaja Polavarapu |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2158](https://issues.apache.org/jira/browse/RANGER-2158) | Performance improvement to REST API call to update policies |  Critical | Ranger | Ramesh Mani | Abhay Kulkarni |
| [RANGER-2162](https://issues.apache.org/jira/browse/RANGER-2162) | Upgrade c3p0 libraries |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2164](https://issues.apache.org/jira/browse/RANGER-2164) | Ranger to add default altlas policy for rangertagsync user. |  Major | admin | Nixon Rodrigues | Nikhil Purbhe |
| [RANGER-2173](https://issues.apache.org/jira/browse/RANGER-2173) | Optimize Trie constuction and Policy lookup |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2169](https://issues.apache.org/jira/browse/RANGER-2169) | Create unique index on service and name column of x\_policy table |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2153](https://issues.apache.org/jira/browse/RANGER-2153) | Supply the function of reverting policy history version. |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2168](https://issues.apache.org/jira/browse/RANGER-2168) | Add service admin user through service config |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2172](https://issues.apache.org/jira/browse/RANGER-2172) | Good coding practices for unix authentication Service in Ranger |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2177](https://issues.apache.org/jira/browse/RANGER-2177) | Handle validations for duplicate configuration item during service create/edit |  Minor | admin | Peng Xing | Peng Xing |
| [RANGER-2181](https://issues.apache.org/jira/browse/RANGER-2181) | Code Improvement To Follow Best Practices |  Major | admin | Mehul Parikh | Bhavik Patel |
| [RANGER-2188](https://issues.apache.org/jira/browse/RANGER-2188) | Support multiple threads to build Trie and on-lookup post-setup for Trie nodes |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2167](https://issues.apache.org/jira/browse/RANGER-2167) | Upgrade to Apache parent pom version 20 |  Minor | admin, plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2191](https://issues.apache.org/jira/browse/RANGER-2191) | Update ranger-tool with new options to control Trie |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2161](https://issues.apache.org/jira/browse/RANGER-2161) | Improvement in policy screen permission item's |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2214](https://issues.apache.org/jira/browse/RANGER-2214) | Do some code improvement for the error message for KylinClient.java |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2212](https://issues.apache.org/jira/browse/RANGER-2212) | Add multiple urls tips for the ‘Kylin URL’ configuration item when creating the kylin-plugin service |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2184](https://issues.apache.org/jira/browse/RANGER-2184) | Update RangerAtlas authorization to authorize add/update/remove of relationships |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2157](https://issues.apache.org/jira/browse/RANGER-2157) | Add NiFi Registry service definition and NiFiRegistryClient |  Major | plugins | Koji Kawamura | Koji Kawamura |
| [RANGER-2210](https://issues.apache.org/jira/browse/RANGER-2210) | Ranger support for Apache Kafka 2.0.0 |  Critical | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2218](https://issues.apache.org/jira/browse/RANGER-2218) | Service-Definition update should not allow updates to names of resources, access-types,  conditions or data-masks |  Major | Ranger | Abhay Kulkarni | Sailaja Polavarapu |
| [RANGER-2231](https://issues.apache.org/jira/browse/RANGER-2231) | Upgrade to Knox 1.1.0 |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2239](https://issues.apache.org/jira/browse/RANGER-2239) | Update to surefire 2.21.0 |  Major | build-infra | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2222](https://issues.apache.org/jira/browse/RANGER-2222) | Apache RangerKafkaPlugin support to handle Kafka Cluster as a new resource |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2221](https://issues.apache.org/jira/browse/RANGER-2221) | Apache Ranger Kafka authorizer should support new resource "DelegationToken" in Apache Kafka 2.0.0 version |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2140](https://issues.apache.org/jira/browse/RANGER-2140) | Upgrade spring and guava libraries |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1958](https://issues.apache.org/jira/browse/RANGER-1958) | [HBase] Implement getUserPermissions API of AccessControlService.Interface to allow clients to access HBase permissions stored in Ranger |  Major | plugins | Ankit Singhal | Ankit Singhal |
| [RANGER-2237](https://issues.apache.org/jira/browse/RANGER-2237) | Upgrade Kylin version to 2.5.0 |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2207](https://issues.apache.org/jira/browse/RANGER-2207) | Allow resources to appear in column mask policies without being visible in access policies |  Major | Ranger | Eric Alton | Nitin Galave |
| [RANGER-2203](https://issues.apache.org/jira/browse/RANGER-2203) | Review and update database schema for ranger policies to minimize database queries/updates |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2243](https://issues.apache.org/jira/browse/RANGER-2243) | Provide option to ranger builds to specifically build a single plugin |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2251](https://issues.apache.org/jira/browse/RANGER-2251) | Need to provide options for making java heap size memory configurable in Ranger services |  Major | Ranger | Vishal Suvagia | Vishal Suvagia |
| [RANGER-2258](https://issues.apache.org/jira/browse/RANGER-2258) | Improve the policy list page to prompt users when the service is disabled |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2257](https://issues.apache.org/jira/browse/RANGER-2257) | Add policyID to error message when click the Access log of Audit |  Minor | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2268](https://issues.apache.org/jira/browse/RANGER-2268) | Optimize policy and tags migration to new schema |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2265](https://issues.apache.org/jira/browse/RANGER-2265) | To make the profile "all" to be active by default when ranger build |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2266](https://issues.apache.org/jira/browse/RANGER-2266) | To make Id to ID in Audit Pages of Ranger Admin |  Minor | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2267](https://issues.apache.org/jira/browse/RANGER-2267) | Add a icon to differentiate the status of the service |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2279](https://issues.apache.org/jira/browse/RANGER-2279) | Reduce the time spent changing passwords during Ranger Admin install |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2286](https://issues.apache.org/jira/browse/RANGER-2286) | Ranger install may be prevented by leftover DB entry |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2291](https://issues.apache.org/jira/browse/RANGER-2291) | Make optimized db schema script idempotent for all DB Flavors |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2295](https://issues.apache.org/jira/browse/RANGER-2295) | Set specific Ranger version in patches status entry table |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2314](https://issues.apache.org/jira/browse/RANGER-2314) |  Do some code improvement for the error message in SqoopClient.java |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2309](https://issues.apache.org/jira/browse/RANGER-2309) | Improve group search on policy edit page. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2216](https://issues.apache.org/jira/browse/RANGER-2216) | Ranger Audit UI lacks the feature to search the audits using Policy Id |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2287](https://issues.apache.org/jira/browse/RANGER-2287) | Improve and optimize db\_setup.py file code |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2330](https://issues.apache.org/jira/browse/RANGER-2330) | Ensure that policy/resource based searches are security-zone aware |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2148](https://issues.apache.org/jira/browse/RANGER-2148) | Update Ranger Hive dependency version to 3.0 |  Critical | Ranger | Ramesh Mani | Colm O hEigeartaigh |
| [RANGER-1935](https://issues.apache.org/jira/browse/RANGER-1935) | Upgrade Ranger to support Apache Hadoop 3.0.0 |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2151](https://issues.apache.org/jira/browse/RANGER-2151) | Update Ranger Hbase dependency version to 2.0 |  Critical | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-1978](https://issues.apache.org/jira/browse/RANGER-1978) | Upgrade Jackson Databind to 2.8.11 |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2341](https://issues.apache.org/jira/browse/RANGER-2341) | Support for Incremental policy updates to improve performance of ranger-admin and plugins by optimal building of policy-engine |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2340](https://issues.apache.org/jira/browse/RANGER-2340) | Add Policy Version to the Ranger Audit log |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2345](https://issues.apache.org/jira/browse/RANGER-2345) | Upgrade Apache Solr version to 7.7.0 or later |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2357](https://issues.apache.org/jira/browse/RANGER-2357) | Improvement on getServices API |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2349](https://issues.apache.org/jira/browse/RANGER-2349) | Provide an API to download policies and tags |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2296](https://issues.apache.org/jira/browse/RANGER-2296) | Enhance Ranger Audit framework to have security zone in the audit |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2353](https://issues.apache.org/jira/browse/RANGER-2353) | Upgrade Apache Thrift Java client library to 0.12.0 |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2093](https://issues.apache.org/jira/browse/RANGER-2093) | RangerHiveAuthorizer showPrivileges should show Hive Objects ACLs from Ranger |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2324](https://issues.apache.org/jira/browse/RANGER-2324) | Bootstrapping Solr in Ranger service start-up |  Minor | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2379](https://issues.apache.org/jira/browse/RANGER-2379) | Support for associating a tag service with security zone and relevant authorization logic |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2386](https://issues.apache.org/jira/browse/RANGER-2386) | Code duplication due to RangerCredentialProvider.getCredentialString returns char[] |  Major | plugins | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-1851](https://issues.apache.org/jira/browse/RANGER-1851) | Enhance Ranger Hive Plugin to support authorization for KILL QUERY command |  Critical | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2391](https://issues.apache.org/jira/browse/RANGER-2391) | Ranger authorization for ADD, COMPILE and CREATE TEMPORARY UDF operation in Hive |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2389](https://issues.apache.org/jira/browse/RANGER-2389) | Ranger Hive Plugin enhancement for KILL query and Replication commands authorization |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2390](https://issues.apache.org/jira/browse/RANGER-2390) | Ranger should add service admin privilege support for hive service objects - LLAP command sets |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-1715](https://issues.apache.org/jira/browse/RANGER-1715) | Enhance Ranger Hive Plugin to support authorization on Hive replication Tasks |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2387](https://issues.apache.org/jira/browse/RANGER-2387) | add public api v2 for security zones |  Major | Ranger | Deepak Sharma | Nikhil Purbhe |
| [RANGER-2377](https://issues.apache.org/jira/browse/RANGER-2377) | Make solr bootstrapping configurable |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2392](https://issues.apache.org/jira/browse/RANGER-2392) | Create / Update zone to have provision to associate Tag based service with zone |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2374](https://issues.apache.org/jira/browse/RANGER-2374) | Add refresh access type to allow sharing policies between Hive and Impala |  Major | plugins | Fredy Wijaya | Ramesh Mani |
| [RANGER-2382](https://issues.apache.org/jira/browse/RANGER-2382) | Improvement to Access Audit page-Add ‘agentHostname’ column to audit log table, which records IP-address/hostname of the plugin |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2407](https://issues.apache.org/jira/browse/RANGER-2407) | [Best Practices] Update/Remove default header values sent from Ranger |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2351](https://issues.apache.org/jira/browse/RANGER-2351) | Implement Import / Export of Policies by Zone |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2408](https://issues.apache.org/jira/browse/RANGER-2408) | Restrict Ranger User's capabilities according to their role |  Major | Ranger | Dhaval B. SHAH | Bhavik Patel |
| [RANGER-2385](https://issues.apache.org/jira/browse/RANGER-2385) | Improvement to Audit page -\> Plugin status tab |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2424](https://issues.apache.org/jira/browse/RANGER-2424) | Track and display application id of service generating access audit on access audit page |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2427](https://issues.apache.org/jira/browse/RANGER-2427) | Tag policies are not evaluated if no security zones are configured |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2435](https://issues.apache.org/jira/browse/RANGER-2435) | Add support for sticky breadcrumbs. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2436](https://issues.apache.org/jira/browse/RANGER-2436) | Custom condition: Access from cluster |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2395](https://issues.apache.org/jira/browse/RANGER-2395) | Add presto plugin |  Major | plugins | Bolke de Bruin | Bolke de Bruin |
| [RANGER-2446](https://issues.apache.org/jira/browse/RANGER-2446) | Suggestion - Include security zone details as part of admin audit for policy update |  Major | Ranger | suja s | Nitin Galave |
| [RANGER-2420](https://issues.apache.org/jira/browse/RANGER-2420) | Ranger spends 36% of CPU in ObjectMapper |  Major | Ranger | Todd Lipcon | Abhay Kulkarni |
| [RANGER-2432](https://issues.apache.org/jira/browse/RANGER-2432) | Upgrade Hadoop Version to 3.1.1 |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2208](https://issues.apache.org/jira/browse/RANGER-2208) | Code improvement to fetch User/Group information and Service Config details |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2454](https://issues.apache.org/jira/browse/RANGER-2454) | Remove the trailing slash in Ranger URL in RangerAdminJersey2RESTClient |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2394](https://issues.apache.org/jira/browse/RANGER-2394) | Filter/exclude multiple users in audit search |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2464](https://issues.apache.org/jira/browse/RANGER-2464) | Upgrade spring, zookeeper, c3p0, jackson-databind, tomcat libraries |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2465](https://issues.apache.org/jira/browse/RANGER-2465) | Create a PolicyCondition to apply if all given tags are present for the accessed resource |  Major | Ranger | suja s | Ramesh Mani |
| [RANGER-2468](https://issues.apache.org/jira/browse/RANGER-2468) | Upgrade jQuery version in Ranger. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2475](https://issues.apache.org/jira/browse/RANGER-2475) | Replacing bootstrap accordion with jquery SlideToggle. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2466](https://issues.apache.org/jira/browse/RANGER-2466) | Improvement in setting cluster Name in RangerAccessRequest |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2458](https://issues.apache.org/jira/browse/RANGER-2458) | Cluster property name changes in Ranger Plugin code |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2481](https://issues.apache.org/jira/browse/RANGER-2481) | Create a tag service when a resource service is created and link it to resource service |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2482](https://issues.apache.org/jira/browse/RANGER-2482) | Ranger: use Solr API to upload config set (during bootstrapping) |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2467](https://issues.apache.org/jira/browse/RANGER-2467) | similar to clusterName custom condition, add clusterType custom condition. |  Major | Ranger | Nikhil Purbhe | Mateen Mansoori |
| [RANGER-2484](https://issues.apache.org/jira/browse/RANGER-2484) | Improve import API to merge the policies if resources are exactly same |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2496](https://issues.apache.org/jira/browse/RANGER-2496) | Update Spring Security version to 4.2.13 |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2322](https://issues.apache.org/jira/browse/RANGER-2322) | Use "TLS" in SSLContext.getInstance |  Major | plugins, usersync | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2494](https://issues.apache.org/jira/browse/RANGER-2494) | Ranger Custom PolicyCondition for TagsNotPresent and  AnyTagPresent |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2489](https://issues.apache.org/jira/browse/RANGER-2489) | Missing dependencies in assembly for Presto plugin |  Major | plugins | Bolke de Bruin | Bolke de Bruin |
| [RANGER-2490](https://issues.apache.org/jira/browse/RANGER-2490) | Add https support while using Solr API to upload config set |  Major | Ranger | Pradeep Agrawal | Fatima Amjad Khan |
| [RANGER-2507](https://issues.apache.org/jira/browse/RANGER-2507) | Support for policy to implicitly deny all accesses not explicitly allowed by it |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2498](https://issues.apache.org/jira/browse/RANGER-2498) | Improvement to plugin status tab. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2503](https://issues.apache.org/jira/browse/RANGER-2503) | Ranger Import API should be able to override an existing policy |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2515](https://issues.apache.org/jira/browse/RANGER-2515) | add .gitignore for project plugin-presto and ranger-presto-plugin-shim |  Trivial | plugins | Peng Xing | Peng Xing |
| [RANGER-2506](https://issues.apache.org/jira/browse/RANGER-2506) | Add cluster name in plugin status tab. |  Major | Ranger | Mateen Mansoori | Mateen Mansoori |
| [RANGER-2508](https://issues.apache.org/jira/browse/RANGER-2508) | Good coding practices for concurrent policy label creation |  Major | Ranger | Preetam Tripathi | Nikhil Purbhe |
| [RANGER-2523](https://issues.apache.org/jira/browse/RANGER-2523) | Ranger Admin debug config improvement |  Major | Ranger | Harshal Chavan | Nikhil Purbhe |
| [RANGER-2517](https://issues.apache.org/jira/browse/RANGER-2517) | UI changes for policy to implicitly deny all accesses not explicitly allowed by it. |  Major | Ranger | Nitin Galave | Nitin Galave |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2112](https://issues.apache.org/jira/browse/RANGER-2112) | Ranger KMS broken with JDK 8 update 171 |  Major | kms | Hernan Fernandez | Pradeep Agrawal |
| [RANGER-2152](https://issues.apache.org/jira/browse/RANGER-2152) | Incorrect debugging information in RangerPluginClassLoader.java |  Trivial | plugins | Peng Xing | Peng Xing |
| [RANGER-1951](https://issues.apache.org/jira/browse/RANGER-1951) | build problems with the saveVersion.py script |  Major | build-infra | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2165](https://issues.apache.org/jira/browse/RANGER-2165) | Address JPA Cache issue when policies Create, Update and Delete are done via REST API in Apache Ranger admin |  Critical | Ranger | Ramesh Mani | Abhay Kulkarni |
| [RANGER-2155](https://issues.apache.org/jira/browse/RANGER-2155) | Ranger Tagsync fails to Authenticate to Atlas when Tag Source set to AtlasRest in Kerberos environment |  Major | Ranger | Vishal Suvagia | Vishal Suvagia |
| [RANGER-2166](https://issues.apache.org/jira/browse/RANGER-2166) | A ClassNotFound exception is thrown with atlasrest as a tag source |  Major | tagsync | Vishal Suvagia | Abhay Kulkarni |
| [RANGER-2180](https://issues.apache.org/jira/browse/RANGER-2180) | Handle token replacement correctly when token is not defined in the request context |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2182](https://issues.apache.org/jira/browse/RANGER-2182) | Handle upgrade scenario since atlas-service def is added with new resources for relationship |  Critical | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2183](https://issues.apache.org/jira/browse/RANGER-2183) | Use INodeAttribute information to authorize HDFS access |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2189](https://issues.apache.org/jira/browse/RANGER-2189) | Atlas service default policies should allow relationship operations for all |  Critical | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2186](https://issues.apache.org/jira/browse/RANGER-2186) | Increment service-specific policy and tag versions after update transaction is committed |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2196](https://issues.apache.org/jira/browse/RANGER-2196) | Ensure that any explicit threads used by Ranger are marked as daemon threads |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2197](https://issues.apache.org/jira/browse/RANGER-2197) | Delegate Admin is not able to create policy |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2201](https://issues.apache.org/jira/browse/RANGER-2201) | Log no ranger audits when entityId value is not null or empty string |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2215](https://issues.apache.org/jira/browse/RANGER-2215) | Can't copy and paste multiple paths into Ranger Admin UI for HDFS create policy |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2204](https://issues.apache.org/jira/browse/RANGER-2204) | Ranger Admin's admin log event for changing Audit Logging of a policy doesn't show the actual changes |  Minor | Ranger | Janos Kovacs | Sailaja Polavarapu |
| [RANGER-2187](https://issues.apache.org/jira/browse/RANGER-2187) | External Group search fails on Ranger UI when installed with postgres |  Major | admin | Mehul Parikh | Bhavik Patel |
| [RANGER-2114](https://issues.apache.org/jira/browse/RANGER-2114) | Internal Exception: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column 'content' at row 1 |  Major | Ranger | Alexander Posledov | Fatima Amjad Khan |
| [RANGER-2195](https://issues.apache.org/jira/browse/RANGER-2195) | TagPolicy not working due to failure in updating tag policy version |  Critical | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2193](https://issues.apache.org/jira/browse/RANGER-2193) | Form validation during testconnection should be consistent with service creation/editing |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2241](https://issues.apache.org/jira/browse/RANGER-2241) | Fix release build scripts to conform to latest Apache release guidelines - Part 2 - Remove sha1 and mds |  Major | Ranger | Colm O hEigeartaigh | Velmurugan Periasamy |
| [RANGER-2235](https://issues.apache.org/jira/browse/RANGER-2235) | Modify the login session detail page as a modal. |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2242](https://issues.apache.org/jira/browse/RANGER-2242) | JiSQL utility is failing Oracle UDF |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2238](https://issues.apache.org/jira/browse/RANGER-2238) | String comparison should not use ‘==’ in ServiceUtil.java |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2245](https://issues.apache.org/jira/browse/RANGER-2245) | Exclude Jetty libraries |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2220](https://issues.apache.org/jira/browse/RANGER-2220) | Admin UI loads slowly because of many small JavaScript files |  Minor | admin | Csaba Koncz | Csaba Koncz |
| [RANGER-2250](https://issues.apache.org/jira/browse/RANGER-2250) | Service configs  fields are not showing for atlas service form page |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2247](https://issues.apache.org/jira/browse/RANGER-2247) | Ranger Plugin for HDFS throws StringIndexOutOfBounds exception when policy resource is "\\" |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2262](https://issues.apache.org/jira/browse/RANGER-2262) | Improvement of export to excel from report listing page for Oracle database. |  Major | Ranger | Harshal Chavan | Nikhil Purbhe |
| [RANGER-2263](https://issues.apache.org/jira/browse/RANGER-2263) | Remove unnecessary explicit dependency for apache commons compress jar in Ranger |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2248](https://issues.apache.org/jira/browse/RANGER-2248) | Sorting does not work in AbstractPredicateUtil.java |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2264](https://issues.apache.org/jira/browse/RANGER-2264) | Kafka default policies for new resources are not showing up in UI when upgrade is done from older version |  Critical | Ranger | Anuja Leekha | Ramesh Mani |
| [RANGER-2269](https://issues.apache.org/jira/browse/RANGER-2269) | Implement best coding practices for validating user input |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2272](https://issues.apache.org/jira/browse/RANGER-2272) | Ensure that case of resource-definition names and access-type names in Ranger policy is the same as in service-definition after successful validation |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2270](https://issues.apache.org/jira/browse/RANGER-2270) | Restrict tag module access to unprivileged users |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2275](https://issues.apache.org/jira/browse/RANGER-2275) | Make db\_setup retry delay configurable |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2273](https://issues.apache.org/jira/browse/RANGER-2273) | Allow service admin and delegated admin user to view list of users and groups though they have 'USER' role |  Major | Ranger | Pradeep Agrawal | Nikhil Purbhe |
| [RANGER-2278](https://issues.apache.org/jira/browse/RANGER-2278) | Unable to delete user if he has references in new ref tables. |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2280](https://issues.apache.org/jira/browse/RANGER-2280) | The emptyText of User Sync and Plugin Status should be reasonable |  Minor | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2276](https://issues.apache.org/jira/browse/RANGER-2276) | Email Address should be verified when Add New User in Ranger Admin |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2284](https://issues.apache.org/jira/browse/RANGER-2284) | Unable to build image using docker |  Major | build-infra | Nelson Costa | Bosco |
| [RANGER-2283](https://issues.apache.org/jira/browse/RANGER-2283) | User is getting total count of groups even if he is assigned to one group due to which pagination is breaking |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2282](https://issues.apache.org/jira/browse/RANGER-2282) | The error message for changing password is incorrect in User Profile page. |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2289](https://issues.apache.org/jira/browse/RANGER-2289) | Unable to get Audit Admin tab page. |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2292](https://issues.apache.org/jira/browse/RANGER-2292) | Test case fix for RANGER-2276 |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2229](https://issues.apache.org/jira/browse/RANGER-2229) | Perform graceful terminate with retries before doing forceful kill for usersync and tagsync |  Major | tagsync, usersync | suja s | Bhavik Patel |
| [RANGER-2297](https://issues.apache.org/jira/browse/RANGER-2297) | getContentSummary validation failure |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2298](https://issues.apache.org/jira/browse/RANGER-2298) | Modify JAVA\_VERSION\_REQUIRED to 1.8 in install.properties |  Minor | admin, kms | Qiang Zhang | Qiang Zhang |
| [RANGER-2299](https://issues.apache.org/jira/browse/RANGER-2299) | Modify the permissions of the kms install.properties file to 700 |  Minor | kms | Qiang Zhang | Qiang Zhang |
| [RANGER-2294](https://issues.apache.org/jira/browse/RANGER-2294) | Front-end and back-end email address regular expression should be the same |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2306](https://issues.apache.org/jira/browse/RANGER-2306) | Knox Plugin doesn't pass X-Forwarded-for remote address to Ranger |  Major | plugins | Vipin Rathor |  |
| [RANGER-2305](https://issues.apache.org/jira/browse/RANGER-2305) | When Audit spooling to local filesystem is enabled, log files of the component have show a wrong error message |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2304](https://issues.apache.org/jira/browse/RANGER-2304) | Need to add property dfs.permissions.ContentSummary.subAccess when enabling Ranger HDFS plugin manually |  Major | Ranger | Vishal Suvagia | Vishal Suvagia |
| [RANGER-2307](https://issues.apache.org/jira/browse/RANGER-2307) | Native code can segfault or return misleading error messages |  Major | usersync | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2316](https://issues.apache.org/jira/browse/RANGER-2316) | Incorrect path in Quick State Guide at http://ranger.apache.org/quick\_start\_guide.html |  Major | documentation | Selvamohan Neethiraj | Selvamohan Neethiraj |
| [RANGER-2313](https://issues.apache.org/jira/browse/RANGER-2313) | tagsync fails to authenticate with ranger in kerberized cluster when using ranger-tagsync-update.sh script |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2311](https://issues.apache.org/jira/browse/RANGER-2311) | After the user profile is updated, the page still displays the original information. |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2318](https://issues.apache.org/jira/browse/RANGER-2318) | Incorrect git url on the homepage |  Minor | documentation | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2321](https://issues.apache.org/jira/browse/RANGER-2321) | Docker build fails due to PhantomJS dependency |  Major | admin | Csaba Koncz | Csaba Koncz |
| [RANGER-2234](https://issues.apache.org/jira/browse/RANGER-2234) | Cannot add or update a child row,a foreign key constraint fails when installing ranger-admin |  Major | admin, Ranger | Haihui Xu | Haihui Xu |
| [RANGER-2328](https://issues.apache.org/jira/browse/RANGER-2328) | Time-based policies do not work correctly if access time is not set in the authorization request |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2327](https://issues.apache.org/jira/browse/RANGER-2327) | Update Ranger db schema to use common sequence name |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2326](https://issues.apache.org/jira/browse/RANGER-2326) | zoneName field is getting added with type "boolean" in Ranger Solr schema |  Major | Ranger | Mugdha Varadkar | Ramesh Mani |
| [RANGER-2337](https://issues.apache.org/jira/browse/RANGER-2337) | Context-Enrichers need to clean up completely when the policy-engine is destroyed |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2333](https://issues.apache.org/jira/browse/RANGER-2333) | Logs does not get generated for Zone Description field available on Security Zone page. |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2334](https://issues.apache.org/jira/browse/RANGER-2334) | Audits: filter out service audit logs and additional users logs from user audit logs |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2335](https://issues.apache.org/jira/browse/RANGER-2335) | Overlapping of 'include' toggle button on policy create/edit page. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1738](https://issues.apache.org/jira/browse/RANGER-1738) | RangerYarnAuthorizer not compatible with Hadoop-3.0.0 |  Major | plugins | shenh062326 | Colm O hEigeartaigh |
| [RANGER-2339](https://issues.apache.org/jira/browse/RANGER-2339) | UI changes for User role users should also have access to Security Zone |  Major | Ranger | Pradeep Agrawal | Nitin Galave |
| [RANGER-2342](https://issues.apache.org/jira/browse/RANGER-2342) | Exclude jackson jaxrs library from ranger-admin packaging |  Blocker | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2343](https://issues.apache.org/jira/browse/RANGER-2343) | Evaluate tag policies in the same security zone as accessed resource |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2344](https://issues.apache.org/jira/browse/RANGER-2344) | Ranger HBase Test failure due to Mini HBase cluster start up issue. |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2350](https://issues.apache.org/jira/browse/RANGER-2350) | Ranger UI: Clicking on zone edit Breadcrumb redirect to 404 page not found |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2336](https://issues.apache.org/jira/browse/RANGER-2336) | Ranger HBase plugin should pack guava lib as a dependency. |  Critical | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2352](https://issues.apache.org/jira/browse/RANGER-2352) | Ranger installation is failing for Oracle and Postgres DB |  Blocker | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2356](https://issues.apache.org/jira/browse/RANGER-2356) | External user's email address can be edited |  Major | admin | László Dénes Terjéki |  |
| [RANGER-2355](https://issues.apache.org/jira/browse/RANGER-2355) | Reports page: policy listing to have column of Zone name |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2359](https://issues.apache.org/jira/browse/RANGER-2359) | Show zone association with tag based service. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2375](https://issues.apache.org/jira/browse/RANGER-2375) | RangerAuthContext is not correctly initialized |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2371](https://issues.apache.org/jira/browse/RANGER-2371) | Security Zone policies do not work correctly when incremental policy updates are enabled |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2373](https://issues.apache.org/jira/browse/RANGER-2373) | User creation POST and PUT response not showing groupIdList and groupNameList with expected data |  Major | Ranger | Pradeep Agrawal | Nikhil Purbhe |
| [RANGER-2367](https://issues.apache.org/jira/browse/RANGER-2367) | Hive "show grants" when Ranger is authorizer should show permission details from Ranger |  Critical | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2381](https://issues.apache.org/jira/browse/RANGER-2381) | Failed to refresh policies when servicename contains space |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2376](https://issues.apache.org/jira/browse/RANGER-2376) | Ranger Plugin ClassLoader Doesn't Restore Thread ClassLoader |  Minor | plugins | Shawn Weeks | Ramesh Mani |
| [RANGER-2372](https://issues.apache.org/jira/browse/RANGER-2372) | Remove non-existing URL entries from spring config file |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2396](https://issues.apache.org/jira/browse/RANGER-2396) | Inconsistency in policy operations in a disabled Ranger service |  Major | admin, plugins | suja s | Abhay Kulkarni |
| [RANGER-2399](https://issues.apache.org/jira/browse/RANGER-2399) | User's listing page hits users API call twice from UI |  Minor | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2383](https://issues.apache.org/jira/browse/RANGER-2383) | Incorrect response when trying to delete user attached to a security zone |  Major | Ranger | suja s | Nikhil Purbhe |
| [RANGER-2384](https://issues.apache.org/jira/browse/RANGER-2384) | Get All Zones API is returning response in raw format,proper response object is required. |  Major | Ranger | Nitin Galave | Nikhil Purbhe |
| [RANGER-2400](https://issues.apache.org/jira/browse/RANGER-2400) | policy name needs to be unique within security zone and service |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2405](https://issues.apache.org/jira/browse/RANGER-2405) | Evaluation of Ranger policies targeted to valid but partial resources |  Major | plugins, Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1955](https://issues.apache.org/jira/browse/RANGER-1955) | Wrong quoting in Ranger SQL install scripts |  Minor | Ranger | Sören Gutzeit | Pradeep Agrawal |
| [RANGER-2409](https://issues.apache.org/jira/browse/RANGER-2409) | Policy level condition sample matcher initialization issue |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2403](https://issues.apache.org/jira/browse/RANGER-2403) | proper error should be thrown when service part of zone being deleted |  Major | Ranger | Deepak Sharma | Nikhil Purbhe |
| [RANGER-2224](https://issues.apache.org/jira/browse/RANGER-2224) | 'drop temporary function \<udf\>' command should be handled by 'global' resource and 'Temorary UDF Admin' permission. |  Major | Ranger | Anuja Leekha | Ramesh Mani |
| [RANGER-2404](https://issues.apache.org/jira/browse/RANGER-2404) | Delegate-admin permission granted by policy needs to be effective only within the zone to which the policy belongs |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2413](https://issues.apache.org/jira/browse/RANGER-2413) | Python script to update rangertagsync config properties |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2411](https://issues.apache.org/jira/browse/RANGER-2411) | Restrict Admin role user to create Zone for KMS service |  Major | Ranger | Harshal Chavan | Nikhil Purbhe |
| [RANGER-2415](https://issues.apache.org/jira/browse/RANGER-2415) | Value of isExcludes flag needs to be considered when matching accessed resource to Ranger policy |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2412](https://issues.apache.org/jira/browse/RANGER-2412) | Policy Condition Evaluators existing and newly created should work in both policy level and policy item level |  Major | Ranger | suja s | Ramesh Mani |
| [RANGER-2419](https://issues.apache.org/jira/browse/RANGER-2419) | Improve sql script to skip statements when atlas service def is not supported |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2347](https://issues.apache.org/jira/browse/RANGER-2347) | Restrict capabilities of security zone administrator and auditor |  Major | Ranger | Abhay Kulkarni | Bhavik Patel |
| [RANGER-2423](https://issues.apache.org/jira/browse/RANGER-2423) | Ranger KnoxSSO authentication in Ranger HA environment |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2438](https://issues.apache.org/jira/browse/RANGER-2438) | Legacy PublicAPI REST API to get all policies fails |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2434](https://issues.apache.org/jira/browse/RANGER-2434) | Remove dependency from com.google.common.base.Objects or MoreObjects |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2430](https://issues.apache.org/jira/browse/RANGER-2430) | Zoneadmin User is able to create policy for those services which is not associated to zone |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2439](https://issues.apache.org/jira/browse/RANGER-2439) | Unable to view policy details from access audits when policy has policy condition at policy level |  Major | Ranger | suja s | Nitin Galave |
| [RANGER-2444](https://issues.apache.org/jira/browse/RANGER-2444) | Admin logs are not getting generated when "policy level" policy condition is updated |  Major | Ranger | Harshal Chavan | Nitin Galave |
| [RANGER-2445](https://issues.apache.org/jira/browse/RANGER-2445) | Import of Tag based policies for zone |  Major | Ranger | Harshal Chavan | Nikhil Purbhe |
| [RANGER-2449](https://issues.apache.org/jira/browse/RANGER-2449) | if service part of zone is not present then null pointer exception is thrown |  Major | admin | Deepak Sharma | Nikhil Purbhe |
| [RANGER-2252](https://issues.apache.org/jira/browse/RANGER-2252) | Permission "Kafka Admin" should not be part of Topic resource in Ranger Kafka resource definition |  Major | Ranger | Ramesh Mani |  |
| [RANGER-2451](https://issues.apache.org/jira/browse/RANGER-2451) | Atlas plugin is not working when security zone is created for Atlas service in Ranger Admin. |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2397](https://issues.apache.org/jira/browse/RANGER-2397) | HiveServer2 fails to start with Hive Plugin for Ranger |  Major | plugins | Junseung Hwang | Pradeep Agrawal |
| [RANGER-2417](https://issues.apache.org/jira/browse/RANGER-2417) | Set Atlas Entity owner to RangerAccessResource ownerUser attribute for Atlas Ranger Plugin |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2437](https://issues.apache.org/jira/browse/RANGER-2437) | Update grant/revoke error message to provide more information about the principal type |  Major | Ranger | Fredy Wijaya | Ramesh Mani |
| [RANGER-2453](https://issues.apache.org/jira/browse/RANGER-2453) | Tag data-masking policy should allow only one tag as resource |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2455](https://issues.apache.org/jira/browse/RANGER-2455) | When service created inside a zone landing page that service gets created in unzonned landing page. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2463](https://issues.apache.org/jira/browse/RANGER-2463) | Ranger admin authorization audits fails intermittently to fetch from Solr |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2469](https://issues.apache.org/jira/browse/RANGER-2469) | java.lang.IllegalArgumentException: More than one fragment with the name during Ranger start after RANGER-2464 |  Major | Ranger | Kevin Risden | Velmurugan Periasamy |
| [RANGER-2456](https://issues.apache.org/jira/browse/RANGER-2456) | Upgrade of Ranger Admin to the current version fails in PatchForKafkaServiceDefUpdate\_J10025 |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2474](https://issues.apache.org/jira/browse/RANGER-2474) | Policy version and details in access audits wrong when deny condition added to policy |  Major | Ranger | suja s | Ramesh Mani |
| [RANGER-2473](https://issues.apache.org/jira/browse/RANGER-2473) | Upgrade of Ranger Admin to the current version fails in PatchForAtlasResourceAndAccessTypeUpdate\_J10016 |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2401](https://issues.apache.org/jira/browse/RANGER-2401) | Ranger Secuity Zone needs to be added in audit type filter in admin audit |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2479](https://issues.apache.org/jira/browse/RANGER-2479) | Change test connection preferred SQL statement for Oracle DB Flavor |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2487](https://issues.apache.org/jira/browse/RANGER-2487) | Resource policy names with a characters that are typically HTML escaped mutate and grow as they are saved. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2485](https://issues.apache.org/jira/browse/RANGER-2485) | Security zone filter is causing Ranger audit access request waiting for longer |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2480](https://issues.apache.org/jira/browse/RANGER-2480) | Hive URL Policy doesn't match if recursive flag is on for the url resource |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2500](https://issues.apache.org/jira/browse/RANGER-2500) | Zone Policies not getting imported when 'updateIfExists=true' is passed through curl. |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2493](https://issues.apache.org/jira/browse/RANGER-2493) | Ranger takes long time to delete a service with many policies |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2502](https://issues.apache.org/jira/browse/RANGER-2502) | Presto plugin insert bug |  Major | admin, plugins | Pedro Rossi |  |
| [RANGER-2478](https://issues.apache.org/jira/browse/RANGER-2478) | Exception in thread "main" java.lang.NoClassDefFoundError: com/google/common/base/Preconditions |  Major | plugins | David Berger | Pradeep Agrawal |
| [RANGER-2511](https://issues.apache.org/jira/browse/RANGER-2511) | default tag based service is getting created for the tag based service |  Critical | Ranger | Deepak Sharma | Abhay Kulkarni |
| [RANGER-1644](https://issues.apache.org/jira/browse/RANGER-1644) | Change the default Crypt Algo to use stronger cryptographic algo. |  Critical | Ranger | Selvamohan Neethiraj | Mateen Mansoori |
| [RANGER-2513](https://issues.apache.org/jira/browse/RANGER-2513) | Unable to delete user if he has references in new ref tables. |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2514](https://issues.apache.org/jira/browse/RANGER-2514) | Search field validation prompt is inconsistent with field names in audit page |  Trivial | admin | Peng Xing | Peng Xing |
| [RANGER-2519](https://issues.apache.org/jira/browse/RANGER-2519) | Import policy may fail if a policy exists with same guid in another service |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2516](https://issues.apache.org/jira/browse/RANGER-2516) | Update Ranger default policies to provide entity-read access to public group |  Major | Ranger | Mateen Mansoori | Nikhil Purbhe |
| [RANGER-2406](https://issues.apache.org/jira/browse/RANGER-2406) | rangerusersync open too many session for ldap sync |  Major | usersync | Konstantin Tsypin | Nikhil Purbhe |
| [RANGER-2518](https://issues.apache.org/jira/browse/RANGER-2518) | Allow service creator to delete the service |  Major | Ranger | Pradeep Agrawal | Abhay Kulkarni |
| [RANGER-2520](https://issues.apache.org/jira/browse/RANGER-2520) | Prevent Roles to be saved in Ranger Role Management page when user or groups are not added to the role |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2491](https://issues.apache.org/jira/browse/RANGER-2491) | Incorrect syntax for setting options in the database configuration script (db\_setup.py) |  Major | admin | Aset Madraimov | Pradeep Agrawal |
| [RANGER-2509](https://issues.apache.org/jira/browse/RANGER-2509) | Add validation message for Importing non JSON file on import action. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2696](https://issues.apache.org/jira/browse/RANGER-2696) | Fix unit test failure in TestPolicyEngine.testValiditySchedulerApplicable |  Minor | Ranger | Abhay Kulkarni | Abhay Kulkarni |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2150](https://issues.apache.org/jira/browse/RANGER-2150) | Unit test coverage for XUserMgr and UserMgr class |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2171](https://issues.apache.org/jira/browse/RANGER-2171) | Unit Test cases to cover policy operations from service admin user |  Major | Ranger | Pradeep Agrawal | Nikhil Purbhe |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2219](https://issues.apache.org/jira/browse/RANGER-2219) | De-normalize schema for storing tags and related objects |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2260](https://issues.apache.org/jira/browse/RANGER-2260) | Atlas servicedef version change patch should update atlas access type def for tag def also. |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2274](https://issues.apache.org/jira/browse/RANGER-2274) | Allow delegated admin user to view list of users and groups though they have 'USER' role |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2320](https://issues.apache.org/jira/browse/RANGER-2320) | Make db schema patches script idempotent for all DB Flavors |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2293](https://issues.apache.org/jira/browse/RANGER-2293) | Create and update ref tables for security zone data |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2310](https://issues.apache.org/jira/browse/RANGER-2310) | Record admin audits in Ranger during Create, Update and Delete operations on Zone |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2402](https://issues.apache.org/jira/browse/RANGER-2402) | Best Practices: Make db schema script idempotent |  Blocker | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2429](https://issues.apache.org/jira/browse/RANGER-2429) | Ranger KMS is not starting properly |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2477](https://issues.apache.org/jira/browse/RANGER-2477) | Ranger KnoxSSO authentication when X-Forwarded-Host header is not forwarded |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2319](https://issues.apache.org/jira/browse/RANGER-2319) | Remove deprecated phantomjs NPM package |  Major | admin | Csaba Koncz | Csaba Koncz |
| [RANGER-2255](https://issues.apache.org/jira/browse/RANGER-2255) | Add JavaScript unit tests |  Minor | admin | Csaba Koncz | Csaba Koncz |
| [RANGER-2198](https://issues.apache.org/jira/browse/RANGER-2198) | Remove deprecated client API from HBase plugin |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2226](https://issues.apache.org/jira/browse/RANGER-2226) | Define explicit (test) dependency on json-smart in the Knox agent |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2256](https://issues.apache.org/jira/browse/RANGER-2256) | Grammatical error in UI |  Trivial | admin | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2422](https://issues.apache.org/jira/browse/RANGER-2422) | Zone Admin and Zone Auditor can see only its associated audit access log |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2452](https://issues.apache.org/jira/browse/RANGER-2452) | Release Ranger 2.0.0 |  Major | Ranger | Velmurugan Periasamy | Velmurugan Periasamy |


