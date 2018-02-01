
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
# Apache Knox Changelog

## Release 0.14.0 - Unreleased (as of 2018-02-01)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1041](https://issues.apache.org/jira/browse/KNOX-1041) | High Availability Support For Apache SOLR, HBase & Kafka |  Major | Server | Rick Kellogg | Rick Kellogg |
| [KNOX-970](https://issues.apache.org/jira/browse/KNOX-970) | Add support for proxying NiFi |  Major | Server | Jeff Storck | Jeff Storck |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1020](https://issues.apache.org/jira/browse/KNOX-1020) | Minor code improvements |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1027](https://issues.apache.org/jira/browse/KNOX-1027) | Add support to configure the issuer for the JWT filters |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1036](https://issues.apache.org/jira/browse/KNOX-1036) | Fix a number of issues relating to JWTokenAuthority |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1071](https://issues.apache.org/jira/browse/KNOX-1071) | Replace java.util.Random with SecureRandom |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1055](https://issues.apache.org/jira/browse/KNOX-1055) | Spark page characters "&amp;" should be treated as a delimiter |  Trivial | Server | Mars |  |
| [KNOX-1069](https://issues.apache.org/jira/browse/KNOX-1069) | KnoxSSO token audience config should trim values |  Minor | KnoxSSO | Jeff Storck | Colm O hEigeartaigh |
| [KNOX-894](https://issues.apache.org/jira/browse/KNOX-894) | support websocket endpoint rewrite |  Major | Server, Site | Zhou Li |  |
| [KNOX-1075](https://issues.apache.org/jira/browse/KNOX-1075) | Verify Maven Minimum Version |  Minor | . | Rick Kellogg | Rick Kellogg |
| [KNOX-895](https://issues.apache.org/jira/browse/KNOX-895) | pass cookies to websocket backend |  Major | Server | Zhou Li | Sandeep More |
| [KNOX-1067](https://issues.apache.org/jira/browse/KNOX-1067) | Support different signature algorithms for JWTs |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1082](https://issues.apache.org/jira/browse/KNOX-1082) | Add support to validate the "nbf" claim for JWTs |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1073](https://issues.apache.org/jira/browse/KNOX-1073) | Upgrade PAC4J to a more recent version |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1088](https://issues.apache.org/jira/browse/KNOX-1088) | Remove LDAP BaseDirectoryService\* |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1017](https://issues.apache.org/jira/browse/KNOX-1017) |  Add support for enabling "Strict-Transport-Security" header in Knox responses |  Major | Server | Latha  Appanna | Latha  Appanna |
| [KNOX-1078](https://issues.apache.org/jira/browse/KNOX-1078) | Add option to preserve original string when lookup fails in regex based identity assertion provider |  Minor | Server | Wei Han | Wei Han |
| [KNOX-1095](https://issues.apache.org/jira/browse/KNOX-1095) | Sample values in NameNodeUI service topology result in 404 |  Minor | Site | Patrick Alwell | Sandeep More |
| [KNOX-1090](https://issues.apache.org/jira/browse/KNOX-1090) | Add Documentation for "Strict-Transport-Security" header in Knox responses |  Major | Server | Larry McCay | Latha  Appanna |
| [KNOX-1099](https://issues.apache.org/jira/browse/KNOX-1099) | Document Livy Knox service (Spark Rest Service) |  Major | Site | Jeffrey Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-1122](https://issues.apache.org/jira/browse/KNOX-1122) | Document Ambari Cluster Configuration Monitor |  Major | Site | Phil Zampino | Phil Zampino |
| [KNOX-1142](https://issues.apache.org/jira/browse/KNOX-1142) | Simple Descriptor Documentation Does Not Include Details About Applications |  Major | Site | Phil Zampino | Phil Zampino |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1003](https://issues.apache.org/jira/browse/KNOX-1003) | Zeppelin 0.7.2 UI seems to be broken with recent fixes. |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-989](https://issues.apache.org/jira/browse/KNOX-989) | Revisit JMX Metrics to fix the Out of Memory issue |  Major | Server | Sandeep More | Mohammad Kamrul Islam |
| [KNOX-738](https://issues.apache.org/jira/browse/KNOX-738) | Remove references to deprecated httpclient class DefaultHttpClient |  Major | . | Sumit Gupta | Colm O hEigeartaigh |
| [KNOX-953](https://issues.apache.org/jira/browse/KNOX-953) | Document KNOX health metrics REST API |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [KNOX-1028](https://issues.apache.org/jira/browse/KNOX-1028) | X-Frame-Options and other security headers are ineffective |  Critical | Site | Krishna Pandey |  |
| [KNOX-1030](https://issues.apache.org/jira/browse/KNOX-1030) | Knox build with "ant clean release" fails |  Major | Build | Sandeep More | Colm O hEigeartaigh |
| [KNOX-1004](https://issues.apache.org/jira/browse/KNOX-1004) | Failing (flaky) Knox unit test: org.apache.hadoop.gateway.GatewayAppFuncTest.testDefaultTopology |  Minor | Tests | Denes Bodo |  |
| [KNOX-1005](https://issues.apache.org/jira/browse/KNOX-1005) | Special characters in HBase rows while called through Knox |  Major | Server | Roman | Sandeep More |
| [KNOX-1054](https://issues.apache.org/jira/browse/KNOX-1054) | DefaultURLManager is not thread-safe |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1058](https://issues.apache.org/jira/browse/KNOX-1058) | Fix JWTToken.parseToken |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1060](https://issues.apache.org/jira/browse/KNOX-1060) | JWT.getExpires() returns null |  Minor | . | Colm O hEigeartaigh |  |
| [KNOX-1061](https://issues.apache.org/jira/browse/KNOX-1061) | KnoxSSO Redirects with Query Params in the OriginalUrl Broken |  Major | KnoxSSO | Larry McCay | Larry McCay |
| [KNOX-1068](https://issues.apache.org/jira/browse/KNOX-1068) | Knox returns HTTP 405 Method Not Allowed error with HTTP HEAD method |  Major | Server | James Jones | Sandeep More |
| [KNOX-1074](https://issues.apache.org/jira/browse/KNOX-1074) | Knox Proxy - Workflow Manager view fails to load when using ambari through KNOX |  Major | Server | venkat | venkat |
| [KNOX-926](https://issues.apache.org/jira/browse/KNOX-926) | Document adding Zeppelin UI to User Guide |  Minor | Site | Sandeep More | Sandeep More |
| [KNOX-1048](https://issues.apache.org/jira/browse/KNOX-1048) | Knoxshell samples missing hadoop-examples.jar and hadoop-mapreduce-examples.jar |  Major | KnoxShell | Sandeep More | Colm O hEigeartaigh |
| [KNOX-1070](https://issues.apache.org/jira/browse/KNOX-1070) | Drop support for Java 7 in Apache Knox 0.14.0/1.0.0 |  Major | Server | Sandeep More | Rick Kellogg |
| [KNOX-1064](https://issues.apache.org/jira/browse/KNOX-1064) | Externalize Hadoop Service Configuration Details and Service URL Creation |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-772](https://issues.apache.org/jira/browse/KNOX-772) | Implement binary protocol support for Websocket feature |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1079](https://issues.apache.org/jira/browse/KNOX-1079) | Regression: proxy for Atlas fails with j\_spring\_security\_check during login |  Critical | Server | Madhan Neethiraj | Madhan Neethiraj |
| [KNOX-1081](https://issues.apache.org/jira/browse/KNOX-1081) | Remove Picketlink Provider Module |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1045](https://issues.apache.org/jira/browse/KNOX-1045) | Knox Token Service has a trailing whitespace for the token\_type attribute |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1021](https://issues.apache.org/jira/browse/KNOX-1021) | Should handle empty string for endpoint token service audience list |  Minor | Server | J.Andreina | Colm O hEigeartaigh |
| [KNOX-1077](https://issues.apache.org/jira/browse/KNOX-1077) | Knox should notice simple descriptors on startup |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1062](https://issues.apache.org/jira/browse/KNOX-1062) | Service-Level Parameter Support in Service Discovery and Topology Generation |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1001](https://issues.apache.org/jira/browse/KNOX-1001) | Knox Shell Sqoop.Request class is Package Private |  Major | ClientDSL | Andrei Viaryshka | Andrei Viaryshka |
| [KNOX-1063](https://issues.apache.org/jira/browse/KNOX-1063) | Simple Descriptor discovery should notice YAML file with .yaml extension |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1022](https://issues.apache.org/jira/browse/KNOX-1022) | Configuring knox token ttl to higher value generates an access token which is not valid |  Minor | Server | J.Andreina | Colm O hEigeartaigh |
| [KNOX-1046](https://issues.apache.org/jira/browse/KNOX-1046) | Add Client Cert Wanted Capability with Configurable Validation that Checks for It |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1076](https://issues.apache.org/jira/browse/KNOX-1076) | Update nimbus-jose-jwt to 4.41.2 |  Major | Server | Larry McCay | Colm O hEigeartaigh |
| [KNOX-1049](https://issues.apache.org/jira/browse/KNOX-1049) | Default Service or App Context for Topologies |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1092](https://issues.apache.org/jira/browse/KNOX-1092) | There is a carriage return in the hiveserver2 ha documentation |  Major | . | David Villarreal | Sandeep More |
| [KNOX-1097](https://issues.apache.org/jira/browse/KNOX-1097) | Document option to preserve original string when lookup fails in regex based identity assertion provider |  Minor | Site | Sandeep More | Sandeep More |
| [KNOX-1100](https://issues.apache.org/jira/browse/KNOX-1100) | Document Topology Discovery and Generation |  Major | Site | Phil Zampino | Phil Zampino |
| [KNOX-1034](https://issues.apache.org/jira/browse/KNOX-1034) | Make Default identity-assertion provider actually be the default |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1104](https://issues.apache.org/jira/browse/KNOX-1104) | Test to verify behavior of HaProvider service with only a single URL |  Trivial | Tests | Phil Zampino | Phil Zampino |
| [KNOX-1106](https://issues.apache.org/jira/browse/KNOX-1106) | Tighten the rewrite rule on oozieui to reduce false positives |  Trivial | Server | Wei Han | Wei Han |
| [KNOX-921](https://issues.apache.org/jira/browse/KNOX-921) | Httpclient max connections are always set to default values |  Major | Server | Chandana Mirashi | Sandeep More |
| [KNOX-1103](https://issues.apache.org/jira/browse/KNOX-1103) | Document Recommendation for Using Shared Provider Configuration With HA Providers |  Major | Site | Phil Zampino | Phil Zampino |
| [KNOX-1087](https://issues.apache.org/jira/browse/KNOX-1087) | Doc - For Anonymous authentication AclAuthz will not work |  Minor | Site | Sandeep More |  |
| [KNOX-1110](https://issues.apache.org/jira/browse/KNOX-1110) | Simple Descriptors Must Accommodate Application elements |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1105](https://issues.apache.org/jira/browse/KNOX-1105) | Provide indication that topologies were generated from simple descriptors |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-999](https://issues.apache.org/jira/browse/KNOX-999) | Document that service def are case sensitive for Knox UI |  Major | Site | Pravin Bhagade | Sandeep More |
| [KNOX-1113](https://issues.apache.org/jira/browse/KNOX-1113) | Update the documentation to reflect that in case of port conflict for Topology Port Mapping Knox fails to start |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1118](https://issues.apache.org/jira/browse/KNOX-1118) | Remove POC Service Definition for AmbariUI |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1107](https://issues.apache.org/jira/browse/KNOX-1107) | Remote Configuration Registry Client Service |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1119](https://issues.apache.org/jira/browse/KNOX-1119) | Pac4J OAuth/OpenID Principal Needs to be Configurable |  Blocker | KnoxSSO | Larry McCay | Larry McCay |
| [KNOX-1128](https://issues.apache.org/jira/browse/KNOX-1128) | Readonly protection for generated topologies in Knox Admin UI |  Major | AdminUI | Sandeep More | Sandeep More |
| [KNOX-1134](https://issues.apache.org/jira/browse/KNOX-1134) | Regression due to KNOX-1119 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1120](https://issues.apache.org/jira/browse/KNOX-1120) | Pac4J Stop Using ConfigSingleton |  Blocker | KnoxSSO | Larry McCay | Larry McCay |
| [KNOX-1115](https://issues.apache.org/jira/browse/KNOX-1115) | Gateway Typo in Admin API doc |  Major | Site | Phil Zampino | Phil Zampino |
| [KNOX-1117](https://issues.apache.org/jira/browse/KNOX-1117) | HostMap Provider configuration comment in topologies included with Knox has typos |  Major | Release | Phil Zampino | Phil Zampino |
| [KNOX-1124](https://issues.apache.org/jira/browse/KNOX-1124) | Service Discovery Doesn't Work For Simple Descriptors With .yaml Extension |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1123](https://issues.apache.org/jira/browse/KNOX-1123) | Document Remote Registry Client Service and ZooKeeper Config Monitor |  Major | Site | Phil Zampino | Phil Zampino |
| [KNOX-1125](https://issues.apache.org/jira/browse/KNOX-1125) | KNOXCLI Additions to Support Management of Knox config in remote registry |  Major | KnoxCLI | Phil Zampino | Phil Zampino |
| [KNOX-1127](https://issues.apache.org/jira/browse/KNOX-1127) | Document KNOX CLI Remote Configuration Registry Commands |  Major | Site | Phil Zampino | Phil Zampino |
| [KNOX-1129](https://issues.apache.org/jira/browse/KNOX-1129) | Remote Configuration Monitor Should Define The Entries It Monitors If They're Not Yet Defined |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1136](https://issues.apache.org/jira/browse/KNOX-1136) | Provision Consistent Credentials For Generated Topologies |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1083](https://issues.apache.org/jira/browse/KNOX-1083) | HttpClient default timeout should be a sensible value |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1132](https://issues.apache.org/jira/browse/KNOX-1132) | Address Coverity Defects in gateway-service-remoteconfig |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1140](https://issues.apache.org/jira/browse/KNOX-1140) | Add Ambari Cluster Monitor Properties To Gateway Server Configuration Table |  Major | Site | Phil Zampino | Phil Zampino |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-978](https://issues.apache.org/jira/browse/KNOX-978) | Add a test for the SOLR REST API |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-963](https://issues.apache.org/jira/browse/KNOX-963) | Use GatewayTestDriver to configure LDAP in gateway-tests |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1007](https://issues.apache.org/jira/browse/KNOX-1007) |  Remove some unused dependencies from gateway-test-release-utils |  Trivial | Tests | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1008](https://issues.apache.org/jira/browse/KNOX-1008) | Remove unused classloading from tests |  Trivial | Tests | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1018](https://issues.apache.org/jira/browse/KNOX-1018) | Remove junit.framework calls |  Trivial | Tests | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1019](https://issues.apache.org/jira/browse/KNOX-1019) | Remove test-driver "hack" to copy services |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1024](https://issues.apache.org/jira/browse/KNOX-1024) | Add Kafka test to GatewayBasicFuncTest |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-962](https://issues.apache.org/jira/browse/KNOX-962) | Add signature validation tests for the JWT filters |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1035](https://issues.apache.org/jira/browse/KNOX-1035) | Move JWTTokenTest to gateway-spi module + add more tests |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1037](https://issues.apache.org/jira/browse/KNOX-1037) | Upgrade rest-assured dependency |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1038](https://issues.apache.org/jira/browse/KNOX-1038) | Replace deprecated rest-assured "content" call with "body" |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1044](https://issues.apache.org/jira/browse/KNOX-1044) | Change Rest Assured "expect" to "then" |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1047](https://issues.apache.org/jira/browse/KNOX-1047) | Add some tests for the Knox Token Service |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1052](https://issues.apache.org/jira/browse/KNOX-1052) | Add some tests for the Knox SSO Service |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1065](https://issues.apache.org/jira/browse/KNOX-1065) | Add some unit tests for the DefaultTokenAuthorityService |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1139](https://issues.apache.org/jira/browse/KNOX-1139) | Tthread pool size in tests are not enough in a 32 core machine if gateway port mapping enabled |  Major | Tests | Attila Csoma | Attila Csoma |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1014](https://issues.apache.org/jira/browse/KNOX-1014) | Service Discovery and Topology Generation Framework |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1039](https://issues.apache.org/jira/browse/KNOX-1039) | Add Support For Simple Descriptors and Policy Config to Knox Admin API |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1013](https://issues.apache.org/jira/browse/KNOX-1013) | Monitor Ambari for Cluster Topology changes |  Major | Server | Phil Zampino | Phil Zampino |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1053](https://issues.apache.org/jira/browse/KNOX-1053) | Document Support for Apache SOLR + HA Support for HBase & Kafka |  Minor | Site | Rick Kellogg | Rick Kellogg |


