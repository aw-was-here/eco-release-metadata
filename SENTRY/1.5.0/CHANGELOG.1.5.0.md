
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

## Release 1.5.0 - Unreleased (as of 2018-02-06)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-331](https://issues.apache.org/jira/browse/SENTRY-331) | Add more granular privileges to the DBModel |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-355](https://issues.apache.org/jira/browse/SENTRY-355) | Support metadata read privilege enforcement for Metastore pluging |  Major | . | Prasad Mujumdar | Colin Ma |
| [SENTRY-477](https://issues.apache.org/jira/browse/SENTRY-477) | Sentry service should expose metrics |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-74](https://issues.apache.org/jira/browse/SENTRY-74) | Add column-level privileges for Hive/Impala |  Major | . | Jeremy Beard | Dapeng Sun |
| [SENTRY-501](https://issues.apache.org/jira/browse/SENTRY-501) | High availability for the SENTRY service(Zookeeper part) |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-398](https://issues.apache.org/jira/browse/SENTRY-398) | Create the generic authorization model in Sentry |  Major | . | Colin Ma | shenguoquan |
| [SENTRY-614](https://issues.apache.org/jira/browse/SENTRY-614) | Add authentication and simple authorization support to SentryWebserver |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-432](https://issues.apache.org/jira/browse/SENTRY-432) | Synchronization of HDFS permissions with Sentry permissions |  Major | . | Arun Suresh | Arun Suresh |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-326](https://issues.apache.org/jira/browse/SENTRY-326) | Add support for Hive 0.13 |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-327](https://issues.apache.org/jira/browse/SENTRY-327) | Support auth admin delegation via SQL construct 'with grant option' |  Major | . | Prasad Mujumdar | Xiaomeng Huang |
| [SENTRY-420](https://issues.apache.org/jira/browse/SENTRY-420) | TestMovingtoProduction fails on real cluster |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-417](https://issues.apache.org/jira/browse/SENTRY-417) | Allow all users "Show role GRANT" as long as they belong to that group |  Major | . | Sravya Tirukkovalur | Prasad Mujumdar |
| [SENTRY-359](https://issues.apache.org/jira/browse/SENTRY-359) | Support Sentry service API to retrieve applicable privileges for a given authorizable object |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-358](https://issues.apache.org/jira/browse/SENTRY-358) | Sentry service API to grant prvilege should return newly created privilege object |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-507](https://issues.apache.org/jira/browse/SENTRY-507) | Ban additional configs in getConfigVal() |  Minor | . | Mike Yoder | Mike Yoder |
| [SENTRY-179](https://issues.apache.org/jira/browse/SENTRY-179) | Generate audit trail for Sentry DBStore service actions |  Major | . | Prasad Mujumdar | Colin Ma |
| [SENTRY-517](https://issues.apache.org/jira/browse/SENTRY-517) | MSCK REPAIR TABLE statements are not authorized |  Blocker | . | Lenni Kuff | Lenni Kuff |
| [SENTRY-471](https://issues.apache.org/jira/browse/SENTRY-471) | When running the command "mvn eclipse:eclipse", the sentry shouldn't default download the javadocs and source jars |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-422](https://issues.apache.org/jira/browse/SENTRY-422) | The URI object handling needs to be more robust |  Major | . | Prasad Mujumdar | Colin Ma |
| [SENTRY-572](https://issues.apache.org/jira/browse/SENTRY-572) | Upgrade solr version to 4.10.2 |  Minor | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-574](https://issues.apache.org/jira/browse/SENTRY-574) | Add Sentry solr handler |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-598](https://issues.apache.org/jira/browse/SENTRY-598) | Hive binding should support enforcing URI privilege for transforms |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-617](https://issues.apache.org/jira/browse/SENTRY-617) | Improve grant role to groups |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-650](https://issues.apache.org/jira/browse/SENTRY-650) | Support drop privilege for truncate table |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-578](https://issues.apache.org/jira/browse/SENTRY-578) | Print detail error for TestHDFSIntegration when test failed |  Minor | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-738](https://issues.apache.org/jira/browse/SENTRY-738) | Update committer list in sentry website |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-737](https://issues.apache.org/jira/browse/SENTRY-737) | Update release history for 1.5.0 |  Major | . | Dapeng Sun | Dapeng Sun |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-339](https://issues.apache.org/jira/browse/SENTRY-339) | Remove PrivilegeName column and constructPrivilegeName() function |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-362](https://issues.apache.org/jira/browse/SENTRY-362) | When sentry integrate into solr, the create instance of backend needs configure parameters from solrAuthzConf not hadoopConf |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-373](https://issues.apache.org/jira/browse/SENTRY-373) | Trivial fix after Sentry-326 |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-324](https://issues.apache.org/jira/browse/SENTRY-324) | Sentry need to be refactored to base on Hive 0.13 privilegeType class |  Major | . | Ruiming Zhou |  |
| [SENTRY-325](https://issues.apache.org/jira/browse/SENTRY-325) | Sentry needs to be refactored to based on HIVE 0.13 PreAddPartitionEvent API |  Major | . | Ruiming Zhou |  |
| [SENTRY-350](https://issues.apache.org/jira/browse/SENTRY-350) | org.apache.sentry.tests.e2e.metastore.TestMetastoreEndToEnd failure caused by new table parameter (COLUMN\_STATS\_ACCURATE etc) |  Major | . | Ruiming Zhou | Ruiming Zhou |
| [SENTRY-381](https://issues.apache.org/jira/browse/SENTRY-381) | Define jackson.version |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-368](https://issues.apache.org/jira/browse/SENTRY-368) | Remove unused field in SentryPolicyServiceClient.java |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-388](https://issues.apache.org/jira/browse/SENTRY-388) | Solr Binding initKerberos should use supplied Configuration |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-344](https://issues.apache.org/jira/browse/SENTRY-344) | Fix pre commit build( TestSentryStore - Too many open files) |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-411](https://issues.apache.org/jira/browse/SENTRY-411) | Alter table set location does not strictly check for URI privileges |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-338](https://issues.apache.org/jira/browse/SENTRY-338) | Sentry policy import tool adds non-compatible comments to grant privilege statements |  Major | . | Prasad Mujumdar | Ashish Singh |
| [SENTRY-208](https://issues.apache.org/jira/browse/SENTRY-208) | [flaky tests] Tests in TestSentryServiceIntegration and TestSentryStore often fail with "No current connection" |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-318](https://issues.apache.org/jira/browse/SENTRY-318) | Allow all users "Show GRANT" as long as they have the grant on that role. |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-416](https://issues.apache.org/jira/browse/SENTRY-416) | TestConfigTool.testQueryPermissions regressed |  Minor | . | Sravya Tirukkovalur |  |
| [SENTRY-375](https://issues.apache.org/jira/browse/SENTRY-375) | Sentry + Hive 0.13 integration test failure at org.apache.sentry.tests.e2e.hive.TestConfigTool |  Major | . | Ruiming Zhou | Ruiming Zhou |
| [SENTRY-376](https://issues.apache.org/jira/browse/SENTRY-376) | Sentry + Hive 0.13 integration test failure TestPrivilegesAtFunctionScope |  Major | . | Ruiming Zhou | Ruiming Zhou |
| [SENTRY-407](https://issues.apache.org/jira/browse/SENTRY-407) | Add schema upgrade script to handle schema changes in 1.5 |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-428](https://issues.apache.org/jira/browse/SENTRY-428) | Sentry service should periodically renew the server kerberos ticket |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-431](https://issues.apache.org/jira/browse/SENTRY-431) | Sentry db provider client should attempt to refresh kerberos ticket before connection |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-412](https://issues.apache.org/jira/browse/SENTRY-412) | Sentry script should support an option to print product version |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-425](https://issues.apache.org/jira/browse/SENTRY-425) | Reduce logging verbosity in SentryPolicyServiceClient when creating new connections |  Minor | . | Lenni Kuff | Lenni Kuff |
| [SENTRY-413](https://issues.apache.org/jira/browse/SENTRY-413) | Fix alter table index rebuild |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-414](https://issues.apache.org/jira/browse/SENTRY-414) | Alter table rename should require database level privileges |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-424](https://issues.apache.org/jira/browse/SENTRY-424) | Rat check occasionally failing after derby upgrade |  Minor | . | Sravya Tirukkovalur | Prasad Mujumdar |
| [SENTRY-421](https://issues.apache.org/jira/browse/SENTRY-421) | Metastore binding is not constructing in fully qualified URI sentry recognizable format |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-380](https://issues.apache.org/jira/browse/SENTRY-380) | Clean up some grantorPrincipal semantics |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-443](https://issues.apache.org/jira/browse/SENTRY-443) | "Show roles" regressed after Sentry-417 |  Blocker | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-441](https://issues.apache.org/jira/browse/SENTRY-441) | Improve the message for SemanticException |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-446](https://issues.apache.org/jira/browse/SENTRY-446) | Missing comma in mysql 1.5 script |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-423](https://issues.apache.org/jira/browse/SENTRY-423) | Hive command "SHOW TABLE EXTENDED LIKE... " failed with NPE |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [SENTRY-430](https://issues.apache.org/jira/browse/SENTRY-430) | Sentry Service does not use correct classpath when HIVE\_HOME environment var is defined |  Major | . | Lenni Kuff | Prasad Mujumdar |
| [SENTRY-316](https://issues.apache.org/jira/browse/SENTRY-316) | Users should be allowed to see tables in a db on which the user has authorization without having to switch to the db. |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-451](https://issues.apache.org/jira/browse/SENTRY-451) | CAST is still broken after SENTRY-118 patch |  Major | . | Grisha Trubetskoy | Grisha Trubetskoy |
| [SENTRY-450](https://issues.apache.org/jira/browse/SENTRY-450) | Add new Hive UDFs to the whitelist |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-452](https://issues.apache.org/jira/browse/SENTRY-452) | Uri tests failing on real cluster |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-454](https://issues.apache.org/jira/browse/SENTRY-454) | Hive metadata changes syncup with Sentry store should not run in error cases |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-455](https://issues.apache.org/jira/browse/SENTRY-455) | Fixed Unit Tests: TestDbOperations#testIndexTable |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-444](https://issues.apache.org/jira/browse/SENTRY-444) | Update the schema upgrade scripts per the grantor principal changes |  Major | . | Prasad Mujumdar | Sravya Tirukkovalur |
| [SENTRY-409](https://issues.apache.org/jira/browse/SENTRY-409) | Do not print stack traces for SentryUserExceptions in Hive |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-396](https://issues.apache.org/jira/browse/SENTRY-396) | The logic of Thrift multiplexedProcessor registers mutil processor isn't correct |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-334](https://issues.apache.org/jira/browse/SENTRY-334) | Handle errors more user firendly in db store when objects are not present. |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-447](https://issues.apache.org/jira/browse/SENTRY-447) | Fix thrift generated code related to grantor principal cleanup |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-466](https://issues.apache.org/jira/browse/SENTRY-466) | Return failure code when SentryClient was not successfully instantiated |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-468](https://issues.apache.org/jira/browse/SENTRY-468) | Rename the oracle and postgre upgrade scripts to \<jira-id\>.\<db-vendoer\>.sql format |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-465](https://issues.apache.org/jira/browse/SENTRY-465) | Fix an upgrade issue and an Invalid sql script file name issue of derby |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-469](https://issues.apache.org/jira/browse/SENTRY-469) | TListSentryPrivilegesByAuthRequest API should support impersonation |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-475](https://issues.apache.org/jira/browse/SENTRY-475) | SHOW GRANT ROLE from Hive always report with grant option as false |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-472](https://issues.apache.org/jira/browse/SENTRY-472) | Hive binding should validate URI privileges on permenant function resource URI |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-449](https://issues.apache.org/jira/browse/SENTRY-449) | Create testcases for Hive permanent UDF |  Major | . | Prasad Mujumdar |  |
| [SENTRY-445](https://issues.apache.org/jira/browse/SENTRY-445) | WITH GRANT OPTION does not allow delegated user to grant less permissive privileges |  Major | . | Lenni Kuff | Prasad Mujumdar |
| [SENTRY-482](https://issues.apache.org/jira/browse/SENTRY-482) | Fix typo in Sentry audit logs |  Major | . | Lenni Kuff | Lenni Kuff |
| [SENTRY-483](https://issues.apache.org/jira/browse/SENTRY-483) | The schema upgrade script for oracle missing terminating char for nested script |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-484](https://issues.apache.org/jira/browse/SENTRY-484) | Sentry Service has does not audit ip address in secure environments |  Major | . | Lenni Kuff | Lenni Kuff |
| [SENTRY-487](https://issues.apache.org/jira/browse/SENTRY-487) | TestPrivilegesAtFunctionScope fails on the real cluster |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-488](https://issues.apache.org/jira/browse/SENTRY-488) | Sentry list\_sentry\_privileges\_by\_authorizable API does not filter out roles/privileges for some cases. |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-489](https://issues.apache.org/jira/browse/SENTRY-489) | Sentry DB upgrade fails on Oracle with "ORA-00905: missing keyword" |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-470](https://issues.apache.org/jira/browse/SENTRY-470) | When the parameter of hive.sentry.server is uppercase string, the command "use default" will cause an error in Hive Server2 side |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-496](https://issues.apache.org/jira/browse/SENTRY-496) | Sentry 1.5 postgres upgrade script has contains incorrect upgrade file name |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-511](https://issues.apache.org/jira/browse/SENTRY-511) | Always enable metric collection and do not fail when all metric reporters are disabled |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-513](https://issues.apache.org/jira/browse/SENTRY-513) | Sentry web service may not be stopped completely |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-512](https://issues.apache.org/jira/browse/SENTRY-512) | Revert back to maven.compiler to java 6 |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-509](https://issues.apache.org/jira/browse/SENTRY-509) | upgrade HIVE version to 0.13.1-cdh5.3.0-SNAPSHOT in SENTRY |  Major | . | Dapeng Sun | Prasad Mujumdar |
| [SENTRY-408](https://issues.apache.org/jira/browse/SENTRY-408) | The URI permission should support more filesystem prefixes |  Major | . | Prasad Mujumdar | Colin Ma |
| [SENTRY-523](https://issues.apache.org/jira/browse/SENTRY-523) | Add maven-thrift-plugin back into provider-db pom.xml |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-328](https://issues.apache.org/jira/browse/SENTRY-328) | Need to update DataNucleus version to support proper SQL generation for DB2 |  Major | . | Tuong Truong | Tuong Truong |
| [SENTRY-525](https://issues.apache.org/jira/browse/SENTRY-525) | [Unit Test]org.apache.sentry.tests.e2e.hdfs.TestHDFSIntegrationtestEnd2End test fails |  Blocker | . | Dapeng Sun | Arun Suresh |
| [SENTRY-529](https://issues.apache.org/jira/browse/SENTRY-529) | [Unit Test]org.apache.sentry.tests.e2e.hdfs.TestHDFSIntegrationtestEnd2End test fails after SENTRY-74 |  Blocker | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-526](https://issues.apache.org/jira/browse/SENTRY-526) | Duplicate grant same but case sensitive privilges will throw exception |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-534](https://issues.apache.org/jira/browse/SENTRY-534) | TestRuntimeMetadataRetrieval fails intermittently |  Major | . | Lenni Kuff | Lenni Kuff |
| [SENTRY-536](https://issues.apache.org/jira/browse/SENTRY-536) | Disable TestDPrivilegesAtFunctionScope from the cluster run profile |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-528](https://issues.apache.org/jira/browse/SENTRY-528) | Dependent on multiple versions of servlet-api jars lead to throw an SecurityException when running solr e2e test in eclipse |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-540](https://issues.apache.org/jira/browse/SENTRY-540) | Fix Sentry test validating special chars in username due to HIVE-8916 |  Major | . | Lenni Kuff | Lenni Kuff |
| [SENTRY-140](https://issues.apache.org/jira/browse/SENTRY-140) | Orphaned privileges should be garbage collected |  Major | . | Shreepadma Venugopalan | Mike Yoder |
| [SENTRY-555](https://issues.apache.org/jira/browse/SENTRY-555) | Ensure groupName returned for dir objects within prefix but not associated with an authz object is not null |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-545](https://issues.apache.org/jira/browse/SENTRY-545) | Disable Privilege Cleanup Thread |  Major | . | Mike Yoder | Mike Yoder |
| [SENTRY-556](https://issues.apache.org/jira/browse/SENTRY-556) | Remove NPE logging when Sentry Service is not reachable |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-557](https://issues.apache.org/jira/browse/SENTRY-557) | Handle Situation when Metastore restarts Listeners thereby resetting the sequenceCounter |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-553](https://issues.apache.org/jira/browse/SENTRY-553) | Privilge implies failed if parent is server privilge and child privilge is URI privilge |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-558](https://issues.apache.org/jira/browse/SENTRY-558) | Make Metastore sync time period configurable |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-552](https://issues.apache.org/jira/browse/SENTRY-552) | Sentry Store recursive revoke of privilege levels \< ALL does not properly downgrade child privileges |  Major | . | Lenni Kuff | Dapeng Sun |
| [SENTRY-559](https://issues.apache.org/jira/browse/SENTRY-559) | Allow prefix paths to be associated with authorizable objects |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-560](https://issues.apache.org/jira/browse/SENTRY-560) | Sentry HDFS Syncup applies duplicate ACLs for the same scope, group and type |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-196](https://issues.apache.org/jira/browse/SENTRY-196) | Error in pom file prevents maven eclipse plugin from running |  Minor | . | Arun Suresh | Arun Suresh |
| [SENTRY-564](https://issues.apache.org/jira/browse/SENTRY-564) | Sentry metastore upgrade order is computed incorrectly |  Critical | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-544](https://issues.apache.org/jira/browse/SENTRY-544) | Do not add non HDFS path updates in Hive meta store Sentry plugin for HDFS sync |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-547](https://issues.apache.org/jira/browse/SENTRY-547) | Drop table may dead lock, getChildPrivileges should in one transaction with revoke |  Critical | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-442](https://issues.apache.org/jira/browse/SENTRY-442) | Sentry 331 follow on |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-549](https://issues.apache.org/jira/browse/SENTRY-549) | SentryStore should support more actions |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-573](https://issues.apache.org/jira/browse/SENTRY-573) | Fix NPE caused when rename op is applied on authzObject with no explicit permissions |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-429](https://issues.apache.org/jira/browse/SENTRY-429) | When SENTRY Service using free port, the port should set to configuration. |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-579](https://issues.apache.org/jira/browse/SENTRY-579) | Clean duplicate declaration of dependences |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-586](https://issues.apache.org/jira/browse/SENTRY-586) | Remove remaining cdh hive dependence in pom.xml |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-602](https://issues.apache.org/jira/browse/SENTRY-602) | Pre commit build script should update the snapshot dependencies |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-575](https://issues.apache.org/jira/browse/SENTRY-575) | Table GRANTS should not Override Database GRANT in the Sentry HDFS plugin |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-604](https://issues.apache.org/jira/browse/SENTRY-604) | Clean duplicate dependences in poms |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-541](https://issues.apache.org/jira/browse/SENTRY-541) | Seperate udfuri privilege from anyPrivilege model |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-494](https://issues.apache.org/jira/browse/SENTRY-494) | UNLOCK TABLE is not allowed |  Major | . | Grisha Trubetskoy | Colin Ma |
| [SENTRY-615](https://issues.apache.org/jira/browse/SENTRY-615) | [Unit Test] Fix TestSentryWebServerWithKerberos#testPingWithUnauthorizedUser failed in Jenkins occasionally |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-576](https://issues.apache.org/jira/browse/SENTRY-576) | Enable unit test TestSentryServiceIntegration.testListByAuthDB |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-594](https://issues.apache.org/jira/browse/SENTRY-594) | Alter database should check output privilege instead of input |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-563](https://issues.apache.org/jira/browse/SENTRY-563) | The interface listPrivilegesByRoleName may throw thrift exception if Authorizable is empty |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-591](https://issues.apache.org/jira/browse/SENTRY-591) | create table should have output privilege in DB scope |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-571](https://issues.apache.org/jira/browse/SENTRY-571) | Enable TestPrivilegesAtFunctionScope |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-566](https://issues.apache.org/jira/browse/SENTRY-566) | Sentry source assembly doesn't include sentry-hdfs module |  Major | . | Prasad Mujumdar | Dapeng Sun |
| [SENTRY-357](https://issues.apache.org/jira/browse/SENTRY-357) | Not able to read policy files on HDFS for Solr |  Blocker | . | Nishant Gupta | shenguoquan |
| [SENTRY-609](https://issues.apache.org/jira/browse/SENTRY-609) | [Unit Test] Many tests failing with error "The root scratch dir: /tmp/hive on HDFS should be writable. Current permissions are: rwxr-xr-x" |  Blocker | . | Lenni Kuff | Dapeng Sun |
| [SENTRY-648](https://issues.apache.org/jira/browse/SENTRY-648) | Add e2e tests for Sentry HA |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-652](https://issues.apache.org/jira/browse/SENTRY-652) | Sentry fails to parse spaces when HDFS ACL sync enabled |  Major | . | Ryan P | Ryan P |
| [SENTRY-658](https://issues.apache.org/jira/browse/SENTRY-658) | Connection leak in Hive biding with Sentry service |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-636](https://issues.apache.org/jira/browse/SENTRY-636) | Inaccurate log level in HiveServerFactory.java |  Minor | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-660](https://issues.apache.org/jira/browse/SENTRY-660) | Support client principal and keytab configuration properties for Sentry HA to work with secure zookeeper |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-664](https://issues.apache.org/jira/browse/SENTRY-664) | After Namenode is restarted, Path updates remain unsynched |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-665](https://issues.apache.org/jira/browse/SENTRY-665) | PathsUpdate.parsePath needs to handle special characters |  Major | . | Ryan P | Ryan P |
| [SENTRY-599](https://issues.apache.org/jira/browse/SENTRY-599) | Sentry service may report incorrect status when service is restarting |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-577](https://issues.apache.org/jira/browse/SENTRY-577) | Orphan cleaner should remove privilege is not ALL, SELECT or INSERT |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-654](https://issues.apache.org/jira/browse/SENTRY-654) | Calls to append\_partition fail when Sentry is enabled |  Major | . | Richard Williams | Ryan P |
| [SENTRY-669](https://issues.apache.org/jira/browse/SENTRY-669) | Drop database Hive statement removes the DB privileges even if the operation fails |  Major | . | Prasad Mujumdar | Ryan P |
| [SENTRY-674](https://issues.apache.org/jira/browse/SENTRY-674) | Update Apache Hive dependency to new release 1.1.0 |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-673](https://issues.apache.org/jira/browse/SENTRY-673) | Keep consistent version of hadoop dependence |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-676](https://issues.apache.org/jira/browse/SENTRY-676) | Address Sentry HA issues in secure cluster |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-670](https://issues.apache.org/jira/browse/SENTRY-670) | Fix the Sentry build to remove snapshot and non apache dependencies |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-690](https://issues.apache.org/jira/browse/SENTRY-690) | Remove SENTRY-645 patch from 1.5.0 release |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-691](https://issues.apache.org/jira/browse/SENTRY-691) | upgrade schema tool: when upgrade oracle backed db from 1.4.0 - 1.5.0, gets syntax error |  Major | . | Anne Yu | shenguoquan |
| [SENTRY-500](https://issues.apache.org/jira/browse/SENTRY-500) | 1.4 to 1.5 upgrade needs to handle empty strings with \_\_NULL\_\_ |  Blocker | . | Sravya Tirukkovalur | shenguoquan |
| [SENTRY-693](https://issues.apache.org/jira/browse/SENTRY-693) | The generic model has not successfully revoke part of privileges from existed ALL privilege |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-715](https://issues.apache.org/jira/browse/SENTRY-715) | ACLs are not updated on a table until the first explicit GRANT statement. |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-619](https://issues.apache.org/jira/browse/SENTRY-619) | Support for S3 URIs |  Major | . | Ben White |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-47](https://issues.apache.org/jira/browse/SENTRY-47) | Tests need to clean up the databases and tables it creates |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-383](https://issues.apache.org/jira/browse/SENTRY-383) | Add TestPrivilegeWithGrantOption to cluster test profile |  Minor | . | Sravya Tirukkovalur | Prasad Mujumdar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-366](https://issues.apache.org/jira/browse/SENTRY-366) | Update the versions on trunk after branching |  Major | . | Sravya Tirukkovalur | Tuong Truong |
| [SENTRY-347](https://issues.apache.org/jira/browse/SENTRY-347) | Generate the audit log in Json format |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-340](https://issues.apache.org/jira/browse/SENTRY-340) | Database implement for "with grant option" |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-341](https://issues.apache.org/jira/browse/SENTRY-341) | Extend Thrift API for SentryStore to support "with grant option" |  Major | . | Xiaomeng Huang | Dapeng Sun |
| [SENTRY-342](https://issues.apache.org/jira/browse/SENTRY-342) | Grant check with grant option |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-343](https://issues.apache.org/jira/browse/SENTRY-343) | Privileges query from database support for "With Grant Option" |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-345](https://issues.apache.org/jira/browse/SENTRY-345) | Revoke check with grant option |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-349](https://issues.apache.org/jira/browse/SENTRY-349) | Extend Hive Hook with Grant Option |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-377](https://issues.apache.org/jira/browse/SENTRY-377) | Add Hive e2e test for grantOption |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-370](https://issues.apache.org/jira/browse/SENTRY-370) | Judgement of MSentryPrivilege implies child privileges |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-346](https://issues.apache.org/jira/browse/SENTRY-346) | Create new FileAppender used in log4j to keep all the logs |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-367](https://issues.apache.org/jira/browse/SENTRY-367) | Add end to end tests for audit log |  Minor | . | Colin Ma | Colin Ma |
| [SENTRY-406](https://issues.apache.org/jira/browse/SENTRY-406) | Support "WITH GRANT OPTION" for the audit log |  Minor | . | Colin Ma | Colin Ma |
| [SENTRY-426](https://issues.apache.org/jira/browse/SENTRY-426) | Add upgrade scripts for column level privileges |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-389](https://issues.apache.org/jira/browse/SENTRY-389) | Database implementation for column |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-391](https://issues.apache.org/jira/browse/SENTRY-391) | Extend sentrystore query for column level privilege |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-390](https://issues.apache.org/jira/browse/SENTRY-390) | Extend Thrift API to support column-level privilege |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-393](https://issues.apache.org/jira/browse/SENTRY-393) | Grant/Revoke and Show Grant info support for column level privilege |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-394](https://issues.apache.org/jira/browse/SENTRY-394) | PolicyFile and ConfigImport support for column level privilege |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-392](https://issues.apache.org/jira/browse/SENTRY-392) | Authorization for column level security |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-548](https://issues.apache.org/jira/browse/SENTRY-548) | SentryStore support more actions for drop |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-550](https://issues.apache.org/jira/browse/SENTRY-550) | SentryStore support more actions for rename |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-456](https://issues.apache.org/jira/browse/SENTRY-456) | Service discovery for SENTRY high availability |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-463](https://issues.apache.org/jira/browse/SENTRY-463) | Refactor SentryServiceClientFactory: change "create SentryPolicyServiceClient" to static |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-464](https://issues.apache.org/jira/browse/SENTRY-464) | Sentry service register and using InvocationHandler for SentryPolicyServiceClientFactory high availability |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-459](https://issues.apache.org/jira/browse/SENTRY-459) | Security mode (Kerberos) support for SENTRY high availability |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-519](https://issues.apache.org/jira/browse/SENTRY-519) | Change Hive version to Apache Hive 0.15 for authorization V2 |  Major | . | Xiaomeng Huang | Prasad Mujumdar |
| [SENTRY-400](https://issues.apache.org/jira/browse/SENTRY-400) | Extending sentry metadata infrastructure to support the generic authorization model |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-405](https://issues.apache.org/jira/browse/SENTRY-405) | Adding a general jdo access layer(sentrystore) to support the new authorization model |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-404](https://issues.apache.org/jira/browse/SENTRY-404) | Extending Sentry thrift interface and adding a processor for generic authorization model |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-595](https://issues.apache.org/jira/browse/SENTRY-595) | [UnitTest] In Kerberos mode, client should run under clientSubject |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-503](https://issues.apache.org/jira/browse/SENTRY-503) | Add authentication support to SentryWebserver |  Major | . | Sravya Tirukkovalur | Dapeng Sun |
| [SENTRY-608](https://issues.apache.org/jira/browse/SENTRY-608) | Add simple authorization support to SentryWebserver |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-625](https://issues.apache.org/jira/browse/SENTRY-625) | Improve test cases in "TestPrivilegesAtColumnScope" |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-633](https://issues.apache.org/jira/browse/SENTRY-633) | Refactor SentryServiceIntegrationBase to reduce test time |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [SENTRY-610](https://issues.apache.org/jira/browse/SENTRY-610) | [Unit Test]  TestDbPrivilegeAtTransform (and others) failing with NullPointerException @ HiveServer2.stop(HiveServer2.java:273) |  Blocker | . | Lenni Kuff | Dapeng Sun |
| [SENTRY-635](https://issues.apache.org/jira/browse/SENTRY-635) | Improve test cases in "TestPerDBConfiguration" |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-640](https://issues.apache.org/jira/browse/SENTRY-640) | Add core model for lily hbase indexer |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-653](https://issues.apache.org/jira/browse/SENTRY-653) | Add simple Indexer model object test for sentry-core-model-indexer |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-629](https://issues.apache.org/jira/browse/SENTRY-629) | Improve test cases in "TestPrivilegesAtTableScope" |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-651](https://issues.apache.org/jira/browse/SENTRY-651) | Add policy engine for lily hbase indexer |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-632](https://issues.apache.org/jira/browse/SENTRY-632) | Support Sentry cache sync via ZK |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-628](https://issues.apache.org/jira/browse/SENTRY-628) | Add ZK based Sentry cache sync framework |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-655](https://issues.apache.org/jira/browse/SENTRY-655) | Improve test cases in "SentryStoreIntegrationBase" |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-638](https://issues.apache.org/jira/browse/SENTRY-638) | Improve test cases in "TestSentryStore" |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-630](https://issues.apache.org/jira/browse/SENTRY-630) | Improve test cases in "TestViewPrivileges" |  Major | . | Colin Ma | Colin Ma |
| [SENTRY-659](https://issues.apache.org/jira/browse/SENTRY-659) | Periodic cleanup of ZK nodes |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-680](https://issues.apache.org/jira/browse/SENTRY-680) | Create release branch for 1.5.0 |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-689](https://issues.apache.org/jira/browse/SENTRY-689) | Verify the patch on 1.4.0 |  Major | . | Anne Yu | Anne Yu |
| [SENTRY-682](https://issues.apache.org/jira/browse/SENTRY-682) | Update changelog.txt, notice.txt, etc... for 1.5.0 release |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-762](https://issues.apache.org/jira/browse/SENTRY-762) | fix MarkMail link in sentry mailing\_lists page |  Major | infrastructure | Dapeng Sun | Dapeng Sun |
| [SENTRY-761](https://issues.apache.org/jira/browse/SENTRY-761) | Update news,committers list and status reports sections in incubator sentry page |  Major | infrastructure | Dapeng Sun | Dapeng Sun |
| [SENTRY-433](https://issues.apache.org/jira/browse/SENTRY-433) | Create common in-memory data structures for efficient storage of Path and Permission information |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-434](https://issues.apache.org/jira/browse/SENTRY-434) | Create wrapper classes for the Path and Permission data structures to handle Full/Partial updates |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-435](https://issues.apache.org/jira/browse/SENTRY-435) | Implement SentryAuthorizationProvider namenode plugin |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-436](https://issues.apache.org/jira/browse/SENTRY-436) | Add Thrift endpoints to handle updates from HMS as well as request for updates from Sentry Namenode plugin |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-437](https://issues.apache.org/jira/browse/SENTRY-437) | Create UpdateHandler and Forwarder that stores updates in a log to be sent to Sentry NN plugin |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-438](https://issues.apache.org/jira/browse/SENTRY-438) | Modify SentryMetastorePostEventHandler to post updates to Sentry on HMS Path changes |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-439](https://issues.apache.org/jira/browse/SENTRY-439) | Add e2e testcases for Sentry HDFS integration |  Major | . | Arun Suresh | Arun Suresh |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-354](https://issues.apache.org/jira/browse/SENTRY-354) | Test for update.distrib phase overriding |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-415](https://issues.apache.org/jira/browse/SENTRY-415) | Add API to Sentry Service that allows clients to read the service's config values |  Major | . | Lenni Kuff | Mike Yoder |
| [SENTRY-671](https://issues.apache.org/jira/browse/SENTRY-671) | Apache Sentry 1.5.0 Release |  Major | . | shenguoquan | shenguoquan |
| [SENTRY-759](https://issues.apache.org/jira/browse/SENTRY-759) | Update project webpage and status file |  Major | infrastructure | Prasad Mujumdar | Dapeng Sun |
| [SENTRY-831](https://issues.apache.org/jira/browse/SENTRY-831) | Sentry Committer list should be in the alphabetical order. |  Major | . | Dapeng Sun | Dapeng Sun |


