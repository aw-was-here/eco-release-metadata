
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

## Release 4.3.1 - Unreleased (as of 2018-02-01)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2984](https://issues.apache.org/jira/browse/OOZIE-2984) | Parse spark-defaults.conf values with spaces without needing the quotes |  Major | . | Fahd Siddiqui | Andras Piros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2786](https://issues.apache.org/jira/browse/OOZIE-2786) | Pass Oozie workflow ID and settings to Spark application configuration |  Critical | action | Xiaobin Zheng | Xiaobin Zheng |
| [OOZIE-2923](https://issues.apache.org/jira/browse/OOZIE-2923) | Improve Spark options parsing |  Major | action | Andras Piros | Andras Piros |
| [OOZIE-3126](https://issues.apache.org/jira/browse/OOZIE-3126) | Add option to allow list of users to access system config |  Major | . | Rohini Palaniswamy | Satish Subhashrao Saley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2690](https://issues.apache.org/jira/browse/OOZIE-2690) | OOZIE NPE while executing kill() |  Major | . | Cheng Xu | Abhishek Bafna |
| [OOZIE-2533](https://issues.apache.org/jira/browse/OOZIE-2533) | Oozie Web UI gives Error 500 with Java 8u91 |  Major | . | Robert Kanter | Attila Sasvari |
| [OOZIE-2654](https://issues.apache.org/jira/browse/OOZIE-2654) | Zookeeper dependent services should not depend on Connectionstate to be valid before cleaning up |  Major | HA | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2748](https://issues.apache.org/jira/browse/OOZIE-2748) | NPE in LauncherMapper.printArgs() |  Major | core | Peter Bacsko | Peter Bacsko |
| [OOZIE-2777](https://issues.apache.org/jira/browse/OOZIE-2777) | Config-default.xml longer than 64k results in  java.io.UTFDataFormatException |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2799](https://issues.apache.org/jira/browse/OOZIE-2799) | Setting log location for spark sql on hive |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2790](https://issues.apache.org/jira/browse/OOZIE-2790) | log4j configuration is not passed to spark executors |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2787](https://issues.apache.org/jira/browse/OOZIE-2787) | Oozie distributes application jar twice making the spark job fail |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2803](https://issues.apache.org/jira/browse/OOZIE-2803) | Mask passwords when printing out configs/args in MapReduceMain and SparkMain |  Critical | action | Peter Bacsko | Peter Bacsko |
| [OOZIE-2792](https://issues.apache.org/jira/browse/OOZIE-2792) | Hive2 action is not parsing Spark application ID from log file properly when Hive is on Spark |  Minor | action | Xiaobin Zheng | Xiaobin Zheng |
| [OOZIE-2802](https://issues.apache.org/jira/browse/OOZIE-2802) | Spark action failure on Spark 2.1.0 due to duplicate sharelibs |  Major | . | Satish Subhashrao Saley | Peter Cseh |
| [OOZIE-2811](https://issues.apache.org/jira/browse/OOZIE-2811) | Add support for filtering out properties from SparkConfigurationService |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2807](https://issues.apache.org/jira/browse/OOZIE-2807) | Oozie gets RM delegation token even for checking job status |  Major | . | Rohini Palaniswamy | Satish Subhashrao Saley |
| [OOZIE-2862](https://issues.apache.org/jira/browse/OOZIE-2862) | Coord change command doesn't change job to running if job was killed without creating any actions |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2863](https://issues.apache.org/jira/browse/OOZIE-2863) | SLACalculatorMemory.loadOnRestart causing delay in server start |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2872](https://issues.apache.org/jira/browse/OOZIE-2872) | Address backward compatibility issue introduced by OOZIE-2748 |  Major | . | Peter Bacsko | Peter Bacsko |
| [OOZIE-2886](https://issues.apache.org/jira/browse/OOZIE-2886) | Ensure consistent versioning of hadoop jars in sharelibs |  Major | build | Robert Kanter | Artem Ervits |
| [OOZIE-3028](https://issues.apache.org/jira/browse/OOZIE-3028) | Oozie Pig Action fails with no python dependencies |  Major | build | Prabhu Joseph | Artem Ervits |
| [OOZIE-3036](https://issues.apache.org/jira/browse/OOZIE-3036) | Spark 2.2.0 support: tell Spark not to get any delegation tokens |  Major | . | Andras Piros | Andras Piros |
| [OOZIE-3058](https://issues.apache.org/jira/browse/OOZIE-3058) | nocleanup option is missing in oozie-coordinator-0.5.xsd |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2885](https://issues.apache.org/jira/browse/OOZIE-2885) | Running Spark actions should not need Hive on the classpath |  Critical | . | Peter Cseh | Satish Subhashrao Saley |
| [OOZIE-3078](https://issues.apache.org/jira/browse/OOZIE-3078) | PasswordMasker throws NPE with null arguments |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-3079](https://issues.apache.org/jira/browse/OOZIE-3079) | Filtering coordinators returns bundle id as null |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-3031](https://issues.apache.org/jira/browse/OOZIE-3031) | Coord job with only unresolved dependencies doesn't timeout |  Critical | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-3077](https://issues.apache.org/jira/browse/OOZIE-3077) | SLA documentation fixes |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-3095](https://issues.apache.org/jira/browse/OOZIE-3095) | Job submit command is not logged in audit log |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-3100](https://issues.apache.org/jira/browse/OOZIE-3100) | Upgrade javax.mail:mail to 1.4.7 |  Major | core | Andras Piros | Andras Piros |
| [OOZIE-3127](https://issues.apache.org/jira/browse/OOZIE-3127) | Remove redundant check for user |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-3161](https://issues.apache.org/jira/browse/OOZIE-3161) | Spark job failing because of servlet-api-2.5 jar |  Blocker | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-3167](https://issues.apache.org/jira/browse/OOZIE-3167) | Upgrade tomcat version on Oozie 4.3 branch |  Blocker | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-3171](https://issues.apache.org/jira/browse/OOZIE-3171) | Revert OOZIE-2771 commit on branch-4.3 |  Blocker | . | Satish Subhashrao Saley | Satish Subhashrao Saley |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2747](https://issues.apache.org/jira/browse/OOZIE-2747) | README.txt is out of date |  Major | docs | Robert Kanter | Jan Hentschel |
| [OOZIE-2825](https://issues.apache.org/jira/browse/OOZIE-2825) | Custom Authentication doc page is not well formatted |  Minor | . | Laszlo Zeke | Jan Hentschel |


