
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

## Release 0.6.0 - 2015-01-23

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1696](https://issues.apache.org/jira/browse/TEZ-1696) | Make Tez use the domain-based timeline ACLs |  Major | . | Jonathan Eagles | Hitesh Shah |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1915](https://issues.apache.org/jira/browse/TEZ-1915) | Add public key to KEYS |  Blocker | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1785](https://issues.apache.org/jira/browse/TEZ-1785) | Remove unused snappy-java dependency |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [TEZ-1773](https://issues.apache.org/jira/browse/TEZ-1773) | Add attempt failure cause enum to the attempt failed/killed history record |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1738](https://issues.apache.org/jira/browse/TEZ-1738) | tez tfile parser for log parsing |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1576](https://issues.apache.org/jira/browse/TEZ-1576) | Class level comment in {{MiniTezCluster}} ends abruptly |  Trivial | . | Ufuk Celebi | Saurabh Chhajed |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1968](https://issues.apache.org/jira/browse/TEZ-1968) | Tez UI - All vertices of DAG are not listed in vertices page |  Blocker | . | Rajesh Balamohan | Prakash Ramachandran |
| [TEZ-1938](https://issues.apache.org/jira/browse/TEZ-1938) | Build warning duplicate jersey-json definitions |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1925](https://issues.apache.org/jira/browse/TEZ-1925) | Remove npm WARN messages from the Tez UI build process. |  Critical | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1910](https://issues.apache.org/jira/browse/TEZ-1910) | Build fails against hadoop-2.2.0 |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1890](https://issues.apache.org/jira/browse/TEZ-1890) | tez-ui web.tar.gz also being uploaded to maven repository |  Blocker | . | Hitesh Shah | Jonathan Eagles |
| [TEZ-1886](https://issues.apache.org/jira/browse/TEZ-1886) | remove deprecation warnings for tez-ui on the console |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1882](https://issues.apache.org/jira/browse/TEZ-1882) | Tez UI build does not work on Windows |  Blocker | . | Bikas Saha | Prakash Ramachandran |
| [TEZ-1875](https://issues.apache.org/jira/browse/TEZ-1875) | dropdown filters do not work on vertices and task attempts page |  Blocker | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1872](https://issues.apache.org/jira/browse/TEZ-1872) | docs/src/site/custom/project-info-report.properties needs license header |  Blocker | . | Hitesh Shah | Jonathan Eagles |
| [TEZ-1870](https://issues.apache.org/jira/browse/TEZ-1870) | Time displayed in the UI is in GMT |  Major | . | Siddharth Seth | Sreenath Somarajapuram |
| [TEZ-1868](https://issues.apache.org/jira/browse/TEZ-1868) | Document how to do Windows builds due to with ACL symlink build changes |  Critical | . | Bikas Saha | Hitesh Shah |
| [TEZ-1864](https://issues.apache.org/jira/browse/TEZ-1864) | move initialization code dependent on config params to App.ready |  Critical | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1863](https://issues.apache.org/jira/browse/TEZ-1863) | TEZ UI link is broken on site |  Major | . | Jeff Zhang | Hitesh Shah |
| [TEZ-1860](https://issues.apache.org/jira/browse/TEZ-1860) | mvn apache-rat:check broken for tez-ui |  Blocker | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1859](https://issues.apache.org/jira/browse/TEZ-1859) | TestGroupedSplits has commented out test: testGzip |  Minor | . | Hitesh Shah | Bikas Saha |
| [TEZ-1858](https://issues.apache.org/jira/browse/TEZ-1858) | Docs for deploying/using the Tez UI |  Blocker | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1850](https://issues.apache.org/jira/browse/TEZ-1850) | Enable deploy for tez-ui war |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1849](https://issues.apache.org/jira/browse/TEZ-1849) | Fix tez-ui war file licensing |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1847](https://issues.apache.org/jira/browse/TEZ-1847) | Fix package name for MiniTezClusterWithTimeline |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1846](https://issues.apache.org/jira/browse/TEZ-1846) | Build fails with package org.apache.tez.dag.history.logging.ats does not exist |  Blocker | . | Jonathan Eagles | Hitesh Shah |
| [TEZ-1841](https://issues.apache.org/jira/browse/TEZ-1841) | Remove range versions for dependencies in tez-ui |  Blocker | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1838](https://issues.apache.org/jira/browse/TEZ-1838) | tez-ui/src/main/webapp/bower.json gets updated after compiling source code |  Blocker | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1835](https://issues.apache.org/jira/browse/TEZ-1835) | TestFaultTolerance#testRandomFailingTasks is timing out |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1833](https://issues.apache.org/jira/browse/TEZ-1833) | Update Tez\_DOAP file for 0.5.x releases |  Critical | . | Hitesh Shah | Bikas Saha |
| [TEZ-1832](https://issues.apache.org/jira/browse/TEZ-1832) | TestSecureShuffle fails with NoClassDefFoundError: org/bouncycastle/x509/X509V1CertificateGenerator |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1824](https://issues.apache.org/jira/browse/TEZ-1824) | Update website after 0.5.3 |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1822](https://issues.apache.org/jira/browse/TEZ-1822) | Docs for Timeline/ACLs/HistoryText |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1816](https://issues.apache.org/jira/browse/TEZ-1816) | It is possible to receive START event when DAG is failed |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1805](https://issues.apache.org/jira/browse/TEZ-1805) | Tez client DAG cycle detection should detect self loops |  Major | . | Gunther Hagleitner | Jeff Zhang |
| [TEZ-1790](https://issues.apache.org/jira/browse/TEZ-1790) | DeallocationTaskRequest may been handled before corresponding AllocationTaskRequest in local mode |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1772](https://issues.apache.org/jira/browse/TEZ-1772) | Failing tests post TEZ-1737 |  Blocker | . | Hitesh Shah | Jeff Zhang |
| [TEZ-1769](https://issues.apache.org/jira/browse/TEZ-1769) | ContainerCompletedWhileRunningTransition should inherit from TerminatedWhileRunningTransition |  Major | . | Bikas Saha | Jeff Zhang |
| [TEZ-1762](https://issues.apache.org/jira/browse/TEZ-1762) | Lots of unit tests do not have timeout parameter set |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-1743](https://issues.apache.org/jira/browse/TEZ-1743) | Add versions-maven-plugins artifacts to gitignore |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1737](https://issues.apache.org/jira/browse/TEZ-1737) | Should add taskNum in VertexFinishedEvent |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1736](https://issues.apache.org/jira/browse/TEZ-1736) | Add support for Inputs/Outputs in runtime-library to generate history text data |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1733](https://issues.apache.org/jira/browse/TEZ-1733) | TezMerger should sort FileChunks on size when merging |  Critical | . | Gopal V | Prakash Ramachandran |
| [TEZ-1721](https://issues.apache.org/jira/browse/TEZ-1721) | Update INSTALL instructions for clarifying tez client jars compatibility with runtime tarball on HDFS |  Critical | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1697](https://issues.apache.org/jira/browse/TEZ-1697) | DAG submission fails if a local resource added is already part of tez.lib.uris |  Major | . | Rohini Palaniswamy | Siddharth Seth |
| [TEZ-1690](https://issues.apache.org/jira/browse/TEZ-1690) | TestMultiMRInput tests fail because of user collisions |  Major | . | Gopal V | Vasanth kumar RJ |
| [TEZ-1687](https://issues.apache.org/jira/browse/TEZ-1687) | Use logIdentifier of Vertex for logging |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1685](https://issues.apache.org/jira/browse/TEZ-1685) | Remove YARNMaster which is never used |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1672](https://issues.apache.org/jira/browse/TEZ-1672) | Update jetty to use stable 7.x version - 7.6.16.v20140903 |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1634](https://issues.apache.org/jira/browse/TEZ-1634) | BlockCompressorStream.finish() is called twice in IFile.close leading to Shuffle errors |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1627](https://issues.apache.org/jira/browse/TEZ-1627) | Remove OUTPUT\_CONSUMABLE and related Event in TaskAttemptImpl |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1610](https://issues.apache.org/jira/browse/TEZ-1610) | additional task counters for fetchers |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1252](https://issues.apache.org/jira/browse/TEZ-1252) | Change wording on http://tez.apache.org/team-list.html related to member confusion |  Critical | . | Hitesh Shah | Hitesh Shah |
| [TEZ-8](https://issues.apache.org/jira/browse/TEZ-8) | TEZ UI for progress tracking and history |  Major | . | Hitesh Shah | Jonathan Eagles |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1873](https://issues.apache.org/jira/browse/TEZ-1873) | TestTezAMRMClient fails due to host resolution timing out |  Major | . | Jeff Zhang | Hitesh Shah |
| [TEZ-1854](https://issues.apache.org/jira/browse/TEZ-1854) | Failing tests due to host resolution timing out |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1823](https://issues.apache.org/jira/browse/TEZ-1823) | default ATS url should be the same host as ui |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1820](https://issues.apache.org/jira/browse/TEZ-1820) | Fix wrong links |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1817](https://issues.apache.org/jira/browse/TEZ-1817) | Add configuration and build details to README |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1813](https://issues.apache.org/jira/browse/TEZ-1813) | display loading and other error messages in tez-ui |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1810](https://issues.apache.org/jira/browse/TEZ-1810) | Do not deploy tez-ui war to maven repo |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1809](https://issues.apache.org/jira/browse/TEZ-1809) | Provide a error bar to report errors to users in Tez-UI |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1801](https://issues.apache.org/jira/browse/TEZ-1801) | Update build instructions for tez-ui |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1799](https://issues.apache.org/jira/browse/TEZ-1799) | Enable Cross Origin Support in Tez UI |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1797](https://issues.apache.org/jira/browse/TEZ-1797) | Create necessary content for Tez DOAP file |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1794](https://issues.apache.org/jira/browse/TEZ-1794) | Vertex view needs a task attempt rollup |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1792](https://issues.apache.org/jira/browse/TEZ-1792) | Add input details to configurations view. |  Major | . | Sreenath Somarajapuram | Prakash Ramachandran |
| [TEZ-1791](https://issues.apache.org/jira/browse/TEZ-1791) | breadcrumbs for moving between pages. |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1789](https://issues.apache.org/jira/browse/TEZ-1789) | Move speculator processing off the central dispatcher |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1787](https://issues.apache.org/jira/browse/TEZ-1787) | Counters for speculation |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1784](https://issues.apache.org/jira/browse/TEZ-1784) | Attempt details in tasks table. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1783](https://issues.apache.org/jira/browse/TEZ-1783) | Wrapper in standalone mode. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1781](https://issues.apache.org/jira/browse/TEZ-1781) | Configurations view ~ New design |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1768](https://issues.apache.org/jira/browse/TEZ-1768) | follow up jira to address minor issues in Tez-ui |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1765](https://issues.apache.org/jira/browse/TEZ-1765) | allow dropdown lists in table filters |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1757](https://issues.apache.org/jira/browse/TEZ-1757) | Column selector for tables. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1753](https://issues.apache.org/jira/browse/TEZ-1753) | Queue in dags view. |  Minor | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1751](https://issues.apache.org/jira/browse/TEZ-1751) | Log view & download links in task and task attempt view. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1741](https://issues.apache.org/jira/browse/TEZ-1741) | App view. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1720](https://issues.apache.org/jira/browse/TEZ-1720) | Allow filters in all tables and also to pass in filters using url params |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1709](https://issues.apache.org/jira/browse/TEZ-1709) | Bunch of files in tez-ui missing Apache license header |  Major | . | Hitesh Shah | Sreenath Somarajapuram |
| [TEZ-1708](https://issues.apache.org/jira/browse/TEZ-1708) | Make UI part of TEZ build process |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1617](https://issues.apache.org/jira/browse/TEZ-1617) | Shim layer for Tez UI for use within Ambari |  Major | . | Jonathan Eagles | Sreenath Somarajapuram |
| [TEZ-1615](https://issues.apache.org/jira/browse/TEZ-1615) | Skeleton framework for Tez UI |  Major | . | Jonathan Eagles | Prakash Ramachandran |
| [TEZ-1606](https://issues.apache.org/jira/browse/TEZ-1606) | Counters View for DAG, Vertex, and Task |  Major | . | Jonathan Eagles | Prakash Ramachandran |
| [TEZ-1605](https://issues.apache.org/jira/browse/TEZ-1605) | Landing page for Tez UI |  Major | . | Jonathan Eagles | Prakash Ramachandran |
| [TEZ-1604](https://issues.apache.org/jira/browse/TEZ-1604) | Task View for Tez UI |  Major | . | Jonathan Eagles | Prakash Ramachandran |
| [TEZ-1603](https://issues.apache.org/jira/browse/TEZ-1603) | Vertex View for Tez UI |  Major | . | Jonathan Eagles | Sreenath Somarajapuram |
| [TEZ-1600](https://issues.apache.org/jira/browse/TEZ-1600) | Swimlanes View for Tez UI |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1591](https://issues.apache.org/jira/browse/TEZ-1591) | Add multiDAG session test and move TestLocalMode to tez-tests |  Major | . | Chen He | Chen He |
| [TEZ-1060](https://issues.apache.org/jira/browse/TEZ-1060) | Add randomness to fault tolerance tests |  Major | . | Tassapol Athiapinya | Tassapol Athiapinya |
| [TEZ-14](https://issues.apache.org/jira/browse/TEZ-14) | Support MR like speculation capabilities based on latency deviation from the mean |  Major | . | Bikas Saha | Bikas Saha |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1977](https://issues.apache.org/jira/browse/TEZ-1977) | Fixup CHANGES.txt with Tez UI jiras |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1866](https://issues.apache.org/jira/browse/TEZ-1866) | remove the "original" directory under tez-ui |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1848](https://issues.apache.org/jira/browse/TEZ-1848) | Apache jenkins builds failing |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1840](https://issues.apache.org/jira/browse/TEZ-1840) | Document TezTaskOutput |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1650](https://issues.apache.org/jira/browse/TEZ-1650) | Please create a DOAP file for your TLP |  Major | . | Sebb | Hitesh Shah |


