
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
# Apache Falcon Changelog

## Release 0.3 - 2013-08-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-47](https://issues.apache.org/jira/browse/FALCON-47) | Falcon Replication should support configurable delays in feed, parallel, timeout and bulk transfer with variable frequency |  Major | . | Shaik Idris Ali | Shaik Idris Ali |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-10](https://issues.apache.org/jira/browse/FALCON-10) | Add findbugs plugin and fix findbugs warnings for project |  Major | . | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-13](https://issues.apache.org/jira/browse/FALCON-13) | super pom must reflect license, project website, ML and SCM changes post incubation |  Minor | general | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-33](https://issues.apache.org/jira/browse/FALCON-33) | Add patch files to RAT ignore list |  Trivial | general | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [FALCON-4](https://issues.apache.org/jira/browse/FALCON-4) | Propose logo for Apache Falcon |  Major | . | Amareshwari Sriramadasu |  |
| [FALCON-23](https://issues.apache.org/jira/browse/FALCON-23) | Add website for Falcon |  Major | general | Venkatesh Seetharam | Srikanth Sundarrajan |
| [FALCON-29](https://issues.apache.org/jira/browse/FALCON-29) | Add ability to tag/classify data sets and processes to enable discovery |  Trivial | feed, process | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-1](https://issues.apache.org/jira/browse/FALCON-1) | Create packaging and scripts to install and try out Apache Falcon |  Critical | . | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-32](https://issues.apache.org/jira/browse/FALCON-32) | Store test output in file rather then printing all the output into the console |  Trivial | general | Jarek Jarcec Cecho | Srikanth Sundarrajan |
| [FALCON-30](https://issues.apache.org/jira/browse/FALCON-30) | Enable embedding pig scripts directly in a process |  Major | process | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-151](https://issues.apache.org/jira/browse/FALCON-151) | Document the REST APIs for Falcon |  Minor | docs | Venkatesh Seetharam | Raghav Kumar Gautam |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-22](https://issues.apache.org/jira/browse/FALCON-22) | Rename ivory to falcon in project |  Trivial | general | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-31](https://issues.apache.org/jira/browse/FALCON-31) | File Installation-steps.txt contains old path to repository |  Trivial | general | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [FALCON-8](https://issues.apache.org/jira/browse/FALCON-8) | http://incubator.apache.org/falcon does not work |  Critical | general | Nikhil Mulley | Venkatesh Seetharam |
| [FALCON-34](https://issues.apache.org/jira/browse/FALCON-34) | Minor corrections to falcon site |  Trivial | general | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-40](https://issues.apache.org/jira/browse/FALCON-40) | Dead link on Getting Started page |  Minor | docs | Ashish Paliwal | Srikanth Sundarrajan |
| [FALCON-45](https://issues.apache.org/jira/browse/FALCON-45) | Architecture diagram in Site / Docs still refer to Ivory |  Major | docs, general | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-41](https://issues.apache.org/jira/browse/FALCON-41) | Update Ivory references in images to Falcon on Architecture page |  Major | docs | Ashish Paliwal | Srikanth Sundarrajan |
| [FALCON-46](https://issues.apache.org/jira/browse/FALCON-46) | Flacon's instance retry service may hang because of an issue in InMemoryQueue |  Critical | rerun | Shaik Idris Ali | Shaik Idris Ali |
| [FALCON-49](https://issues.apache.org/jira/browse/FALCON-49) | Dependency on oozie-client pulls in hadoop-auth-0.23.1 which is not necessary |  Minor | oozie | Venkatesh Seetharam | Venkatesh Seetharam |
| [FALCON-52](https://issues.apache.org/jira/browse/FALCON-52) | Main module configured used with jetty:run has issues with app start |  Major | . | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-55](https://issues.apache.org/jira/browse/FALCON-55) | Update suspends old oozie coords |  Major | . | Shwetha G S | Shwetha G S |
| [FALCON-56](https://issues.apache.org/jira/browse/FALCON-56) | Update Falcon packing to include all source files |  Major | general | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-57](https://issues.apache.org/jira/browse/FALCON-57) | Build fails if the source is not in scm |  Trivial | general | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-53](https://issues.apache.org/jira/browse/FALCON-53) | Add -incubating to the version |  Trivial | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [FALCON-58](https://issues.apache.org/jira/browse/FALCON-58) | Gaps in release source / binary tarball |  Trivial | . | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [FALCON-65](https://issues.apache.org/jira/browse/FALCON-65) | Avoid bundling compilation path dependent configs in artifact and allow for config scan to seamlessly fallback to classpath if not found in default conf location |  Major | general | Srikanth Sundarrajan | Srikanth Sundarrajan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-19](https://issues.apache.org/jira/browse/FALCON-19) | Bump up the release version to 0.3-SNAPSHOT |  Minor | general | Venkatesh Seetharam | Srikanth Sundarrajan |
| [FALCON-44](https://issues.apache.org/jira/browse/FALCON-44) | Update link to Wiki from placeholder to real wiki |  Major | . | Ashish Paliwal | Srikanth Sundarrajan |
| [FALCON-70](https://issues.apache.org/jira/browse/FALCON-70) | Confirm if v0.3 branch is ready for release as per http://incubator.apache.org/guides/releasemanagement.html |  Major | general | Srikanth Sundarrajan | Venkatesh Seetharam |


