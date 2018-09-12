
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
# Apache Knox Changelog

## Release 1.0.0 - Unreleased (as of 2018-09-12)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1145](https://issues.apache.org/jira/browse/KNOX-1145) | Upgrade Jackson due to CVE-2017-7525 |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1116](https://issues.apache.org/jira/browse/KNOX-1116) | Builds of src distributions result in unexpected result from gateway version API |  Major | Build | Phil Zampino | Colm O hEigeartaigh |
| [KNOX-1161](https://issues.apache.org/jira/browse/KNOX-1161) | Update hadoop dependencies to Hadoop 3 |  Major | Build | Sandeep More | Sandeep More |
| [KNOX-998](https://issues.apache.org/jira/browse/KNOX-998) | Rename class packages to org.apache.knox.gateway |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1150](https://issues.apache.org/jira/browse/KNOX-1150) | Documentation - Hadoop Group Lookup Provider - Add Link to Hadoop Group Mappings |  Minor | Server | Rick Kellogg | Sandeep More |
| [KNOX-1101](https://issues.apache.org/jira/browse/KNOX-1101) | Update Documentation for Knox 1.0.0 |  Major | Site | Sandeep More | Sandeep More |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1151](https://issues.apache.org/jira/browse/KNOX-1151) | Need Explicit curator-recipes dependency in pom |  Major | Build | Phil Zampino | Phil Zampino |
| [KNOX-1141](https://issues.apache.org/jira/browse/KNOX-1141) | Coverity Issues Reported For AmbariConfigurationMonitor |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1137](https://issues.apache.org/jira/browse/KNOX-1137) | KnoxCLI For Listing Provider Configurations and Descriptors in a Remote Configuration Registry |  Major | KnoxCLI | Phil Zampino | Phil Zampino |
| [KNOX-1144](https://issues.apache.org/jira/browse/KNOX-1144) | Provider Configuration Reference Relationships Aren't Established For Existing Descriptors at Gateway Startup |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1168](https://issues.apache.org/jira/browse/KNOX-1168) | ClassNotFoundException exception because of package restructuring |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1175](https://issues.apache.org/jira/browse/KNOX-1175) | -Prelease doesn't build a release |  Trivial | Build | Allen Wittenauer | Jack Bearden |
| [KNOX-1287](https://issues.apache.org/jira/browse/KNOX-1287) | [NN Federation] Incase of providing invalid Nameservice as param, then service is created with invalid endpoint url |  Critical | . | J.Andreina | Phil Zampino |
| [KNOX-1289](https://issues.apache.org/jira/browse/KNOX-1289) | [Service Discovery] Deletion of generated topology , deletes descriptor file too |  Critical | . | J.Andreina | Phil Zampino |
| [KNOX-1331](https://issues.apache.org/jira/browse/KNOX-1331) | [Admin-UI] Unabled to update XML format provider file from admin ui |  Critical | AdminUI | J.Andreina | Phil Zampino |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1043](https://issues.apache.org/jira/browse/KNOX-1043) | Ambari Service Discovery Support for HA-Enabled Services |  Major | Server | Phil Zampino | Phil Zampino |


