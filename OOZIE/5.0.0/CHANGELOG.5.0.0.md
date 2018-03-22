
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

## Release 5.0.0 - Unreleased (as of 2018-03-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2618](https://issues.apache.org/jira/browse/OOZIE-2618) | Include hive-common in hive-beeline as compile component for hive-server2 (hive2 action) |  Major | action | Taklon Stephen Wu | Taklon Stephen Wu |
| [OOZIE-3148](https://issues.apache.org/jira/browse/OOZIE-3148) | Rerun Failing Tests through Maven surefire |  Minor | tests | Attila Sasvari | Attila Sasvari |
| [OOZIE-3147](https://issues.apache.org/jira/browse/OOZIE-3147) | Misleading documentation of oozie.service.PurgeService.purge.limit configuration property |  Trivial | docs | Oleksandr Kalinin | Oleksandr Kalinin |
| [OOZIE-3121](https://issues.apache.org/jira/browse/OOZIE-3121) | bump all maven plugins to latest versions |  Major | . | Artem Ervits | Artem Ervits |
| [OOZIE-3172](https://issues.apache.org/jira/browse/OOZIE-3172) | Upgrade non-transitive Jackson dependencies from org.codehaus.jackson to com.fasterxml.jackson |  Major | core | Andras Piros | Andras Piros |
| [OOZIE-3183](https://issues.apache.org/jira/browse/OOZIE-3183) | Better logging for SshActionExecutor and extended HA capability when calling to remote host |  Major | action | Andras Piros | Andras Piros |
| [OOZIE-3189](https://issues.apache.org/jira/browse/OOZIE-3189) | Update the release script and wiki page to use sha512 instead of md5 |  Blocker | scripts | Robert Kanter | Robert Kanter |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3143](https://issues.apache.org/jira/browse/OOZIE-3143) | AG\_Install.twiki needs some refinement |  Minor | docs | Julia Kinga Marton | Julia Kinga Marton |
| [OOZIE-3142](https://issues.apache.org/jira/browse/OOZIE-3142) | Integer Overflows in Purge retentionTime |  Major | core | Prabhu Joseph | Prabhu Joseph |
| [OOZIE-2150](https://issues.apache.org/jira/browse/OOZIE-2150) | Shell launcher should print shell script |  Minor | . | Purshotam Shah | Jacob Tolar |
| [OOZIE-3083](https://issues.apache.org/jira/browse/OOZIE-3083) | Make improved version Info backward compatible |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-3085](https://issues.apache.org/jira/browse/OOZIE-3085) | Improve logging in ActionExecutors: add log entry for start(), end() and kill() |  Major | core | Peter Cseh | Julia Kinga Marton |
| [OOZIE-3145](https://issues.apache.org/jira/browse/OOZIE-3145) | \>git status\< should be clean after \>mvn test\< was called |  Major | tests | Attila Sasvari | Julia Kinga Marton |
| [OOZIE-2775](https://issues.apache.org/jira/browse/OOZIE-2775) | Oozie server does not stop if there is an exception during service initalization at startup |  Major | . | Attila Sasvari | Attila Sasvari |
| [OOZIE-3166](https://issues.apache.org/jira/browse/OOZIE-3166) | Remove tomcat alias from AG\_Install.twiki: To use a Self-Signed Certificate part |  Minor | docs | Julia Kinga Marton | Julia Kinga Marton |
| [OOZIE-3157](https://issues.apache.org/jira/browse/OOZIE-3157) | Setup truststore so that it also works in HTTP only mode |  Blocker | . | Attila Sasvari | Julia Kinga Marton |
| [OOZIE-2847](https://issues.apache.org/jira/browse/OOZIE-2847) | Oozie Ha timing issue |  Minor | HA | Péter Gergő Barna | Denes Bodo |
| [OOZIE-3173](https://issues.apache.org/jira/browse/OOZIE-3173) | Coordinator job with frequency using cron syntax creates only one action in catchup mode |  Major | coordinator | Andras Piros | Andras Piros |
| [OOZIE-3182](https://issues.apache.org/jira/browse/OOZIE-3182) | Oozie components fail with checkstyle errors |  Major | client, examples | Alisha Prabhu | Alisha Prabhu |
| [OOZIE-2957](https://issues.apache.org/jira/browse/OOZIE-2957) | Documentation states that starting a coordinator is possible |  Major | coordinator, docs | Jan Hentschel | Jan Hentschel |
| [OOZIE-3195](https://issues.apache.org/jira/browse/OOZIE-3195) | Typo in WebServicesAPI.twiki: Proxy Hive Job Submission |  Minor | docs | Julia Kinga Marton | Julia Kinga Marton |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2996](https://issues.apache.org/jira/browse/OOZIE-2996) | Add options for GC overhead limit error to maven.test.java.opts |  Major | build | Artem Ervits | Artem Ervits |
| [OOZIE-3017](https://issues.apache.org/jira/browse/OOZIE-3017) | API for workflows: other action types |  Major | client | Daniel Becker | Andras Piros |
| [OOZIE-3154](https://issues.apache.org/jira/browse/OOZIE-3154) | CLI: generate, check, submit and run workflow definitions based on API jars |  Major | client | Andras Piros | Andras Piros |
| [OOZIE-2585](https://issues.apache.org/jira/browse/OOZIE-2585) | Remove test case TestPartitionDependencyManagerEhcache.testMemoryUsageAndSpeedOverflowToDisk and testMemoryUsageAndSpeed |  Minor | . | Peter Bacsko | Peter Bacsko |
| [OOZIE-2814](https://issues.apache.org/jira/browse/OOZIE-2814) | OYA: Update example workflows to newest schemas |  Blocker | . | Robert Kanter | Attila Sasvari |
| [OOZIE-2600](https://issues.apache.org/jira/browse/OOZIE-2600) | OYA: Update Documentation |  Blocker | . | Robert Kanter | Andras Piros |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3163](https://issues.apache.org/jira/browse/OOZIE-3163) | Improve documentation rendering: use fluido skin and better config |  Major | docs | Hervé Boutemy | Hervé Boutemy |


