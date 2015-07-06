
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
# Apache Oozie Changelog

## Release 4.2.0 - 2015-06-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1653](https://issues.apache.org/jira/browse/OOZIE-1653) | Support ALL to allowed error code of the user retry |  Minor | action | Azrael Seoeun | Azrael Seoeun |
| [OOZIE-1567](https://issues.apache.org/jira/browse/OOZIE-1567) | Provide a wait tool in Oozie |  Trivial | core | Viji | Robert Kanter |
| [OOZIE-1457](https://issues.apache.org/jira/browse/OOZIE-1457) | Create a Hive Server 2 action |  Minor | action | Robert Kanter | Robert Kanter |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2186](https://issues.apache.org/jira/browse/OOZIE-2186) | Upgrade Tomcat to 6.0.43 |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2184](https://issues.apache.org/jira/browse/OOZIE-2184) | Change default value of action tmp dir removal to true |  Minor | action | Viji | Viji |
| [OOZIE-2174](https://issues.apache.org/jira/browse/OOZIE-2174) | Add missing admin commands to OozieClient and OozieCLI |  Major | client | Robert Kanter | Robert Kanter |
| [OOZIE-2170](https://issues.apache.org/jira/browse/OOZIE-2170) | Oozie should automatically set configs to make Spark jobs show up in the Spark History Server |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-2164](https://issues.apache.org/jira/browse/OOZIE-2164) | make master parameterizable in Spark action example |  Major | examples | Wing Yew Poon | Wing Yew Poon |
| [OOZIE-2111](https://issues.apache.org/jira/browse/OOZIE-2111) | Kerberized Oozie doesn't allow connections from users with a lot of groups |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-2107](https://issues.apache.org/jira/browse/OOZIE-2107) | Schema config properties should be consistent with ActionExecutor config properties |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2042](https://issues.apache.org/jira/browse/OOZIE-2042) | Max substitution for config variables should be configurable |  Major | core | Robert Kanter | Azrael Seoeun |
| [OOZIE-1917](https://issues.apache.org/jira/browse/OOZIE-1917) | Authentication secret should be random by default and needs to coordinate with HA |  Critical | HA, security | Robert Kanter | Robert Kanter |
| [OOZIE-1876](https://issues.apache.org/jira/browse/OOZIE-1876) | use pom properties rather than specific version numbers in the pom files of hbaselibs, hcataloglibs, sharelib, etc |  Major | build | Xiaoshuang LU | Shwetha G S |
| [OOZIE-1846](https://issues.apache.org/jira/browse/OOZIE-1846) | Convert CoordActionMaterializeCommand to an XCommand and remove Command |  Major | core | Robert Kanter | Azrael Seoeun |
| [OOZIE-1803](https://issues.apache.org/jira/browse/OOZIE-1803) | Improvement in Purge service |  Major | core | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-1726](https://issues.apache.org/jira/browse/OOZIE-1726) | Oozie does not support \_HOST when configuring kerberos security |  Major | core | Mingjiang Shi | Venkat Ranganathan |
| [OOZIE-1677](https://issues.apache.org/jira/browse/OOZIE-1677) | Add Oozie servers to instrumentation info |  Minor | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1428](https://issues.apache.org/jira/browse/OOZIE-1428) | The delay time for requeue should be configurable |  Minor | core | Robert Kanter | Sreepathi Prasanna |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2218](https://issues.apache.org/jira/browse/OOZIE-2218) | META-INF directories in the war file have 777 permissions |  Blocker | core, security | Robert Kanter | Robert Kanter |
| [OOZIE-2213](https://issues.apache.org/jira/browse/OOZIE-2213) | oozie-setup.ps1 should use "start-process" rather than "cmd /c" to invoke OozieSharelibCLI or OozieDBCLI commands |  Major | scripts, tools | Bowen Zhang | Bowen Zhang |
| [OOZIE-2188](https://issues.apache.org/jira/browse/OOZIE-2188) | Fix typos in twiki documentation |  Trivial | docs | Jacob Tolar | Jacob Tolar |
| [OOZIE-2181](https://issues.apache.org/jira/browse/OOZIE-2181) | JsonToBean has some missing and incorrect mappings |  Major | client | Robert Kanter | Robert Kanter |
| [OOZIE-2169](https://issues.apache.org/jira/browse/OOZIE-2169) | Fix return type for fs:dirSize, fs:fileSize and fs:blockSize in WF spec |  Major | docs | Alexander Pivovarov | Alexander Pivovarov |
| [OOZIE-2167](https://issues.apache.org/jira/browse/OOZIE-2167) | TestCoordMaterializeTransitionXCommand fails |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2155](https://issues.apache.org/jira/browse/OOZIE-2155) | Incorrect DST Shifts are occurring based on the Database timezone |  Blocker | core | Robert Kanter | Robert Kanter |
| [OOZIE-2145](https://issues.apache.org/jira/browse/OOZIE-2145) | ZooKeeper paths should start with a "/" |  Critical | HA | Robert Kanter | Robert Kanter |
| [OOZIE-2142](https://issues.apache.org/jira/browse/OOZIE-2142) | Changing the JT whitelist causes running Workflows to stay RUNNING forever |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2126](https://issues.apache.org/jira/browse/OOZIE-2126) | SSH action can be too fast for Oozie sometimes |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-2121](https://issues.apache.org/jira/browse/OOZIE-2121) | CoordinatorFunctionalSpec 4.4.1.1 swap Value and First Occurrence line 4 in example table |  Trivial | docs | Alexander Pivovarov | Alexander Pivovarov |
| [OOZIE-2120](https://issues.apache.org/jira/browse/OOZIE-2120) | Many JPAExecutor names are wrong |  Major | monitoring | Robert Kanter | Robert Kanter |
| [OOZIE-2100](https://issues.apache.org/jira/browse/OOZIE-2100) | Publish oozie-webapp artifact |  Major | build | Suresh Srinivas | Suresh Srinivas |
| [OOZIE-2093](https://issues.apache.org/jira/browse/OOZIE-2093) | TestSubmitXCommand.testProtoConfStorage fails against Hadoop 2 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2063](https://issues.apache.org/jira/browse/OOZIE-2063) | Cron syntax creates duplicate actions |  Blocker | coordinator | Robert Kanter | Bowen Zhang |
| [OOZIE-2043](https://issues.apache.org/jira/browse/OOZIE-2043) | Misc test failures against JDK8 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2014](https://issues.apache.org/jira/browse/OOZIE-2014) | TestAuthFilterAuthOozieClient fails after OOZIE-1917 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1993](https://issues.apache.org/jira/browse/OOZIE-1993) | Rerun fails during join in certain condition |  Major | core | Robert Kanter | Shwetha G S |
| [OOZIE-1923](https://issues.apache.org/jira/browse/OOZIE-1923) | ZKLocksService locks are not re-entrant like MemoryLocks |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1914](https://issues.apache.org/jira/browse/OOZIE-1914) | CLI should retry on timeout |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1896](https://issues.apache.org/jira/browse/OOZIE-1896) | ZKUUIDService - Too many job submission fails |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1890](https://issues.apache.org/jira/browse/OOZIE-1890) | Make oozie-site empty and reconcile defaults between oozie-default and the code |  Major | core | Robert Kanter | Azrael Seoeun |
| [OOZIE-1847](https://issues.apache.org/jira/browse/OOZIE-1847) | HA - Oozie servers should shutdown (or go in safe mode) in case of ZK failure |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1688](https://issues.apache.org/jira/browse/OOZIE-1688) | New configuration to specify server-server authentication type. |  Major | HA | Purshotam Shah | Purshotam Shah |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2210](https://issues.apache.org/jira/browse/OOZIE-2210) | Update extjs 2.2 link |  Major | docs | Robert Kanter | Bowen Zhang |
| [OOZIE-2029](https://issues.apache.org/jira/browse/OOZIE-2029) | Workflow re-run with RERUN\_FAIL\_NODES=true should re-run only the failed nodes of the sub-workflow |  Major | workflow | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2028](https://issues.apache.org/jira/browse/OOZIE-2028) | Coord action rerun with -failed option should rerun existing workflow with RERUN\_FAIL\_NODES=true |  Major | workflow | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2027](https://issues.apache.org/jira/browse/OOZIE-2027) | Disable re-runs using the workflow directly if it has a parent |  Major | workflow | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2006](https://issues.apache.org/jira/browse/OOZIE-2006) | Hive 2 action should support tez delegation tokens |  Major | action | Robert Kanter | Bowen Zhang |
| [OOZIE-1964](https://issues.apache.org/jira/browse/OOZIE-1964) | Hive Server 2 action doesn't return Hadoop Job IDs |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-1963](https://issues.apache.org/jira/browse/OOZIE-1963) | Create a Hive Server 2 example |  Major | action | Robert Kanter | Harsh J |
| [OOZIE-1853](https://issues.apache.org/jira/browse/OOZIE-1853) | Improve the Credentials documentation |  Major | docs | Robert Kanter | Robert Kanter |
| [OOZIE-1696](https://issues.apache.org/jira/browse/OOZIE-1696) | Document how to get the action conf in the Java action |  Major | docs | Robert Kanter | James Kinley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2071](https://issues.apache.org/jira/browse/OOZIE-2071) | Add a Spark example |  Major | examples | Robert Kanter | pavan kumar kolamuri |


