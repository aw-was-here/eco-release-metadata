
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
# Hadoop Changelog

## Release 4.1.0 - 2014-12-08

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1746](https://issues.apache.org/jira/browse/OOZIE-1746) | New API to fetch workflows corresponding to coordinator action reruns |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1532](https://issues.apache.org/jira/browse/OOZIE-1532) | Purging should remove completed children job for long running coordinator jobs |  Major | . | Srikanth Sundarrajan | Bowen Zhang |
| [OOZIE-1306](https://issues.apache.org/jira/browse/OOZIE-1306) | add flexibility to oozie coordinator job scheduling |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1228](https://issues.apache.org/jira/browse/OOZIE-1228) | Support for sqoop in Oozie CLI |  Major | client | Robert Kanter | Bowen Zhang |
| [OOZIE-944](https://issues.apache.org/jira/browse/OOZIE-944) | Implement Workflow Generator UI Tool |  Minor | tools | Ryota Egashira | Ryota Egashira |
| [OOZIE-615](https://issues.apache.org/jira/browse/OOZIE-615) | Support high availability for the Oozie service |  Major | HA | Craig Peters | Robert Kanter |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2033](https://issues.apache.org/jira/browse/OOZIE-2033) | HA and misc improvements to SSL docs |  Major | docs, HA, security | Robert Kanter | Robert Kanter |
| [OOZIE-1961](https://issues.apache.org/jira/browse/OOZIE-1961) | Remove requireJavaVersion from enforcer rules |  Minor | . | Lars Francke | Lars Francke |
| [OOZIE-1916](https://issues.apache.org/jira/browse/OOZIE-1916) | Use Curator leader latch instead of checking the order of Oozie servers |  Minor | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1875](https://issues.apache.org/jira/browse/OOZIE-1875) | Add "NONE" to coordinator job execution\_order |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1849](https://issues.apache.org/jira/browse/OOZIE-1849) | If the underlying job finishes while a Workflow is suspended, Oozie can take a while to realize it |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1826](https://issues.apache.org/jira/browse/OOZIE-1826) | Add thread which detects JVM pauses |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1817](https://issues.apache.org/jira/browse/OOZIE-1817) | Oozie timers are not biased |  Major | monitoring | Gilad Wolff | Robert Kanter |
| [OOZIE-1804](https://issues.apache.org/jira/browse/OOZIE-1804) | Improve documentation for Coordinator Specification |  Trivial | docs | Lars Francke | Lars Francke |
| [OOZIE-1801](https://issues.apache.org/jira/browse/OOZIE-1801) | ZKLocksService instrumentation should say how many locks this server has |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1741](https://issues.apache.org/jira/browse/OOZIE-1741) | Add new coord EL function to get input partitions value string |  Major | . | Satish Mittal | Satish Mittal |
| [OOZIE-1740](https://issues.apache.org/jira/browse/OOZIE-1740) | Add a new function hadoop:conf() that can be invoked from the workflow.xml and will return a hadoop configuration option |  Major | workflow | sam liu | sam liu |
| [OOZIE-1724](https://issues.apache.org/jira/browse/OOZIE-1724) | Make it easier to specify the HCat hive-site.xml for the Oozie Server |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1722](https://issues.apache.org/jira/browse/OOZIE-1722) | When an ApplicationMaster restarts, it restarts the launcher job |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1698](https://issues.apache.org/jira/browse/OOZIE-1698) | Action sharelib configuration document lacks the "oozie." prefix |  Major | docs | Harsh J | Harsh J |
| [OOZIE-1680](https://issues.apache.org/jira/browse/OOZIE-1680) | Add a check for a maximum frequency of 5 min on Coord jobs |  Minor | coordinator | Robert Kanter | Robert Kanter |
| [OOZIE-1646](https://issues.apache.org/jira/browse/OOZIE-1646) | HBase Table Copy between two HBase servers doesn't work with Kerberos |  Major | action, security | Robert Kanter | Robert Kanter |
| [OOZIE-1618](https://issues.apache.org/jira/browse/OOZIE-1618) | dryrun should check variable substitution in workflow.xml |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1612](https://issues.apache.org/jira/browse/OOZIE-1612) | When printing Dates to log messages, we should make sure they are in oozie.processing.timezone |  Minor | . | Robert Kanter | Gwen Shapira |
| [OOZIE-1606](https://issues.apache.org/jira/browse/OOZIE-1606) | Update Curator to 2.3.0 and fix some misc minor ZK related things |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1597](https://issues.apache.org/jira/browse/OOZIE-1597) | Cleanup database before every test |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1586](https://issues.apache.org/jira/browse/OOZIE-1586) | upgrade oozie to hive 13.1 (including hcatalog) |  Major | . | Bowen Zhang | Ravi Prakash |
| [OOZIE-1585](https://issues.apache.org/jira/browse/OOZIE-1585) | Upgrade oozie to pig 0.12.1 |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1581](https://issues.apache.org/jira/browse/OOZIE-1581) | Workflow performance optimizations |  Major | workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1580](https://issues.apache.org/jira/browse/OOZIE-1580) | EL variables don't get resolved in configurations imported from a \<job-xml\> |  Major | . | Robert Kanter | Bowen Zhang |
| [OOZIE-1570](https://issues.apache.org/jira/browse/OOZIE-1570) | Make openjpa connection properties configurable |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1560](https://issues.apache.org/jira/browse/OOZIE-1560) | Log messages should have a way of identifying which server they came from when using HA |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1550](https://issues.apache.org/jira/browse/OOZIE-1550) | Create a safeguard to kill errant recursive workflows before they bring down oozie |  Major | workflow | Robert Justice | Robert Kanter |
| [OOZIE-1504](https://issues.apache.org/jira/browse/OOZIE-1504) | Allow specifying a fixed instance as the start instance of a data-in |  Major | . | Ryota Egashira | Purshotam Shah |
| [OOZIE-1503](https://issues.apache.org/jira/browse/OOZIE-1503) | [DB optimization] revisit eagerLoadState at places |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1492](https://issues.apache.org/jira/browse/OOZIE-1492) | Make sure HA works with HCat and SLA notifications |  Major | HA | Robert Kanter | Ryota Egashira |
| [OOZIE-1491](https://issues.apache.org/jira/browse/OOZIE-1491) | Make sure HA works with a secure ZooKeeper |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1486](https://issues.apache.org/jira/browse/OOZIE-1486) | Cut down on number of small files created to track a running action |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1476](https://issues.apache.org/jira/browse/OOZIE-1476) | Add ability to issue kill on Coordinator Action directly with id and nominal daterange |  Minor | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1474](https://issues.apache.org/jira/browse/OOZIE-1474) | Fix logging issues - latency, accurate job ids, coord Job UI to show job logs |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1468](https://issues.apache.org/jira/browse/OOZIE-1468) | Add created time column in WF\_ACTIONS and SLA tables |  Major | . | Shwetha G S | Rohini Palaniswamy |
| [OOZIE-1462](https://issues.apache.org/jira/browse/OOZIE-1462) | Compress lob columns before storing in database |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1460](https://issues.apache.org/jira/browse/OOZIE-1460) | Implement and Document security for HA |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1458](https://issues.apache.org/jira/browse/OOZIE-1458) | If a Credentials type is not defined, Oozie should say something |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-1388](https://issues.apache.org/jira/browse/OOZIE-1388) | Add a admin servlet to show thread stack trace and CPU usage per thread |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2064](https://issues.apache.org/jira/browse/OOZIE-2064) | coord job with frequency coord:endOfMonths doesn't materialize |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2063](https://issues.apache.org/jira/browse/OOZIE-2063) | Cron syntax creates duplicate actions |  Blocker | coordinator | Robert Kanter | Bowen Zhang |
| [OOZIE-2054](https://issues.apache.org/jira/browse/OOZIE-2054) | SharelibService hits NullPointerException when server starts |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2047](https://issues.apache.org/jira/browse/OOZIE-2047) | Oozie does not support Hive tables that use datatypes introduced since Hive 0.8 |  Major | . | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2034](https://issues.apache.org/jira/browse/OOZIE-2034) | Disable SSLv3 (POODLEbleed vulnerability) |  Blocker | security | Robert Kanter | Robert Kanter |
| [OOZIE-2032](https://issues.apache.org/jira/browse/OOZIE-2032) | If using SSL, the port reported by Oozie is incorrect for HA tasks |  Major | core, HA | Robert Kanter | Robert Kanter |
| [OOZIE-2026](https://issues.apache.org/jira/browse/OOZIE-2026) | fix synchronization in SLACalculatorMemory.addJobStatus to avoid duplicated SLA message |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2023](https://issues.apache.org/jira/browse/OOZIE-2023) | Job rerun can stuck in prep |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2019](https://issues.apache.org/jira/browse/OOZIE-2019) | SLA miss processed on server2 not send email |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2017](https://issues.apache.org/jira/browse/OOZIE-2017) | On startup, StatusTransitService can transition Coordinators that were in PREPSUSPENDED to RUNNING |  Critical | coordinator | Robert Kanter | Robert Kanter |
| [OOZIE-2005](https://issues.apache.org/jira/browse/OOZIE-2005) | Coordinator rerun fails to initialize error code and message. |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1997](https://issues.apache.org/jira/browse/OOZIE-1997) | Oozie cannot materialize coordinator job with sqlserver in windows |  Blocker | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1989](https://issues.apache.org/jira/browse/OOZIE-1989) | NPE during a rerun with forks |  Blocker | core | Robert Kanter | Robert Kanter |
| [OOZIE-1984](https://issues.apache.org/jira/browse/OOZIE-1984) | SLACalculator in HA mode performs duplicate operations on records with completed jobs |  Major | . | Mona Chitnis |  |
| [OOZIE-1959](https://issues.apache.org/jira/browse/OOZIE-1959) | TestZKUtilsWithSecurity fails |  Critical | . | Robert Kanter | Robert Kanter |
| [OOZIE-1958](https://issues.apache.org/jira/browse/OOZIE-1958) | address duplication of env variables in oozie.launcher.yarn.app.mapreduce.am.env when running with uber mode |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1957](https://issues.apache.org/jira/browse/OOZIE-1957) | Coord update command override group when oozie.service.AuthorizationService.default.group.as.acl is set and group/acl is not configured in job property |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1950](https://issues.apache.org/jira/browse/OOZIE-1950) | Coordinator job info should support timestamp (nominal time) |  Major | . | Purshotam Shah | Shwetha G S |
| [OOZIE-1945](https://issues.apache.org/jira/browse/OOZIE-1945) | NPE in JaveActionExecutor#check() |  Trivial | . | Mona Chitnis | Sreepathi Prasanna |
| [OOZIE-1944](https://issues.apache.org/jira/browse/OOZIE-1944) | Recursive variable resolution broken when same parameter name in config-default and action conf |  Major | workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1935](https://issues.apache.org/jira/browse/OOZIE-1935) | Log level (ActionStartXCommand) and Doc fix (CoordinatorFunctionalSpec) |  Trivial | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1934](https://issues.apache.org/jira/browse/OOZIE-1934) | coordinator action repeatedly picked up by cachePurgeWorker of PartitionDependencyManagerService |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1933](https://issues.apache.org/jira/browse/OOZIE-1933) | SLACalculatorMemory HA changes assume SLARegistrationBean exists for all jobs |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1932](https://issues.apache.org/jira/browse/OOZIE-1932) | Services should load CallableQueueService after MemoryLocksService |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1930](https://issues.apache.org/jira/browse/OOZIE-1930) | oozie coordinator "-info desc" returns earliest instead of latest actions when specifying "len" after oozie-1532 |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1926](https://issues.apache.org/jira/browse/OOZIE-1926) | make gz blob compression as default |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1925](https://issues.apache.org/jira/browse/OOZIE-1925) | upgrade tomcat to 6.0.41 |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-1923](https://issues.apache.org/jira/browse/OOZIE-1923) | ZKLocksService locks are not re-entrant like MemoryLocks |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1920](https://issues.apache.org/jira/browse/OOZIE-1920) | Capture Output for SSH Action doesn't work |  Blocker | action | Alessandro Costantino | Richard Williams |
| [OOZIE-1915](https://issues.apache.org/jira/browse/OOZIE-1915) | Move system properties to conf properties |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1914](https://issues.apache.org/jira/browse/OOZIE-1914) | CLI should retry on timeout |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1911](https://issues.apache.org/jira/browse/OOZIE-1911) | SLA calculation in HA mode does wrong bit comparison for 'start' and 'duration' |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1909](https://issues.apache.org/jira/browse/OOZIE-1909) | log prefix information missing in JavaActionExecutor.check |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1907](https://issues.apache.org/jira/browse/OOZIE-1907) | DB upgrade from 3.3.0 to trunk fails on derby |  Blocker | . | Robert Kanter | Robert Kanter |
| [OOZIE-1906](https://issues.apache.org/jira/browse/OOZIE-1906) | Service to periodically remove ZK lock |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1896](https://issues.apache.org/jira/browse/OOZIE-1896) | ZKUUIDService - Too many job submission fails |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1893](https://issues.apache.org/jira/browse/OOZIE-1893) | Recovery service will never recover bundle action if CoordSubmitXCommand command is lost |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1886](https://issues.apache.org/jira/browse/OOZIE-1886) | Queue operation taking longer time |  Major | . | Shwetha G S | Shwetha G S |
| [OOZIE-1883](https://issues.apache.org/jira/browse/OOZIE-1883) | hostnameFilter has invalid url-pattern |  Major | . | David Villegas | David Villegas |
| [OOZIE-1882](https://issues.apache.org/jira/browse/OOZIE-1882) | Bulk API with bundle Id should relax regex check for Id |  Minor | . | Mona Chitnis | Purshotam Shah |
| [OOZIE-1879](https://issues.apache.org/jira/browse/OOZIE-1879) | Workflow Rerun causes error depending on the order of forked nodes |  Blocker | core | Robert Kanter | Robert Kanter |
| [OOZIE-1878](https://issues.apache.org/jira/browse/OOZIE-1878) | Can't execute dryrun on the CLI |  Major | . | Azrael | Purshotam Shah |
| [OOZIE-1872](https://issues.apache.org/jira/browse/OOZIE-1872) | TestCoordActionInputCheckXCommand.testActionInputCheckLatestActionCreationTime is failing for past couple of builds |  Major | tests | Rohini Palaniswamy | Mona Chitnis |
| [OOZIE-1870](https://issues.apache.org/jira/browse/OOZIE-1870) | Workflow action doen't resolve retry-max and retry-interval |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1869](https://issues.apache.org/jira/browse/OOZIE-1869) | Sharelib update shows vip/load balancer address as one of the hostname |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1865](https://issues.apache.org/jira/browse/OOZIE-1865) | Oozie servers can't talk to each other with Oozie HA and Kerberos |  Major | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1862](https://issues.apache.org/jira/browse/OOZIE-1862) | Add hadoop token file location for Hive/Tez jobs |  Major | . | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-1861](https://issues.apache.org/jira/browse/OOZIE-1861) | Pig action should work with tez mode |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1848](https://issues.apache.org/jira/browse/OOZIE-1848) | Pig actions fail due to missing joda-time jar from pig sharelib |  Blocker | . | Robert Kanter | Bowen Zhang |
| [OOZIE-1844](https://issues.apache.org/jira/browse/OOZIE-1844) | HA -  Lock mechanism for CoordMaterializeTriggerService |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1838](https://issues.apache.org/jira/browse/OOZIE-1838) | jdbc.connections.active sampler does not show up |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1835](https://issues.apache.org/jira/browse/OOZIE-1835) | NullPointerException from SLAEmailEventListener |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1834](https://issues.apache.org/jira/browse/OOZIE-1834) | sla should-start is supposed to be optional but it is not |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1831](https://issues.apache.org/jira/browse/OOZIE-1831) | Oozie upgrade fails if workflow jobs are in running or suspended state |  Major | tools | Satish Mittal | Satish Mittal |
| [OOZIE-1828](https://issues.apache.org/jira/browse/OOZIE-1828) | Introduce counters JobStatus terminal states metrics |  Major | monitoring | Gilad Wolff | Robert Kanter |
| [OOZIE-1825](https://issues.apache.org/jira/browse/OOZIE-1825) | Optimize wf\_jobs protoconf storage |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1823](https://issues.apache.org/jira/browse/OOZIE-1823) | OozieSharelibCLI shouldn't load ext services |  Blocker | tools | Robert Kanter | Robert Kanter |
| [OOZIE-1821](https://issues.apache.org/jira/browse/OOZIE-1821) | Oozie java action fails due to AlreadyBeingCreatedException |  Minor | action | Abhishek Agarwal | Abhishek Agarwal |
| [OOZIE-1819](https://issues.apache.org/jira/browse/OOZIE-1819) | Avoid early queueing of CoordActionInputCheckXCommand |  Major | . | Shwetha G S | Shwetha G S |
| [OOZIE-1812](https://issues.apache.org/jira/browse/OOZIE-1812) | Bundle status is always in RUNNING if one of the action status is in PREP |  Major | . | Rohini Palaniswamy | Purshotam Shah |
| [OOZIE-1811](https://issues.apache.org/jira/browse/OOZIE-1811) | Current test failures in trunk |  Critical | . | Robert Kanter | Mona Chitnis |
| [OOZIE-1809](https://issues.apache.org/jira/browse/OOZIE-1809) | offset and len options are ignored in oozie job -info for workflow |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1807](https://issues.apache.org/jira/browse/OOZIE-1807) | Make bundle change command synchronous |  Major | . | Ryota Egashira | Purshotam Shah |
| [OOZIE-1806](https://issues.apache.org/jira/browse/OOZIE-1806) | Java Action type jobs are failing with hadoop-0.20.0 and earlier versions on oozie trunk |  Blocker | . | Satish Mittal | Satish Mittal |
| [OOZIE-1799](https://issues.apache.org/jira/browse/OOZIE-1799) | Document hcatalog integration steps for Oozie in a secure cluster |  Major | examples | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-1797](https://issues.apache.org/jira/browse/OOZIE-1797) | Workflow rerun command should use existing workflow properties |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1796](https://issues.apache.org/jira/browse/OOZIE-1796) | Job status should not transition from KILLED |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1794](https://issues.apache.org/jira/browse/OOZIE-1794) | java-opts and java-opt in the Java action don't always work properly in YARN |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1792](https://issues.apache.org/jira/browse/OOZIE-1792) | Ability to kill bundle stuck in RUNNING due to inconsistent pending states |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1791](https://issues.apache.org/jira/browse/OOZIE-1791) | add IGNORED status to Coordinator Job and Action |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1789](https://issues.apache.org/jira/browse/OOZIE-1789) | Support backward compatibility of oozie share lib |  Critical | . | Satish Mittal | Shwetha G S |
| [OOZIE-1787](https://issues.apache.org/jira/browse/OOZIE-1787) | parameterize interval of SLAService updating SlaStatus |  Major | monitoring | Ryota Egashira | Ryota Egashira |
| [OOZIE-1785](https://issues.apache.org/jira/browse/OOZIE-1785) | Add oozie email action xsd to OozieCli.java |  Trivial | client | Jagat Singh | Jagat Singh |
| [OOZIE-1783](https://issues.apache.org/jira/browse/OOZIE-1783) | Sharelib purging only occurs at Oozie startup |  Critical | . | Robert Kanter | Robert Kanter |
| [OOZIE-1781](https://issues.apache.org/jira/browse/OOZIE-1781) | UI - Last Modified time is not displayed for coord action in coord job info grid |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1777](https://issues.apache.org/jira/browse/OOZIE-1777) | duplicated log message in Pig launcher's stdout |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1774](https://issues.apache.org/jira/browse/OOZIE-1774) | Expected/Actual Duration on UI SLA Tab doesn't show correct information |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1773](https://issues.apache.org/jira/browse/OOZIE-1773) | bulk API returns total = 0 when it's not |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1769](https://issues.apache.org/jira/browse/OOZIE-1769) | An option to update coord properties/definition |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1768](https://issues.apache.org/jira/browse/OOZIE-1768) | Workflow schema 0.4.5 was removed |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1765](https://issues.apache.org/jira/browse/OOZIE-1765) | JMS Notifications for Workflows not always on the correct topic |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1762](https://issues.apache.org/jira/browse/OOZIE-1762) | Sharelib with oozie.action.ship.launcher.jar=true should copy oozie-hadoop-utils.jar |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1761](https://issues.apache.org/jira/browse/OOZIE-1761) | Improve sharelib purging logic |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1754](https://issues.apache.org/jira/browse/OOZIE-1754) | add order(sort) option and exclude filter for coord job Info |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1753](https://issues.apache.org/jira/browse/OOZIE-1753) | Update create-release-artifact script for git |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1751](https://issues.apache.org/jira/browse/OOZIE-1751) | Default authentication type using env variable  for oozie CLI |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1748](https://issues.apache.org/jira/browse/OOZIE-1748) | When using cron-like syntax, the "Time Unit" field says "MINUTE" |  Major | coordinator | Robert Kanter | Bowen Zhang |
| [OOZIE-1737](https://issues.apache.org/jira/browse/OOZIE-1737) | Oozie log streaming is slow |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1735](https://issues.apache.org/jira/browse/OOZIE-1735) | Support resuming of failed coordinator job and rerun of a failed coordinator action |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1734](https://issues.apache.org/jira/browse/OOZIE-1734) | Oozie returned 500 Internal Server error when user passes invalid request |  Major | core | Chelsey Chang | Chelsey Chang |
| [OOZIE-1732](https://issues.apache.org/jira/browse/OOZIE-1732) | Sharelib instrumentation fails if sharelib.system.libpath is not created. |  Major | . | Purshotam Shah | Ryota Egashira |
| [OOZIE-1727](https://issues.apache.org/jira/browse/OOZIE-1727) | Upgrade hadoop-minikdc |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1725](https://issues.apache.org/jira/browse/OOZIE-1725) | add coord EL functions to be used in SLA tag |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1720](https://issues.apache.org/jira/browse/OOZIE-1720) | Oozie Hive action doesn't honour mapred.job.name. |  Major | action | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [OOZIE-1719](https://issues.apache.org/jira/browse/OOZIE-1719) | v1/jobs api returns null for parentId even when it exists |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1718](https://issues.apache.org/jira/browse/OOZIE-1718) | Coord Job Query UPDATE\_COORD\_JOB\_CHANGE does not update last modified time |  Major | coordinator | Mona Chitnis | Mona Chitnis |
| [OOZIE-1715](https://issues.apache.org/jira/browse/OOZIE-1715) | Distributed ID sequence for HA |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1714](https://issues.apache.org/jira/browse/OOZIE-1714) | Update Derby driver version to latest |  Critical | . | Robert Kanter | Robert Kanter |
| [OOZIE-1713](https://issues.apache.org/jira/browse/OOZIE-1713) | Avoid creating dummy input file for each launcher job |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1712](https://issues.apache.org/jira/browse/OOZIE-1712) | Oozie page does not render in Internet Explorer 9 on Windows |  Major | . | Ostap | Ostap |
| [OOZIE-1709](https://issues.apache.org/jira/browse/OOZIE-1709) | CoordELFunctions.getCurrentInstance() is expensive |  Major | . | Shwetha G S | Shwetha G S |
| [OOZIE-1703](https://issues.apache.org/jira/browse/OOZIE-1703) | User should be able to set coord end-time before start time |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1701](https://issues.apache.org/jira/browse/OOZIE-1701) | TestXTestCase#testWaitFor and TestXTestCase#testBaseDir have the errors |  Major | . | Ostap | Ostap |
| [OOZIE-1699](https://issues.apache.org/jira/browse/OOZIE-1699) | Some of the commands submitted to Oozie internal queue are never executed |  Critical | . | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [OOZIE-1693](https://issues.apache.org/jira/browse/OOZIE-1693) | UI timeout while loading job table |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1692](https://issues.apache.org/jira/browse/OOZIE-1692) | modify log message when checking completion of child job in Map-Reduce action |  Minor | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1691](https://issues.apache.org/jira/browse/OOZIE-1691) | StackOverflowError in TimestampedMessageParser.parseNextLine() |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1690](https://issues.apache.org/jira/browse/OOZIE-1690) | TestShellActionExecutor#testEnvVar failed for Windows |  Major | . | Ostap | Ostap |
| [OOZIE-1689](https://issues.apache.org/jira/browse/OOZIE-1689) | HA support for OOZIE-7(Ability to view the log information corresponding to particular coordinator action) |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1687](https://issues.apache.org/jira/browse/OOZIE-1687) | Bundle can still be in RUNNINGWITHERROR status after bundle kill |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1686](https://issues.apache.org/jira/browse/OOZIE-1686) | Typo in DG\_CommandLineTool |  Trivial | . | Purshotam Shah | Anbalagan Pugaleesan |
| [OOZIE-1685](https://issues.apache.org/jira/browse/OOZIE-1685) | Oozie doesn’t process correctly workflows with a non-default name node |  Major | core | Benjamin Zhitomirsky | Benjamin Zhitomirsky |
| [OOZIE-1684](https://issues.apache.org/jira/browse/OOZIE-1684) | DB upgrade from 3.3.0 to trunk fails on Oracle |  Critical | . | Robert Kanter | Robert Kanter |
| [OOZIE-1683](https://issues.apache.org/jira/browse/OOZIE-1683) | UserGroupInformationService should close any filesystems opened by it |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1681](https://issues.apache.org/jira/browse/OOZIE-1681) | Sqoop sharelib has no hsqldb jar version |  Major | . | Ostap | Ostap |
| [OOZIE-1675](https://issues.apache.org/jira/browse/OOZIE-1675) | Adding absolute URI of local cluster to dist cache not working with hadoop version 0.20.2 and before |  Major | . | Satish Mittal | Satish Mittal |
| [OOZIE-1674](https://issues.apache.org/jira/browse/OOZIE-1674) | DB upgrade from 3.3.0 to trunk fails on postgres |  Critical | . | Robert Kanter | Robert Kanter |
| [OOZIE-1672](https://issues.apache.org/jira/browse/OOZIE-1672) | UI info fetch fails  for bundle having large number of coordinators. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1671](https://issues.apache.org/jira/browse/OOZIE-1671) | add an option to limit # of coordinator actions for log retrieval |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1668](https://issues.apache.org/jira/browse/OOZIE-1668) | Coord log streaming start and end time should be of action list start and end time |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1666](https://issues.apache.org/jira/browse/OOZIE-1666) | Child job link not working in safari and chrome |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1664](https://issues.apache.org/jira/browse/OOZIE-1664) | PollablePriorityDelayQueue.poll() returns elements with +ve delay |  Major | . | Shwetha G S | Shwetha G S |
| [OOZIE-1663](https://issues.apache.org/jira/browse/OOZIE-1663) | Queuedump to display command type |  Minor | . | Shwetha G S | Shwetha G S |
| [OOZIE-1661](https://issues.apache.org/jira/browse/OOZIE-1661) | Stream logs in oozie UI |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1660](https://issues.apache.org/jira/browse/OOZIE-1660) | DB connection misconfig causes all or most unit tests to fail |  Blocker | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1659](https://issues.apache.org/jira/browse/OOZIE-1659) | oozie-site is missing email-action-0.2 schema |  Trivial | core | Robert Kanter | Jagat Singh |
| [OOZIE-1658](https://issues.apache.org/jira/browse/OOZIE-1658) | Add bundle, coord, wf and action related information to launched M/R jobs. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1655](https://issues.apache.org/jira/browse/OOZIE-1655) | Change oozie.service.JPAService.validate.db.connection to true |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-1651](https://issues.apache.org/jira/browse/OOZIE-1651) | Oozie should mask the signature secret in the configuration output |  Critical | security | Robert Kanter | Robert Kanter |
| [OOZIE-1650](https://issues.apache.org/jira/browse/OOZIE-1650) | Whitelisting docs are incorrect |  Minor | docs | Robert Kanter | Anbalagan Pugaleesan |
| [OOZIE-1647](https://issues.apache.org/jira/browse/OOZIE-1647) | oozie-setup.sh doesn't check exit code of java executions |  Major | scripts | Andrew Lazarev | Andrew Lazarev |
| [OOZIE-1645](https://issues.apache.org/jira/browse/OOZIE-1645) | Oozie upgrade DB command fails due to missing dependencies for mssql |  Major | . | Ostap | Ostap |
| [OOZIE-1643](https://issues.apache.org/jira/browse/OOZIE-1643) | Oozie doesn't parse Hadoop Job Id from the Hive action |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-1642](https://issues.apache.org/jira/browse/OOZIE-1642) | writeUTF 64k limit for counters. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1641](https://issues.apache.org/jira/browse/OOZIE-1641) | oozie-audit.log - add remote IP. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1635](https://issues.apache.org/jira/browse/OOZIE-1635) | verifySlaElement in submitXCommand.java should get sla info from action child as well |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1634](https://issues.apache.org/jira/browse/OOZIE-1634) | TestJavaActionExecutor#testUpdateConfForUberMode fails against Hadoop 2 |  Minor | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1632](https://issues.apache.org/jira/browse/OOZIE-1632) | Coordinators that undergo change endtime but are doneMaterialization, not getting picked for StatusTransit |  Major | coordinator | Mona Chitnis | Mona Chitnis |
| [OOZIE-1631](https://issues.apache.org/jira/browse/OOZIE-1631) | Tools module should have a direct dependency on mockito |  Minor | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1629](https://issues.apache.org/jira/browse/OOZIE-1629) | EL function in \<timeout\> is not evaluated properly |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1623](https://issues.apache.org/jira/browse/OOZIE-1623) | JPAService doesn't need to do reads in a transaction |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1622](https://issues.apache.org/jira/browse/OOZIE-1622) | Multiple CoordSubmit for same bundle |  Critical | . | Shwetha G S | Shwetha G S |
| [OOZIE-1615](https://issues.apache.org/jira/browse/OOZIE-1615) | shell action cannot find script file and fails in uber mode |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1610](https://issues.apache.org/jira/browse/OOZIE-1610) | UnitTests fail on Windows because of wrong paths |  Major | . | Ostap | Ostap |
| [OOZIE-1608](https://issues.apache.org/jira/browse/OOZIE-1608) | Update Curator to 2.4.0 when its available to fix security hole |  Blocker | HA, security | Robert Kanter | Robert Kanter |
| [OOZIE-1605](https://issues.apache.org/jira/browse/OOZIE-1605) | Add common custom filter applied to Wf/Coord/Bundle jobs on oozie UI |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1604](https://issues.apache.org/jira/browse/OOZIE-1604) |  \<java-opts\> and \<java-opt\> not added to Application Master property in uber mode |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1603](https://issues.apache.org/jira/browse/OOZIE-1603) | cannot submit job to oozie on mysql |  Blocker | . | Bowen Zhang | Virag Kothari |
| [OOZIE-1600](https://issues.apache.org/jira/browse/OOZIE-1600) | map-reduce actions without configuration section in workflow.xml throws "IllegalArgumentException: element cannot be null" |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1598](https://issues.apache.org/jira/browse/OOZIE-1598) | enable html email in email action |  Major | . | Ryota Egashira | Purshotam Shah |
| [OOZIE-1596](https://issues.apache.org/jira/browse/OOZIE-1596) | TestOozieMySqlDBCLI.testCreateMysql fails when tests are executed in a different order |  Minor | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1593](https://issues.apache.org/jira/browse/OOZIE-1593) | Oozie HCatCredential provider needs to include hadoop rpc protection to work with encrypted secure clusters |  Major | . | Venkat Ranganathan | Bowen Zhang |
| [OOZIE-1592](https://issues.apache.org/jira/browse/OOZIE-1592) | El Expression Reference should point to the exact chapter in java 6 |  Minor | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1589](https://issues.apache.org/jira/browse/OOZIE-1589) | TestZKLocksService is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1578](https://issues.apache.org/jira/browse/OOZIE-1578) | Coordinator jobs with cron frequency should be invalidated upon submission if nothing would be materialized during run time |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1577](https://issues.apache.org/jira/browse/OOZIE-1577) | Oozie coordinator job with identical start and end time remains "RUNNING" forever |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1568](https://issues.apache.org/jira/browse/OOZIE-1568) | TestWorkflowClient.testSla is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1562](https://issues.apache.org/jira/browse/OOZIE-1562) | Allow re-run of actions of killed coordinator |  Major | . | Shwetha G S | Shwetha G S |
| [OOZIE-1559](https://issues.apache.org/jira/browse/OOZIE-1559) | Fix missing fields from new SELECT queries and Recovery Service picking up killed control nodes |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1558](https://issues.apache.org/jira/browse/OOZIE-1558) | RAT Warning from BundleActionsGetJPAExecutor.java |  Blocker | core | Robert Kanter | Robert Kanter |
| [OOZIE-1557](https://issues.apache.org/jira/browse/OOZIE-1557) | TestFsActionExecutor.testChmodWithGlob fails against Hadoop 2.1.x-beta |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1556](https://issues.apache.org/jira/browse/OOZIE-1556) | Change Bundle SELECT query to fetch only necessary columns and consolidate JPA Executors |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1554](https://issues.apache.org/jira/browse/OOZIE-1554) | Support variables for coord data-in/data-out dataset |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1548](https://issues.apache.org/jira/browse/OOZIE-1548) | OozieDBCLI changes to convert clob to blob and remove the discriminator column |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1547](https://issues.apache.org/jira/browse/OOZIE-1547) |  Change Coordinator SELECT query to fetch only necessary columns and consolidate JPA Executors |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1546](https://issues.apache.org/jira/browse/OOZIE-1546) | TestMapReduceActionExecutorUberJar.testMapReduceWithUberJarEnabled fails |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1545](https://issues.apache.org/jira/browse/OOZIE-1545) | RecoveryService keeps repeatedly queueing SuspendXCommand |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-1543](https://issues.apache.org/jira/browse/OOZIE-1543) | Minor typo in Hive Action documentation |  Trivial | docs | Robert Kanter | Anbalagan Pugaleesan |
| [OOZIE-1541](https://issues.apache.org/jira/browse/OOZIE-1541) | Typo in Oozie HA admin -servers command in documentation |  Trivial | docs, HA | Robert Kanter | Robert Kanter |
| [OOZIE-1540](https://issues.apache.org/jira/browse/OOZIE-1540) | When oozie.zookeeper.oozie.id is not specified, its using a space instead of the hostname |  Critical | HA | Robert Kanter | Robert Kanter |
| [OOZIE-1530](https://issues.apache.org/jira/browse/OOZIE-1530) | Fork-join mismatch makes workflow Failed but some actions stay Running |  Major | workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1529](https://issues.apache.org/jira/browse/OOZIE-1529) | Disable job DAG display for workflow having huge actions. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1528](https://issues.apache.org/jira/browse/OOZIE-1528) | CoordRerunX and ActionEndX not updating some of the modified beans. |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1527](https://issues.apache.org/jira/browse/OOZIE-1527) | Fix scalability issues with coordinator materialization |  Major | coordinator | Mona Chitnis | Purshotam Shah |
| [OOZIE-1526](https://issues.apache.org/jira/browse/OOZIE-1526) | Oozie does not work with a secure HA JobTracker or ResourceManager |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-1524](https://issues.apache.org/jira/browse/OOZIE-1524) | Change Workflow SELECT query to fetch only necessary columns and consolidate JPA Executors |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1522](https://issues.apache.org/jira/browse/OOZIE-1522) | SignalX may try to insert transition for a forked node twice |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1520](https://issues.apache.org/jira/browse/OOZIE-1520) | Sequencefile Reader fails to use doas for reading action data file |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1515](https://issues.apache.org/jira/browse/OOZIE-1515) | Passing superset of action id range should be allowed |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1513](https://issues.apache.org/jira/browse/OOZIE-1513) | Workflow stays in running if Fork/join validation or loop detection fails |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1509](https://issues.apache.org/jira/browse/OOZIE-1509) | Do not preload all tabs in Oozie UI and make Active Jobs default |  Major | . | Rohini Palaniswamy | Mona Chitnis |
| [OOZIE-1499](https://issues.apache.org/jira/browse/OOZIE-1499) | Update only necessary columns and consolidate JPA Executors |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1496](https://issues.apache.org/jira/browse/OOZIE-1496) | Oozie demo and streaming examples fails to run on Windows |  Major | . | Eugene Shevchuk | Eugene Shevchuk |
| [OOZIE-1495](https://issues.apache.org/jira/browse/OOZIE-1495) | inconsistent behavior of chmod/chgrp when path doesn't exist after glob support |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1471](https://issues.apache.org/jira/browse/OOZIE-1471) | Support glob in FS action and prepare blocks |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-1463](https://issues.apache.org/jira/browse/OOZIE-1463) | Remove discriminator column |  Major | . | Virag Kothari | Virag Kothari |
| [OOZIE-1461](https://issues.apache.org/jira/browse/OOZIE-1461) | provide an option to auto-deploy launcher jar onto HDFS system libpath |  Major | . | Ryota Egashira | Virag Kothari |
| [OOZIE-1449](https://issues.apache.org/jira/browse/OOZIE-1449) | Coordinator Workflow parent relationship is broken for purge service |  Critical | core | Robert Kanter | Robert Kanter |
| [OOZIE-1448](https://issues.apache.org/jira/browse/OOZIE-1448) | A CoordActionUpdateXCommand gets queued for all workflows even if they were not launched by a coordinator |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1447](https://issues.apache.org/jira/browse/OOZIE-1447) | Sqoop actions that don't launch a map reduce job fail with an IllegalArgumentException |  Major | action | Robert Kanter | Jarek Jarcec Cecho |
| [OOZIE-1443](https://issues.apache.org/jira/browse/OOZIE-1443) | forkjoin validation should not allow a fork to go to the same node multiple times |  Minor | . | Duc Anh Le | Robert Kanter |
| [OOZIE-1440](https://issues.apache.org/jira/browse/OOZIE-1440) | Build fails in certain environments due to xerces OpenJPA issue |  Major | build | Robert Kanter | Sean Mackrory |
| [OOZIE-1403](https://issues.apache.org/jira/browse/OOZIE-1403) | forkjoin validation blocks some valid cases involving decision nodes |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1372](https://issues.apache.org/jira/browse/OOZIE-1372) | When using uber mode, Oozie should also make the AM container size larger |  Major | . | Robert Kanter | Ryota Egashira |
| [OOZIE-1319](https://issues.apache.org/jira/browse/OOZIE-1319) | "LAST\_ONLY" in execution control for coordinator job still runs all the actions |  Major | . | Bowen Zhang | Robert Kanter |
| [OOZIE-1314](https://issues.apache.org/jira/browse/OOZIE-1314) | IllegalArgumentException: wfId cannot be empty |  Major | . | Shwetha G S | Shwetha G S |
| [OOZIE-1298](https://issues.apache.org/jira/browse/OOZIE-1298) | TestPartitionDependencyManagerEhcache.testEvictionOnTimeToIdle is flakey |  Major | tests | Robert Kanter | Rohini Palaniswamy |
| [OOZIE-1243](https://issues.apache.org/jira/browse/OOZIE-1243) | libtools dir should not include hadoop JARs |  Blocker | build | Alejandro Abdelnur | Satish Mittal |
| [OOZIE-1223](https://issues.apache.org/jira/browse/OOZIE-1223) | too many extjs cookies can cause the web UI to stop responding |  Major | . | Robert Kanter | Purshotam Shah |
| [OOZIE-943](https://issues.apache.org/jira/browse/OOZIE-943) | parentId is null when fetching oozie jobs information using REST API |  Minor | core | Ashish Vaidya | Mona Chitnis |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1877](https://issues.apache.org/jira/browse/OOZIE-1877) | Setting to fail oozie server startup in case of sharelib misconfiguration |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1733](https://issues.apache.org/jira/browse/OOZIE-1733) | Fix test failures caused by OOZIE-1722 |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1711](https://issues.apache.org/jira/browse/OOZIE-1711) | TestLiteWorkflowAppParser fails against Hadoop 2 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1704](https://issues.apache.org/jira/browse/OOZIE-1704) | Add ability to use Bulk API with bundle ID |  Major | bundle | Mona Chitnis | Mona Chitnis |
| [OOZIE-1678](https://issues.apache.org/jira/browse/OOZIE-1678) | HA support for SLA |  Major | HA | Ryota Egashira | Ryota Egashira |
| [OOZIE-1662](https://issues.apache.org/jira/browse/OOZIE-1662) | Correct some used and unused Workflow Action SELECT queries |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1644](https://issues.apache.org/jira/browse/OOZIE-1644) | Default config from config-default.xml is not propagated to actions |  Major | action | Mona Chitnis | Mona Chitnis |
| [OOZIE-1633](https://issues.apache.org/jira/browse/OOZIE-1633) | Test failures related to sharelib when running against Hadoop 2 |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-1621](https://issues.apache.org/jira/browse/OOZIE-1621) | Add proper error code and error message for sharelib exceptions. |  Major | . | Purshotam Shah | Robert Kanter |
| [OOZIE-1616](https://issues.apache.org/jira/browse/OOZIE-1616) | Add sharelib and launcherlib locations to the instrumentation info |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-1611](https://issues.apache.org/jira/browse/OOZIE-1611) | Oozie CLI and Rest command to list supported sharelib |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1609](https://issues.apache.org/jira/browse/OOZIE-1609) | HA support for share lib. |  Major | HA | Purshotam Shah | Purshotam Shah |
| [OOZIE-1584](https://issues.apache.org/jira/browse/OOZIE-1584) | Setup sharelib using script and pickup latest(honor ship.launcher) and remove DFS dependency at startup. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-1576](https://issues.apache.org/jira/browse/OOZIE-1576) | Add documentation for Oozie Sqoop CLI |  Major | client | Bowen Zhang | Bowen Zhang |
| [OOZIE-1575](https://issues.apache.org/jira/browse/OOZIE-1575) | Add functionality to submit sqoop jobs through http on oozie server side |  Major | client | Bowen Zhang | Bowen Zhang |
| [OOZIE-1569](https://issues.apache.org/jira/browse/OOZIE-1569) | Maintain backward incompatibility for running jobs before upgrade |  Major | workflow | Mona Chitnis | Mona Chitnis |
| [OOZIE-1566](https://issues.apache.org/jira/browse/OOZIE-1566) | Add reference to Quartz module in cron documentation |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1555](https://issues.apache.org/jira/browse/OOZIE-1555) | LauncherMapper to check for sys properties before opening files for action data |  Major | . | Mona Chitnis | Mona Chitnis |
| [OOZIE-1552](https://issues.apache.org/jira/browse/OOZIE-1552) | Bring Windows shell script functionality and structure in line with trunk |  Major | core, tools | David Wannemacher | Ostap |
| [OOZIE-1539](https://issues.apache.org/jira/browse/OOZIE-1539) | Load more coordinator jobs eligible to be materialized in MaterializeTriggerService |  Major | coordinator | Mona Chitnis | Mona Chitnis |
| [OOZIE-1523](https://issues.apache.org/jira/browse/OOZIE-1523) | Create Windows versions of the shell scripts |  Major | core, tools | David Wannemacher | David Wannemacher |
| [OOZIE-1519](https://issues.apache.org/jira/browse/OOZIE-1519) | Admin command to update the sharelib |  Major | . | Virag Kothari | Purshotam Shah |
| [OOZIE-1517](https://issues.apache.org/jira/browse/OOZIE-1517) | Support using MS SQL Server as a metastore |  Major | core, tools | David Wannemacher | David Wannemacher |
| [OOZIE-1500](https://issues.apache.org/jira/browse/OOZIE-1500) | Fix many OS-specific issues on Windows |  Major | build, core, examples, scripts, tests | David Wannemacher | David Wannemacher |
| [OOZIE-1490](https://issues.apache.org/jira/browse/OOZIE-1490) | Remove unix OS enforcement from build |  Major | build | David Wannemacher | David Wannemacher |
| [OOZIE-1454](https://issues.apache.org/jira/browse/OOZIE-1454) | Documentation for cron syntax scheduling of coordinator job |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1453](https://issues.apache.org/jira/browse/OOZIE-1453) | Change "frequency" to string in SyncCoordAction.java |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-1425](https://issues.apache.org/jira/browse/OOZIE-1425) | param checker should validate cron syntax |  Major | . | Bowen Zhang | Bowen Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1775](https://issues.apache.org/jira/browse/OOZIE-1775) | TestEventGeneration.testCoordinatorActionEvent is failing and CoordRerunX should generate event |  Major | . | Mona Chitnis | Mona Chitnis |


