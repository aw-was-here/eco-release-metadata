
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
# Changelog

## Release 4.2.0 - 2015-06-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2133](https://issues.apache.org/jira/browse/OOZIE-2133) | Support getting ATS delegation tokens for tez jobs |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-2130](https://issues.apache.org/jira/browse/OOZIE-2130) | Add EL Function for offsetting a date by a timezone amount including DST |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2108](https://issues.apache.org/jira/browse/OOZIE-2108) | bulk kill, suspend, resume jobs using existing filter, offset, len, and jobtype params |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1983](https://issues.apache.org/jira/browse/OOZIE-1983) | Add spark action executor |  Major | . | Shwetha G S | pavan kumar kolamuri |
| [OOZIE-1954](https://issues.apache.org/jira/browse/OOZIE-1954) | Add a way for the MapReduce action to be configured by Java code |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1653](https://issues.apache.org/jira/browse/OOZIE-1653) | Support ALL to allowed error code of the user retry |  Minor | action | Azrael | Azrael |
| [OOZIE-1567](https://issues.apache.org/jira/browse/OOZIE-1567) | Provide a wait tool in Oozie |  Trivial | core | Viji | Robert Kanter |
| [OOZIE-1457](https://issues.apache.org/jira/browse/OOZIE-1457) | Create a Hive Server 2 action |  Minor | action | Robert Kanter | Robert Kanter |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2223](https://issues.apache.org/jira/browse/OOZIE-2223) | Improve documentation with regard to Java action retries |  Major | docs | Ben Roling |  |
| [OOZIE-2209](https://issues.apache.org/jira/browse/OOZIE-2209) | Oozie launchers to set "java.io.tmpdir" to "./tmp" |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2186](https://issues.apache.org/jira/browse/OOZIE-2186) | Upgrade Tomcat to 6.0.43 |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2184](https://issues.apache.org/jira/browse/OOZIE-2184) | Change default value of action tmp dir removal to true |  Minor | action | Viji | Viji |
| [OOZIE-2174](https://issues.apache.org/jira/browse/OOZIE-2174) | Add missing admin commands to OozieClient and OozieCLI |  Major | client | Robert Kanter | Robert Kanter |
| [OOZIE-2170](https://issues.apache.org/jira/browse/OOZIE-2170) | Oozie should automatically set configs to make Spark jobs show up in the Spark History Server |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-2164](https://issues.apache.org/jira/browse/OOZIE-2164) | make master parameterizable in Spark action example |  Major | examples | Wing Yew Poon | Wing Yew Poon |
| [OOZIE-2111](https://issues.apache.org/jira/browse/OOZIE-2111) | Kerberized Oozie doesn't allow connections from users with a lot of groups |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-2107](https://issues.apache.org/jira/browse/OOZIE-2107) | Schema config properties should be consistent with ActionExecutor config properties |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2088](https://issues.apache.org/jira/browse/OOZIE-2088) | Exponential retries for transient failures |  Major | . | pavan kumar kolamuri | pavan kumar kolamuri |
| [OOZIE-2042](https://issues.apache.org/jira/browse/OOZIE-2042) | Max substitution for config variables should be configurable |  Major | core | Robert Kanter | Azrael |
| [OOZIE-1917](https://issues.apache.org/jira/browse/OOZIE-1917) | Authentication secret should be random by default and needs to coordinate with HA |  Critical | HA, security | Robert Kanter | Robert Kanter |
| [OOZIE-1913](https://issues.apache.org/jira/browse/OOZIE-1913) | Devise a way to turn off SLA alerts for bundle/coordinator flexibly |  Major | . | Mona Chitnis | Purshotam Shah |
| [OOZIE-1889](https://issues.apache.org/jira/browse/OOZIE-1889) | Convert NamedNativeQueries to JPQL |  Major | . | David Villegas | David Villegas |
| [OOZIE-1876](https://issues.apache.org/jira/browse/OOZIE-1876) | use pom properties rather than specific version numbers in the pom files of hbaselibs, hcataloglibs, sharelib, etc |  Major | build | Xiaoshuang LU | Shwetha G S |
| [OOZIE-1846](https://issues.apache.org/jira/browse/OOZIE-1846) | Convert CoordActionMaterializeCommand to an XCommand and remove Command |  Major | core | Robert Kanter | Azrael |
| [OOZIE-1830](https://issues.apache.org/jira/browse/OOZIE-1830) | Change hadoop-1 profile to use 1.2.1 |  Minor | . | Azrael | Azrael |
| [OOZIE-1803](https://issues.apache.org/jira/browse/OOZIE-1803) | Improvement in Purge service |  Major | core | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-1730](https://issues.apache.org/jira/browse/OOZIE-1730) | Change hadoop-2 profile to use 2.4.0 |  Major | . | Robert Kanter | Jaydeep Vishwakarma |
| [OOZIE-1726](https://issues.apache.org/jira/browse/OOZIE-1726) | Oozie does not support \_HOST when configuring kerberos security |  Major | core | Mingjiang Shi | Venkat Ranganathan |
| [OOZIE-1722](https://issues.apache.org/jira/browse/OOZIE-1722) | When an ApplicationMaster restarts, it restarts the launcher job |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1677](https://issues.apache.org/jira/browse/OOZIE-1677) | Add Oozie servers to instrumentation info |  Minor | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1428](https://issues.apache.org/jira/browse/OOZIE-1428) | The delay time for requeue should be configurable |  Minor | core | Robert Kanter | Sreepathi Prasanna |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2240](https://issues.apache.org/jira/browse/OOZIE-2240) | add configuration to disable email attachment support |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2236](https://issues.apache.org/jira/browse/OOZIE-2236) | Need to package hive-hcatalog-server-extensions.jar in the hcatalog sharelib |  Critical | . | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2227](https://issues.apache.org/jira/browse/OOZIE-2227) | PartitionDependencyManagerService keeps on purging delete coord actions |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2221](https://issues.apache.org/jira/browse/OOZIE-2221) | Oozie audit log has null id for some of input request |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2218](https://issues.apache.org/jira/browse/OOZIE-2218) | META-INF directories in the war file have 777 permissions |  Blocker | core, security | Robert Kanter | Robert Kanter |
| [OOZIE-2214](https://issues.apache.org/jira/browse/OOZIE-2214) | fix test case TestCoordRerunXCommand.testCoordRerunDateNeg |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2213](https://issues.apache.org/jira/browse/OOZIE-2213) | oozie-setup.ps1 should use "start-process" rather than "cmd /c" to invoke OozieSharelibCLI or OozieDBCLI commands |  Major | scripts, tools | Bowen Zhang | Bowen Zhang |
| [OOZIE-2206](https://issues.apache.org/jira/browse/OOZIE-2206) | Change Reaper mode on ChildReaper in ZKLocksService |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2205](https://issues.apache.org/jira/browse/OOZIE-2205) | add option to load default/site.xml to actionConf on compute node |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2199](https://issues.apache.org/jira/browse/OOZIE-2199) | Ooziedb.cmd and oozie-setup.ps1 are missing jars in lib/ for classpath on Windows |  Major | . | Bowen Zhang | Venkat Ranganathan |
| [OOZIE-2197](https://issues.apache.org/jira/browse/OOZIE-2197) | ooziedb.cmd command failed due to classpath being too long on windows. |  Major | . | Bowen Zhang | Venkat Ramachandran |
| [OOZIE-2191](https://issues.apache.org/jira/browse/OOZIE-2191) | Upgrade jackson version for hadoop-2 profile |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2188](https://issues.apache.org/jira/browse/OOZIE-2188) | Fix typos in twiki documentation |  Trivial | docs | Jacob Tolar | Jacob Tolar |
| [OOZIE-2183](https://issues.apache.org/jira/browse/OOZIE-2183) | provide an option to disable cleanup for output dataset in rerun |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2182](https://issues.apache.org/jira/browse/OOZIE-2182) | SLA alert commands are not in sync with doc |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2181](https://issues.apache.org/jira/browse/OOZIE-2181) | JsonToBean has some missing and incorrect mappings |  Major | client | Robert Kanter | Robert Kanter |
| [OOZIE-2180](https://issues.apache.org/jira/browse/OOZIE-2180) | Oozie hive2 should explicitly depend on commons-io rather than transitive dependency of hive-exec |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-2177](https://issues.apache.org/jira/browse/OOZIE-2177) | Parameterize javadoc plugin configuration |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2171](https://issues.apache.org/jira/browse/OOZIE-2171) | Some error code messages are not parsed correctly due to unescaped single quote |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2169](https://issues.apache.org/jira/browse/OOZIE-2169) | Fix return type for fs:dirSize, fs:fileSize and fs:blockSize in WF spec |  Major | docs | Alexander Pivovarov | Alexander Pivovarov |
| [OOZIE-2167](https://issues.apache.org/jira/browse/OOZIE-2167) | TestCoordMaterializeTransitionXCommand fails |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2158](https://issues.apache.org/jira/browse/OOZIE-2158) | Overrides in action conf in streaming action do not work |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-2156](https://issues.apache.org/jira/browse/OOZIE-2156) | override hive.querylog.location in hive-site.xml |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2155](https://issues.apache.org/jira/browse/OOZIE-2155) | Incorrect DST Shifts are occurring based on the Database timezone |  Blocker | core | Robert Kanter | Robert Kanter |
| [OOZIE-2153](https://issues.apache.org/jira/browse/OOZIE-2153) | modify HCatCredentialHelper to use HCatClient |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2147](https://issues.apache.org/jira/browse/OOZIE-2147) | Oozie upgrade from 4.0.0 to 4.1.0 fails with CLOBs of zero length with Oracle DB |  Critical | . | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2146](https://issues.apache.org/jira/browse/OOZIE-2146) | Add option to filter sla information by bundle id or name |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2145](https://issues.apache.org/jira/browse/OOZIE-2145) | ZooKeeper paths should start with a "/" |  Critical | HA | Robert Kanter | Robert Kanter |
| [OOZIE-2142](https://issues.apache.org/jira/browse/OOZIE-2142) | Changing the JT whitelist causes running Workflows to stay RUNNING forever |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2140](https://issues.apache.org/jira/browse/OOZIE-2140) | Audit Log should be shown in Oozie UI |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2139](https://issues.apache.org/jira/browse/OOZIE-2139) | Coord update doesn't work for job which is submitted by bundle |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2132](https://issues.apache.org/jira/browse/OOZIE-2132) | FS actions are not retried |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2131](https://issues.apache.org/jira/browse/OOZIE-2131) | Add flag to sqoop action to skip hbase delegation token generation |  Major | . | Abraham Elmahrek | Abraham Elmahrek |
| [OOZIE-2129](https://issues.apache.org/jira/browse/OOZIE-2129) | Duplicate child jobs per instance |  Major | . | Shwetha G S | Jaydeep Vishwakarma |
| [OOZIE-2127](https://issues.apache.org/jira/browse/OOZIE-2127) | Add created time to RecoveryService WF queries |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2126](https://issues.apache.org/jira/browse/OOZIE-2126) | SSH action can be too fast for Oozie sometimes |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-2123](https://issues.apache.org/jira/browse/OOZIE-2123) | Disable launcher uber mode if classloader options are set |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2122](https://issues.apache.org/jira/browse/OOZIE-2122) | fix test case failure of TestLiteWorkflowAppService |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2121](https://issues.apache.org/jira/browse/OOZIE-2121) | CoordinatorFunctionalSpec 4.4.1.1 swap Value and First Occurrence line 4 in example table |  Trivial | docs | Alexander Pivovarov | Alexander Pivovarov |
| [OOZIE-2120](https://issues.apache.org/jira/browse/OOZIE-2120) | Many JPAExecutor names are wrong |  Major | monitoring | Robert Kanter | Robert Kanter |
| [OOZIE-2119](https://issues.apache.org/jira/browse/OOZIE-2119) | Distcp action fails when -D option in arguments |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2118](https://issues.apache.org/jira/browse/OOZIE-2118) | add createdtime option to workflow jobs query |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2113](https://issues.apache.org/jira/browse/OOZIE-2113) | Oozie Command Line Utilities are failing as hadoop-auth jar not found |  Major | . | pavan kumar kolamuri | Shwetha G S |
| [OOZIE-2112](https://issues.apache.org/jira/browse/OOZIE-2112) | Child Job URL doesn't show properly with Hive on Tez |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2110](https://issues.apache.org/jira/browse/OOZIE-2110) | cancel delegation token of launcher jobs that stay till child jobs finish |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2104](https://issues.apache.org/jira/browse/OOZIE-2104) | oozie server dies on startup if oozie-site redefines ActionExecutor classes |  Blocker | . | Robert Kanter | Robert Kanter |
| [OOZIE-2100](https://issues.apache.org/jira/browse/OOZIE-2100) | Publish oozie-webapp artifact |  Major | build | Suresh Srinivas | Suresh Srinivas |
| [OOZIE-2098](https://issues.apache.org/jira/browse/OOZIE-2098) | Add Apache parent POM to oozie |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [OOZIE-2093](https://issues.apache.org/jira/browse/OOZIE-2093) | TestSubmitXCommand.testProtoConfStorage fails against Hadoop 2 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2090](https://issues.apache.org/jira/browse/OOZIE-2090) | wf:lastErrorNode does not take into account transient errors with retries |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2074](https://issues.apache.org/jira/browse/OOZIE-2074) | Compatibility issue with Yarn and Hadoop 0.23/2.x |  Major | . | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2069](https://issues.apache.org/jira/browse/OOZIE-2069) | RecoveryService reads incorrect configuration |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2068](https://issues.apache.org/jira/browse/OOZIE-2068) | Configuration as part of sharelib |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2065](https://issues.apache.org/jira/browse/OOZIE-2065) | Oozie returns incorrect total action for coord dryrun |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2064](https://issues.apache.org/jira/browse/OOZIE-2064) | coord job with frequency coord:endOfMonths doesn't materialize |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2063](https://issues.apache.org/jira/browse/OOZIE-2063) | Cron syntax creates duplicate actions |  Blocker | coordinator | Robert Kanter | Bowen Zhang |
| [OOZIE-2055](https://issues.apache.org/jira/browse/OOZIE-2055) | PauseTransitService does not proceed forward if any job has issue |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2053](https://issues.apache.org/jira/browse/OOZIE-2053) | Change old HCatalog API |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2051](https://issues.apache.org/jira/browse/OOZIE-2051) | Allows multiple default action configuration files per action |  Major | . | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2048](https://issues.apache.org/jira/browse/OOZIE-2048) | HadoopAccessorService should also process ssl\_client.xml |  Major | . | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2047](https://issues.apache.org/jira/browse/OOZIE-2047) | Oozie does not support Hive tables that use datatypes introduced since Hive 0.8 |  Major | . | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2045](https://issues.apache.org/jira/browse/OOZIE-2045) | Symlink support for sharelib |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2043](https://issues.apache.org/jira/browse/OOZIE-2043) | Misc test failures against JDK8 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2035](https://issues.apache.org/jira/browse/OOZIE-2035) | NotificationXCommand should support proxy |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2023](https://issues.apache.org/jira/browse/OOZIE-2023) | Job rerun can stuck in prep |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2019](https://issues.apache.org/jira/browse/OOZIE-2019) | SLA miss processed on server2 not send email |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2014](https://issues.apache.org/jira/browse/OOZIE-2014) | TestAuthFilterAuthOozieClient fails after OOZIE-1917 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2012](https://issues.apache.org/jira/browse/OOZIE-2012) | coordinator with an invalid cron frequency throws NPE after validation |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-2009](https://issues.apache.org/jira/browse/OOZIE-2009) | Requeue CoordActionInputCheck in case of permission error |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2003](https://issues.apache.org/jira/browse/OOZIE-2003) | Checkstyle issues |  Major | . | Shwetha G S | Robert Kanter |
| [OOZIE-2001](https://issues.apache.org/jira/browse/OOZIE-2001) | Workflow re-runs doesn't update coord action status |  Major | . | Shwetha G S | Jaydeep Vishwakarma |
| [OOZIE-1993](https://issues.apache.org/jira/browse/OOZIE-1993) | Rerun fails during join in certain condition |  Major | core | Robert Kanter | Shwetha G S |
| [OOZIE-1985](https://issues.apache.org/jira/browse/OOZIE-1985) | support dropping hcat dataset in coord rerun with cleanup option |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1957](https://issues.apache.org/jira/browse/OOZIE-1957) | Coord update command override group when oozie.service.AuthorizationService.default.group.as.acl is set and group/acl is not configured in job property |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1941](https://issues.apache.org/jira/browse/OOZIE-1941) | Bundle coordinator name can't be parameterized |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1940](https://issues.apache.org/jira/browse/OOZIE-1940) | StatusTransitService has race condition |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1939](https://issues.apache.org/jira/browse/OOZIE-1939) | Incorrect job information is set while logging |  Major | . | Purshotam Shah | Azrael |
| [OOZIE-1923](https://issues.apache.org/jira/browse/OOZIE-1923) | ZKLocksService locks are not re-entrant like MemoryLocks |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1914](https://issues.apache.org/jira/browse/OOZIE-1914) | CLI should retry on timeout |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1896](https://issues.apache.org/jira/browse/OOZIE-1896) | ZKUUIDService - Too many job submission fails |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1894](https://issues.apache.org/jira/browse/OOZIE-1894) | Better error reporting to user |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1891](https://issues.apache.org/jira/browse/OOZIE-1891) | Parametrize surefire argLine to bump up heap memory for testing |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1890](https://issues.apache.org/jira/browse/OOZIE-1890) | Make oozie-site empty and reconcile defaults between oozie-default and the code |  Major | core | Robert Kanter | Azrael |
| [OOZIE-1847](https://issues.apache.org/jira/browse/OOZIE-1847) | HA - Oozie servers should shutdown (or go in safe mode) in case of ZK failure |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1843](https://issues.apache.org/jira/browse/OOZIE-1843) | Bulk update for coord last modified time for CoordMaterializeTriggerService |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1818](https://issues.apache.org/jira/browse/OOZIE-1818) | CoordMaterializeTransitionXCommand verifyPrecondition doesn't verify current time |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1813](https://issues.apache.org/jira/browse/OOZIE-1813) | Add service to report/kill rogue bundles and coordinator jobs |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1808](https://issues.apache.org/jira/browse/OOZIE-1808) | Change DG\_QuickStart.twiki to reflect changes in sharelib installation |  Major | . | Bowen Zhang | Ryota Egashira |
| [OOZIE-1688](https://issues.apache.org/jira/browse/OOZIE-1688) | New configuration to specify server-server authentication type. |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1391](https://issues.apache.org/jira/browse/OOZIE-1391) | Sub wf suspend doesn't update parent wf |  Major | . | Shwetha G S | Jaydeep Vishwakarma |
| [OOZIE-1385](https://issues.apache.org/jira/browse/OOZIE-1385) | Make Uber Mode the default |  Major | . | Robert Kanter | Robert Kanter |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2210](https://issues.apache.org/jira/browse/OOZIE-2210) | Update extjs 2.2 link |  Major | docs | Robert Kanter | Bowen Zhang |
| [OOZIE-2163](https://issues.apache.org/jira/browse/OOZIE-2163) | Remove CoordinatorStore |  Major | . | Bowen Zhang | Azrael |
| [OOZIE-2092](https://issues.apache.org/jira/browse/OOZIE-2092) | Provide option to supply config to workflow during rerun of coordinator |  Major | . | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2029](https://issues.apache.org/jira/browse/OOZIE-2029) | Workflow re-run with RERUN\_FAIL\_NODES=true should re-run only the failed nodes of the sub-workflow |  Major | workflow | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2028](https://issues.apache.org/jira/browse/OOZIE-2028) | Coord action rerun with -failed option should rerun existing workflow with RERUN\_FAIL\_NODES=true |  Major | workflow | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2027](https://issues.apache.org/jira/browse/OOZIE-2027) | Disable re-runs using the workflow directly if it has a parent |  Major | workflow | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2006](https://issues.apache.org/jira/browse/OOZIE-2006) | Hive 2 action should support tez delegation tokens |  Major | action | Robert Kanter | Bowen Zhang |
| [OOZIE-1968](https://issues.apache.org/jira/browse/OOZIE-1968) | Building modules independently |  Major | . | Shwetha G S | Shwetha G S |
| [OOZIE-1966](https://issues.apache.org/jira/browse/OOZIE-1966) | Fix Headers in java code |  Major | . | Shwetha G S | Shwetha G S |
| [OOZIE-1964](https://issues.apache.org/jira/browse/OOZIE-1964) | Hive Server 2 action doesn't return Hadoop Job IDs |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-1963](https://issues.apache.org/jira/browse/OOZIE-1963) | Create a Hive Server 2 example |  Major | action | Robert Kanter | Harsh J |
| [OOZIE-1853](https://issues.apache.org/jira/browse/OOZIE-1853) | Improve the Credentials documentation |  Major | docs | Robert Kanter | Robert Kanter |
| [OOZIE-1728](https://issues.apache.org/jira/browse/OOZIE-1728) | When an ApplicationMaster restarts, it restarts the launcher job: DistCp followup |  Major | . | Robert Kanter | Ryota Egashira |
| [OOZIE-1696](https://issues.apache.org/jira/browse/OOZIE-1696) | Document how to get the action conf in the Java action |  Major | docs | Robert Kanter | James Kinley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2224](https://issues.apache.org/jira/browse/OOZIE-2224) | Add example worklfow.xml for hive in secure mode |  Major | . | Bowen Zhang | Venkat Ranganathan |
| [OOZIE-2071](https://issues.apache.org/jira/browse/OOZIE-2071) | Add a Spark example |  Major | examples | Robert Kanter | pavan kumar kolamuri |
| [OOZIE-1943](https://issues.apache.org/jira/browse/OOZIE-1943) | Bump up trunk to 4.2.0-SNAPSHOT |  Major | . | Bowen Zhang | Bowen Zhang |


