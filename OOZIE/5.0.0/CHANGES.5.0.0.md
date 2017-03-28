
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

## Release 5.0.0 - Unreleased (as of 2017-03-28)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2245](https://issues.apache.org/jira/browse/OOZIE-2245) | Service to periodically check database schema |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2630](https://issues.apache.org/jira/browse/OOZIE-2630) | Oozie Coordinator EL Functions to get first day of the week/month |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2041](https://issues.apache.org/jira/browse/OOZIE-2041) | Add an admin command to run the PurgeXCommand |  Major | core | Robert Kanter | Abhishek Bafna |


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


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
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


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2666](https://issues.apache.org/jira/browse/OOZIE-2666) | Support embedding Jetty into Oozie |  Major | core | Attila Sasvari | Attila Sasvari |
| [OOZIE-2741](https://issues.apache.org/jira/browse/OOZIE-2741) |  Remove Tomcat |  Major | core | Attila Sasvari | Attila Sasvari |
| [OOZIE-2519](https://issues.apache.org/jira/browse/OOZIE-2519) | Oozie HA with SSL info is slightly incorrect |  Major | docs | Robert Kanter | Andras Piros |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2540](https://issues.apache.org/jira/browse/OOZIE-2540) | Create a PySpark example |  Major | examples | Robert Kanter | Abhishek Bafna |


