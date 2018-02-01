
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

## Release 1.4.0 - 2014-08-18



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-115](https://issues.apache.org/jira/browse/SENTRY-115) | Give bindings the ability to access the group mappings |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-3](https://issues.apache.org/jira/browse/SENTRY-3) | Create a diagnostics tool for configuration validation |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-165](https://issues.apache.org/jira/browse/SENTRY-165) | Implement createShowRolesTask() in SentryHiveAuthorizationTaskFactoryImpl |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-184](https://issues.apache.org/jira/browse/SENTRY-184) | Add Sentry service APIs to query roles and privileges |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-158](https://issues.apache.org/jira/browse/SENTRY-158) | Hive bindings should enable MR level ACLs for session user |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-216](https://issues.apache.org/jira/browse/SENTRY-216) | Support SHOW CURRENT ROLES |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-157](https://issues.apache.org/jira/browse/SENTRY-157) | Support filter pushdown in DB Store client to reduce data transfer from DB Store service |  Major | . | Prasad Mujumdar | Arun Suresh |
| [SENTRY-215](https://issues.apache.org/jira/browse/SENTRY-215) | SHOW GRANT ROLE xxx ON [SERVER, DATABASE, TABLE, URI] xxx |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-37](https://issues.apache.org/jira/browse/SENTRY-37) | Implement a DB backed policy store |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [SENTRY-199](https://issues.apache.org/jira/browse/SENTRY-199) | Create tool that will convert policy file into into DB store |  Major | . | Jarek Jarcec Cecho | Joey Echeverria |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-106](https://issues.apache.org/jira/browse/SENTRY-106) | Make solr testing work against apache 4.7 version |  Minor | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-193](https://issues.apache.org/jira/browse/SENTRY-193) | Add schematool for creating Sentry store schema from the SQL scripts |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-211](https://issues.apache.org/jira/browse/SENTRY-211) | Do the user: group lookup in the Sentry db policy server |  Critical | . | Sravya Tirukkovalur |  |
| [SENTRY-258](https://issues.apache.org/jira/browse/SENTRY-258) | Increase field PRIVILEGE\_NAME to 4000 characters to enable long URIs |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-293](https://issues.apache.org/jira/browse/SENTRY-293) | Create a new mvn cluster test profile for provider db tests |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-303](https://issues.apache.org/jira/browse/SENTRY-303) | Allow users to grant/revoke SELECT/INSERT to ALL tables in a Database |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-333](https://issues.apache.org/jira/browse/SENTRY-333) | Add conf directory to sentry distribution |  Major | . | Tuong Truong | Tuong Truong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-118](https://issues.apache.org/jira/browse/SENTRY-118) | cast udf should be added to sentry udf whitelist for hive |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [SENTRY-131](https://issues.apache.org/jira/browse/SENTRY-131) | bin/sentry script doesn't find config-tool.sh under some circumstances |  Major | . | Mark Grover | Mark Grover |
| [SENTRY-133](https://issues.apache.org/jira/browse/SENTRY-133) | Alter table create partition if not exists - results in error |  Critical | . | Brock Noland | Brock Noland |
| [SENTRY-161](https://issues.apache.org/jira/browse/SENTRY-161) | Sentry master branch is trying to download Hadoop tarball from nonexisting URL |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-169](https://issues.apache.org/jira/browse/SENTRY-169) | JAAS login options not compatible with IBM JDK |  Major | . | Tuong Truong | Tuong Truong |
| [SENTRY-152](https://issues.apache.org/jira/browse/SENTRY-152) | Sentry checks permissions on underlying partitioned table when accessing a view |  Major | . | Sravya Tirukkovalur | Prasad Mujumdar |
| [SENTRY-177](https://issues.apache.org/jira/browse/SENTRY-177) | Sentry Policy Service does not treat role names as case insensitive |  Major | . | Lenni Kuff | Sravya Tirukkovalur |
| [SENTRY-186](https://issues.apache.org/jira/browse/SENTRY-186) | e2e tests for solr document-level security |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-187](https://issues.apache.org/jira/browse/SENTRY-187) | Use invariants rather than default for specification of update index level authorization |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-190](https://issues.apache.org/jira/browse/SENTRY-190) | Support for getting set of roles from ProviderBackend |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-192](https://issues.apache.org/jira/browse/SENTRY-192) | Convert solr doc-level e2e test to be based on roles rather than groups |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-175](https://issues.apache.org/jira/browse/SENTRY-175) | sentry script throws error for the dbstore service invocation |  Blocker | . | Prasad Mujumdar | Sravya Tirukkovalur |
| [SENTRY-176](https://issues.apache.org/jira/browse/SENTRY-176) | Not able to read policy files on HDFS (Regression) |  Blocker | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-195](https://issues.apache.org/jira/browse/SENTRY-195) | Sentry schema tool can't process comments inside statement |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-194](https://issues.apache.org/jira/browse/SENTRY-194) | Sentry script should note use Hive script by default for service and tool execution |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-201](https://issues.apache.org/jira/browse/SENTRY-201) | TestDatabaseProvider tests fail after Sentry schema tool was added. |  Major | . | Sravya Tirukkovalur | Prasad Mujumdar |
| [SENTRY-204](https://issues.apache.org/jira/browse/SENTRY-204) | Test cases extending SentryServiceIntegrationBase are failing |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-200](https://issues.apache.org/jira/browse/SENTRY-200) | Remove sentry-provider dependencies on hive |  Blocker | . | Lenni Kuff | Prasad Mujumdar |
| [SENTRY-203](https://issues.apache.org/jira/browse/SENTRY-203) | Column name mismatch causes DataNucleus to throw exceptions |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-205](https://issues.apache.org/jira/browse/SENTRY-205) | Sentry throws Exception when trying to revoke Table level privileges |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-213](https://issues.apache.org/jira/browse/SENTRY-213) | Sentry schema tool doesn't handle sentry.javax.jdo.\* properties |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-209](https://issues.apache.org/jira/browse/SENTRY-209) | Empty list returned when calling listPrivilegesByRoleName |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-214](https://issues.apache.org/jira/browse/SENTRY-214) | Sentry Service does not allow the same Privilege to be associated to multiple Roles |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-218](https://issues.apache.org/jira/browse/SENTRY-218) | Use defaults for user, password and driver in SchemaTool |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-210](https://issues.apache.org/jira/browse/SENTRY-210) | Exception Thrown When Trying to grantRoleToGroup |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-221](https://issues.apache.org/jira/browse/SENTRY-221) | Privilege scope is case sensitive |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-220](https://issues.apache.org/jira/browse/SENTRY-220) | Trivial fix to SentrySchemaTool to set default driver |  Trivial | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-178](https://issues.apache.org/jira/browse/SENTRY-178) | Poor performance for Sentry Policy Service as #of privileges is scaled up |  Critical | . | Lenni Kuff | Arun Suresh |
| [SENTRY-217](https://issues.apache.org/jira/browse/SENTRY-217) | Add Insert and URI tests for Sentry DB provider |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-182](https://issues.apache.org/jira/browse/SENTRY-182) | Granting ALL privileges to table does not seem to do the right thing when using the SimpleDbPolicyProvider |  Major | . | Lenni Kuff | Prasad Mujumdar |
| [SENTRY-224](https://issues.apache.org/jira/browse/SENTRY-224) | Provider resource should not be required for DB provider backend |  Major | . | Sravya Tirukkovalur | Prasad Mujumdar |
| [SENTRY-229](https://issues.apache.org/jira/browse/SENTRY-229) | SentrySchemaTool initSchema does not work with postgres 8.1and oracle |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-183](https://issues.apache.org/jira/browse/SENTRY-183) | Sentry Policy Service goes into an unusable state when granting privileges. Subsequent access fail with a DataNucleusException: "Iteration request failed: SELECT ..." |  Major | . | Lenni Kuff | Prasad Mujumdar |
| [SENTRY-191](https://issues.apache.org/jira/browse/SENTRY-191) | Sentry Policy Service should not require passing the RPC requestor's user/group information |  Blocker | . | Lenni Kuff | Prasad Mujumdar |
| [SENTRY-202](https://issues.apache.org/jira/browse/SENTRY-202) | Sentry end to end tests which use ClusterDFS will need to explicitly add the policy file to HDFS |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-235](https://issues.apache.org/jira/browse/SENTRY-235) | Change tests in TestSentryServerWithoutKerberos to use new Sentry service APIs |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-236](https://issues.apache.org/jira/browse/SENTRY-236) | Sentry PolicyFile provider incorrectly logs error messages when reading policy file |  Major | . | Lenni Kuff | Lenni Kuff |
| [SENTRY-188](https://issues.apache.org/jira/browse/SENTRY-188) | Reduce the logging level during per-db policy loading |  Major | . | Prasad Mujumdar | Ruiming Zhou |
| [SENTRY-241](https://issues.apache.org/jira/browse/SENTRY-241) | Sentry GrantRevokeTask should fire the sentry failure look |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-219](https://issues.apache.org/jira/browse/SENTRY-219) | Sentry Cache Backend Provider initialization does not work as expected |  Major | . | Lenni Kuff | Lenni Kuff |
| [SENTRY-237](https://issues.apache.org/jira/browse/SENTRY-237) | Support log4j configuration for Sentry service |  Major | . | Prasad Mujumdar | Arun Suresh |
| [SENTRY-248](https://issues.apache.org/jira/browse/SENTRY-248) | The sentry-provider-cache dependency is not correctly set |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-255](https://issues.apache.org/jira/browse/SENTRY-255) | Revoke on Server privilege fails |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-243](https://issues.apache.org/jira/browse/SENTRY-243) | The operation type needs to be set in the grant/revoke task context for the failure hook |  Blocker | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-231](https://issues.apache.org/jira/browse/SENTRY-231) | Fix JDK 6 build |  Major | . | Prasad Mujumdar | Ruiming Zhou |
| [SENTRY-263](https://issues.apache.org/jira/browse/SENTRY-263) | Remove usage of getHostString() from AbstractTestWithStaticConfiguration |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-246](https://issues.apache.org/jira/browse/SENTRY-246) | Load command does not seem to work with filter push down |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-271](https://issues.apache.org/jira/browse/SENTRY-271) | Test TestSentryServiceIntegration is flaky |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-254](https://issues.apache.org/jira/browse/SENTRY-254) | Privilege name in provider db has a limit of length 128 which might be very low for long uris. |  Major | . | Sravya Tirukkovalur | Jarek Jarcec Cecho |
| [SENTRY-262](https://issues.apache.org/jira/browse/SENTRY-262) | Updating patch for SENTRY-178 |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-207](https://issues.apache.org/jira/browse/SENTRY-207) | Sentry script should return non-zero exist status in error conditions |  Major | . | Prasad Mujumdar | Sravya Tirukkovalur |
| [SENTRY-275](https://issues.apache.org/jira/browse/SENTRY-275) | Fix compilation error in SentryService |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-266](https://issues.apache.org/jira/browse/SENTRY-266) | Implement \_HOST substitution in principal |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-276](https://issues.apache.org/jira/browse/SENTRY-276) | SentryService tests are currently timing out |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-273](https://issues.apache.org/jira/browse/SENTRY-273) | org.apache.sentry.tests.e2e.dbprovider.TestDbUriPermissions is failing |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-251](https://issues.apache.org/jira/browse/SENTRY-251) | PolicyProviderForTest.addPrivilege breaks in some cases |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-252](https://issues.apache.org/jira/browse/SENTRY-252) | Per db policy files based tests should be updated for dbprovider usage |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-166](https://issues.apache.org/jira/browse/SENTRY-166) | Sentry does not accept URIs with an equals sign (=) in path. Fails with llegalArgumentException: Invalid key value |  Critical | . | Lenni Kuff | Jarek Jarcec Cecho |
| [SENTRY-259](https://issues.apache.org/jira/browse/SENTRY-259) | Implement Hive metastore plugin |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-280](https://issues.apache.org/jira/browse/SENTRY-280) | Sentry-202 missing changes |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-278](https://issues.apache.org/jira/browse/SENTRY-278) |  TestSearchModelAuthorizables.testTooManyKV and  TestDBModelAuthorizables.testTooManyKV fail |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-269](https://issues.apache.org/jira/browse/SENTRY-269) | Add a test case for Denied Alter table, should fire SentryOnFailureHook |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-277](https://issues.apache.org/jira/browse/SENTRY-277) | Add Pig+HCat test for Metastore auth plugin |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-283](https://issues.apache.org/jira/browse/SENTRY-283) | Secure connection from HS2 to Sentry service fails |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-247](https://issues.apache.org/jira/browse/SENTRY-247) | Go back to using filter push down once the bugs are fixed |  Major | . | Sravya Tirukkovalur | Arun Suresh |
| [SENTRY-290](https://issues.apache.org/jira/browse/SENTRY-290) | Handle null pointer in SentryPolicyProcessor |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-284](https://issues.apache.org/jira/browse/SENTRY-284) | Create test for creating external partition |  Major | . | Jarek Jarcec Cecho | Prasad Mujumdar |
| [SENTRY-289](https://issues.apache.org/jira/browse/SENTRY-289) | Kerberos based connection from HS2 and Metastore to Sentry service fails |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-212](https://issues.apache.org/jira/browse/SENTRY-212) | Restrict access to hive config property hive.sentry.active.role.set which is set by Sentry Hive binding |  Major | . | Prasad Mujumdar | Jarek Jarcec Cecho |
| [SENTRY-181](https://issues.apache.org/jira/browse/SENTRY-181) | Add a test case for duplicate privileges |  Major | . | Lenni Kuff | Jarek Jarcec Cecho |
| [SENTRY-274](https://issues.apache.org/jira/browse/SENTRY-274) | MySQL init scripts contains invalid comments |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-279](https://issues.apache.org/jira/browse/SENTRY-279) | Revert back using lowercase for uri label |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-288](https://issues.apache.org/jira/browse/SENTRY-288) | Dissable MetastoreBinding for test cases that do not require it |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-256](https://issues.apache.org/jira/browse/SENTRY-256) | Fix TestDbEndToEnd.testEndToEnd1 |  Major | . | Sravya Tirukkovalur | Arun Suresh |
| [SENTRY-245](https://issues.apache.org/jira/browse/SENTRY-245) | Fix failing db provider tests |  Major | . | Sravya Tirukkovalur |  |
| [SENTRY-294](https://issues.apache.org/jira/browse/SENTRY-294) | The Sentry service client should execute UGI privilege action by default |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-297](https://issues.apache.org/jira/browse/SENTRY-297) | Increase privilege\_name to 4000 in mysql to be consistent with other dbs |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-301](https://issues.apache.org/jira/browse/SENTRY-301) | Sentry plugin fails access service from secure Hive Metastore |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-300](https://issues.apache.org/jira/browse/SENTRY-300) | HiveAuthzBinding checks for Hive server2 config which is not available when using Sentry with Hive meta store server |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-304](https://issues.apache.org/jira/browse/SENTRY-304) | Limit on index key in MYSQL (innoDB ) is 767 bytes |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-281](https://issues.apache.org/jira/browse/SENTRY-281) | Revoking a parent privilege should revoke all child privileges |  Major | . | Sravya Tirukkovalur | Arun Suresh |
| [SENTRY-307](https://issues.apache.org/jira/browse/SENTRY-307) | Unqualified URIs should be reconstructed in a standard way |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-305](https://issues.apache.org/jira/browse/SENTRY-305) | SHOW CURRENT ROLES shouldn't require admin privileges |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-244](https://issues.apache.org/jira/browse/SENTRY-244) | Sentry deprecated properties do not work |  Major | . | Sravya Tirukkovalur | Prasad Mujumdar |
| [SENTRY-162](https://issues.apache.org/jira/browse/SENTRY-162) | Cleanup DB store privilege metadata on Hive DDL statements |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-310](https://issues.apache.org/jira/browse/SENTRY-310) | Make Hive operation to required privileges more granular |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-309](https://issues.apache.org/jira/browse/SENTRY-309) | Metastore binding should use fully qualified URI for validating alter table operations |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-312](https://issues.apache.org/jira/browse/SENTRY-312) | Add 'decimal' and 'date' to default UDF whitelist |  Major | . | Arun Suresh | Arun Suresh |
| [SENTRY-313](https://issues.apache.org/jira/browse/SENTRY-313) | Fix some uri failing tests |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-314](https://issues.apache.org/jira/browse/SENTRY-314) | Metastore plugin should verify the storage descriptor before referencing |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-311](https://issues.apache.org/jira/browse/SENTRY-311) | Metastore plugin needs to be changed to updated privilege model |  Major | . | Sravya Tirukkovalur | Prasad Mujumdar |
| [SENTRY-315](https://issues.apache.org/jira/browse/SENTRY-315) | SHOW CURRENT ROLE fails if the one of the groups doesn't have any roles granted |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-317](https://issues.apache.org/jira/browse/SENTRY-317) | Fix TestDbOperations.testLoad test |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-319](https://issues.apache.org/jira/browse/SENTRY-319) | group names should be case sensitive. |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-321](https://issues.apache.org/jira/browse/SENTRY-321) | SentryMetastorePostEventListener should use sentry config to create SentryClient |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-260](https://issues.apache.org/jira/browse/SENTRY-260) | Add support to use DB2  as database for sentry metastore |  Major | . | Ruiming Zhou | Ruiming Zhou |
| [SENTRY-332](https://issues.apache.org/jira/browse/SENTRY-332) | A role may got empty privilege, although the role have some privileges |  Major | . | Dapeng Sun | Dapeng Sun |
| [SENTRY-337](https://issues.apache.org/jira/browse/SENTRY-337) | When the parameter sentry.metastore.service.users isn't set or set empty, starting metastore will throw java.lang.NullPointerException |  Minor | . | shenguoquan | shenguoquan |
| [SENTRY-206](https://issues.apache.org/jira/browse/SENTRY-206) | Sentry distribution should include a template config file for the service |  Major | . | Prasad Mujumdar | Tuong Truong |
| [SENTRY-257](https://issues.apache.org/jira/browse/SENTRY-257) | Upgrade master to use version 1.4.0-incubating-SNAPSHOT |  Blocker | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [SENTRY-336](https://issues.apache.org/jira/browse/SENTRY-336) | Fix test failures on real cluster |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-363](https://issues.apache.org/jira/browse/SENTRY-363) | CTAS from view is requiring select on underlying table |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-223](https://issues.apache.org/jira/browse/SENTRY-223) | Add a test for updates with doc-level security |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-233](https://issues.apache.org/jira/browse/SENTRY-233) | Disable hdfs blockcache during solr e2e tests |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-261](https://issues.apache.org/jira/browse/SENTRY-261) | Improve test coverage for grant/revoke statements in Hive e2e tests |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-287](https://issues.apache.org/jira/browse/SENTRY-287) | Add test case for giving select privieleges on a table in a non default database |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-291](https://issues.apache.org/jira/browse/SENTRY-291) | Remove duplicate testSameGrantTwice |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-97](https://issues.apache.org/jira/browse/SENTRY-97) | Create service configuration properties |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [SENTRY-143](https://issues.apache.org/jira/browse/SENTRY-143) | Merge db\_policy\_store branch into master |  Major | . | Shreepadma Venugopalan | Brock Noland |
| [SENTRY-142](https://issues.apache.org/jira/browse/SENTRY-142) | Create database backed ProviderBackend |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-134](https://issues.apache.org/jira/browse/SENTRY-134) | Use BoneCP, add unique constraint to GROUP\_NAME, and expose jdo/datanucleus properties |  Major | . | Shreepadma Venugopalan | Brock Noland |
| [SENTRY-129](https://issues.apache.org/jira/browse/SENTRY-129) | Implement Hive Sentry Authz DDL Task Factory |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-137](https://issues.apache.org/jira/browse/SENTRY-137) | Validate privilege scope in sentry service |  Major | . | Shreepadma Venugopalan | Prasad Mujumdar |
| [SENTRY-145](https://issues.apache.org/jira/browse/SENTRY-145) | Store needs to handle privilege normalization |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-149](https://issues.apache.org/jira/browse/SENTRY-149) | Support SET ROLE |  Major | . | Brock Noland | Brock Noland |
| [SENTRY-138](https://issues.apache.org/jira/browse/SENTRY-138) | Use server timestamp for createTime for role, privilege and group |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [SENTRY-160](https://issues.apache.org/jira/browse/SENTRY-160) | Class to table mapping in package.jdo is incorrect |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [SENTRY-156](https://issues.apache.org/jira/browse/SENTRY-156) | Support local privilege validation APIs |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-150](https://issues.apache.org/jira/browse/SENTRY-150) | Support various SHOW commands |  Major | . | Brock Noland | Sravya Tirukkovalur |
| [SENTRY-153](https://issues.apache.org/jira/browse/SENTRY-153) | Add Hive e2e test with grant/revoke statements |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [SENTRY-365](https://issues.apache.org/jira/browse/SENTRY-365) | Create release branch for 1.4.0 |  Major | . | Sravya Tirukkovalur | Tuong Truong |
| [SENTRY-364](https://issues.apache.org/jira/browse/SENTRY-364) | Bump up hive and hadoop versions from SNAPSHOT to released bits |  Trivial | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [SENTRY-369](https://issues.apache.org/jira/browse/SENTRY-369) | Update changelog.txt, notice.txt, etc... for 1.4.0 release |  Major | . | Tuong Truong | Tuong Truong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-164](https://issues.apache.org/jira/browse/SENTRY-164) | Missing implementation for  HiveAuthorizationTaskFactory: createShowRolesTask() |  Major | . | Tuong Truong | Tuong Truong |
| [SENTRY-159](https://issues.apache.org/jira/browse/SENTRY-159) | Convert AbstractSolrSentryTestBase to use MiniSolrCloudCluster rather than Lucene test hierarchy |  Major | . | Gregory Chanan | Gregory Chanan |
| [SENTRY-230](https://issues.apache.org/jira/browse/SENTRY-230) | e2e test for doc level security to cover failure scenarios around Index level auth |  Major | . | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [SENTRY-356](https://issues.apache.org/jira/browse/SENTRY-356) | Apache Sentry 1.4.0 Release |  Major | . | Tuong Truong | Tuong Truong |
| [SENTRY-667](https://issues.apache.org/jira/browse/SENTRY-667) | [sentry-ha] Add documentation for enabling Sentry HA |  Critical | . | Anne Yu | Anne Yu |


