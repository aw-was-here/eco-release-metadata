
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

## Release 2.2.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-1242](https://issues.apache.org/jira/browse/SENTRY-1242) | Enable getting all privileges on a hive object |  Major | . | Sravya Tirukkovalur | Steve Moist |
| [SENTRY-2427](https://issues.apache.org/jira/browse/SENTRY-2427) | Use Hadoop KerberosName class to derive shortName |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2481](https://issues.apache.org/jira/browse/SENTRY-2481) | Filter HMS server-side objects based on HMS user authorization |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2533](https://issues.apache.org/jira/browse/SENTRY-2533) | The UDF in\_file should be blacked default |  Major | Sentry | Wenchao Li | Wenchao Li |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2019](https://issues.apache.org/jira/browse/SENTRY-2019) | Improve logging in SentryPlugin |  Major | . | Vadim Spector | Vadim Spector |
| [SENTRY-2176](https://issues.apache.org/jira/browse/SENTRY-2176) | IllegalFormatConversionException while trying to convert AtomicLong to int |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2194](https://issues.apache.org/jira/browse/SENTRY-2194) | Upgrade Sentry hadoop-version dependency to 2.7.5 |  Major | . | Arjun Mishra | Arjun Mishra |
| [SENTRY-2210](https://issues.apache.org/jira/browse/SENTRY-2210) | AUTHZ\_PATH should have index on the foreign key AUTHZ\_OBJ\_ID |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2219](https://issues.apache.org/jira/browse/SENTRY-2219) | Create index AUTHZ\_PATH\_FK\_IDX at table AUTHZ\_PATH only when it does not exist for Oracle |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2324](https://issues.apache.org/jira/browse/SENTRY-2324) | Allow sentry to fetch configurable notifications from HMS |  Major | . | Arjun Mishra | Arjun Mishra |
| [SENTRY-1944](https://issues.apache.org/jira/browse/SENTRY-1944) | Optimize DelegateSentryStore.getGroupsByRoles() and update SentryGenericPolicyProcessor  to retrieve roles to group mapping in a single transaction |  Major | Sentry | Alex Kolbasov | Arjun Mishra |
| [SENTRY-2413](https://issues.apache.org/jira/browse/SENTRY-2413) | Provide a configuration option to permit specific DB privileges to be granted explicitly |  Major | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2371](https://issues.apache.org/jira/browse/SENTRY-2371) | Add a new thrift API for getting all privileges a user has |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-2431](https://issues.apache.org/jira/browse/SENTRY-2431) | Update Solr permission mapping to include Metric history reading permission |  Major | Solr Plugin | Mano Kovacs | Mano Kovacs |
| [SENTRY-2372](https://issues.apache.org/jira/browse/SENTRY-2372) | SentryStore should not implement grantOptionCheck |  Major | Sentry, sentrystore | Sergio Peña | Sergio Peña |
| [SENTRY-2329](https://issues.apache.org/jira/browse/SENTRY-2329) | Integrate sentry with Hadoop 3.1.1 |  Major | Sentry | Krishna Kalyan | Sergio Peña |
| [SENTRY-2444](https://issues.apache.org/jira/browse/SENTRY-2444) | SigUtils signal handler needs a way to unregister functions. |  Minor | . | Brian Towles | Brian Towles |
| [SENTRY-2458](https://issues.apache.org/jira/browse/SENTRY-2458) | Separate Web UI and service from service-server to prevent circular dependencies |  Major | Service | Brian Towles | Brian Towles |
| [SENTRY-2460](https://issues.apache.org/jira/browse/SENTRY-2460) | Export sentry permission information to HDFS location |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2452](https://issues.apache.org/jira/browse/SENTRY-2452) | Change the thrift interface to send the list of authorizable to sentry server |  Major | . | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2466](https://issues.apache.org/jira/browse/SENTRY-2466) | Create generic sentry store metrics |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2249](https://issues.apache.org/jira/browse/SENTRY-2249) | Enable batch insert of HMS paths in  Full Snapshot. |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2453](https://issues.apache.org/jira/browse/SENTRY-2453) | Sentry client should perform translation before sending export/import requests. |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2454](https://issues.apache.org/jira/browse/SENTRY-2454) | Add new sentry store api to gather the privileges for a list of authorizables. |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2488](https://issues.apache.org/jira/browse/SENTRY-2488) | Add privilege cache to sentry hive bindings in DefaultAccessValidator |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2483](https://issues.apache.org/jira/browse/SENTRY-2483) | Implement HMS PreReadEvent support in MetastoreAuthzBinding |  Major | Sentry | Sergio Peña | Na Li |
| [SENTRY-2440](https://issues.apache.org/jira/browse/SENTRY-2440) | Add a new thrift API for checking if a user is in admin group |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-2482](https://issues.apache.org/jira/browse/SENTRY-2482) | Sentry Solr to support multi-attribute document level security |  Major | Solr Plugin | Tristan Stevens | Arjun Mishra |
| [SENTRY-2522](https://issues.apache.org/jira/browse/SENTRY-2522) | Add a new thrift API for getting all privileges a user has for a given set of authorizable |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-2539](https://issues.apache.org/jira/browse/SENTRY-2539) | PolicyEngine  should be able to return privilege directly |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2540](https://issues.apache.org/jira/browse/SENTRY-2540) | Only use SELECT action for filter SHOW DATABASES and SHOW TABLES command based on configuration |  Major | . | Na Li | Na Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2141](https://issues.apache.org/jira/browse/SENTRY-2141) | Sentry Privilege TimeStamp is not converted to grantTime in HivePrivilegeInfo correctly |  Major | . | Na Li | Na Li |
| [SENTRY-2168](https://issues.apache.org/jira/browse/SENTRY-2168) | Altering table will not update sentry permissions when HDFS sync is disabled |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2187](https://issues.apache.org/jira/browse/SENTRY-2187) | Sentry page is broken |  Major | Docs | Steve Moist | Colm O hEigeartaigh |
| [SENTRY-2213](https://issues.apache.org/jira/browse/SENTRY-2213) | Increase schema version from 2.0.0 to 2.1.0 |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2144](https://issues.apache.org/jira/browse/SENTRY-2144) |  Table Rename Cross Database should update permission correctly |  Major | . | Na Li | Na Li |
| [SENTRY-2143](https://issues.apache.org/jira/browse/SENTRY-2143) | Table renames should synchronize with Sentry |  Major | Sentry | Alex Kolbasov | Na Li |
| [SENTRY-2259](https://issues.apache.org/jira/browse/SENTRY-2259) | SQL CONSTRAINT name for user privilege is too long for Oracle 11.2 |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2293](https://issues.apache.org/jira/browse/SENTRY-2293) | Fix logging parameters on SentryHDFSServiceProcessor |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2299](https://issues.apache.org/jira/browse/SENTRY-2299) | NPE In Sentry HDFS Sync Plugin |  Critical | Sentry | Na Li | Na Li |
| [SENTRY-2332](https://issues.apache.org/jira/browse/SENTRY-2332) | Load hadoop default configuration when starting sentry service |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2316](https://issues.apache.org/jira/browse/SENTRY-2316) | Rename any 'entity' word for 'principal' to be consistent with Hive principal name and type |  Major | Sentry | Sergio Peña | Arjun Mishra |
| [SENTRY-2373](https://issues.apache.org/jira/browse/SENTRY-2373) | Incorrect WARN message when processing add partition messages |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2403](https://issues.apache.org/jira/browse/SENTRY-2403) | Incorrect naming in RollingFileWithoutDeleteAppender |  Major | . | Peter Somogyi | Peter Somogyi |
| [SENTRY-2417](https://issues.apache.org/jira/browse/SENTRY-2417) | LocalGroupMappingService class docs do not accurately reflect required INI format |  Major | Docs | Dan Burkert | Dan Burkert |
| [SENTRY-2406](https://issues.apache.org/jira/browse/SENTRY-2406) | Make sure inputHierarchy and outputHierarchy have unique values |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2409](https://issues.apache.org/jira/browse/SENTRY-2409) | ALTER TABLE SET OWNER does not allow to change the table if using only the table name |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2429](https://issues.apache.org/jira/browse/SENTRY-2429) | Transfer database owner drops table owner |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2428](https://issues.apache.org/jira/browse/SENTRY-2428) | Skip null partitions or partitions with null sds entries |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2432](https://issues.apache.org/jira/browse/SENTRY-2432) | The case of a username is ignored when determining object ownership |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2437](https://issues.apache.org/jira/browse/SENTRY-2437) | When granting privileges a single transaction per grant causes long delays |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2433](https://issues.apache.org/jira/browse/SENTRY-2433) | Dropping object privileges does not include update of dropping user privileges |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2441](https://issues.apache.org/jira/browse/SENTRY-2441) | When MAuthzPathsMapping is deleted all associated MPaths should be deleted automatically. |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2464](https://issues.apache.org/jira/browse/SENTRY-2464) | Catch exception thrown on first reload for UpdatableCache |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-1679](https://issues.apache.org/jira/browse/SENTRY-1679) | HDFS tests configure MetastorePlugin which is gone |  Minor | Sentry | Alex Kolbasov | Arjun Mishra |
| [SENTRY-2480](https://issues.apache.org/jira/browse/SENTRY-2480) | Change processDropDatabase to call removeAllPaths |  Minor | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2469](https://issues.apache.org/jira/browse/SENTRY-2469) | Fix bugs in RoleServlet |  Major | Sentry | Na Li |  |
| [SENTRY-1797](https://issues.apache.org/jira/browse/SENTRY-1797) | SentryKerberosContext should use periodic executor instead of managing periodic execution via run() method. |  Major | Sentry | Alex Kolbasov | Haley Reeve |
| [SENTRY-2490](https://issues.apache.org/jira/browse/SENTRY-2490) | When building a full perm update for each object we only build 1 privilege per role |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2486](https://issues.apache.org/jira/browse/SENTRY-2486) | Wrong user name when sentry HMSFollower gets full snapshot from HMS at insecure mode |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2491](https://issues.apache.org/jira/browse/SENTRY-2491) | Sentry High availability unit tests run into deadlock sometimes |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2205](https://issues.apache.org/jira/browse/SENTRY-2205) | Improve Sentry NN Logging |  Major | Sentry | Arjun Mishra | Krishna Kalyan |
| [SENTRY-2477](https://issues.apache.org/jira/browse/SENTRY-2477) | When requesting for deltas check if nn seq num is 1 more than latest sequence num |  Major | . | Arjun Mishra | Arjun Mishra |
| [SENTRY-2493](https://issues.apache.org/jira/browse/SENTRY-2493) | Sentry store api's for path mapping should handle empty/null paths. |  Major | . | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2146](https://issues.apache.org/jira/browse/SENTRY-2146) | Add better error handling to ResourceAuthorizationProvider and improve logging in related classes |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2494](https://issues.apache.org/jira/browse/SENTRY-2494) | Fix TestRollingFileWithoutDeleteAppender test case testFileNamePattern |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2471](https://issues.apache.org/jira/browse/SENTRY-2471) | Table rename should sync Sentry privilege even without location information |  Major | . | Hao Hao | Hao Hao |
| [SENTRY-2492](https://issues.apache.org/jira/browse/SENTRY-2492) | Consecutive ALL grants get deleted when multiple roles have ALL grants on that object |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2498](https://issues.apache.org/jira/browse/SENTRY-2498) | Exception while deleting paths that does't exist |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2500](https://issues.apache.org/jira/browse/SENTRY-2500) | CREATE on server does not provide HMS server side read authorization for get\_all\_tables(database\_name) |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2501](https://issues.apache.org/jira/browse/SENTRY-2501) | Add cache for HMS server filtering hook |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2502](https://issues.apache.org/jira/browse/SENTRY-2502) | Sentry NN plug-in stops fetching updates from sentry server |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2497](https://issues.apache.org/jira/browse/SENTRY-2497) | show grant role results in NPE when URI does not have scheme |  Major | . | Haley Reeve | Haley Reeve |
| [SENTRY-2503](https://issues.apache.org/jira/browse/SENTRY-2503) | Failed to revoke the privilege from impala-shell if the privilege added from beeline cli |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2240](https://issues.apache.org/jira/browse/SENTRY-2240) | User can DROP function under a database that he/she has no access |  Major | Sentry | Eric Lin | Arjun Mishra |
| [SENTRY-2528](https://issues.apache.org/jira/browse/SENTRY-2528) | Format exception when fetching a full snapshot |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2276](https://issues.apache.org/jira/browse/SENTRY-2276) | Sentry-Kafka integration does not support Kafka's Alter/DescribeConfigs and IdempotentWrite operations |  Minor | kafka-integration | Julian Eberius | Gergo Wilder |
| [SENTRY-2535](https://issues.apache.org/jira/browse/SENTRY-2535) | SentryKafkaAuthorizer throws Exception when describing ACLs |  Major | Sentry | Gergo Wilder | Gergo Wilder |
| [SENTRY-2538](https://issues.apache.org/jira/browse/SENTRY-2538) | consecutiveUpdateFailuresCount is not reset |  Major | Sentry | László Dénes Terjéki | László Dénes Terjéki |
| [SENTRY-2545](https://issues.apache.org/jira/browse/SENTRY-2545) | Rolling back Privilege Cache to SimplePrivilegeCache does not work |  Major | Sentry | Na Li | Na Li |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2457](https://issues.apache.org/jira/browse/SENTRY-2457) | Reuse connection objects on TestConcurrentClients#testConcurrentHS2Client |  Minor | . | Sergio Peña | Sergio Peña |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2170](https://issues.apache.org/jira/browse/SENTRY-2170) | Update the Sentry-HDFS thrift for user level privileges. |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2173](https://issues.apache.org/jira/browse/SENTRY-2173) | Extend PrivilegeInfo to hold user privileges |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2171](https://issues.apache.org/jira/browse/SENTRY-2171) | Permission full snapshot should include owner privileges |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2218](https://issues.apache.org/jira/browse/SENTRY-2218) | Sentry-plug-in should have API's to handle grant/revoke privileges to users. |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2172](https://issues.apache.org/jira/browse/SENTRY-2172) | Owner privileges added should be persisted and sent in delta updates |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2229](https://issues.apache.org/jira/browse/SENTRY-2229) | Update SentryPermissions with user permissions |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2243](https://issues.apache.org/jira/browse/SENTRY-2243) | Extend the thrift definition for policy service to learn owner information |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2258](https://issues.apache.org/jira/browse/SENTRY-2258) | Remove user when it is not associated with other objects |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2244](https://issues.apache.org/jira/browse/SENTRY-2244) | Alter sentry role or user at granting privilege can avoid extra query to database |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2245](https://issues.apache.org/jira/browse/SENTRY-2245) | Remove privileges that do not associate with a role or a user |  Major | . | Na Li | Na Li |
| [SENTRY-2291](https://issues.apache.org/jira/browse/SENTRY-2291) | Notification Processor should update user privileges for path notification events |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2255](https://issues.apache.org/jira/browse/SENTRY-2255) | alter table set owner command can be executed only by user with proper privilege |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2331](https://issues.apache.org/jira/browse/SENTRY-2331) | Support grant option for DDL operation |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2313](https://issues.apache.org/jira/browse/SENTRY-2313) | alter database set owner command can be executed only by user with proper privilege |  Major | . | Na Li | Na Li |
| [SENTRY-2333](https://issues.apache.org/jira/browse/SENTRY-2333) | Create index AUTHZ\_PATH\_FK\_IDX at table AUTHZ\_PATH for Postgres only when it does not exist |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2388](https://issues.apache.org/jira/browse/SENTRY-2388) | Preparing for 2.2.0-SNAPSHOT release |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2384](https://issues.apache.org/jira/browse/SENTRY-2384) | Close JIRA version for 2.1.0 |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2407](https://issues.apache.org/jira/browse/SENTRY-2407) | SentrySchemaInfo and SQL scripts do not have the new 2.2.0 version |  Blocker | Sentry | Sergio Peña | Na Li |
| [SENTRY-2423](https://issues.apache.org/jira/browse/SENTRY-2423) | Increase the allocation size for auto-increment of id's for Snapshot tables. |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2382](https://issues.apache.org/jira/browse/SENTRY-2382) | Create tag Release-2.1.0 |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2383](https://issues.apache.org/jira/browse/SENTRY-2383) | create release 2.1.0 |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2385](https://issues.apache.org/jira/browse/SENTRY-2385) | Run vote on Release 2.1.0 |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2386](https://issues.apache.org/jira/browse/SENTRY-2386) | Release artifacts for 2.1.0 |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2387](https://issues.apache.org/jira/browse/SENTRY-2387) | Prepare release notes for 2.1.0 release |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2389](https://issues.apache.org/jira/browse/SENTRY-2389) | Update the Sentry website |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2390](https://issues.apache.org/jira/browse/SENTRY-2390) | Make an announcement for 2.1.0 release |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2426](https://issues.apache.org/jira/browse/SENTRY-2426) | Update the version in pom file at 2.1 branch |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2419](https://issues.apache.org/jira/browse/SENTRY-2419) | Log where sentry stands in the process of persisting the snpashot |  Major | Sentry | Krishna Kalyan | Arjun Mishra |
| [SENTRY-2448](https://issues.apache.org/jira/browse/SENTRY-2448) | Ability read/write import/export file(s) from HDFS. |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2438](https://issues.apache.org/jira/browse/SENTRY-2438) | Persist HMS paths in batches. |  Major | Sentry | Krishna Kalyan | Krishna Kalyan |
| [SENTRY-2496](https://issues.apache.org/jira/browse/SENTRY-2496) | Support multi-field attribute based document level controls for Solr |  Major | . | Tristan Stevens | Tristan Stevens |
| [SENTRY-2495](https://issues.apache.org/jira/browse/SENTRY-2495) | Support Conjunctive Matching in Solr QueryDocAuthorizationComponent |  Major | . | Tristan Stevens | Tristan Stevens |
| [SENTRY-2543](https://issues.apache.org/jira/browse/SENTRY-2543) | Preparing branch 2.2.0 for release. |  Major | . | Kalyan Kalvagadda | Kalyan Kalvagadda |
| [SENTRY-2547](https://issues.apache.org/jira/browse/SENTRY-2547) | Updating the changelog for release 2.2.0 |  Major | Sentry | Kalyan Kalvagadda | Kalyan Kalvagadda |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2377](https://issues.apache.org/jira/browse/SENTRY-2377) | Sentry 2.1.0 release |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2436](https://issues.apache.org/jira/browse/SENTRY-2436) | Add annotations for classes that are used in binding as public |  Minor | . | Xinran Tinney | Xinran Tinney |


