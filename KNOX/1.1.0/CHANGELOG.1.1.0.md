
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

## Release 1.1.0 - Unreleased (as of 2018-08-21)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1332](https://issues.apache.org/jira/browse/KNOX-1332) | Document for the New Knox Gateway Service - ElasticSearch |  Critical | Build, Release | Dequan Chen | Dequan Chen |
| [KNOX-1155](https://issues.apache.org/jira/browse/KNOX-1155) | Knox Gateway Service for ElasticSearch |  Critical | Build, Release | Dequan Chen | Dequan Chen |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1358](https://issues.apache.org/jira/browse/KNOX-1358) | Create new version definition for Spark History Server (SHS) |  Major | Server | Marco Gaido | Marco Gaido |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1159](https://issues.apache.org/jira/browse/KNOX-1159) | Create ".sha1" files when releasing instead of ".sha" |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1200](https://issues.apache.org/jira/browse/KNOX-1200) | Update Apache parent pom version |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1195](https://issues.apache.org/jira/browse/KNOX-1195) | Some misc code cleanups |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1201](https://issues.apache.org/jira/browse/KNOX-1201) | Disable DocTypes |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1006](https://issues.apache.org/jira/browse/KNOX-1006) | Service Discovery and Topology Generation |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1135](https://issues.apache.org/jira/browse/KNOX-1135) | Add Configuration Property For Allowing Remote Configuration to be Read By Unauthenticated Clients |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1295](https://issues.apache.org/jira/browse/KNOX-1295) | X-Forwarded-Context contains not the full base path in SHS request |  Major | . | Marco Gaido | Attila Csoma |
| [KNOX-1154](https://issues.apache.org/jira/browse/KNOX-1154) | Dump Kerberos Configuration on Gateway Startup to Logs |  Minor | Server | Rick Kellogg | Rick Kellogg |
| [KNOX-1089](https://issues.apache.org/jira/browse/KNOX-1089) | Upgrade Jetty |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1143](https://issues.apache.org/jira/browse/KNOX-1143) | Add MR job history ws rest api rewrite rule to jobhistoryui |  Major | . | Guang Yang | Guang Yang |
| [KNOX-1362](https://issues.apache.org/jira/browse/KNOX-1362) | Add documentation for the interaction with Spark History Server (SHS) |  Major | . | Marco Gaido | Marco Gaido |
| [KNOX-1209](https://issues.apache.org/jira/browse/KNOX-1209) | Improvements to the 1.1.0 User Guide |  Minor | Site | Lars Francke | Lars Francke |
| [KNOX-1386](https://issues.apache.org/jira/browse/KNOX-1386) | NiFi service discovery uses properties which may have templates as values |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1387](https://issues.apache.org/jira/browse/KNOX-1387) | NPE in new installation |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1390](https://issues.apache.org/jira/browse/KNOX-1390) | Some filters are invoked before they have been initialized |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1392](https://issues.apache.org/jira/browse/KNOX-1392) | Default whitelist must handle cases when IP address is presented as the host name |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1393](https://issues.apache.org/jira/browse/KNOX-1393) | Update default whitelist derivation strategy |  Major | Server | Phil Zampino | Phil Zampino |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1168](https://issues.apache.org/jira/browse/KNOX-1168) | ClassNotFoundException exception because of package restructuring |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1169](https://issues.apache.org/jira/browse/KNOX-1169) | Clear Cluster Configuration Monitor Cache When No Relevant Descriptors Remain |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1171](https://issues.apache.org/jira/browse/KNOX-1171) | Handle invalid hadoop.auth cookie returned by Oozie |  Major | Server | Kevin Minder | Kevin Minder |
| [KNOX-1172](https://issues.apache.org/jira/browse/KNOX-1172) | OOZIEUI service definition name conflict |  Major | Server | Kevin Minder | Kevin Minder |
| [KNOX-1108](https://issues.apache.org/jira/browse/KNOX-1108) | NiFiHaDispatch not failing over |  Major | Server | Jeff Storck | Jeff Storck |
| [KNOX-1188](https://issues.apache.org/jira/browse/KNOX-1188) | Provider parameter order not maintained in generated topologies |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1167](https://issues.apache.org/jira/browse/KNOX-1167) | Support HDFS Federation in Knox topology generation |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1186](https://issues.apache.org/jira/browse/KNOX-1186) | Descriptors and Topology Generation Must Support Service Versioning |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1176](https://issues.apache.org/jira/browse/KNOX-1176) | Provider Configuration Reference Isn't Updated If New Reference Is Invalid |  Minor | Server | Phil Zampino | Phil Zampino |
| [KNOX-1177](https://issues.apache.org/jira/browse/KNOX-1177) | Retighten the rewrite rule on oozieui to reduce false positives |  Trivial | Server | Wei Han | Kevin Minder |
| [KNOX-1181](https://issues.apache.org/jira/browse/KNOX-1181) | Service Discovery feature should be enabled for RANGER service |  Major | Server | J.Andreina | Phil Zampino |
| [KNOX-1194](https://issues.apache.org/jira/browse/KNOX-1194) | AdminUI should use safe versions of YAML load and dump methods. |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1199](https://issues.apache.org/jira/browse/KNOX-1199) | Ambari View API for Tez View needs Double Quotes Encoded on Dispatch |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1198](https://issues.apache.org/jira/browse/KNOX-1198) | Ambari Service Discovery mappings should allow override/augmentation with external config |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1197](https://issues.apache.org/jira/browse/KNOX-1197) | AnonymousAuthFilter is not added when authentication=Anonymous in service |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1179](https://issues.apache.org/jira/browse/KNOX-1179) | Document process for adding Ambari URL discovery support for services |  Major | Site | Phil Zampino | Phil Zampino |
| [KNOX-1203](https://issues.apache.org/jira/browse/KNOX-1203) | Provider Configuration Wizard for Shiro-based Providers Produces Configurations With Mis-ordered Params |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1208](https://issues.apache.org/jira/browse/KNOX-1208) | WEBHBASE ZooKeeper ensemble discovery is incorrect |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1211](https://issues.apache.org/jira/browse/KNOX-1211) | Admin UI XSS/XSRF Protection |  Major | AdminUI, Server | Phil Zampino | Phil Zampino |
| [KNOX-1216](https://issues.apache.org/jira/browse/KNOX-1216) | Validate simple descriptors' provider configuration reference |  Major | AdminUI, Server | Phil Zampino | Phil Zampino |
| [KNOX-1217](https://issues.apache.org/jira/browse/KNOX-1217) | PAM auth provider configuration wizard should allow for specifying the login module/service |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1219](https://issues.apache.org/jira/browse/KNOX-1219) | Dispatch Filter Params are Duplicated |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1091](https://issues.apache.org/jira/browse/KNOX-1091) | Knox Audit Logging - duplicate correlation ids |  Major | Server | Kevin Risden | Kevin Risden |
| [KNOX-1223](https://issues.apache.org/jira/browse/KNOX-1223) | Zeppelin's Knox proxy doesn't redirect /api/ticket as expected |  Major | Server | Prabhjyot Singh | Prabhjyot Singh |
| [KNOX-1228](https://issues.apache.org/jira/browse/KNOX-1228) | Atlas HA ZooKeeper Config Discovery |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1229](https://issues.apache.org/jira/browse/KNOX-1229) | Ambari service discovery REST invocations need reasonable timeout |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1215](https://issues.apache.org/jira/browse/KNOX-1215) | Hadoop Group Lookup Provider Config Wizard |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1231](https://issues.apache.org/jira/browse/KNOX-1231) | Atlas HA URL Manager breaks if ZooKeeper namespace value begins with / |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1230](https://issues.apache.org/jira/browse/KNOX-1230) | Many Concurrent Requests to Knox causes URL Mangling |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1233](https://issues.apache.org/jira/browse/KNOX-1233) | Pac4j dependency causing intermittent compilation errors |  Major | Build | Phil Zampino | Phil Zampino |
| [KNOX-1238](https://issues.apache.org/jira/browse/KNOX-1238) | Fix Custom Truststore Settings for Gateway |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1239](https://issues.apache.org/jira/browse/KNOX-1239) | HBaseZookeeperURLManager ignores configured ZooKeeper namespace |  Blocker | . | J.Andreina | Phil Zampino |
| [KNOX-1242](https://issues.apache.org/jira/browse/KNOX-1242) | HDFS UI - Datanode UI link does not use Knox Proxy |  Major | Server | Namit Maheshwari | Sandeep More |
| [KNOX-1212](https://issues.apache.org/jira/browse/KNOX-1212) | Support new YARN webui2 in knox |  Major | . | Sunil Govindan | Sunil Govind |
| [KNOX-1220](https://issues.apache.org/jira/browse/KNOX-1220) | HostMap provider configuration wizard option in Admin UI |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1243](https://issues.apache.org/jira/browse/KNOX-1243) | Normalize the required DNs that are Configured in KnoxToken Service |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1182](https://issues.apache.org/jira/browse/KNOX-1182) | [Service Discovery] In case of HA , Resourcemanager service should have both active and standby endpoint urls |  Major | . | J.Andreina | Phil Zampino |
| [KNOX-1187](https://issues.apache.org/jira/browse/KNOX-1187) | Distributed Alias Service |  Major | Server | Phil Zampino | Sandeep More |
| [KNOX-1248](https://issues.apache.org/jira/browse/KNOX-1248) | AtlasZookeeperURLManager must handle missing namespace property from Atlas config with appropriate default value |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1246](https://issues.apache.org/jira/browse/KNOX-1246) | Update service config in Knox to support latest configurations for Ranger. |  Major | Server | Vishal Suvagia | Vishal Suvagia |
| [KNOX-1251](https://issues.apache.org/jira/browse/KNOX-1251) | NPE in RemoteAliasService#stop() when remote service not configured. |  Major | . | Sandeep More | Sandeep More |
| [KNOX-1256](https://issues.apache.org/jira/browse/KNOX-1256) | AclsAuthz provider wizard produces incorrect param |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1254](https://issues.apache.org/jira/browse/KNOX-1254) | Remote Alias Service Preferring Local Cluster Password Alias To Remote |  Major | Server | Phil Zampino | Sandeep More |
| [KNOX-1260](https://issues.apache.org/jira/browse/KNOX-1260) | log4j config files do not reflect package change |  Major | Server | Phil Zampino | Sandeep More |
| [KNOX-1263](https://issues.apache.org/jira/browse/KNOX-1263) | Providers should be organized by role rather than name |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1261](https://issues.apache.org/jira/browse/KNOX-1261) | Remote Alias Service returns encrypted alias value |  Blocker | . | J.Andreina | Sandeep More |
| [KNOX-1252](https://issues.apache.org/jira/browse/KNOX-1252) | [Service Discovery] Failure happens , since the znode access failed because of authentication problem |  Blocker | . | J.Andreina | Sandeep More |
| [KNOX-1253](https://issues.apache.org/jira/browse/KNOX-1253) | [Admin-ui] Deleting an un referenced provider file gives wrong message on UI |  Major | AdminUI | J.Andreina | Phil Zampino |
| [KNOX-1265](https://issues.apache.org/jira/browse/KNOX-1265) | Document Remote Alias Discovery |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-1259](https://issues.apache.org/jira/browse/KNOX-1259) | [Admin-ui] Support pagination for listing descriptors, providers and topologies |  Critical | AdminUI | J.Andreina | Phil Zampino |
| [KNOX-1258](https://issues.apache.org/jira/browse/KNOX-1258) | [Admin-ui] Authentication provider "Anonymous" is been missed out in provider configuration listing |  Major | AdminUI | J.Andreina | Phil Zampino |
| [KNOX-1268](https://issues.apache.org/jira/browse/KNOX-1268) | [Service Discovery] On a wire encrypted cluster , HDFSUI and WEBHDFS service url is getting updated with wrong port |  Critical | . | J.Andreina | Phil Zampino |
| [KNOX-1267](https://issues.apache.org/jira/browse/KNOX-1267) | [Service Discovery] On a wire encrypted cluster , Ranger url is getting updated with http schema and wrong port |  Critical | . | J.Andreina | Phil Zampino |
| [KNOX-1269](https://issues.apache.org/jira/browse/KNOX-1269) | Generate services declared in descriptor without URLs or params, but with valid HaProvider ZK config |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1272](https://issues.apache.org/jira/browse/KNOX-1272) | ZEPPELINWS generated URLs are incorrect |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1271](https://issues.apache.org/jira/browse/KNOX-1271) | AtlasZookeeperURLManager doesn't handle empty namespace value correctly |  Blocker | . | J.Andreina | Phil Zampino |
| [KNOX-1276](https://issues.apache.org/jira/browse/KNOX-1276) | Improved HA provider config wizard |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1257](https://issues.apache.org/jira/browse/KNOX-1257) | [Admin-ui] WebAppSec provider is been missed out in provider configuration listing |  Major | AdminUI | J.Andreina | Phil Zampino |
| [KNOX-1279](https://issues.apache.org/jira/browse/KNOX-1279) | HaProvider wizard should include ability to specify ZooKeeper-related properties |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1278](https://issues.apache.org/jira/browse/KNOX-1278) | HaProvider wizard uses comma as delimiter instead of semi-colon |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1281](https://issues.apache.org/jira/browse/KNOX-1281) | HA provider configuration wizard should require the service name property value |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1283](https://issues.apache.org/jira/browse/KNOX-1283) | DefaultURLManager markFailed method throws NPE if urls is empty |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1288](https://issues.apache.org/jira/browse/KNOX-1288) | NPE during service discovery |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1114](https://issues.apache.org/jira/browse/KNOX-1114) | In case of port conflict (Topology Port Mapping) log the error and continue normal startup. |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1292](https://issues.apache.org/jira/browse/KNOX-1292) | Upgrade Groovy to 2.4.8 |  Major | ClientDSL, KnoxShell | Larry McCay | Larry McCay |
| [KNOX-1294](https://issues.apache.org/jira/browse/KNOX-1294) | Upgrade Jackson-Databind to 2.9.5 |  Major | KnoxShell, Server | Larry McCay | Larry McCay |
| [KNOX-1296](https://issues.apache.org/jira/browse/KNOX-1296) | Log messages about remote configuration entries should be DEBUG and not WARN |  Major | . | Sandeep More | Sandeep More |
| [KNOX-1297](https://issues.apache.org/jira/browse/KNOX-1297) | HDFSUI Requires its own HA Dispatch Provider |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1293](https://issues.apache.org/jira/browse/KNOX-1293) | Ambari service discovery support for Spark/Livy |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1300](https://issues.apache.org/jira/browse/KNOX-1300) | Add default provider configuration to the distribution |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1301](https://issues.apache.org/jira/browse/KNOX-1301) | Support aliases for default discovery address and cluster name |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1160](https://issues.apache.org/jira/browse/KNOX-1160) | Bug fixes to make spark history UI work |  Minor | . | Wei Han |  |
| [KNOX-1202](https://issues.apache.org/jira/browse/KNOX-1202) | Admin UI Input Validation |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1236](https://issues.apache.org/jira/browse/KNOX-1236) | Support service discovery for YARNUIV2 |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1305](https://issues.apache.org/jira/browse/KNOX-1305) | Create $postfix and $infix rewrite functions |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1306](https://issues.apache.org/jira/browse/KNOX-1306) | New descriptor wizard discovery cluster should not be required when address is specified |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1275](https://issues.apache.org/jira/browse/KNOX-1275) | Add json-smart explicitly to gateway-spi |  Major | Build | Saravanan Krishnamoorthy | Saravanan Krishnamoorthy |
| [KNOX-1266](https://issues.apache.org/jira/browse/KNOX-1266) | Support default values for discovery address and cluster name |  Minor | Server | Phil Zampino | Phil Zampino |
| [KNOX-1274](https://issues.apache.org/jira/browse/KNOX-1274) | SSO redirect for Spark2 History Server needs to be rewritten |  Major | . | Marco Gaido | Sandeep More |
| [KNOX-1244](https://issues.apache.org/jira/browse/KNOX-1244) | YARNUIV2 support requires a custom dispatch to handle redirects from passive to active endpoint |  Major | Server | Phil Zampino | Sunil Govind |
| [KNOX-1308](https://issues.apache.org/jira/browse/KNOX-1308) | Implement safeguards against XML entity injection/expansion in the Admin API |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1227](https://issues.apache.org/jira/browse/KNOX-1227) | Support KnoxSSO service in new descriptor wizard |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1226](https://issues.apache.org/jira/browse/KNOX-1226) | Support KnoxToken service in new descriptor wizard |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1309](https://issues.apache.org/jira/browse/KNOX-1309) | Admin API resource names should be validated |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1311](https://issues.apache.org/jira/browse/KNOX-1311) | Ambari logos are not showing up in Ambari Web UI |  Critical | . | Yusaku Sako | Yusaku Sako |
| [KNOX-1310](https://issues.apache.org/jira/browse/KNOX-1310) | The X-Content-Type-Options header should be set as 'nosniff' |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1312](https://issues.apache.org/jira/browse/KNOX-1312) | Zeppelin-related discovery is incorrectly configured |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1313](https://issues.apache.org/jira/browse/KNOX-1313) | WebAppSecurity wizard produces bad config when invalid params are specified |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1157](https://issues.apache.org/jira/browse/KNOX-1157) | Scoped rewrite rules are treated as global rules in some cases |  Minor | . | Wei Han | Wei Han |
| [KNOX-1317](https://issues.apache.org/jira/browse/KNOX-1317) | Ambari service discovery config handling of nested derived properties |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1318](https://issues.apache.org/jira/browse/KNOX-1318) | Update available services to include NiFi |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1319](https://issues.apache.org/jira/browse/KNOX-1319) | Better logging when discovery fails to access config |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1314](https://issues.apache.org/jira/browse/KNOX-1314) | SSOCookieProvider should be able to derive a default provider URL |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1322](https://issues.apache.org/jira/browse/KNOX-1322) | Support configuration property to forcibly treat topologies as read-only |  Major | AdminUI, Server | Phil Zampino | Phil Zampino |
| [KNOX-1323](https://issues.apache.org/jira/browse/KNOX-1323) | Reconcile WebAppSecurity provider X-Frame-Options and X-Content-Type-Options param names |  Major | AdminUI, Server, Site | Phil Zampino | Phil Zampino |
| [KNOX-1324](https://issues.apache.org/jira/browse/KNOX-1324) | Remote Configuration Monitor should not log stacktrace when client is not configured |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1326](https://issues.apache.org/jira/browse/KNOX-1326) | DN UI link does not use Knox Proxy / Merge Datanode rewrite rules into HdfsUI |  Major | . | Namit Maheshwari | Sandeep More |
| [KNOX-1327](https://issues.apache.org/jira/browse/KNOX-1327) | Log REST invocation error exceptions encountered during service discovery at ERROR level |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1320](https://issues.apache.org/jira/browse/KNOX-1320) | Upgrade JQuery in the KnoxAuth Application |  Major | KnoxSSO | Larry McCay | Larry McCay |
| [KNOX-1328](https://issues.apache.org/jira/browse/KNOX-1328) | Change Default Authentication to KnoxSSO for Admin UI |  Major | AdminUI | Larry McCay | Larry McCay |
| [KNOX-1329](https://issues.apache.org/jira/browse/KNOX-1329) | Upgrade the transitive springframework spring core from pac4j |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1290](https://issues.apache.org/jira/browse/KNOX-1290) | Create gateway definition for Log Search (version 0.5.0) |  Major | . | Olivér Szabó | Olivér Szabó |
| [KNOX-1166](https://issues.apache.org/jira/browse/KNOX-1166) | Upgrade HTTPClient due to Hostname Verification Bug |  Major | KnoxShell, Server | Larry McCay | Larry McCay |
| [KNOX-1331](https://issues.apache.org/jira/browse/KNOX-1331) | [Admin-UI] Unabled to update XML format provider file from admin ui |  Critical | AdminUI | J.Andreina | Phil Zampino |
| [KNOX-1149](https://issues.apache.org/jira/browse/KNOX-1149) | HBase High Availability Fails with Kerberos Secured Cluster |  Major | Server | Rick Kellogg | Phil Zampino |
| [KNOX-1333](https://issues.apache.org/jira/browse/KNOX-1333) | Admin UI needs to handle SSO cookie expiration |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1335](https://issues.apache.org/jira/browse/KNOX-1335) | Spark service discovery when SSL is configured |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1336](https://issues.apache.org/jira/browse/KNOX-1336) | Upgrade libpam4j to abstractj/1.9.1 |  Major | Server | Larry McCay |  |
| [KNOX-1338](https://issues.apache.org/jira/browse/KNOX-1338) | Add Config Property for Knox Admin Groups for AclsAuthz Provider Use |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1340](https://issues.apache.org/jira/browse/KNOX-1340) | Support for hdfsUI similar to Datanode |  Major | Server | Bharat Viswanadham | Bharat Viswanadham |
| [KNOX-1341](https://issues.apache.org/jira/browse/KNOX-1341) | Constrain cookies added to the HadoopAuthCookieStore |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1342](https://issues.apache.org/jira/browse/KNOX-1342) | Prevent Host Header from being sent to Atlas |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1344](https://issues.apache.org/jira/browse/KNOX-1344) | Atlas HA dispatch mishandling SSO redirection |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1347](https://issues.apache.org/jira/browse/KNOX-1347) | X-Forwarded-Context header is not rewritten correctly |  Major | . | Marco Gaido | Marco Gaido |
| [KNOX-1348](https://issues.apache.org/jira/browse/KNOX-1348) | Provider Configuration Wizard HA Provider Validation for ZooKeeper Ensemble is Wrong |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1350](https://issues.apache.org/jira/browse/KNOX-1350) | Centralize Group Lookup Config for Knox Admin API |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1352](https://issues.apache.org/jira/browse/KNOX-1352) | Service Discovery is not honoring the enabled attribute of HA Provider configuration |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1346](https://issues.apache.org/jira/browse/KNOX-1346) | SNI Mismatch Failures due to Wrong Host Header |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1357](https://issues.apache.org/jira/browse/KNOX-1357) | Add configurable list of AutoDeploy topologies to deploy on server start |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1353](https://issues.apache.org/jira/browse/KNOX-1353) | SHS always showing link to incomplete applications |  Minor | . | Marco Gaido | Marco Gaido |
| [KNOX-1354](https://issues.apache.org/jira/browse/KNOX-1354) | Revert KNOX-1160 in favor of using spark.ui.proxyBase to solve spark UI issues |  Minor | Server | Wei Han | Wei Han |
| [KNOX-1280](https://issues.apache.org/jira/browse/KNOX-1280) | Accessing Atlas through knox proxy on sso enabled cluster fails with missing SNI entry |  Critical | . | J.Andreina | Larry McCay |
| [KNOX-1356](https://issues.apache.org/jira/browse/KNOX-1356) | X-Forwarded-Context header is not rewritten everywhere for SHS |  Major | . | Marco Gaido | Marco Gaido |
| [KNOX-1349](https://issues.apache.org/jira/browse/KNOX-1349) | When multiple versions of service defs are specified Knox does not pick the greatest |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1360](https://issues.apache.org/jira/browse/KNOX-1360) | [Knox Proxy] When Ambari is accessed via proxy, images are broken |  Critical | . | Aleksandr Kovalenko |  |
| [KNOX-1363](https://issues.apache.org/jira/browse/KNOX-1363) | Add whitelist for dispatch targets |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1366](https://issues.apache.org/jira/browse/KNOX-1366) | Dispatch whitelist should clearly indicate when the default whitelist will be applied |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1369](https://issues.apache.org/jira/browse/KNOX-1369) | Default dispatch whitelist sometimes includes port information |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1370](https://issues.apache.org/jira/browse/KNOX-1370) | Have knoxauth login page use Knox Logo from Admin UI |  Minor | KnoxSSO | Larry McCay | Larry McCay |
| [KNOX-1367](https://issues.apache.org/jira/browse/KNOX-1367) | GatewayDeployFuncTest is broken because of topology validation |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1365](https://issues.apache.org/jira/browse/KNOX-1365) | Handle index.html redirection in YARNUI v2 |  Major | . | Sunil Govindan | Sunil Govind |
| [KNOX-1371](https://issues.apache.org/jira/browse/KNOX-1371) | Knox upgarde from pre-1.0.0 fails because of error "unable to compile class for redirecting.jsp" |  Major | . | Sandeep More | Sandeep More |
| [KNOX-1372](https://issues.apache.org/jira/browse/KNOX-1372) | Default whitelist validation mistreats simple host name |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1373](https://issues.apache.org/jira/browse/KNOX-1373) | Default dispatch whitelist should consider X-Forwarded-Host header |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1374](https://issues.apache.org/jira/browse/KNOX-1374) | Ranger service discovery should use ranger.externalurl property |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1375](https://issues.apache.org/jira/browse/KNOX-1375) | Dispatch whitelist validation should decode URLs before testing |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1377](https://issues.apache.org/jira/browse/KNOX-1377) | Ranger service discovery should use policymanager\_external\_url instead of ranger.externalurl |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1378](https://issues.apache.org/jira/browse/KNOX-1378) | Query params intended for KnoxSSO are added to the originalUrl on redirect |  Major | KnoxSSO | Sandeep More | Sandeep More |
| [KNOX-1379](https://issues.apache.org/jira/browse/KNOX-1379) | Default dispatch whitelist should not include localhost when the Knox host domain can be determined |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1381](https://issues.apache.org/jira/browse/KNOX-1381) | Cleanup knoxtoken handeling |  Major | KnoxSSO | Sandeep More | Sandeep More |
| [KNOX-1383](https://issues.apache.org/jira/browse/KNOX-1383) | Duplicate button should be available even for read-only topologies |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1315](https://issues.apache.org/jira/browse/KNOX-1315) | Spark UI urls issue: Jobs, stdout/stderr and threadDump links |  Major | . | Guang Yang | Guang Yang |
| [KNOX-1391](https://issues.apache.org/jira/browse/KNOX-1391) | IllegalStateException when accessing Admin UI |  Major | KnoxSSO | Sandeep More | Sandeep More |
| [KNOX-1394](https://issues.apache.org/jira/browse/KNOX-1394) | OOTB gateway-site.xml to Default to Demo Whitelist Scenario |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1395](https://issues.apache.org/jira/browse/KNOX-1395) | Change Derived Whitelist logic to not use InetAddress of Localhost for getting Hostname |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1396](https://issues.apache.org/jira/browse/KNOX-1396) | Admin UI Provider Config wizard URL validation requires a port |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1397](https://issues.apache.org/jira/browse/KNOX-1397) | Admin UI Topologies List needs to Refresh on New or Deleted Topologies |  Major | AdminUI | Larry McCay | Phil Zampino |
| [KNOX-1398](https://issues.apache.org/jira/browse/KNOX-1398) | WebHDFS and WebHBase APIs listed incorrectly as services that need whitelist enforcement |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1399](https://issues.apache.org/jira/browse/KNOX-1399) | Duplicate configuration for gateway.dispatch.whitelist in gateway-site.xml OOTB |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1419](https://issues.apache.org/jira/browse/KNOX-1419) | Document global scoped rewrite rule option 'gateway.global.rules.services' |  Major | Site | Sandeep More | Sandeep More |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1178](https://issues.apache.org/jira/browse/KNOX-1178) | Add test to ensure regex or support in RegexIdentityAssertionFilter |  Minor | Server | Kevin Minder |  |
| [KNOX-1385](https://issues.apache.org/jira/browse/KNOX-1385) | Inconsistent WebSSOResourceTest whitelist tests |  Major | Tests | Phil Zampino | Phil Zampino |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1192](https://issues.apache.org/jira/browse/KNOX-1192) | Knox SSO - some config variables not getting picked up. |  Major | . | Sandeep More | Sandeep More |
| [KNOX-1040](https://issues.apache.org/jira/browse/KNOX-1040) | Knox Admin UI for Simple Descriptors and Provider Configurations |  Major | AdminUI | Phil Zampino | Phil Zampino |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1345](https://issues.apache.org/jira/browse/KNOX-1345) | Fix javadoc errors |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |


