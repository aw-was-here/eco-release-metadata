
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

## Release 5.0.0 - Unreleased (as of 2017-01-19)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2245](https://issues.apache.org/jira/browse/OOZIE-2245) | Service to periodically check database schema |  Major | core | Robert Kanter | Robert Kanter |


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


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2666](https://issues.apache.org/jira/browse/OOZIE-2666) | Support embedding Jetty into Oozie |  Major | core | Attila Sasvari | Attila Sasvari |
| [OOZIE-2741](https://issues.apache.org/jira/browse/OOZIE-2741) |  Remove Tomcat |  Major | core | Attila Sasvari | Attila Sasvari |
| [OOZIE-2519](https://issues.apache.org/jira/browse/OOZIE-2519) | Oozie HA with SSL info is slightly incorrect |  Major | docs | Robert Kanter | Andras Piros |


