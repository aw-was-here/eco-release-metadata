
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

## Release 5.0.0b1 - 2018-01-25



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2387](https://issues.apache.org/jira/browse/OOZIE-2387) | Oozie is Unable to handle Spaces in file/archive tag. |  Major | action | shiv pratap singh | Attila Sasvari |
| [OOZIE-2984](https://issues.apache.org/jira/browse/OOZIE-2984) | Parse spark-defaults.conf values with spaces without needing the quotes |  Major | . | Fahd Siddiqui | Andras Piros |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2245](https://issues.apache.org/jira/browse/OOZIE-2245) | Service to periodically check database schema |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2630](https://issues.apache.org/jira/browse/OOZIE-2630) | Oozie Coordinator EL Functions to get first day of the week/month |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2041](https://issues.apache.org/jira/browse/OOZIE-2041) | Add an admin command to run the PurgeXCommand |  Major | core | Robert Kanter | Abhishek Bafna |
| [OOZIE-2701](https://issues.apache.org/jira/browse/OOZIE-2701) | Oozie to support Multiple HCatalog URIs |  Major | core | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2827](https://issues.apache.org/jira/browse/OOZIE-2827) | More directly view of the coordinator’s history from perspective of workflow action. |  Major | . | Alonzo Zhou |  |
| [OOZIE-2843](https://issues.apache.org/jira/browse/OOZIE-2843) | Enhance logging inside ZKLocksService and MemoryLocksService |  Minor | action, coordinator | Andras Piros | Andras Piros |
| [OOZIE-1770](https://issues.apache.org/jira/browse/OOZIE-1770) | Create Oozie Application Master for YARN |  Major | . | Bowen Zhang | Peter Cseh |
| [OOZIE-2601](https://issues.apache.org/jira/browse/OOZIE-2601) | Ability to use local paths for the sharelib |  Major | . | Robert Kanter | Attila Sasvari |
| [OOZIE-2406](https://issues.apache.org/jira/browse/OOZIE-2406) | Completely rewrite GraphGenerator code |  Major | . | Robert Kanter | Andras Piros |
| [OOZIE-2296](https://issues.apache.org/jira/browse/OOZIE-2296) | Add an Oozie diagnostic bundle tool |  Major | tools | Robert Kanter | Attila Sasvari |
| [OOZIE-2969](https://issues.apache.org/jira/browse/OOZIE-2969) | Drop support for Java 1.7 |  Blocker | core | Artem Ervits | Artem Ervits |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2634](https://issues.apache.org/jira/browse/OOZIE-2634) | Queue dump command message is confusing when the queue is empty |  Minor | . | Robert Kanter | Andras Piros |
| [OOZIE-2731](https://issues.apache.org/jira/browse/OOZIE-2731) | Set yarn.nodemanager.disk-health-checker.max-disk-utilization-per-disk-percentage to a higher value in tests |  Minor | tests | Robert Kanter | Attila Sasvari |
| [OOZIE-2225](https://issues.apache.org/jira/browse/OOZIE-2225) | Add wild card filter for gathering jobs |  Major | core | Sai Chirravuri | Sai Chirravuri |
| [OOZIE-2745](https://issues.apache.org/jira/browse/OOZIE-2745) | test-patch should also list the failed tests |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2616](https://issues.apache.org/jira/browse/OOZIE-2616) | Add Tez profile for Hive and Pig sharelibs |  Major | . | Thomas Poepping | Thomas Poepping |
| [OOZIE-2757](https://issues.apache.org/jira/browse/OOZIE-2757) | Malformed xml is Spark action doc page |  Minor | . | Peter Cseh | Peter Cseh |
| [OOZIE-2754](https://issues.apache.org/jira/browse/OOZIE-2754) | Document Ssh action failure if output is written to stdout/stderr upon login |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2756](https://issues.apache.org/jira/browse/OOZIE-2756) | Extend HTTPS configuration settings for embedded Jetty |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2732](https://issues.apache.org/jira/browse/OOZIE-2732) | Remove login server example |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2771](https://issues.apache.org/jira/browse/OOZIE-2771) | Allow retrieving keystore and truststore passwords from Hadoop Credential Provider |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2786](https://issues.apache.org/jira/browse/OOZIE-2786) | Pass Oozie workflow ID and settings to Spark application configuration |  Critical | action | Xiaobin Zheng | Xiaobin Zheng |
| [OOZIE-807](https://issues.apache.org/jira/browse/OOZIE-807) | Docs can be explicit about multiple sub-workflow definitions being possible |  Trivial | docs | Harsh J | Harsh J |
| [OOZIE-2830](https://issues.apache.org/jira/browse/OOZIE-2830) | Use tarLongFileMode with 'gnu' in the assembly plugin's configuration |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2393](https://issues.apache.org/jira/browse/OOZIE-2393) | Allow table drop in hcat prepare |  Minor | core | Muhammad Ehsan ul Haque | Abhishek Bafna |
| [OOZIE-2838](https://issues.apache.org/jira/browse/OOZIE-2838) | TestClassUtils,TestJsonUtils,TestWritableUtils,TestXmlUtils shall not be an Oozie  XTestCase |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2831](https://issues.apache.org/jira/browse/OOZIE-2831) | Update maven-project-info-reports-plugin to 2.9 |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2845](https://issues.apache.org/jira/browse/OOZIE-2845) | Replace reflection-based code which sets variable in HiveConf |  Major | core | Peter Bacsko | Peter Bacsko |
| [OOZIE-2844](https://issues.apache.org/jira/browse/OOZIE-2844) | Increase stability of Oozie actions when log4j.properties is missing or not readable |  Major | action | Andras Piros | Andras Piros |
| [OOZIE-2860](https://issues.apache.org/jira/browse/OOZIE-2860) | Improve Jetty logging |  Major | core | Andras Piros | Andras Piros |
| [OOZIE-2851](https://issues.apache.org/jira/browse/OOZIE-2851) | spelling mistakes in examples |  Trivial | docs | Artem Ervits | Artem Ervits |
| [OOZIE-2874](https://issues.apache.org/jira/browse/OOZIE-2874) | Make the Launcher Mapper map-only job's InputFormat class pluggable |  Major | . | Andras Piros | Andras Piros |
| [OOZIE-2780](https://issues.apache.org/jira/browse/OOZIE-2780) | Upgrade minimum Hadoop version to 2.6.0 |  Minor | core | Artem Ervits | Artem Ervits |
| [OOZIE-2888](https://issues.apache.org/jira/browse/OOZIE-2888) | Upgrade commons-io to 2.4 |  Minor | core | Artem Ervits | Artem Ervits |
| [OOZIE-2923](https://issues.apache.org/jira/browse/OOZIE-2923) | Improve Spark options parsing |  Major | action | Andras Piros | Andras Piros |
| [OOZIE-2651](https://issues.apache.org/jira/browse/OOZIE-2651) | Set javax.xml.parsers.DocumentBuilderFactory sys prop to make XML handling faster |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2933](https://issues.apache.org/jira/browse/OOZIE-2933) | Switch from Findbugs to Spotbugs |  Minor | build | Jan Hentschel | Jan Hentschel |
| [OOZIE-2924](https://issues.apache.org/jira/browse/OOZIE-2924) | ./bin/mkdistro.sh reports a number instances of no @throws for Exception |  Trivial | client, core | Artem Ervits | Artem Ervits |
| [OOZIE-2769](https://issues.apache.org/jira/browse/OOZIE-2769) | Extend FS action to allow setrep on a file |  Minor | action, core | Artem Ervits | Artem Ervits |
| [OOZIE-2920](https://issues.apache.org/jira/browse/OOZIE-2920) | Document Distcp can copy files within a cluster |  Trivial | . | Artem Ervits | Artem Ervits |
| [OOZIE-2848](https://issues.apache.org/jira/browse/OOZIE-2848) | Override sharelib.tgz in distro when rebuilding Oozie |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2854](https://issues.apache.org/jira/browse/OOZIE-2854) | Oozie should handle transient database problems |  Major | core | Peter Bacsko | Andras Piros |
| [OOZIE-2004](https://issues.apache.org/jira/browse/OOZIE-2004) | Improve Oozie version info output |  Minor | build | Chunjun Xiao | Artem Ervits |
| [OOZIE-3038](https://issues.apache.org/jira/browse/OOZIE-3038) | Make all Oozie JUnit tests pass on dist\_test |  Major | tests | Andras Piros | Andras Piros |
| [OOZIE-3054](https://issues.apache.org/jira/browse/OOZIE-3054) | Disable erasure coding for sharelib if Oozie runs on Hadoop 3 |  Major | client | Peter Bacsko | Peter Bacsko |
| [OOZIE-2963](https://issues.apache.org/jira/browse/OOZIE-2963) | Use net.hydromatic instead of org.pentaho aggdesigner-algorithmin pomfiles |  Minor | . | Artem Ervits | Artem Ervits |
| [OOZIE-3098](https://issues.apache.org/jira/browse/OOZIE-3098) | Allow to use the rest api to get the creation time of the Coordinator |  Major | coordinator | Chi Wen | Chi Wen |
| [OOZIE-2618](https://issues.apache.org/jira/browse/OOZIE-2618) | Include hive-common in hive-beeline as compile component for hive-server2 (hive2 action) |  Major | action | Taklon Stephen Wu | Taklon Stephen Wu |
| [OOZIE-3103](https://issues.apache.org/jira/browse/OOZIE-3103) | Improve log message regarding max concurrency for coordinators |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-3132](https://issues.apache.org/jira/browse/OOZIE-3132) | Instrument SLACalculatorMemory |  Major | core | Andras Piros | Andras Piros |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2316](https://issues.apache.org/jira/browse/OOZIE-2316) | Drop support for Hadoop 1 and 0.23 |  Major | . | Robert Kanter | Attila Sasvari |
| [OOZIE-2525](https://issues.apache.org/jira/browse/OOZIE-2525) | SchemaChecker fails with NPE |  Blocker | . | Purshotam Shah | Robert Kanter |
| [OOZIE-1459](https://issues.apache.org/jira/browse/OOZIE-1459) | Remove the version in the child poms for maven-antrun-plugin |  Critical | . | Robert Kanter | Jan Hentschel |
| [OOZIE-2737](https://issues.apache.org/jira/browse/OOZIE-2737) | testConfigDefaultPropsToAction is flaky |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2690](https://issues.apache.org/jira/browse/OOZIE-2690) | OOZIE NPE while executing kill() |  Major | . | Cheng Xu | Abhishek Bafna |
| [OOZIE-1986](https://issues.apache.org/jira/browse/OOZIE-1986) | Add FindBugs report to pre-commit build |  Major | tests | Robert Kanter | Andras Piros |
| [OOZIE-2740](https://issues.apache.org/jira/browse/OOZIE-2740) | oozie help misspelled coordinator (coordiantor) and retrieved (retreived) |  Trivial | client | Grant Sohn | Grant Sohn |
| [OOZIE-2654](https://issues.apache.org/jira/browse/OOZIE-2654) | Zookeeper dependent services should not depend on Connectionstate to be valid before cleaning up |  Major | HA | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2748](https://issues.apache.org/jira/browse/OOZIE-2748) | NPE in LauncherMapper.printArgs() |  Major | core | Peter Bacsko | Peter Bacsko |
| [OOZIE-2728](https://issues.apache.org/jira/browse/OOZIE-2728) | Typo in Error E0405 |  Trivial | core | Jan Hentschel | Peter Cseh |
| [OOZIE-2727](https://issues.apache.org/jira/browse/OOZIE-2727) | OozieDBCLI creates temporary directories and do not delete them |  Minor | . | Attila Sasvari | Peter Cseh |
| [OOZIE-2619](https://issues.apache.org/jira/browse/OOZIE-2619) | Make  Hive action defaults to match hive defaults when running from command line |  Major | core | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2789](https://issues.apache.org/jira/browse/OOZIE-2789) | Maven complains about checkstyle error during build |  Minor | build | Xiaobin Zheng | Xiaobin Zheng |
| [OOZIE-2766](https://issues.apache.org/jira/browse/OOZIE-2766) | Coordinator rerun should start actions in action id order |  Major | . | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2778](https://issues.apache.org/jira/browse/OOZIE-2778) | Copy only jetty.version related server dependencies to distro |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2788](https://issues.apache.org/jira/browse/OOZIE-2788) | Fix jobs API servlet mapping for EmbeddedOozieServer |  Blocker | core | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2803](https://issues.apache.org/jira/browse/OOZIE-2803) | Mask passwords when printing out configs/args in MapReduceMain and SparkMain |  Critical | action | Peter Bacsko | Peter Bacsko |
| [OOZIE-2792](https://issues.apache.org/jira/browse/OOZIE-2792) | Hive2 action is not parsing Spark application ID from log file properly when Hive is on Spark |  Minor | action | Xiaobin Zheng | Xiaobin Zheng |
| [OOZIE-2802](https://issues.apache.org/jira/browse/OOZIE-2802) | Spark action failure on Spark 2.1.0 due to duplicate sharelibs |  Major | . | Satish Subhashrao Saley | Peter Cseh |
| [OOZIE-2811](https://issues.apache.org/jira/browse/OOZIE-2811) | Add support for filtering out properties from SparkConfigurationService |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-1887](https://issues.apache.org/jira/browse/OOZIE-1887) | Remove the utils dir |  Major | . | Robert Kanter | Kevin Trieu |
| [OOZIE-2807](https://issues.apache.org/jira/browse/OOZIE-2807) | Oozie gets RM delegation token even for checking job status |  Major | . | Rohini Palaniswamy | Satish Subhashrao Saley |
| [OOZIE-2750](https://issues.apache.org/jira/browse/OOZIE-2750) | Spelling errors in the log messages and exception messages |  Trivial | client, core, tools | Grant Sohn | Grant Sohn |
| [OOZIE-2819](https://issues.apache.org/jira/browse/OOZIE-2819) | Make Oozie REST API accept multibyte characters for script Actions |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2813](https://issues.apache.org/jira/browse/OOZIE-2813) | Remove tabs and trailing whitespaces from oozie-defaul.xml |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2816](https://issues.apache.org/jira/browse/OOZIE-2816) | Strip out the first command word from Sqoop action if its "sqoop" |  Trivial | action | Harsh J | Harsh J |
| [OOZIE-2820](https://issues.apache.org/jira/browse/OOZIE-2820) | Fix more spelling errors in exceptions and logging |  Trivial | core | Grant Sohn | Laszlo Zeke |
| [OOZIE-2835](https://issues.apache.org/jira/browse/OOZIE-2835) | TestIOUtils shall not be an XTestCase |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2817](https://issues.apache.org/jira/browse/OOZIE-2817) | Increase test case stability in pre-commit job |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2739](https://issues.apache.org/jira/browse/OOZIE-2739) | Remove property expansion pattern from ShellMain's log4j properties content |  Minor | action | Harsh J | Harsh J |
| [OOZIE-2850](https://issues.apache.org/jira/browse/OOZIE-2850) | Fix default callback notifications |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2457](https://issues.apache.org/jira/browse/OOZIE-2457) | Oozie log parsing regex consume more than 90% cpu |  Blocker | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2862](https://issues.apache.org/jira/browse/OOZIE-2862) | Coord change command doesn't change job to running if job was killed without creating any actions |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2864](https://issues.apache.org/jira/browse/OOZIE-2864) | Maven artifacts for package com.codahale.metrics have inconsistent groupId |  Major | . | Andras Piros | Andras Piros |
| [OOZIE-2818](https://issues.apache.org/jira/browse/OOZIE-2818) | Can't overwrite oozie.action.max.output.data on a per-workflow basis |  Major | . | Peter Cseh | Attila Sasvari |
| [OOZIE-2870](https://issues.apache.org/jira/browse/OOZIE-2870) | non working examples in oozie documentation coordinator spec |  Major | docs | Clemens Valiente | Andras Piros |
| [OOZIE-2751](https://issues.apache.org/jira/browse/OOZIE-2751) | LocalOozieClient is missing methods from OozieClient |  Major | . | Robert Kanter | Abhishek Bafna |
| [OOZIE-2824](https://issues.apache.org/jira/browse/OOZIE-2824) | Fix typos in documentation |  Trivial | . | Laszlo Zeke | Laszlo Zeke |
| [OOZIE-2872](https://issues.apache.org/jira/browse/OOZIE-2872) | Address backward compatibility issue introduced by OOZIE-2748 |  Major | . | Peter Bacsko | Peter Bacsko |
| [OOZIE-2908](https://issues.apache.org/jira/browse/OOZIE-2908) | Fix typo in oozie.actions.null.args.allowed property in oozie-default.xml |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2317](https://issues.apache.org/jira/browse/OOZIE-2317) | Figure out what to do about Tomcat 6 End of Life |  Major | core | Robert Kanter |  |
| [OOZIE-2917](https://issues.apache.org/jira/browse/OOZIE-2917) | duplicate declaration warning for io.dropwizard.metrics:metrics-core |  Trivial | core | Artem Ervits | Artem Ervits |
| [OOZIE-2886](https://issues.apache.org/jira/browse/OOZIE-2886) | Ensure consistent versioning of hadoop jars in sharelibs |  Major | build | Robert Kanter | Artem Ervits |
| [OOZIE-2928](https://issues.apache.org/jira/browse/OOZIE-2928) | Unit Tests using LocalOozie fail randomly |  Major | core | Denes Bodo | Denes Bodo |
| [OOZIE-2950](https://issues.apache.org/jira/browse/OOZIE-2950) | TestOozieCLI.testSlaEvents is not testing SLAServlet. |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2902](https://issues.apache.org/jira/browse/OOZIE-2902) | org.apache.oozie.action.hadoop.TestJavaActionExecutor fails after hadoop 2.6 upgrade |  Blocker | core | Artem Ervits | Artem Ervits |
| [OOZIE-2815](https://issues.apache.org/jira/browse/OOZIE-2815) | Oozie not always display job log |  Major | . | Purshotam Shah | Andras Piros |
| [OOZIE-2796](https://issues.apache.org/jira/browse/OOZIE-2796) | oozie.action.keep.action.dir not getting noticed |  Major | . | Andras Piros | Xiaobin Zheng |
| [OOZIE-2846](https://issues.apache.org/jira/browse/OOZIE-2846) | TestSSLServerConnectorFactory fails with Jetty 9.3 and 9.4 |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2794](https://issues.apache.org/jira/browse/OOZIE-2794) | Hive and Pig tests failing when multiple pre-commit jobs are running |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2884](https://issues.apache.org/jira/browse/OOZIE-2884) | consolidate hadoop versions in pomfiles |  Major | . | Peter Cseh | Artem Ervits |
| [OOZIE-2733](https://issues.apache.org/jira/browse/OOZIE-2733) | change org.apache.hadoop.fs.permission.AccessControlException to org.apache.hadoop.security.AccessControlException |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2987](https://issues.apache.org/jira/browse/OOZIE-2987) | Coord action missing dependencies should show URI template with unresolved dependencies |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-3004](https://issues.apache.org/jira/browse/OOZIE-3004) | Forked action retry info is not working |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2662](https://issues.apache.org/jira/browse/OOZIE-2662) | DB migration fails if database is too big |  Major | . | Peter Cseh | Andras Piros |
| [OOZIE-3018](https://issues.apache.org/jira/browse/OOZIE-3018) | Use Hadoop's CredentialProvider for passwords in SchemaCheckerService |  Major | . | Andras Piros | Andras Piros |
| [OOZIE-3019](https://issues.apache.org/jira/browse/OOZIE-3019) | Remove getPasswordMethod in ConfigurationService |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2974](https://issues.apache.org/jira/browse/OOZIE-2974) | Change TestLiteWorkflowAppParser so that it works with Hadoop 3 |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-3021](https://issues.apache.org/jira/browse/OOZIE-3021) | Error on job or SLA event listening: WARN logs instead of DEBUG |  Major | core | Andras Piros | Andras Piros |
| [OOZIE-2852](https://issues.apache.org/jira/browse/OOZIE-2852) | Remove simple-json dependency from oozie sharelib |  Major | . | Peter Cseh | Artem Ervits |
| [OOZIE-2999](https://issues.apache.org/jira/browse/OOZIE-2999) | minioozie can't compile |  Major | tests | Artem Ervits | Artem Ervits |
| [OOZIE-3009](https://issues.apache.org/jira/browse/OOZIE-3009) | Number of Oozie tests executed dropped after OOZIE-2854 |  Blocker | . | Attila Sasvari | Andras Piros |
| [OOZIE-2608](https://issues.apache.org/jira/browse/OOZIE-2608) | Comma in oozie.service.JPAService.jdbc.password value results in authentication error |  Minor | core | Nikolai Grigoriev | Peter Cseh |
| [OOZIE-2670](https://issues.apache.org/jira/browse/OOZIE-2670) | Upgrade Hbase to 1.2 |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-3028](https://issues.apache.org/jira/browse/OOZIE-3028) | Oozie Pig Action fails with no python dependencies |  Major | build | Prabhu Joseph | Artem Ervits |
| [OOZIE-3036](https://issues.apache.org/jira/browse/OOZIE-3036) | Spark 2.2.0 support: tell Spark not to get any delegation tokens |  Major | . | Andras Piros | Andras Piros |
| [OOZIE-2940](https://issues.apache.org/jira/browse/OOZIE-2940) | Possible NullPointerException in WorkflowActionBean |  Major | workflow | AppChecker | Denes Bodo |
| [OOZIE-3026](https://issues.apache.org/jira/browse/OOZIE-3026) | fix openjpa enhancer stage during build for logging |  Minor | core | Artem Ervits | Artem Ervits |
| [OOZIE-3035](https://issues.apache.org/jira/browse/OOZIE-3035) | HDFS HA and log aggregation: getting HDFS delegation token from YARN renewer within JavaActionExecutor |  Major | . | Andras Piros | Andras Piros |
| [OOZIE-2858](https://issues.apache.org/jira/browse/OOZIE-2858) | HiveMain, ShellMain and SparkMain should not overwrite properties and config files locally |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-3070](https://issues.apache.org/jira/browse/OOZIE-3070) | Remove references to org.mortbay.jetty |  Major | core | Peter Bacsko | Peter Bacsko |
| [OOZIE-3072](https://issues.apache.org/jira/browse/OOZIE-3072) | oozie.service.HadoopAccessorService.action.configurations  should overwrite default values set in Hadoop's configuration files |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-3075](https://issues.apache.org/jira/browse/OOZIE-3075) | Follow-up on OOZIE-3054: create the lib directory if it doesn't exist |  Major | core | Peter Bacsko | Peter Bacsko |
| [OOZIE-3082](https://issues.apache.org/jira/browse/OOZIE-3082) | Move org.apache.oozie.action.hadoop.ActionStats to Oozie ShareLib |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-3081](https://issues.apache.org/jira/browse/OOZIE-3081) | testSubmitWithLauncherQueue fails when FairScheduler is used |  Trivial | tests | Attila Sasvari | Attila Sasvari |
| [OOZIE-2978](https://issues.apache.org/jira/browse/OOZIE-2978) | Remove code that handles Pig versions before 0.8 |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-3095](https://issues.apache.org/jira/browse/OOZIE-3095) | Job submit command is not logged in audit log |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-3096](https://issues.apache.org/jira/browse/OOZIE-3096) | Pre-commit job is timing out regularly |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2929](https://issues.apache.org/jira/browse/OOZIE-2929) | Coordinator SLA should support configuration variable |  Major | coordinator | Chi Wen | Chi Wen |
| [OOZIE-3100](https://issues.apache.org/jira/browse/OOZIE-3100) | Upgrade javax.mail:mail to 1.4.7 |  Major | core | Andras Piros | Andras Piros |
| [OOZIE-3097](https://issues.apache.org/jira/browse/OOZIE-3097) | Change version in pom in master to 5.0.0-beta1 |  Blocker | . | Peter Cseh | Artem Ervits |
| [OOZIE-3084](https://issues.apache.org/jira/browse/OOZIE-3084) | Add missing JVM properties to Jetty startup script |  Blocker | scripts | Andras Piros | Andras Piros |
| [OOZIE-3102](https://issues.apache.org/jira/browse/OOZIE-3102) | External Link to "EL Expression Language Quick Reference" not found |  Trivial | docs | David Eigenstuhler | Attila Sasvari |
| [OOZIE-2997](https://issues.apache.org/jira/browse/OOZIE-2997) | files contain trailing white spaces in client lib |  Major | client | Artem Ervits | Artem Ervits |
| [OOZIE-3106](https://issues.apache.org/jira/browse/OOZIE-3106) | upgrade surefire-plugin to 2.20.1 |  Minor | tests | Artem Ervits | Artem Ervits |
| [OOZIE-3125](https://issues.apache.org/jira/browse/OOZIE-3125) | TestDBLoadDump.testImportInvalidDataLeavesTablesEmpty fails |  Minor | tests | Attila Sasvari | Attila Sasvari |
| [OOZIE-3112](https://issues.apache.org/jira/browse/OOZIE-3112) | SparkConfigrationService overwrites properties provided via --properties-file option in SparkAction |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-3139](https://issues.apache.org/jira/browse/OOZIE-3139) | Oozie validates workflow incorrectly |  Critical | core | Denes Bodo | Denes Bodo |
| [OOZIE-3127](https://issues.apache.org/jira/browse/OOZIE-3127) | Remove redundant check for user |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-3143](https://issues.apache.org/jira/browse/OOZIE-3143) | AG\_Install.twiki needs some refinement |  Minor | docs | Julia Kinga Marton | Julia Kinga Marton |
| [OOZIE-3142](https://issues.apache.org/jira/browse/OOZIE-3142) | Integer Overflows in Purge retentionTime |  Major | core | Prabhu Joseph | Prabhu Joseph |
| [OOZIE-3083](https://issues.apache.org/jira/browse/OOZIE-3083) | Make improved version Info backward compatible |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-3159](https://issues.apache.org/jira/browse/OOZIE-3159) | Spark Action fails because of absence of hadoop mapreduce jar(s) |  Blocker | . | Satish Subhashrao Saley | Attila Sasvari |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2959](https://issues.apache.org/jira/browse/OOZIE-2959) | TestTimestampedMessageParser fails in Oozie Core |  Major | tests | Parita Johari |  |
| [OOZIE-2958](https://issues.apache.org/jira/browse/OOZIE-2958) | TestLauncherAM fails in Share Lib Oozie |  Major | tests | Parita Johari | Peter Bacsko |
| [OOZIE-2746](https://issues.apache.org/jira/browse/OOZIE-2746) | Several tests failure in TestV2ValidateServlet.java |  Major | tests | Dongying Jiao | Dongying Jiao |
| [OOZIE-3041](https://issues.apache.org/jira/browse/OOZIE-3041) | TestWorkflowActionRetryInfoXCommand fails in oozie core module. |  Minor | tests | Parita Johari | Andras Piros |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2590](https://issues.apache.org/jira/browse/OOZIE-2590) | OYA: Create basic Oozie Launcher Application Master |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2593](https://issues.apache.org/jira/browse/OOZIE-2593) | OYA: DistCp Action |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2597](https://issues.apache.org/jira/browse/OOZIE-2597) | OYA: Sqoop Action |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2595](https://issues.apache.org/jira/browse/OOZIE-2595) | OYA: Pig Action |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2599](https://issues.apache.org/jira/browse/OOZIE-2599) | OYA: Hive Action |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2596](https://issues.apache.org/jira/browse/OOZIE-2596) | OYA: Spark Action |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2591](https://issues.apache.org/jira/browse/OOZIE-2591) | OYA: Java Action |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2594](https://issues.apache.org/jira/browse/OOZIE-2594) | OYA: MapReduce Action |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2598](https://issues.apache.org/jira/browse/OOZIE-2598) | OYA: Shell Action |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2666](https://issues.apache.org/jira/browse/OOZIE-2666) | Support embedding Jetty into Oozie |  Major | core | Attila Sasvari | Attila Sasvari |
| [OOZIE-2609](https://issues.apache.org/jira/browse/OOZIE-2609) | OYA: Recovery ID |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2592](https://issues.apache.org/jira/browse/OOZIE-2592) | OYA: Hive2 Action |  Major | . | Robert Kanter | Peter Bacsko |
| [OOZIE-2741](https://issues.apache.org/jira/browse/OOZIE-2741) |  Remove Tomcat |  Major | core | Attila Sasvari | Attila Sasvari |
| [OOZIE-2519](https://issues.apache.org/jira/browse/OOZIE-2519) | Oozie HA with SSL info is slightly incorrect |  Major | docs | Robert Kanter | Andras Piros |
| [OOZIE-2753](https://issues.apache.org/jira/browse/OOZIE-2753) | Update Docs for Jetty Tomcat changes |  Major | docs | Robert Kanter | Attila Sasvari |
| [OOZIE-1283](https://issues.apache.org/jira/browse/OOZIE-1283) | Remove the old ssh documentation |  Minor | docs | Robert Kanter | Jan Hentschel |
| [OOZIE-2875](https://issues.apache.org/jira/browse/OOZIE-2875) | Typo in ssh action twiki docs |  Minor | docs | Dongying Jiao | Dongying Jiao |
| [OOZIE-2747](https://issues.apache.org/jira/browse/OOZIE-2747) | README.txt is out of date |  Major | docs | Robert Kanter | Jan Hentschel |
| [OOZIE-2825](https://issues.apache.org/jira/browse/OOZIE-2825) | Custom Authentication doc page is not well formatted |  Minor | . | Laszlo Zeke | Jan Hentschel |
| [OOZIE-2935](https://issues.apache.org/jira/browse/OOZIE-2935) | Fix "concatenates strings using + in a loop" Findbugs error in oozie-sharelib-streaming |  Major | build | Jan Hentschel | Jan Hentschel |
| [OOZIE-2939](https://issues.apache.org/jira/browse/OOZIE-2939) | Fix Findbugs warnings related to reliance on default encoding in oozie-sharelib-hive2 module |  Major | build | Jan Hentschel | Jan Hentschel |
| [OOZIE-2938](https://issues.apache.org/jira/browse/OOZIE-2938) | Fix Findbugs warnings in oozie-sharelib-hive module |  Major | build | Jan Hentschel | Jan Hentschel |
| [OOZIE-2944](https://issues.apache.org/jira/browse/OOZIE-2944) | Shell action example does not work with Oozie on Yarn on hadoop 2.6 |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2943](https://issues.apache.org/jira/browse/OOZIE-2943) | Fix Findbugs warnings in oozie-sharelib-pig |  Major | build | Jan Hentschel | Jan Hentschel |
| [OOZIE-2849](https://issues.apache.org/jira/browse/OOZIE-2849) | Fix build warnings when assembling directories |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-2918](https://issues.apache.org/jira/browse/OOZIE-2918) | Delete LauncherMapper and its test |  Major | . | Peter Cseh | Attila Sasvari |
| [OOZIE-2911](https://issues.apache.org/jira/browse/OOZIE-2911) | Re-add test testWfActionKillChildJob and adapt it to OYA |  Major | . | Peter Bacsko | Peter Cseh |
| [OOZIE-2371](https://issues.apache.org/jira/browse/OOZIE-2371) | Add docs for state transitions for WF Action states |  Blocker | docs | Robert Kanter | Daniel Becker |
| [OOZIE-3013](https://issues.apache.org/jira/browse/OOZIE-3013) | Bump java version in pre-commit job to 1.8 |  Major | core | Peter Cseh | Peter Cseh |
| [OOZIE-2995](https://issues.apache.org/jira/browse/OOZIE-2995) | In preparation for Java 8, remove MaxPermSize=512m |  Blocker | . | Artem Ervits | Artem Ervits |
| [OOZIE-2910](https://issues.apache.org/jira/browse/OOZIE-2910) | Re-add testChildKill and adapt it to OYA |  Major | . | Peter Bacsko | Peter Bacsko |
| [OOZIE-2961](https://issues.apache.org/jira/browse/OOZIE-2961) | build contains multiple warnings for is not a parameter name |  Trivial | docs | Artem Ervits | Artem Ervits |
| [OOZIE-2960](https://issues.apache.org/jira/browse/OOZIE-2960) | Fix warnings for @return tag has no arguments |  Trivial | docs | Artem Ervits | Artem Ervits |
| [OOZIE-2977](https://issues.apache.org/jira/browse/OOZIE-2977) | Fix javadoc error: self-closing element not allowed |  Trivial | . | Artem Ervits | Artem Ervits |
| [OOZIE-2931](https://issues.apache.org/jira/browse/OOZIE-2931) | Fix warnings during build for "no @param for" |  Trivial | action, client, core | Artem Ervits | Artem Ervits |
| [OOZIE-3011](https://issues.apache.org/jira/browse/OOZIE-3011) | API for workflows: decision nodes autogeneration (simple cases) |  Major | client | Andras Piros | Daniel Becker |
| [OOZIE-2916](https://issues.apache.org/jira/browse/OOZIE-2916) | Set a job name for the MR Action's child job |  Major | action | Robert Kanter | Attila Sasvari |
| [OOZIE-2687](https://issues.apache.org/jira/browse/OOZIE-2687) | Create XML schema for launcher configurations |  Critical | . | Peter Cseh | Attila Sasvari |
| [OOZIE-2909](https://issues.apache.org/jira/browse/OOZIE-2909) | LauncherAM: rewrite UGI calls |  Blocker | . | Peter Bacsko | Andras Piros |
| [OOZIE-2896](https://issues.apache.org/jira/browse/OOZIE-2896) | Ensure compatibility for existing LauncherMapper settings |  Blocker | . | Peter Bacsko | Andras Piros |
| [OOZIE-2962](https://issues.apache.org/jira/browse/OOZIE-2962) | bump maven-javadoc-plugin to 2.10.4 |  Trivial | . | Artem Ervits | Artem Ervits |
| [OOZIE-2897](https://issues.apache.org/jira/browse/OOZIE-2897) | LauncherAM should support ACLs |  Blocker | . | Peter Bacsko | Peter Bacsko |
| [OOZIE-2996](https://issues.apache.org/jira/browse/OOZIE-2996) | Add options for GC overhead limit error to maven.test.java.opts |  Major | build | Artem Ervits | Artem Ervits |
| [OOZIE-3001](https://issues.apache.org/jira/browse/OOZIE-3001) | Core has many Javadoc warnings (lines with trailing spaces and longer than 132 chars) |  Major | . | Artem Ervits | Artem Ervits |
| [OOZIE-3022](https://issues.apache.org/jira/browse/OOZIE-3022) | fix for warning has no file and won't be listed in dependency files details |  Trivial | . | Artem Ervits | Artem Ervits |
| [OOZIE-2964](https://issues.apache.org/jira/browse/OOZIE-2964) | Add -Xdoclint:all to javadoc opts |  Minor | . | Artem Ervits | Artem Ervits |
| [OOZIE-3107](https://issues.apache.org/jira/browse/OOZIE-3107) | org.apache.oozie.action.hadoop.TestHiveMain#testMain is flaky |  Major | tests | Artem Ervits | Artem Ervits |
| [OOZIE-3114](https://issues.apache.org/jira/browse/OOZIE-3114) | Fix javadoc for warning: no @return |  Trivial | . | Artem Ervits | Artem Ervits |
| [OOZIE-2900](https://issues.apache.org/jira/browse/OOZIE-2900) | Retrieve tokens for oozie.launcher.mapreduce.job.hdfs-servers before submission |  Major | . | Peter Bacsko | Attila Sasvari |
| [OOZIE-2904](https://issues.apache.org/jira/browse/OOZIE-2904) | cancel delegation tokens after an action is finished |  Major | . | Peter Cseh |  |
| [OOZIE-2681](https://issues.apache.org/jira/browse/OOZIE-2681) | fix javadoc to compile on JDK8 again |  Critical | build | Robert Kanter | Peter Cseh |
| [OOZIE-2869](https://issues.apache.org/jira/browse/OOZIE-2869) | Ability to add/remove MapReduce jars from action classpath. |  Major | action | Andras Piros | Andras Piros |
| [OOZIE-1401](https://issues.apache.org/jira/browse/OOZIE-1401) | PurgeCommand should purge the workflow jobs w/o end\_time |  Major | bundle, coordinator, workflow | Mona Chitnis | Attila Sasvari |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2540](https://issues.apache.org/jira/browse/OOZIE-2540) | Create a PySpark example |  Major | examples | Robert Kanter | Abhishek Bafna |
| [OOZIE-2926](https://issues.apache.org/jira/browse/OOZIE-2926) | Update Oozie version to 5.0.0-SNAPSHOT |  Blocker | . | Robert Kanter | Artem Ervits |
| [OOZIE-2936](https://issues.apache.org/jira/browse/OOZIE-2936) | Fix Javadoc warnings from build |  Minor | build | Jan Hentschel | Jan Hentschel |
| [OOZIE-2946](https://issues.apache.org/jira/browse/OOZIE-2946) | Include find-sec-bugs plugin |  Minor | build, security | Jan Hentschel | Jan Hentschel |
| [OOZIE-2061](https://issues.apache.org/jira/browse/OOZIE-2061) | Remove CoordJobDeleteJPAExecutor |  Trivial | . | Shwetha G S | Artem Ervits |
| [OOZIE-2945](https://issues.apache.org/jira/browse/OOZIE-2945) | Update SpotBugs to stable version after GA |  Minor | build | Jan Hentschel | Artem Ervits |


