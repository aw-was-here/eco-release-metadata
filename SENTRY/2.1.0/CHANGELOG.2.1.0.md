
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

## Release 2.1.0 - Unreleased (as of 2018-08-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2220](https://issues.apache.org/jira/browse/SENTRY-2220) | Support all Hive SHOW GRANT commands |  Major | Sentry | Arjun Mishra | Arjun Mishra |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2076](https://issues.apache.org/jira/browse/SENTRY-2076) | Some test artifacts are not defined at test scope |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1951](https://issues.apache.org/jira/browse/SENTRY-1951) | Old SentryStore.retrieveFullPathsImage() should be removed |  Major | Sentry | Alexander Kolbasov | Arjun Mishra |
| [SENTRY-1572](https://issues.apache.org/jira/browse/SENTRY-1572) | SentryMain() shouldn't dynamically load tool class |  Major | Sentry | Alexander Kolbasov | Xinran Tinney |
| [SENTRY-853](https://issues.apache.org/jira/browse/SENTRY-853) | Handle show grant on \<auth\> failure correctly |  Major | . | Sravya Tirukkovalur | Steve Moist |
| [SENTRY-2147](https://issues.apache.org/jira/browse/SENTRY-2147) | Fix Javadoc for SentryHiveAuthorizerFactory |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-2150](https://issues.apache.org/jira/browse/SENTRY-2150) | Update Apache parent pom version |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-2165](https://issues.apache.org/jira/browse/SENTRY-2165) | NotificationProcesser process notification methods have logs wrongly flagged as ERROR |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2145](https://issues.apache.org/jira/browse/SENTRY-2145) | Some misc code cleanups |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-2198](https://issues.apache.org/jira/browse/SENTRY-2198) | Update to Kafka 1.0.0 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-2183](https://issues.apache.org/jira/browse/SENTRY-2183) | Increase default sentry-hdfs rpc timeout to 20 mins |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2269](https://issues.apache.org/jira/browse/SENTRY-2269) | Make SentryStore pluggable |  Major | sentrystore | Fahd Siddiqui | Fahd Siddiqui |
| [SENTRY-2284](https://issues.apache.org/jira/browse/SENTRY-2284) | Add two client API to get all roles or users privileges mapping |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2285](https://issues.apache.org/jira/browse/SENTRY-2285) | Add a profile '-Pdist' to package Sentry binaries |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2335](https://issues.apache.org/jira/browse/SENTRY-2335) | Allow multiple callbacks to be run when a Signal is received. |  Minor | Core | Brian Towles | Brian Towles |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2049](https://issues.apache.org/jira/browse/SENTRY-2049) | Remove hive-authz2 profile from the sentry-dist module |  Trivial | Sentry | Sergio Peña | Steve Moist |
| [SENTRY-379](https://issues.apache.org/jira/browse/SENTRY-379) | Db entities are not captured when firing failurehook for SentryAccessDeniedException |  Minor | . | Sravya Tirukkovalur |  |
| [SENTRY-2079](https://issues.apache.org/jira/browse/SENTRY-2079) | Sentry HA leader monitor does not work due to a mix of curator versions in the classpath |  Blocker | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2082](https://issues.apache.org/jira/browse/SENTRY-2082) | Exclude javax.servlet-3.0.0.v201112011016.jar from Sentry dist |  Blocker | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2084](https://issues.apache.org/jira/browse/SENTRY-2084) | Exclude javax.jms:jms from sentry distribution |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2092](https://issues.apache.org/jira/browse/SENTRY-2092) | Drop Role log message shows "Creating role" |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2040](https://issues.apache.org/jira/browse/SENTRY-2040) | When getting Snapshots from HMS we need more logging around cases when a snapshot is not being received |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2078](https://issues.apache.org/jira/browse/SENTRY-2078) | Have sentry server print an obvious INFO level log message when it becomes the writer |  Minor | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-1662](https://issues.apache.org/jira/browse/SENTRY-1662) | Constants java uses mutable collection |  Minor | Sentry | Alexander Kolbasov | Steve Moist |
| [SENTRY-2085](https://issues.apache.org/jira/browse/SENTRY-2085) | Sentry error handling exposes SentryGroupNotFoundException externally |  Major | . | Zach Amsden | Zach Amsden |
| [SENTRY-2120](https://issues.apache.org/jira/browse/SENTRY-2120) | Escape input string for error response message in LogLevelServlet |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2034](https://issues.apache.org/jira/browse/SENTRY-2034) | Add e2e tests for testing HMS notification processing. |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1819](https://issues.apache.org/jira/browse/SENTRY-1819) | HMSFollower and friends do not belong in sentry.service.thrift |  Minor | Sentry | Alexander Kolbasov | Xinran Tinney |
| [SENTRY-2123](https://issues.apache.org/jira/browse/SENTRY-2123) | Specify code path of auth-generated thrift files for Javadoc and exclude them from Javadoc generation |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2127](https://issues.apache.org/jira/browse/SENTRY-2127) | Fix unstable unit test TestColumnEndToEnd.testCrossDbTableOperations |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2124](https://issues.apache.org/jira/browse/SENTRY-2124) | LeaderStatusMonitor.toString() throws IllegalFormatConversionException with AtomicLong |  Minor | Sentry | Sergio Peña | Xinran Tinney |
| [SENTRY-2136](https://issues.apache.org/jira/browse/SENTRY-2136) | Bump metrics dependency to new namespace and version used by the rest of Hadoop |  Minor | Sentry | Liam Sargent | Liam Sargent |
| [SENTRY-2115](https://issues.apache.org/jira/browse/SENTRY-2115) |  Incorrect behavior of HMsFollower when HDFSSync feature is disabled. |  Critical | . | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2164](https://issues.apache.org/jira/browse/SENTRY-2164) | Convert uses of TransactionBlock to lambdas |  Major | Sentry | Alexander Kolbasov | Alexander Kolbasov |
| [SENTRY-2178](https://issues.apache.org/jira/browse/SENTRY-2178) | Sentry permissions for Solr are deleted as part of migration process |  Critical | Solr Plugin | Hrishikesh Gadre | Hrishikesh Gadre |
| [SENTRY-2184](https://issues.apache.org/jira/browse/SENTRY-2184) | Performance Issue: MPath is queried for each MAuthzPathsMapping in full snapshot |  Critical | Sentry | Na Li | Na Li |
| [SENTRY-2193](https://issues.apache.org/jira/browse/SENTRY-2193) | Synchronize thrift definition with the generated sources |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2192](https://issues.apache.org/jira/browse/SENTRY-2192) | supress date value in @Generated annotation generated by thrift |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2167](https://issues.apache.org/jira/browse/SENTRY-2167) | Change ignored logging messages to debug level in NotificationProcessor |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2200](https://issues.apache.org/jira/browse/SENTRY-2200) | Migrate 3.x Datanucleus unsupported configurations to 4.1 Datanucleus |  Major | Sentry | Na Li | Xinran Tinney |
| [SENTRY-2212](https://issues.apache.org/jira/browse/SENTRY-2212) | smart-apply-patch.sh isn't so smart, won't apply changes when files have been moved or renamed |  Major | Build | Steve Moist | Steve Moist |
| [SENTRY-2214](https://issues.apache.org/jira/browse/SENTRY-2214) | Sentry should not allow URI grants to EMPTY or NULL locations |  Major | . | Arjun Mishra | Arjun Mishra |
| [SENTRY-2262](https://issues.apache.org/jira/browse/SENTRY-2262) | Sentry client is not compatible when connecting to Sentry 2.0 |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2267](https://issues.apache.org/jira/browse/SENTRY-2267) | Listing user privileges fails because roleName field is required on Thrift |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2270](https://issues.apache.org/jira/browse/SENTRY-2270) | Illegal privileges on columns can be granted on Hive |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2271](https://issues.apache.org/jira/browse/SENTRY-2271) | Wrong log messages/method names in SentrySchema related classes. |  Major | Sentry | kalyan kumar kalvagadda | Arjun Mishra |
| [SENTRY-2209](https://issues.apache.org/jira/browse/SENTRY-2209) | Incorrect class in SentryHdfsMetricsUtil.java |  Minor | Hdfs Plugin | Adam Holley | Arjun Mishra |
| [SENTRY-2231](https://issues.apache.org/jira/browse/SENTRY-2231) | Fix URI check on List Privileges by Provider in SentryStore |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2257](https://issues.apache.org/jira/browse/SENTRY-2257) | Implement Sentry store API's to update owner privilege on a authorizable |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2238](https://issues.apache.org/jira/browse/SENTRY-2238) | Explicitly set Database on SentryHivePrivilegeObjectDesc |  Major | . | Arjun Mishra | Arjun Mishra |
| [SENTRY-2282](https://issues.apache.org/jira/browse/SENTRY-2282) | Remove hive-authzv2 binding and tests modules completely |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2283](https://issues.apache.org/jira/browse/SENTRY-2283) | Multiple versions of metrics on the classpath causes Sentry to not startup |  Major | Sentry | Steve Moist | Steve Moist |
| [SENTRY-2310](https://issues.apache.org/jira/browse/SENTRY-2310) | Sentry is not be able to fetch full update subsequently,  when there is HMS restart in the snapshot process. |  Major | . | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2190](https://issues.apache.org/jira/browse/SENTRY-2190) | Have verbose debug logs in CounterWait class |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2337](https://issues.apache.org/jira/browse/SENTRY-2337) | [REVERT] SENTRY-2295: Owner privileges should not be granted to sentry admin users |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2330](https://issues.apache.org/jira/browse/SENTRY-2330) | Change sentry-service-server to use ${project.version} |  Minor | Sentry | Steve Moist | Steve Moist |
| [SENTRY-2352](https://issues.apache.org/jira/browse/SENTRY-2352) | User roles with ALTER on a table can not show or describe the table on which they have ALTER |  Major | Sentry | Sergio Peña | Sergio Peña |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2094](https://issues.apache.org/jira/browse/SENTRY-2094) | Enable TestHDFSIntegrationWithHA tests |  Major | Sentry | Sergio Peña | Sergio Peña |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2055](https://issues.apache.org/jira/browse/SENTRY-2055) | Update the pom file on master with the 2.1.0-SNAPSHOT. |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-641](https://issues.apache.org/jira/browse/SENTRY-641) | Add binding for lily hbase indexer |  Major | . | Gregory Chanan | Mano Kovacs |
| [SENTRY-2023](https://issues.apache.org/jira/browse/SENTRY-2023) | Add sentry-shell support for hbase-indexer permissions |  Major | . | Mano Kovacs | Mano Kovacs |
| [SENTRY-2207](https://issues.apache.org/jira/browse/SENTRY-2207) | Refactor out Sentry CLI from sentry-provider-db into own module |  Major | Sentry | Steve Moist | Steve Moist |
| [SENTRY-2154](https://issues.apache.org/jira/browse/SENTRY-2154) | Update schema to grant privileges to user |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2155](https://issues.apache.org/jira/browse/SENTRY-2155) | Update JDO to grant privileges to user |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2206](https://issues.apache.org/jira/browse/SENTRY-2206) | Refactor out sentry api from sentry-provider-db to own module |  Major | Sentry | Steve Moist | Steve Moist |
| [SENTRY-2174](https://issues.apache.org/jira/browse/SENTRY-2174) | Sentry authorization provider should now generate ACL for users |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2208](https://issues.apache.org/jira/browse/SENTRY-2208) | Refactor out Sentry service into own module from sentry-provider-db |  Major | Sentry | Steve Moist | Anthony Young-Garner |
| [SENTRY-2156](https://issues.apache.org/jira/browse/SENTRY-2156) | Update provider-db backend code to grant privileges to user |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2246](https://issues.apache.org/jira/browse/SENTRY-2246) | Construct owner privilege (TSentryPrivilege) |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2256](https://issues.apache.org/jira/browse/SENTRY-2256) | Make thrift API changes to get user privileges from Sentry |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2162](https://issues.apache.org/jira/browse/SENTRY-2162) | Retrieve and list user privileges for authorization |  Major | Sentry | Na Li | Sergio Peña |
| [SENTRY-2252](https://issues.apache.org/jira/browse/SENTRY-2252) | Normalize the Sentry store API's to handle both user/role privileges |  Major | . | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2260](https://issues.apache.org/jira/browse/SENTRY-2260) | Update HDFS ACL's based on owner privileges. |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2265](https://issues.apache.org/jira/browse/SENTRY-2265) | Translate owner privilege in sentry binding for authorization |  Major | Sentry | kalyan kumar kalvagadda | Sergio Peña |
| [SENTRY-2224](https://issues.apache.org/jira/browse/SENTRY-2224) | Support SHOW GRANT on HIVE\_OBJECT |  Major | . | Arjun Mishra | Arjun Mishra |
| [SENTRY-2275](https://issues.apache.org/jira/browse/SENTRY-2275) | Grant and revoke owner privileges based on HMS updates(client-side) |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2251](https://issues.apache.org/jira/browse/SENTRY-2251) | Update user privileges based on changes to authorizables |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2241](https://issues.apache.org/jira/browse/SENTRY-2241) | Extend the Sync Listener to pass owner information to sentry server. |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2264](https://issues.apache.org/jira/browse/SENTRY-2264) | It is possible to elevate privileges from DROP using alter table rename |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2281](https://issues.apache.org/jira/browse/SENTRY-2281) | list\_privileges\_by\_user() fails with a JDODetachedFieldAccessException |  Major | Sentry | Sergio Peña | Arjun Mishra |
| [SENTRY-2272](https://issues.apache.org/jira/browse/SENTRY-2272) | Fix the sentry store logic for listing user privileges |  Major | Sentry | kalyan kumar kalvagadda | Sergio Peña |
| [SENTRY-2273](https://issues.apache.org/jira/browse/SENTRY-2273) | Create the SHOW GRANT USER task for Hive |  Major | Sentry | Sergio Peña | Arjun Mishra |
| [SENTRY-2280](https://issues.apache.org/jira/browse/SENTRY-2280) | The request received in SentryPolicyStoreProcessor.sentry\_notify\_hms\_event is null |  Critical | Sentry | Na Li | Na Li |
| [SENTRY-2294](https://issues.apache.org/jira/browse/SENTRY-2294) | Add requestorUsername to client.notifyHmsEvent() method |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2295](https://issues.apache.org/jira/browse/SENTRY-2295) | Owner privileges should not be granted to sentry admin users |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2274](https://issues.apache.org/jira/browse/SENTRY-2274) | Grant and revoke owner privileges based on HMS updates(server-side) |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2247](https://issues.apache.org/jira/browse/SENTRY-2247) | Add e2e tests to verify owner privileges |  Major | Sentry | kalyan kumar kalvagadda | Na Li |
| [SENTRY-2159](https://issues.apache.org/jira/browse/SENTRY-2159) | Add e2e tests for granting owner privileges |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2290](https://issues.apache.org/jira/browse/SENTRY-2290) | Avoid storing the path information for partitions in default location |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2157](https://issues.apache.org/jira/browse/SENTRY-2157) | Update audit log to grant/revoke owner privileges |  Major | Sentry | Na Li | Sergio Peña |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2096](https://issues.apache.org/jira/browse/SENTRY-2096) | Fail unit tests at end during test-patch.py execution |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2118](https://issues.apache.org/jira/browse/SENTRY-2118) | Document Configuration required to make Column authentication work |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2215](https://issues.apache.org/jira/browse/SENTRY-2215) | Remove unused SentryGrantRevokeTask class |  Minor | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2226](https://issues.apache.org/jira/browse/SENTRY-2226) | Support Hive operation ALTER TABLE EXCHANGE |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2199](https://issues.apache.org/jira/browse/SENTRY-2199) | Bump Hive version from 2.3.2 to 2.3.3 |  Major | Sentry | Sergio Peña | Arjun Mishra |
| [SENTRY-2056](https://issues.apache.org/jira/browse/SENTRY-2056) | Display test-patch.py output on the standard console to see progress on Jenkins |  Major | Sentry | Sergio Peña | kalyan kumar kalvagadda |
| [SENTRY-2277](https://issues.apache.org/jira/browse/SENTRY-2277) | Add to SentryStore testURI test case testing with multiple URI privileges |  Major | Sentry | Arjun Mishra | Arjun Mishra |


